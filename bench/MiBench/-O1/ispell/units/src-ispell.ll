; ModuleID = 'src/ispell.c'
source_filename = "src/ispell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { ptr, ptr, ptr }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@minimenusize = dso_local local_unnamed_addr global i32 2, align 4
@eflag = dso_local local_unnamed_addr global i32 0, align 4
@dumpflag = dso_local local_unnamed_addr global i32 0, align 4
@fflag = dso_local local_unnamed_addr global i32 0, align 4
@sflag = dso_local local_unnamed_addr global i32 0, align 4
@vflag = dso_local local_unnamed_addr global i32 0, align 4
@xflag = dso_local local_unnamed_addr global i32 0, align 4
@deftflag = dso_local global i32 -1, align 4
@tflag = dso_local global i32 0, align 4
@prefstringchar = dso_local local_unnamed_addr global i32 -1, align 4
@terse = dso_local local_unnamed_addr global i32 0, align 4
@tempfile = dso_local global [4096 x i8] zeroinitializer, align 16
@minword = dso_local local_unnamed_addr global i32 1, align 4
@sortit = dso_local local_unnamed_addr global i32 1, align 4
@compoundflag = dso_local local_unnamed_addr global i32 -1, align 4
@tryhardflag = dso_local local_unnamed_addr global i32 -1, align 4
@currentfile = dso_local local_unnamed_addr global ptr null, align 8
@math_mode = dso_local local_unnamed_addr global i32 0, align 4
@LaTeX_Mode = dso_local local_unnamed_addr global i8 80, align 1
@cbench_print = dso_local local_unnamed_addr global i32 1, align 4
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal unnamed_addr global ptr null, align 8
@Trynum = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@hashname = dso_local global [4096 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@LibDict = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"english.hash\00", align 1
@Version_ID = internal unnamed_addr constant [40 x ptr] [ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.148, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.148, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr null], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"(#) \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09BAKEXT = \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\09BINDIR = \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"\09CC = \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\09CFLAGS = \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"\09CONTEXTPCT = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\09COUNTSUFFIX = \22%s\22\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".cnt\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"\09DEFHASH = \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"\09DEFINCSTR = \22%s\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str.53 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"\09LINT = \22%s\22\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"\09LINTFLAGS = \22%s\22\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"\09LOOK = \22%s\22\0A\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"\09MAKE_SORTTMP = \22%s\22\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"-T ${TMPDIR-/tmp}\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"\09MALLOC_INCREMENT = %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\09MAN1DIR = \22%s\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man1\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"\09MAN1EXT = \22%s\22\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"\09MAN4DIR = \22%s\22\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man4\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"\09MAN4EXT = \22%s\22\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c".4\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"\09MASKBITS = %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"\09MASKTYPE = %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"\09MASKTYPE_WIDTH = %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\09MASTERHASH = \22%s\22\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"americanmed+.hash\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"\09MAXAFFIXLEN = %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"\09MAXCONTEXT = %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"\09MAXINCLUDEFILES = %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"\09MAXNAMLEN = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"\09MAXPATHLEN = %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"\09MAXPCT = %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"\09MAXSEARCH = %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"\09MAXSTRINGCHARLEN = %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"\09MAXSTRINGCHARS = %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"\09MAX_CAPS = %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"\09MAX_HITS = %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"\09MAX_SCREEN_SIZE = %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"\09MINCONTEXT = %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"\09MINWORD = %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"\09MSDOS_BINARY_OPEN = 0x%x\0A\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"\09MSGLANG = %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"english\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"\09NRSPECIAL = \22%s\22\0A\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"().\\*\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"\09OLDPAFF = \22%s\22\0A\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"\09OLDPDICT = \22%s\22\0A\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"\09PDICTVAR = \22%s\22\0A\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"\09REGLIB = \22%s\22\0A\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"\09SIGNAL_TYPE = %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"\09SORTPERSONAL = %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"\09STATSUFFIX = \22%s\22\0A\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c".stat\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"\09TEMPNAME = \22%s\22\0A\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"/tmp/ispellXXXXXX\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"\09TERMLIB = \22%s\22\0A\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"\09TEXINFODIR = \22%s\22\0A\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"/usr/local/info\00", align 1
@.str.120 = private unnamed_addr constant [20 x i8] c"\09TEXSPECIAL = \22%s\22\0A\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"()[]{}<>\\$*.%\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"\09WORDS = \22%s\22\0A\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"\09YACC = \22%s\22\0A\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@incfileflag = dso_local local_unnamed_addr global i32 0, align 4
@aflag = dso_local local_unnamed_addr global i32 0, align 4
@nodictflag = dso_local local_unnamed_addr global i32 0, align 4
@cflag = dso_local local_unnamed_addr global i32 0, align 4
@lflag = dso_local local_unnamed_addr global i32 0, align 4
@askfilename = dso_local local_unnamed_addr global ptr null, align 8
@contextsize = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.130 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@defdupchar = dso_local local_unnamed_addr global i32 0, align 4
@hashheader = dso_local local_unnamed_addr global %struct.hashheader zeroinitializer, align 4
@.str.133 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@infile1 = dso_local local_unnamed_addr global ptr null, align 8
@.str.134 = private unnamed_addr constant [32 x i8] c"\0AError: Can't open input file!\0A\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@outfile1 = dso_local local_unnamed_addr global ptr null, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@infile = dso_local local_unnamed_addr global ptr null, align 8
@outfile = dso_local local_unnamed_addr global ptr null, align 8
@BC = dso_local local_unnamed_addr global ptr null, align 8
@cd = dso_local local_unnamed_addr global ptr null, align 8
@cl = dso_local local_unnamed_addr global ptr null, align 8
@cm = dso_local local_unnamed_addr global ptr null, align 8
@ho = dso_local local_unnamed_addr global ptr null, align 8
@nd = dso_local local_unnamed_addr global ptr null, align 8
@so = dso_local local_unnamed_addr global ptr null, align 8
@se = dso_local local_unnamed_addr global ptr null, align 8
@sg = dso_local local_unnamed_addr global i32 0, align 4
@ti = dso_local local_unnamed_addr global ptr null, align 8
@te = dso_local local_unnamed_addr global ptr null, align 8
@li = dso_local local_unnamed_addr global i32 0, align 4
@co = dso_local local_unnamed_addr global i32 0, align 4
@contextbufs = dso_local local_unnamed_addr global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = dso_local local_unnamed_addr global i32 0, align 4
@currentchar = dso_local local_unnamed_addr global ptr null, align 8
@ctoken = dso_local local_unnamed_addr global [120 x i8] zeroinitializer, align 16
@itoken = dso_local local_unnamed_addr global [120 x i8] zeroinitializer, align 16
@termcap = dso_local local_unnamed_addr global [2048 x i8] zeroinitializer, align 16
@termstr = dso_local local_unnamed_addr global [2048 x i8] zeroinitializer, align 16
@termptr = dso_local local_unnamed_addr global ptr null, align 8
@numhits = dso_local local_unnamed_addr global i32 0, align 4
@hits = dso_local local_unnamed_addr global [10 x %struct.success] zeroinitializer, align 16
@hashstrings = dso_local local_unnamed_addr global ptr null, align 8
@hashtbl = dso_local local_unnamed_addr global ptr null, align 8
@hashsize = dso_local local_unnamed_addr global i32 0, align 4
@uerasechar = dso_local local_unnamed_addr global i32 0, align 4
@ukillchar = dso_local local_unnamed_addr global i32 0, align 4
@laststringch = dso_local local_unnamed_addr global i32 0, align 4
@numpflags = dso_local local_unnamed_addr global i32 0, align 4
@numsflags = dso_local local_unnamed_addr global i32 0, align 4
@pflagindex = dso_local local_unnamed_addr global [228 x %struct.flagptr] zeroinitializer, align 16
@pflaglist = dso_local local_unnamed_addr global ptr null, align 8
@sflagindex = dso_local local_unnamed_addr global [228 x %struct.flagptr] zeroinitializer, align 16
@sflaglist = dso_local local_unnamed_addr global ptr null, align 8
@chartypes = dso_local local_unnamed_addr global ptr null, align 8
@changes = dso_local local_unnamed_addr global i32 0, align 4
@readonly = dso_local local_unnamed_addr global i32 0, align 4
@quit = dso_local local_unnamed_addr global i32 0, align 4
@possibilities = dso_local local_unnamed_addr global [100 x [120 x i8]] zeroinitializer, align 16
@pcount = dso_local local_unnamed_addr global i32 0, align 4
@maxposslen = dso_local local_unnamed_addr global i32 0, align 4
@easypossibilities = dso_local local_unnamed_addr global i32 0, align 4
@Try = dso_local local_unnamed_addr global [228 x i8] zeroinitializer, align 16
@.str.137 = private unnamed_addr constant [137 x i8] c"Usage: %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -x | -b | -S | -B | -C | -P | -m | -Lcontext | -M | -N | -Ttype | -V] file .....\0A\00", align 1
@.str.138 = private unnamed_addr constant [67 x i8] c"       %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -Ttype] -l\0A\00", align 1
@.str.139 = private unnamed_addr constant [98 x i8] c"       %s [-dfile | -pfile | -ffile | -Wn | -t | -n | -s | -B | -C | -P | -m | -Ttype] {-a | -A}\0A\00", align 1
@.str.140 = private unnamed_addr constant [39 x i8] c"       %s [-dfile] [-wchars | -Wn] -c\0A\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"       %s [-dfile] [-wchars] -e[1-4]\0A\00", align 1
@.str.142 = private unnamed_addr constant [33 x i8] c"       %s [-dfile] [-wchars] -D\0A\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"       %s -v\0A\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str.145 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str.146 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str.147 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str.149 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str.150 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str.152 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str.153 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str.154 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str.155 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str.156 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str.157 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str.158 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str.159 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str.160 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str.161 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str.162 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str.163 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str.164 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str.165 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str.166 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str.167 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str.168 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str.169 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str.170 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str.171 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str.172 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str.173 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str.174 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str.175 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str.176 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str.177 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str.178 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str.179 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str.180 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [30 x i8] c"Warning:  Can't write to %s\0D\0A\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"temporary file disappeared (%s)\0D\0A\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.191 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@.str.192 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"src/ispell.c\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [18 x i8] c"Dictionary loaded\00", align 1
@str.195 = private unnamed_addr constant [21 x i8] c"Compiled-in options:\00", align 1
@str.196 = private unnamed_addr constant [12 x i8] c"\09!USG (BSD)\00", align 1
@str.197 = private unnamed_addr constant [16 x i8] c"\09!BOTTOMCONTEXT\00", align 1
@str.198 = private unnamed_addr constant [8 x i8] c"\09CBREAK\00", align 1
@str.199 = private unnamed_addr constant [18 x i8] c"\09!COMMANDFORSPACE\00", align 1
@str.200 = private unnamed_addr constant [17 x i8] c"\09!CONTEXTROUNDUP\00", align 1
@str.201 = private unnamed_addr constant [16 x i8] c"\09!EQUAL_COLUMNS\00", align 1
@str.202 = private unnamed_addr constant [26 x i8] c"\09!GENERATE_LIBRARY_PROTOS\00", align 1
@str.203 = private unnamed_addr constant [13 x i8] c"\09!HAS_RENAME\00", align 1
@str.204 = private unnamed_addr constant [12 x i8] c"\09!IGNOREBIB\00", align 1
@str.205 = private unnamed_addr constant [10 x i8] c"\09MINIMENU\00", align 1
@str.206 = private unnamed_addr constant [28 x i8] c"\09!NO_CAPITALIZATION_SUPPORT\00", align 1
@str.207 = private unnamed_addr constant [25 x i8] c"\09!NO_STDLIB_H (STDLIB_H)\00", align 1
@str.208 = private unnamed_addr constant [8 x i8] c"\09NO8BIT\00", align 1
@str.209 = private unnamed_addr constant [25 x i8] c"\09PDICTHOME = (undefined)\00", align 1
@str.210 = private unnamed_addr constant [24 x i8] c"\09!PIECEMEAL_HASH_WRITES\00", align 1
@str.211 = private unnamed_addr constant [15 x i8] c"\09!REGEX_LOOKUP\00", align 1
@str.212 = private unnamed_addr constant [14 x i8] c"\09!TRUNCATEBAK\00", align 1
@str.213 = private unnamed_addr constant [8 x i8] c"\09!USESH\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca [4 x i8], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  store ptr %6, ptr @Cmd, align 8, !tbaa !5
  store i32 0, ptr @Trynum, align 4, !tbaa !9
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @index(ptr noundef nonnull %7, i32 noundef 47) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %7) #16
  br label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #16
  br label %16

