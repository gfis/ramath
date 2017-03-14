#!/usr/bin/make

# prepare data for Ramath functions
# @(#) $Id$
# 2015-07-14, Dr. Georg Fischer: copied from ..
#--------------------------------
MOD=16

all: caw7

caw7:
	perl ~/work/gits/ramath/data/fermcaw7.pl ~/work/gits/ramath/test/TEC5.this.tst

# join OEIS b-files from A031173,74,75
bricks: join_bricks prepare_bricks
join_bricks:
	join b031173.txt b031174.txt > x.tmp
	join x.tmp b031175.txt > euler_brick_combined.b.txt
# result is:
#1 240 117 44
#2 275 252 240
#3 693 480 140
#4 720 132 85
#5 792 231 160
#6 1155 1100 1008
#7 1584 1020 187
#8 2340 880 429
#9 2640 855 832
#10 2992 2475 780
#... 
#3554 498914724 416057200 97908525
#3555 499622100 412179075 79361632
#3556 499907100 474336499 231359040
prepare_bricks:
	perl prepare_bricks.pl ../test/PY3.this.tst euler_brick_combined.b.txt | sort -k 1n -k 3n -k 5n > bricks.tmp
eval_bricks:
	perl eval_bricks.pl bricks.tmp | sort -k 1n -k 2n -k 3 | uniq > eval.tmp
eec422:
	perl mod422.pl $(MOD) two4.1000000.txt
	perl mod422.pl $(MOD) ../test/T52.this.tst
	
fermcaw5:
	perl fermcaw7.pl ../test/TEC5.this.tst | tee fermcaw5.txt
fermcawA:
	perl fermcaw7.pl ../test/TECA.this.tst | tee fermcawA.txt
