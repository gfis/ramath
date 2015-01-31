#!/usr/bin/perl

#
#  Copyright 2006 Dr. Georg Fischer <punctum at punctum dot kom>
# 
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
# 
#       http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#------------------------------------------------------------------ 
# Example client - short perl program 
# for SOAP access to UnitConverter service
# @(#) $Id: client.pl 221 2009-08-11 06:08:05Z gfis $
#
# Usage: 
#   perl client.pl parm1 parm2
#
# The essential 4 lines in the program below are marked with # <===
#------------------------------------------------------------------ 

use strict;
use SOAP::Lite; # <===
     
    # take up to 3 parameters from the command line
    my $from_unit = "";
    my $to_unit   = "";
    if (scalar (@ARGV) > 0) {
        $from_unit = shift @ARGV;
        $from_unit =~ s[\W][]g; # remove any non-word characters
        if (scalar (@ARGV) > 0) {
            $to_unit = shift @ARGV;
            $to_unit =~ s[\W][]g; # remove any non-word characters
        }
    }
    else {
        print   "usage: perl client.pl parm1 parm2\n";
    }
         
    # create a new SOAP::Lite instance from the WSDL
    my $path = $0;
    $path =~ s[client\.pl][dbat.wsdl];
    my $service = SOAP::Lite->service("file:$path"); # <===

    # call UnitService
    my $results = $service->getResponse ($from_unit, $to_unit); # <===
    print $results; # <===