16:                                               ; preds = %14, %12
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @main.libdictname, ptr noundef nonnull dereferenceable(1) %7) #16
  %18 = tail call ptr @rindex(ptr noundef nonnull %7, i32 noundef 46) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(6) @.str.3) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %16
  %24 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %25 = getelementptr inbounds i8, ptr @hashname, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %25, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  br label %26

26:                                               ; preds = %23, %20
  %27 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 47) #17
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = select i1 %28, ptr @main.libdictname, ptr %29
  store ptr %30, ptr @LibDict, align 8, !tbaa !5
  %31 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  store i8 0, ptr %31, align 1, !tbaa !11
  br label %36

34:                                               ; preds = %2
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #16
  br label %36

36:                                               ; preds = %26, %33, %34
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %38 = getelementptr inbounds ptr, ptr %1, i64 1
  %39 = add nsw i32 %0, -1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %430

41:                                               ; preds = %36
  %42 = load ptr, ptr %38, align 8, !tbaa !5
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = icmp eq i8 %43, 45
  br i1 %44, label %49, label %430

45:                                               ; preds = %421
  %46 = load ptr, ptr %427, align 8, !tbaa !5
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = icmp eq i8 %47, 45
  br i1 %48, label %49, label %430, !llvm.loop !12

49:                                               ; preds = %41, %45
  %50 = phi ptr [ %46, %45 ], [ %42, %41 ]
  %51 = phi ptr [ %422, %45 ], [ %1, %41 ]
  %52 = phi ptr [ %423, %45 ], [ null, %41 ]
  %53 = phi ptr [ %424, %45 ], [ null, %41 ]
  %54 = phi ptr [ %425, %45 ], [ null, %41 ]
  %55 = phi i32 [ %426, %45 ], [ %0, %41 ]
  %56 = phi ptr [ %427, %45 ], [ %38, %41 ]
  %57 = phi i32 [ %428, %45 ], [ %39, %41 ]
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #17
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds i8, ptr %50, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !11
  switch i8 %61, label %420 [
    i8 118, label %62
    i8 110, label %168
    i8 116, label %174
    i8 84, label %180
    i8 65, label %191
    i8 97, label %195
    i8 68, label %201
    i8 101, label %209
    i8 99, label %231
    i8 98, label %241
    i8 120, label %245
    i8 102, label %249
    i8 76, label %269
    i8 108, label %286
    i8 115, label %292
    i8 83, label %298
    i8 66, label %302
    i8 67, label %306
    i8 80, label %310
    i8 109, label %314
    i8 78, label %318
    i8 77, label %322
    i8 112, label %326
    i8 100, label %344
    i8 86, label %389
    i8 119, label %393
    i8 87, label %404
  ]

62:                                               ; preds = %49
  %63 = icmp sgt i32 %59, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  tail call fastcc void @usage()
  unreachable

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %74, %65 ], [ @.str.144, %62 ]
  %67 = phi ptr [ %68, %65 ], [ @Version_ID, %62 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 5) #17
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i64 5, i64 0
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  %73 = tail call i32 @puts(ptr nonnull dereferenceable(1) %72)
  %74 = load ptr, ptr %68, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %65, !llvm.loop !14

76:                                               ; preds = %65
  %77 = load ptr, ptr %56, align 8, !tbaa !5
  %78 = getelementptr inbounds i8, ptr %77, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !11
  %80 = icmp eq i8 %79, 118
  br i1 %80, label %81, label %167

81:                                               ; preds = %76
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.195)
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11)
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @.str.13)
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.197)
  %87 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.198)
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17)
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @.str.19)
  %90 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.199)
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.200)
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 10)
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @.str.24)
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @.str.4)
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @.str.27)
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.29)
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 0)
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull @.str.32)
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @.str.34)
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef 0)
  %101 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.37)
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull @.str.39)
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.41)
  %104 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.201)
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @.str.3)
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef nonnull @.str.47)
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.204)
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull @.str.50)
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef 100)
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull @.str.53)
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef nonnull @.str.2)
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.56)
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @.str.58)
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef nonnull @.str.56)
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull @.str.61)
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63)
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef 4088)
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull @.str.66)
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull @.str.68)
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull @.str.70)
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef nonnull @.str.72)
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef 32)
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull @.str.75)
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef 32)
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @.str.78)
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef 20)
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef 10)
  %130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef 5)
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, i32 noundef 255)
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef 4096)
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, i32 noundef 70)
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 4)
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 10)
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef 100)
  %137 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef 10)
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef 10)
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef 0)
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.91, i32 noundef 2)
  %141 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.205)
  %142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef 1)
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, i32 noundef 0)
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.95, ptr noundef nonnull @.str.96)
  %145 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.206)
  %146 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.207)
  %147 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.208)
  %148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, ptr noundef nonnull @.str.101)
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull @.str.32)
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, ptr noundef nonnull @.str.34)
  %151 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.209)
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef nonnull @.str.106)
  %153 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.210)
  %154 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.211)
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull @.str.56)
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull @.str.111)
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef 1000)
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, ptr noundef nonnull @.str.114)
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull @.str.116)
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull @.str.56)
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.118, ptr noundef nonnull @.str.119)
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.120, ptr noundef nonnull @.str.121)
  %163 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.212)
  %164 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.213)
  %165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.124, ptr noundef nonnull @.str.125)
  %166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, ptr noundef nonnull @.str.127)
  br label %167

