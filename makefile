#!/usr/bin/make

# test Ramath functions
# @(#) $Id: makefile 741 2011-07-23 12:30:09Z  $
# 2018-01-22: eec
# 2018-01-20: jfind grep -iH "..."
# 2016-08-31: unified with $(APPL)
# 2016-07-10: jfind also in $(SRC)/../common
# 2015-06-01: all -> symbolic
# 2015-04-06: java -X... 
# 2013-02-27: RegressionTester
# 2011-07-06, Dr. Georg Fischer
#--------------------------------

APPL=ramath
WROB=../../mater/ramath/eec/wroblewski
JAVA=java -cp dist/$(APPL).jar
REGR=$(JAVA) org.teherba.common.RegressionTester
# REGR=java -Xss512m -Xms1024m -Xmx2048m -cp dist/$(APPL).jar org.teherba.common.RegressionTester
DIFF=diff -y --suppress-common-lines --width=160
DIFF=diff -w -rs -C0
SRC=src/main/java/org/teherba/$(APPL)
TOM=c:/var/lib/tomcat/
TOMC=$(TOM)/webapps/$(APPL)
TESTDIR=test
# the following can be overriden outside for single or subset tests,
# for example make regression TEST=U%
TEST="%"
# for Windows, SUDO should be empty
SUDO=
CONST=+2
LEVEL=3
BASE=2
MAX=32

all: eec
distr:
	ant dist
#-------------------------------------------------------------------
# Perform a regression test 
regression: eec ideal linear matrix sandbox simple solver symbolic util \
	regres2
regres2:
	grep -iHE "tests recreated" $(TESTDIR)/*.log
	grep -iHE "tests passed"    $(TESTDIR)/*.log
	grep -iHE "tests FAILED"    $(TESTDIR)/*.log
#-----------------
eec:
	$(REGR) test/eec.tests 		$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
ideal:
	$(REGR) test/ideal.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
linear:
	$(REGR) test/linear.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
matrix:
	$(REGR) test/matrix.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
sandbox:
	$(REGR) test/sandbox.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
sequence:
	$(REGR) test/sequence.tests $(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
simple:
	$(REGR) test/simple.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
solver:
	$(REGR) test/solver.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
symbolic:
	$(REGR) test/symbolic.tests $(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
util:
	$(REGR) test/util.tests 	$(TEST) 2>&1 | tee $(TESTDIR)/regression_$@.log
	grep FAILED $(TESTDIR)/regression_$@.log
#---------------------------------------------------
# Recreate all testcases which failed (i.e. remove xxx.prev.tst)
# Handle with care!
# Failing testcases are turned into "passed" and are manifested by this target!
recreate: recr1 regr2
recr0:
	grep -E '> FAILED' $(TESTDIR)/regression*.log | cut -f 3 -d ' ' | xargs -l -i�� echo rm -v test/��.prev.tst
recr1:
	grep -E '> FAILED' $(TESTDIR)/regression*.log | cut -f 3 -d ' ' | xargs -l -i�� rm -v test/��.prev.tst
regr2:
	make regression TEST=$(TEST) > x.tmp
# test whether all defined tests in common.tests have *.prev.tst results and vice versa
check_tests:
	grep -E "^TEST" $(TESTDIR)/all.tests   | cut -b 6-8 | sort | uniq -c > $(TESTDIR)/tests_formal.tmp
	ls -1 $(TESTDIR)/*.prev.tst            | cut -b 6-8 | sort | uniq -c > $(TESTDIR)/tests_actual.tmp
	diff -y --suppress-common-lines --width=32 $(TESTDIR)/tests_formal.tmp $(TESTDIR)/tests_actual.tmp
#---------------------------------------------------
jfind:
	find src -iname "*.java" | xargs -l grep -iH "$(JF)"
rmbak:
	find src -iname "*.bak"  | xargs -l rm -v
#---------------------------------------------------
ltgt:
	find src -iname "*.java" | xargs -l -iqqq perl -i.bak ../numword/etc/ltgt.pl qqq
#---------------------------------------------------
D=0
RE="n*a(n-1)-a(n)"
OFFSET=0
DIST=0
GFTYPE=0
#----
recur:
	$(JAVA) org.teherba.ramath.linear.BigVectorArray -d $(D) -recur "$(RE)"
gft:
	$(JAVA) org.teherba.ramath.linear.GeneratingFunction -d $(D) 2>&1
#---------------------------------------------------
runholo:
	$(JAVA) irvine.test.HolonomicRecurrenceTest -p "$(MATRIX)" -i "$(INIT)" -o $(OFFSET) -d $(D) -n $(NT) -dist $(DIST) -t $(GFTYPE) $(BF)
runfib:
	make runholo NT=12 BF=-b D=2 MATRIX="[[0],[1],[1],[-1]" INIT="[0,1]"
#---------------------------------------------------
lr:
	make symbolic TEST=LR%
lrh:
	head -200 test/LR*.this.tst
lrass:
	grep assert test/LR*.this.tst
t:
	make solver TEST=T%
# test/T27.prev.tst:Maximum level 5 reached at [64]: 2+2x+x^2-3
# 123456789012345678
proofs:
	grep -iE "proof" test/T*.prev.tst | cut -b 6-9,19- > test/proof.prev.tst
	grep -iE "proof" test/T*.this.tst | cut -b 6-9,19- > test/proof.this.tst
	wc -l test/proof.*
	diff -y test/proof.prev.tst test/proof.this.tst
diffy:
	diff -y test/$(TEST).prev.tst test/$(TEST).this.tst
ret:
	rm test/T*.tst
	make solver
#-------------------------
# Target 'progen' is needed for RegressionTester's MAKE in symbolic.tests/PG*
progen: pg1 
pg1:
	cat test/progen.c
	gcc -Ofast -o test/progen.exe test/progen.c
	test/progen.exe
	rm test/progen.exe
pg2:
	ls -tclr test/*.this.tst | tail -n 1 | sed -e "s/  */ /g" | cut -d" " -f 9 | xargs -l wc
