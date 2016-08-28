/*  Reader for a URL or data URI source
    @(#) $Id: 662096ff3e2d74af4f150ad456ad013960a4ae70 $
    2016-08-09: isOpen
    2016-05-10: with URLConnection, make User-Agent header settable
    2016-04-28: allow for Windows drive letter "protocol" (-> file:)
    2013-08-14: URL encoding by URI(3 parameter) constructor
    2013-01-04: gopher repaired
    2011-08-06: extended to InputStream interface
    2011-07-15, Dr. Georg Fischer: copied from SeparatedTable
*/
/*
 * Copyright 2011 Dr. Georg Fischer <punctum at punctum dot kom>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.teherba.common;
import  java.io.BufferedReader;
import  java.io.ByteArrayInputStream;
import  java.io.ByteArrayOutputStream;
import  java.io.FileInputStream;
import  java.io.FileNotFoundException;
import  java.io.InputStream;
import  java.io.InputStreamReader;
import  java.io.IOException;
import  java.io.StringReader;
import  java.lang.IllegalArgumentException;
import  java.net.URI;
import  java.net.URL;
import  java.net.URLConnection;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.util.Date;
import  java.util.Iterator;
import  java.util.Map;
import  java.util.zip.ZipEntry;
import  java.util.zip.ZipInputStream;
import  org.apache.log4j.Logger;

/** This reader reads from the following sources:
 *  <ol>
 *  <li>a Uniform Resource Locator (URL) - out of the box of java.net.URL - with the protocols/schemas
 *      <ul>
 *      <li>file: - local file access</li>
 *      <li>ftp: - File transfer protocol</li>
 *      <li>gopher: - predecessor of http (only with system property -Djdk.net.registerGopherProtocol=true)</li>
 *      <li>http: - Hypertext transfer protocol</li>
 *      <li>https: - secure Hypertext transfer protocol</li>
 *      <li>jar: - access to files in a zipped Java archive</li>
 *      <li>(mailto: - send email from an URI, does not seem to work)</li>
 *      <li>(netdoc: - rarely used special Java protocol for documentation)</li>
 *      <li>URLs not starting with <em>word:</em> are assumed to be local filenames, too<li>
 *      <li>even Windows' C:/path is mapped to the file: protocol</li>
 *      </ul>
 *  </li>
 *  <li>data: - data content within an Uniform Resource Identfier (URI) itself</li>
 *  </ol>
 *  A data URI has the following format:<br />
 *  data:[&lt;MIME-type&gt;][;charset=&lt;encoding&gt;][;base64],&lt;data&gt;
 *  <p  />
 *  Depending on the <em>encoding</em> parameter during construction, an instance
 *  of the class is either character or byte oriented. The sets of methods of the
 *  <code>BufferedReader</code> and <code>InputStream</code> are both implemented,
 *  but care must be taken to call the appropriate overloaded method name.
 *  <p>
 *  Caution, the gopher protocol is disabled by default in OpenJDK 6.
 *  From http://ads.freecode.com/articles/red-hat-security-update-for-openjdk-6:
 *  This update disables Gopher protocol support in the java.net package by
 *  default. Gopher support can be enabled by setting the newly introduced
 *  property, "jdk.net.registerGopherProtocol", to true. (CVE-2012-5085)

 *  @author Dr. Georg Fischer
 */
public class URIReader {
    public final static String CVSID = "@(#) $Id: 662096ff3e2d74af4f150ad456ad013960a4ae70 $";

    /** log4j logger (category) */
    private Logger log;

    //============================================
    // Bean properties, getters and setters
    //============================================
    /** which encoding to use for input: ISO-8859-1, UTF-8 and so on */
    private String encoding;
    /** Gets the encoding for input or output
     *  @return ISO-8859-1, UTF-8 etc.
     */
    public String getEncoding() {
        return this.encoding;
    } // getEncoding

    /** Sets the encoding
     *  @param enc encoding (ISO-8859-1, UTF-8 ...)
     */
    public void setEncoding(String enc) {
        this.encoding = enc;
    } // setEncoding

    /** whether the stream could successfully be opened */
    private boolean isOpened;
    /** Gets the success status
     *  @return true if the stream could be opened, false otherwise
     */
    public boolean isOpen() {
        return this.isOpened;
    } // isOpen