167:                                              ; preds = %81, %76
  tail call void @exit(i32 noundef 0) #18
  unreachable

168:                                              ; preds = %49
  %169 = icmp sgt i32 %59, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  tail call fastcc void @usage()
  unreachable

171:                                              ; preds = %168
  store i32 0, ptr @tflag, align 4, !tbaa !9
  store i32 0, ptr @deftflag, align 4, !tbaa !9
  %172 = icmp eq ptr %54, null
  %173 = select i1 %172, ptr @.str.128, ptr %54
  br label %421

174:                                              ; preds = %49
  %175 = icmp sgt i32 %59, 2
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  tail call fastcc void @usage()
  unreachable

177:                                              ; preds = %174
  store i32 1, ptr @tflag, align 4, !tbaa !9
  store i32 1, ptr @deftflag, align 4, !tbaa !9
  %178 = icmp eq ptr %54, null
  %179 = select i1 %178, ptr @.str.129, ptr %54
  br label %421

180:                                              ; preds = %49
  %181 = getelementptr inbounds i8, ptr %50, i64 2
  %182 = load i8, ptr %181, align 1, !tbaa !11
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %421

184:                                              ; preds = %180
  %185 = add nsw i32 %55, -2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  tail call fastcc void @usage()
  unreachable

188:                                              ; preds = %184
  %189 = getelementptr inbounds ptr, ptr %51, i64 2
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  br label %421

191:                                              ; preds = %49
  %192 = icmp sgt i32 %59, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %191
  tail call fastcc void @usage()
  unreachable

194:                                              ; preds = %191
  store i32 1, ptr @incfileflag, align 4, !tbaa !9
  store i32 1, ptr @aflag, align 4, !tbaa !9
  br label %421

195:                                              ; preds = %49
  %196 = icmp sgt i32 %59, 2
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  tail call fastcc void @usage()
  unreachable

198:                                              ; preds = %195
  %199 = load i32, ptr @aflag, align 4, !tbaa !9
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @aflag, align 4, !tbaa !9
  br label %421

201:                                              ; preds = %49
  %202 = icmp sgt i32 %59, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %201
  tail call fastcc void @usage()
  unreachable

204:                                              ; preds = %201
  %205 = load i32, ptr @dumpflag, align 4, !tbaa !9
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr @dumpflag, align 4, !tbaa !9
  %207 = load i32, ptr @nodictflag, align 4, !tbaa !9
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @nodictflag, align 4, !tbaa !9
  br label %421

209:                                              ; preds = %49
  %210 = icmp sgt i32 %59, 3
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  tail call fastcc void @usage()
  unreachable

212:                                              ; preds = %209
  store i32 1, ptr @eflag, align 4, !tbaa !9
  %213 = load ptr, ptr %56, align 8, !tbaa !5
  %214 = getelementptr inbounds i8, ptr %213, i64 2
  %215 = load i8, ptr %214, align 1, !tbaa !11
  %216 = icmp eq i8 %215, 101
  br i1 %216, label %226, label %217

217:                                              ; preds = %212
  %218 = add i8 %215, -49
  %219 = icmp ult i8 %218, 4
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = add nsw i8 %215, -48
  %222 = zext nneg i8 %221 to i32
  br label %226

223:                                              ; preds = %217
  %224 = icmp eq i8 %215, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %223
  tail call fastcc void @usage()
  unreachable

226:                                              ; preds = %212, %220
  %227 = phi i32 [ %222, %220 ], [ 2, %212 ]
  store i32 %227, ptr @eflag, align 4, !tbaa !9
  br label %228

228:                                              ; preds = %226, %223
  %229 = load i32, ptr @nodictflag, align 4, !tbaa !9
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr @nodictflag, align 4, !tbaa !9
  br label %421

231:                                              ; preds = %49
  %232 = icmp sgt i32 %59, 2
  br i1 %232, label %233, label %234

233:                                              ; preds = %231
  tail call fastcc void @usage()
  unreachable

234:                                              ; preds = %231
  %235 = load i32, ptr @cflag, align 4, !tbaa !9
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr @cflag, align 4, !tbaa !9
  %237 = load i32, ptr @lflag, align 4, !tbaa !9
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr @lflag, align 4, !tbaa !9
  %239 = load i32, ptr @nodictflag, align 4, !tbaa !9
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr @nodictflag, align 4, !tbaa !9
  br label %421

241:                                              ; preds = %49
  %242 = icmp sgt i32 %59, 2
  br i1 %242, label %243, label %244

243:                                              ; preds = %241
  tail call fastcc void @usage()
  unreachable

244:                                              ; preds = %241
  store i32 0, ptr @xflag, align 4, !tbaa !9
  br label %421

245:                                              ; preds = %49
  %246 = icmp sgt i32 %59, 2
  br i1 %246, label %247, label %248

247:                                              ; preds = %245
  tail call fastcc void @usage()
  unreachable

248:                                              ; preds = %245
  store i32 1, ptr @xflag, align 4, !tbaa !9
  br label %421

249:                                              ; preds = %49
  %250 = load i32, ptr @fflag, align 4, !tbaa !9
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr @fflag, align 4, !tbaa !9
  %252 = getelementptr inbounds i8, ptr %50, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !11
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = add nsw i32 %55, -2
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  tail call fastcc void @usage()
  unreachable

259:                                              ; preds = %255
  %260 = getelementptr inbounds ptr, ptr %51, i64 2
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  br label %262

262:                                              ; preds = %259, %249
  %263 = phi ptr [ %260, %259 ], [ %56, %249 ]
  %264 = phi ptr [ %261, %259 ], [ %252, %249 ]
  %265 = phi i32 [ %256, %259 ], [ %57, %249 ]
  store ptr %264, ptr @askfilename, align 8, !tbaa !5
  %266 = load i8, ptr %264, align 1, !tbaa !11
  %267 = icmp eq i8 %266, 0
  %268 = select i1 %267, ptr null, ptr %264
  store ptr %268, ptr @askfilename, align 8
  br label %421

269:                                              ; preds = %49
  %270 = getelementptr inbounds i8, ptr %50, i64 2
  %271 = load i8, ptr %270, align 1, !tbaa !11
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = add nsw i32 %55, -2
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  tail call fastcc void @usage()
  unreachable

277:                                              ; preds = %273
  %278 = getelementptr inbounds ptr, ptr %51, i64 2
  %279 = load ptr, ptr %278, align 8, !tbaa !5
  br label %280

280:                                              ; preds = %277, %269
  %281 = phi ptr [ %278, %277 ], [ %56, %269 ]
  %282 = phi ptr [ %279, %277 ], [ %270, %269 ]
  %283 = phi i32 [ %274, %277 ], [ %57, %269 ]
  %284 = tail call i64 @strtol(ptr nocapture noundef nonnull %282, ptr noundef null, i32 noundef 10) #16
  %285 = trunc i64 %284 to i32
  store i32 %285, ptr @contextsize, align 4, !tbaa !9
  br label %421

286:                                              ; preds = %49
  %287 = icmp sgt i32 %59, 2
  br i1 %287, label %288, label %289

288:                                              ; preds = %286
  tail call fastcc void @usage()
  unreachable

289:                                              ; preds = %286
  %290 = load i32, ptr @lflag, align 4, !tbaa !9
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr @lflag, align 4, !tbaa !9
  br label %421

292:                                              ; preds = %49
  %293 = icmp sgt i32 %59, 2
  br i1 %293, label %294, label %295

294:                                              ; preds = %292
  tail call fastcc void @usage()
  unreachable

295:                                              ; preds = %292
  %296 = load i32, ptr @sflag, align 4, !tbaa !9
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr @sflag, align 4, !tbaa !9
  br label %421

298:                                              ; preds = %49
  %299 = icmp sgt i32 %59, 2
  br i1 %299, label %300, label %301

300:                                              ; preds = %298
  tail call fastcc void @usage()
  unreachable

301:                                              ; preds = %298
  store i32 0, ptr @sortit, align 4, !tbaa !9
  br label %421

302:                                              ; preds = %49
  %303 = icmp sgt i32 %59, 2
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  tail call fastcc void @usage()
  unreachable

305:                                              ; preds = %302
  store i32 0, ptr @compoundflag, align 4, !tbaa !9
  br label %421

