#!/usr/bin/make

# test Ramath functions
# @(#) $Id: makefile 741 2011-07-23 12:30:09Z  $
# 2015-06-01: all -> symbolic
# 2015-04-06: java -X... 
# 2013-02-27: RegressionTester
# 2011-07-06, Dr. Georg Fischer
#--------------------------------
TEST=
# REGR=java -Xss512m -Xms1024m -Xmx2048m -cp dist/ramath.jar org.teherba.common.RegressionTester
REGR=java -cp dist/ramath.jar org.teherba.common.RegressionTester
TESTDIR=test
WROB=../../mater/ramath/eec/wroblewski

all: solver
regression: symbolic linear solver
linear:
	$(REGR) test/linear.tests 	$(TEST) 2>&1 \
	| tee regression.log.tmp
	grep FAILED regression.log.tmp
matrix:
	$(REGR) test/matrix.tests 	$(TEST) 2>&1 \
	| tee regression.log.tmp
	grep FAILED regression.log.tmp
simple:
	$(REGR) test/simple.tests 	$(TEST) 2>&1 \
	| tee regression.log.tmp
	grep FAILED regression.log.tmp
solver:
	$(REGR) test/solver.tests 	$(TEST) 2>&1 \
	| tee regression.log.tmp
	grep FAILED regression.log.tmp
t:
	make solver TEST=T%
symbolic:
	$(REGR) test/symbolic.tests $(TEST) 2>&1 \
	| tee regression.log.tmp
	grep FAILED regression.log.tmp
fc7: fc1 fc2
fc1:
	make solver
fc2:
	perl -w data/fermcau7.pl test/$(TEST).this.tst > x.tmp 
	less x.tmp
	# diff -y x.tmp y.tmp | less
#
# Recreate all testcases which failed (i.e. remove xxx.prev.tst)
# Handle with care!
# Failing testcases are turned into "passed" and are manifested by this target!
recreate: recr1 regr2 regression
recr0:
	grep -E '> FAILED' regression*.log.tmp | cut -f 3 -d ' ' | xargs -l -ißß echo rm -v test/ßß.prev.tst
recr1:
	grep -E '> FAILED' regression*.log.tmp | cut -f 3 -d ' ' | xargs -l -ißß rm -v test/ßß.prev.tst
regr2:
	make regression TEST=$(TEST)
#---------------------------------------------------
push:
	find src/main/java/org/teherba/common -iname "*.java" -mtime -1 -type f \
	| xargs -l -i{} cp -v {} ../dbat/src/main/java/org/teherba/common
jfind:
	find src -iname "*.java" | xargs -l grep -iH $(JF)
#----------
ec221:
	perl data/genpEC.pl 2 2 1 > ec221.txt
	diff -C0 pEC221.tmp pEC221.txt
ec331:
	perl data/genpEC.pl 3 3 1 > ec331.txt
ec340:
	perl data/genpEC.pl 3 4 0 > ec340.txt
genec2:
	perl data/genec2.pl 3 3 1 > genec2.txt
split_tuple:
	perl data/split_tuple.pl test/EC34.prev.tst > tuples.prev.tmp
	perl data/split_tuple.pl test/EC34.this.tst > tuples.this.tmp
	diff -w -C0 tuples.prev.tmp tuples.this.tmp
get_maps:
	perl data/get_maps.pl test/EC34.prev.tst \
	| sort -n | uniq -c > maps.tmp
genhash:
	perl data/genhash.pl data/prewrob3.dat > genhash.tmp