    /** URI for additional input file */
    private URI inputURI;
    /** Gets the URI from which content is read
     *  @return URI with http:, file: or data: schema or relative path
     */
    public URI getInputURI() {
        return inputURI;
    } // getInputURI
    /** Sets the URI from which content is read
     *  @param uri URI with http:, file: or data: schema or relative path
     */
    public void setInputURI(String uri) {
        try {
            inputURI = new URI(uri);
        } catch (Exception exc) {
            inputURI = null;
        }
    } // setInputURI

    /** whether the reader is character oriented (in contrast to byte streams) */
    private boolean isEncoded;

    /** Tells whether the reader returns a stream of binary bytes
     *  (otherwise it is character oriented)
     *  @return true for binary stream, false for character string
     */
    public boolean isBinary() {
        return ! isEncoded;
    } // isBinary

    /** whether the writer should pipe the output through <em>unzip</em> */
    private boolean doUnzip;

    /** underlying URLConnection */
    private URLConnection urlConn;

    /** generalized local input stream */
    private InputStream byteStream;
    /** Gets the byte input stream for this URI
     *  @return input stream
     */
    public InputStream getByteStream() {
        return this.byteStream;
    } // getByteStream

    /** generalized local buffered reader */
    private BufferedReader charReader;
    /** Gets the character reader for this URI
     *  @return buffered character reader
     */
    public BufferedReader getCharReader() {
        return this.charReader;
    } // getReader

    //======================
    // Construction
    //======================
    /** No-args Constructor
     */
    public URIReader() {
        log = Logger.getLogger(URIReader.class.getName());
        this.encoding = "UTF-8";
    } // Constructor

    /** Construct from an URI (character oriented)
     *  @param unresid the Uniform Resource Identifier to be used: URL or <em>data:</em> URI
     */
    public URIReader(String unresid) {
        this(unresid, "UTF-8", null);
    } // Constructor(1)

    /** Construct from a URI and specifiy character set encoding (if character oriented),
     *  or <code>null</code> (if byte oriented reading should be performed).
     *  @param unresid the Uniform Resource Identifier to be used: URL or <em>data:</em> URI
     *  @param enc character set to be used to read from bytes (character oriented),
     *  or <code>null</code> (byte oriented)
     */
    public URIReader(String unresid, String enc) {
        this(unresid, enc, null);
    } // Constructor(2)

    /** Construct from a URI and specifiy character set encoding (if character oriented),
     *  or <code>null</code> (if byte oriented reading should be performed).
     *  A pseudo encoding of "zip" pipes the binary input through an unzip operation.
     *  @param unresid the Uniform Resource Identifier to be used: URL or <em>data:</em> URI
     *  @param enc character set to be used to read from bytes (character oriented),
     *  or <code>null</code> (byte oriented)
     *  @param propMap optional map for request properties,
     *  or null if no properties should be associated
     */
    public URIReader(String unresid, String enc, Map<String,String> propMap) {
    	isOpened = true;
        log = Logger.getLogger(URIReader.class.getName());
        this.encoding = enc;
        doUnzip = false;
        isEncoded = enc != null;
        if (isEncoded && enc.equals("zip")) {
            isEncoded = false;
            this.encoding = "UTF-8"; // for output of unzip -p
            doUnzip = true;
        }
        charReader  = null; // the protocol is unreadable so far
        byteStream  = null; // the protocol is unreadable so far
        urlConn     = null;
        try {
            ReadableByteChannel channel = null;
            if (false) {
            } else if (unresid == null || unresid.equals("-")) { // read from STDIN
                channel = Channels.newChannel(System.in);
                if (isEncoded) {
                    charReader = new BufferedReader(Channels.newReader(channel, this.encoding));
                } else {
                    byteStream = System.in;
                }
            } else if (unresid.startsWith("data:"))            { // data:
                inputURI = new URI(unresid);
                String content = inputURI.getSchemeSpecificPart().replaceAll("\\+", " "); // rather primitive, no BASE64
                if (isEncoded) {
                    charReader = new BufferedReader(new StringReader(content));
                } else {
                    byteStream = new ByteArrayInputStream(content.getBytes(this.encoding)); // or US_ASCII ?
                }
            } else if (unresid.startsWith("mailto:")) {
                // ??? - ignore, read empty file
            } else if (unresid.matches("\\w+\\:.*"))           { // http: file: ftp: etc.
                if (unresid.matches("\\w\\:.*")) { // Windows drive letter
                    unresid = "file:///" + unresid.substring(0, 1) + "|" + unresid.substring(2);
                } // Windows
                // the JVM has handlers in rt.jar!/sun/net/www/protocol/* for
                //   file: ftp: gopher: http: https: jar: mailto: netdoc:
                int colonPos = unresid.indexOf(':');
                int sharpPos = unresid.indexOf('#');
                if (sharpPos < 0) {
                    sharpPos = unresid.length(); // behind the end
                }
                inputURI = new URI(unresid.substring(0, colonPos)
                        , unresid.substring(colonPos + 1, sharpPos)
                        , (sharpPos >= unresid.length() ? null : unresid.substring(sharpPos + 1))
                        );
                URL url = new URL(inputURI.toASCIIString());
                urlConn = url.openConnection();

                if (propMap != null) { // set connection properties
                    Iterator<String> piter = propMap.keySet().iterator();
                    while (piter.hasNext()) {
                        String key = piter.next();
                        String value = propMap.get(key);
                        urlConn.setRequestProperty(key, value);
                    } // while piter
                } // propMap was set

                if (isEncoded) {
                    charReader = new BufferedReader(new InputStreamReader(urlConn.getInputStream(), this.encoding));
                } else {
                    byteStream = urlConn.getInputStream();
                }
            } else { // this will (probably) be an absolute or relative file URL
                if (isEncoded) {
                    channel = (new FileInputStream (unresid)).getChannel();
                    charReader = new BufferedReader(Channels.newReader(channel, this.encoding));
                } else {
                    byteStream = new FileInputStream(unresid);
                }
            }

            if (doUnzip) {
                charReader = unzipStream(byteStream);
                isEncoded = true;
            } // doUnzip
        } catch (FileNotFoundException fnf) {
        	isOpened = false; // no message
        } catch (Exception exc) { 
        	isOpened = false; // for any problem
            log.error(exc.getMessage() + ", unresid=\"" + unresid + "\"", exc);
        }
    } // Constructor(3)