306:                                              ; preds = %49
  %307 = icmp sgt i32 %59, 2
  br i1 %307, label %308, label %309

308:                                              ; preds = %306
  tail call fastcc void @usage()
  unreachable

309:                                              ; preds = %306
  store i32 1, ptr @compoundflag, align 4, !tbaa !9
  br label %421

310:                                              ; preds = %49
  %311 = icmp sgt i32 %59, 2
  br i1 %311, label %312, label %313

312:                                              ; preds = %310
  tail call fastcc void @usage()
  unreachable

313:                                              ; preds = %310
  store i32 0, ptr @tryhardflag, align 4, !tbaa !9
  br label %421

314:                                              ; preds = %49
  %315 = icmp sgt i32 %59, 2
  br i1 %315, label %316, label %317

316:                                              ; preds = %314
  tail call fastcc void @usage()
  unreachable

317:                                              ; preds = %314
  store i32 1, ptr @tryhardflag, align 4, !tbaa !9
  br label %421

318:                                              ; preds = %49
  %319 = icmp sgt i32 %59, 2
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  tail call fastcc void @usage()
  unreachable

321:                                              ; preds = %318
  store i32 0, ptr @minimenusize, align 4, !tbaa !9
  br label %421

322:                                              ; preds = %49
  %323 = icmp sgt i32 %59, 2
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  tail call fastcc void @usage()
  unreachable

325:                                              ; preds = %322
  store i32 2, ptr @minimenusize, align 4, !tbaa !9
  br label %421

326:                                              ; preds = %49
  %327 = getelementptr inbounds i8, ptr %50, i64 2
  %328 = load i8, ptr %327, align 1, !tbaa !11
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %340

330:                                              ; preds = %326
  %331 = add nsw i32 %55, -2
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  tail call fastcc void @usage()
  unreachable

334:                                              ; preds = %330
  %335 = getelementptr inbounds ptr, ptr %51, i64 2
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = load i8, ptr %336, align 1, !tbaa !11
  %338 = icmp eq i8 %337, 0
  %339 = select i1 %338, ptr null, ptr %336
  br label %340

340:                                              ; preds = %334, %326
  %341 = phi ptr [ %335, %334 ], [ %56, %326 ]
  %342 = phi ptr [ %339, %334 ], [ %327, %326 ]
  %343 = phi i32 [ %331, %334 ], [ %57, %326 ]
  store ptr null, ptr @LibDict, align 8, !tbaa !5
  br label %421

344:                                              ; preds = %49
  %345 = getelementptr inbounds i8, ptr %50, i64 2
  %346 = load i8, ptr %345, align 1, !tbaa !11
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  %349 = add nsw i32 %55, -2
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  tail call fastcc void @usage()
  unreachable

352:                                              ; preds = %348
  %353 = getelementptr inbounds ptr, ptr %51, i64 2
  %354 = load ptr, ptr %353, align 8, !tbaa !5
  br label %355

355:                                              ; preds = %352, %344
  %356 = phi ptr [ %353, %352 ], [ %56, %344 ]
  %357 = phi ptr [ %354, %352 ], [ %345, %344 ]
  %358 = phi i32 [ %349, %352 ], [ %57, %344 ]
  %359 = tail call ptr @index(ptr noundef %357, i32 noundef 47) #17
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361

361:                                              ; preds = %355
  %362 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %357) #16
  br label %365

363:                                              ; preds = %355
  %364 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.2, ptr noundef %357) #16
  br label %365

365:                                              ; preds = %363, %361
  %366 = icmp eq ptr %52, null
  br i1 %366, label %367, label %371

367:                                              ; preds = %365
  %368 = load i8, ptr %357, align 1, !tbaa !11
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %367
  store ptr %357, ptr @LibDict, align 8, !tbaa !5
  br label %371

371:                                              ; preds = %370, %367, %365
  %372 = tail call ptr @rindex(ptr noundef %357, i32 noundef 46) #17
  %373 = icmp eq ptr %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %371
  %375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %372, ptr noundef nonnull dereferenceable(6) @.str.3) #17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  store i8 0, ptr %372, align 1, !tbaa !11
  br label %381

378:                                              ; preds = %374, %371
  %379 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %380 = getelementptr inbounds i8, ptr @hashname, i64 %379
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %380, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  br label %381

381:                                              ; preds = %378, %377
  %382 = load ptr, ptr @LibDict, align 8, !tbaa !5
  %383 = icmp eq ptr %382, null
  br i1 %383, label %421, label %384

384:                                              ; preds = %381
  %385 = tail call ptr @rindex(ptr noundef nonnull %382, i32 noundef 47) #17
  %386 = icmp eq ptr %385, null
  br i1 %386, label %421, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds i8, ptr %385, i64 1
  store ptr %388, ptr @LibDict, align 8, !tbaa !5
  br label %421

389:                                              ; preds = %49
  %390 = icmp sgt i32 %59, 2
  br i1 %390, label %391, label %392

391:                                              ; preds = %389
  tail call fastcc void @usage()
  unreachable

392:                                              ; preds = %389
  store i32 1, ptr @vflag, align 4, !tbaa !9
  br label %421

393:                                              ; preds = %49
  %394 = getelementptr inbounds i8, ptr %50, i64 2
  %395 = load i8, ptr %394, align 1, !tbaa !11
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %421

397:                                              ; preds = %393
  %398 = add nsw i32 %55, -2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  tail call fastcc void @usage()
  unreachable

401:                                              ; preds = %397
  %402 = getelementptr inbounds ptr, ptr %51, i64 2
  %403 = load ptr, ptr %402, align 8, !tbaa !5
  br label %421

404:                                              ; preds = %49
  %405 = getelementptr inbounds i8, ptr %50, i64 2
  %406 = load i8, ptr %405, align 1, !tbaa !11
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %417

408:                                              ; preds = %404
  %409 = add nsw i32 %55, -2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  tail call fastcc void @usage()
  unreachable

412:                                              ; preds = %408
  %413 = getelementptr inbounds ptr, ptr %51, i64 2
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  %415 = tail call i64 @strtol(ptr nocapture noundef nonnull %414, ptr noundef null, i32 noundef 10) #16
  %416 = trunc i64 %415 to i32
  store i32 %416, ptr @minword, align 4, !tbaa !9
  br label %421

417:                                              ; preds = %404
  %418 = tail call i64 @strtol(ptr nocapture noundef nonnull %405, ptr noundef null, i32 noundef 10) #16
  %419 = trunc i64 %418 to i32
  store i32 %419, ptr @minword, align 4, !tbaa !9
  br label %421

420:                                              ; preds = %49
  tail call fastcc void @usage()
  unreachable

421:                                              ; preds = %180, %188, %412, %417, %393, %401, %381, %387, %384, %392, %340, %325, %321, %317, %313, %309, %305, %301, %295, %289, %280, %262, %248, %244, %234, %228, %204, %198, %194, %177, %171
  %422 = phi ptr [ %413, %412 ], [ %56, %417 ], [ %402, %401 ], [ %56, %393 ], [ %56, %392 ], [ %356, %387 ], [ %356, %384 ], [ %356, %381 ], [ %341, %340 ], [ %56, %325 ], [ %56, %321 ], [ %56, %317 ], [ %56, %313 ], [ %56, %309 ], [ %56, %305 ], [ %56, %301 ], [ %56, %295 ], [ %56, %289 ], [ %281, %280 ], [ %263, %262 ], [ %56, %248 ], [ %56, %244 ], [ %56, %234 ], [ %56, %228 ], [ %56, %204 ], [ %56, %198 ], [ %56, %194 ], [ %56, %177 ], [ %56, %171 ], [ %189, %188 ], [ %56, %180 ]
  %423 = phi ptr [ %52, %412 ], [ %52, %417 ], [ %52, %401 ], [ %52, %393 ], [ %52, %392 ], [ %52, %387 ], [ %52, %384 ], [ %52, %381 ], [ %342, %340 ], [ %52, %325 ], [ %52, %321 ], [ %52, %317 ], [ %52, %313 ], [ %52, %309 ], [ %52, %305 ], [ %52, %301 ], [ %52, %295 ], [ %52, %289 ], [ %52, %280 ], [ %52, %262 ], [ %52, %248 ], [ %52, %244 ], [ %52, %234 ], [ %52, %228 ], [ %52, %204 ], [ %52, %198 ], [ %52, %194 ], [ %52, %177 ], [ %52, %171 ], [ %52, %188 ], [ %52, %180 ]
  %424 = phi ptr [ %53, %412 ], [ %53, %417 ], [ %403, %401 ], [ %394, %393 ], [ %53, %392 ], [ %53, %387 ], [ %53, %384 ], [ %53, %381 ], [ %53, %340 ], [ %53, %325 ], [ %53, %321 ], [ %53, %317 ], [ %53, %313 ], [ %53, %309 ], [ %53, %305 ], [ %53, %301 ], [ %53, %295 ], [ %53, %289 ], [ %53, %280 ], [ %53, %262 ], [ %53, %248 ], [ %53, %244 ], [ %53, %234 ], [ %53, %228 ], [ %53, %204 ], [ %53, %198 ], [ %53, %194 ], [ %53, %177 ], [ %53, %171 ], [ %53, %188 ], [ %53, %180 ]
  %425 = phi ptr [ %54, %412 ], [ %54, %417 ], [ %54, %401 ], [ %54, %393 ], [ %54, %392 ], [ %54, %387 ], [ %54, %384 ], [ %54, %381 ], [ %54, %340 ], [ %54, %325 ], [ %54, %321 ], [ %54, %317 ], [ %54, %313 ], [ %54, %309 ], [ %54, %305 ], [ %54, %301 ], [ %54, %295 ], [ %54, %289 ], [ %54, %280 ], [ %54, %262 ], [ %54, %248 ], [ %54, %244 ], [ %54, %234 ], [ %54, %228 ], [ %54, %204 ], [ %54, %198 ], [ %54, %194 ], [ %179, %177 ], [ %173, %171 ], [ %190, %188 ], [ %181, %180 ]
  %426 = phi i32 [ %409, %412 ], [ %57, %417 ], [ %398, %401 ], [ %57, %393 ], [ %57, %392 ], [ %358, %387 ], [ %358, %384 ], [ %358, %381 ], [ %343, %340 ], [ %57, %325 ], [ %57, %321 ], [ %57, %317 ], [ %57, %313 ], [ %57, %309 ], [ %57, %305 ], [ %57, %301 ], [ %57, %295 ], [ %57, %289 ], [ %283, %280 ], [ %265, %262 ], [ %57, %248 ], [ %57, %244 ], [ %57, %234 ], [ %57, %228 ], [ %57, %204 ], [ %57, %198 ], [ %57, %194 ], [ %57, %177 ], [ %57, %171 ], [ %185, %188 ], [ %57, %180 ]
  %427 = getelementptr inbounds ptr, ptr %422, i64 1
  %428 = add nsw i32 %426, -1
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %45, label %430, !llvm.loop !12