find_seq:
	grep -h ", chain 8" test/*.this.tst | sort | uniq > find_seq.tmp
	wc find_seq.tmp
	perl data/find_seq.pl find_seq.tmp > find_seq2.tmp
#----------
det1:
	grep -E ",det=\-?1 " test/*.this.tst | grep chain | cut -b 1-140 | grep -vE "^test/EC2" | grep -vE "^test/MX0" > data/det1.grep
grep3x:
	grep "chain 8" test/MX3*.this.tst \
	| cut -b 36- > mx3.tmp
	cmd /c uedit32 mx3.tmp
# prepare Wroblewski data
prewrob3: wr1 wr2
wr1:
	rm -f prewrob3.tmp
	perl data/prewrob3.pl $(WROB)/313-100K.TXT >> prewrob3.tmp
	perl data/prewrob3.pl $(WROB)/322-100K.TXT >> prewrob3.tmp
wr2:
	sort -n prewrob3.tmp | sed -e "s/	/,/g" > data/prewrob3.dat
	wc data/prewrob3.dat
wr3:
	head -256 data/prewrob3.dat > data/prewrob3.sub
xsort3:
	sort \
	test/X02.this.tst \
	test/X03.this.tst \
	test/X04.this.tst \
	test/X05.this.tst \
	test/X06.this.tst \
	test/X07.this.tst \
	test/X08.this.tst \
	test/X09.this.tst \
	test/X10.this.tst \
	test/X11.this.tst \
	test/X12.this.tst \
	| cut -f 1-3 | uniq -c > xsort3.tmp
	grep poly xsort3.tmp
	grep flat xsort3.tmp
prim:
	# grep -v next test/L16.this.tst | grep -v vect | grep -E "[0-9]" > queue.tmp
	grep -A4 addMult data/queue2.dat | grep -vE '\-\-' > queue.tmp
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -prim queue.tmp | tee prim2.tmp
prim2:
	grep none   prim2.tmp | tee prim.none.tmp
	grep contin prim2.tmp | tee prim.cont.tmp
	wc prim.*.tmp
prim3:
	grep none prim2.tmp | sed -e "s/(/                    test.add(new Vector(new int[]{/" \
	| sed -e "s/).*/}));/" | head -64 | tee prim3.tmp
queue: q1 q2
q1:
	grep -v next test/L16.this.tst | grep -v vect | grep -E "[0-9]" > queue.tmp
q2:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -queue queue.tmp | tee queue2.tmp
rel313:
	perl data/relations3.pl $(WROB)/313-100K.TXT | tee 313.tmp
r313:
	perl data/extract.pl "b+1=c" 313.tmp | tee r313.tmp
#	perl data/extract.pl "b+1=c" 313.tmp | tee r314.tmp
#	perl data/extract.pl "a+2=b c" 313.tmp | tee r313.tmp
rel322:
	perl data/relations3.pl $(WROB)/322-100K.TXT | tee 322.tmp
r322:
	perl data/extract.pl "a+b=9" 322.tmp | tee r322.tmp
x1:
	java -cp dist/ramath.jar org.teherba.ramath.ParameterExhauster x1 -l 15
x2:
	java -cp dist/ramath.jar org.teherba.ramath.ParameterExhauster x2 -l 7
m2:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster m2 -l 10 | perl data/unimod_test.pl | tee m2.tmp
	grep "=" m2.tmp | sort | uniq -c | tee m2u.tmp
	wc m2*.tmp

m3:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster m3 -l 4 | perl data/unimod_test.pl | tee m3.tmp
	grep "=" m3.tmp | sort | uniq -c | tee m3u.tmp
	wc m3*.tmp
m3a:
	perl data/unimod_test.pl data/m3.dat | tee data/m3uni.dat
m3test:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster m3test -l 5
pps4:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster pps4 -l 4 \
	| grep -vE '0,0,0,0' \

	# | tee pps4.tmp
eec2:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -eec2  4 | tee eec2.tmp
eec3:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -eec3 10 | tee eec3.tmp
eec4:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -eec4  4 | tee eec4.tmp
matrix2:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -f data/m3uni.dat
matrix3:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -f data/pres3.dat
elementary:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix 3
unimodular:
	java -cp dist/ramath.jar org.teherba.ramath.linear.Matrix -unimod 3 | tee unimodular.tmp
elem12:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster elem1 -e 2 -w 6 | tee elem12.tmp
	wc elem2.tmp
elem13:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster elem1 -e 3 -w 7 | tee elem13.tmp
	wc elem3.tmp
elem22:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster elem2 -e 2 -w 6 | tee elem22.tmp
	wc elem*.tmp
elem23:
	java -cp dist/ramath.jar org.teherba.ramath.MatrixExhauster elem2 -e 3 -w 12 | tee elem23.tmp
	wc elem*.tmp
elem23s:
	sort elem23.tmp | uniq -c | tee elem23s.tmp
	grep '#' elem23s.tmp | grep -v candidate
try_maxtrix2:
	perl data/try_matrix2.pl | tee try_matrix2.tmp
	grep -A3 '!' try_matrix2.tmp
pres3:
	perl data/preserve3.pl data/pres3.dat
pres4:
	perl data/preserve4.pl data/pres4.dat
x210y210:
	java -cp dist/ramath.jar org.teherba.ramath.ParameterExhauster x210y210 -l 4 | sort | uniq | tee x210y210.tmp