#
# Target 'primit' is used in sandbox.tests/EU*
primit:
	grep primitive test/$(CASE).this.tst | sort | head -$(HEAD) > test/$(CASE).sort.tmp
#	grep primitive test/$(CASE).this.tst | sort | cut -d "	" -f 1 | head -$(HEAD) > test/$(CASE).sort.tmp
#-------------------------
# Evaluation of PG?3
eval3:
	cut -f1 test/PG03.this.tst | sort > pg03.tmp
	cut -f1 test/PG13.this.tst | sort > pg13.tmp
	diff -y pg03.tmp pg13.tmp
#-------------------------
gitadd:
	git add -v $(SRC)/symbolic/*.java
	git add -v $(SRC)/symbolic/reason/*.java
	git add -v test/*.prev.tst
	find src -iname "*.java.bak" | xargs -l rm -v
tfind:
	grep -iEH "$(TF)" test/T*.this.tst
change:
	find $(SRC)/symbolic/reason -iname "*.java" | xargs -l -i{} perl -i.bak etc/change.pl $(FROM) $(TO) {}
gitch:
	git mv -v $(SRC)/symbolic/reason/$(FROM).java $(SRC)/symbolic/reason/$(TO).java 
push:
	find $(SRC)/../common -iname "*.java" -mtime -1 -type f \
	| xargs -l -i{} cp -v {} ../dbat/src/main/java/org/teherba/common
#----------
	
# 1234567890123456789
# test/T47.this.tst:Proof - queue exhausted, queue size = 2
# 2015-07-23: 10 proofs
fc7: fc1 fc2
fc1:
	make solver
fc2:
	perl -w data/fermcau7.pl test/$(TEST).this.tst > x.tmp 
	less x.tmp
	# diff -y x.tmp y.tmp | less
#---------------------------------------------------
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
ferm2:
	perl data/fermcax7.pl test/TEC2.this.tst | tee data/TEC2.tree.tmp
tree1:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) \
	-e "(x)^2 + 2 = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/fermcay7.pl
tree2:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) \
	-e "(x)^2 + 2 = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/fermcay7.pl | cut  -f 2- | sort | uniq -c | grep -vE "^      1 " | tee x.tmp
tree4:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) \
	-e "(x)^2 + 4 = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/fermcay7.pl | cut  -f 2- | sort | uniq -c | grep -vE "^      1 " | tee x.tmp
tree:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver \
	-b $(BASE) -l $(LEVEL) -e "(x)^2 $(CONST) = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/presvg1.pl | tee tree$(CONST).$(BASE).svg
treev1:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) -e "(y+x)^2 $(CONST) = y^3" -r norm,invall,no-evenexp,no-same | perl data/fermcay7.pl | cut  -f 2- | sort | uniq -c | grep -vE "^      1 " | tee x.tmp
treev2:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) -e "(x)^2 $(CONST) = (x-y)^3" -r norm,invall,no-evenexp,no-same | perl data/fermcay7.pl | cut  -f 2- | sort | uniq -c | grep -vE "^      1 " | tee x.tmp
tree7:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver -b $(BASE) -l $(LEVEL) \
	-e "(x)^2 - 7 = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/fermcay7.pl | cut  -f 2- | sort | uniq -c | grep -vE "^      1 " | tee x.tmp
svg:
	java -cp dist/ramath.jar org.teherba.ramath.symbolic.solver.TreeSolver \
	-b $(BASE) -l $(LEVEL) -e "(x)^2 + ($(CONST)) = y^3" -r norm,invall,no-evenexp,no-same \
	| perl data/presvg1.pl | tee x.svg