430:                                              ; preds = %421, %45, %41, %36
  %431 = phi ptr [ null, %36 ], [ null, %41 ], [ %423, %45 ], [ %423, %421 ]
  %432 = phi ptr [ null, %36 ], [ null, %41 ], [ %424, %45 ], [ %424, %421 ]
  %433 = phi ptr [ null, %36 ], [ null, %41 ], [ %425, %45 ], [ %425, %421 ]
  %434 = phi ptr [ %38, %36 ], [ %38, %41 ], [ %427, %45 ], [ %427, %421 ]
  %435 = phi i32 [ %39, %36 ], [ %39, %41 ], [ %428, %45 ], [ %428, %421 ]
  %436 = phi i1 [ %40, %36 ], [ %40, %41 ], [ %429, %45 ], [ %429, %421 ]
  %437 = load i32, ptr @lflag, align 4
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %436, i1 true, i1 %438
  %440 = load i32, ptr @aflag, align 4
  %441 = icmp ne i32 %440, 0
  %442 = select i1 %439, i1 true, i1 %441
  %443 = load i32, ptr @eflag, align 4
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %442, i1 true, i1 %444
  %446 = load i32, ptr @dumpflag, align 4
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %445, i1 true, i1 %447
  br i1 %448, label %449, label %457

449:                                              ; preds = %430
  %450 = icmp sgt i32 %435, 0
  br i1 %450, label %451, label %469

451:                                              ; preds = %449
  %452 = zext nneg i32 %435 to i64
  %453 = zext nneg i32 %435 to i64
  %454 = load ptr, ptr %434, align 8, !tbaa !5
  %455 = tail call i32 (ptr, i32, ...) @access(ptr noundef %454, i32 noundef 4) #16
  %456 = icmp sgt i32 %455, -1
  br i1 %456, label %469, label %458

457:                                              ; preds = %430
  tail call fastcc void @usage()
  unreachable

458:                                              ; preds = %451, %462
  %459 = phi i64 [ %460, %462 ], [ 0, %451 ]
  %460 = add nuw nsw i64 %459, 1
  %461 = icmp eq i64 %460, %453
  br i1 %461, label %467, label %462, !llvm.loop !15

462:                                              ; preds = %458
  %463 = getelementptr inbounds ptr, ptr %434, i64 %460
  %464 = load ptr, ptr %463, align 8, !tbaa !5
  %465 = tail call i32 (ptr, i32, ...) @access(ptr noundef %464, i32 noundef 4) #16
  %466 = icmp sgt i32 %465, -1
  br i1 %466, label %467, label %458, !llvm.loop !15

467:                                              ; preds = %458, %462
  %468 = icmp ult i64 %460, %452
  br label %469

469:                                              ; preds = %467, %451, %449
  %470 = phi i1 [ %450, %449 ], [ %450, %451 ], [ %468, %467 ]
  %471 = load i32, ptr @lflag, align 4
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %470, i1 true, i1 %472
  %474 = load i32, ptr @aflag, align 4
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %473, i1 true, i1 %475
  %477 = load i32, ptr @eflag, align 4
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %476, i1 true, i1 %478
  %480 = load i32, ptr @dumpflag, align 4
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %479, i1 true, i1 %481
  br i1 %482, label %492, label %483

483:                                              ; preds = %469
  %484 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %483
  %487 = load ptr, ptr @stderr, align 8, !tbaa !5
  %488 = icmp eq i32 %435, 1
  %489 = select i1 %488, ptr @.str.130, ptr @.str.131
  %490 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef nonnull %489) #19
  br label %491

491:                                              ; preds = %486, %483
  tail call void @exit(i32 noundef 1) #18
  unreachable

492:                                              ; preds = %469
  %493 = tail call i32 @linit() #16
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %492
  tail call void @exit(i32 noundef 1) #18
  unreachable

496:                                              ; preds = %492
  %497 = icmp eq ptr %433, null
  br i1 %497, label %517, label %498

498:                                              ; preds = %496
  %499 = load i32, ptr @deftflag, align 4, !tbaa !9
  %500 = icmp slt i32 %499, 0
  %501 = select i1 %500, ptr @deftflag, ptr null
  %502 = tail call i32 @findfiletype(ptr noundef nonnull %433, i32 noundef 1, ptr noundef %501) #16
  store i32 %502, ptr @prefstringchar, align 4, !tbaa !9
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %517

504:                                              ; preds = %498
  %505 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %433, ptr noundef nonnull dereferenceable(4) @.str.129) #17
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %517, label %507

507:                                              ; preds = %504
  %508 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %433, ptr noundef nonnull dereferenceable(6) @.str.128) #17
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %517, label %510

510:                                              ; preds = %507
  %511 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr @stderr, align 8, !tbaa !5
  %515 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.132, ptr noundef nonnull %433) #19
  br label %516

516:                                              ; preds = %513, %510
  tail call void @exit(i32 noundef 1) #18
  unreachable

517:                                              ; preds = %498, %504, %507, %496
  %518 = load i32, ptr @prefstringchar, align 4, !tbaa !9
  %519 = tail call i32 @llvm.smax.i32(i32 %518, i32 0)
  store i32 %519, ptr @defdupchar, align 4, !tbaa !9
  %520 = load i32, ptr @compoundflag, align 4, !tbaa !9
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %517
  %523 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 17), align 2, !tbaa !16
  %524 = sext i8 %523 to i32
  store i32 %524, ptr @compoundflag, align 4, !tbaa !9
  br label %525

525:                                              ; preds = %522, %517
  %526 = load i32, ptr @tryhardflag, align 4, !tbaa !9
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 18), align 1, !tbaa !19
  %530 = sext i8 %529 to i32
  store i32 %530, ptr @tryhardflag, align 4, !tbaa !9
  br label %531

531:                                              ; preds = %528, %525
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %532 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !20
  %533 = and i32 %532, 255
  %534 = xor i32 %533, 128
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %562, label %536

536:                                              ; preds = %531
  %537 = load i32, ptr @Trynum, align 4, !tbaa !9
  %538 = zext nneg i32 %534 to i64
  br label %539

539:                                              ; preds = %558, %536
  %540 = phi i64 [ 0, %536 ], [ %560, %558 ]
  %541 = phi i32 [ %537, %536 ], [ %559, %558 ]
  %542 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %540
  %543 = load i8, ptr %542, align 1, !tbaa !11
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %549, label %545

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %540
  %547 = load i8, ptr %546, align 1, !tbaa !11
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %553, label %558

549:                                              ; preds = %539
  %550 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %540
  %551 = load i8, ptr %550, align 1, !tbaa !11
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %558, label %553