    /** Unzips a stream of bytes and returns
     *  a character reader for the concatenated contents of all entry files.
     *  Long XML lines are broken up in addition, and filenames are interspersed.
     *  @param byteStream some input stream
     *  @return a character reader for the unzipped, concatenated contents
     */
    public BufferedReader unzipStream(InputStream byteStream) {
        BufferedReader result = null;
        try {
            if (true) {
                // slurp the whole zip file into zbuffer
                ByteArrayOutputStream
                baos = new ByteArrayOutputStream(16384);
                int len = 16384;
                byte[] zbuffer = new byte[16384];
                while ((len = byteStream.read(zbuffer)) > 0) {
                    baos.write(zbuffer, 0, len);
                } // while byteStream
                baos.close(); // no effect
                zbuffer = baos.toByteArray();
                byteStream.close();

                // Unzip zbuffer and write contents to ubuffer
                ZipInputStream zis = new ZipInputStream(new ByteArrayInputStream(zbuffer));
                baos = new ByteArrayOutputStream(16384);
                ZipEntry zentry = null;
                byte[] ubuffer = new byte[16384];
                while ((zentry = zis.getNextEntry()) != null) {
                    baos.write(("<!-- " + zentry.getName() + " -->\n").getBytes("UTF-8")); // intersperse filename
                    len = ubuffer.length;
                    while ((len = zis.read(ubuffer)) > 0) {
                        baos.write(ubuffer, 0, len);
                    } // while
                } // while zentry
                zis.close();
                baos.close(); // no effect

                // cause charReader to read from ubuffer
                ubuffer = baos.toByteArray();
                result = new BufferedReader(new StringReader(
                        (new String(ubuffer, 0, ubuffer.length, this.encoding))
                        .replaceAll("\\\"><", "\">\n<") // break long XML lines
                        ));
            } // doUnzip
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
        return result;
    } // unzipStream
    
    /** Sets a property of the URLConnection.
     *  If the conneciton is not set, the call is silently ignored.
     *  @param key   the name of the property to be set, for example "User-Agent"
     *  @param value the value to be set for the property
     */
    public void setRequestProperty(String key, String value) {
        try {
            if (urlConn != null) {
                urlConn.setRequestProperty(key, value);
            }
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // setRequestProperty

    //==========================
    // BufferedReader Interface
    //==========================
    /** Closes the stream and releases any system resources associated with it.
     */
    public void close() throws IOException {
        try {
            if (this.charReader != null) {
                this.charReader.close();
            }
            if (this.byteStream != null) {
                this.byteStream.close();
            }
        } catch (IOException exc) {
            throw exc;
        }
    } // close

    /** Marks the present position in the stream.
     *  @param readAheadLimit - Limit on the number of characters
     *  that may be read while still preserving the mark.
     *  An attempt to reset the stream after reading characters or bytes up to this limit or beyond may fail.
     *  A limit value larger than the size of the input buffer will cause a new buffer
     *  to be allocated whose size is no smaller than limit.
     *  Therefore large values should be used with care.
     */
    public void mark(int readAheadLimit) throws IllegalArgumentException, IOException {
        try {
            if (false) {
            } else if (this.charReader != null && isEncoded) {
                this.charReader.mark(readAheadLimit);
            } else if (this.byteStream != null) {
                this.byteStream.mark(readAheadLimit);
            } else {
            }
        } catch (IllegalArgumentException exc) {
            throw exc;
        } catch (IOException exc) {
            throw exc;
        }
    } // readAheadLimit

    /** Tells whether this stream supports the mark() operation, which it does.
     */
    public boolean markSupported() {
        boolean result = false;
        if (false) {
        } else if (this.charReader != null && isEncoded) {
            result = this.charReader.markSupported();
        } else if (this.byteStream != null) {
            result = this.byteStream.markSupported();
        } else {
        }
        return result;
    } // markSupported

    /** Reads a single character or byte.
     *  This method will block until a character is available,
     *  an I/O error occurs, or the end of the stream is reached.
     *  @return The character or byte read, as an integer in the range 0 to 65535 (0x00-0xffff),
     *  or -1 if the end of the stream has been reached.
     *  @throws IOException - If an I/O error occurs
     */
    public int read() throws IOException {
        int result = -1;
        try {
            if (false) {
            } else if (this.charReader != null && isEncoded) {
                result = this.charReader.read();
            } else if (this.byteStream != null) {
                result = this.byteStream.read();
            } else {
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // read

    /* Attempts to read characters into the specified character buffer.
     *  The buffer is used as a repository of characters as-is:
     *  the only changes made are the results of a put operation.
     *  No flipping or rewinding of the buffer is performed.
     *  @param cb the buffer to read characters into
     *  @return The number of char values added to the buffer,
     *  or -1 if this source of characters is at its end
     *  @throws IOException - if an I/O error occurs
     *  @throws NullPointerException - if cb is null
     *  @throws ReadOnlyBufferException - if cb is a read only buffer
     */
/* this would be needed for the Readable interface
    public int read(CharBuffer cb) throws IOException {
        int result = -1;
        return result;
    } // read
*/

    /** Reads bytes into an array.
     *  This method will block until some input is available,
     *  an I/O error occurs, or the end of the stream is reached.
     *  @param  bbuf - Destination buffer
     *  @return The number of bytes read, or -1 if the end of the stream has been reached
     *  @throws IOException - If an I/O error occurs
     */
    public int read(byte[] bbuf) throws IOException {
        int result = -1;
        try {
            if (this.byteStream != null) {
                result = this.byteStream.read(bbuf, 0, bbuf.length);
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // read

    /** Reads bytes into a portion of an array.
     *  This method will block until some input is available,
     *  an I/O error occurs, or the end of the stream is reached.
     *  @param  bbuf - Destination buffer
     *  @param  off - Offset at which to start storing bytes
     *  @param  len - Maximum number of byte to read
     *  @return The number of bytes read, or -1 if the end of the stream has been reached
     *  @throws IOException - If an I/O error occurs
     */
    public int read(byte[] bbuf, int off, int len) throws IOException {
        int result = -1;
        try {
            if (this.byteStream != null) {
                result = this.byteStream.read(bbuf, off, len);
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // read

    /** Reads characters into a portion of an array.
     *  This method will block until some input is available,
     *  an I/O error occurs, or the end of the stream is reached.
     *  @param  cbuf - Destination buffer
     *  @param  off - Offset at which to start storing characters
     *  @param  len - Maximum number of characters to read
     *  @return The number of characters read, or -1 if the end of the stream has been reached
     *  @throws IOException - If an I/O error occurs
     */
    public int read(char[] cbuf, int off, int len) throws IOException {
        int result = -1;
        try {
            if (this.charReader != null) {
                result = this.charReader.read(cbuf, off, len);
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // read

    /** Reads a line of text.
     *  A line is considered to be terminated by any one of a line feed ('\n'),
     *  a carriage return ('\r'), or a carriage return followed immediately by a linefeed.
     *  @return A String containing the contents of the line,
     *  not including any line-termination characters,
     *  or null if the end of the stream has been reached
     *  @throws IOException - If an I/O error occurs
     */
    public String readLine() throws IOException {
        String result = null;
        try {
            if (this.charReader != null) {
                result = this.charReader.readLine();
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // readLine

    /** Tells whether this stream is ready to be read.
     *  @return     True if the next read() is guaranteed not to block for input, false otherwise.
     *  Note that returning false does not guarantee that the next read will block.
     *  @throws IOException
     */
    public boolean ready() throws IOException {
        boolean result = false;
        try {
            if (this.charReader != null) {
                result = this.charReader.ready();
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // ready

    /** Resets the stream to the most recent mark.
     */
    public void reset() throws IOException {
        try {
            if (false) {
            } else if (this.charReader != null && isEncoded) {
                this.charReader.reset();
            } else if (this.byteStream != null) {
                this.byteStream.reset();
            } else {
            }
        } catch (IOException exc) {
            throw exc;
        }
    } // reset

    /** Skips characters.
     *  This method will block until some characters or bytes are available,
     *  an I/O error occurs, or the end of the stream is reached.
     *  @param n - The number of characters or bytes to skip
     *  @return The number of characters or bytes actually skipped
     *  @throws IllegalArgumentException - If n is negative.
     *  @throws IOException - If an I/O error occurs
     */
    public long skip(long n) throws IOException  {
        long result = 0l;
        try {
            if (false) {
            } else if (this.charReader != null && isEncoded) {
                result = this.charReader.skip(n);
            } else if (this.byteStream != null) {
                result = this.byteStream.skip(n);
            } else {
            }
        } catch (IOException exc) {
            throw exc;
        }
        return result;
    } // skip

    //======================news://news.netcologne.de/alt.free.newsservers
    // Main method (test)
    //======================

    /** Test method: read from an URI.
     *  @param args command line arguments: options, strings, table- or filenames
     *  <pre>
     *  java -cp dist/dbat.jar org.teherba.dbat.common.URIReader [uri]
     *  </pre>
     *  Without any argument, the program tries a set of URI schemas/protocols, and
     *  shows whether the JVM has a handler for them.
     *  With an URI argument, the program reads from the URI and prints the content to STDOUT.
     */
    public static void main(String[] args) {
        System.setProperty("jdk.net.registerGopherProtocol", "true"); // does not work, not soon enough?
        Logger log = Logger.getLogger(URIReader.class.getName());
        int iarg = 0;
        try {
            if (args.length == 0) { // without an argument, several protocols are checked
                new URIReader("http://www.teherba.org");
                String protocols[] =
                        { "http://www.teherba.org/index.html"
                        , "mailto:punctum@punctum.com&subject=Test URIReader"
                        , "jar:file:///home/gfis/work/gits/dbat/dist/dbat.jar!/META-INF/LICENSE"
                        , "news://news.netcologne.de/alt.free.newsservers"
                        , "gopher://gopher.rbfh.de/0/Fun/500miles.txt"
                        , "file:///home/gfis/work/gits/dbat/web/noversion.txt"
                        , "ftp://ftp.gnu.org/README"
                        , "telnet:teherba.org"
                        , "verbatim:"
                        , "data:this+is%20the+text+to+be+read"
                        };
                int iprot = 0;
                while (iprot < protocols.length) {
                    try {
                        System.out.print("URL " + protocols[iprot]);
                        URL url = new URL(protocols[iprot]);
                        System.out.println(" ok");
                    } catch (Exception exc) {
                        System.out.println(" failed");
                    }
                    iprot ++;
                } // while iprot
            } else { // argument is a URI (with an optional encoding) which is read and printed to STDOUT
                String uri = args[iarg ++];
                String enc = null;
                if (iarg < args.length) {
                    enc = args[iarg ++];
                }
                URIReader ureader = new URIReader(uri, enc);
                if (ureader.isBinary()) { // binary
                    byte[] bbuf = new byte[4096];
                    int len = bbuf.length;
                    while ((len = ureader.read(bbuf, 0, len)) > 0) {
                        System.out.write(bbuf, 0, len);
                    } // while binary reading
                } else { // character
                    String line = null;
                    while ((line = ureader.readLine()) != null) {
                        System.out.println(line);
                    } // while reading
                }
                ureader.close();
            }
        } catch (Exception exc) {
            log.error(exc.getMessage(), exc);
        }
    } // main

} // URIReader