h04:
	make TEST=H04
	tr " +-" "spm" < test/H04.this.tst | sort | uniq  | tr "spm" " +-" | tee test/H04.sort.tmp
	wc test/H?4*
h05:
	make TEST=H05
	tr " +-" "spm" < test/H05.this.tst | sort | uniq  | tr "spm" " +-" | tee test/H05.sort.tmp
	wc test/H?5*
h15:
	make TEST=H15
	tr " +-" "spm" < test/H15.this.tst | sort         | tr "spm" " +-" | tee test/H15.sort.tmp
	wc test/H?5*
h06:
	make TEST=H06
	tr " +-" "spm" < test/H06.this.tst | sort | uniq  | tr "spm" " +-" | tee test/H06.sort.tmp
	wc test/H?6*
h16:
	make TEST=H166
	tr " +-" "spm" < test/H16.this.tst | sort         | tr "spm" " +-" | tee test/H16.sort.tmp
	wc test/H?6*
h07:
	# make TEST=H07
	tr " +-" "spm" < test/H07.this.tst | sort | uniq  | tr "spm" " +-" | tee test/H07.sort.tmp
	wc test/H?7*
cubes:
	make TEST=X03
	make TEST=X06
	make TEST=X07
	make TEST=X08
	make TEST=X09
	make TEST=X10
	make TEST=X11
	make TEST=X12
cube4:
	rm -f x.tmp y.tmp
	perl test/eec/cube4.pl test/X03.this.tst | sed -e "s/$$/ K/" >> x.tmp
	perl test/eec/cube4.pl test/X06.this.tst | sed -e "s/$$/ K/" >> x.tmp
	perl test/eec/cube4.pl test/X07.this.tst | sed -e "s/$$/ S/" >> x.tmp
	perl test/eec/cube4.pl test/X08.this.tst | sed -e "s/$$/ B/" >> x.tmp
	perl test/eec/cube4.pl test/X09.this.tst | sed -e "s/$$/ R/" >> x.tmp
	perl test/eec/cube4.pl test/X10.this.tst | sed -e "s/$$/ V/" >> x.tmp
	perl test/eec/cube4.pl test/X11.this.tst | sed -e "s/$$/ W/" >> x.tmp
	perl test/eec/cube4.pl test/X12.this.tst | sed -e "s/$$/ X/" >> x.tmp
	head -10000 ~/work/mater/ramath/eec/wroblewski/313-100K.TXT | perl test/eec/cube4.pl | sed -e "s/$$/ \+/" >> y.tmp
	head -10000 ~/work/mater/ramath/eec/wroblewski/322-100K.TXT | perl test/eec/cube4.pl | sed -e "s/$$/ \-/" >> y.tmp
	sort -d x.tmp y.tmp | uniq | sed -e "s/ 0*/ /g;" | tee cube4.tmp
t1:
	perl test/eec/cube4.pl ~/work/mater/ramath/eec/wroblewski/313-100K.TXT  | less
b002372:
	head -32 test/cf/b002372.txt | tee x.tmp
	tail -32 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -31 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -30 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -29 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
b045917:
	head -64 test/cf/b045917.txt | tee x.tmp
	tail -64 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -63 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -62 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
	tail -61 x.tmp > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -eval y.tmp
e:
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -e 400
gamma:
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -gamma y.tmp
pi1:
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -pi1 10000
pi2:
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -pi2 10000
const:
	find test/constants -iname "*.txt" \
	| xargs -t -l -i{} \
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -const {}
pi:
	head -2 test/constants/pi.txt > y.tmp
	java -cp dist/ramath.jar org.teherba.ramath.ContinuedFraction -const y.tmp
#----------------------------
fill:
	cd test ; perl batch_test.pl -fill
new_regression: comp eval
comp:
	cd test ; perl batch_test.pl -comp  | tee regression.log
eval:
	rm -f [pF]*[dD].tests
	grep -E "FAILED" test/regression.log
	grep -E "passed" test/regression.log > passed.tests
	grep -E "FAILED" test/regression.log > FAILED.tests
	wc -l *.tests | head -2
show:
	make -i show1 TEST=$(TEST) | less
shok:
	cp test/$(TEST).this.tst test/$(TEST).prev.tst
show1:
	diff -C0 test/$(TEST).prev.tst test/$(TEST).this.tst
	head -2000 test/$(TEST).*.tst