553:                                              ; preds = %549, %545
  %554 = sext i32 %541 to i64
  %555 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %554
  %556 = trunc i64 %540 to i8
  store i8 %556, ptr %555, align 1, !tbaa !11
  %557 = add nsw i32 %541, 1
  store i32 %557, ptr @Trynum, align 4, !tbaa !9
  br label %558

558:                                              ; preds = %553, %549, %545
  %559 = phi i32 [ %541, %545 ], [ %541, %549 ], [ %557, %553 ]
  %560 = add nuw nsw i64 %540, 1
  %561 = icmp eq i64 %560, %538
  br i1 %561, label %562, label %539, !llvm.loop !21

562:                                              ; preds = %558, %531
  %563 = icmp ne ptr %432, null
  %564 = load i32, ptr @Trynum, align 4
  %565 = icmp slt i32 %564, 128
  %566 = select i1 %563, i1 %565, i1 false
  br i1 %566, label %567, label %647

567:                                              ; preds = %562
  %568 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %569 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  br label %570

570:                                              ; preds = %644, %567
  %571 = phi ptr [ %628, %644 ], [ %432, %567 ]
  %572 = load i8, ptr %571, align 1, !tbaa !11
  switch i8 %572, label %573 [
    i8 0, label %647
    i8 110, label %575
    i8 92, label %575
  ]

573:                                              ; preds = %570
  %574 = getelementptr inbounds i8, ptr %571, i64 1
  br label %627

575:                                              ; preds = %570, %570
  %576 = getelementptr inbounds i8, ptr %571, i64 1
  %577 = tail call ptr @__ctype_b_loc() #20
  store i32 0, ptr %5, align 4
  %578 = load ptr, ptr %577, align 8, !tbaa !5
  %579 = load i8, ptr %576, align 1, !tbaa !11
  %580 = sext i8 %579 to i64
  %581 = getelementptr inbounds i16, ptr %578, i64 %580
  %582 = load i16, ptr %581, align 2, !tbaa !22
  %583 = and i16 %582, 2048
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %602, label %585

585:                                              ; preds = %575
  store i8 %579, ptr %5, align 4, !tbaa !11
  %586 = getelementptr inbounds i8, ptr %571, i64 2
  %587 = load i8, ptr %586, align 1, !tbaa !11
  %588 = sext i8 %587 to i64
  %589 = getelementptr inbounds i16, ptr %578, i64 %588
  %590 = load i16, ptr %589, align 2, !tbaa !22
  %591 = and i16 %590, 2048
  %592 = icmp eq i16 %591, 0
  br i1 %592, label %602, label %593

593:                                              ; preds = %585
  store i8 %587, ptr %568, align 1, !tbaa !11
  %594 = getelementptr inbounds i8, ptr %571, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !11
  %596 = sext i8 %595 to i64
  %597 = getelementptr inbounds i16, ptr %578, i64 %596
  %598 = load i16, ptr %597, align 2, !tbaa !22
  %599 = and i16 %598, 2048
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %602, label %601

601:                                              ; preds = %593
  store i8 %595, ptr %569, align 2, !tbaa !11
  br label %602

602:                                              ; preds = %601, %593, %585, %575
  %603 = phi i8 [ 0, %585 ], [ %595, %601 ], [ 0, %593 ], [ 0, %575 ]
  %604 = phi i8 [ 0, %585 ], [ %587, %601 ], [ %587, %593 ], [ 0, %575 ]
  %605 = phi i8 [ %579, %585 ], [ %579, %601 ], [ %579, %593 ], [ 0, %575 ]
  %606 = load i8, ptr %571, align 1, !tbaa !11
  %607 = icmp eq i8 %606, 110
  %608 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %609 = getelementptr inbounds i8, ptr %576, i64 %608
  br i1 %607, label %610, label %613

610:                                              ; preds = %602
  %611 = call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #16
  %612 = trunc i64 %611 to i8
  br label %627

613:                                              ; preds = %602
  %614 = icmp eq i8 %605, 0
  %615 = add i8 %605, -48
  %616 = select i1 %614, i8 0, i8 %615
  %617 = icmp eq i8 %604, 0
  %618 = shl i8 %616, 3
  %619 = add i8 %604, -48
  %620 = add i8 %619, %618
  %621 = select i1 %617, i8 %616, i8 %620
  %622 = icmp eq i8 %603, 0
  br i1 %622, label %627, label %623

623:                                              ; preds = %613
  %624 = shl i8 %621, 3
  %625 = add i8 %603, -48
  %626 = add i8 %625, %624
  br label %627

627:                                              ; preds = %623, %613, %610, %573
  %628 = phi ptr [ %574, %573 ], [ %609, %610 ], [ %609, %623 ], [ %609, %613 ]
  %629 = phi i8 [ %572, %573 ], [ %612, %610 ], [ %626, %623 ], [ %621, %613 ]
  %630 = and i8 %629, 127
  %631 = zext nneg i8 %630 to i64
  %632 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !11
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %635, label %644

635:                                              ; preds = %627
  store i8 1, ptr %632, align 1, !tbaa !11
  %636 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !23
  %637 = add nsw i32 %636, 1
  store i32 %637, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !23
  %638 = trunc i32 %636 to i16
  %639 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %631
  store i16 %638, ptr %639, align 2, !tbaa !22
  %640 = load i32, ptr @Trynum, align 4, !tbaa !9
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %641
  store i8 %630, ptr %642, align 1, !tbaa !11
  %643 = add nsw i32 %640, 1
  store i32 %643, ptr @Trynum, align 4, !tbaa !9
  br label %644

644:                                              ; preds = %635, %627
  %645 = load i32, ptr @Trynum, align 4, !tbaa !9
  %646 = icmp slt i32 %645, 128
  br i1 %646, label %570, label %647

647:                                              ; preds = %570, %644, %562
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %648 = load ptr, ptr @LibDict, align 8, !tbaa !5
  %649 = icmp eq ptr %648, null
  br i1 %649, label %650, label %657

650:                                              ; preds = %647
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) @main.libdictname, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #16
  store ptr @main.libdictname, ptr @LibDict, align 8, !tbaa !5
  %651 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #17
  %652 = icmp eq ptr %651, null
  br i1 %652, label %657, label %653

653:                                              ; preds = %650
  %654 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %651, ptr noundef nonnull dereferenceable(6) @.str.3) #17
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %653
  store i8 0, ptr %651, align 1, !tbaa !11
  br label %657

657:                                              ; preds = %650, %653, %656, %647
  %658 = load i32, ptr @nodictflag, align 4, !tbaa !9
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %662

660:                                              ; preds = %657
  %661 = load ptr, ptr @LibDict, align 8, !tbaa !5
  tail call void @treeinit(ptr noundef %431, ptr noundef %661) #16
  br label %662

662:                                              ; preds = %660, %657
  %663 = load i32, ptr @aflag, align 4, !tbaa !9
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %683, label %665

665:                                              ; preds = %662
  store i32 1, ptr @cbench_print, align 4, !tbaa !9
  %666 = load ptr, ptr %434, align 8, !tbaa !5
  %667 = tail call noalias ptr @fopen(ptr noundef %666, ptr noundef nonnull @.str.133)
  store ptr %667, ptr @infile1, align 8, !tbaa !5
  %668 = icmp eq ptr %667, null
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load ptr, ptr @stderr, align 8, !tbaa !5
  %671 = tail call i64 @fwrite(ptr nonnull @.str.134, i64 31, i64 1, ptr %670) #19
  tail call void @exit(i32 noundef 1) #18
  unreachable

672:                                              ; preds = %665
  %673 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136)
  store ptr %673, ptr @outfile1, align 8, !tbaa !5
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = load ptr, ptr @stderr, align 8, !tbaa !5
  %677 = tail call i64 @fwrite(ptr nonnull @.str.134, i64 31, i64 1, ptr %676) #19
  tail call void @exit(i32 noundef 1) #18
  unreachable

678:                                              ; preds = %672
  tail call void @askmode() #16
  tail call void @treeoutput() #16
  %679 = load ptr, ptr @infile1, align 8, !tbaa !5
  %680 = tail call i32 @fclose(ptr noundef %679)
  %681 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %682 = tail call i32 @fclose(ptr noundef %681)
  tail call void @exit(i32 noundef 0) #18
  unreachable

683:                                              ; preds = %662
  %684 = load i32, ptr @eflag, align 4, !tbaa !9
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %683
  tail call fastcc void @expandmode(i32 noundef %684)
  tail call void @exit(i32 noundef 0) #18
  unreachable

687:                                              ; preds = %683
  %688 = load i32, ptr @dumpflag, align 4, !tbaa !9
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %691, label %690

690:                                              ; preds = %687
  tail call void @dumpmode() #16
  tail call void @exit(i32 noundef 0) #18
  unreachable

