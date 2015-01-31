#!/bin/make

# @(#) $Id: makefile 221 2009-08-11 06:08:05Z gfis $
# 2009-06-18, Georg Fischer

CC=gcc
CFLAGS=
CFLAGS=-ggdb -ansi -Wmissing-prototypes -Wstrict-prototypes -pedantic -DUNIX
CLINK=$(CC)
LFLAGS=  
LIBS=
INCLUDES=-I ../tx -I ../pict
SYSLIB=
.SUFFIXES: .c .o .h
.c.o: $*.c
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $*.o $*.c
 
all: compile run

toc:
	# perl perl2c.pl cubic6.pl > cubic6.c
compile: cubic6 cubic7 cubic8
cubic6.o: cubic6.c
cubic6: cubic6.o
	$(CLINK) $(LFLAGS) -o cubic6 cubic6.o $(LIBS)
	chmod 755 cubic6 
cubic7.o: cubic7.c
cubic7: cubic7.o
	$(CLINK) $(LFLAGS) -o cubic7 cubic7.o $(LIBS)
	chmod 755 cubic7 
cubic8.o: cubic8.c
cubic8: cubic8.o
	$(CLINK) $(LFLAGS) -o cubic8 cubic8.o $(LIBS)
	chmod 755 cubic8
run: cubic8
	time ./cubic8 2
norm:
	perl norm3.pl cubic4.full.167.txt
	