691:                                              ; preds = %687
  %692 = load ptr, ptr @outfile1, align 8, !tbaa !5
  tail call void @setbuf(ptr noundef %692, ptr noundef nonnull @main.outbuf) #16
  %693 = load i32, ptr @lflag, align 4, !tbaa !9
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %691
  %696 = load ptr, ptr @stdin, align 8, !tbaa !5
  store ptr %696, ptr @infile, align 8, !tbaa !5
  %697 = load ptr, ptr @outfile1, align 8, !tbaa !5
  store ptr %697, ptr @outfile, align 8, !tbaa !5
  tail call void @checkfile() #16
  tail call void @exit(i32 noundef 0) #18
  unreachable

698:                                              ; preds = %691
  tail call void @terminit() #16
  %699 = icmp eq i32 %435, 0
  br i1 %699, label %858, label %700

700:                                              ; preds = %698
  %701 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %702 = ptrtoint ptr %3 to i64
  br label %703

703:                                              ; preds = %700, %856
  %704 = phi i32 [ %435, %700 ], [ %706, %856 ]
  %705 = phi ptr [ %434, %700 ], [ %707, %856 ]
  %706 = add nsw i32 %704, -1
  %707 = getelementptr inbounds ptr, ptr %705, i64 1
  %708 = load ptr, ptr %705, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #16
  store ptr %708, ptr @currentfile, align 8, !tbaa !5
  %709 = load i32, ptr @deftflag, align 4, !tbaa !9
  store i32 %709, ptr @tflag, align 4, !tbaa !9
  %710 = icmp slt i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %703
  %712 = call ptr @rindex(ptr noundef %708, i32 noundef 46) #17
  %713 = icmp eq ptr %712, null
  br i1 %713, label %718, label %714

714:                                              ; preds = %711
  %715 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %712, ptr noundef nonnull dereferenceable(5) @.str.181) #17
  %716 = icmp eq i32 %715, 0
  %717 = zext i1 %716 to i32
  br label %718

718:                                              ; preds = %714, %711
  %719 = phi i32 [ 0, %711 ], [ %717, %714 ]
  store i32 %719, ptr @tflag, align 4, !tbaa !9
  br label %720

720:                                              ; preds = %718, %703
  %721 = load i32, ptr @prefstringchar, align 4, !tbaa !9
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %720
  %724 = select i1 %710, ptr @tflag, ptr null
  %725 = call i32 @findfiletype(ptr noundef %708, i32 noundef 0, ptr noundef %724) #16
  %726 = call i32 @llvm.smax.i32(i32 %725, i32 0)
  store i32 %726, ptr @defdupchar, align 4
  br label %727

727:                                              ; preds = %723, %720
  %728 = call noalias ptr @fopen(ptr noundef %708, ptr noundef nonnull @.str.182)
  store ptr %728, ptr @infile, align 8, !tbaa !5
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %738

730:                                              ; preds = %727
  %731 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %736, label %733

733:                                              ; preds = %730
  %734 = load ptr, ptr @stderr, align 8, !tbaa !5
  %735 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %734, ptr noundef nonnull @.str.183, ptr noundef %708) #19
  br label %736

736:                                              ; preds = %733, %730
  %737 = call i32 (i32, ...) @sleep(i32 noundef 2) #16
  br label %856

738:                                              ; preds = %727
  %739 = call i32 (ptr, i32, ...) @access(ptr noundef %708, i32 noundef 2) #16
  %740 = icmp slt i32 %739, 0
  %741 = lshr i32 %739, 31
  store i32 %741, ptr @readonly, align 4, !tbaa !9
  br i1 %740, label %742, label %750

742:                                              ; preds = %738
  %743 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %748, label %745

745:                                              ; preds = %742
  %746 = load ptr, ptr @stderr, align 8, !tbaa !5
  %747 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %746, ptr noundef nonnull @.str.184, ptr noundef %708) #19
  br label %748

748:                                              ; preds = %745, %742
  %749 = call i32 (i32, ...) @sleep(i32 noundef 2) #16
  br label %750

750:                                              ; preds = %748, %738
  %751 = load ptr, ptr @infile, align 8, !tbaa !5
  %752 = call i32 @fileno(ptr noundef %751) #16
  %753 = call i32 @fstat(i32 noundef %752, ptr noundef nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) @tempfile, ptr noundef nonnull align 1 dereferenceable(18) @.str.116, i64 18, i1 false) #16
  %754 = call ptr @mktemp(ptr noundef nonnull @tempfile) #16
  %755 = icmp eq ptr %754, null
  %756 = load i8, ptr @tempfile, align 16
  %757 = icmp eq i8 %756, 0
  %758 = select i1 %755, i1 true, i1 %757
  br i1 %758, label %762, label %759

759:                                              ; preds = %750
  %760 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.185)
  store ptr %760, ptr @outfile, align 8, !tbaa !5
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %773

762:                                              ; preds = %759, %750
  %763 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %771, label %765

765:                                              ; preds = %762
  %766 = load ptr, ptr @stderr, align 8, !tbaa !5
  %767 = load i8, ptr @tempfile, align 16, !tbaa !11
  %768 = icmp eq i8 %767, 0
  %769 = select i1 %768, ptr @.str.187, ptr @tempfile
  %770 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %766, ptr noundef nonnull @.str.186, ptr noundef nonnull %769) #19
  br label %771

771:                                              ; preds = %765, %762
  %772 = call i32 (i32, ...) @sleep(i32 noundef 2) #16
  br label %856

773:                                              ; preds = %759
  %774 = load i32, ptr %701, align 8, !tbaa !24
  %775 = call i32 @chmod(ptr noundef nonnull @tempfile, i32 noundef %774) #16
  store i32 0, ptr @quit, align 4, !tbaa !9
  store i32 0, ptr @changes, align 4, !tbaa !9
  call void @checkfile() #16
  %776 = load ptr, ptr @infile, align 8, !tbaa !5
  %777 = call i32 @fclose(ptr noundef %776)
  %778 = load ptr, ptr @outfile, align 8, !tbaa !5
  %779 = call i32 @fclose(ptr noundef %778)
  %780 = load i32, ptr @cflag, align 4, !tbaa !9
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %773
  call void @treeoutput() #16
  br label %783

783:                                              ; preds = %782, %773
  %784 = load i32, ptr @changes, align 4, !tbaa !9
  %785 = icmp eq i32 %784, 0
  %786 = load i32, ptr @readonly, align 4
  %787 = icmp ne i32 %786, 0
  %788 = select i1 %785, i1 true, i1 %787
  br i1 %788, label %854, label %789

789:                                              ; preds = %783
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #16
  %790 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.182)
  store ptr %790, ptr @infile, align 8, !tbaa !5
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %800

792:                                              ; preds = %789
  %793 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %798, label %795

795:                                              ; preds = %792
  %796 = load ptr, ptr @stderr, align 8, !tbaa !5
  %797 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %796, ptr noundef nonnull @.str.188, ptr noundef nonnull @tempfile) #19
  br label %798

798:                                              ; preds = %795, %792
  %799 = call i32 (i32, ...) @sleep(i32 noundef 2) #16
  br label %853

800:                                              ; preds = %789
  %801 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef 4091, ptr noundef %708, ptr noundef nonnull @.str.11) #16
  %802 = call ptr @rindex(ptr noundef nonnull %3, i32 noundef 47) #17
  %803 = icmp eq ptr %802, null
  %804 = getelementptr inbounds i8, ptr %802, i64 1
  %805 = select i1 %803, ptr %3, ptr %804
  %806 = ptrtoint ptr %805 to i64
  %807 = sub i64 %806, %702
  %808 = add nsw i64 %807, 255
  %809 = call i32 @strncmp(ptr noundef %708, ptr noundef nonnull %3, i64 noundef %808) #17
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %813, label %811

811:                                              ; preds = %800
  %812 = call i32 (ptr, ...) @unlink(ptr noundef nonnull %3) #16
  br label %813

813:                                              ; preds = %811, %800
  %814 = call i32 (ptr, ptr, ...) @link(ptr noundef %708, ptr noundef nonnull %3) #16
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %818

816:                                              ; preds = %813
  %817 = call i32 (ptr, ...) @unlink(ptr noundef %708) #16
  br label %818

818:                                              ; preds = %816, %813
  %819 = call noalias ptr @fopen(ptr noundef %708, ptr noundef nonnull @.str.185)
  store ptr %819, ptr @outfile, align 8, !tbaa !5
  %820 = icmp eq ptr %819, null
  br i1 %820, label %821, label %829

821:                                              ; preds = %818
  %822 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %827, label %824

824:                                              ; preds = %821
  %825 = load ptr, ptr @stderr, align 8, !tbaa !5
  %826 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef nonnull @.str.186, ptr noundef %708) #19
  br label %827

827:                                              ; preds = %824, %821
  %828 = call i32 (i32, ...) @sleep(i32 noundef 2) #16
  br label %853

829:                                              ; preds = %818
  %830 = call i32 @chmod(ptr noundef %708, i32 noundef %774) #16
  %831 = load ptr, ptr @infile, align 8, !tbaa !5
  %832 = call i32 @getc(ptr noundef %831)
  %833 = icmp eq i32 %832, -1
  br i1 %833, label %841, label %834

834:                                              ; preds = %829, %834
  %835 = phi i32 [ %839, %834 ], [ %832, %829 ]
  %836 = load ptr, ptr @outfile, align 8, !tbaa !5
  %837 = call i32 @putc(i32 noundef %835, ptr noundef %836)
  %838 = load ptr, ptr @infile, align 8, !tbaa !5
  %839 = call i32 @getc(ptr noundef %838)
  %840 = icmp eq i32 %839, -1
  br i1 %840, label %841, label %834, !llvm.loop !28

841:                                              ; preds = %834, %829
  %842 = load ptr, ptr @infile, align 8, !tbaa !5
  %843 = call i32 @fclose(ptr noundef %842)
  %844 = load ptr, ptr @outfile, align 8, !tbaa !5
  %845 = call i32 @fclose(ptr noundef %844)
  %846 = load i32, ptr @xflag, align 4, !tbaa !9
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %853, label %848

848:                                              ; preds = %841
  %849 = call i32 @strncmp(ptr noundef %708, ptr noundef nonnull %3, i64 noundef %808) #17
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %853, label %851

851:                                              ; preds = %848
  %852 = call i32 (ptr, ...) @unlink(ptr noundef nonnull %3) #16
  br label %853

853:                                              ; preds = %851, %848, %841, %827, %798
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #16
  br label %854

854:                                              ; preds = %853, %783
  %855 = call i32 (ptr, ...) @unlink(ptr noundef nonnull @tempfile) #16
  br label %856

856:                                              ; preds = %736, %771, %854
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #16
  %857 = icmp eq i32 %706, 0
  br i1 %857, label %858, label %703, !llvm.loop !29

858:                                              ; preds = %856, %698
  call void @done(i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @rindex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #7 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.137, ptr noundef %2) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.138, ptr noundef %5) #19
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.139, ptr noundef %8) #19
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.140, ptr noundef %11) #19
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.141, ptr noundef %14) #19
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %17 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.142, ptr noundef %17) #19
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = load ptr, ptr @Cmd, align 8, !tbaa !5
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.143, ptr noundef %20) #19
  tail call void @givehelp(i32 noundef 0) #16
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @access(...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i32 @linit() local_unnamed_addr #9

declare i32 @findfiletype(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @treeinit(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare void @askmode() local_unnamed_addr #9

declare void @treeoutput() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @expandmode(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %7 = load ptr, ptr @infile1, align 8, !tbaa !5
  %8 = call ptr @xgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %7) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %119, label %10

10:                                               ; preds = %1
  %11 = ptrtoint ptr %2 to i64
  %12 = icmp eq i32 %0, 4
  %13 = add i32 %0, -2
  %14 = icmp ult i32 %13, 3
  %15 = ptrtoint ptr %2 to i64
  %16 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  %17 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  br label %18

18:                                               ; preds = %10, %113
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %20 = trunc i64 %19 to i32
  %21 = shl i64 %19, 32
  %22 = add i64 %21, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = icmp eq i8 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = add nsw i32 %20, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !11
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i32 [ %28, %27 ], [ %20, %18 ]
  %33 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #16
  %34 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !30
  %35 = sext i8 %34 to i32
  %36 = call ptr @index(ptr noundef nonnull %2, i32 noundef %35) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = ptrtoint ptr %36 to i64
  %40 = sub i64 %39, %11
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 0, ptr %36, align 1, !tbaa !11
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi ptr [ %42, %38 ], [ null, %31 ]
  %45 = phi i32 [ %41, %38 ], [ %32, %31 ]
  br i1 %14, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.190, ptr noundef nonnull %5)
  br label %48

48:                                               ; preds = %43, %46
  %49 = icmp eq ptr %44, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = ptrtoint ptr %44 to i64
  %52 = sub i64 %51, %15
  %53 = icmp sgt i64 %52, 100
  br i1 %53, label %58, label %60

54:                                               ; preds = %48
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %56 = trunc i64 %55 to i32
  %57 = icmp sgt i32 %56, 99
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = phi ptr [ %16, %50 ], [ %17, %54 ]
  store i8 0, ptr %59, align 4, !tbaa !11
  br label %60

60:                                               ; preds = %58, %54, %50
  %61 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %62 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %61)
  br i1 %49, label %113, label %63

63:                                               ; preds = %60
  store i64 0, ptr %4, align 8
  br label %64

64:                                               ; preds = %83, %63
  %65 = phi ptr [ %44, %63 ], [ %89, %83 ]
  %66 = load i8, ptr %65, align 1, !tbaa !11
  switch i8 %66, label %67 [
    i8 0, label %90
    i8 10, label %90
  ]

67:                                               ; preds = %64
  %68 = zext i8 %66 to i32
  %69 = add i8 %66, -65
  %70 = icmp ult i8 %69, 27
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = add nsw i32 %68, -65
  %73 = zext nneg i32 %72 to i64
  %74 = shl nuw nsw i64 1, %73
  %75 = load i64, ptr %4, align 8, !tbaa !31
  %76 = or i64 %75, %74
  store i64 %76, ptr %4, align 8, !tbaa !31
  br label %83

77:                                               ; preds = %67
  %78 = load i32, ptr @cbench_print, align 4, !tbaa !9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @stderr, align 8, !tbaa !5
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.191, i32 noundef %68) #19
  br label %83

83:                                               ; preds = %77, %80, %71
  %84 = getelementptr inbounds i8, ptr %65, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !30
  %87 = icmp eq i8 %85, %86
  %88 = getelementptr inbounds i8, ptr %65, i64 2
  %89 = select i1 %87, ptr %88, ptr %84
  br label %64, !llvm.loop !32

90:                                               ; preds = %64, %64
  %91 = call i32 @strtoichar(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #16
  %92 = icmp ne i32 %91, 0
  %93 = load i32, ptr @cbench_print, align 4
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load ptr, ptr @stderr, align 8, !tbaa !5
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.192, ptr noundef nonnull %2, i32 noundef 1042, ptr noundef nonnull @.str.193) #19
  br label %99

99:                                               ; preds = %96, %90
  %100 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %0, ptr noundef nonnull @.str.56) #16
  %101 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.56) #16
  br i1 %12, label %102, label %113

102:                                              ; preds = %99
  %103 = add i32 %100, %45
  %104 = add i32 %103, %101
  %105 = sitofp i32 %104 to double
  %106 = sitofp i32 %45 to double
  %107 = fdiv double %105, %106
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.194, double noundef %107) #16
  %109 = load ptr, ptr @outfile1, align 8, !tbaa !5
  %110 = call i32 @fputs(ptr noundef nonnull %6, ptr noundef %109)
  %111 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %6) #16
  %112 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %6) #16
  br label %113

113:                                              ; preds = %99, %102, %60
  %114 = load ptr, ptr @stdout, align 8, !tbaa !5
  %115 = call i32 @putc(i32 noundef 10, ptr noundef %114)
  %116 = load ptr, ptr @infile1, align 8, !tbaa !5
  %117 = call ptr @xgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %116) #16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %18, !llvm.loop !33

119:                                              ; preds = %113, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #16
  ret void
}

declare void @dumpmode() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #5

declare void @checkfile() local_unnamed_addr #9

declare void @terminit() local_unnamed_addr #9

declare void @done(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @givehelp(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

declare i32 @sleep(...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mktemp(ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

declare i32 @unlink(...) local_unnamed_addr #9

declare i32 @link(...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @xgets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @strtoichar(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @expand_pre(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @expand_suf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !7, i64 66}
!17 = !{!"hashheader", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48, !7, i64 53, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 70, !7, i64 526, !7, i64 754, !7, i64 982, !7, i64 1210, !7, i64 1438, !7, i64 1666, !7, i64 1894, !7, i64 2022, !7, i64 3124, !7, i64 3524, !18, i64 3924}
!18 = !{!"short", !7, i64 0}
!19 = !{!17, !7, i64 67}
!20 = !{!17, !10, i64 36}
!21 = distinct !{!21, !13}
!22 = !{!18, !18, i64 0}
!23 = !{!17, !10, i64 32}
!24 = !{!25, !10, i64 24}
!25 = !{!"stat", !26, i64 0, !26, i64 8, !26, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !27, i64 72, !27, i64 88, !27, i64 104, !7, i64 120}
!26 = !{!"long", !7, i64 0}
!27 = !{!"timespec", !26, i64 0, !26, i64 8}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!17, !7, i64 68}
!31 = !{!26, !26, i64 0}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
