; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.success = type { ptr, ptr, ptr }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"Whenever a word is found that is not in the dictionary,\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"it is printed on the first line of the screen.  If the dictionary\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"contains any similar words, they are listed with a number\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"next to each one.  You have the option of replacing the word\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"completely, or choosing one of the suggested words.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0D\0ACommands are:\0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"R       Replace the misspelled word completely.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Space   Accept the word this time only.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"A       Accept the word for the rest of this session.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"I       Accept the word, and put it in your private dictionary.\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"U       Accept and add lowercase version to private dictionary.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"0-n     Replace with one of the suggested words.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"L       Look up words in system dictionary.\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"X       Write the rest of this file, ignoring misspellings,\0D\0A        and start next file.\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Q       Quit immediately.  Asks for confirmation.\0D\0A        Leaves file unchanged.\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"!       Shell escape.\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"^L      Redraw screen.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"^Z      Suspend program.\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"?       Show this help screen.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"-- Type space to continue --\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"              File: %s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"[READONLY]\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"??: %s\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"0%d: %s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%2d: %s\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Are you sure you want to throw away your changes? \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"src/correct.c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@lookharder.look = internal unnamed_addr global i1 false, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@str = private unnamed_addr constant [4 x i8] c"\0D\0A\0D\00", align 1
@str.86 = private unnamed_addr constant [79 x i8] c"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\0D\00", align 1
@str.89 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@TeX_comment = internal unnamed_addr global i1 false, align 4
@save_math_mode = internal unnamed_addr global i32 0, align 4
@save_LaTeX_Mode = internal unnamed_addr global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"if t\00", align 1
@.str.1.6 = private unnamed_addr constant [5 x i8] c"if n\00", align 1
@.str.2.7 = private unnamed_addr constant [4 x i8] c"ds \00", align 1
@.str.3.8 = private unnamed_addr constant [4 x i8] c"de \00", align 1
@.str.4.9 = private unnamed_addr constant [4 x i8] c"nr \00", align 1
@.str.5.18 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.6.19 = private unnamed_addr constant [12 x i8] c"src/defmt.c\00", align 1
@.str.7.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8.21 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.9.22 = private unnamed_addr constant [6 x i8] c"+ %s\0A\00", align 1
@.str.10.23 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.11.24 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@.str.12.25 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.14.26 = private unnamed_addr constant [9 x i8] c"# %s %d\0A\00", align 1
@.str.16.16 = private unnamed_addr constant [38 x i8] c"****ERROR in parsing TeX math mode!\0D\0A\00", align 1
@.str.17.17 = private unnamed_addr constant [5 x i8] c"\\end\00", align 1
@.str.18.37 = private unnamed_addr constant [9 x i8] c"equation\00", align 1
@.str.19.38 = private unnamed_addr constant [9 x i8] c"eqnarray\00", align 1
@.str.20.39 = private unnamed_addr constant [12 x i8] c"displaymath\00", align 1
@.str.21.40 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.22.41 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.23.42 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@.str.24.35 = private unnamed_addr constant [9 x i8] c"minipage\00", align 1
@.str.25.43 = private unnamed_addr constant [9 x i8] c"tabular*\00", align 1
@.str.26.36 = private unnamed_addr constant [37 x i8] c"***ERROR in LR to math-mode switch.\0A\00", align 1
@.str.27.15 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.28.10 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"makebox\00", align 1
@.str.30.11 = private unnamed_addr constant [5 x i8] c"fbox\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"framebox\00", align 1
@.str.32.12 = private unnamed_addr constant [7 x i8] c"parbox\00", align 1
@.str.33.13 = private unnamed_addr constant [9 x i8] c"raisebox\00", align 1
@.str.34.14 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.35.27 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str.36.28 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str.37.29 = private unnamed_addr constant [5 x i8] c"cite\00", align 1
@.str.38.30 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.39.31 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.41.32 = private unnamed_addr constant [7 x i8] c"nocite\00", align 1
@.str.42.33 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.43.34 = private unnamed_addr constant [12 x i8] c"includeonly\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"documentstyle\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"documentclass\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"usepackage\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pagestyle\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"pagenumbering\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"bibliography\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"bibitem\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"hyphenation\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"pageref\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"setcounter\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"addtocounter\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"setlength\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"addtolength\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"settowidth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"flagmarker \\%c\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [19 x i8] c"flagmarker \\%3.3o\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@.str.5.66 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6.65 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7.64 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8.68 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9.69 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.11.70 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12.67 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13.71 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1
@str.63 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@str.14 = private unnamed_addr constant [9 x i8] c"suffixes\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal unnamed_addr global ptr null, align 8
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
@minword = dso_local local_unnamed_addr global i32 1, align 4
@sortit = dso_local local_unnamed_addr global i32 1, align 4
@tryhardflag = dso_local local_unnamed_addr global i32 -1, align 4
@currentfile = dso_local local_unnamed_addr global ptr null, align 8
@math_mode = dso_local local_unnamed_addr global i32 0, align 4
@LaTeX_Mode = dso_local local_unnamed_addr global i8 80, align 1
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal unnamed_addr global ptr null, align 8
@Trynum = dso_local local_unnamed_addr global i32 0, align 4
@.str.177 = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2.179 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3.180 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@LibDict = internal unnamed_addr global ptr null, align 8
@.str.4.181 = private unnamed_addr constant [13 x i8] c"english.hash\00", align 1
@Version_ID = internal unnamed_addr constant [40 x ptr] [ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.148, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.148, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177.234, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr null], align 16
@.str.6.183 = private unnamed_addr constant [5 x i8] c"(#) \00", align 1
@.str.10.184 = private unnamed_addr constant [16 x i8] c"\09BAKEXT = \22%s\22\0A\00", align 1
@.str.11.185 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.12.186 = private unnamed_addr constant [16 x i8] c"\09BINDIR = \22%s\22\0A\00", align 1
@.str.13.187 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str.16.188 = private unnamed_addr constant [12 x i8] c"\09CC = \22%s\22\0A\00", align 1
@.str.17.189 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.18.190 = private unnamed_addr constant [16 x i8] c"\09CFLAGS = \22%s\22\0A\00", align 1
@.str.19.191 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.22.192 = private unnamed_addr constant [18 x i8] c"\09CONTEXTPCT = %d\0A\00", align 1
@.str.23.193 = private unnamed_addr constant [21 x i8] c"\09COUNTSUFFIX = \22%s\22\0A\00", align 1
@.str.24.194 = private unnamed_addr constant [5 x i8] c".cnt\00", align 1
@.str.25.195 = private unnamed_addr constant [17 x i8] c"\09DEFHASH = \22%s\22\0A\00", align 1
@.str.26.196 = private unnamed_addr constant [19 x i8] c"\09DEFINCSTR = \22%s\22\0A\00", align 1
@.str.27.197 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@.str.28.198 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str.29.199 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str.30.200 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str.31.201 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str.32.202 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.33.203 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str.34.204 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@.str.35.205 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str.36.206 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str.37.207 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str.38.208 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str.39.209 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str.40.210 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str.41.211 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.45.212 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str.46.213 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str.47.214 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.49.215 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str.50.216 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@.str.51.217 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str.52.218 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str.53.219 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str.54.220 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str.55.221 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str.56.222 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.57.223 = private unnamed_addr constant [14 x i8] c"\09LINT = \22%s\22\0A\00", align 1
@.str.58.224 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str.59.225 = private unnamed_addr constant [19 x i8] c"\09LINTFLAGS = \22%s\22\0A\00", align 1
@.str.60.226 = private unnamed_addr constant [14 x i8] c"\09LOOK = \22%s\22\0A\00", align 1
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
@.str.74.227 = private unnamed_addr constant [16 x i8] c"\09MASKTYPE = %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"\09MASKTYPE_WIDTH = %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\09MASTERHASH = \22%s\22\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"americanmed+.hash\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"\09MAXAFFIXLEN = %d\0A\00", align 1
@.str.80.228 = private unnamed_addr constant [18 x i8] c"\09MAXCONTEXT = %d\0A\00", align 1
@.str.81.229 = private unnamed_addr constant [23 x i8] c"\09MAXINCLUDEFILES = %d\0A\00", align 1
@.str.82.230 = private unnamed_addr constant [17 x i8] c"\09MAXNAMLEN = %d\0A\00", align 1
@.str.83.231 = private unnamed_addr constant [18 x i8] c"\09MAXPATHLEN = %d\0A\00", align 1
@.str.84.232 = private unnamed_addr constant [14 x i8] c"\09MAXPCT = %d\0A\00", align 1
@.str.85.233 = private unnamed_addr constant [17 x i8] c"\09MAXSEARCH = %d\0A\00", align 1
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
@askfilename = dso_local local_unnamed_addr global ptr null, align 8
@.str.130 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@infile1 = dso_local local_unnamed_addr global ptr null, align 8
@.str.134 = private unnamed_addr constant [32 x i8] c"\0AError: Can't open input file!\0A\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
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
@contextbufs = dso_local global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = dso_local local_unnamed_addr global i32 0, align 4
@currentchar = dso_local global ptr null, align 8
@ctoken = dso_local global [120 x i8] zeroinitializer, align 16
@itoken = dso_local global [120 x i8] zeroinitializer, align 16
@termcap = dso_local local_unnamed_addr global [2048 x i8] zeroinitializer, align 16
@termstr = dso_local local_unnamed_addr global [2048 x i8] zeroinitializer, align 16
@termptr = dso_local local_unnamed_addr global ptr null, align 8
@changes = dso_local local_unnamed_addr global i32 0, align 4
@readonly = dso_local local_unnamed_addr global i32 0, align 4
@quit = dso_local local_unnamed_addr global i32 0, align 4
@possibilities = dso_local global [100 x [120 x i8]] zeroinitializer, align 16
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
@.str.177.234 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
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
@str.182 = private unnamed_addr constant [18 x i8] c"Dictionary loaded\00", align 1
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
@inited = internal unnamed_addr global i1 false, align 4
@hashname = dso_local global [4096 x i8] zeroinitializer, align 16
@.str.237 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.4.238 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5.239 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6.240 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = dso_local local_unnamed_addr global i32 0, align 4
@.str.7.241 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@.str.8.242 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@.str.9.243 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@.str.10.246 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.11.247 = private unnamed_addr constant [13 x i8] c"src/lookup.c\00", align 1
@.str.250 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1.251 = private unnamed_addr constant [15 x i8] c"src/makedent.c\00", align 1
@.str.2.252 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3.253 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4.254 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = dso_local local_unnamed_addr global i32 0, align 4
@laststringch = dso_local local_unnamed_addr global i32 0, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = dso_local local_unnamed_addr global ptr null, align 8
@.str.5.273 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal unnamed_addr global i1 false, align 4
@.str.286 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@co = dso_local local_unnamed_addr global i32 0, align 4
@.str.1.287 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@li = dso_local local_unnamed_addr global i32 0, align 4
@contextsize = dso_local local_unnamed_addr global i32 0, align 4
@.str.2.288 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3.289 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 4
@uerasechar = dso_local local_unnamed_addr global i32 0, align 4
@ukillchar = dso_local local_unnamed_addr global i32 0, align 4
@oldint = internal unnamed_addr global ptr null, align 8
@oldterm = internal unnamed_addr global ptr null, align 8
@oldttin = internal unnamed_addr global ptr null, align 8
@oldttou = internal unnamed_addr global ptr null, align 8
@oldtstp = internal unnamed_addr global ptr null, align 8
@tempfile = dso_local global [4096 x i8] zeroinitializer, align 16
@.str.5.297 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@outfile1 = dso_local local_unnamed_addr global ptr null, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@str.296 = private unnamed_addr constant [27 x i8] c"Couldn't fork, try later.\0D\00", align 1
@pflagindex = dso_local global [228 x %struct.flagptr] zeroinitializer, align 16
@numhits = dso_local local_unnamed_addr global i32 0, align 4
@cflag = dso_local local_unnamed_addr global i32 0, align 4
@pflaglist = dso_local local_unnamed_addr global ptr null, align 8
@numpflags = dso_local local_unnamed_addr global i32 0, align 4
@sflaglist = dso_local local_unnamed_addr global ptr null, align 8
@numsflags = dso_local local_unnamed_addr global i32 0, align 4
@compoundflag = dso_local local_unnamed_addr global i32 -1, align 4
@hits = dso_local global [10 x %struct.success] zeroinitializer, align 16
@sflagindex = dso_local global [228 x %struct.flagptr] zeroinitializer, align 16
@.str.302 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1.303 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.1.309 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str.2.311 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal unnamed_addr global ptr null, align 8
@.str.3.314 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.4.313 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5.317 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.6.318 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.7.312 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8.319 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@cbench_print = dso_local local_unnamed_addr global i32 1, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9.320 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10.321 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = dso_local local_unnamed_addr global i32 0, align 4
@aflag = dso_local local_unnamed_addr global i32 0, align 4
@.str.11.322 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal unnamed_addr global i1 false, align 4
@pershsize = internal unnamed_addr global i32 0, align 4
@pershtab = internal unnamed_addr global ptr null, align 8
@goodsizes = internal unnamed_addr constant [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str.12.323 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13.324 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal unnamed_addr global i32 0, align 4
@.str.14.331 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15.332 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = dso_local local_unnamed_addr global ptr null, align 8
@hashsize = dso_local local_unnamed_addr global i32 0, align 4
@hashstrings = dso_local local_unnamed_addr global ptr null, align 8
@hashheader = dso_local global %struct.hashheader zeroinitializer, align 4
@.str.16.310 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17.325 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.18.326 = private unnamed_addr constant [11 x i8] c"src/tree.c\00", align 1
@xgets.Include_File = internal unnamed_addr global ptr @.str.341, align 8
@.str.341 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal unnamed_addr global i32 0, align 4
@xgets.F = internal global [6 x ptr] zeroinitializer, align 16
@xgets.current_F = internal unnamed_addr global ptr @xgets.F, align 8
@.str.1.339 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = dso_local local_unnamed_addr global i32 0, align 4
@.str.2.340 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @givehelp(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @erase() #35
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi ptr [ @outfile1, %3 ], [ @stderr, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 57, i64 1, ptr %6)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %6)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 59, i64 1, ptr %6)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 62, i64 1, ptr %6)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 19, i64 1, ptr %6)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %6)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 41, i64 1, ptr %6)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 55, i64 1, ptr %6)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 65, i64 1, ptr %6)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 65, i64 1, ptr %6)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %6)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr %6)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 91, i64 1, ptr %6)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 83, i64 1, ptr %6)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %6)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %6)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr %6)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 32, i64 1, ptr %6)
  br i1 %2, label %34, label %26

26:                                               ; preds = %4
  %27 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %6)
  %28 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 28, i64 1, ptr %6)
  %29 = tail call i32 @fflush(ptr noundef %6)
  br label %30

30:                                               ; preds = %30, %26
  %31 = load ptr, ptr @stdin, align 8, !tbaa !7
  %32 = tail call i32 @getc(ptr noundef %31)
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %30, !llvm.loop !11

34:                                               ; preds = %30, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @checkfile() local_unnamed_addr #0 {
  %1 = load i32, ptr @contextsize, align 4, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %6
  store i8 0, ptr %7, align 16, !tbaa !15
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, %4
  br i1 %9, label %10, label %5, !llvm.loop !16

10:                                               ; preds = %5, %0
  br label %11

11:                                               ; preds = %71, %10
  %12 = load i32, ptr @contextsize, align 4, !tbaa !13
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ %15, %14 ], [ %18, %16 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %18
  %20 = add nsw i64 %17, -2
  %21 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %20
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %21) #35
  %23 = icmp sgt i64 %17, 2
  br i1 %23, label %16, label %24, !llvm.loop !17

24:                                               ; preds = %16, %11
  %25 = load i32, ptr @quit, align 4, !tbaa !13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %31, %24
  %28 = load ptr, ptr @infile, align 8, !tbaa !7
  %29 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 8192, ptr noundef %28)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @outfile, align 8, !tbaa !7
  %33 = tail call i32 @fputs(ptr noundef nonnull @contextbufs, ptr noundef %32)
  br label %27, !llvm.loop !18

34:                                               ; preds = %24
  %35 = load ptr, ptr @infile, align 8, !tbaa !7
  %36 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %35)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %73, label %38

38:                                               ; preds = %34
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #36
  %40 = and i64 %39, 4294967295
  %41 = icmp eq i64 %40, 4095
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i8, ptr getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 4094), align 2, !tbaa !15
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %65, %42
  %46 = phi i64 [ 4095, %42 ], [ %67, %65 ]
  %47 = phi i32 [ %44, %42 ], [ %63, %65 ]
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %49
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %49
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57, %53, %45
  %62 = load ptr, ptr @infile, align 8, !tbaa !7
  %63 = tail call i32 @getc(ptr noundef %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = trunc i32 %63 to i8
  %67 = add nuw nsw i64 %46, 1
  %68 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %46
  store i8 %66, ptr %68, align 1, !tbaa !15
  %69 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %67
  store i8 0, ptr %69, align 1, !tbaa !15
  %70 = icmp eq i64 %67, 8191
  br i1 %70, label %71, label %45, !llvm.loop !19

71:                                               ; preds = %65, %61, %57, %38
  %72 = load ptr, ptr @outfile, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %72) #35
  br label %11, !llvm.loop !20

73:                                               ; preds = %34, %27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @correct(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca [150 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [8192 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  %10 = alloca [200 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = load ptr, ptr %4, align 8, !tbaa !7
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36
  %17 = load i32, ptr @minword, align 4, !tbaa !13
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %433

20:                                               ; preds = %5
  %21 = icmp eq ptr %15, @contextbufs
  %22 = ptrtoint ptr %15 to i64
  %23 = sub i64 %22, ptrtoint (ptr @contextbufs to i64)
  %24 = getelementptr i8, ptr @contextbufs, i64 %23
  %25 = getelementptr i8, ptr %9, i64 %23
  %26 = ptrtoint ptr %15 to i64
  br label %27

27:                                               ; preds = %179, %20
  %28 = call i32 @good(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %433

30:                                               ; preds = %27
  %31 = call i32 @compoundgood(ptr noundef %2, i32 noundef 0), !range !21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %433

33:                                               ; preds = %30
  call void @erase() #35
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0)
  %35 = load ptr, ptr @currentfile, align 8, !tbaa !7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %35)
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, ptr @readonly, align 4, !tbaa !13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @.str.25)
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @makepossibilities(ptr noundef %2)
  %46 = load i32, ptr @li, align 4, !tbaa !13
  %47 = load i32, ptr @contextsize, align 4, !tbaa !13
  %48 = load i32, ptr @minimenusize, align 4, !tbaa !13
  %49 = add i32 %46, -4
  %50 = add i32 %47, %48
  %51 = sub i32 %49, %50
  %52 = load i32, ptr @co, align 4, !tbaa !13
  %53 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %54 = add nsw i32 %53, 8
  %55 = sdiv i32 %52, %54
  %56 = load i32, ptr @pcount, align 4, !tbaa !13
  %57 = mul nsw i32 %55, %51
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 %57, ptr @pcount, align 4, !tbaa !13
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, ptr @pcount, align 4, !tbaa !13
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %91, %60
  %64 = phi i64 [ %92, %91 ], [ 0, %60 ]
  %65 = load i32, ptr @contextsize, align 4, !tbaa !13
  %66 = add nsw i32 %65, 3
  %67 = trunc i64 %64 to i32
  %68 = srem i32 %67, %51
  %69 = add nsw i32 %66, %68
  %70 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %71 = add nsw i32 %70, 8
  %72 = trunc i64 %64 to i32
  %73 = sdiv i32 %72, %51
  %74 = mul nsw i32 %71, %73
  call void @move(i32 noundef %69, i32 noundef %74) #35
  %75 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %64, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %79)
  br label %91

81:                                               ; preds = %63
  %82 = icmp sgt i32 %75, 9
  %83 = icmp ult i64 %64, 10
  %84 = and i1 %83, %82
  %85 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %86 = trunc i64 %64 to i32
  br i1 %84, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %86, ptr noundef nonnull %85)
  br label %91

89:                                               ; preds = %81
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %86, ptr noundef nonnull %85)
  br label %91

91:                                               ; preds = %89, %87, %78
  %92 = add nuw nsw i64 %64, 1
  %93 = load i32, ptr @pcount, align 4, !tbaa !13
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %63, label %96, !llvm.loop !22

96:                                               ; preds = %91, %60
  call void @move(i32 noundef 2, i32 noundef 0) #35
  %97 = load i32, ptr @contextsize, align 4, !tbaa !13
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = zext nneg i32 %97 to i64
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i64 [ %100, %99 ], [ %103, %101 ]
  %103 = add nsw i64 %102, -1
  %104 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %103
  call fastcc void @show_line(ptr noundef nonnull %104, ptr noundef nonnull %104, i32 noundef 0)
  %105 = icmp sgt i64 %102, 2
  br i1 %105, label %101, label %106, !llvm.loop !23

106:                                              ; preds = %101, %96
  %107 = load ptr, ptr %4, align 8, !tbaa !7
  %108 = call fastcc i32 @line_size(ptr noundef nonnull @contextbufs, ptr noundef %107)
  %109 = load i32, ptr @co, align 4, !tbaa !13
  %110 = load i32, ptr @sg, align 4, !tbaa !13
  %111 = shl i32 %110, 1
  %112 = xor i32 %111, -1
  %113 = add i32 %109, %112
  %114 = icmp sgt i32 %108, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %106
  %116 = sdiv i32 %109, -2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %15, i64 %117
  %119 = icmp sgt i32 %109, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %130, %115
  %121 = phi ptr [ %133, %130 ], [ %118, %115 ]
  %122 = load ptr, ptr %4, align 8, !tbaa !7
  %123 = call fastcc i32 @line_size(ptr noundef %121, ptr noundef %122)
  %124 = add nsw i32 %123, 1
  %125 = load i32, ptr @sg, align 4, !tbaa !13
  %126 = shl i32 %125, 1
  %127 = add nsw i32 %126, %124
  %128 = load i32, ptr @co, align 4, !tbaa !13
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = sub nsw i32 %124, %128
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %121, i64 %132
  %134 = icmp ult ptr %133, %15
  br i1 %134, label %120, label %135, !llvm.loop !24

135:                                              ; preds = %130, %120, %115
  %136 = phi ptr [ %118, %115 ], [ %133, %130 ], [ %121, %120 ]
  %137 = icmp ugt ptr %136, %15
  %138 = select i1 %137, ptr %15, ptr %136
  %139 = icmp ult ptr %138, @contextbufs
  %140 = select i1 %139, ptr @contextbufs, ptr %138
  br label %141

141:                                              ; preds = %135, %106
  %142 = phi ptr [ %140, %135 ], [ @contextbufs, %106 ]
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %144 = trunc i64 %143 to i32
  call fastcc void @show_line(ptr noundef %142, ptr noundef %15, i32 noundef %144)
  %145 = load i32, ptr @minimenusize, align 4, !tbaa !13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr @li, align 4, !tbaa !13
  %149 = add nsw i32 %148, -2
  call void @move(i32 noundef %149, i32 noundef 0) #35
  %150 = call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  br label %151

151:                                              ; preds = %147, %141
  br label %152

152:                                              ; preds = %432, %151
  %153 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %154 = call i32 @fflush(ptr noundef %153)
  %155 = load ptr, ptr @stdin, align 8, !tbaa !7
  %156 = call i32 @getc(ptr noundef %155)
  %157 = and i32 %156, 127
  switch i32 %157, label %429 [
    i32 26, label %158
    i32 32, label %159
    i32 113, label %162
    i32 81, label %162
    i32 105, label %180
    i32 73, label %180
    i32 117, label %185
    i32 85, label %185
    i32 97, label %190
    i32 65, label %190
    i32 12, label %179
    i32 63, label %195
    i32 33, label %196
    i32 114, label %214
    i32 82, label %214
    i32 48, label %290
    i32 49, label %290
    i32 50, label %290
    i32 51, label %290
    i32 52, label %290
    i32 53, label %290
    i32 54, label %290
    i32 55, label %290
    i32 56, label %290
    i32 57, label %290
    i32 13, label %432
    i32 10, label %432
    i32 108, label %376
    i32 76, label %376
    i32 120, label %426
    i32 88, label %426
  ]

158:                                              ; preds = %152
  call void @stop() #35
  call void @erase() #35
  br label %179

159:                                              ; preds = %152
  call void @erase() #35
  %160 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %161 = call i32 @fflush(ptr noundef %160)
  br label %433

162:                                              ; preds = %152, %152
  %163 = load i32, ptr @changes, align 4, !tbaa !13
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30)
  %167 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %168 = call i32 @fflush(ptr noundef %167)
  %169 = load ptr, ptr @stdin, align 8, !tbaa !7
  %170 = call i32 @getc(ptr noundef %169)
  %171 = and i32 %170, 127
  br label %172

172:                                              ; preds = %165, %162
  %173 = phi i32 [ %171, %165 ], [ 121, %162 ]
  %174 = and i32 %173, 95
  %175 = icmp eq i32 %174, 89
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  call void @erase() #35
  %177 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %178 = call i32 @fflush(ptr noundef %177)
  call void @done(i32 noundef 0) #35
  br label %179

179:                                              ; preds = %425, %285, %213, %195, %176, %172, %158, %152
  br label %27

180:                                              ; preds = %152, %152
  %181 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  %182 = call ptr @ichartosstr(ptr noundef %181, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %182, i32 noundef 184, i32 noundef 1) #35
  call void @erase() #35
  %183 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %184 = call i32 @fflush(ptr noundef %183)
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %433

185:                                              ; preds = %152, %152
  %186 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  call void @lowcase(ptr noundef %186) #35
  %187 = call ptr @ichartosstr(ptr noundef %186, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %187, i32 noundef 184, i32 noundef 1) #35
  call void @erase() #35
  %188 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %189 = call i32 @fflush(ptr noundef %188)
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %433

190:                                              ; preds = %152, %152
  %191 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  %192 = call ptr @ichartosstr(ptr noundef %191, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %192, i32 noundef 184, i32 noundef 0) #35
  call void @erase() #35
  %193 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %194 = call i32 @fflush(ptr noundef %193)
  br label %433

195:                                              ; preds = %152
  call void @givehelp(i32 noundef 1)
  br label %179

196:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #35
  %197 = load i32, ptr @li, align 4, !tbaa !13
  %198 = add nsw i32 %197, -1
  call void @move(i32 noundef %198, i32 noundef 0) #35
  %199 = load ptr, ptr @stdout, align 8, !tbaa !7
  %200 = call i32 @putc(i32 noundef 33, ptr noundef %199)
  %201 = call fastcc ptr @getLine(ptr noundef nonnull %10)
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load ptr, ptr @stdout, align 8, !tbaa !7
  %205 = call i32 @putc(i32 noundef 7, ptr noundef %204)
  call void @erase() #35
  %206 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %207 = call i32 @fflush(ptr noundef %206)
  br label %213

208:                                              ; preds = %196
  %209 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %210 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %211 = call i32 @fflush(ptr noundef %210)
  %212 = call i32 @shellescape(ptr noundef nonnull %10) #35
  call void @erase() #35
  br label %213

213:                                              ; preds = %208, %203
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #35
  br label %179

214:                                              ; preds = %152, %152
  %215 = load i32, ptr @li, align 4, !tbaa !13
  %216 = add nsw i32 %215, -1
  call void @move(i32 noundef %216, i32 noundef 0) #35
  %217 = load i32, ptr @readonly, align 4, !tbaa !13
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %214
  %220 = load ptr, ptr @stdout, align 8, !tbaa !7
  %221 = call i32 @putc(i32 noundef 7, ptr noundef %220)
  %222 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.25)
  br label %223

223:                                              ; preds = %219, %214
  %224 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33)
  %225 = call fastcc ptr @getLine(ptr noundef %0)
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load ptr, ptr @stdout, align 8, !tbaa !7
  %229 = call i32 @putc(i32 noundef 7, ptr noundef %228)
  %230 = call i32 @ichartostr(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef 0) #35
  br label %285

231:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #35
  %232 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @contextbufs) #35
  br i1 %21, label %234, label %233

233:                                              ; preds = %231
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %9, i64 %23, i1 false), !tbaa !15
  br label %234

234:                                              ; preds = %233, %231
  %235 = phi ptr [ @contextbufs, %231 ], [ %24, %233 ]
  %236 = phi ptr [ %9, %231 ], [ %25, %233 ]
  %237 = load ptr, ptr %4, align 8, !tbaa !7
  %238 = ptrtoint ptr %237 to i64
  %239 = sub i64 %238, %26
  %240 = getelementptr inbounds i8, ptr %236, i64 %239
  %241 = call ptr @skipoverword(ptr noundef %0) #35
  %242 = icmp ugt ptr %241, %0
  br i1 %242, label %243, label %250

243:                                              ; preds = %243, %234
  %244 = phi ptr [ %246, %243 ], [ %0, %234 ]
  %245 = phi ptr [ %248, %243 ], [ %235, %234 ]
  %246 = getelementptr inbounds i8, ptr %244, i64 1
  %247 = load i8, ptr %244, align 1, !tbaa !15
  %248 = getelementptr inbounds i8, ptr %245, i64 1
  store i8 %247, ptr %245, align 1, !tbaa !15
  %249 = icmp eq ptr %246, %241
  br i1 %249, label %250, label %243, !llvm.loop !25

250:                                              ; preds = %243, %234
  %251 = phi ptr [ %235, %234 ], [ %248, %243 ]
  %252 = phi ptr [ %0, %234 ], [ %246, %243 ]
  store ptr %251, ptr %4, align 8, !tbaa !7
  %253 = load i8, ptr %252, align 1, !tbaa !15
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %250
  store i8 %253, ptr %251, align 1, !tbaa !15
  store i8 0, ptr %252, align 1, !tbaa !15
  %256 = getelementptr inbounds i8, ptr %251, i64 1
  %257 = getelementptr inbounds i8, ptr %252, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !15
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %260, %255
  %261 = phi i8 [ %266, %260 ], [ %258, %255 ]
  %262 = phi ptr [ %265, %260 ], [ %257, %255 ]
  %263 = phi ptr [ %264, %260 ], [ %256, %255 ]
  store i8 %261, ptr %263, align 1, !tbaa !15
  %264 = getelementptr inbounds i8, ptr %263, i64 1
  %265 = getelementptr inbounds i8, ptr %262, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !15
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %260, !llvm.loop !26

268:                                              ; preds = %260, %255, %250
  %269 = phi ptr [ %256, %255 ], [ %251, %250 ], [ %264, %260 ]
  br label %270

270:                                              ; preds = %270, %268
  %271 = phi ptr [ %275, %270 ], [ %269, %268 ]
  %272 = phi ptr [ %273, %270 ], [ %240, %268 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 1
  %274 = load i8, ptr %272, align 1, !tbaa !15
  %275 = getelementptr inbounds i8, ptr %271, i64 1
  store i8 %274, ptr %271, align 1, !tbaa !15
  %276 = icmp eq i8 %274, 0
  br i1 %276, label %277, label %270, !llvm.loop !27

277:                                              ; preds = %270
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #35
  %278 = call i32 @strtoichar(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef 0) #35
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr @stdout, align 8, !tbaa !7
  %282 = call i32 @putc(i32 noundef 7, ptr noundef %281)
  %283 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0, i32 noundef 488, ptr noundef nonnull @.str.35)
  br label %284

284:                                              ; preds = %280, %277
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %285

285:                                              ; preds = %284, %227
  call void @erase() #35
  %286 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36
  %287 = load i32, ptr @minword, align 4, !tbaa !13
  %288 = sext i32 %287 to i64
  %289 = icmp ugt i64 %286, %288
  br i1 %289, label %179, label %433

290:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152
  %291 = add nsw i32 %157, -48
  %292 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %293 = icmp sgt i32 %292, 9
  br i1 %293, label %294, label %305

294:                                              ; preds = %290
  %295 = load ptr, ptr @stdin, align 8, !tbaa !7
  %296 = call i32 @getc(ptr noundef %295)
  %297 = and i32 %296, 127
  %298 = add nsw i32 %297, -48
  %299 = icmp ult i32 %298, 10
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = mul nsw i32 %291, 10
  %302 = add nsw i32 %301, -48
  %303 = add nsw i32 %302, %297
  br label %305

304:                                              ; preds = %294
  switch i32 %297, label %429 [
    i32 13, label %305
    i32 10, label %305
  ]

305:                                              ; preds = %304, %304, %300, %290
  %306 = phi i32 [ %303, %300 ], [ %291, %304 ], [ %291, %290 ], [ %291, %304 ]
  %307 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %429

309:                                              ; preds = %305
  %310 = sext i32 %306 to i64
  %311 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %310
  %312 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %311) #35
  store i32 1, ptr @changes, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %8) #35
  %313 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @contextbufs) #35
  %314 = icmp eq ptr %15, @contextbufs
  br i1 %314, label %320, label %315

315:                                              ; preds = %309
  %316 = ptrtoint ptr %15 to i64
  %317 = sub i64 %316, ptrtoint (ptr @contextbufs to i64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %8, i64 %317, i1 false), !tbaa !15
  %318 = getelementptr i8, ptr @contextbufs, i64 %317
  %319 = getelementptr i8, ptr %8, i64 %317
  br label %320

320:                                              ; preds = %315, %309
  %321 = phi ptr [ @contextbufs, %309 ], [ %318, %315 ]
  %322 = phi ptr [ %8, %309 ], [ %319, %315 ]
  %323 = load ptr, ptr %4, align 8, !tbaa !7
  %324 = ptrtoint ptr %323 to i64
  %325 = ptrtoint ptr %15 to i64
  %326 = sub i64 %324, %325
  %327 = getelementptr inbounds i8, ptr %322, i64 %326
  %328 = call ptr @skipoverword(ptr noundef %0) #35
  %329 = icmp ugt ptr %328, %0
  br i1 %329, label %330, label %337

330:                                              ; preds = %330, %320
  %331 = phi ptr [ %333, %330 ], [ %0, %320 ]
  %332 = phi ptr [ %335, %330 ], [ %321, %320 ]
  %333 = getelementptr inbounds i8, ptr %331, i64 1
  %334 = load i8, ptr %331, align 1, !tbaa !15
  %335 = getelementptr inbounds i8, ptr %332, i64 1
  store i8 %334, ptr %332, align 1, !tbaa !15
  %336 = icmp eq ptr %333, %328
  br i1 %336, label %337, label %330, !llvm.loop !25

337:                                              ; preds = %330, %320
  %338 = phi ptr [ %321, %320 ], [ %335, %330 ]
  %339 = phi ptr [ %0, %320 ], [ %333, %330 ]
  store ptr %338, ptr %4, align 8, !tbaa !7
  %340 = load i8, ptr %339, align 1, !tbaa !15
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %355, label %342

342:                                              ; preds = %337
  store i8 %340, ptr %338, align 1, !tbaa !15
  store i8 0, ptr %339, align 1, !tbaa !15
  %343 = getelementptr inbounds i8, ptr %338, i64 1
  %344 = getelementptr inbounds i8, ptr %339, i64 1
  %345 = load i8, ptr %344, align 1, !tbaa !15
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %355, label %347

347:                                              ; preds = %347, %342
  %348 = phi i8 [ %353, %347 ], [ %345, %342 ]
  %349 = phi ptr [ %352, %347 ], [ %344, %342 ]
  %350 = phi ptr [ %351, %347 ], [ %343, %342 ]
  store i8 %348, ptr %350, align 1, !tbaa !15
  %351 = getelementptr inbounds i8, ptr %350, i64 1
  %352 = getelementptr inbounds i8, ptr %349, i64 1
  %353 = load i8, ptr %352, align 1, !tbaa !15
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %347, !llvm.loop !26

355:                                              ; preds = %347, %342, %337
  %356 = phi ptr [ %343, %342 ], [ %338, %337 ], [ %351, %347 ]
  br label %357

357:                                              ; preds = %357, %355
  %358 = phi ptr [ %362, %357 ], [ %356, %355 ]
  %359 = phi ptr [ %360, %357 ], [ %327, %355 ]
  %360 = getelementptr inbounds i8, ptr %359, i64 1
  %361 = load i8, ptr %359, align 1, !tbaa !15
  %362 = getelementptr inbounds i8, ptr %358, i64 1
  store i8 %361, ptr %358, align 1, !tbaa !15
  %363 = icmp eq i8 %361, 0
  br i1 %363, label %364, label %357, !llvm.loop !27

364:                                              ; preds = %357
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %8) #35
  call void @erase() #35
  %365 = load i32, ptr @readonly, align 4, !tbaa !13
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %433, label %367

367:                                              ; preds = %364
  %368 = load i32, ptr @li, align 4, !tbaa !13
  %369 = add nsw i32 %368, -1
  call void @move(i32 noundef %369, i32 noundef 0) #35
  %370 = load ptr, ptr @stdout, align 8, !tbaa !7
  %371 = call i32 @putc(i32 noundef 7, ptr noundef %370)
  %372 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.25)
  %373 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %374 = call i32 @fflush(ptr noundef %373)
  %375 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %433

376:                                              ; preds = %152, %152
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %11) #35
  %377 = load i32, ptr @li, align 4, !tbaa !13
  %378 = add nsw i32 %377, -1
  call void @move(i32 noundef %378, i32 noundef 0) #35
  %379 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37)
  %380 = call fastcc ptr @getLine(ptr noundef nonnull %11)
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load ptr, ptr @stdout, align 8, !tbaa !7
  %384 = call i32 @putc(i32 noundef 7, ptr noundef %383)
  br label %425

385:                                              ; preds = %376
  %386 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %387 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %388 = call i32 @fflush(ptr noundef %387)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #35
  br label %389

389:                                              ; preds = %400, %385
  %390 = phi ptr [ %7, %385 ], [ %401, %400 ]
  %391 = phi ptr [ %11, %385 ], [ %403, %400 ]
  %392 = phi i32 [ 0, %385 ], [ %402, %400 ]
  %393 = load i8, ptr %391, align 1, !tbaa !15
  switch i8 %393, label %398 [
    i8 0, label %404
    i8 42, label %394
  ]

394:                                              ; preds = %389
  %395 = add nsw i32 %392, 1
  %396 = getelementptr inbounds i8, ptr %390, i64 1
  store i8 46, ptr %390, align 1, !tbaa !15
  %397 = getelementptr inbounds i8, ptr %390, i64 2
  store i8 42, ptr %396, align 1, !tbaa !15
  br label %400

398:                                              ; preds = %389
  %399 = getelementptr inbounds i8, ptr %390, i64 1
  store i8 %393, ptr %390, align 1, !tbaa !15
  br label %400

400:                                              ; preds = %398, %394
  %401 = phi ptr [ %397, %394 ], [ %399, %398 ]
  %402 = phi i32 [ %395, %394 ], [ %392, %398 ]
  %403 = getelementptr inbounds i8, ptr %391, i64 1
  br label %389, !llvm.loop !28

404:                                              ; preds = %389
  store i8 0, ptr %390, align 1, !tbaa !15
  %405 = load i8, ptr %7, align 16, !tbaa !15
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %424, label %407

407:                                              ; preds = %404
  %408 = icmp ne i32 %392, 0
  %409 = load i1, ptr @lookharder.look, align 4
  %410 = select i1 %408, i1 true, i1 %409
  br i1 %410, label %416, label %411

411:                                              ; preds = %407
  %412 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #35
  %413 = call i32 @shellescape(ptr noundef nonnull %6) #35
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %424

415:                                              ; preds = %411
  store i1 true, ptr @lookharder.look, align 4
  br label %416

416:                                              ; preds = %415, %407
  %417 = icmp eq i32 %392, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %416
  %419 = call i64 @strlen(ptr nonnull dereferenceable(1) %7)
  %420 = getelementptr inbounds i8, ptr %7, i64 %419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %420, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  br label %421

421:                                              ; preds = %418, %416
  %422 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #35
  %423 = call i32 @shellescape(ptr noundef nonnull %6) #35
  br label %424

424:                                              ; preds = %421, %411, %404
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %6) #35
  br label %425

425:                                              ; preds = %424, %382
  call void @erase() #35
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %11) #35
  br label %179

426:                                              ; preds = %152, %152
  store i32 1, ptr @quit, align 4, !tbaa !13
  call void @erase() #35
  %427 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %428 = call i32 @fflush(ptr noundef %427)
  br label %433

429:                                              ; preds = %305, %304, %152
  %430 = load ptr, ptr @stdout, align 8, !tbaa !7
  %431 = call i32 @putc(i32 noundef 7, ptr noundef %430)
  br label %432

432:                                              ; preds = %429, %152, %152
  br label %152, !llvm.loop !29

433:                                              ; preds = %426, %367, %364, %285, %190, %185, %180, %159, %30, %27, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compoundgood(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #35
  %4 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %8 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !30
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %49, label %13

13:                                               ; preds = %6
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #35
  %15 = sext i16 %8 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !30
  %18 = sext i16 %17 to i64
  %19 = getelementptr i8, ptr %16, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %42, %13
  %24 = phi ptr [ %43, %42 ], [ %16, %13 ]
  %25 = load i8, ptr %24, align 1, !tbaa !15
  store i8 0, ptr %24, align 1, !tbaa !15
  %26 = call i32 @good(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 2) #35
  %27 = icmp eq i32 %26, 0
  store i8 %25, ptr %24, align 1, !tbaa !15
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = call i32 @good(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0) #35
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @compoundgood(ptr noundef nonnull %24, i32 noundef 2), !range !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %28
  %35 = call i64 @whatcap(ptr noundef nonnull %24) #35
  %36 = call i64 @whatcap(ptr noundef nonnull %3) #35
  %37 = call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 36)
  switch i64 %37, label %42 [
    i64 0, label %38
    i64 2, label %38
    i64 3, label %38
    i64 1, label %40
  ]

38:                                               ; preds = %34, %34, %34
  %39 = icmp eq i64 %35, 0
  br label %49

40:                                               ; preds = %34
  %41 = icmp eq i64 %35, 268435456
  br label %49

42:                                               ; preds = %34, %31, %23
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  %44 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !30
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i8, ptr %24, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %23, !llvm.loop !33

49:                                               ; preds = %42, %40, %38, %13, %6, %2
  %50 = phi i1 [ %41, %40 ], [ %39, %38 ], [ false, %2 ], [ false, %6 ], [ false, %13 ], [ false, %42 ]
  %51 = zext i1 %50 to i32
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #35
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @makepossibilities(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x [120 x i8]], align 16
  %5 = alloca [121 x i8], align 16
  %6 = alloca [10 x [120 x i8]], align 16
  %7 = alloca [120 x i8], align 16
  %8 = alloca [120 x i8], align 16
  %9 = alloca [120 x i8], align 16
  %10 = alloca [121 x i8], align 16
  %11 = alloca [120 x i8], align 16
  br label %12

12:                                               ; preds = %12, %1
  %13 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %14 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %13
  store i8 0, ptr %14, align 8, !tbaa !15
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, 100
  br i1 %16, label %17, label %12, !llvm.loop !34

17:                                               ; preds = %12
  store i32 0, ptr @pcount, align 4, !tbaa !13
  store i32 0, ptr @maxposslen, align 4, !tbaa !13
  store i32 0, ptr @easypossibilities, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #35
  %18 = tail call i32 @good(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #35
  call void @upcase(ptr noundef nonnull %11) #35
  %22 = call fastcc i32 @ins_cap(ptr noundef nonnull %11, ptr noundef %0), !range !35
  br label %23

23:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #35
  %24 = load i32, ptr @pcount, align 4, !tbaa !13
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %26, label %88

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %10) #35
  %27 = getelementptr inbounds i8, ptr %10, i64 1
  %28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %0) #35
  %29 = load i8, ptr %0, align 1, !tbaa !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %62, %26
  %32 = phi ptr [ %65, %62 ], [ %10, %26 ]
  %33 = phi ptr [ %63, %62 ], [ %0, %26 ]
  %34 = load i32, ptr @Trynum, align 4, !tbaa !13
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = icmp eq ptr %32, %10
  br label %42

38:                                               ; preds = %62, %26
  %39 = phi ptr [ %10, %26 ], [ %65, %62 ]
  %40 = load i32, ptr @Trynum, align 4, !tbaa !13
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %68, label %87

42:                                               ; preds = %57, %36
  %43 = phi i64 [ 0, %36 ], [ %58, %57 ]
  %44 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = icmp ne i8 %48, 0
  %50 = select i1 %49, i1 %37, i1 false
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  store i8 %45, ptr %32, align 1, !tbaa !15
  %52 = call i32 @good(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call fastcc i32 @ins_cap(ptr noundef nonnull %10, ptr noundef nonnull %0), !range !35
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54, %51, %42
  %58 = add nuw nsw i64 %43, 1
  %59 = load i32, ptr @Trynum, align 4, !tbaa !13
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %42, label %62, !llvm.loop !36

62:                                               ; preds = %57, %31
  %63 = getelementptr inbounds i8, ptr %33, i64 1
  %64 = load i8, ptr %33, align 1, !tbaa !15
  %65 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %64, ptr %32, align 1, !tbaa !15
  %66 = load i8, ptr %63, align 1, !tbaa !15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %38, label %31, !llvm.loop !37

68:                                               ; preds = %82, %38
  %69 = phi i64 [ %83, %82 ], [ 0, %38 ]
  %70 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !15
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  store i8 %71, ptr %39, align 1, !tbaa !15
  %77 = call i32 @good(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call fastcc i32 @ins_cap(ptr noundef nonnull %10, ptr noundef nonnull %0), !range !35
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79, %76, %68
  %83 = add nuw nsw i64 %69, 1
  %84 = load i32, ptr @Trynum, align 4, !tbaa !13
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %68, label %87, !llvm.loop !38

87:                                               ; preds = %82, %79, %54, %38
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %10) #35
  br label %88

88:                                               ; preds = %87, %23
  %89 = load i32, ptr @pcount, align 4, !tbaa !13
  %90 = icmp slt i32 %89, 100
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #35
  %92 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #35
  %93 = getelementptr inbounds i8, ptr %9, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !15
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %106, %91
  %97 = phi i8 [ %110, %106 ], [ %94, %91 ]
  %98 = phi ptr [ %109, %106 ], [ %93, %91 ]
  %99 = phi ptr [ %98, %106 ], [ %9, %91 ]
  %100 = load i8, ptr %99, align 1, !tbaa !15
  store i8 %97, ptr %99, align 1, !tbaa !15
  store i8 %100, ptr %98, align 1, !tbaa !15
  %101 = call i32 @good(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = call fastcc i32 @ins_cap(ptr noundef nonnull %9, ptr noundef %0), !range !35
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103, %96
  %107 = load i8, ptr %99, align 1, !tbaa !15
  %108 = load i8, ptr %98, align 1, !tbaa !15
  store i8 %108, ptr %99, align 1, !tbaa !15
  store i8 %107, ptr %98, align 1, !tbaa !15
  %109 = getelementptr inbounds i8, ptr %98, i64 1
  %110 = load i8, ptr %109, align 1, !tbaa !15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %96, !llvm.loop !39

112:                                              ; preds = %106, %103, %91
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #35
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i32, ptr @pcount, align 4, !tbaa !13
  %115 = icmp slt i32 %114, 100
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #35
  %117 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %118 = icmp ult i64 %117, 2
  br i1 %118, label %138, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, ptr %0, i64 1
  %121 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %120) #35
  %122 = load i8, ptr %0, align 1, !tbaa !15
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %132, %119
  %125 = phi ptr [ %135, %132 ], [ %8, %119 ]
  %126 = phi ptr [ %133, %132 ], [ %0, %119 ]
  %127 = call i32 @good(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = call fastcc i32 @ins_cap(ptr noundef nonnull %8, ptr noundef nonnull %0), !range !35
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %124
  %133 = getelementptr inbounds i8, ptr %126, i64 1
  %134 = load i8, ptr %126, align 1, !tbaa !15
  %135 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %134, ptr %125, align 1, !tbaa !15
  %136 = load i8, ptr %133, align 1, !tbaa !15
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %124, !llvm.loop !40

138:                                              ; preds = %132, %129, %119, %116
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #35
  br label %139

139:                                              ; preds = %138, %113
  %140 = load i32, ptr @pcount, align 4, !tbaa !13
  %141 = icmp slt i32 %140, 100
  br i1 %141, label %142, label %187

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #35
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %144 = trunc i64 %143 to i32
  %145 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #35
  call void @upcase(ptr noundef nonnull %7) #35
  %146 = icmp sgt i32 %144, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %142
  %148 = add i64 %143, 4294967295
  %149 = and i64 %148, 4294967295
  %150 = and i64 %143, 4294967295
  br label %151

151:                                              ; preds = %183, %147
  %152 = phi i64 [ 0, %147 ], [ %184, %183 ]
  %153 = getelementptr inbounds [120 x i8], ptr %7, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !15
  %155 = load i32, ptr @Trynum, align 4, !tbaa !13
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %183

157:                                              ; preds = %151
  %158 = icmp ne i64 %152, 0
  %159 = icmp ne i64 %152, %149
  %160 = select i1 %158, i1 %159, i1 false
  br label %161

161:                                              ; preds = %178, %157
  %162 = phi i64 [ 0, %157 ], [ %179, %178 ]
  %163 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = icmp eq i8 %164, %154
  br i1 %165, label %178, label %166

166:                                              ; preds = %161
  %167 = zext i8 %164 to i64
  %168 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !15
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %170, i1 true, i1 %160
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  store i8 %164, ptr %153, align 1, !tbaa !15
  %173 = call i32 @good(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = call fastcc i32 @ins_cap(ptr noundef nonnull %7, ptr noundef %0), !range !35
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175, %172, %166, %161
  %179 = add nuw nsw i64 %162, 1
  %180 = load i32, ptr @Trynum, align 4, !tbaa !13
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %161, label %183, !llvm.loop !41

183:                                              ; preds = %178, %151
  store i8 %154, ptr %153, align 1, !tbaa !15
  %184 = add nuw nsw i64 %152, 1
  %185 = icmp eq i64 %184, %150
  br i1 %185, label %186, label %151, !llvm.loop !42

186:                                              ; preds = %183, %175, %142
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #35
  br label %187

187:                                              ; preds = %186, %139
  %188 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %189 = icmp ne i32 %188, 1
  %190 = load i32, ptr @pcount, align 4
  %191 = icmp slt i32 %190, 100
  %192 = select i1 %189, i1 %191, i1 false
  br i1 %192, label %193, label %384

193:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %6) #35
  %194 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %195 = trunc i64 %194 to i32
  %196 = add i32 %195, -119
  %197 = icmp ult i32 %196, -116
  br i1 %197, label %383, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %5, i64 1
  %200 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %0) #35
  %201 = getelementptr inbounds i8, ptr %5, i64 2
  %202 = load i8, ptr %201, align 2, !tbaa !15
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %383, label %204

204:                                              ; preds = %198
  %205 = ptrtoint ptr %5 to i64
  br label %206

206:                                              ; preds = %379, %204
  %207 = phi ptr [ %201, %204 ], [ %380, %379 ]
  %208 = phi ptr [ %199, %204 ], [ %207, %379 ]
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = getelementptr inbounds i8, ptr %208, i64 -1
  store i8 %209, ptr %210, align 1, !tbaa !15
  store i8 0, ptr %208, align 1, !tbaa !15
  %211 = call i32 @good(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %379, label %213

213:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #35
  %214 = load i8, ptr %5, align 16, !tbaa !15
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %256, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr @numhits, align 4, !tbaa !13
  store i32 0, ptr %3, align 4, !tbaa !13
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %256

219:                                              ; preds = %216
  %220 = zext nneg i32 %217 to i64
  br label %221

221:                                              ; preds = %248, %219
  %222 = phi i64 [ %220, %219 ], [ %223, %248 ]
  %223 = add nsw i64 %222, -1
  %224 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223
  %225 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !43
  %227 = icmp eq ptr %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.flagent, ptr %226, i64 0, i32 3
  %230 = load i16, ptr %229, align 2, !tbaa !45
  %231 = sext i16 %230 to i32
  %232 = getelementptr inbounds %struct.flagent, ptr %226, i64 0, i32 4
  %233 = load i16, ptr %232, align 4, !tbaa !47
  %234 = sext i16 %233 to i32
  br label %235

235:                                              ; preds = %228, %221
  %236 = phi i32 [ %234, %228 ], [ 0, %221 ]
  %237 = phi i32 [ %231, %228 ], [ 0, %221 ]
  %238 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %223, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !48
  %240 = icmp eq ptr %239, null
  br i1 %240, label %248, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.flagent, ptr %239, i64 0, i32 3
  %243 = load i16, ptr %242, align 2, !tbaa !45
  %244 = sext i16 %243 to i32
  %245 = getelementptr inbounds %struct.flagent, ptr %239, i64 0, i32 4
  %246 = load i16, ptr %245, align 4, !tbaa !47
  %247 = sext i16 %246 to i32
  br label %248

248:                                              ; preds = %241, %235
  %249 = phi i32 [ %247, %241 ], [ 0, %235 ]
  %250 = phi i32 [ %244, %241 ], [ 0, %235 ]
  %251 = load ptr, ptr %224, align 8, !tbaa !49
  call fastcc void @save_root_cap(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %237, i32 noundef %236, i32 noundef %250, i32 noundef %249, ptr noundef %251, ptr noundef %226, ptr noundef %239, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %252 = icmp sgt i64 %222, 1
  %253 = load i32, ptr %3, align 4
  %254 = icmp slt i32 %253, 10
  %255 = select i1 %252, i1 %254, i1 false
  br i1 %255, label %221, label %256, !llvm.loop !50

256:                                              ; preds = %248, %216, %213
  %257 = phi i32 [ 0, %213 ], [ 0, %216 ], [ %253, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #35
  %258 = call i32 @good(ptr noundef nonnull %207, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %379, label %260

260:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #35
  %261 = load i8, ptr %207, align 1, !tbaa !15
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %303, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr @numhits, align 4, !tbaa !13
  store i32 0, ptr %2, align 4, !tbaa !13
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %303

266:                                              ; preds = %263
  %267 = zext nneg i32 %264 to i64
  br label %268

268:                                              ; preds = %295, %266
  %269 = phi i64 [ %267, %266 ], [ %270, %295 ]
  %270 = add nsw i64 %269, -1
  %271 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270
  %272 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !43
  %274 = icmp eq ptr %273, null
  br i1 %274, label %282, label %275

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.flagent, ptr %273, i64 0, i32 3
  %277 = load i16, ptr %276, align 2, !tbaa !45
  %278 = sext i16 %277 to i32
  %279 = getelementptr inbounds %struct.flagent, ptr %273, i64 0, i32 4
  %280 = load i16, ptr %279, align 4, !tbaa !47
  %281 = sext i16 %280 to i32
  br label %282

282:                                              ; preds = %275, %268
  %283 = phi i32 [ %281, %275 ], [ 0, %268 ]
  %284 = phi i32 [ %278, %275 ], [ 0, %268 ]
  %285 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %270, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.flagent, ptr %286, i64 0, i32 3
  %290 = load i16, ptr %289, align 2, !tbaa !45
  %291 = sext i16 %290 to i32
  %292 = getelementptr inbounds %struct.flagent, ptr %286, i64 0, i32 4
  %293 = load i16, ptr %292, align 4, !tbaa !47
  %294 = sext i16 %293 to i32
  br label %295

295:                                              ; preds = %288, %282
  %296 = phi i32 [ %294, %288 ], [ 0, %282 ]
  %297 = phi i32 [ %291, %288 ], [ 0, %282 ]
  %298 = load ptr, ptr %271, align 8, !tbaa !49
  call fastcc void @save_root_cap(ptr noundef nonnull %207, ptr noundef nonnull %207, i32 noundef %284, i32 noundef %283, i32 noundef %297, i32 noundef %296, ptr noundef %298, ptr noundef %273, ptr noundef %286, ptr noundef nonnull %6, ptr noundef nonnull %2)
  %299 = icmp sgt i64 %269, 1
  %300 = load i32, ptr %2, align 4
  %301 = icmp slt i32 %300, 10
  %302 = select i1 %299, i1 %301, i1 false
  br i1 %302, label %268, label %303, !llvm.loop !50

303:                                              ; preds = %295, %263, %260
  %304 = phi i32 [ 0, %260 ], [ 0, %263 ], [ %300, %295 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #35
  %305 = icmp sgt i32 %257, 0
  br i1 %305, label %306, label %379

306:                                              ; preds = %303
  %307 = ptrtoint ptr %208 to i64
  %308 = sub i64 %307, %205
  %309 = icmp sgt i32 %304, 0
  %310 = zext nneg i32 %257 to i64
  %311 = zext nneg i32 %304 to i64
  br label %312

312:                                              ; preds = %376, %306
  %313 = phi i64 [ 0, %306 ], [ %377, %376 ]
  %314 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %313
  %315 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %313, i64 %308
  br i1 %309, label %316, label %376

316:                                              ; preds = %312
  %317 = getelementptr inbounds i8, ptr %315, i64 1
  br label %318

318:                                              ; preds = %373, %316
  %319 = phi i64 [ 0, %316 ], [ %374, %373 ]
  store i8 32, ptr %315, align 1, !tbaa !15
  %320 = getelementptr inbounds [10 x [120 x i8]], ptr %6, i64 0, i64 %319
  %321 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %317, ptr noundef nonnull dereferenceable(1) %320) #35
  %322 = call ptr @ichartosstr(ptr noundef nonnull %314, i32 noundef 0) #35
  %323 = load i32, ptr @pcount, align 4, !tbaa !13
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %318
  %326 = zext nneg i32 %323 to i64
  br label %330

327:                                              ; preds = %330
  %328 = add nuw nsw i64 %331, 1
  %329 = icmp eq i64 %328, %326
  br i1 %329, label %335, label %330, !llvm.loop !51

330:                                              ; preds = %327, %325
  %331 = phi i64 [ 0, %325 ], [ %328, %327 ]
  %332 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %331
  %333 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %332, ptr noundef nonnull dereferenceable(1) %322) #36
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %347, label %327

335:                                              ; preds = %327, %318
  %336 = add nsw i32 %323, 1
  store i32 %336, ptr @pcount, align 4, !tbaa !13
  %337 = sext i32 %323 to i64
  %338 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %337
  %339 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %338, ptr noundef nonnull dereferenceable(1) %322) #35
  %340 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %322) #36
  %341 = trunc i64 %340 to i32
  %342 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %343 = icmp slt i32 %342, %341
  br i1 %343, label %344, label %345

344:                                              ; preds = %335
  store i32 %341, ptr @maxposslen, align 4, !tbaa !13
  br label %345

345:                                              ; preds = %344, %335
  %346 = icmp sgt i32 %323, 98
  br i1 %346, label %383, label %347

347:                                              ; preds = %345, %330
  store i8 45, ptr %315, align 1, !tbaa !15
  %348 = call ptr @ichartosstr(ptr noundef nonnull %314, i32 noundef 0) #35
  %349 = load i32, ptr @pcount, align 4, !tbaa !13
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %347
  %352 = zext nneg i32 %349 to i64
  br label %356

353:                                              ; preds = %356
  %354 = add nuw nsw i64 %357, 1
  %355 = icmp eq i64 %354, %352
  br i1 %355, label %361, label %356, !llvm.loop !51

356:                                              ; preds = %353, %351
  %357 = phi i64 [ 0, %351 ], [ %354, %353 ]
  %358 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %357
  %359 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %358, ptr noundef nonnull dereferenceable(1) %348) #36
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %373, label %353

361:                                              ; preds = %353, %347
  %362 = add nsw i32 %349, 1
  store i32 %362, ptr @pcount, align 4, !tbaa !13
  %363 = sext i32 %349 to i64
  %364 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %363
  %365 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %364, ptr noundef nonnull dereferenceable(1) %348) #35
  %366 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %348) #36
  %367 = trunc i64 %366 to i32
  %368 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %369 = icmp slt i32 %368, %367
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  store i32 %367, ptr @maxposslen, align 4, !tbaa !13
  br label %371

371:                                              ; preds = %370, %361
  %372 = icmp sgt i32 %349, 98
  br i1 %372, label %383, label %373

373:                                              ; preds = %371, %356
  %374 = add nuw nsw i64 %319, 1
  %375 = icmp eq i64 %374, %311
  br i1 %375, label %376, label %318, !llvm.loop !52

376:                                              ; preds = %373, %312
  %377 = add nuw nsw i64 %313, 1
  %378 = icmp eq i64 %377, %310
  br i1 %378, label %379, label %312, !llvm.loop !53

379:                                              ; preds = %376, %303, %256, %206
  %380 = getelementptr inbounds i8, ptr %207, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !15
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %206, !llvm.loop !54

383:                                              ; preds = %379, %371, %345, %198, %193
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %4) #35
  br label %384

384:                                              ; preds = %383, %187
  %385 = load i32, ptr @pcount, align 4, !tbaa !13
  store i32 %385, ptr @easypossibilities, align 4, !tbaa !13
  %386 = icmp eq i32 %385, 0
  %387 = load i32, ptr @tryhardflag, align 4
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %386, i1 true, i1 %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %384
  %391 = call i32 @good(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  br label %392

392:                                              ; preds = %390, %384
  %393 = load i32, ptr @sortit, align 4
  %394 = icmp eq i32 %393, 0
  %395 = load i32, ptr @pcount, align 4
  br i1 %394, label %396, label %401

396:                                              ; preds = %392
  %397 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %398 = icmp sgt i32 %395, %397
  %399 = icmp ne i32 %395, 0
  %400 = and i1 %399, %398
  br i1 %400, label %403, label %419

401:                                              ; preds = %392
  %402 = icmp eq i32 %395, 0
  br i1 %402, label %419, label %403

403:                                              ; preds = %401, %396
  %404 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %405 = icmp sgt i32 %404, 0
  %406 = icmp ne i32 %393, 0
  %407 = and i1 %406, %405
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = zext nneg i32 %404 to i64
  call void @qsort(ptr noundef nonnull @possibilities, i64 noundef %409, i64 noundef 120, ptr noundef nonnull @posscmp) #35
  br label %410

410:                                              ; preds = %408, %403
  %411 = load i32, ptr @pcount, align 4, !tbaa !13
  %412 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %413 = icmp sgt i32 %411, %412
  br i1 %413, label %414, label %419

414:                                              ; preds = %410
  %415 = sext i32 %412 to i64
  %416 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %415
  %417 = sub nsw i32 %411, %412
  %418 = zext i32 %417 to i64
  call void @qsort(ptr noundef nonnull %416, i64 noundef %418, i64 noundef 120, ptr noundef nonnull @posscmp) #35
  br label %419

419:                                              ; preds = %414, %410, %401, %396
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @show_line(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  %5 = icmp eq i32 %2, 0
  %6 = load i32, ptr @sg, align 4
  %7 = shl i32 %6, 1
  %8 = select i1 %5, i32 0, i32 %7
  %9 = icmp ult ptr %0, %1
  %10 = load i32, ptr @co, align 4
  %11 = add nsw i32 %10, -1
  %12 = icmp slt i32 %8, %11
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = ptrtoint ptr %1 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %0, %14 ], [ %24, %16 ]
  %18 = phi i32 [ %8, %14 ], [ %23, %16 ]
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %15, %19
  %21 = trunc i64 %20 to i32
  %22 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %18, i32 noundef 1, i32 noundef %21)
  %23 = add nsw i32 %22, %18
  %24 = load ptr, ptr %4, align 8, !tbaa !7
  %25 = icmp ult ptr %24, %1
  %26 = load i32, ptr @co, align 4
  %27 = add nsw i32 %26, -1
  %28 = icmp slt i32 %23, %27
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %16, label %30, !llvm.loop !55

30:                                               ; preds = %16, %3
  %31 = phi i32 [ %8, %3 ], [ %23, %16 ]
  br i1 %5, label %59, label %32

32:                                               ; preds = %30
  tail call void @inverse() #35
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load ptr, ptr %4, align 8, !tbaa !7
  %36 = icmp ult ptr %35, %34
  %37 = load i32, ptr @co, align 4
  %38 = add nsw i32 %37, -1
  %39 = icmp slt i32 %31, %38
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = ptrtoint ptr %34 to i64
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi ptr [ %35, %41 ], [ %51, %43 ]
  %45 = phi i32 [ %31, %41 ], [ %50, %43 ]
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %42, %46
  %48 = trunc i64 %47 to i32
  %49 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %45, i32 noundef 1, i32 noundef %48)
  %50 = add nsw i32 %49, %45
  %51 = load ptr, ptr %4, align 8, !tbaa !7
  %52 = icmp ult ptr %51, %34
  %53 = load i32, ptr @co, align 4
  %54 = add nsw i32 %53, -1
  %55 = icmp slt i32 %50, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %43, label %57, !llvm.loop !56

57:                                               ; preds = %43, %32
  %58 = phi i32 [ %31, %32 ], [ %50, %43 ]
  tail call void @normal() #35
  br label %59

59:                                               ; preds = %57, %30
  %60 = phi i32 [ %58, %57 ], [ %31, %30 ]
  %61 = load ptr, ptr %4, align 8, !tbaa !7
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = icmp ne i8 %62, 0
  %64 = load i32, ptr @co, align 4
  %65 = add nsw i32 %64, -1
  %66 = icmp slt i32 %60, %65
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %79

68:                                               ; preds = %68, %59
  %69 = phi i32 [ %71, %68 ], [ %60, %59 ]
  %70 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %69, i32 noundef 1, i32 noundef 0)
  %71 = add nsw i32 %70, %69
  %72 = load ptr, ptr %4, align 8, !tbaa !7
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = icmp ne i8 %73, 0
  %75 = load i32, ptr @co, align 4
  %76 = add nsw i32 %75, -1
  %77 = icmp slt i32 %71, %76
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %68, label %79, !llvm.loop !57

79:                                               ; preds = %68, %59
  %80 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @line_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %82

4:                                                ; preds = %2
  %5 = ptrtoint ptr %1 to i64
  br label %6

6:                                                ; preds = %77, %4
  %7 = phi i32 [ 0, %4 ], [ %80, %77 ]
  %8 = phi ptr [ %0, %4 ], [ %78, %77 ]
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %82, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = sub i64 %5, %12
  %14 = trunc i64 %13 to i32
  %15 = zext i8 %9 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @stringcharlen(ptr noundef nonnull %8, i32 noundef 0) #35
  %21 = icmp sgt i32 %20, 0
  %22 = select i1 %21, i32 %20, i32 1
  br i1 %21, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, ptr @laststringch, align 4, !tbaa !13
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -128
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = phi i32 [ %22, %23 ], [ %22, %19 ], [ 1, %11 ]
  %29 = phi i8 [ %26, %23 ], [ %9, %19 ], [ %9, %11 ]
  %30 = load i32, ptr @vflag, align 4, !tbaa !13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = zext i8 %29 to i64
  %34 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp ne i8 %35, 0
  %37 = icmp eq i32 %28, 1
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds i8, ptr %8, i64 1
  br label %77

41:                                               ; preds = %32, %27
  %42 = icmp eq i8 %9, 9
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %8, i64 1
  %45 = and i32 %7, 7
  %46 = sub nuw nsw i32 8, %45
  br label %77

47:                                               ; preds = %41
  %48 = icmp eq i32 %14, 0
  %49 = tail call i32 @llvm.smin.i32(i32 %28, i32 %14)
  %50 = select i1 %48, i32 %28, i32 %49
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = add nsw i32 %50, -1
  %54 = zext i32 %53 to i64
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ %59, %55 ], [ %8, %52 ]
  %57 = phi i32 [ %71, %55 ], [ 0, %52 ]
  %58 = phi i32 [ %72, %55 ], [ 0, %52 ]
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1, !tbaa !15
  %61 = zext i8 %60 to i32
  %62 = icmp slt i8 %60, 0
  %63 = add nsw i32 %57, 2
  %64 = and i32 %61, 127
  %65 = select i1 %62, i32 %64, i32 %61
  %66 = select i1 %62, i32 %63, i32 %57
  %67 = icmp ult i32 %65, 32
  %68 = icmp eq i32 %65, 127
  %69 = or i1 %67, %68
  %70 = select i1 %69, i32 2, i32 1
  %71 = add nsw i32 %70, %66
  %72 = add nuw nsw i32 %58, 1
  %73 = icmp eq i32 %72, %50
  br i1 %73, label %74, label %55, !llvm.loop !58

74:                                               ; preds = %55
  %75 = getelementptr i8, ptr %8, i64 1
  %76 = getelementptr i8, ptr %75, i64 %54
  br label %77

77:                                               ; preds = %74, %47, %43, %39
  %78 = phi ptr [ %40, %39 ], [ %44, %43 ], [ %8, %47 ], [ %76, %74 ]
  %79 = phi i32 [ 1, %39 ], [ %46, %43 ], [ 0, %47 ], [ %71, %74 ]
  %80 = add nsw i32 %79, %7
  %81 = icmp ult ptr %78, %1
  br i1 %81, label %6, label %82, !llvm.loop !59

82:                                               ; preds = %77, %6, %2
  %83 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %80, %77 ]
  ret i32 %83
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @getLine(ptr noundef writeonly %0) unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  br label %3

3:                                                ; preds = %25, %1
  %4 = phi ptr [ %0, %1 ], [ %26, %25 ]
  %5 = icmp eq ptr %4, %0
  %6 = icmp eq ptr %4, %0
  br label %7

7:                                                ; preds = %40, %3
  %8 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load ptr, ptr @stdin, align 8, !tbaa !7
  %11 = tail call i32 @getc(ptr noundef %10)
  %12 = and i32 %11, 127
  switch i32 %12, label %28 [
    i32 92, label %13
    i32 7, label %58
    i32 13, label %27
    i32 10, label %27
  ]

13:                                               ; preds = %7
  %14 = load ptr, ptr @stdout, align 8, !tbaa !7
  %15 = tail call i32 @putc(i32 noundef 92, ptr noundef %14)
  %16 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %17 = tail call i32 @fflush(ptr noundef %16)
  %18 = load ptr, ptr @stdin, align 8, !tbaa !7
  %19 = tail call i32 @getc(ptr noundef %18)
  %20 = and i32 %19, 127
  tail call void @backup() #35
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  %22 = tail call i32 @putc(i32 noundef %20, ptr noundef %21)
  %23 = trunc i32 %20 to i8
  %24 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %23, ptr %4, align 1, !tbaa !15
  br label %25

25:                                               ; preds = %55, %50, %32, %13
  %26 = phi ptr [ %57, %55 ], [ %52, %50 ], [ %33, %32 ], [ %24, %13 ]
  br label %3, !llvm.loop !60

27:                                               ; preds = %7, %7
  store i8 0, ptr %4, align 1, !tbaa !15
  br label %58

28:                                               ; preds = %7
  %29 = load i32, ptr @uerasechar, align 4, !tbaa !13
  %30 = icmp eq i32 %12, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  br i1 %6, label %40, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds i8, ptr %4, i64 -1
  tail call void @backup() #35
  %34 = load ptr, ptr @stdout, align 8, !tbaa !7
  %35 = tail call i32 @putc(i32 noundef 32, ptr noundef %34)
  tail call void @backup() #35
  br label %25

36:                                               ; preds = %28
  %37 = load i32, ptr @ukillchar, align 4, !tbaa !13
  %38 = icmp eq i32 %12, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  br i1 %5, label %40, label %41

40:                                               ; preds = %39, %31
  br label %7, !llvm.loop !60

41:                                               ; preds = %39
  %42 = ptrtoint ptr %4 to i64
  %43 = sub i64 0, %42
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %46, %44 ], [ %4, %41 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 -1
  tail call void @backup() #35
  %47 = load ptr, ptr @stdout, align 8, !tbaa !7
  %48 = tail call i32 @putc(i32 noundef 32, ptr noundef %47)
  tail call void @backup() #35
  %49 = icmp eq ptr %46, %0
  br i1 %49, label %55, label %44, !llvm.loop !61

50:                                               ; preds = %36
  %51 = trunc i32 %12 to i8
  %52 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %51, ptr %4, align 1, !tbaa !15
  %53 = load ptr, ptr @stdout, align 8, !tbaa !7
  %54 = tail call i32 @putc(i32 noundef %12, ptr noundef %53)
  br label %25

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %4, i64 %2
  %57 = getelementptr i8, ptr %56, i64 %43
  br label %25

58:                                               ; preds = %27, %7
  %59 = phi ptr [ %0, %27 ], [ null, %7 ]
  ret ptr %59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @sleep(...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !7
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @stringcharlen(ptr noundef nonnull %5, i32 noundef 0) #35
  %14 = icmp sgt i32 %13, 0
  %15 = select i1 %14, i32 %13, i32 1
  br i1 %14, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, ptr @laststringch, align 4, !tbaa !13
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -128
  br label %20

20:                                               ; preds = %16, %12, %4
  %21 = phi i32 [ %15, %16 ], [ %15, %12 ], [ 1, %4 ]
  %22 = phi i8 [ %19, %16 ], [ %6, %12 ], [ %6, %4 ]
  %23 = load i32, ptr @vflag, align 4, !tbaa !13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = zext i8 %22 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = icmp ne i8 %28, 0
  %30 = icmp eq i32 %21, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  %36 = tail call i32 @putc(i32 noundef %7, ptr noundef %35)
  br label %37

37:                                               ; preds = %34, %32
  %38 = load ptr, ptr %0, align 8, !tbaa !7
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %0, align 8, !tbaa !7
  br label %101

40:                                               ; preds = %25, %20
  %41 = icmp eq i8 %6, 9
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @stdout, align 8, !tbaa !7
  %46 = tail call i32 @putc(i32 noundef 9, ptr noundef %45)
  br label %47

47:                                               ; preds = %44, %42
  %48 = load ptr, ptr %0, align 8, !tbaa !7
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %49, ptr %0, align 8, !tbaa !7
  %50 = and i32 %1, 7
  %51 = sub nuw nsw i32 8, %50
  br label %101

52:                                               ; preds = %40
  %53 = icmp eq i32 %3, 0
  %54 = tail call i32 @llvm.smin.i32(i32 %21, i32 %3)
  %55 = select i1 %53, i32 %21, i32 %54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = icmp eq i32 %2, 0
  %59 = icmp eq i32 %2, 0
  %60 = icmp eq i32 %2, 0
  br label %61

61:                                               ; preds = %96, %57
  %62 = phi i32 [ 0, %57 ], [ %98, %96 ]
  %63 = phi i32 [ 0, %57 ], [ %99, %96 ]
  %64 = load ptr, ptr %0, align 8, !tbaa !7
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %0, align 8, !tbaa !7
  %66 = load i8, ptr %64, align 1, !tbaa !15
  %67 = zext i8 %66 to i32
  %68 = icmp slt i8 %66, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  br i1 %58, label %75, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr @stdout, align 8, !tbaa !7
  %72 = tail call i32 @putc(i32 noundef 77, ptr noundef %71)
  %73 = load ptr, ptr @stdout, align 8, !tbaa !7
  %74 = tail call i32 @putc(i32 noundef 45, ptr noundef %73)
  br label %75

75:                                               ; preds = %70, %69
  %76 = add nsw i32 %62, 2
  %77 = and i32 %67, 127
  br label %78

78:                                               ; preds = %75, %61
  %79 = phi i32 [ %77, %75 ], [ %67, %61 ]
  %80 = phi i32 [ %76, %75 ], [ %62, %61 ]
  %81 = icmp ult i32 %79, 32
  %82 = icmp eq i32 %79, 127
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  br i1 %60, label %96, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr @stdout, align 8, !tbaa !7
  %87 = tail call i32 @putc(i32 noundef 94, ptr noundef %86)
  %88 = add nuw nsw i32 %79, 64
  %89 = select i1 %82, i32 63, i32 %88
  br label %91

90:                                               ; preds = %78
  br i1 %59, label %96, label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ %79, %90 ]
  %93 = phi i32 [ 2, %85 ], [ 1, %90 ]
  %94 = load ptr, ptr @stdout, align 8, !tbaa !7
  %95 = tail call i32 @putc(i32 noundef %92, ptr noundef %94)
  br label %96

96:                                               ; preds = %91, %90, %84
  %97 = phi i32 [ 2, %84 ], [ 1, %90 ], [ %93, %91 ]
  %98 = add nsw i32 %80, %97
  %99 = add nuw nsw i32 %63, 1
  %100 = icmp eq i32 %99, %55
  br i1 %100, label %101, label %61, !llvm.loop !58

101:                                              ; preds = %96, %52, %47, %37
  %102 = phi i32 [ %51, %47 ], [ 1, %37 ], [ 0, %52 ], [ %98, %96 ]
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ins_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [10 x [120 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #35
  %5 = load i8, ptr %0, align 1, !tbaa !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @numhits, align 4, !tbaa !13
  store i32 0, ptr %3, align 4, !tbaa !13
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %39, %10
  %13 = phi i64 [ %11, %10 ], [ %14, %39 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14
  %16 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.flagent, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !45
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.flagent, ptr %17, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !47
  %25 = sext i16 %24 to i32
  br label %26

26:                                               ; preds = %19, %12
  %27 = phi i32 [ %25, %19 ], [ 0, %12 ]
  %28 = phi i32 [ %22, %19 ], [ 0, %12 ]
  %29 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %14, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.flagent, ptr %30, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !45
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.flagent, ptr %30, i64 0, i32 4
  %37 = load i16, ptr %36, align 4, !tbaa !47
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %32, %26
  %40 = phi i32 [ %38, %32 ], [ 0, %26 ]
  %41 = phi i32 [ %35, %32 ], [ 0, %26 ]
  %42 = load ptr, ptr %15, align 8, !tbaa !49
  call fastcc void @save_root_cap(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %28, i32 noundef %27, i32 noundef %41, i32 noundef %40, ptr noundef %42, ptr noundef %17, ptr noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %43 = icmp sgt i64 %13, 1
  %44 = load i32, ptr %3, align 4
  %45 = icmp slt i32 %44, 10
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %12, label %47, !llvm.loop !50

47:                                               ; preds = %39, %7, %2
  %48 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %44, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #35
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = zext nneg i32 %48 to i64
  br label %52

52:                                               ; preds = %80, %50
  %53 = phi i64 [ 0, %50 ], [ %81, %80 ]
  %54 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %53
  %55 = call ptr @ichartosstr(ptr noundef nonnull %54, i32 noundef 0) #35
  %56 = load i32, ptr @pcount, align 4, !tbaa !13
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = zext nneg i32 %56 to i64
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i64 %64, 1
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %68, label %63, !llvm.loop !51

63:                                               ; preds = %60, %58
  %64 = phi i64 [ 0, %58 ], [ %61, %60 ]
  %65 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %55) #36
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %60

68:                                               ; preds = %60, %52
  %69 = add nsw i32 %56, 1
  store i32 %69, ptr @pcount, align 4, !tbaa !13
  %70 = sext i32 %56 to i64
  %71 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %70
  %72 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %55) #35
  %73 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #36
  %74 = trunc i64 %73 to i32
  %75 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 %74, ptr @maxposslen, align 4, !tbaa !13
  br label %78

78:                                               ; preds = %77, %68
  %79 = icmp sgt i32 %56, 98
  br i1 %79, label %83, label %80

80:                                               ; preds = %78, %63
  %81 = add nuw nsw i64 %53, 1
  %82 = icmp eq i64 %81, %51
  br i1 %82, label %83, label %52, !llvm.loop !62

83:                                               ; preds = %80, %78, %47
  %84 = phi i32 [ 0, %47 ], [ -1, %78 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %4) #35
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal fastcc void @save_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef %9, ptr nocapture noundef %10) unnamed_addr #0 {
  %12 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %12) #35
  %13 = load i32, ptr %10, align 4, !tbaa !13
  %14 = icmp sgt i32 %13, 9
  br i1 %14, label %285, label %15

15:                                               ; preds = %11
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #35
  %17 = load i8, ptr %1, align 1, !tbaa !15
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !63
  %23 = and i64 %22, 1879048192
  %24 = icmp eq i64 %23, 268435456
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr %1, align 1, !tbaa !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = zext i8 %26 to i64
  %30 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %44

33:                                               ; preds = %15
  call void @upcase(ptr noundef nonnull %12) #35
  br label %278

34:                                               ; preds = %39, %28
  %35 = phi ptr [ %36, %39 ], [ %1, %28 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39, !llvm.loop !65

39:                                               ; preds = %34
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %34, label %44, !llvm.loop !65

44:                                               ; preds = %39, %28
  %45 = phi i1 [ %27, %28 ], [ %38, %39 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %44, %34, %25
  call void @upcase(ptr noundef nonnull %12) #35
  br label %278

47:                                               ; preds = %52, %44
  %48 = phi ptr [ %49, %52 ], [ %1, %44 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = zext i8 %50 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %47, label %57, !llvm.loop !66

57:                                               ; preds = %52
  br i1 %51, label %58, label %119

58:                                               ; preds = %57, %47
  %59 = icmp eq i8 %20, 0
  %60 = and i64 %22, 805306368
  br i1 %59, label %67, label %61

61:                                               ; preds = %58
  switch i64 %60, label %70 [
    i64 536870912, label %62
    i64 0, label %62
  ]

62:                                               ; preds = %61, %61
  call void @lowcase(ptr noundef nonnull %12) #35
  %63 = load i8, ptr %12, align 16, !tbaa !15
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !15
  store i8 %66, ptr %12, align 16, !tbaa !15
  br label %278

67:                                               ; preds = %58
  %68 = icmp eq i64 %60, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  call void @lowcase(ptr noundef nonnull %12) #35
  br label %278

70:                                               ; preds = %67, %61
  %71 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !63
  %73 = and i64 %72, 1073741824
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %70
  %76 = icmp eq ptr %7, null
  %77 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %78 = icmp eq ptr %8, null
  %79 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  br label %80

80:                                               ; preds = %103, %75
  %81 = phi ptr [ %6, %75 ], [ %82, %103 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds %struct.dent, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !63
  %85 = and i64 %84, 805306368
  %86 = icmp eq i64 %85, 805306368
  br i1 %86, label %103, label %87

87:                                               ; preds = %80
  br i1 %76, label %95, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %77, align 8, !tbaa !69
  %90 = sext i16 %89 to i64
  %91 = and i64 %90, 4294967295
  %92 = shl nuw i64 1, %91
  %93 = and i64 %92, %84
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88, %87
  br i1 %78, label %108, label %96

96:                                               ; preds = %95
  %97 = load i16, ptr %79, align 8, !tbaa !69
  %98 = sext i16 %97 to i64
  %99 = and i64 %98, 4294967295
  %100 = shl nuw i64 1, %99
  %101 = and i64 %100, %84
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %116, %109, %96, %88, %80
  %104 = getelementptr inbounds %struct.dent, ptr %82, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !63
  %106 = and i64 %105, 1073741824
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %119, label %80, !llvm.loop !70

108:                                              ; preds = %96, %95
  br i1 %59, label %116, label %109

109:                                              ; preds = %108
  %110 = icmp eq i64 %85, 536870912
  br i1 %110, label %111, label %103

111:                                              ; preds = %109
  call void @lowcase(ptr noundef nonnull %12) #35
  %112 = load i8, ptr %12, align 16, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !15
  store i8 %115, ptr %12, align 16, !tbaa !15
  br label %278

116:                                              ; preds = %108
  %117 = icmp eq i64 %85, 0
  br i1 %117, label %118, label %103

118:                                              ; preds = %116
  call void @lowcase(ptr noundef nonnull %12) #35
  br label %278

119:                                              ; preds = %103, %70, %57
  %120 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !71
  %122 = call ptr @strtosichar(ptr noundef %121, i32 noundef 1) #35
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %122) #36
  %124 = trunc i64 %123 to i32
  %125 = load i64, ptr %21, align 8, !tbaa !63
  %126 = and i64 %125, 1073741824
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %119
  %129 = load ptr, ptr %6, align 8, !tbaa !67
  br label %130

130:                                              ; preds = %128, %119
  %131 = phi ptr [ %129, %128 ], [ %6, %119 ]
  %132 = icmp eq ptr %7, null
  %133 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %134 = icmp eq ptr %8, null
  %135 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  %136 = icmp eq i8 %20, 0
  %137 = sext i32 %3 to i64
  %138 = getelementptr inbounds i8, ptr %12, i64 %137
  %139 = sext i32 %2 to i64
  %140 = add i32 %4, %2
  %141 = sub i32 %124, %140
  %142 = sext i32 %141 to i64
  %143 = icmp sgt i32 %3, 0
  %144 = icmp sgt i32 %3, 0
  %145 = add i32 %124, %3
  %146 = sub i32 %5, %140
  %147 = add i32 %146, %145
  %148 = sub i32 %145, %140
  %149 = xor i32 %4, -1
  %150 = add i32 %124, %149
  %151 = sext i32 %150 to i64
  %152 = sext i32 %148 to i64
  %153 = getelementptr inbounds i8, ptr %12, i64 %152
  %154 = icmp slt i32 %148, %147
  %155 = sext i32 %148 to i64
  %156 = getelementptr inbounds i8, ptr %12, i64 %155
  %157 = icmp slt i32 %148, %147
  %158 = zext nneg i32 %3 to i64
  %159 = zext nneg i32 %3 to i64
  br label %160

160:                                              ; preds = %276, %130
  %161 = phi ptr [ %131, %130 ], [ %277, %276 ]
  br i1 %132, label %171, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !63
  %165 = load i16, ptr %133, align 8, !tbaa !69
  %166 = sext i16 %165 to i64
  %167 = and i64 %166, 4294967295
  %168 = shl nuw i64 1, %167
  %169 = and i64 %168, %164
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %271, label %171

171:                                              ; preds = %162, %160
  br i1 %134, label %181, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !63
  %175 = load i16, ptr %135, align 8, !tbaa !69
  %176 = sext i16 %175 to i64
  %177 = and i64 %176, 4294967295
  %178 = shl nuw i64 1, %177
  %179 = and i64 %178, %174
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %271, label %181

181:                                              ; preds = %172, %171
  %182 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !63
  %184 = and i64 %183, 805306368
  %185 = icmp eq i64 %184, 805306368
  br i1 %185, label %204, label %186

186:                                              ; preds = %181
  call void @lowcase(ptr noundef nonnull %12) #35
  br i1 %136, label %187, label %191

187:                                              ; preds = %186
  %188 = load i64, ptr %182, align 8, !tbaa !63
  %189 = and i64 %188, 805306368
  %190 = icmp eq i64 %189, 536870912
  br i1 %190, label %191, label %196

191:                                              ; preds = %187, %186
  %192 = load i8, ptr %12, align 16, !tbaa !15
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !15
  store i8 %195, ptr %12, align 16, !tbaa !15
  br label %196

196:                                              ; preds = %191, %187
  %197 = load i32, ptr %10, align 4, !tbaa !13
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [120 x i8], ptr %9, i64 %198
  %200 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(1) %12) #35
  %201 = load i32, ptr %10, align 4, !tbaa !13
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %10, align 4, !tbaa !13
  %203 = icmp sgt i32 %201, 8
  br i1 %203, label %285, label %271

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !71
  %207 = call ptr @strtosichar(ptr noundef %206, i32 noundef 1) #35
  %208 = getelementptr inbounds i8, ptr %207, i64 %139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %138, ptr align 1 %208, i64 %142, i1 false)
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !15
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %204
  br i1 %143, label %216, label %234

215:                                              ; preds = %204
  br i1 %144, label %225, label %234

216:                                              ; preds = %216, %214
  %217 = phi i64 [ %223, %216 ], [ 0, %214 ]
  %218 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !15
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !15
  store i8 %222, ptr %218, align 1, !tbaa !15
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %158
  br i1 %224, label %234, label %216, !llvm.loop !72

225:                                              ; preds = %225, %215
  %226 = phi i64 [ %232, %225 ], [ 0, %215 ]
  %227 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !15
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !15
  store i8 %231, ptr %227, align 1, !tbaa !15
  %232 = add nuw nsw i64 %226, 1
  %233 = icmp eq i64 %232, %159
  br i1 %233, label %234, label %225, !llvm.loop !73

234:                                              ; preds = %225, %216, %215, %214
  %235 = getelementptr inbounds i8, ptr %207, i64 %151
  %236 = load i8, ptr %235, align 1, !tbaa !15
  %237 = zext i8 %236 to i64
  %238 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !15
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %234
  br i1 %154, label %242, label %263

242:                                              ; preds = %242, %241
  %243 = phi i32 [ %249, %242 ], [ %148, %241 ]
  %244 = phi ptr [ %250, %242 ], [ %153, %241 ]
  %245 = load i8, ptr %244, align 1, !tbaa !15
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !15
  store i8 %248, ptr %244, align 1, !tbaa !15
  %249 = add nsw i32 %243, 1
  %250 = getelementptr inbounds i8, ptr %244, i64 1
  %251 = icmp eq i32 %249, %147
  br i1 %251, label %263, label %242, !llvm.loop !74

252:                                              ; preds = %234
  br i1 %157, label %253, label %263

253:                                              ; preds = %253, %252
  %254 = phi i32 [ %260, %253 ], [ %148, %252 ]
  %255 = phi ptr [ %261, %253 ], [ %156, %252 ]
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !15
  store i8 %259, ptr %255, align 1, !tbaa !15
  %260 = add nsw i32 %254, 1
  %261 = getelementptr inbounds i8, ptr %255, i64 1
  %262 = icmp eq i32 %260, %147
  br i1 %262, label %263, label %253, !llvm.loop !75

263:                                              ; preds = %253, %252, %242, %241
  %264 = load i32, ptr %10, align 4, !tbaa !13
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [120 x i8], ptr %9, i64 %265
  %267 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %266, ptr noundef nonnull dereferenceable(1) %12) #35
  %268 = load i32, ptr %10, align 4, !tbaa !13
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %10, align 4, !tbaa !13
  %270 = icmp sgt i32 %268, 8
  br i1 %270, label %285, label %271

271:                                              ; preds = %263, %196, %172, %162
  %272 = getelementptr inbounds %struct.dent, ptr %161, i64 0, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !63
  %274 = and i64 %273, 1073741824
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %161, align 8, !tbaa !67
  br label %160, !llvm.loop !76

278:                                              ; preds = %118, %111, %69, %62, %46, %33
  %279 = load i32, ptr %10, align 4, !tbaa !13
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [120 x i8], ptr %9, i64 %280
  %282 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %281, ptr noundef nonnull dereferenceable(1) %12) #35
  %283 = load i32, ptr %10, align 4, !tbaa !13
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %10, align 4, !tbaa !13
  br label %285

285:                                              ; preds = %278, %271, %263, %196, %11
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %12) #35
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @posscmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef 0), !range !77
  ret i32 %3
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [184 x i8], align 16
  %5 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #35
  %6 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 184, i32 noundef %2) #35
  %7 = call i32 @strtoichar(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 184, i32 noundef %2) #35
  %8 = load i8, ptr %4, align 16, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %60, %3
  %11 = phi i8 [ %63, %60 ], [ %8, %3 ]
  %12 = phi ptr [ %62, %60 ], [ %5, %3 ]
  %13 = phi ptr [ %61, %60 ], [ %4, %3 ]
  %14 = load i8, ptr %12, align 1, !tbaa !15
  %15 = icmp eq i8 %11, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %14, 0
  %18 = zext i8 %11 to i64
  br i1 %17, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %21 = load i16, ptr %20, align 2, !tbaa !78
  %22 = zext i16 %21 to i32
  br label %99

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 0
  %27 = zext i8 %14 to i64
  br i1 %26, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = icmp eq i8 %34, %14
  br i1 %35, label %60, label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %38 = load i16, ptr %37, align 2, !tbaa !78
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %27
  %41 = load i16, ptr %40, align 2, !tbaa !78
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  br label %99

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = icmp eq i8 %50, %14
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %18
  %54 = load i16, ptr %53, align 2, !tbaa !78
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %27
  %57 = load i16, ptr %56, align 2, !tbaa !78
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  br label %99

60:                                               ; preds = %48, %32, %10
  %61 = getelementptr inbounds i8, ptr %13, i64 1
  %62 = getelementptr inbounds i8, ptr %12, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %10, !llvm.loop !79

65:                                               ; preds = %60, %3
  %66 = phi ptr [ %5, %3 ], [ %62, %60 ]
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8, ptr %4, align 16, !tbaa !15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %99, label %78

72:                                               ; preds = %65
  %73 = zext i8 %67 to i64
  %74 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !78
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 0, %76
  br label %99

78:                                               ; preds = %94, %69
  %79 = phi i8 [ %97, %94 ], [ %70, %69 ]
  %80 = phi ptr [ %96, %94 ], [ %5, %69 ]
  %81 = phi ptr [ %95, %94 ], [ %4, %69 ]
  %82 = load i8, ptr %80, align 1, !tbaa !15
  %83 = icmp eq i8 %79, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %85 = zext i8 %79 to i64
  %86 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !78
  %88 = zext i16 %87 to i32
  %89 = zext i8 %82 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !78
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %88, %92
  br label %99

94:                                               ; preds = %78
  %95 = getelementptr inbounds i8, ptr %81, i64 1
  %96 = getelementptr inbounds i8, ptr %80, i64 1
  %97 = load i8, ptr %95, align 1, !tbaa !15
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %78, !llvm.loop !80

99:                                               ; preds = %94, %84, %72, %69, %52, %36, %19
  %100 = phi i32 [ %22, %19 ], [ %43, %36 ], [ %59, %52 ], [ %77, %72 ], [ %93, %84 ], [ 0, %69 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #35
  ret i32 %100
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ins_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [10 x [120 x i8]], align 16
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #35
  store i32 0, ptr %11, align 4, !tbaa !13
  call fastcc void @save_root_cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %44, %14
  %17 = phi i64 [ 0, %14 ], [ %45, %44 ]
  %18 = getelementptr inbounds [10 x [120 x i8]], ptr %10, i64 0, i64 %17
  %19 = call ptr @ichartosstr(ptr noundef nonnull %18, i32 noundef 0) #35
  %20 = load i32, ptr @pcount, align 4, !tbaa !13
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = zext nneg i32 %20 to i64
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %32, label %27, !llvm.loop !51

27:                                               ; preds = %24, %22
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %28
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %19) #36
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %24

32:                                               ; preds = %24, %16
  %33 = add nsw i32 %20, 1
  store i32 %33, ptr @pcount, align 4, !tbaa !13
  %34 = sext i32 %20 to i64
  %35 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %34
  %36 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %19) #35
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #36
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 %38, ptr @maxposslen, align 4, !tbaa !13
  br label %42

42:                                               ; preds = %41, %32
  %43 = icmp sgt i32 %20, 98
  br i1 %43, label %47, label %44

44:                                               ; preds = %42, %27
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, %15
  br i1 %46, label %47, label %16, !llvm.loop !81

47:                                               ; preds = %44, %42, %9
  %48 = phi i32 [ 0, %9 ], [ -1, %42 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %10) #35
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local void @askmode() local_unnamed_addr #0 {
  %1 = load i32, ptr @fflag, align 4, !tbaa !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %5 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %6 = tail call ptr @freopen(ptr noundef %4, ptr noundef nonnull @.str.38, ptr noundef %5) #35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef %10) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

12:                                               ; preds = %3, %0
  %13 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.43)
  br label %17

17:                                               ; preds = %15, %12
  store i32 0, ptr @contextoffset, align 4, !tbaa !13
  br label %18

18:                                               ; preds = %138, %17
  %19 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %20 = tail call i32 @fflush(ptr noundef %19)
  %21 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr @infile1, align 8, !tbaa !7
  br i1 %22, label %24, label %27

24:                                               ; preds = %18
  %25 = tail call ptr @xgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %23) #35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %143, label %30

27:                                               ; preds = %18
  %28 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %23)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %143, label %30

30:                                               ; preds = %27, %24
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #36
  %32 = trunc i64 %31 to i32
  %33 = shl i64 %31, 32
  %34 = add i64 %33, -4294967296
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = add nsw i32 %32, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !15
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi i32 [ %40, %39 ], [ %32, %30 ]
  %45 = icmp eq i32 %44, 4095
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = add nsw i32 %44, -1
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = zext nneg i32 %44 to i64
  br label %53

53:                                               ; preds = %73, %46
  %54 = phi i64 [ %52, %46 ], [ %75, %73 ]
  %55 = phi i32 [ %51, %46 ], [ %71, %73 ]
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %57
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %57
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65, %61, %53
  %70 = load ptr, ptr @infile1, align 8, !tbaa !7
  %71 = tail call i32 @getc(ptr noundef %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = trunc i32 %71 to i8
  %75 = add nuw nsw i64 %54, 1
  %76 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %54
  store i8 %74, ptr %76, align 1, !tbaa !15
  %77 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %75
  store i8 0, ptr %77, align 1, !tbaa !15
  %78 = icmp eq i64 %75, 8191
  br i1 %78, label %83, label %53, !llvm.loop !82

79:                                               ; preds = %69
  %80 = trunc i64 %54 to i32
  br label %83

81:                                               ; preds = %65
  %82 = trunc i64 %54 to i32
  br label %83

83:                                               ; preds = %81, %79, %73, %43
  %84 = phi i32 [ %44, %43 ], [ %80, %79 ], [ %82, %81 ], [ 8191, %73 ]
  %85 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @outfile1, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %88) #35
  br label %128

89:                                               ; preds = %83
  %90 = load i8, ptr @contextbufs, align 16
  switch i8 %90, label %125 [
    i8 64, label %91
    i8 42, label %91
    i8 38, label %97
    i8 35, label %100
    i8 33, label %101
    i8 37, label %102
    i8 45, label %103
    i8 43, label %104
    i8 126, label %113
    i8 94, label %116
  ]

91:                                               ; preds = %89, %89
  %92 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #35
  %93 = tail call ptr @ichartosstr(ptr noundef %92, i32 noundef 1) #35
  %94 = load i8, ptr @contextbufs, align 16, !tbaa !15
  %95 = icmp eq i8 %94, 42
  %96 = zext i1 %95 to i32
  tail call void @treeinsert(ptr noundef %93, i32 noundef 184, i32 noundef %96) #35
  br label %128

97:                                               ; preds = %89
  %98 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #35
  tail call void @lowcase(ptr noundef %98) #35
  %99 = tail call ptr @ichartosstr(ptr noundef %98, i32 noundef 1) #35
  tail call void @treeinsert(ptr noundef %99, i32 noundef 184, i32 noundef 1) #35
  br label %128

100:                                              ; preds = %89
  tail call void @treeoutput() #35
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %128

101:                                              ; preds = %89
  store i32 1, ptr @terse, align 4, !tbaa !13
  br label %128

102:                                              ; preds = %89
  store i32 0, ptr @terse, align 4, !tbaa !13
  br label %128

103:                                              ; preds = %89
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @tflag, align 4, !tbaa !13
  br label %128

104:                                              ; preds = %89
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %105 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.41, i64 6)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.42, i64 6)
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, ptr @tflag, align 4, !tbaa !13
  br label %128

113:                                              ; preds = %89
  %114 = tail call i32 @findfiletype(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 1, ptr noundef null) #35
  %115 = tail call i32 @llvm.smax.i32(i32 %114, i32 0)
  store i32 %115, ptr @defdupchar, align 4
  br label %128

116:                                              ; preds = %116, %89
  %117 = phi ptr [ %121, %116 ], [ @contextbufs, %89 ]
  %118 = phi ptr [ %119, %116 ], [ getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), %89 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = load i8, ptr %118, align 1, !tbaa !15
  %121 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %120, ptr %117, align 1, !tbaa !15
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %123, label %116, !llvm.loop !83

123:                                              ; preds = %116
  store i32 1, ptr @contextoffset, align 4, !tbaa !13
  %124 = add nsw i32 %84, -1
  br label %125

125:                                              ; preds = %123, %89
  %126 = phi i32 [ %124, %123 ], [ %84, %89 ]
  %127 = load ptr, ptr @outfile1, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %127) #35
  br label %128

128:                                              ; preds = %125, %113, %110, %103, %102, %101, %100, %97, %91, %87
  %129 = phi i32 [ %84, %87 ], [ %84, %91 ], [ %84, %97 ], [ %84, %100 ], [ %84, %101 ], [ %84, %102 ], [ %84, %103 ], [ %84, %110 ], [ %84, %113 ], [ %126, %125 ]
  %130 = load i32, ptr @contextoffset, align 4
  %131 = add nsw i32 %130, %129
  %132 = select i1 %38, i32 0, i32 %131
  store i32 %132, ptr @contextoffset, align 4, !tbaa !13
  %133 = load i32, ptr @sflag, align 4, !tbaa !13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  tail call void @stop() #35
  %136 = load i32, ptr @fflag, align 4, !tbaa !13
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %139, %135, %128
  br label %18, !llvm.loop !84

139:                                              ; preds = %135
  %140 = load ptr, ptr @outfile1, align 8, !tbaa !7
  tail call void @rewind(ptr noundef %140)
  %141 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %142 = tail call i32 (ptr, i32, ...) @creat(ptr noundef %141, i32 noundef 438) #35
  br label %138

143:                                              ; preds = %27, %24
  ret void
}

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

declare i32 @creat(...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @copyout(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %20, %2
  %5 = phi i32 [ %6, %20 ], [ %1, %2 ]
  %6 = add nsw i32 %5, -1
  %7 = load ptr, ptr %0, align 8, !tbaa !7
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = sext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @aflag, align 4, !tbaa !13
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr @lflag, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @outfile, align 8, !tbaa !7
  %19 = tail call i32 @putc(i32 noundef %9, ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %0, align 8, !tbaa !7
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr %0, align 8, !tbaa !7
  %23 = icmp sgt i32 %5, 1
  br i1 %23, label %4, label %24, !llvm.loop !85

24:                                               ; preds = %20, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @skipoverword(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %39, %1
  %5 = phi ptr [ null, %1 ], [ %41, %39 ]
  %6 = phi ptr [ %0, %1 ], [ %42, %39 ]
  %7 = load i1, ptr @TeX_comment, align 4
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i32, ptr @save_math_mode, align 4, !tbaa !13
  store i32 %9, ptr @math_mode, align 4, !tbaa !13
  %10 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i8 %10, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 false, ptr @TeX_comment, align 4
  br label %45

11:                                               ; preds = %39, %1
  %12 = phi i8 [ %43, %39 ], [ %2, %1 ]
  %13 = phi ptr [ %42, %39 ], [ %0, %1 ]
  %14 = phi ptr [ %41, %39 ], [ null, %1 ]
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @stringcharlen(ptr noundef nonnull %13, i32 noundef 0) #35
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  br label %39

24:                                               ; preds = %19, %11
  %25 = load i8, ptr %13, align 1, !tbaa !15
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %26
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %14, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %13, i64 -1
  %38 = icmp eq ptr %14, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %34, %24, %22
  %40 = phi i64 [ %23, %22 ], [ 1, %24 ], [ 1, %34 ], [ 1, %36 ]
  %41 = phi ptr [ null, %22 ], [ null, %24 ], [ %13, %34 ], [ %14, %36 ]
  %42 = getelementptr inbounds i8, ptr %13, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %4, label %11, !llvm.loop !86

45:                                               ; preds = %36, %30, %8, %4
  %46 = phi ptr [ %5, %4 ], [ %5, %8 ], [ %14, %36 ], [ %14, %30 ]
  %47 = phi ptr [ %6, %4 ], [ %6, %8 ], [ %13, %36 ], [ %13, %30 ]
  %48 = icmp eq ptr %46, null
  %49 = select i1 %48, ptr %47, ptr %46
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define dso_local void @checkline(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr @contextbufs, ptr @currentchar, align 8, !tbaa !7
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #36
  %4 = shl i64 %3, 32
  %5 = add i64 %4, -4294967296
  %6 = ashr exact i64 %5, 32
  %7 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 0, ptr %7, align 1, !tbaa !15
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr @tflag, align 4, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %11
  %15 = load i8, ptr @contextbufs, align 16, !tbaa !15
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !15
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.1.6, i64 4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21, %18
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 5) #35
  %25 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = icmp sgt i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = tail call ptr @__ctype_b_loc() #39
  br label %30

30:                                               ; preds = %38, %28
  %31 = phi i8 [ %26, %28 ], [ %40, %38 ]
  %32 = load ptr, ptr %29, align 8, !tbaa !7
  %33 = zext nneg i8 %31 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !78
  %36 = and i16 %35, 8192
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %39 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp sgt i8 %40, 0
  br i1 %41, label %30, label %42, !llvm.loop !87

42:                                               ; preds = %38, %30, %24, %21, %14
  %43 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !15
  %46 = icmp eq i8 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.2.7, i64 noundef 3) #36
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.3.8, i64 noundef 3) #36
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.4.9, i64 noundef 3) #36
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %54, %51, %47
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 4) #35
  %58 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = icmp sgt i8 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = tail call ptr @__ctype_b_loc() #39
  br label %63

63:                                               ; preds = %71, %61
  %64 = phi i8 [ %59, %61 ], [ %73, %71 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !7
  %66 = zext nneg i8 %64 to i64
  %67 = getelementptr inbounds i16, ptr %65, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !78
  %69 = and i16 %68, 8192
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %72 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = icmp sgt i8 %73, 0
  br i1 %74, label %63, label %75, !llvm.loop !88

75:                                               ; preds = %71, %63, %57
  %76 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %91, %75
  %80 = phi i1 [ %94, %91 ], [ %78, %75 ]
  %81 = phi i8 [ %93, %91 ], [ %77, %75 ]
  %82 = icmp sgt i8 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = tail call ptr @__ctype_b_loc() #39
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = zext nneg i8 %81 to i64
  %87 = getelementptr inbounds i16, ptr %85, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !78
  %89 = and i16 %88, 8192
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83, %79
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %92 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %93 = load i8, ptr %92, align 1, !tbaa !15
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %79, !llvm.loop !89

95:                                               ; preds = %83
  br i1 %80, label %96, label %103

96:                                               ; preds = %95, %91, %75
  %97 = load i32, ptr @lflag, align 4, !tbaa !13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %824

99:                                               ; preds = %96
  %100 = load i32, ptr @aflag, align 4, !tbaa !13
  %101 = icmp ne i32 %100, 0
  %102 = or i1 %9, %101
  br i1 %102, label %822, label %824

103:                                              ; preds = %95, %54, %42, %11
  %104 = load i32, ptr @tflag, align 4, !tbaa !13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %142, %107, %103
  br label %150

107:                                              ; preds = %103
  %108 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %109 = load i8, ptr %108, align 1, !tbaa !15
  %110 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !15
  %111 = icmp eq i8 %109, %110
  br i1 %111, label %112, label %106

112:                                              ; preds = %107
  %113 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %143, label %116

116:                                              ; preds = %137, %112
  %117 = phi i1 [ %141, %137 ], [ %115, %112 ]
  %118 = phi i8 [ %140, %137 ], [ %114, %112 ]
  %119 = icmp sgt i8 %118, -1
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = tail call ptr @__ctype_b_loc() #39
  %122 = load ptr, ptr %121, align 8, !tbaa !7
  %123 = zext nneg i8 %118 to i64
  %124 = getelementptr inbounds i16, ptr %122, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !78
  %126 = and i16 %125, 8192
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %120, %116
  %129 = load i32, ptr @aflag, align 4, !tbaa !13
  %130 = icmp ne i32 %129, 0
  %131 = load i32, ptr @lflag, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = sext i8 %118 to i32
  %136 = tail call i32 @putc(i32 noundef %135, ptr noundef %0)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr @currentchar, align 8, !tbaa !7
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %116, !llvm.loop !90

142:                                              ; preds = %120
  br i1 %117, label %143, label %106

143:                                              ; preds = %142, %137, %112
  %144 = load i32, ptr @lflag, align 4, !tbaa !13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %824

146:                                              ; preds = %143
  %147 = load i32, ptr @aflag, align 4, !tbaa !13
  %148 = icmp ne i32 %147, 0
  %149 = or i1 %9, %148
  br i1 %149, label %822, label %824

150:                                              ; preds = %812, %106
  %151 = load ptr, ptr @currentchar, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %151, ptr %2, align 8, !tbaa !7
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %617, label %154

154:                                              ; preds = %550, %150
  %155 = phi i8 [ %552, %550 ], [ %152, %150 ]
  %156 = phi ptr [ %551, %550 ], [ %151, %150 ]
  %157 = zext i8 %155 to i64
  %158 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !15
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = tail call i32 @stringcharlen(ptr noundef nonnull %156, i32 noundef 0) #35
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161, %154
  %165 = load i8, ptr %156, align 1, !tbaa !15
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !15
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %164, %161
  %171 = load i8, ptr %156, align 1, !tbaa !15
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !15
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32, ptr @tflag, align 4, !tbaa !13
  %178 = icmp ne i32 %177, 0
  %179 = load i32, ptr @math_mode, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %178, i1 %181, i1 false
  br i1 %182, label %183, label %617

183:                                              ; preds = %176, %170, %164
  %184 = load i32, ptr @tflag, align 4, !tbaa !13
  %185 = icmp eq i32 %184, 0
  %186 = load i8, ptr %156, align 1, !tbaa !15
  br i1 %185, label %537, label %187

187:                                              ; preds = %183
  %188 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1, !tbaa !15
  %189 = icmp eq i8 %186, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i1, ptr @TeX_comment, align 4
  br i1 %191, label %533, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr @math_mode, align 4, !tbaa !13
  store i32 %193, ptr @save_math_mode, align 4, !tbaa !13
  %194 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i8 %194, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 true, ptr @TeX_comment, align 4
  br label %533

195:                                              ; preds = %187
  %196 = load i32, ptr @math_mode, align 4, !tbaa !13
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %450, label %199

199:                                              ; preds = %195
  %200 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %201 = icmp eq i8 %200, 101
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2), !range !21
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %437

205:                                              ; preds = %202, %199
  %206 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %207 = icmp eq i8 %206, 109
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2), !range !21
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %437

211:                                              ; preds = %208, %205
  %212 = load ptr, ptr %2, align 8, !tbaa !7
  %213 = load i8, ptr %212, align 1, !tbaa !15
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %615, label %215

215:                                              ; preds = %211
  %216 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  %217 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %218 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1
  %219 = icmp eq i8 %213, %216
  %220 = icmp eq i8 %213, %217
  %221 = select i1 %219, i1 true, i1 %220
  %222 = icmp eq i8 %213, %218
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %235, label %230

224:                                              ; preds = %230
  %225 = icmp eq i8 %233, %216
  %226 = icmp eq i8 %233, %217
  %227 = select i1 %225, i1 true, i1 %226
  %228 = icmp eq i8 %233, %218
  %229 = select i1 %227, i1 true, i1 %228
  br i1 %229, label %235, label %230, !llvm.loop !91

230:                                              ; preds = %224, %215
  %231 = phi ptr [ %232, %224 ], [ %212, %215 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %615, label %224, !llvm.loop !91

235:                                              ; preds = %224, %215
  %236 = phi i1 [ false, %215 ], [ %234, %224 ]
  %237 = phi ptr [ %212, %215 ], [ %232, %224 ]
  %238 = phi i1 [ %220, %215 ], [ %226, %224 ]
  %239 = phi i1 [ %222, %215 ], [ %228, %224 ]
  store ptr %237, ptr %2, align 8, !tbaa !7
  br i1 %236, label %617, label %240

240:                                              ; preds = %235
  br i1 %238, label %241, label %246

241:                                              ; preds = %240
  %242 = getelementptr inbounds i8, ptr %237, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = icmp eq i8 %243, %217
  br i1 %244, label %245, label %434

245:                                              ; preds = %241
  store ptr %242, ptr %2, align 8, !tbaa !7
  br label %434

246:                                              ; preds = %240
  br i1 %239, label %247, label %252

247:                                              ; preds = %246
  %248 = load i1, ptr @TeX_comment, align 4
  br i1 %248, label %434, label %249

249:                                              ; preds = %247
  %250 = load i32, ptr @math_mode, align 4, !tbaa !13
  store i32 %250, ptr @save_math_mode, align 4, !tbaa !13
  %251 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i8 %251, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 true, ptr @TeX_comment, align 4
  br label %434

252:                                              ; preds = %246
  %253 = getelementptr inbounds i8, ptr %237, i64 1
  store ptr %253, ptr %2, align 8, !tbaa !7
  %254 = load i8, ptr %253, align 1, !tbaa !15
  %255 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 1), align 2, !tbaa !15
  %256 = icmp eq i8 %254, %255
  %257 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %258 = icmp eq i8 %254, %257
  %259 = select i1 %256, i1 true, i1 %258
  br i1 %259, label %434, label %260

260:                                              ; preds = %252
  %261 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(5) @.str.28.10, i64 noundef 4) #36
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %260
  %264 = getelementptr inbounds i8, ptr %237, i64 5
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = icmp sgt i8 %265, -1
  br i1 %266, label %267, label %320

267:                                              ; preds = %263
  %268 = tail call ptr @__ctype_b_loc() #39
  %269 = load ptr, ptr %268, align 8, !tbaa !7
  %270 = zext nneg i8 %265 to i64
  %271 = getelementptr inbounds i16, ptr %269, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !78
  %273 = and i16 %272, 1024
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %320, label %275

275:                                              ; preds = %267, %260
  %276 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(8) @.str.29, i64 noundef 7) #36
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275
  %279 = getelementptr inbounds i8, ptr %237, i64 8
  %280 = load i8, ptr %279, align 1, !tbaa !15
  %281 = icmp sgt i8 %280, -1
  br i1 %281, label %282, label %320

282:                                              ; preds = %278
  %283 = tail call ptr @__ctype_b_loc() #39
  %284 = load ptr, ptr %283, align 8, !tbaa !7
  %285 = zext nneg i8 %280 to i64
  %286 = getelementptr inbounds i16, ptr %284, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !78
  %288 = and i16 %287, 1024
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %320, label %290

290:                                              ; preds = %282, %275
  %291 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(5) @.str.30.11, i64 noundef 4) #36
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %290
  %294 = getelementptr inbounds i8, ptr %237, i64 5
  %295 = load i8, ptr %294, align 1, !tbaa !15
  %296 = icmp sgt i8 %295, -1
  br i1 %296, label %297, label %320

297:                                              ; preds = %293
  %298 = tail call ptr @__ctype_b_loc() #39
  %299 = load ptr, ptr %298, align 8, !tbaa !7
  %300 = zext nneg i8 %295 to i64
  %301 = getelementptr inbounds i16, ptr %299, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !78
  %303 = and i16 %302, 1024
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %320, label %305

305:                                              ; preds = %297, %290
  %306 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(9) @.str.31, i64 noundef 8) #36
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, ptr %237, i64 9
  %310 = load i8, ptr %309, align 1, !tbaa !15
  %311 = icmp sgt i8 %310, -1
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = tail call ptr @__ctype_b_loc() #39
  %314 = load ptr, ptr %313, align 8, !tbaa !7
  %315 = zext nneg i8 %310 to i64
  %316 = getelementptr inbounds i16, ptr %314, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !78
  %318 = and i16 %317, 1024
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %312, %308, %297, %293, %282, %278, %267, %263
  %321 = load i32, ptr @math_mode, align 4, !tbaa !13
  %322 = add nsw i32 %321, 2
  store i32 %322, ptr @math_mode, align 4, !tbaa !13
  br label %397

323:                                              ; preds = %312, %305
  %324 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(7) @.str.32.12, i64 noundef 6) #36
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %323
  %327 = getelementptr inbounds i8, ptr %237, i64 7
  %328 = load i8, ptr %327, align 1, !tbaa !15
  %329 = icmp sgt i8 %328, -1
  br i1 %329, label %330, label %353

330:                                              ; preds = %326
  %331 = tail call ptr @__ctype_b_loc() #39
  %332 = load ptr, ptr %331, align 8, !tbaa !7
  %333 = zext nneg i8 %328 to i64
  %334 = getelementptr inbounds i16, ptr %332, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !78
  %336 = and i16 %335, 1024
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %330, %323
  %339 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(9) @.str.33.13, i64 noundef 8) #36
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %379

341:                                              ; preds = %338
  %342 = getelementptr inbounds i8, ptr %237, i64 9
  %343 = load i8, ptr %342, align 1, !tbaa !15
  %344 = icmp sgt i8 %343, -1
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = tail call ptr @__ctype_b_loc() #39
  %347 = load ptr, ptr %346, align 8, !tbaa !7
  %348 = zext nneg i8 %343 to i64
  %349 = getelementptr inbounds i16, ptr %347, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !78
  %351 = and i16 %350, 1024
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %353, label %379

353:                                              ; preds = %345, %341, %330, %326
  %354 = load i32, ptr @math_mode, align 4, !tbaa !13
  %355 = add nsw i32 %354, 2
  store i32 %355, ptr @math_mode, align 4, !tbaa !13
  %356 = load i8, ptr %253, align 1, !tbaa !15
  %357 = icmp eq i8 %356, 0
  %358 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %359 = icmp eq i8 %356, %358
  %360 = select i1 %357, i1 true, i1 %359
  %361 = icmp eq i8 %356, %217
  %362 = or i1 %361, %360
  br i1 %362, label %372, label %363

363:                                              ; preds = %363, %353
  %364 = phi ptr [ %365, %363 ], [ %253, %353 ]
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  store ptr %365, ptr %2, align 8, !tbaa !7
  %366 = load i8, ptr %365, align 1, !tbaa !15
  %367 = icmp eq i8 %366, 0
  %368 = icmp eq i8 %366, %358
  %369 = select i1 %367, i1 true, i1 %368
  %370 = icmp eq i8 %366, %217
  %371 = or i1 %370, %369
  br i1 %371, label %372, label %363, !llvm.loop !92

372:                                              ; preds = %363, %353
  %373 = load ptr, ptr %2, align 8, !tbaa !7
  %374 = load i8, ptr %373, align 1, !tbaa !15
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %373, i64 1
  store ptr %377, ptr %2, align 8, !tbaa !7
  br label %397

378:                                              ; preds = %372
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %397

379:                                              ; preds = %345, %338
  %380 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %253, ptr noundef nonnull dereferenceable(6) @.str.34.14, i64 noundef 5) #36
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %415

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %237, i64 6
  %384 = load i8, ptr %383, align 1, !tbaa !15
  %385 = icmp sgt i8 %384, -1
  br i1 %385, label %386, label %394

386:                                              ; preds = %382
  %387 = tail call ptr @__ctype_b_loc() #39
  %388 = load ptr, ptr %387, align 8, !tbaa !7
  %389 = zext nneg i8 %384 to i64
  %390 = getelementptr inbounds i16, ptr %388, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !78
  %392 = and i16 %391, 1024
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %394, label %415

394:                                              ; preds = %386, %382
  %395 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2), !range !21
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %415, label %434

397:                                              ; preds = %378, %376, %320
  %398 = load ptr, ptr %2, align 8, !tbaa !7
  %399 = load i8, ptr %398, align 1, !tbaa !15
  %400 = icmp eq i8 %399, 0
  %401 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %402 = icmp eq i8 %399, %401
  %403 = select i1 %400, i1 true, i1 %402
  %404 = icmp eq i8 %399, %217
  %405 = or i1 %404, %403
  br i1 %405, label %434, label %406

406:                                              ; preds = %406, %397
  %407 = phi ptr [ %408, %406 ], [ %398, %397 ]
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  %409 = load i8, ptr %408, align 1, !tbaa !15
  %410 = icmp eq i8 %409, 0
  %411 = icmp eq i8 %409, %401
  %412 = select i1 %410, i1 true, i1 %411
  %413 = icmp eq i8 %409, %217
  %414 = or i1 %413, %412
  br i1 %414, label %433, label %406, !llvm.loop !92

415:                                              ; preds = %394, %386, %379
  %416 = load ptr, ptr %2, align 8, !tbaa !7
  %417 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %416, ptr noundef nonnull dereferenceable(4) @.str.27.15, i64 noundef 3) #36
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %434

419:                                              ; preds = %415
  %420 = getelementptr inbounds i8, ptr %416, i64 3
  %421 = load i8, ptr %420, align 1, !tbaa !15
  %422 = icmp sgt i8 %421, -1
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = tail call ptr @__ctype_b_loc() #39
  %425 = load ptr, ptr %424, align 8, !tbaa !7
  %426 = zext nneg i8 %421 to i64
  %427 = getelementptr inbounds i16, ptr %425, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !78
  %429 = and i16 %428, 1024
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %423, %419
  %432 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2), !range !21
  br label %434

433:                                              ; preds = %406
  store ptr %408, ptr %2, align 8, !tbaa !7
  br label %434

434:                                              ; preds = %433, %431, %423, %415, %397, %394, %252, %249, %247, %245, %241
  %435 = phi i32 [ %432, %431 ], [ 1, %245 ], [ 1, %241 ], [ 0, %249 ], [ 0, %247 ], [ 1, %252 ], [ 1, %394 ], [ 1, %397 ], [ 0, %423 ], [ 0, %415 ], [ 1, %433 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %434, %208, %202
  %438 = load i32, ptr @math_mode, align 4, !tbaa !13
  %439 = add nsw i32 %438, -1
  store i32 %439, ptr @math_mode, align 4, !tbaa !13
  br label %440

440:                                              ; preds = %437, %434
  %441 = load i32, ptr @math_mode, align 4, !tbaa !13
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %533

443:                                              ; preds = %440
  %444 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load ptr, ptr @stderr, align 8, !tbaa !7
  %448 = tail call i64 @fwrite(ptr nonnull @.str.16.16, i64 37, i64 1, ptr %447) #37
  br label %449

449:                                              ; preds = %446, %443
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  br label %533

450:                                              ; preds = %195
  %451 = icmp sgt i32 %196, 1
  %452 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %453 = icmp eq i8 %186, %452
  %454 = select i1 %451, i1 %453, i1 false
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = shl i32 %196, 7
  %457 = and i32 %456, 16128
  %458 = icmp slt i32 %196, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = add nsw i32 %196, -1
  store i32 %460, ptr @math_mode, align 4, !tbaa !13
  br label %533

461:                                              ; preds = %455, %450
  %462 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %463 = icmp eq i8 %462, 109
  br i1 %463, label %489, label %464

464:                                              ; preds = %461
  %465 = icmp eq i32 %196, 0
  br i1 %465, label %495, label %466

466:                                              ; preds = %464
  %467 = shl i32 %196, 7
  %468 = and i32 %467, 16128
  %469 = icmp slt i32 %196, %468
  br i1 %469, label %495, label %470

470:                                              ; preds = %466
  %471 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %156, ptr noundef nonnull dereferenceable(5) @.str.17.17, i64 noundef 4) #36
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %485

473:                                              ; preds = %470
  %474 = getelementptr inbounds i8, ptr %156, i64 4
  %475 = load i8, ptr %474, align 1, !tbaa !15
  %476 = icmp sgt i8 %475, -1
  br i1 %476, label %477, label %485

477:                                              ; preds = %473
  %478 = tail call ptr @__ctype_b_loc() #39
  %479 = load ptr, ptr %478, align 8, !tbaa !7
  %480 = zext nneg i8 %475 to i64
  %481 = getelementptr inbounds i16, ptr %479, i64 %480
  %482 = load i16, ptr %481, align 2, !tbaa !78
  %483 = and i16 %482, 1024
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %477, %473, %470
  br label %486

486:                                              ; preds = %485, %477
  %487 = phi i32 [ %471, %485 ], [ 1, %477 ]
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %486, %461
  %490 = call fastcc i32 @TeX_LR_check(i32 noundef 0, ptr noundef nonnull %2), !range !21
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %533, label %492

492:                                              ; preds = %489
  %493 = load i32, ptr @math_mode, align 4, !tbaa !13
  %494 = add nsw i32 %493, -1
  store i32 %494, ptr @math_mode, align 4, !tbaa !13
  br label %533

495:                                              ; preds = %486, %466, %464
  %496 = icmp eq i8 %462, 98
  br i1 %496, label %497, label %503

497:                                              ; preds = %495
  %498 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %2), !range !21
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr @math_mode, align 4, !tbaa !13
  %502 = add nsw i32 %501, 1
  store i32 %502, ptr @math_mode, align 4, !tbaa !13
  br label %533

503:                                              ; preds = %497, %495
  %504 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %505 = icmp eq i8 %504, 114
  br i1 %505, label %506, label %527

506:                                              ; preds = %503
  %507 = load ptr, ptr %2, align 8, !tbaa !7
  %508 = load i8, ptr %507, align 1, !tbaa !15
  %509 = icmp eq i8 %508, 0
  %510 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %511 = icmp eq i8 %508, %510
  %512 = select i1 %509, i1 true, i1 %511
  %513 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %514 = icmp eq i8 %508, %513
  %515 = select i1 %512, i1 true, i1 %514
  br i1 %515, label %526, label %516

516:                                              ; preds = %516, %506
  %517 = phi ptr [ %518, %516 ], [ %507, %506 ]
  %518 = getelementptr inbounds i8, ptr %517, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !15
  %520 = icmp eq i8 %519, 0
  %521 = icmp eq i8 %519, %510
  %522 = select i1 %520, i1 true, i1 %521
  %523 = icmp eq i8 %519, %513
  %524 = select i1 %522, i1 true, i1 %523
  br i1 %524, label %525, label %516, !llvm.loop !93

525:                                              ; preds = %516
  store ptr %518, ptr %2, align 8, !tbaa !7
  br label %526

526:                                              ; preds = %525, %506
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %533

527:                                              ; preds = %503
  %528 = call fastcc i32 @TeX_math_begin(ptr noundef nonnull %2), !range !21
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr @math_mode, align 4, !tbaa !13
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr @math_mode, align 4, !tbaa !13
  br label %533

533:                                              ; preds = %530, %527, %526, %500, %492, %489, %459, %449, %440, %192, %190
  %534 = load ptr, ptr %2, align 8, !tbaa !7
  %535 = load i8, ptr %534, align 1, !tbaa !15
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %617, label %586

537:                                              ; preds = %183
  %538 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 3), align 1, !tbaa !15
  %539 = icmp eq i8 %186, %538
  br i1 %539, label %540, label %586

540:                                              ; preds = %537
  %541 = getelementptr inbounds i8, ptr %156, i64 1
  %542 = load i8, ptr %541, align 1, !tbaa !15
  switch i8 %542, label %572 [
    i8 102, label %543
    i8 115, label %554
  ]

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %156, i64 2
  %545 = load i8, ptr %544, align 1, !tbaa !15
  %546 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !15
  %547 = icmp eq i8 %545, %546
  %548 = select i1 %547, i64 5, i64 3
  %549 = getelementptr inbounds i8, ptr %156, i64 %548
  store ptr %549, ptr %2, align 8, !tbaa !7
  br label %550

550:                                              ; preds = %614, %612, %580, %575, %570, %559, %543
  %551 = load ptr, ptr %2, align 8, !tbaa !7
  %552 = load i8, ptr %551, align 1, !tbaa !15
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %617, label %154, !llvm.loop !94

554:                                              ; preds = %540
  %555 = getelementptr inbounds i8, ptr %156, i64 2
  store ptr %555, ptr %2, align 8, !tbaa !7
  %556 = load i8, ptr %555, align 1, !tbaa !15
  switch i8 %556, label %559 [
    i8 43, label %557
    i8 45, label %557
  ]

557:                                              ; preds = %554, %554
  %558 = getelementptr inbounds i8, ptr %156, i64 3
  store ptr %558, ptr %2, align 8, !tbaa !7
  br label %559

559:                                              ; preds = %557, %554
  %560 = load ptr, ptr %2, align 8, !tbaa !7
  %561 = getelementptr inbounds i8, ptr %560, i64 1
  store ptr %561, ptr %2, align 8, !tbaa !7
  %562 = tail call ptr @__ctype_b_loc() #39
  %563 = load ptr, ptr %562, align 8, !tbaa !7
  %564 = load i8, ptr %561, align 1, !tbaa !15
  %565 = sext i8 %564 to i64
  %566 = getelementptr inbounds i16, ptr %563, i64 %565
  %567 = load i16, ptr %566, align 2, !tbaa !78
  %568 = and i16 %567, 2048
  %569 = icmp eq i16 %568, 0
  br i1 %569, label %550, label %570

570:                                              ; preds = %559
  %571 = getelementptr inbounds i8, ptr %560, i64 2
  store ptr %571, ptr %2, align 8, !tbaa !7
  br label %550

572:                                              ; preds = %540
  %573 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !15
  %574 = icmp eq i8 %542, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %572
  %576 = getelementptr inbounds i8, ptr %156, i64 4
  store ptr %576, ptr %2, align 8, !tbaa !7
  br label %550

577:                                              ; preds = %572
  %578 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 4), align 4, !tbaa !15
  %579 = icmp eq i8 %542, %578
  br i1 %579, label %580, label %586

580:                                              ; preds = %577
  %581 = getelementptr inbounds i8, ptr %156, i64 2
  %582 = load i8, ptr %581, align 1, !tbaa !15
  %583 = icmp eq i8 %582, %573
  %584 = select i1 %583, i64 5, i64 3
  %585 = getelementptr inbounds i8, ptr %156, i64 %584
  store ptr %585, ptr %2, align 8, !tbaa !7
  br label %550

586:                                              ; preds = %577, %537, %533
  %587 = load ptr, ptr %2, align 8, !tbaa !7
  %588 = load i8, ptr %587, align 1, !tbaa !15
  %589 = icmp eq i8 %588, 48
  br i1 %589, label %590, label %612

590:                                              ; preds = %586
  %591 = getelementptr inbounds i8, ptr %587, i64 1
  %592 = load i8, ptr %591, align 1, !tbaa !15
  switch i8 %592, label %612 [
    i8 120, label %593
    i8 88, label %593
  ]

593:                                              ; preds = %590, %590
  %594 = load i32, ptr @terse, align 4, !tbaa !13
  %595 = icmp eq i32 %594, 0
  %596 = load i32, ptr @aflag, align 4
  %597 = icmp ne i32 %596, 0
  %598 = select i1 %595, i1 %597, i1 false
  br i1 %598, label %612, label %599

599:                                              ; preds = %593
  %600 = getelementptr inbounds i8, ptr %587, i64 2
  %601 = tail call ptr @__ctype_b_loc() #39
  %602 = load ptr, ptr %601, align 8, !tbaa !7
  br label %603

603:                                              ; preds = %603, %599
  %604 = phi ptr [ %600, %599 ], [ %611, %603 ]
  %605 = load i8, ptr %604, align 1, !tbaa !15
  %606 = sext i8 %605 to i64
  %607 = getelementptr inbounds i16, ptr %602, i64 %606
  %608 = load i16, ptr %607, align 2, !tbaa !78
  %609 = and i16 %608, 4096
  %610 = icmp eq i16 %609, 0
  %611 = getelementptr inbounds i8, ptr %604, i64 1
  br i1 %610, label %614, label %603, !llvm.loop !95

612:                                              ; preds = %593, %590, %586
  %613 = getelementptr inbounds i8, ptr %587, i64 1
  store ptr %613, ptr %2, align 8, !tbaa !7
  br label %550

614:                                              ; preds = %603
  store ptr %604, ptr %2, align 8, !tbaa !7
  br label %550

615:                                              ; preds = %230, %211
  %616 = phi ptr [ %232, %230 ], [ %212, %211 ]
  store ptr %616, ptr %2, align 8, !tbaa !7
  br label %617

617:                                              ; preds = %615, %550, %533, %235, %176, %150
  %618 = load ptr, ptr %2, align 8, !tbaa !7
  %619 = load i8, ptr %618, align 1, !tbaa !15
  %620 = icmp eq i8 %619, 0
  %621 = load i1, ptr @TeX_comment, align 4
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %623, label %626

623:                                              ; preds = %617
  %624 = load i32, ptr @save_math_mode, align 4, !tbaa !13
  store i32 %624, ptr @math_mode, align 4, !tbaa !13
  %625 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i8 %625, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 false, ptr @TeX_comment, align 4
  br label %626

626:                                              ; preds = %623, %617
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %627 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %628 = icmp eq ptr %618, %627
  br i1 %628, label %634, label %629

629:                                              ; preds = %626
  %630 = ptrtoint ptr %618 to i64
  %631 = ptrtoint ptr %627 to i64
  %632 = sub i64 %630, %631
  %633 = trunc i64 %632 to i32
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef %633) #35
  br label %634

634:                                              ; preds = %629, %626
  %635 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %636 = load i8, ptr %635, align 1, !tbaa !15
  %637 = icmp eq i8 %636, 0
  br i1 %637, label %815, label %643

638:                                              ; preds = %671
  %639 = load i1, ptr @TeX_comment, align 4
  br i1 %639, label %640, label %677

640:                                              ; preds = %638
  %641 = load i32, ptr @save_math_mode, align 4, !tbaa !13
  store i32 %641, ptr @math_mode, align 4, !tbaa !13
  %642 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i8 %642, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 false, ptr @TeX_comment, align 4
  br label %677

643:                                              ; preds = %671, %634
  %644 = phi i8 [ %675, %671 ], [ %636, %634 ]
  %645 = phi ptr [ %674, %671 ], [ %635, %634 ]
  %646 = phi ptr [ %673, %671 ], [ null, %634 ]
  %647 = zext i8 %644 to i64
  %648 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !15
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %656, label %651

651:                                              ; preds = %643
  %652 = tail call i32 @stringcharlen(ptr noundef nonnull %645, i32 noundef 0) #35
  %653 = icmp sgt i32 %652, 0
  br i1 %653, label %654, label %656

654:                                              ; preds = %651
  %655 = zext nneg i32 %652 to i64
  br label %671

656:                                              ; preds = %651, %643
  %657 = load i8, ptr %645, align 1, !tbaa !15
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !15
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %671

662:                                              ; preds = %656
  %663 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %658
  %664 = load i8, ptr %663, align 1, !tbaa !15
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %677, label %666

666:                                              ; preds = %662
  %667 = icmp eq ptr %646, null
  br i1 %667, label %671, label %668

668:                                              ; preds = %666
  %669 = getelementptr inbounds i8, ptr %645, i64 -1
  %670 = icmp eq ptr %646, %669
  br i1 %670, label %677, label %671

671:                                              ; preds = %668, %666, %656, %654
  %672 = phi i64 [ %655, %654 ], [ 1, %656 ], [ 1, %668 ], [ 1, %666 ]
  %673 = phi ptr [ null, %654 ], [ null, %656 ], [ %646, %668 ], [ %645, %666 ]
  %674 = getelementptr inbounds i8, ptr %645, i64 %672
  %675 = load i8, ptr %674, align 1, !tbaa !15
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %638, label %643, !llvm.loop !86

677:                                              ; preds = %668, %662, %640, %638
  %678 = phi ptr [ %673, %638 ], [ %673, %640 ], [ %646, %668 ], [ %646, %662 ]
  %679 = phi ptr [ %674, %638 ], [ %674, %640 ], [ %645, %668 ], [ %645, %662 ]
  %680 = icmp eq ptr %678, null
  %681 = select i1 %680, ptr %679, ptr %678
  %682 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %683 = icmp ult ptr %682, %681
  br i1 %683, label %684, label %695

684:                                              ; preds = %684, %677
  %685 = phi ptr [ %691, %684 ], [ @ctoken, %677 ]
  %686 = phi i64 [ %690, %684 ], [ 0, %677 ]
  %687 = phi ptr [ %688, %684 ], [ %682, %677 ]
  %688 = getelementptr inbounds i8, ptr %687, i64 1
  store ptr %688, ptr @currentchar, align 8, !tbaa !7
  %689 = load i8, ptr %687, align 1, !tbaa !15
  %690 = add nuw nsw i64 %686, 1
  store i8 %689, ptr %685, align 1, !tbaa !15
  %691 = getelementptr inbounds i8, ptr @ctoken, i64 %690
  %692 = icmp ult ptr %688, %681
  %693 = icmp ult i64 %686, 118
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %684, label %695, !llvm.loop !96

695:                                              ; preds = %684, %677
  %696 = phi ptr [ @ctoken, %677 ], [ %691, %684 ]
  store i8 0, ptr %696, align 1, !tbaa !15
  %697 = tail call i32 @strtoichar(ptr noundef nonnull @itoken, ptr noundef nonnull @ctoken, i32 noundef 100, i32 noundef 0) #35
  %698 = icmp ne i32 %697, 0
  %699 = load i32, ptr @cbench_print, align 4
  %700 = icmp ne i32 %699, 0
  %701 = select i1 %698, i1 %700, i1 false
  br i1 %701, label %702, label %705

702:                                              ; preds = %695
  %703 = load ptr, ptr @stderr, align 8, !tbaa !7
  %704 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %703, ptr noundef nonnull @.str.5.18, ptr noundef nonnull @ctoken, i32 noundef 463, ptr noundef nonnull @.str.6.19) #37
  br label %705

705:                                              ; preds = %702, %695
  %706 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #36
  %707 = trunc i64 %706 to i32
  %708 = load i32, ptr @lflag, align 4, !tbaa !13
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %724, label %710

710:                                              ; preds = %705
  %711 = load i32, ptr @minword, align 4, !tbaa !13
  %712 = icmp slt i32 %711, %707
  br i1 %712, label %713, label %806

713:                                              ; preds = %710
  %714 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %715 = icmp ne i32 %714, 0
  %716 = load i32, ptr @cflag, align 4
  %717 = icmp ne i32 %716, 0
  %718 = select i1 %715, i1 true, i1 %717
  br i1 %718, label %806, label %719

719:                                              ; preds = %713
  %720 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #35
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %806

722:                                              ; preds = %719
  %723 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7.20, ptr noundef nonnull @ctoken)
  br label %806

724:                                              ; preds = %705
  %725 = load i32, ptr @aflag, align 4, !tbaa !13
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %802, label %727

727:                                              ; preds = %724
  %728 = load i32, ptr @minword, align 4, !tbaa !13
  %729 = icmp slt i32 %728, %707
  br i1 %729, label %735, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr @terse, align 4, !tbaa !13
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %812

733:                                              ; preds = %730
  %734 = tail call i64 @fwrite(ptr nonnull @.str.8.21, i64 2, i64 1, ptr %0)
  br label %812

735:                                              ; preds = %727
  %736 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %755, label %738

738:                                              ; preds = %735
  %739 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !43
  %740 = icmp eq ptr %739, null
  %741 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16
  %742 = icmp eq ptr %741, null
  %743 = select i1 %740, i1 %742, i1 false
  %744 = load i32, ptr @terse, align 4, !tbaa !13
  %745 = icmp eq i32 %744, 0
  br i1 %743, label %746, label %749

746:                                              ; preds = %738
  br i1 %745, label %747, label %806

747:                                              ; preds = %746
  %748 = tail call i64 @fwrite(ptr nonnull @.str.8.21, i64 2, i64 1, ptr %0)
  br label %806

749:                                              ; preds = %738
  br i1 %745, label %750, label %806

750:                                              ; preds = %749
  %751 = load ptr, ptr @hits, align 16, !tbaa !49
  %752 = getelementptr inbounds %struct.dent, ptr %751, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !71
  %754 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9.22, ptr noundef %753)
  br label %806

755:                                              ; preds = %735
  %756 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #35
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %763, label %758

758:                                              ; preds = %755
  %759 = load i32, ptr @terse, align 4, !tbaa !13
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %806

761:                                              ; preds = %758
  %762 = tail call i64 @fwrite(ptr nonnull @.str.10.23, i64 2, i64 1, ptr %0)
  br label %806

763:                                              ; preds = %755
  tail call void @makepossibilities(ptr noundef nonnull @itoken) #35
  %764 = load i32, ptr @pcount, align 4, !tbaa !13
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %792, label %766

766:                                              ; preds = %763
  %767 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %768 = icmp eq i32 %767, 0
  %769 = select i1 %768, i32 63, i32 38
  %770 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %771 = ptrtoint ptr %770 to i64
  %772 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #36
  %773 = sub i64 sub (i64 0, i64 ptrtoint (ptr @contextbufs to i64)), %772
  %774 = add i64 %773, %771
  %775 = trunc i64 %774 to i32
  %776 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %777 = add nsw i32 %776, %775
  %778 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11.24, i32 noundef %769, ptr noundef nonnull @ctoken, i32 noundef %767, i32 noundef %777)
  br label %779

779:                                              ; preds = %784, %766
  %780 = phi i64 [ 0, %766 ], [ %788, %784 ]
  %781 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %780
  %782 = load i8, ptr %781, align 8, !tbaa !15
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %790, label %784

784:                                              ; preds = %779
  %785 = icmp eq i64 %780, 0
  %786 = select i1 %785, i32 58, i32 44
  %787 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12.25, i32 noundef %786, ptr noundef nonnull %781)
  %788 = add nuw nsw i64 %780, 1
  %789 = icmp eq i64 %788, 100
  br i1 %789, label %790, label %779, !llvm.loop !97

790:                                              ; preds = %784, %779
  %791 = tail call i32 @fputc(i32 10, ptr %0)
  br label %806

792:                                              ; preds = %763
  %793 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %794 = ptrtoint ptr %793 to i64
  %795 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #36
  %796 = sub i64 sub (i64 0, i64 ptrtoint (ptr @contextbufs to i64)), %795
  %797 = add i64 %796, %794
  %798 = trunc i64 %797 to i32
  %799 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %800 = add nsw i32 %799, %798
  %801 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14.26, ptr noundef nonnull @ctoken, i32 noundef %800)
  br label %806

802:                                              ; preds = %724
  %803 = load i32, ptr @quit, align 4, !tbaa !13
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  tail call void @correct(ptr noundef nonnull @ctoken, i32 noundef 120, ptr noundef nonnull @itoken, i32 noundef 120, ptr noundef nonnull @currentchar) #35
  br label %806

806:                                              ; preds = %805, %802, %792, %790, %761, %758, %750, %749, %747, %746, %722, %719, %713, %710
  %807 = load i32, ptr @aflag, align 4, !tbaa !13
  %808 = icmp ne i32 %807, 0
  %809 = load i32, ptr @lflag, align 4
  %810 = icmp ne i32 %809, 0
  %811 = select i1 %808, i1 true, i1 %810
  br i1 %811, label %812, label %813

812:                                              ; preds = %813, %806, %733, %730
  br label %150, !llvm.loop !98

813:                                              ; preds = %806
  %814 = tail call i32 @fputs(ptr nonnull @ctoken, ptr %0)
  br label %812

815:                                              ; preds = %634
  %816 = load i32, ptr @lflag, align 4, !tbaa !13
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  %819 = load i32, ptr @aflag, align 4, !tbaa !13
  %820 = icmp ne i32 %819, 0
  %821 = or i1 %9, %820
  br i1 %821, label %822, label %824

822:                                              ; preds = %818, %146, %99
  %823 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %824

824:                                              ; preds = %822, %818, %815, %146, %143, %99, %96
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @TeX_math_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %7 = icmp eq i8 %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %10 = icmp eq i8 %4, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !7
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = icmp eq i8 %15, 0
  %17 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %18 = icmp eq i8 %15, %17
  %19 = select i1 %16, i1 true, i1 %18
  %20 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %21 = icmp eq i8 %15, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %12, !llvm.loop !92

23:                                               ; preds = %12, %2
  %24 = load ptr, ptr %1, align 8, !tbaa !7
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = trunc i32 %0 to i8
  store i8 %28, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %174

29:                                               ; preds = %23
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %30 = load ptr, ptr %1, align 8, !tbaa !7
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %1, align 8, !tbaa !7
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.18.37, i64 noundef 8) #36
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.19.38, i64 noundef 8) #36
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(12) @.str.20.39, i64 noundef 11) #36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(8) @.str.21.40, i64 noundef 7) #36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(5) @.str.22.41, i64 noundef 4) #36
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43, %40, %37, %34, %29
  store ptr %30, ptr %1, align 8, !tbaa !7
  %47 = load i8, ptr %30, align 1, !tbaa !15
  %48 = icmp eq i8 %47, 0
  %49 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %50 = icmp eq i8 %47, %49
  %51 = select i1 %48, i1 true, i1 %50
  %52 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %53 = icmp eq i8 %47, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %174, label %55

55:                                               ; preds = %55, %46
  %56 = phi ptr [ %57, %55 ], [ %30, %46 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %1, align 8, !tbaa !7
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = icmp eq i8 %58, 0
  %60 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %61 = icmp eq i8 %58, %60
  %62 = select i1 %59, i1 true, i1 %61
  %63 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %64 = icmp eq i8 %58, %63
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %174, label %55, !llvm.loop !93

66:                                               ; preds = %43
  %67 = icmp eq i32 %0, 98
  br i1 %67, label %68, label %154

68:                                               ; preds = %66
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(8) @.str.23.42, i64 noundef 7) #36
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #36
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ 1, %74 ], [ 0, %71 ]
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(9) @.str.25.43, i64 noundef 8) #36
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %76, %79
  %81 = load i8, ptr %31, align 1, !tbaa !15
  %82 = icmp eq i8 %81, 0
  %83 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %84 = icmp eq i8 %81, %83
  %85 = select i1 %82, i1 true, i1 %84
  %86 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %87 = icmp eq i8 %81, %86
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %89, %75
  %90 = phi ptr [ %91, %89 ], [ %31, %75 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %91, ptr %1, align 8, !tbaa !7
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = icmp eq i8 %92, 0
  %94 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %95 = icmp eq i8 %92, %94
  %96 = select i1 %93, i1 true, i1 %95
  %97 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %98 = icmp eq i8 %92, %97
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %89, !llvm.loop !93

100:                                              ; preds = %89, %75
  %101 = load ptr, ptr %1, align 8, !tbaa !7
  %102 = load i8, ptr %101, align 1, !tbaa !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %174, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %105, ptr %1, align 8, !tbaa !7
  %106 = icmp eq i32 %80, 0
  br i1 %106, label %174, label %107

107:                                              ; preds = %104
  %108 = load i8, ptr %105, align 1, !tbaa !15
  %109 = icmp eq i8 %108, 0
  %110 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %111 = icmp eq i8 %108, %110
  %112 = select i1 %109, i1 true, i1 %111
  %113 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %114 = icmp eq i8 %108, %113
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %116, %107
  %117 = phi ptr [ %118, %116 ], [ %105, %107 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %118, ptr %1, align 8, !tbaa !7
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = icmp eq i8 %119, 0
  %121 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %122 = icmp eq i8 %119, %121
  %123 = select i1 %120, i1 true, i1 %122
  %124 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %125 = icmp eq i8 %119, %124
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %127, label %116, !llvm.loop !93

127:                                              ; preds = %116, %107
  %128 = load ptr, ptr %1, align 8, !tbaa !7
  %129 = load i8, ptr %128, align 1, !tbaa !15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %174, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %132, ptr %1, align 8, !tbaa !7
  %133 = icmp eq i32 %80, 1
  br i1 %133, label %174, label %134

134:                                              ; preds = %131
  %135 = load i8, ptr %132, align 1, !tbaa !15
  %136 = icmp eq i8 %135, 0
  %137 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %138 = icmp eq i8 %135, %137
  %139 = select i1 %136, i1 true, i1 %138
  %140 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %141 = icmp eq i8 %135, %140
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %174, label %143

143:                                              ; preds = %143, %134
  %144 = phi ptr [ %145, %143 ], [ %132, %134 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %145, ptr %1, align 8, !tbaa !7
  %146 = load i8, ptr %145, align 1, !tbaa !15
  %147 = icmp eq i8 %146, 0
  %148 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %149 = icmp eq i8 %146, %148
  %150 = select i1 %147, i1 true, i1 %149
  %151 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %152 = icmp eq i8 %146, %151
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %174, label %143, !llvm.loop !93

154:                                              ; preds = %66
  %155 = load i8, ptr %31, align 1, !tbaa !15
  %156 = icmp eq i8 %155, 0
  %157 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %158 = icmp eq i8 %155, %157
  %159 = select i1 %156, i1 true, i1 %158
  %160 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %161 = icmp eq i8 %155, %160
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %174, label %163

163:                                              ; preds = %163, %154
  %164 = phi ptr [ %165, %163 ], [ %31, %154 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %1, align 8, !tbaa !7
  %166 = load i8, ptr %165, align 1, !tbaa !15
  %167 = icmp eq i8 %166, 0
  %168 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %169 = icmp eq i8 %166, %168
  %170 = select i1 %167, i1 true, i1 %169
  %171 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %172 = icmp eq i8 %166, %171
  %173 = select i1 %170, i1 true, i1 %172
  br i1 %173, label %174, label %163, !llvm.loop !93

174:                                              ; preds = %163, %154, %143, %134, %131, %127, %104, %100, %55, %46, %27
  %175 = phi i32 [ 0, %27 ], [ 1, %46 ], [ 0, %100 ], [ 0, %104 ], [ 0, %127 ], [ 0, %131 ], [ 0, %134 ], [ 0, %154 ], [ 1, %55 ], [ 0, %143 ], [ 0, %163 ]
  ret i32 %175
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @TeX_LR_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %7 = icmp eq i8 %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %10 = icmp eq i8 %4, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !7
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = icmp eq i8 %15, 0
  %17 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %18 = icmp eq i8 %15, %17
  %19 = select i1 %16, i1 true, i1 %18
  %20 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %21 = icmp eq i8 %15, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %12, !llvm.loop !92

23:                                               ; preds = %12, %2
  %24 = load ptr, ptr %1, align 8, !tbaa !7
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8 109, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %103

28:                                               ; preds = %23
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %29 = load ptr, ptr %1, align 8, !tbaa !7
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr %1, align 8, !tbaa !7
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #36
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %28
  %34 = load i8, ptr %30, align 1, !tbaa !15
  %35 = icmp eq i8 %34, 0
  %36 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %37 = icmp eq i8 %34, %36
  %38 = select i1 %35, i1 true, i1 %37
  %39 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %40 = icmp eq i8 %34, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %42, %33
  %43 = phi ptr [ %44, %42 ], [ %30, %33 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %44, ptr %1, align 8, !tbaa !7
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = icmp eq i8 %45, 0
  %47 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %48 = icmp eq i8 %45, %47
  %49 = select i1 %46, i1 true, i1 %48
  %50 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %51 = icmp eq i8 %45, %50
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %42, !llvm.loop !93

53:                                               ; preds = %42, %33
  %54 = load ptr, ptr %1, align 8, !tbaa !7
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %58, ptr %1, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %57, %53
  %60 = icmp eq i32 %0, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %1, align 8, !tbaa !7
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  %65 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %66 = icmp eq i8 %63, %65
  %67 = select i1 %64, i1 true, i1 %66
  %68 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %69 = icmp eq i8 %63, %68
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %71, %61
  %72 = phi ptr [ %73, %71 ], [ %62, %61 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %73, ptr %1, align 8, !tbaa !7
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp eq i8 %74, 0
  %76 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %77 = icmp eq i8 %74, %76
  %78 = select i1 %75, i1 true, i1 %77
  %79 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %80 = icmp eq i8 %74, %79
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %71, !llvm.loop !93

82:                                               ; preds = %71, %61
  %83 = load i32, ptr @math_mode, align 4, !tbaa !13
  %84 = shl i32 %83, 7
  %85 = add i32 %84, 256
  %86 = and i32 %85, 16256
  %87 = add i32 %83, -126
  %88 = add i32 %87, %86
  store i32 %88, ptr @math_mode, align 4, !tbaa !13
  br label %103

89:                                               ; preds = %59
  %90 = load i32, ptr @math_mode, align 4, !tbaa !13
  %91 = shl i32 %90, 7
  %92 = and i32 %91, 16256
  %93 = sub nsw i32 %90, %92
  store i32 %93, ptr @math_mode, align 4, !tbaa !13
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !7
  %100 = tail call i64 @fwrite(ptr nonnull @.str.26.36, i64 36, i64 1, ptr %99) #37
  br label %101

101:                                              ; preds = %98, %95
  store i32 1, ptr @math_mode, align 4, !tbaa !13
  br label %103

102:                                              ; preds = %28
  store ptr %29, ptr %1, align 8, !tbaa !7
  br label %103

103:                                              ; preds = %102, %101, %89, %82, %27
  %104 = phi i32 [ 0, %27 ], [ 0, %102 ], [ 1, %89 ], [ 1, %101 ], [ 1, %82 ]
  ret i32 %104
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_math_begin(ptr nocapture noundef %0) unnamed_addr #14 {
  br label %2

2:                                                ; preds = %354, %1
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !15
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  %11 = icmp eq i8 %9, %10
  br i1 %11, label %17, label %332

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, %5
  br i1 %15, label %16, label %365

16:                                               ; preds = %12
  store ptr %13, ptr %0, align 8, !tbaa !7
  br label %365

17:                                               ; preds = %38, %7
  %18 = phi ptr [ %39, %38 ], [ %8, %7 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %0, align 8, !tbaa !7
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !15
  %22 = icmp eq i8 %20, %21
  %23 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  %24 = icmp eq i8 %20, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %365, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @__ctype_b_loc() #39
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = sext i8 %20 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !78
  %32 = and i16 %31, 1024
  %33 = icmp ne i16 %32, 0
  %34 = icmp eq i8 %20, 64
  %35 = or i1 %34, %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, ptr %18, i64 2
  br label %38

38:                                               ; preds = %63, %36
  %39 = phi ptr [ %37, %36 ], [ %65, %63 ]
  store ptr %39, ptr %0, align 8, !tbaa !7
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  %42 = icmp eq i8 %40, %41
  br i1 %42, label %17, label %332, !llvm.loop !99

43:                                               ; preds = %26
  %44 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.34.14, i64 noundef 5) #36
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %18, i64 6
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = zext nneg i8 %48 to i64
  %52 = getelementptr inbounds i16, ptr %28, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !78
  %54 = and i16 %53, 1024
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %46, %43
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %44, %56 ], [ 1, %50 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %0), !range !21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %365

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !7
  %65 = getelementptr inbounds i8, ptr %64, i64 -1
  br label %38

66:                                               ; preds = %57
  %67 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.27.15, i64 noundef 3) #36
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %18, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !15
  %72 = icmp sgt i8 %71, -1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = zext nneg i8 %71 to i64
  %75 = getelementptr inbounds i16, ptr %28, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !78
  %77 = and i16 %76, 1024
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %69, %66
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %67, %79 ], [ 1, %73 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %252, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.35.27, i64 noundef 6) #36
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %18, i64 7
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = zext nneg i8 %88 to i64
  %92 = getelementptr inbounds i16, ptr %28, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !78
  %94 = and i16 %93, 1024
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %86, %83
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i32 [ %84, %96 ], [ 1, %90 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %252, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.36.28, i64 noundef 6) #36
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = getelementptr inbounds i8, ptr %18, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = icmp sgt i8 %105, -1
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = zext nneg i8 %105 to i64
  %109 = getelementptr inbounds i16, ptr %28, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !78
  %111 = and i16 %110, 1024
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %103, %100
  br label %114

114:                                              ; preds = %113, %107
  %115 = phi i32 [ %101, %113 ], [ 1, %107 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %252, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(5) @.str.37.29, i64 noundef 4) #36
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %18, i64 5
  %122 = load i8, ptr %121, align 1, !tbaa !15
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = zext nneg i8 %122 to i64
  %126 = getelementptr inbounds i16, ptr %28, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !78
  %128 = and i16 %127, 1024
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %120, %117
  br label %131

131:                                              ; preds = %130, %124
  %132 = phi i32 [ %118, %130 ], [ 1, %124 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %252, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.38.30, i64 noundef 3) #36
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, ptr %18, i64 4
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = icmp sgt i8 %139, -1
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = zext nneg i8 %139 to i64
  %143 = getelementptr inbounds i16, ptr %28, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !78
  %145 = and i16 %144, 1024
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %137, %134
  br label %148

148:                                              ; preds = %147, %141
  %149 = phi i32 [ %135, %147 ], [ 1, %141 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %252, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.32.12, i64 noundef 6) #36
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, ptr %18, i64 7
  %156 = load i8, ptr %155, align 1, !tbaa !15
  %157 = icmp sgt i8 %156, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = zext nneg i8 %156 to i64
  %160 = getelementptr inbounds i16, ptr %28, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !78
  %162 = and i16 %161, 1024
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158, %154, %151
  br label %165

165:                                              ; preds = %164, %158
  %166 = phi i32 [ %152, %164 ], [ 1, %158 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %252, label %168

168:                                              ; preds = %165
  %169 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.39.31, i64 noundef 5) #36
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = getelementptr inbounds i8, ptr %18, i64 6
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = icmp sgt i8 %173, -1
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = zext nneg i8 %173 to i64
  %177 = getelementptr inbounds i16, ptr %28, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !78
  %179 = and i16 %178, 1024
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175, %171, %168
  br label %182

182:                                              ; preds = %181, %175
  %183 = phi i32 [ %169, %181 ], [ 1, %175 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %252, label %185

185:                                              ; preds = %182
  %186 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.40, i64 noundef 5) #36
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %18, i64 6
  %190 = load i8, ptr %189, align 1, !tbaa !15
  %191 = icmp sgt i8 %190, -1
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = zext nneg i8 %190 to i64
  %194 = getelementptr inbounds i16, ptr %28, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !78
  %196 = and i16 %195, 1024
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %188, %185
  br label %199

199:                                              ; preds = %198, %192
  %200 = phi i32 [ %186, %198 ], [ 1, %192 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %252, label %202

202:                                              ; preds = %199
  %203 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(7) @.str.41.32, i64 noundef 6) #36
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, ptr %18, i64 7
  %207 = load i8, ptr %206, align 1, !tbaa !15
  %208 = icmp sgt i8 %207, -1
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = zext nneg i8 %207 to i64
  %211 = getelementptr inbounds i16, ptr %28, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !78
  %213 = and i16 %212, 1024
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209, %205, %202
  br label %216

216:                                              ; preds = %215, %209
  %217 = phi i32 [ %203, %215 ], [ 1, %209 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %252, label %219

219:                                              ; preds = %216
  %220 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.42.33, i32 noundef 7)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %252, label %222

222:                                              ; preds = %219
  %223 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.43.34, i32 noundef 11)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %252, label %225

225:                                              ; preds = %222
  %226 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.44, i32 noundef 13)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %225
  %229 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.45, i32 noundef 13)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %252, label %231

231:                                              ; preds = %228
  %232 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.46, i32 noundef 10)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %252, label %234

234:                                              ; preds = %231
  %235 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.47, i32 noundef 9)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %234
  %238 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.48, i32 noundef 13)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %237
  %241 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.49, i32 noundef 12)
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %240
  %244 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.50, i32 noundef 7)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.51, i32 noundef 11)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.52, i32 noundef 7)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %199, %182, %165, %148, %131, %114, %97, %80
  %253 = icmp eq i8 %20, 0
  %254 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %255 = icmp eq i8 %20, %254
  %256 = select i1 %253, i1 true, i1 %255
  %257 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %258 = icmp eq i8 %20, %257
  %259 = select i1 %256, i1 true, i1 %258
  br i1 %259, label %271, label %260

260:                                              ; preds = %260, %252
  %261 = phi ptr [ %262, %260 ], [ %19, %252 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %262, ptr %0, align 8, !tbaa !7
  %263 = load i8, ptr %262, align 1, !tbaa !15
  %264 = icmp eq i8 %263, 0
  %265 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %266 = icmp eq i8 %263, %265
  %267 = select i1 %264, i1 true, i1 %266
  %268 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %269 = icmp eq i8 %263, %268
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %271, label %260, !llvm.loop !93

271:                                              ; preds = %260, %252
  %272 = load ptr, ptr %0, align 8, !tbaa !7
  %273 = load i8, ptr %272, align 1, !tbaa !15
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %365

275:                                              ; preds = %271
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %365

276:                                              ; preds = %249
  %277 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.53, i32 noundef 4)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %294, label %279

279:                                              ; preds = %276
  %280 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.54, i32 noundef 10)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %279
  %283 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.55, i32 noundef 12)
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.56, i32 noundef 9)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.57, i32 noundef 11)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.58, i32 noundef 10)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %291, %288, %285, %282, %279, %276
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %0)
  %295 = load ptr, ptr %0, align 8, !tbaa !7
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %294
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %365

299:                                              ; preds = %294
  %300 = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %300, ptr %0, align 8, !tbaa !7
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %0)
  %301 = load ptr, ptr %0, align 8, !tbaa !7
  %302 = load i8, ptr %301, align 1, !tbaa !15
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %365

304:                                              ; preds = %299
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %365

305:                                              ; preds = %291
  %306 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %19, ptr noundef nonnull @.str.59, i32 noundef 4)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %305
  %309 = getelementptr inbounds i8, ptr %18, i64 5
  %310 = load i8, ptr %309, align 1, !tbaa !15
  %311 = getelementptr inbounds i8, ptr %18, i64 6
  br label %312

312:                                              ; preds = %312, %308
  %313 = phi ptr [ %311, %308 ], [ %318, %312 ]
  store ptr %313, ptr %0, align 8, !tbaa !7
  %314 = load i8, ptr %313, align 1, !tbaa !15
  %315 = icmp eq i8 %314, %310
  %316 = icmp eq i8 %314, 0
  %317 = or i1 %315, %316
  %318 = getelementptr inbounds i8, ptr %313, i64 1
  br i1 %317, label %365, label %312, !llvm.loop !100

319:                                              ; preds = %319, %305
  %320 = phi ptr [ %321, %319 ], [ %19, %305 ]
  %321 = getelementptr inbounds i8, ptr %320, i64 1
  store ptr %321, ptr %0, align 8, !tbaa !7
  %322 = load ptr, ptr %27, align 8, !tbaa !7
  %323 = load i8, ptr %321, align 1, !tbaa !15
  %324 = sext i8 %323 to i64
  %325 = getelementptr inbounds i16, ptr %322, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !78
  %327 = and i16 %326, 1024
  %328 = icmp ne i16 %327, 0
  %329 = icmp eq i8 %323, 64
  %330 = or i1 %329, %328
  br i1 %330, label %319, label %331, !llvm.loop !101

331:                                              ; preds = %319
  store ptr %320, ptr %0, align 8, !tbaa !7
  br label %365

332:                                              ; preds = %38, %7
  %333 = phi ptr [ %8, %7 ], [ %39, %38 ]
  %334 = phi i8 [ %9, %7 ], [ %40, %38 ]
  %335 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1, !tbaa !15
  %336 = icmp eq i8 %334, %335
  %337 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 6), align 1
  %338 = icmp eq i8 %334, %337
  %339 = select i1 %336, i1 true, i1 %338
  br i1 %339, label %340, label %365

340:                                              ; preds = %332
  %341 = getelementptr inbounds i8, ptr %333, i64 1
  %342 = load i8, ptr %341, align 1, !tbaa !15
  %343 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !15
  %344 = icmp eq i8 %342, %343
  br i1 %344, label %345, label %365

345:                                              ; preds = %340
  store ptr %341, ptr %0, align 8, !tbaa !7
  %346 = load i8, ptr %341, align 1, !tbaa !15
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %365, label %348

348:                                              ; preds = %361, %345
  %349 = phi ptr [ %362, %361 ], [ %341, %345 ]
  %350 = getelementptr inbounds i8, ptr %349, i64 1
  store ptr %350, ptr %0, align 8, !tbaa !7
  %351 = load i8, ptr %349, align 1, !tbaa !15
  %352 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !15
  %353 = icmp eq i8 %351, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %348
  %355 = load i8, ptr %350, align 1, !tbaa !15
  %356 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4, !tbaa !15
  %357 = icmp eq i8 %355, %356
  %358 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 7), align 4
  %359 = icmp eq i8 %355, %358
  %360 = select i1 %357, i1 true, i1 %359
  br i1 %360, label %2, label %361

361:                                              ; preds = %354, %348
  %362 = load ptr, ptr %0, align 8, !tbaa !7
  %363 = load i8, ptr %362, align 1, !tbaa !15
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %348, !llvm.loop !102

365:                                              ; preds = %361, %345, %340, %332, %331, %312, %304, %299, %298, %275, %271, %60, %17, %16, %12
  %366 = phi i32 [ 1, %16 ], [ 1, %12 ], [ 0, %332 ], [ 0, %340 ], [ 0, %271 ], [ 0, %275 ], [ 0, %298 ], [ 0, %299 ], [ 0, %304 ], [ 0, %331 ], [ 0, %345 ], [ 0, %361 ], [ 0, %312 ], [ 1, %17 ], [ 1, %60 ]
  ret i32 %366
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #15 {
  %4 = zext nneg i32 %2 to i64
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #36
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @__ctype_b_loc() #39
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = zext nneg i8 %9 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !78
  %17 = and i16 %16, 1024
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %7, %3
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %5, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TeX_skip_parens(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %6 = icmp eq i8 %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  %8 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %9 = icmp eq i8 %3, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %11, %1
  %12 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !7
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !93

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dumpmode() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4
  %2 = sext i8 %1 to i32
  switch i8 %1, label %5 [
    i8 92, label %3
    i8 91, label %3
    i8 62, label %3
    i8 58, label %3
    i8 45, label %3
    i8 44, label %3
    i8 35, label %3
  ]

3:                                                ; preds = %0, %0, %0, %0, %0, %0, %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %2)
  br label %13

5:                                                ; preds = %0
  %6 = add i8 %1, -127
  %7 = icmp ult i8 %6, -95
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %2, 255
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.61, i32 noundef %9)
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.62, i32 noundef %2)
  br label %13

13:                                               ; preds = %11, %8, %3
  %14 = load i32, ptr @numpflags, align 4, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  %18 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %19 = load i32, ptr @numpflags, align 4, !tbaa !13
  tail call fastcc void @tbldump(ptr noundef %18, i32 noundef %19)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr @numsflags, align 4, !tbaa !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %25 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %26 = load i32, ptr @numsflags, align 4, !tbaa !13
  tail call fastcc void @tbldump(ptr noundef %25, i32 noundef %26)
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tbldump(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %93

4:                                                ; preds = %89, %2
  %5 = phi i32 [ %7, %89 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %89 ], [ %0, %2 ]
  %7 = add nsw i32 %5, -1
  %8 = getelementptr inbounds %struct.flagent, ptr %6, i64 1
  %9 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 6
  %10 = load i16, ptr %9, align 8, !tbaa !103
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.7.64, ptr @.str.6.65
  %14 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !69
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 65
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.66, ptr noundef nonnull %13, i32 noundef %17)
  %19 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 5
  %20 = load i16, ptr %19, align 2, !tbaa !104
  %21 = icmp slt i16 %20, 1
  br i1 %21, label %67, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 7
  br label %24

24:                                               ; preds = %62, %22
  %25 = phi i32 [ 0, %22 ], [ %63, %62 ]
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 128, %24 ], [ %31, %27 ]
  %29 = phi i32 [ 0, %24 ], [ %40, %27 ]
  %30 = phi i32 [ 0, %24 ], [ %38, %27 ]
  %31 = add nsw i64 %28, -1
  %32 = getelementptr inbounds i8, ptr %23, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = sext i8 %33 to i32
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %31 to i32
  %38 = select i1 %36, i32 %37, i32 %30
  %39 = zext i1 %36 to i32
  %40 = add nuw nsw i32 %29, %39
  %41 = icmp ugt i64 %28, 1
  br i1 %41, label %27, label %42, !llvm.loop !105

42:                                               ; preds = %27
  switch i32 %40, label %44 [
    i32 1, label %51
    i32 128, label %43
  ]

43:                                               ; preds = %42
  br label %51

44:                                               ; preds = %42
  %45 = icmp ugt i32 %40, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.67)
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef 0)
  br label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %50 = tail call i32 @putc(i32 noundef 91, ptr noundef %49)
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef %26)
  br label %51

51:                                               ; preds = %48, %46, %43, %42
  %52 = phi i32 [ 93, %48 ], [ 93, %46 ], [ 46, %43 ], [ %38, %42 ]
  %53 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %54 = tail call i32 @putc(i32 noundef %52, ptr noundef %53)
  %55 = load i16, ptr %19, align 2, !tbaa !104
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = icmp slt i32 %25, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %61 = tail call i32 @putc(i32 noundef 32, ptr noundef %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = add nuw nsw i32 %25, 1
  %64 = load i16, ptr %19, align 2, !tbaa !104
  %65 = sext i16 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %24, label %70, !llvm.loop !106

67:                                               ; preds = %4
  %68 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %69 = tail call i32 @putc(i32 noundef 46, ptr noundef %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.68)
  %72 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %73 = tail call i32 @putc(i32 noundef 9, ptr noundef %72)
  %74 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !45
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %6, align 8, !tbaa !107
  %79 = tail call ptr @ichartosstr(ptr noundef %78, i32 noundef 1) #35
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.69, ptr noundef %79)
  br label %81

81:                                               ; preds = %77, %70
  %82 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 4
  %83 = load i16, ptr %82, align 4, !tbaa !47
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !108
  %88 = tail call ptr @ichartosstr(ptr noundef %87, i32 noundef 1) #35
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi ptr [ %88, %85 ], [ @.str.11.70, %81 ]
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) %90)
  %92 = icmp sgt i32 %5, 1
  br i1 %92, label %4, label %93, !llvm.loop !109

93:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @subsetdump(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  br label %4

4:                                                ; preds = %53, %3
  %5 = phi i32 [ 0, %3 ], [ %57, %53 ]
  %6 = phi ptr [ %0, %3 ], [ %56, %53 ]
  %7 = load i8, ptr %6, align 1, !tbaa !15
  %8 = sext i8 %7 to i32
  %9 = xor i32 %8, %2
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %4
  %13 = icmp slt i32 %5, 128
  br i1 %13, label %14, label %31

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %6, i64 1
  %16 = sub i32 127, %5
  %17 = zext i32 %16 to i64
  %18 = getelementptr i8, ptr %15, i64 %17
  br label %19

19:                                               ; preds = %27, %14
  %20 = phi i32 [ %29, %27 ], [ %5, %14 ]
  %21 = phi ptr [ %28, %27 ], [ %6, %14 ]
  %22 = load i8, ptr %21, align 1, !tbaa !15
  %23 = sext i8 %22 to i32
  %24 = xor i32 %23, %2
  %25 = and i32 %24, %1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = add i32 %20, 1
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %19, !llvm.loop !110

31:                                               ; preds = %27, %19, %12
  %32 = phi ptr [ %6, %12 ], [ %18, %27 ], [ %21, %19 ]
  %33 = phi i32 [ %5, %12 ], [ 128, %27 ], [ %20, %19 ]
  %34 = add nsw i32 %5, 1
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %38 = tail call i32 @putc(i32 noundef %5, ptr noundef %37)
  br label %53

39:                                               ; preds = %31
  %40 = add nsw i32 %5, 3
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = icmp slt i32 %5, %33
  br i1 %43, label %44, label %53

44:                                               ; preds = %44, %42
  %45 = phi i32 [ %48, %44 ], [ %5, %42 ]
  %46 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %47 = tail call i32 @putc(i32 noundef %45, ptr noundef %46)
  %48 = add i32 %45, 1
  %49 = icmp eq i32 %48, %33
  br i1 %49, label %53, label %44, !llvm.loop !111

50:                                               ; preds = %39
  %51 = add nsw i32 %33, -1
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13.71, i32 noundef %5, i32 noundef %51)
  br label %53

53:                                               ; preds = %50, %44, %42, %36, %4
  %54 = phi ptr [ %32, %36 ], [ %32, %50 ], [ %6, %4 ], [ %32, %42 ], [ %32, %44 ]
  %55 = phi i32 [ %33, %36 ], [ %33, %50 ], [ %5, %4 ], [ %33, %42 ], [ %33, %44 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  %57 = add nsw i32 %55, 1
  %58 = icmp slt i32 %55, 127
  br i1 %58, label %4, label %59, !llvm.loop !112

59:                                               ; preds = %53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @good(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #35
  %7 = load i8, ptr %0, align 1, !tbaa !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %5
  %10 = phi i8 [ %18, %9 ], [ %7, %5 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %5 ]
  %12 = phi ptr [ %17, %9 ], [ %6, %5 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %16, ptr %12, align 1, !tbaa !15
  %18 = load i8, ptr %13, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !113

20:                                               ; preds = %9, %5
  %21 = phi ptr [ %6, %5 ], [ %17, %9 ]
  store i8 0, ptr %21, align 1, !tbaa !15
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %6 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 0, ptr @numhits, align 4, !tbaa !13
  %26 = load i32, ptr @cflag, align 4, !tbaa !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = call ptr @ichartosstr(ptr noundef nonnull %0, i32 noundef 0) #35
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef %29)
  store ptr %0, ptr @orig_word, align 8, !tbaa !7
  br label %59

31:                                               ; preds = %20
  %32 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %31
  store ptr %32, ptr @hits, align 16, !tbaa !49
  %35 = icmp eq i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), i8 0, i64 16, i1 false)
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = call i32 @cap_ok(ptr noundef nonnull %0, ptr noundef nonnull @hits, i32 noundef %25), !range !21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %34
  store i32 1, ptr @numhits, align 4, !tbaa !13
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = or i32 %4, %3
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 5), align 2
  %48 = icmp sgt i16 %47, -1
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = sext i16 %47 to i64
  %52 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !63
  %54 = and i64 %51, 4294967295
  %55 = shl nuw i64 1, %54
  %56 = and i64 %53, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %59

59:                                               ; preds = %58, %50, %43, %40, %31, %28
  %60 = load i32, ptr @numhits, align 4, !tbaa !13
  %61 = icmp eq i32 %60, 0
  %62 = icmp ne i32 %2, 0
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  call void @chk_aff(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #35
  %65 = load i32, ptr @cflag, align 4, !tbaa !13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @stdout, align 8, !tbaa !7
  %69 = call i32 @putc(i32 noundef 10, ptr noundef %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, ptr @numhits, align 4, !tbaa !13
  br label %72

72:                                               ; preds = %70, %59
  %73 = phi i32 [ %71, %70 ], [ 1, %59 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #35
  ret i32 %73
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cap_ok(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #35
  %5 = tail call i64 @whatcap(ptr noundef %0) #35
  switch i64 %5, label %27 [
    i64 268435456, label %208
    i64 805306368, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !47
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !45
  %16 = sext i16 %15 to i64
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i64 [ %13, %10 ], [ 0, %6 ]
  %19 = phi i64 [ %16, %10 ], [ 0, %6 ]
  %20 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.flagent, ptr %21, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !47
  %26 = sext i16 %25 to i64
  br label %27

27:                                               ; preds = %23, %17, %3
  %28 = phi i64 [ 0, %3 ], [ %18, %17 ], [ %18, %23 ]
  %29 = phi i64 [ 0, %3 ], [ %19, %17 ], [ %19, %23 ]
  %30 = phi i64 [ 0, %3 ], [ 0, %17 ], [ %26, %23 ]
  %31 = icmp eq i64 %5, 536870912
  %32 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %34 = icmp eq i64 %5, 805306368
  %35 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %36 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %37 = getelementptr inbounds i8, ptr %0, i64 %28
  %38 = getelementptr inbounds i8, ptr %4, i64 %29
  %39 = icmp sgt i64 %28, 0
  %40 = icmp sgt i64 %28, 0
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = sub nsw i64 0, %28
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = sub nsw i64 0, %30
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 -1
  %48 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %49 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  br label %50

50:                                               ; preds = %204, %27
  %51 = phi ptr [ %1, %27 ], [ %52, %204 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds %struct.dent, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !63
  %55 = and i64 %54, 805306368
  %56 = icmp eq i64 %55, %5
  br i1 %56, label %82, label %57

57:                                               ; preds = %50
  %58 = icmp eq i64 %55, 0
  %59 = and i1 %31, %58
  br i1 %59, label %60, label %204

60:                                               ; preds = %57
  %61 = load ptr, ptr %32, align 8, !tbaa !43
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.flagent, ptr %61, i64 0, i32 2
  %65 = load i16, ptr %64, align 8, !tbaa !69
  %66 = sext i16 %65 to i64
  %67 = and i64 %66, 4294967295
  %68 = shl nuw i64 1, %67
  %69 = and i64 %68, %54
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %204, label %71

71:                                               ; preds = %63, %60
  %72 = load ptr, ptr %33, align 8, !tbaa !48
  %73 = icmp eq ptr %72, null
  br i1 %73, label %208, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.flagent, ptr %72, i64 0, i32 2
  %76 = load i16, ptr %75, align 8, !tbaa !69
  %77 = sext i16 %76 to i64
  %78 = and i64 %77, 4294967295
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %54
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %204, label %208

82:                                               ; preds = %50
  br i1 %34, label %105, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %35, align 8, !tbaa !43
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.flagent, ptr %84, i64 0, i32 2
  %88 = load i16, ptr %87, align 8, !tbaa !69
  %89 = sext i16 %88 to i64
  %90 = and i64 %89, 4294967295
  %91 = shl nuw i64 1, %90
  %92 = and i64 %91, %54
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %204, label %94

94:                                               ; preds = %86, %83
  %95 = load ptr, ptr %36, align 8, !tbaa !48
  %96 = icmp eq ptr %95, null
  br i1 %96, label %208, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.flagent, ptr %95, i64 0, i32 2
  %99 = load i16, ptr %98, align 8, !tbaa !69
  %100 = sext i16 %99 to i64
  %101 = and i64 %100, 4294967295
  %102 = shl nuw i64 1, %101
  %103 = and i64 %102, %54
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %204, label %208

105:                                              ; preds = %82
  %106 = getelementptr inbounds %struct.dent, ptr %52, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !71
  %108 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %107, i32 noundef 100, i32 noundef 1) #35
  %109 = load i8, ptr %38, align 1, !tbaa !15
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  br i1 %39, label %116, label %136

115:                                              ; preds = %105
  br i1 %40, label %126, label %136

116:                                              ; preds = %123, %114
  %117 = phi ptr [ %124, %123 ], [ %0, %114 ]
  %118 = load i8, ptr %117, align 1, !tbaa !15
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %204

123:                                              ; preds = %116
  %124 = getelementptr inbounds i8, ptr %117, i64 1
  %125 = icmp ult ptr %124, %37
  br i1 %125, label %116, label %136, !llvm.loop !114

126:                                              ; preds = %133, %115
  %127 = phi ptr [ %134, %133 ], [ %0, %115 ]
  %128 = load i8, ptr %127, align 1, !tbaa !15
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !15
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %204

133:                                              ; preds = %126
  %134 = getelementptr inbounds i8, ptr %127, i64 1
  %135 = icmp ult ptr %134, %37
  br i1 %135, label %126, label %136, !llvm.loop !115

136:                                              ; preds = %133, %123, %115, %114
  %137 = phi ptr [ %0, %114 ], [ %0, %115 ], [ %134, %133 ], [ %124, %123 ]
  br label %138

138:                                              ; preds = %142, %136
  %139 = phi ptr [ %145, %142 ], [ %137, %136 ]
  %140 = phi ptr [ %143, %142 ], [ %38, %136 ]
  %141 = icmp ult ptr %140, %46
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = load i8, ptr %140, align 1, !tbaa !15
  %145 = getelementptr inbounds i8, ptr %139, i64 1
  %146 = load i8, ptr %139, align 1, !tbaa !15
  %147 = icmp eq i8 %144, %146
  br i1 %147, label %138, label %204, !llvm.loop !116

148:                                              ; preds = %138
  %149 = load i8, ptr %47, align 1, !tbaa !15
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = icmp eq i8 %152, 0
  %154 = load i8, ptr %139, align 1, !tbaa !15
  %155 = icmp eq i8 %154, 0
  br i1 %153, label %157, label %156

156:                                              ; preds = %148
  br i1 %155, label %180, label %162

157:                                              ; preds = %148
  br i1 %155, label %180, label %173

158:                                              ; preds = %162
  %159 = getelementptr inbounds i8, ptr %164, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !15
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %180, label %162, !llvm.loop !117

162:                                              ; preds = %158, %156
  %163 = phi i8 [ %160, %158 ], [ %154, %156 ]
  %164 = phi ptr [ %159, %158 ], [ %139, %156 ]
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !15
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %158, label %204

169:                                              ; preds = %173
  %170 = getelementptr inbounds i8, ptr %175, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %180, label %173, !llvm.loop !118

173:                                              ; preds = %169, %157
  %174 = phi i8 [ %171, %169 ], [ %154, %157 ]
  %175 = phi ptr [ %170, %169 ], [ %139, %157 ]
  %176 = zext i8 %174 to i64
  %177 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !15
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %169, label %204

180:                                              ; preds = %169, %158, %157, %156
  %181 = load ptr, ptr %48, align 8, !tbaa !43
  %182 = icmp eq ptr %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %180
  %184 = load i64, ptr %53, align 8, !tbaa !63
  %185 = getelementptr inbounds %struct.flagent, ptr %181, i64 0, i32 2
  %186 = load i16, ptr %185, align 8, !tbaa !69
  %187 = sext i16 %186 to i64
  %188 = and i64 %187, 4294967295
  %189 = shl nuw i64 1, %188
  %190 = and i64 %189, %184
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %183, %180
  %193 = load ptr, ptr %49, align 8, !tbaa !48
  %194 = icmp eq ptr %193, null
  br i1 %194, label %208, label %195

195:                                              ; preds = %192
  %196 = load i64, ptr %53, align 8, !tbaa !63
  %197 = getelementptr inbounds %struct.flagent, ptr %193, i64 0, i32 2
  %198 = load i16, ptr %197, align 8, !tbaa !69
  %199 = sext i16 %198 to i64
  %200 = and i64 %199, 4294967295
  %201 = shl nuw i64 1, %200
  %202 = and i64 %201, %196
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195, %183, %173, %162, %142, %126, %116, %97, %86, %74, %63, %57
  %205 = load i64, ptr %53, align 8, !tbaa !63
  %206 = and i64 %205, 1073741824
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %50, !llvm.loop !119

208:                                              ; preds = %204, %195, %192, %97, %94, %74, %71, %3
  %209 = phi i32 [ 1, %3 ], [ 0, %204 ], [ 1, %74 ], [ 1, %71 ], [ 1, %97 ], [ 1, %94 ], [ 1, %195 ], [ 1, %192 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #35
  ret i32 %209
}

; Function Attrs: nounwind uwtable
define dso_local void @flagpr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #36
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  %19 = icmp sgt i32 %3, 0
  br i1 %18, label %21, label %20

20:                                               ; preds = %11
  br i1 %19, label %25, label %42

21:                                               ; preds = %11
  br i1 %19, label %35, label %42

22:                                               ; preds = %25
  %23 = getelementptr inbounds i8, ptr %26, i64 1
  %24 = icmp ult ptr %23, %13
  br i1 %24, label %25, label %42, !llvm.loop !120

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %23, %22 ], [ %7, %20 ]
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %184

32:                                               ; preds = %35
  %33 = getelementptr inbounds i8, ptr %36, i64 1
  %34 = icmp ult ptr %33, %13
  br i1 %34, label %35, label %42, !llvm.loop !121

35:                                               ; preds = %32, %21
  %36 = phi ptr [ %33, %32 ], [ %7, %21 ]
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %184

42:                                               ; preds = %32, %22, %21, %20, %6
  %43 = icmp sgt i32 %4, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = shl i64 %8, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  %48 = sext i32 %5 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr %50, align 1, !tbaa !15
  %58 = icmp eq i8 %57, 0
  br i1 %56, label %60, label %59

59:                                               ; preds = %44
  br i1 %58, label %83, label %65

60:                                               ; preds = %44
  br i1 %58, label %83, label %76

61:                                               ; preds = %65
  %62 = getelementptr inbounds i8, ptr %67, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %65, !llvm.loop !122

65:                                               ; preds = %61, %59
  %66 = phi i8 [ %63, %61 ], [ %57, %59 ]
  %67 = phi ptr [ %62, %61 ], [ %50, %59 ]
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %61, label %184

72:                                               ; preds = %76
  %73 = getelementptr inbounds i8, ptr %78, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76, !llvm.loop !123

76:                                               ; preds = %72, %60
  %77 = phi i8 [ %74, %72 ], [ %57, %60 ]
  %78 = phi ptr [ %73, %72 ], [ %50, %60 ]
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %72, label %184

83:                                               ; preds = %72, %61, %60, %59, %42
  %84 = load ptr, ptr @stdout, align 8, !tbaa !7
  %85 = tail call i32 @putc(i32 noundef 32, ptr noundef %84)
  %86 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %87 = sext i32 %3 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = icmp eq i8 %92, 0
  %94 = icmp sgt i32 %2, 0
  br i1 %93, label %96, label %95

95:                                               ; preds = %83
  br i1 %94, label %97, label %122

96:                                               ; preds = %83
  br i1 %94, label %108, label %122

97:                                               ; preds = %97, %95
  %98 = phi ptr [ %101, %97 ], [ %0, %95 ]
  %99 = phi i32 [ %100, %97 ], [ %2, %95 ]
  %100 = add nsw i32 %99, -1
  %101 = getelementptr inbounds i8, ptr %98, i64 1
  %102 = load i8, ptr %98, align 1, !tbaa !15
  %103 = zext i8 %102 to i32
  %104 = tail call ptr @printichar(i32 noundef %103) #35
  %105 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %106 = tail call i32 @fputs(ptr noundef %104, ptr noundef %105)
  %107 = icmp sgt i32 %99, 1
  br i1 %107, label %97, label %122, !llvm.loop !124

108:                                              ; preds = %108, %96
  %109 = phi ptr [ %112, %108 ], [ %0, %96 ]
  %110 = phi i32 [ %111, %108 ], [ %2, %96 ]
  %111 = add nsw i32 %110, -1
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  %113 = load i8, ptr %109, align 1, !tbaa !15
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i32
  %118 = tail call ptr @printichar(i32 noundef %117) #35
  %119 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %120 = tail call i32 @fputs(ptr noundef %118, ptr noundef %119)
  %121 = icmp sgt i32 %110, 1
  br i1 %121, label %108, label %122, !llvm.loop !125

122:                                              ; preds = %108, %97, %96, %95
  %123 = phi ptr [ %0, %96 ], [ %0, %95 ], [ %112, %108 ], [ %101, %97 ]
  %124 = add i32 %5, %3
  %125 = sub i32 %9, %124
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %127, %122
  %128 = phi ptr [ %138, %127 ], [ %123, %122 ]
  %129 = phi ptr [ %132, %127 ], [ %88, %122 ]
  %130 = phi i32 [ %131, %127 ], [ %125, %122 ]
  %131 = add nsw i32 %130, -1
  %132 = getelementptr inbounds i8, ptr %129, i64 1
  %133 = load i8, ptr %129, align 1, !tbaa !15
  %134 = zext i8 %133 to i32
  %135 = tail call ptr @printichar(i32 noundef %134) #35
  %136 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %137 = tail call i32 @fputs(ptr noundef %135, ptr noundef %136)
  %138 = getelementptr inbounds i8, ptr %128, i64 1
  %139 = icmp sgt i32 %130, 1
  br i1 %139, label %127, label %140, !llvm.loop !126

140:                                              ; preds = %127, %122
  %141 = phi ptr [ %88, %122 ], [ %132, %127 ]
  %142 = phi ptr [ %123, %122 ], [ %138, %127 ]
  %143 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %144 = icmp ugt ptr %141, %143
  %145 = sext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %141, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !15
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i8, ptr %142, align 1, !tbaa !15
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %172, label %159

155:                                              ; preds = %140
  %156 = tail call ptr @ichartosstr(ptr noundef %142, i32 noundef 0) #35
  %157 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %158 = tail call i32 @fputs(ptr noundef %156, ptr noundef %157)
  br label %172

159:                                              ; preds = %159, %152
  %160 = phi i8 [ %170, %159 ], [ %153, %152 ]
  %161 = phi ptr [ %162, %159 ], [ %142, %152 ]
  %162 = getelementptr inbounds i8, ptr %161, i64 1
  %163 = zext i8 %160 to i64
  %164 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = zext i8 %165 to i32
  %167 = tail call ptr @printichar(i32 noundef %166) #35
  %168 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %169 = tail call i32 @fputs(ptr noundef %167, ptr noundef %168)
  %170 = load i8, ptr %162, align 1, !tbaa !15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %159, !llvm.loop !127

172:                                              ; preds = %159, %155, %152
  %173 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %174 = sext i8 %173 to i32
  %175 = load ptr, ptr @stdout, align 8, !tbaa !7
  %176 = tail call i32 @putc(i32 noundef %174, ptr noundef %175)
  br i1 %10, label %177, label %180

177:                                              ; preds = %172
  %178 = load ptr, ptr @stdout, align 8, !tbaa !7
  %179 = tail call i32 @putc(i32 noundef %1, ptr noundef %178)
  br label %180

180:                                              ; preds = %177, %172
  br i1 %43, label %181, label %184

181:                                              ; preds = %180
  %182 = load ptr, ptr @stdout, align 8, !tbaa !7
  %183 = tail call i32 @putc(i32 noundef %4, ptr noundef %182)
  br label %184

184:                                              ; preds = %181, %180, %76, %65, %35, %25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @hash(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 {
  %3 = getelementptr i8, ptr %0, i64 4
  br label %4

4:                                                ; preds = %10, %2
  %5 = phi i32 [ 3, %2 ], [ %18, %10 ]
  %6 = phi i64 [ 0, %2 ], [ %17, %10 ]
  %7 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = shl i64 %6, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = zext i8 %8 to i64
  %14 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i64
  %17 = or disjoint i64 %11, %16
  %18 = add nsw i32 %5, -1
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !129

20:                                               ; preds = %10, %4
  %21 = phi ptr [ %3, %10 ], [ %7, %4 ]
  %22 = phi i64 [ %17, %10 ], [ %6, %4 ]
  %23 = load i8, ptr %21, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %25, %20
  %26 = phi i8 [ %39, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %38, %25 ], [ %22, %20 ]
  %28 = phi ptr [ %33, %25 ], [ %21, %20 ]
  %29 = shl i64 %27, 5
  %30 = lshr i64 %27, 27
  %31 = and i64 %30, 31
  %32 = or disjoint i64 %31, %29
  %33 = getelementptr inbounds i8, ptr %28, i64 1
  %34 = zext i8 %26 to i64
  %35 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = zext i8 %36 to i64
  %38 = xor i64 %32, %37
  %39 = load i8, ptr %33, align 1, !tbaa !15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %25, !llvm.loop !130

41:                                               ; preds = %25, %20
  %42 = phi i64 [ %22, %20 ], [ %38, %25 ]
  %43 = sext i32 %1 to i64
  %44 = urem i64 %42, %43
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca [4 x i8], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %6, ptr @Cmd, align 8, !tbaa !7
  store i32 0, ptr @Trynum, align 4, !tbaa !13
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.177) #35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @index(ptr noundef nonnull %7, i32 noundef 47) #36
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %7) #35
  br label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.178, ptr noundef nonnull @.str.2.179, ptr noundef nonnull %7) #35
  br label %16

16:                                               ; preds = %14, %12
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @main.libdictname, ptr noundef nonnull dereferenceable(1) %7) #35
  %18 = tail call ptr @rindex(ptr noundef nonnull %7, i32 noundef 46) #36
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(6) @.str.3.180) #36
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %16
  %24 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %25 = getelementptr inbounds i8, ptr @hashname, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %25, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.180, i64 6, i1 false)
  br label %26

26:                                               ; preds = %23, %20
  %27 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 47) #36
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = select i1 %28, ptr @main.libdictname, ptr %29
  store ptr %30, ptr @LibDict, align 8, !tbaa !7
  %31 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #36
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  store i8 0, ptr %31, align 1, !tbaa !15
  br label %36

34:                                               ; preds = %2
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.178, ptr noundef nonnull @.str.2.179, ptr noundef nonnull @.str.4.181) #35
  br label %36

36:                                               ; preds = %34, %33, %26
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.182)
  %38 = getelementptr inbounds ptr, ptr %1, i64 1
  %39 = add nsw i32 %0, -1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %430

41:                                               ; preds = %36
  %42 = load ptr, ptr %38, align 8, !tbaa !7
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = icmp eq i8 %43, 45
  br i1 %44, label %49, label %430

45:                                               ; preds = %421
  %46 = load ptr, ptr %427, align 8, !tbaa !7
  %47 = load i8, ptr %46, align 1, !tbaa !15
  %48 = icmp eq i8 %47, 45
  br i1 %48, label %49, label %430, !llvm.loop !131

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %46, %45 ], [ %42, %41 ]
  %51 = phi ptr [ %422, %45 ], [ %1, %41 ]
  %52 = phi ptr [ %423, %45 ], [ null, %41 ]
  %53 = phi ptr [ %424, %45 ], [ null, %41 ]
  %54 = phi ptr [ %425, %45 ], [ null, %41 ]
  %55 = phi i32 [ %426, %45 ], [ %0, %41 ]
  %56 = phi ptr [ %427, %45 ], [ %38, %41 ]
  %57 = phi i32 [ %428, %45 ], [ %39, %41 ]
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #36
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds i8, ptr %50, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !15
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

65:                                               ; preds = %65, %62
  %66 = phi ptr [ %74, %65 ], [ @.str.144, %62 ]
  %67 = phi ptr [ %68, %65 ], [ @Version_ID, %62 ]
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  %69 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(5) @.str.6.183, i64 noundef 5) #36
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i64 5, i64 0
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  %73 = tail call i32 @puts(ptr nonnull dereferenceable(1) %72)
  %74 = load ptr, ptr %68, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %65, !llvm.loop !132

76:                                               ; preds = %65
  %77 = load ptr, ptr %56, align 8, !tbaa !7
  %78 = getelementptr inbounds i8, ptr %77, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = icmp eq i8 %79, 118
  br i1 %80, label %81, label %167

81:                                               ; preds = %76
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.195)
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10.184, ptr noundef nonnull @.str.11.185)
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.186, ptr noundef nonnull @.str.13.187)
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.197)
  %87 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.198)
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16.188, ptr noundef nonnull @.str.17.189)
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18.190, ptr noundef nonnull @.str.19.191)
  %90 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.199)
  %91 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.200)
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22.192, i32 noundef 10)
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23.193, ptr noundef nonnull @.str.24.194)
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25.195, ptr noundef nonnull @.str.4.181)
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26.196, ptr noundef nonnull @.str.27.197)
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28.198, ptr noundef nonnull @.str.29.199)
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30.200, i32 noundef 0)
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31.201, ptr noundef nonnull @.str.32.202)
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33.203, ptr noundef nonnull @.str.34.204)
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35.205, i32 noundef 0)
  %101 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36.206, ptr noundef nonnull @.str.37.207)
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38.208, ptr noundef nonnull @.str.39.209)
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40.210, ptr noundef nonnull @.str.41.211)
  %104 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.201)
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45.212, ptr noundef nonnull @.str.3.180)
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46.213, ptr noundef nonnull @.str.47.214)
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.204)
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49.215, ptr noundef nonnull @.str.50.216)
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51.217, i32 noundef 100)
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52.218, ptr noundef nonnull @.str.53.219)
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54.220, ptr noundef nonnull @.str.2.179)
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55.221, ptr noundef nonnull @.str.56.222)
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57.223, ptr noundef nonnull @.str.58.224)
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59.225, ptr noundef nonnull @.str.56.222)
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60.226, ptr noundef nonnull @.str.61)
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull @.str.63)
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef 4088)
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull @.str.66)
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull @.str.68)
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull @.str.70)
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, ptr noundef nonnull @.str.72)
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef 32)
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74.227, ptr noundef nonnull @.str.75)
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef 32)
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @.str.78)
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef 20)
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80.228, i32 noundef 10)
  %130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81.229, i32 noundef 5)
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82.230, i32 noundef 255)
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83.231, i32 noundef 4096)
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84.232, i32 noundef 70)
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.233, i32 noundef 4)
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
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull @.str.32.202)
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, ptr noundef nonnull @.str.34.204)
  %151 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.209)
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef nonnull @.str.106)
  %153 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.210)
  %154 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.211)
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull @.str.56.222)
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull @.str.111)
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef 1000)
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, ptr noundef nonnull @.str.114)
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull @.str.116)
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull @.str.56.222)
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.118, ptr noundef nonnull @.str.119)
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.120, ptr noundef nonnull @.str.121)
  %163 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.212)
  %164 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.213)
  %165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.124, ptr noundef nonnull @.str.125)
  %166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, ptr noundef nonnull @.str.127)
  br label %167

167:                                              ; preds = %81, %76
  tail call void @exit(i32 noundef 0) #38
  unreachable

168:                                              ; preds = %49
  %169 = icmp sgt i32 %59, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  tail call fastcc void @usage()
  unreachable

171:                                              ; preds = %168
  store i32 0, ptr @tflag, align 4, !tbaa !13
  store i32 0, ptr @deftflag, align 4, !tbaa !13
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
  store i32 1, ptr @tflag, align 4, !tbaa !13
  store i32 1, ptr @deftflag, align 4, !tbaa !13
  %178 = icmp eq ptr %54, null
  %179 = select i1 %178, ptr @.str.129, ptr %54
  br label %421

180:                                              ; preds = %49
  %181 = getelementptr inbounds i8, ptr %50, i64 2
  %182 = load i8, ptr %181, align 1, !tbaa !15
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
  %190 = load ptr, ptr %189, align 8, !tbaa !7
  br label %421

191:                                              ; preds = %49
  %192 = icmp sgt i32 %59, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %191
  tail call fastcc void @usage()
  unreachable

194:                                              ; preds = %191
  store i32 1, ptr @incfileflag, align 4, !tbaa !13
  store i32 1, ptr @aflag, align 4, !tbaa !13
  br label %421

195:                                              ; preds = %49
  %196 = icmp sgt i32 %59, 2
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  tail call fastcc void @usage()
  unreachable

198:                                              ; preds = %195
  %199 = load i32, ptr @aflag, align 4, !tbaa !13
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @aflag, align 4, !tbaa !13
  br label %421

201:                                              ; preds = %49
  %202 = icmp sgt i32 %59, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %201
  tail call fastcc void @usage()
  unreachable

204:                                              ; preds = %201
  %205 = load i32, ptr @dumpflag, align 4, !tbaa !13
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr @dumpflag, align 4, !tbaa !13
  %207 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @nodictflag, align 4, !tbaa !13
  br label %421

209:                                              ; preds = %49
  %210 = icmp sgt i32 %59, 3
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  tail call fastcc void @usage()
  unreachable

212:                                              ; preds = %209
  store i32 1, ptr @eflag, align 4, !tbaa !13
  %213 = load ptr, ptr %56, align 8, !tbaa !7
  %214 = getelementptr inbounds i8, ptr %213, i64 2
  %215 = load i8, ptr %214, align 1, !tbaa !15
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

226:                                              ; preds = %220, %212
  %227 = phi i32 [ %222, %220 ], [ 2, %212 ]
  store i32 %227, ptr @eflag, align 4, !tbaa !13
  br label %228

228:                                              ; preds = %226, %223
  %229 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr @nodictflag, align 4, !tbaa !13
  br label %421

231:                                              ; preds = %49
  %232 = icmp sgt i32 %59, 2
  br i1 %232, label %233, label %234

233:                                              ; preds = %231
  tail call fastcc void @usage()
  unreachable

234:                                              ; preds = %231
  %235 = load i32, ptr @cflag, align 4, !tbaa !13
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr @cflag, align 4, !tbaa !13
  %237 = load i32, ptr @lflag, align 4, !tbaa !13
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr @lflag, align 4, !tbaa !13
  %239 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr @nodictflag, align 4, !tbaa !13
  br label %421

241:                                              ; preds = %49
  %242 = icmp sgt i32 %59, 2
  br i1 %242, label %243, label %244

243:                                              ; preds = %241
  tail call fastcc void @usage()
  unreachable

244:                                              ; preds = %241
  store i32 0, ptr @xflag, align 4, !tbaa !13
  br label %421

245:                                              ; preds = %49
  %246 = icmp sgt i32 %59, 2
  br i1 %246, label %247, label %248

247:                                              ; preds = %245
  tail call fastcc void @usage()
  unreachable

248:                                              ; preds = %245
  store i32 1, ptr @xflag, align 4, !tbaa !13
  br label %421

249:                                              ; preds = %49
  %250 = load i32, ptr @fflag, align 4, !tbaa !13
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr @fflag, align 4, !tbaa !13
  %252 = getelementptr inbounds i8, ptr %50, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !15
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
  %261 = load ptr, ptr %260, align 8, !tbaa !7
  br label %262

262:                                              ; preds = %259, %249
  %263 = phi ptr [ %260, %259 ], [ %56, %249 ]
  %264 = phi ptr [ %261, %259 ], [ %252, %249 ]
  %265 = phi i32 [ %256, %259 ], [ %57, %249 ]
  store ptr %264, ptr @askfilename, align 8, !tbaa !7
  %266 = load i8, ptr %264, align 1, !tbaa !15
  %267 = icmp eq i8 %266, 0
  %268 = select i1 %267, ptr null, ptr %264
  store ptr %268, ptr @askfilename, align 8
  br label %421

269:                                              ; preds = %49
  %270 = getelementptr inbounds i8, ptr %50, i64 2
  %271 = load i8, ptr %270, align 1, !tbaa !15
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
  %279 = load ptr, ptr %278, align 8, !tbaa !7
  br label %280

280:                                              ; preds = %277, %269
  %281 = phi ptr [ %278, %277 ], [ %56, %269 ]
  %282 = phi ptr [ %279, %277 ], [ %270, %269 ]
  %283 = phi i32 [ %274, %277 ], [ %57, %269 ]
  %284 = tail call i64 @strtol(ptr nocapture noundef nonnull %282, ptr noundef null, i32 noundef 10) #35
  %285 = trunc i64 %284 to i32
  store i32 %285, ptr @contextsize, align 4, !tbaa !13
  br label %421

286:                                              ; preds = %49
  %287 = icmp sgt i32 %59, 2
  br i1 %287, label %288, label %289

288:                                              ; preds = %286
  tail call fastcc void @usage()
  unreachable

289:                                              ; preds = %286
  %290 = load i32, ptr @lflag, align 4, !tbaa !13
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr @lflag, align 4, !tbaa !13
  br label %421

292:                                              ; preds = %49
  %293 = icmp sgt i32 %59, 2
  br i1 %293, label %294, label %295

294:                                              ; preds = %292
  tail call fastcc void @usage()
  unreachable

295:                                              ; preds = %292
  %296 = load i32, ptr @sflag, align 4, !tbaa !13
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr @sflag, align 4, !tbaa !13
  br label %421

298:                                              ; preds = %49
  %299 = icmp sgt i32 %59, 2
  br i1 %299, label %300, label %301

300:                                              ; preds = %298
  tail call fastcc void @usage()
  unreachable

301:                                              ; preds = %298
  store i32 0, ptr @sortit, align 4, !tbaa !13
  br label %421

302:                                              ; preds = %49
  %303 = icmp sgt i32 %59, 2
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  tail call fastcc void @usage()
  unreachable

305:                                              ; preds = %302
  store i32 0, ptr @compoundflag, align 4, !tbaa !13
  br label %421

306:                                              ; preds = %49
  %307 = icmp sgt i32 %59, 2
  br i1 %307, label %308, label %309

308:                                              ; preds = %306
  tail call fastcc void @usage()
  unreachable

309:                                              ; preds = %306
  store i32 1, ptr @compoundflag, align 4, !tbaa !13
  br label %421

310:                                              ; preds = %49
  %311 = icmp sgt i32 %59, 2
  br i1 %311, label %312, label %313

312:                                              ; preds = %310
  tail call fastcc void @usage()
  unreachable

313:                                              ; preds = %310
  store i32 0, ptr @tryhardflag, align 4, !tbaa !13
  br label %421

314:                                              ; preds = %49
  %315 = icmp sgt i32 %59, 2
  br i1 %315, label %316, label %317

316:                                              ; preds = %314
  tail call fastcc void @usage()
  unreachable

317:                                              ; preds = %314
  store i32 1, ptr @tryhardflag, align 4, !tbaa !13
  br label %421

318:                                              ; preds = %49
  %319 = icmp sgt i32 %59, 2
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  tail call fastcc void @usage()
  unreachable

321:                                              ; preds = %318
  store i32 0, ptr @minimenusize, align 4, !tbaa !13
  br label %421

322:                                              ; preds = %49
  %323 = icmp sgt i32 %59, 2
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  tail call fastcc void @usage()
  unreachable

325:                                              ; preds = %322
  store i32 2, ptr @minimenusize, align 4, !tbaa !13
  br label %421

326:                                              ; preds = %49
  %327 = getelementptr inbounds i8, ptr %50, i64 2
  %328 = load i8, ptr %327, align 1, !tbaa !15
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
  %336 = load ptr, ptr %335, align 8, !tbaa !7
  %337 = load i8, ptr %336, align 1, !tbaa !15
  %338 = icmp eq i8 %337, 0
  %339 = select i1 %338, ptr null, ptr %336
  br label %340

340:                                              ; preds = %334, %326
  %341 = phi ptr [ %335, %334 ], [ %56, %326 ]
  %342 = phi ptr [ %339, %334 ], [ %327, %326 ]
  %343 = phi i32 [ %331, %334 ], [ %57, %326 ]
  store ptr null, ptr @LibDict, align 8, !tbaa !7
  br label %421

344:                                              ; preds = %49
  %345 = getelementptr inbounds i8, ptr %50, i64 2
  %346 = load i8, ptr %345, align 1, !tbaa !15
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
  %354 = load ptr, ptr %353, align 8, !tbaa !7
  br label %355

355:                                              ; preds = %352, %344
  %356 = phi ptr [ %353, %352 ], [ %56, %344 ]
  %357 = phi ptr [ %354, %352 ], [ %345, %344 ]
  %358 = phi i32 [ %349, %352 ], [ %57, %344 ]
  %359 = tail call ptr @index(ptr noundef %357, i32 noundef 47) #36
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361

361:                                              ; preds = %355
  %362 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %357) #35
  br label %365

363:                                              ; preds = %355
  %364 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.178, ptr noundef nonnull @.str.2.179, ptr noundef %357) #35
  br label %365

365:                                              ; preds = %363, %361
  %366 = icmp eq ptr %52, null
  br i1 %366, label %367, label %371

367:                                              ; preds = %365
  %368 = load i8, ptr %357, align 1, !tbaa !15
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %367
  store ptr %357, ptr @LibDict, align 8, !tbaa !7
  br label %371

371:                                              ; preds = %370, %367, %365
  %372 = tail call ptr @rindex(ptr noundef %357, i32 noundef 46) #36
  %373 = icmp eq ptr %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %371
  %375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %372, ptr noundef nonnull dereferenceable(6) @.str.3.180) #36
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  store i8 0, ptr %372, align 1, !tbaa !15
  br label %381

378:                                              ; preds = %374, %371
  %379 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %380 = getelementptr inbounds i8, ptr @hashname, i64 %379
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %380, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.180, i64 6, i1 false)
  br label %381

381:                                              ; preds = %378, %377
  %382 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %383 = icmp eq ptr %382, null
  br i1 %383, label %421, label %384

384:                                              ; preds = %381
  %385 = tail call ptr @rindex(ptr noundef nonnull %382, i32 noundef 47) #36
  %386 = icmp eq ptr %385, null
  br i1 %386, label %421, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds i8, ptr %385, i64 1
  store ptr %388, ptr @LibDict, align 8, !tbaa !7
  br label %421

389:                                              ; preds = %49
  %390 = icmp sgt i32 %59, 2
  br i1 %390, label %391, label %392

391:                                              ; preds = %389
  tail call fastcc void @usage()
  unreachable

392:                                              ; preds = %389
  store i32 1, ptr @vflag, align 4, !tbaa !13
  br label %421

393:                                              ; preds = %49
  %394 = getelementptr inbounds i8, ptr %50, i64 2
  %395 = load i8, ptr %394, align 1, !tbaa !15
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
  %403 = load ptr, ptr %402, align 8, !tbaa !7
  br label %421

404:                                              ; preds = %49
  %405 = getelementptr inbounds i8, ptr %50, i64 2
  %406 = load i8, ptr %405, align 1, !tbaa !15
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
  %414 = load ptr, ptr %413, align 8, !tbaa !7
  %415 = tail call i64 @strtol(ptr nocapture noundef nonnull %414, ptr noundef null, i32 noundef 10) #35
  %416 = trunc i64 %415 to i32
  store i32 %416, ptr @minword, align 4, !tbaa !13
  br label %421

417:                                              ; preds = %404
  %418 = tail call i64 @strtol(ptr nocapture noundef nonnull %405, ptr noundef null, i32 noundef 10) #35
  %419 = trunc i64 %418 to i32
  store i32 %419, ptr @minword, align 4, !tbaa !13
  br label %421

420:                                              ; preds = %49
  tail call fastcc void @usage()
  unreachable

421:                                              ; preds = %417, %412, %401, %393, %392, %387, %384, %381, %340, %325, %321, %317, %313, %309, %305, %301, %295, %289, %280, %262, %248, %244, %234, %228, %204, %198, %194, %188, %180, %177, %171
  %422 = phi ptr [ %413, %412 ], [ %56, %417 ], [ %402, %401 ], [ %56, %393 ], [ %56, %392 ], [ %356, %387 ], [ %356, %384 ], [ %356, %381 ], [ %341, %340 ], [ %56, %325 ], [ %56, %321 ], [ %56, %317 ], [ %56, %313 ], [ %56, %309 ], [ %56, %305 ], [ %56, %301 ], [ %56, %295 ], [ %56, %289 ], [ %281, %280 ], [ %263, %262 ], [ %56, %248 ], [ %56, %244 ], [ %56, %234 ], [ %56, %228 ], [ %56, %204 ], [ %56, %198 ], [ %56, %194 ], [ %56, %177 ], [ %56, %171 ], [ %189, %188 ], [ %56, %180 ]
  %423 = phi ptr [ %52, %412 ], [ %52, %417 ], [ %52, %401 ], [ %52, %393 ], [ %52, %392 ], [ %52, %387 ], [ %52, %384 ], [ %52, %381 ], [ %342, %340 ], [ %52, %325 ], [ %52, %321 ], [ %52, %317 ], [ %52, %313 ], [ %52, %309 ], [ %52, %305 ], [ %52, %301 ], [ %52, %295 ], [ %52, %289 ], [ %52, %280 ], [ %52, %262 ], [ %52, %248 ], [ %52, %244 ], [ %52, %234 ], [ %52, %228 ], [ %52, %204 ], [ %52, %198 ], [ %52, %194 ], [ %52, %177 ], [ %52, %171 ], [ %52, %188 ], [ %52, %180 ]
  %424 = phi ptr [ %53, %412 ], [ %53, %417 ], [ %403, %401 ], [ %394, %393 ], [ %53, %392 ], [ %53, %387 ], [ %53, %384 ], [ %53, %381 ], [ %53, %340 ], [ %53, %325 ], [ %53, %321 ], [ %53, %317 ], [ %53, %313 ], [ %53, %309 ], [ %53, %305 ], [ %53, %301 ], [ %53, %295 ], [ %53, %289 ], [ %53, %280 ], [ %53, %262 ], [ %53, %248 ], [ %53, %244 ], [ %53, %234 ], [ %53, %228 ], [ %53, %204 ], [ %53, %198 ], [ %53, %194 ], [ %53, %177 ], [ %53, %171 ], [ %53, %188 ], [ %53, %180 ]
  %425 = phi ptr [ %54, %412 ], [ %54, %417 ], [ %54, %401 ], [ %54, %393 ], [ %54, %392 ], [ %54, %387 ], [ %54, %384 ], [ %54, %381 ], [ %54, %340 ], [ %54, %325 ], [ %54, %321 ], [ %54, %317 ], [ %54, %313 ], [ %54, %309 ], [ %54, %305 ], [ %54, %301 ], [ %54, %295 ], [ %54, %289 ], [ %54, %280 ], [ %54, %262 ], [ %54, %248 ], [ %54, %244 ], [ %54, %234 ], [ %54, %228 ], [ %54, %204 ], [ %54, %198 ], [ %54, %194 ], [ %179, %177 ], [ %173, %171 ], [ %190, %188 ], [ %181, %180 ]
  %426 = phi i32 [ %409, %412 ], [ %57, %417 ], [ %398, %401 ], [ %57, %393 ], [ %57, %392 ], [ %358, %387 ], [ %358, %384 ], [ %358, %381 ], [ %343, %340 ], [ %57, %325 ], [ %57, %321 ], [ %57, %317 ], [ %57, %313 ], [ %57, %309 ], [ %57, %305 ], [ %57, %301 ], [ %57, %295 ], [ %57, %289 ], [ %283, %280 ], [ %265, %262 ], [ %57, %248 ], [ %57, %244 ], [ %57, %234 ], [ %57, %228 ], [ %57, %204 ], [ %57, %198 ], [ %57, %194 ], [ %57, %177 ], [ %57, %171 ], [ %185, %188 ], [ %57, %180 ]
  %427 = getelementptr inbounds ptr, ptr %422, i64 1
  %428 = add nsw i32 %426, -1
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %45, label %430, !llvm.loop !131

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
  %454 = load ptr, ptr %434, align 8, !tbaa !7
  %455 = tail call i32 (ptr, i32, ...) @access(ptr noundef %454, i32 noundef 4) #35
  %456 = icmp sgt i32 %455, -1
  br i1 %456, label %469, label %458

457:                                              ; preds = %430
  tail call fastcc void @usage()
  unreachable

458:                                              ; preds = %462, %451
  %459 = phi i64 [ %460, %462 ], [ 0, %451 ]
  %460 = add nuw nsw i64 %459, 1
  %461 = icmp eq i64 %460, %453
  br i1 %461, label %467, label %462, !llvm.loop !133

462:                                              ; preds = %458
  %463 = getelementptr inbounds ptr, ptr %434, i64 %460
  %464 = load ptr, ptr %463, align 8, !tbaa !7
  %465 = tail call i32 (ptr, i32, ...) @access(ptr noundef %464, i32 noundef 4) #35
  %466 = icmp sgt i32 %465, -1
  br i1 %466, label %467, label %458, !llvm.loop !133

467:                                              ; preds = %462, %458
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
  %484 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %483
  %487 = load ptr, ptr @stderr, align 8, !tbaa !7
  %488 = icmp eq i32 %435, 1
  %489 = select i1 %488, ptr @.str.130, ptr @.str.131
  %490 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef nonnull %489) #37
  br label %491

491:                                              ; preds = %486, %483
  tail call void @exit(i32 noundef 1) #38
  unreachable

492:                                              ; preds = %469
  %493 = tail call i32 @linit() #35
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %492
  tail call void @exit(i32 noundef 1) #38
  unreachable

496:                                              ; preds = %492
  %497 = icmp eq ptr %433, null
  br i1 %497, label %517, label %498

498:                                              ; preds = %496
  %499 = load i32, ptr @deftflag, align 4, !tbaa !13
  %500 = icmp slt i32 %499, 0
  %501 = select i1 %500, ptr @deftflag, ptr null
  %502 = tail call i32 @findfiletype(ptr noundef nonnull %433, i32 noundef 1, ptr noundef %501) #35
  store i32 %502, ptr @prefstringchar, align 4, !tbaa !13
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %517

504:                                              ; preds = %498
  %505 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %433, ptr noundef nonnull dereferenceable(4) @.str.129) #36
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %517, label %507

507:                                              ; preds = %504
  %508 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %433, ptr noundef nonnull dereferenceable(6) @.str.128) #36
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %517, label %510

510:                                              ; preds = %507
  %511 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr @stderr, align 8, !tbaa !7
  %515 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %514, ptr noundef nonnull @.str.132, ptr noundef nonnull %433) #37
  br label %516

516:                                              ; preds = %513, %510
  tail call void @exit(i32 noundef 1) #38
  unreachable

517:                                              ; preds = %507, %504, %498, %496
  %518 = load i32, ptr @prefstringchar, align 4, !tbaa !13
  %519 = tail call i32 @llvm.smax.i32(i32 %518, i32 0)
  store i32 %519, ptr @defdupchar, align 4, !tbaa !13
  %520 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %517
  %523 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 17), align 2, !tbaa !134
  %524 = sext i8 %523 to i32
  store i32 %524, ptr @compoundflag, align 4, !tbaa !13
  br label %525

525:                                              ; preds = %522, %517
  %526 = load i32, ptr @tryhardflag, align 4, !tbaa !13
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 18), align 1, !tbaa !135
  %530 = sext i8 %529 to i32
  store i32 %530, ptr @tryhardflag, align 4, !tbaa !13
  br label %531

531:                                              ; preds = %528, %525
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #35
  %532 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %533 = and i32 %532, 255
  %534 = xor i32 %533, 128
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %562, label %536

536:                                              ; preds = %531
  %537 = load i32, ptr @Trynum, align 4, !tbaa !13
  %538 = zext nneg i32 %534 to i64
  br label %539

539:                                              ; preds = %558, %536
  %540 = phi i64 [ 0, %536 ], [ %560, %558 ]
  %541 = phi i32 [ %537, %536 ], [ %559, %558 ]
  %542 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %540
  %543 = load i8, ptr %542, align 1, !tbaa !15
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %549, label %545

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %540
  %547 = load i8, ptr %546, align 1, !tbaa !15
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %553, label %558

549:                                              ; preds = %539
  %550 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %540
  %551 = load i8, ptr %550, align 1, !tbaa !15
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %558, label %553

553:                                              ; preds = %549, %545
  %554 = sext i32 %541 to i64
  %555 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %554
  %556 = trunc i64 %540 to i8
  store i8 %556, ptr %555, align 1, !tbaa !15
  %557 = add nsw i32 %541, 1
  store i32 %557, ptr @Trynum, align 4, !tbaa !13
  br label %558

558:                                              ; preds = %553, %549, %545
  %559 = phi i32 [ %541, %545 ], [ %541, %549 ], [ %557, %553 ]
  %560 = add nuw nsw i64 %540, 1
  %561 = icmp eq i64 %560, %538
  br i1 %561, label %562, label %539, !llvm.loop !137

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
  %572 = load i8, ptr %571, align 1, !tbaa !15
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
  %577 = tail call ptr @__ctype_b_loc() #39
  store i32 0, ptr %5, align 4
  %578 = load ptr, ptr %577, align 8, !tbaa !7
  %579 = load i8, ptr %576, align 1, !tbaa !15
  %580 = sext i8 %579 to i64
  %581 = getelementptr inbounds i16, ptr %578, i64 %580
  %582 = load i16, ptr %581, align 2, !tbaa !78
  %583 = and i16 %582, 2048
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %602, label %585

585:                                              ; preds = %575
  store i8 %579, ptr %5, align 4, !tbaa !15
  %586 = getelementptr inbounds i8, ptr %571, i64 2
  %587 = load i8, ptr %586, align 1, !tbaa !15
  %588 = sext i8 %587 to i64
  %589 = getelementptr inbounds i16, ptr %578, i64 %588
  %590 = load i16, ptr %589, align 2, !tbaa !78
  %591 = and i16 %590, 2048
  %592 = icmp eq i16 %591, 0
  br i1 %592, label %602, label %593

593:                                              ; preds = %585
  store i8 %587, ptr %568, align 1, !tbaa !15
  %594 = getelementptr inbounds i8, ptr %571, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !15
  %596 = sext i8 %595 to i64
  %597 = getelementptr inbounds i16, ptr %578, i64 %596
  %598 = load i16, ptr %597, align 2, !tbaa !78
  %599 = and i16 %598, 2048
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %602, label %601

601:                                              ; preds = %593
  store i8 %595, ptr %569, align 2, !tbaa !15
  br label %602

602:                                              ; preds = %601, %593, %585, %575
  %603 = phi i8 [ 0, %585 ], [ %595, %601 ], [ 0, %593 ], [ 0, %575 ]
  %604 = phi i8 [ 0, %585 ], [ %587, %601 ], [ %587, %593 ], [ 0, %575 ]
  %605 = phi i8 [ %579, %585 ], [ %579, %601 ], [ %579, %593 ], [ 0, %575 ]
  %606 = load i8, ptr %571, align 1, !tbaa !15
  %607 = icmp eq i8 %606, 110
  %608 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #36
  %609 = getelementptr inbounds i8, ptr %576, i64 %608
  br i1 %607, label %610, label %613

610:                                              ; preds = %602
  %611 = call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #35
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
  %633 = load i8, ptr %632, align 1, !tbaa !15
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %635, label %644

635:                                              ; preds = %627
  store i8 1, ptr %632, align 1, !tbaa !15
  %636 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !138
  %637 = add nsw i32 %636, 1
  store i32 %637, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !138
  %638 = trunc i32 %636 to i16
  %639 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %631
  store i16 %638, ptr %639, align 2, !tbaa !78
  %640 = load i32, ptr @Trynum, align 4, !tbaa !13
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %641
  store i8 %630, ptr %642, align 1, !tbaa !15
  %643 = add nsw i32 %640, 1
  store i32 %643, ptr @Trynum, align 4, !tbaa !13
  br label %644

644:                                              ; preds = %635, %627
  %645 = load i32, ptr @Trynum, align 4, !tbaa !13
  %646 = icmp slt i32 %645, 128
  br i1 %646, label %570, label %647

647:                                              ; preds = %644, %570, %562
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #35
  %648 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %649 = icmp eq ptr %648, null
  br i1 %649, label %650, label %657

650:                                              ; preds = %647
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) @main.libdictname, ptr noundef nonnull align 1 dereferenceable(13) @.str.4.181, i64 13, i1 false) #35
  store ptr @main.libdictname, ptr @LibDict, align 8, !tbaa !7
  %651 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #36
  %652 = icmp eq ptr %651, null
  br i1 %652, label %657, label %653

653:                                              ; preds = %650
  %654 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %651, ptr noundef nonnull dereferenceable(6) @.str.3.180) #36
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %653
  store i8 0, ptr %651, align 1, !tbaa !15
  br label %657

657:                                              ; preds = %656, %653, %650, %647
  %658 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %662

660:                                              ; preds = %657
  %661 = load ptr, ptr @LibDict, align 8, !tbaa !7
  tail call void @treeinit(ptr noundef %431, ptr noundef %661) #35
  br label %662

662:                                              ; preds = %660, %657
  %663 = load i32, ptr @aflag, align 4, !tbaa !13
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %683, label %665

665:                                              ; preds = %662
  store i32 1, ptr @cbench_print, align 4, !tbaa !13
  %666 = load ptr, ptr %434, align 8, !tbaa !7
  %667 = tail call noalias ptr @fopen(ptr noundef %666, ptr noundef nonnull @.str.133)
  store ptr %667, ptr @infile1, align 8, !tbaa !7
  %668 = icmp eq ptr %667, null
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load ptr, ptr @stderr, align 8, !tbaa !7
  %671 = tail call i64 @fwrite(ptr nonnull @.str.134, i64 31, i64 1, ptr %670) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

672:                                              ; preds = %665
  %673 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136)
  store ptr %673, ptr @outfile1, align 8, !tbaa !7
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %678

675:                                              ; preds = %672
  %676 = load ptr, ptr @stderr, align 8, !tbaa !7
  %677 = tail call i64 @fwrite(ptr nonnull @.str.134, i64 31, i64 1, ptr %676) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

678:                                              ; preds = %672
  tail call void @askmode() #35
  tail call void @treeoutput() #35
  %679 = load ptr, ptr @infile1, align 8, !tbaa !7
  %680 = tail call i32 @fclose(ptr noundef %679)
  %681 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %682 = tail call i32 @fclose(ptr noundef %681)
  tail call void @exit(i32 noundef 0) #38
  unreachable

683:                                              ; preds = %662
  %684 = load i32, ptr @eflag, align 4, !tbaa !13
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %683
  tail call fastcc void @expandmode(i32 noundef %684)
  tail call void @exit(i32 noundef 0) #38
  unreachable

687:                                              ; preds = %683
  %688 = load i32, ptr @dumpflag, align 4, !tbaa !13
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %691, label %690

690:                                              ; preds = %687
  tail call void @dumpmode() #35
  tail call void @exit(i32 noundef 0) #38
  unreachable

691:                                              ; preds = %687
  %692 = load ptr, ptr @outfile1, align 8, !tbaa !7
  tail call void @setbuf(ptr noundef %692, ptr noundef nonnull @main.outbuf) #35
  %693 = load i32, ptr @lflag, align 4, !tbaa !13
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %691
  %696 = load ptr, ptr @stdin, align 8, !tbaa !7
  store ptr %696, ptr @infile, align 8, !tbaa !7
  %697 = load ptr, ptr @outfile1, align 8, !tbaa !7
  store ptr %697, ptr @outfile, align 8, !tbaa !7
  tail call void @checkfile() #35
  tail call void @exit(i32 noundef 0) #38
  unreachable

698:                                              ; preds = %691
  tail call void @terminit() #35
  %699 = icmp eq i32 %435, 0
  br i1 %699, label %855, label %700

700:                                              ; preds = %698
  %701 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %702 = ptrtoint ptr %3 to i64
  br label %703

703:                                              ; preds = %853, %700
  %704 = phi i32 [ %435, %700 ], [ %706, %853 ]
  %705 = phi ptr [ %434, %700 ], [ %707, %853 ]
  %706 = add nsw i32 %704, -1
  %707 = getelementptr inbounds ptr, ptr %705, i64 1
  %708 = load ptr, ptr %705, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #35
  store ptr %708, ptr @currentfile, align 8, !tbaa !7
  %709 = load i32, ptr @deftflag, align 4, !tbaa !13
  store i32 %709, ptr @tflag, align 4, !tbaa !13
  %710 = icmp slt i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %703
  %712 = call ptr @rindex(ptr noundef %708, i32 noundef 46) #36
  %713 = icmp eq ptr %712, null
  br i1 %713, label %718, label %714

714:                                              ; preds = %711
  %715 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %712, ptr noundef nonnull dereferenceable(5) @.str.181) #36
  %716 = icmp eq i32 %715, 0
  %717 = zext i1 %716 to i32
  br label %718

718:                                              ; preds = %714, %711
  %719 = phi i32 [ 0, %711 ], [ %717, %714 ]
  store i32 %719, ptr @tflag, align 4, !tbaa !13
  br label %720

720:                                              ; preds = %718, %703
  %721 = load i32, ptr @prefstringchar, align 4, !tbaa !13
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %720
  %724 = select i1 %710, ptr @tflag, ptr null
  %725 = call i32 @findfiletype(ptr noundef %708, i32 noundef 0, ptr noundef %724) #35
  %726 = call i32 @llvm.smax.i32(i32 %725, i32 0)
  store i32 %726, ptr @defdupchar, align 4
  br label %727

727:                                              ; preds = %723, %720
  %728 = call noalias ptr @fopen(ptr noundef %708, ptr noundef nonnull @.str.182)
  store ptr %728, ptr @infile, align 8, !tbaa !7
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %738

730:                                              ; preds = %727
  %731 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %736, label %733

733:                                              ; preds = %730
  %734 = load ptr, ptr @stderr, align 8, !tbaa !7
  %735 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %734, ptr noundef nonnull @.str.183, ptr noundef %708) #37
  br label %736

736:                                              ; preds = %733, %730
  %737 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %853

738:                                              ; preds = %727
  %739 = call i32 (ptr, i32, ...) @access(ptr noundef %708, i32 noundef 2) #35
  %740 = icmp slt i32 %739, 0
  %741 = lshr i32 %739, 31
  store i32 %741, ptr @readonly, align 4, !tbaa !13
  br i1 %740, label %742, label %750

742:                                              ; preds = %738
  %743 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %748, label %745

745:                                              ; preds = %742
  %746 = load ptr, ptr @stderr, align 8, !tbaa !7
  %747 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %746, ptr noundef nonnull @.str.184, ptr noundef %708) #37
  br label %748

748:                                              ; preds = %745, %742
  %749 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %750

750:                                              ; preds = %748, %738
  %751 = load ptr, ptr @infile, align 8, !tbaa !7
  %752 = call i32 @fileno(ptr noundef %751) #35
  %753 = call i32 @fstat(i32 noundef %752, ptr noundef nonnull %4) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) @tempfile, ptr noundef nonnull align 1 dereferenceable(18) @.str.116, i64 18, i1 false) #35
  %754 = call ptr @mktemp(ptr noundef nonnull @tempfile) #35
  %755 = icmp eq ptr %754, null
  %756 = load i8, ptr @tempfile, align 16
  %757 = icmp eq i8 %756, 0
  %758 = select i1 %755, i1 true, i1 %757
  br i1 %758, label %762, label %759

759:                                              ; preds = %750
  %760 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.185)
  store ptr %760, ptr @outfile, align 8, !tbaa !7
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %773

762:                                              ; preds = %759, %750
  %763 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %771, label %765

765:                                              ; preds = %762
  %766 = load ptr, ptr @stderr, align 8, !tbaa !7
  %767 = load i8, ptr @tempfile, align 16, !tbaa !15
  %768 = icmp eq i8 %767, 0
  %769 = select i1 %768, ptr @.str.187, ptr @tempfile
  %770 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %766, ptr noundef nonnull @.str.186, ptr noundef nonnull %769) #37
  br label %771

771:                                              ; preds = %765, %762
  %772 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %853

773:                                              ; preds = %759
  %774 = load i32, ptr %701, align 8, !tbaa !139
  %775 = call i32 @chmod(ptr noundef nonnull @tempfile, i32 noundef %774) #35
  store i32 0, ptr @quit, align 4, !tbaa !13
  store i32 0, ptr @changes, align 4, !tbaa !13
  call void @checkfile() #35
  %776 = load ptr, ptr @infile, align 8, !tbaa !7
  %777 = call i32 @fclose(ptr noundef %776)
  %778 = load ptr, ptr @outfile, align 8, !tbaa !7
  %779 = call i32 @fclose(ptr noundef %778)
  %780 = load i32, ptr @cflag, align 4, !tbaa !13
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %773
  call void @treeoutput() #35
  br label %783

783:                                              ; preds = %782, %773
  %784 = load i32, ptr @changes, align 4, !tbaa !13
  %785 = icmp eq i32 %784, 0
  %786 = load i32, ptr @readonly, align 4
  %787 = icmp ne i32 %786, 0
  %788 = select i1 %785, i1 true, i1 %787
  br i1 %788, label %851, label %789

789:                                              ; preds = %783
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #35
  %790 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.182)
  store ptr %790, ptr @infile, align 8, !tbaa !7
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %800

792:                                              ; preds = %789
  %793 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %798, label %795

795:                                              ; preds = %792
  %796 = load ptr, ptr @stderr, align 8, !tbaa !7
  %797 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %796, ptr noundef nonnull @.str.188, ptr noundef nonnull @tempfile) #37
  br label %798

798:                                              ; preds = %795, %792
  %799 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %850

800:                                              ; preds = %789
  %801 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef 4091, ptr noundef %708, ptr noundef nonnull @.str.11.185) #35
  %802 = call ptr @rindex(ptr noundef nonnull %3, i32 noundef 47) #36
  %803 = icmp eq ptr %802, null
  %804 = getelementptr inbounds i8, ptr %802, i64 1
  %805 = select i1 %803, ptr %3, ptr %804
  %806 = ptrtoint ptr %805 to i64
  %807 = sub i64 %806, %702
  %808 = add nsw i64 %807, 255
  %809 = call i32 @strncmp(ptr noundef %708, ptr noundef nonnull %3, i64 noundef %808) #36
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %813, label %811

811:                                              ; preds = %800
  %812 = call i32 (ptr, ...) @unlink(ptr noundef nonnull %3) #35
  br label %813

813:                                              ; preds = %811, %800
  %814 = call i32 (ptr, ptr, ...) @link(ptr noundef %708, ptr noundef nonnull %3) #35
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %818

816:                                              ; preds = %813
  %817 = call i32 (ptr, ...) @unlink(ptr noundef %708) #35
  br label %818

818:                                              ; preds = %816, %813
  %819 = call noalias ptr @fopen(ptr noundef %708, ptr noundef nonnull @.str.185)
  store ptr %819, ptr @outfile, align 8, !tbaa !7
  %820 = icmp eq ptr %819, null
  br i1 %820, label %821, label %829

821:                                              ; preds = %818
  %822 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %827, label %824

824:                                              ; preds = %821
  %825 = load ptr, ptr @stderr, align 8, !tbaa !7
  %826 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef nonnull @.str.186, ptr noundef %708) #37
  br label %827

827:                                              ; preds = %824, %821
  %828 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %850

829:                                              ; preds = %818
  %830 = call i32 @chmod(ptr noundef %708, i32 noundef %774) #35
  br label %831

831:                                              ; preds = %835, %829
  %832 = load ptr, ptr @infile, align 8, !tbaa !7
  %833 = call i32 @getc(ptr noundef %832)
  %834 = icmp eq i32 %833, -1
  br i1 %834, label %838, label %835

835:                                              ; preds = %831
  %836 = load ptr, ptr @outfile, align 8, !tbaa !7
  %837 = call i32 @putc(i32 noundef %833, ptr noundef %836)
  br label %831, !llvm.loop !142

838:                                              ; preds = %831
  %839 = load ptr, ptr @infile, align 8, !tbaa !7
  %840 = call i32 @fclose(ptr noundef %839)
  %841 = load ptr, ptr @outfile, align 8, !tbaa !7
  %842 = call i32 @fclose(ptr noundef %841)
  %843 = load i32, ptr @xflag, align 4, !tbaa !13
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %850, label %845

845:                                              ; preds = %838
  %846 = call i32 @strncmp(ptr noundef %708, ptr noundef nonnull %3, i64 noundef %808) #36
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %850, label %848

848:                                              ; preds = %845
  %849 = call i32 (ptr, ...) @unlink(ptr noundef nonnull %3) #35
  br label %850

850:                                              ; preds = %848, %845, %838, %827, %798
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #35
  br label %851

851:                                              ; preds = %850, %783
  %852 = call i32 (ptr, ...) @unlink(ptr noundef nonnull @tempfile) #35
  br label %853

853:                                              ; preds = %851, %771, %736
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #35
  %854 = icmp eq i32 %706, 0
  br i1 %854, label %855, label %703, !llvm.loop !143

855:                                              ; preds = %853, %698
  call void @done(i32 noundef 0) #35
  ret i32 0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @rindex(ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #21 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.137, ptr noundef %2) #37
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.138, ptr noundef %5) #37
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.139, ptr noundef %8) #37
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.140, ptr noundef %11) #37
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.141, ptr noundef %14) #37
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.142, ptr noundef %17) #37
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.143, ptr noundef %20) #37
  tail call void @givehelp(i32 noundef 0) #35
  tail call void @exit(i32 noundef 1) #38
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

declare i32 @access(...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @expandmode(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #35
  %7 = ptrtoint ptr %2 to i64
  %8 = icmp eq i32 %0, 4
  %9 = add i32 %0, -2
  %10 = icmp ult i32 %9, 3
  %11 = ptrtoint ptr %2 to i64
  %12 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  %13 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  br label %14

14:                                               ; preds = %113, %1
  %15 = load ptr, ptr @infile1, align 8, !tbaa !7
  %16 = call ptr @xgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %15) #35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %116, label %18

18:                                               ; preds = %14
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36
  %20 = trunc i64 %19 to i32
  %21 = shl i64 %19, 32
  %22 = add i64 %21, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = add nsw i32 %20, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !15
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i32 [ %28, %27 ], [ %20, %18 ]
  %33 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #35
  %34 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %35 = sext i8 %34 to i32
  %36 = call ptr @index(ptr noundef nonnull %2, i32 noundef %35) #36
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = ptrtoint ptr %36 to i64
  %40 = sub i64 %39, %7
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 0, ptr %36, align 1, !tbaa !15
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi ptr [ %42, %38 ], [ null, %31 ]
  %45 = phi i32 [ %41, %38 ], [ %32, %31 ]
  br i1 %10, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.190, ptr noundef nonnull %5)
  br label %48

48:                                               ; preds = %46, %43
  %49 = icmp eq ptr %44, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = ptrtoint ptr %44 to i64
  %52 = sub i64 %51, %11
  %53 = icmp sgt i64 %52, 100
  br i1 %53, label %58, label %60

54:                                               ; preds = %48
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36
  %56 = trunc i64 %55 to i32
  %57 = icmp sgt i32 %56, 99
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = phi ptr [ %12, %50 ], [ %13, %54 ]
  store i8 0, ptr %59, align 4, !tbaa !15
  br label %60

60:                                               ; preds = %58, %54, %50
  %61 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %62 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %61)
  br i1 %49, label %113, label %63

63:                                               ; preds = %60
  store i64 0, ptr %4, align 8
  br label %64

64:                                               ; preds = %83, %63
  %65 = phi ptr [ %44, %63 ], [ %89, %83 ]
  %66 = load i8, ptr %65, align 1, !tbaa !15
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
  %75 = load i64, ptr %4, align 8, !tbaa !63
  %76 = or i64 %75, %74
  store i64 %76, ptr %4, align 8, !tbaa !63
  br label %83

77:                                               ; preds = %67
  %78 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @stderr, align 8, !tbaa !7
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.191, i32 noundef %68) #37
  br label %83

83:                                               ; preds = %80, %77, %71
  %84 = getelementptr inbounds i8, ptr %65, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %87 = icmp eq i8 %85, %86
  %88 = getelementptr inbounds i8, ptr %65, i64 2
  %89 = select i1 %87, ptr %88, ptr %84
  br label %64, !llvm.loop !144

90:                                               ; preds = %64, %64
  %91 = call i32 @strtoichar(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #35
  %92 = icmp ne i32 %91, 0
  %93 = load i32, ptr @cbench_print, align 4
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load ptr, ptr @stderr, align 8, !tbaa !7
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.192, ptr noundef nonnull %2, i32 noundef 1042, ptr noundef nonnull @.str.193) #37
  br label %99

99:                                               ; preds = %96, %90
  %100 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %0, ptr noundef nonnull @.str.56.222) #35
  %101 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.56.222) #35
  br i1 %8, label %102, label %113

102:                                              ; preds = %99
  %103 = add i32 %100, %45
  %104 = add i32 %103, %101
  %105 = sitofp i32 %104 to double
  %106 = sitofp i32 %45 to double
  %107 = fdiv double %105, %106
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.194, double noundef %107) #35
  %109 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %110 = call i32 @fputs(ptr noundef nonnull %6, ptr noundef %109)
  %111 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %6) #35
  %112 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %6) #35
  br label %113

113:                                              ; preds = %102, %99, %60
  %114 = load ptr, ptr @stdout, align 8, !tbaa !7
  %115 = call i32 @putc(i32 noundef 10, ptr noundef %114)
  br label %14, !llvm.loop !145

116:                                              ; preds = %14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #35
  ret void
}

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mktemp(ptr noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

declare i32 @unlink(...) local_unnamed_addr #7

declare i32 @link(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linit() local_unnamed_addr #0 {
  %1 = load i1, ptr @inited, align 4
  br i1 %1, label %495, label %2

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @hashname, i32 noundef 0) #35
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %495, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.237, ptr noundef nonnull @hashname) #37
  br label %495

11:                                               ; preds = %2
  %12 = tail call i64 @read(i32 noundef %3, ptr noundef nonnull @hashheader, i64 noundef 3928) #35
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr @hashsize, align 4, !tbaa !13
  %14 = icmp ult i32 %13, 3928
  br i1 %14, label %495, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr @hashheader, align 4, !tbaa !146
  %17 = zext i16 %16 to i32
  %18 = icmp eq i16 %16, -27134
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %495, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !7
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.4.238, ptr noundef nonnull @hashname, i32 noundef 38402, i32 noundef %17) #37
  br label %495

25:                                               ; preds = %15
  %26 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 31), align 4, !tbaa !147
  %27 = zext i16 %26 to i32
  %28 = icmp eq i16 %26, -27134
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %495, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.5.239, ptr noundef nonnull @hashname, i32 noundef 38402, i32 noundef %27) #37
  br label %495

35:                                               ; preds = %25
  %36 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 1), align 2, !tbaa !148
  %37 = zext i16 %36 to i32
  %38 = icmp ne i16 %36, 3
  %39 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 2), align 4
  %40 = sext i16 %39 to i32
  %41 = icmp ne i16 %39, 100
  %42 = select i1 %38, i1 true, i1 %41
  %43 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 3), align 2
  %44 = sext i16 %43 to i32
  %45 = icmp ne i16 %43, 10
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %495, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.6.240, i32 noundef %37, i32 noundef %40, i32 noundef %44, i32 noundef 3, i32 noundef 100, i32 noundef 10) #37
  br label %495

53:                                               ; preds = %35
  %54 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  store i32 1, ptr @hashsize, align 4, !tbaa !13
  %57 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #40
  store ptr %57, ptr @hashtbl, align 8, !tbaa !7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %495, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @stderr, align 8, !tbaa !7
  %64 = tail call i64 @fwrite(ptr nonnull @.str.7.241, i64 40, i64 1, ptr %63) #37
  br label %495

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %67 = load i64, ptr %66, align 8, !tbaa !63
  %68 = and i64 %67, -201326593
  store i64 %68, ptr %66, align 8, !tbaa !63
  br label %74

69:                                               ; preds = %53
  %70 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !149
  %71 = zext i32 %70 to i64
  %72 = mul nuw nsw i64 %71, 24
  %73 = tail call noalias ptr @malloc(i64 noundef %72) #41
  store ptr %73, ptr @hashtbl, align 8, !tbaa !7
  store i32 %70, ptr @hashsize, align 4, !tbaa !13
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi ptr [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), %69 ], [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), %65 ]
  %76 = load i32, ptr %75, align 4, !tbaa !13
  %77 = zext i32 %76 to i64
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #41
  store ptr %78, ptr @hashstrings, align 8, !tbaa !7
  %79 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 9), align 4, !tbaa !150
  store i32 %79, ptr @numsflags, align 4, !tbaa !13
  %80 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 10), align 4, !tbaa !151
  store i32 %80, ptr @numpflags, align 4, !tbaa !13
  %81 = add nsw i32 %80, %79
  %82 = sext i32 %81 to i64
  %83 = shl nsw i64 %82, 8
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #41
  store ptr %84, ptr @sflaglist, align 8, !tbaa !7
  %85 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %86 = icmp eq ptr %85, null
  %87 = icmp eq ptr %78, null
  %88 = or i1 %87, %86
  %89 = icmp eq ptr %84, null
  %90 = or i1 %89, %88
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %495, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !7
  %96 = tail call i64 @fwrite(ptr nonnull @.str.7.241, i64 40, i64 1, ptr %95) #37
  br label %495

97:                                               ; preds = %74
  %98 = sext i32 %79 to i64
  %99 = getelementptr inbounds %struct.flagent, ptr %84, i64 %98
  store ptr %99, ptr @pflaglist, align 8, !tbaa !7
  br i1 %55, label %122, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !152
  %102 = zext i32 %101 to i64
  %103 = tail call i64 @read(i32 noundef %3, ptr noundef %78, i64 noundef %102) #35
  %104 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !152
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %495, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr @stderr, align 8, !tbaa !7
  %112 = tail call i64 @fwrite(ptr nonnull @.str.8.242, i64 27, i64 1, ptr %111) #37
  br label %495

113:                                              ; preds = %100
  %114 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !153
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %105
  %117 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !149
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, 24
  %120 = add nsw i64 %116, %119
  %121 = tail call i64 @lseek(i32 noundef %3, i64 noundef %120, i32 noundef 1) #35
  br label %145

122:                                              ; preds = %97
  %123 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !153
  %124 = zext i32 %123 to i64
  %125 = tail call i64 @read(i32 noundef %3, ptr noundef %78, i64 noundef %124) #35
  %126 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !153
  %127 = sext i32 %126 to i64
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %131 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !149
  %132 = zext i32 %131 to i64
  %133 = mul nuw nsw i64 %132, 24
  %134 = tail call i64 @read(i32 noundef %3, ptr noundef %130, i64 noundef %133) #35
  %135 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !149
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, 24
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %129, %122
  %140 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %495, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @stderr, align 8, !tbaa !7
  %144 = tail call i64 @fwrite(ptr nonnull @.str.8.242, i64 27, i64 1, ptr %143) #37
  br label %495

145:                                              ; preds = %129, %113
  %146 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %147 = load i32, ptr @numsflags, align 4, !tbaa !13
  %148 = load i32, ptr @numpflags, align 4, !tbaa !13
  %149 = add nsw i32 %148, %147
  %150 = zext i32 %149 to i64
  %151 = shl nuw nsw i64 %150, 8
  %152 = tail call i64 @read(i32 noundef %3, ptr noundef %146, i64 noundef %151) #35
  %153 = load i32, ptr @numsflags, align 4, !tbaa !13
  %154 = load i32, ptr @numpflags, align 4, !tbaa !13
  %155 = add nsw i32 %154, %153
  %156 = sext i32 %155 to i64
  %157 = shl nsw i64 %156, 8
  %158 = icmp eq i64 %152, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %145
  %160 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %495, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @stderr, align 8, !tbaa !7
  %164 = tail call i64 @fwrite(ptr nonnull @.str.8.242, i64 27, i64 1, ptr %163) #37
  br label %495

165:                                              ; preds = %145
  %166 = tail call i32 @close(i32 noundef %3) #35
  %167 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %165
  %170 = load i32, ptr @hashsize, align 4, !tbaa !13
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %169
  %173 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi ptr [ %195, %174 ], [ %173, %172 ]
  %176 = phi i32 [ %177, %174 ], [ %170, %172 ]
  %177 = add nsw i32 %176, -1
  %178 = getelementptr inbounds %struct.dent, ptr %175, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !71
  %180 = icmp eq ptr %179, inttoptr (i64 -1 to ptr)
  %181 = load ptr, ptr @hashstrings, align 8
  %182 = ptrtoint ptr %179 to i64
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = getelementptr inbounds i8, ptr %181, i64 %184
  %186 = select i1 %180, ptr null, ptr %185
  store ptr %186, ptr %178, align 8, !tbaa !71
  %187 = load ptr, ptr %175, align 8, !tbaa !67
  %188 = icmp eq ptr %187, inttoptr (i64 -1 to ptr)
  %189 = load ptr, ptr @hashtbl, align 8
  %190 = ptrtoint ptr %187 to i64
  %191 = shl i64 %190, 32
  %192 = ashr exact i64 %191, 32
  %193 = getelementptr inbounds %struct.dent, ptr %189, i64 %192
  %194 = select i1 %188, ptr null, ptr %193
  store ptr %194, ptr %175, align 8, !tbaa !67
  %195 = getelementptr inbounds %struct.dent, ptr %175, i64 1
  %196 = icmp sgt i32 %176, 1
  br i1 %196, label %174, label %197, !llvm.loop !154

197:                                              ; preds = %174, %169, %165
  %198 = load i32, ptr @numsflags, align 4, !tbaa !13
  %199 = load i32, ptr @numpflags, align 4, !tbaa !13
  %200 = add nsw i32 %199, %198
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %197
  %203 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  br label %204

204:                                              ; preds = %233, %202
  %205 = phi i32 [ %207, %233 ], [ %200, %202 ]
  %206 = phi ptr [ %234, %233 ], [ %203, %202 ]
  %207 = add nsw i32 %205, -1
  %208 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 3
  %209 = load i16, ptr %208, align 2, !tbaa !45
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %204
  %212 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %213 = load ptr, ptr %206, align 8, !tbaa !107
  %214 = ptrtoint ptr %213 to i64
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = getelementptr inbounds i8, ptr %212, i64 %216
  br label %218

218:                                              ; preds = %211, %204
  %219 = phi ptr [ %217, %211 ], [ null, %204 ]
  store ptr %219, ptr %206, align 8, !tbaa !107
  %220 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 4
  %221 = load i16, ptr %220, align 4, !tbaa !47
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %218
  %224 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %225 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !108
  %227 = ptrtoint ptr %226 to i64
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds i8, ptr %224, i64 %229
  store ptr %230, ptr %225, align 8, !tbaa !108
  br label %233

231:                                              ; preds = %218
  %232 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 1
  store ptr null, ptr %232, align 8, !tbaa !108
  br label %233

233:                                              ; preds = %231, %223
  %234 = getelementptr inbounds %struct.flagent, ptr %206, i64 1
  %235 = icmp sgt i32 %205, 1
  br i1 %235, label %204, label %236, !llvm.loop !155

236:                                              ; preds = %233, %197
  %237 = icmp sgt i32 %198, 0
  br i1 %237, label %238, label %329

238:                                              ; preds = %236
  %239 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  br label %240

240:                                              ; preds = %323, %238
  %241 = phi ptr [ %327, %323 ], [ %239, %238 ]
  %242 = phi i32 [ %326, %323 ], [ %198, %238 ]
  %243 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 4
  %244 = load i16, ptr %243, align 4, !tbaa !47
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %280, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !108
  %249 = sext i16 %244 to i64
  %250 = getelementptr inbounds i8, ptr %248, i64 %249
  %251 = getelementptr inbounds i8, ptr %250, i64 -1
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %253
  %255 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %253, i32 1
  %256 = load i32, ptr %255, align 8, !tbaa !156
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %246
  %259 = load ptr, ptr %254, align 16, !tbaa !15
  %260 = icmp eq ptr %259, null
  br i1 %260, label %280, label %264

261:                                              ; preds = %273
  %262 = load ptr, ptr %274, align 8, !tbaa !15
  %263 = icmp eq ptr %262, null
  br i1 %263, label %280, label %264, !llvm.loop !158

264:                                              ; preds = %261, %258
  %265 = phi ptr [ %262, %261 ], [ %259, %258 ]
  %266 = phi ptr [ %276, %261 ], [ %251, %258 ]
  %267 = icmp eq ptr %266, %248
  br i1 %267, label %273, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %266, i64 -1
  %270 = load i8, ptr %269, align 1, !tbaa !15
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds %struct.flagptr, ptr %265, i64 %271
  br label %273

273:                                              ; preds = %268, %264
  %274 = phi ptr [ %272, %268 ], [ %265, %264 ]
  %275 = phi i32 [ 0, %268 ], [ 1, %264 ]
  %276 = phi ptr [ %269, %268 ], [ %266, %264 ]
  %277 = getelementptr inbounds %struct.flagptr, ptr %274, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !156
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %261, label %280, !llvm.loop !158

280:                                              ; preds = %273, %261, %258, %246, %240
  %281 = phi ptr [ @sflagindex, %240 ], [ %254, %246 ], [ %254, %258 ], [ %274, %273 ], [ %274, %261 ]
  %282 = phi i32 [ 1, %240 ], [ 0, %246 ], [ 0, %258 ], [ %275, %273 ], [ %275, %261 ]
  %283 = getelementptr inbounds %struct.flagptr, ptr %281, i64 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !156
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  store ptr %241, ptr %281, align 8, !tbaa !15
  br label %287

287:                                              ; preds = %286, %280
  %288 = load i32, ptr %283, align 8, !tbaa !156
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %283, align 8, !tbaa !156
  %290 = icmp eq i32 %282, 0
  %291 = icmp sgt i32 %288, 2
  %292 = select i1 %290, i1 %291, i1 false
  br i1 %292, label %293, label %323

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !108
  %296 = load ptr, ptr %281, align 8, !tbaa !15
  %297 = getelementptr inbounds %struct.flagent, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !108
  %299 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %295, ptr noundef nonnull dereferenceable(1) %298) #36
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %323, label %301

301:                                              ; preds = %293
  %302 = load i32, ptr @numsflags, align 4, !tbaa !13
  %303 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %304 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %305 = add nsw i32 %304, 128
  %306 = zext i32 %305 to i64
  %307 = tail call noalias ptr @calloc(i64 noundef %306, i64 noundef 16) #40
  store ptr %307, ptr %281, align 8, !tbaa !15
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %315

309:                                              ; preds = %301
  %310 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %495, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr @stderr, align 8, !tbaa !7
  %314 = tail call i64 @fwrite(ptr nonnull @.str.9.243, i64 45, i64 1, ptr %313) #37
  br label %495

315:                                              ; preds = %301
  %316 = getelementptr inbounds %struct.flagent, ptr %296, i64 -1
  %317 = ptrtoint ptr %316 to i64
  %318 = ptrtoint ptr %303 to i64
  %319 = sub i64 %317, %318
  %320 = lshr exact i64 %319, 8
  %321 = trunc i64 %320 to i32
  %322 = sub i32 %302, %321
  store i32 0, ptr %283, align 8, !tbaa !156
  br label %323

323:                                              ; preds = %315, %293, %287
  %324 = phi i32 [ %242, %287 ], [ %322, %315 ], [ %242, %293 ]
  %325 = phi ptr [ %241, %287 ], [ %316, %315 ], [ %241, %293 ]
  %326 = add nsw i32 %324, -1
  %327 = getelementptr inbounds %struct.flagent, ptr %325, i64 1
  %328 = icmp sgt i32 %324, 1
  br i1 %328, label %240, label %329, !llvm.loop !159

329:                                              ; preds = %323, %236
  %330 = load i32, ptr @numpflags, align 4, !tbaa !13
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %423

332:                                              ; preds = %329
  %333 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  br label %334

334:                                              ; preds = %417, %332
  %335 = phi ptr [ %421, %417 ], [ %333, %332 ]
  %336 = phi i32 [ %420, %417 ], [ %330, %332 ]
  %337 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 4
  %338 = load i16, ptr %337, align 4, !tbaa !47
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %374, label %340

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !108
  %343 = load i8, ptr %342, align 1, !tbaa !15
  %344 = zext i8 %343 to i64
  %345 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %344
  %346 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %344, i32 1
  %347 = load i32, ptr %346, align 8, !tbaa !156
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %374

349:                                              ; preds = %340
  %350 = load ptr, ptr %345, align 16, !tbaa !15
  %351 = icmp eq ptr %350, null
  br i1 %351, label %370, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds i8, ptr %342, i64 1
  br label %360

354:                                              ; preds = %360
  %355 = xor i1 %364, true
  %356 = zext i1 %355 to i64
  %357 = getelementptr inbounds i8, ptr %362, i64 %356
  %358 = load ptr, ptr %366, align 8, !tbaa !15
  %359 = icmp eq ptr %358, null
  br i1 %359, label %370, label %360, !llvm.loop !160

360:                                              ; preds = %354, %352
  %361 = phi ptr [ %350, %352 ], [ %358, %354 ]
  %362 = phi ptr [ %353, %352 ], [ %357, %354 ]
  %363 = load i8, ptr %362, align 1, !tbaa !15
  %364 = icmp eq i8 %363, 0
  %365 = zext i8 %363 to i64
  %366 = getelementptr inbounds %struct.flagptr, ptr %361, i64 %365
  %367 = getelementptr inbounds %struct.flagptr, ptr %361, i64 %365, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !156
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %354, label %370, !llvm.loop !160

370:                                              ; preds = %360, %354, %349
  %371 = phi ptr [ %345, %349 ], [ %366, %354 ], [ %366, %360 ]
  %372 = phi i1 [ false, %349 ], [ %364, %354 ], [ %364, %360 ]
  %373 = zext i1 %372 to i32
  br label %374

374:                                              ; preds = %370, %340, %334
  %375 = phi ptr [ @pflagindex, %334 ], [ %345, %340 ], [ %371, %370 ]
  %376 = phi i32 [ 1, %334 ], [ 0, %340 ], [ %373, %370 ]
  %377 = getelementptr inbounds %struct.flagptr, ptr %375, i64 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !156
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %374
  store ptr %335, ptr %375, align 8, !tbaa !15
  br label %381

381:                                              ; preds = %380, %374
  %382 = load i32, ptr %377, align 8, !tbaa !156
  %383 = add nsw i32 %382, 1
  store i32 %383, ptr %377, align 8, !tbaa !156
  %384 = icmp eq i32 %376, 0
  %385 = icmp sgt i32 %382, 2
  %386 = select i1 %384, i1 %385, i1 false
  br i1 %386, label %387, label %417

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !108
  %390 = load ptr, ptr %375, align 8, !tbaa !15
  %391 = getelementptr inbounds %struct.flagent, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !108
  %393 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %389, ptr noundef nonnull dereferenceable(1) %392) #36
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %417, label %395

395:                                              ; preds = %387
  %396 = load i32, ptr @numpflags, align 4, !tbaa !13
  %397 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %398 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %399 = add nsw i32 %398, 128
  %400 = sext i32 %399 to i64
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 16) #40
  store ptr %401, ptr %375, align 8, !tbaa !15
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %495, label %406

406:                                              ; preds = %403
  %407 = load ptr, ptr @stderr, align 8, !tbaa !7
  %408 = tail call i64 @fwrite(ptr nonnull @.str.9.243, i64 45, i64 1, ptr %407) #37
  br label %495

409:                                              ; preds = %395
  %410 = getelementptr inbounds %struct.flagent, ptr %390, i64 -1
  %411 = ptrtoint ptr %410 to i64
  %412 = ptrtoint ptr %397 to i64
  %413 = sub i64 %411, %412
  %414 = lshr exact i64 %413, 8
  %415 = trunc i64 %414 to i32
  %416 = sub i32 %396, %415
  store i32 0, ptr %377, align 8, !tbaa !156
  br label %417

417:                                              ; preds = %409, %387, %381
  %418 = phi i32 [ %336, %381 ], [ %416, %409 ], [ %336, %387 ]
  %419 = phi ptr [ %335, %381 ], [ %410, %409 ], [ %335, %387 ]
  %420 = add nsw i32 %418, -1
  %421 = getelementptr inbounds %struct.flagent, ptr %419, i64 1
  %422 = icmp sgt i32 %418, 1
  br i1 %422, label %334, label %423, !llvm.loop !161

423:                                              ; preds = %417, %329
  %424 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !162
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store ptr null, ptr @chartypes, align 8, !tbaa !7
  br label %494

427:                                              ; preds = %423
  %428 = sext i32 %424 to i64
  %429 = mul nsw i64 %428, 24
  %430 = tail call noalias ptr @malloc(i64 noundef %429) #41
  store ptr %430, ptr @chartypes, align 8, !tbaa !7
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %495, label %435

435:                                              ; preds = %432
  %436 = load ptr, ptr @stderr, align 8, !tbaa !7
  %437 = tail call i64 @fwrite(ptr nonnull @.str.9.243, i64 45, i64 1, ptr %436) #37
  br label %495

438:                                              ; preds = %427
  %439 = icmp sgt i32 %424, 0
  br i1 %439, label %440, label %494

440:                                              ; preds = %438
  %441 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 14), align 4, !tbaa !163
  %442 = zext nneg i32 %424 to i64
  br label %443

443:                                              ; preds = %489, %440
  %444 = phi i64 [ 0, %440 ], [ %492, %489 ]
  %445 = phi i32 [ %441, %440 ], [ %491, %489 ]
  %446 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %450 = getelementptr inbounds %struct.success, ptr %449, i64 %444
  store ptr %448, ptr %450, align 8, !tbaa !164
  %451 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %452 = getelementptr inbounds %struct.success, ptr %451, i64 %444
  %453 = load ptr, ptr %452, align 8, !tbaa !164
  %454 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %453) #36
  %455 = trunc i64 %454 to i32
  %456 = add i32 %445, 1
  %457 = add i32 %456, %455
  %458 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i8, ptr %458, i64 %459
  %461 = getelementptr inbounds %struct.success, ptr %451, i64 %444, i32 1
  store ptr %460, ptr %461, align 8, !tbaa !166
  %462 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %463 = getelementptr inbounds %struct.success, ptr %462, i64 %444, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !166
  %465 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %464) #36
  %466 = trunc i64 %465 to i32
  %467 = add i32 %457, 1
  %468 = add i32 %467, %466
  %469 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %470 = sext i32 %468 to i64
  %471 = getelementptr inbounds i8, ptr %469, i64 %470
  %472 = getelementptr inbounds %struct.success, ptr %462, i64 %444, i32 2
  store ptr %471, ptr %472, align 8, !tbaa !167
  %473 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %474 = sext i32 %468 to i64
  %475 = getelementptr inbounds i8, ptr %473, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !15
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %489, label %478

478:                                              ; preds = %478, %443
  %479 = phi ptr [ %486, %478 ], [ %475, %443 ]
  %480 = phi i32 [ %484, %478 ], [ %468, %443 ]
  %481 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %479) #36
  %482 = trunc i64 %481 to i32
  %483 = add i32 %480, 1
  %484 = add i32 %483, %482
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, ptr %473, i64 %485
  %487 = load i8, ptr %486, align 1, !tbaa !15
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %489, label %478, !llvm.loop !168

489:                                              ; preds = %478, %443
  %490 = phi i32 [ %468, %443 ], [ %484, %478 ]
  %491 = add nsw i32 %490, 1
  %492 = add nuw nsw i64 %444, 1
  %493 = icmp eq i64 %492, %442
  br i1 %493, label %494, label %443, !llvm.loop !169

494:                                              ; preds = %489, %438, %426
  store i1 true, ptr @inited, align 4
  br label %495

495:                                              ; preds = %494, %435, %432, %406, %403, %312, %309, %162, %159, %142, %139, %110, %107, %94, %91, %62, %59, %50, %47, %32, %29, %22, %19, %11, %8, %5, %0
  %496 = phi i32 [ 0, %494 ], [ 0, %0 ], [ -1, %8 ], [ -1, %5 ], [ -1, %22 ], [ -1, %19 ], [ -1, %32 ], [ -1, %29 ], [ -1, %50 ], [ -1, %47 ], [ -1, %62 ], [ -1, %59 ], [ -1, %94 ], [ -1, %91 ], [ -1, %110 ], [ -1, %107 ], [ -1, %142 ], [ -1, %139 ], [ -1, %162 ], [ -1, %159 ], [ -1, %312 ], [ -1, %309 ], [ -1, %406 ], [ -1, %403 ], [ -1, %435 ], [ -1, %432 ], [ -1, %11 ]
  ret i32 %496
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #23

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #35
  %4 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %5 = load i32, ptr @hashsize, align 4, !tbaa !13
  %6 = tail call i32 @hash(ptr noundef %0, i32 noundef %5) #35
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dent, ptr %4, i64 %7
  %9 = call i32 @ichartostr(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr @cbench_print, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.10.246, ptr noundef nonnull %3, i32 noundef 466, ptr noundef nonnull @.str.11.247) #37
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %3, align 16
  %21 = getelementptr inbounds i8, ptr %3, i64 1
  br label %22

22:                                               ; preds = %46, %19
  %23 = phi ptr [ %8, %19 ], [ %48, %46 ]
  %24 = getelementptr inbounds %struct.dent, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %25, align 1, !tbaa !15
  %29 = icmp eq i8 %28, %20
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %21) #36
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %30, %27, %22
  %35 = getelementptr inbounds %struct.dent, ptr %23, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !63
  %37 = and i64 %36, 1073741824
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %39, %34
  %40 = phi ptr [ %41, %39 ], [ %23, %34 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.dent, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !63
  %44 = and i64 %43, 1073741824
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %39, !llvm.loop !170

46:                                               ; preds = %39, %34
  %47 = phi ptr [ %23, %34 ], [ %41, %39 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %22, !llvm.loop !171

50:                                               ; preds = %46, %17
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = call ptr @treelookup(ptr noundef %0) #35
  br label %54

54:                                               ; preds = %52, %50, %30
  %55 = phi ptr [ %53, %52 ], [ null, %50 ], [ %23, %30 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #35
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @makedent(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #35
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %6 = shl i64 %5, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, ptr %9, align 1, !tbaa !15
  br label %13

13:                                               ; preds = %12, %3
  store ptr null, ptr %2, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  store i64 67108864, ptr %14, align 8, !tbaa !63
  %15 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %16 = sext i8 %15 to i32
  %17 = tail call ptr @index(ptr noundef %0, i32 noundef %16) #36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8 0, ptr %17, align 1, !tbaa !15
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 100, i32 noundef 1), !range !21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  %26 = add nsw i32 %1, -2
  %27 = zext i32 %26 to i64
  %28 = getelementptr i8, ptr %4, i64 %27
  br label %29

29:                                               ; preds = %53, %25
  %30 = phi ptr [ %54, %53 ], [ %0, %25 ]
  %31 = phi i32 [ %33, %53 ], [ %1, %25 ]
  %32 = phi ptr [ %34, %53 ], [ %4, %25 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = load i8, ptr %32, align 1, !tbaa !15
  %36 = zext i8 %35 to i64
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %29
  %39 = icmp sgt i8 %35, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %35, ptr %30, align 1, !tbaa !15
  br label %53

42:                                               ; preds = %38
  %43 = add nuw nsw i64 %36, 4294967168
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %44
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %30, %42 ], [ %51, %46 ]
  %48 = phi ptr [ %45, %42 ], [ %49, %46 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !15
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %50, ptr %47, align 1, !tbaa !15
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %53, label %46, !llvm.loop !172

53:                                               ; preds = %46, %40
  %54 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %55 = icmp eq ptr %32, %28
  br i1 %55, label %56, label %29, !llvm.loop !173

56:                                               ; preds = %53, %29
  %57 = phi i32 [ %31, %29 ], [ 1, %53 ]
  %58 = phi ptr [ %30, %29 ], [ %54, %53 ]
  %59 = icmp slt i32 %57, 2
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %56, %23
  %62 = phi i32 [ 1, %23 ], [ %60, %56 ]
  %63 = phi ptr [ %0, %23 ], [ %58, %56 ]
  store i8 0, ptr %63, align 1, !tbaa !15
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8, ptr %4, align 16, !tbaa !15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %101, label %74

68:                                               ; preds = %61, %20
  %69 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %217, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !7
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.250, ptr noundef %0, i32 noundef 156, ptr noundef nonnull @.str.1.251) #37
  br label %217

74:                                               ; preds = %97, %65
  %75 = phi i8 [ %99, %97 ], [ %66, %65 ]
  %76 = phi ptr [ %98, %97 ], [ %4, %65 ]
  %77 = zext i8 %75 to i64
  %78 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %77
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = icmp eq i8 %83, 0
  %85 = icmp eq ptr %76, %4
  %86 = or i1 %85, %84
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, ptr %76, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87, %81
  %92 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %217, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !7
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.2.252, ptr noundef %0) #37
  br label %217

97:                                               ; preds = %87, %74
  %98 = getelementptr inbounds i8, ptr %76, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %74, !llvm.loop !174

101:                                              ; preds = %97, %65
  %102 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %103 = trunc i64 %102 to i32
  %104 = load i8, ptr %4, align 16, !tbaa !15
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %159, label %106

106:                                              ; preds = %101
  %107 = zext i8 %104 to i64
  %108 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !15
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %116, label %121

111:                                              ; preds = %116
  %112 = zext i8 %119 to i64
  %113 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121, !llvm.loop !175

116:                                              ; preds = %111, %106
  %117 = phi ptr [ %118, %111 ], [ %4, %106 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %159, label %111, !llvm.loop !175

121:                                              ; preds = %111, %106
  %122 = phi i1 [ %105, %106 ], [ %120, %111 ]
  %123 = phi ptr [ %4, %106 ], [ %118, %111 ]
  br i1 %122, label %159, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %123, align 1, !tbaa !15
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %124
  %128 = zext i8 %125 to i64
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %137, %127
  %133 = phi ptr [ %134, %137 ], [ %123, %127 ]
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !15
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %144, label %137, !llvm.loop !176

137:                                              ; preds = %132
  %138 = zext i8 %135 to i64
  %139 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %132, label %142, !llvm.loop !176

142:                                              ; preds = %137, %127
  %143 = phi i1 [ %126, %127 ], [ %136, %137 ]
  br i1 %143, label %144, label %159

144:                                              ; preds = %142, %132, %124
  %145 = zext i8 %104 to i64
  %146 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %154, %144
  %150 = phi ptr [ %151, %154 ], [ %4, %144 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = zext i8 %152 to i64
  %156 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %149, label %159, !llvm.loop !177

159:                                              ; preds = %154, %149, %144, %142, %121, %116, %101
  %160 = phi i64 [ 268435456, %121 ], [ 0, %144 ], [ 805306368, %142 ], [ 268435456, %101 ], [ 805306368, %154 ], [ 536870912, %149 ], [ 268435456, %116 ]
  %161 = load i64, ptr %14, align 8, !tbaa !63
  %162 = or i64 %161, %160
  store i64 %162, ptr %14, align 8, !tbaa !63
  %163 = icmp sgt i32 %103, 99
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %217, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @stderr, align 8, !tbaa !7
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.250, ptr noundef %0, i32 noundef 186, ptr noundef nonnull @.str.1.251) #37
  br label %217

170:                                              ; preds = %159
  %171 = add nsw i32 %103, 1
  %172 = call ptr @mymalloc(i32 noundef %171) #35
  %173 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !71
  %174 = icmp eq ptr %172, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %217, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr @stderr, align 8, !tbaa !7
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.3.253, ptr noundef %0) #37
  br label %217

181:                                              ; preds = %170
  %182 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %172, ptr noundef nonnull dereferenceable(1) %0) #35
  %183 = load i64, ptr %14, align 8, !tbaa !63
  %184 = and i64 %183, 805306368
  %185 = icmp eq i64 %184, 805306368
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %173, align 8, !tbaa !71
  call void @chupcase(ptr noundef %187)
  br label %188

188:                                              ; preds = %186, %181
  br i1 %18, label %217, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds i8, ptr %17, i64 1
  br label %191

191:                                              ; preds = %210, %189
  %192 = phi ptr [ %190, %189 ], [ %216, %210 ]
  %193 = load i8, ptr %192, align 1, !tbaa !15
  switch i8 %193, label %194 [
    i8 0, label %217
    i8 10, label %217
  ]

194:                                              ; preds = %191
  %195 = zext i8 %193 to i32
  %196 = add i8 %193, -65
  %197 = icmp ult i8 %196, 27
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = add nsw i32 %195, -65
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw nsw i64 1, %200
  %202 = load i64, ptr %14, align 8, !tbaa !63
  %203 = or i64 %202, %201
  store i64 %203, ptr %14, align 8, !tbaa !63
  br label %210

204:                                              ; preds = %194
  %205 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr @stderr, align 8, !tbaa !7
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.4.254, i32 noundef %195) #37
  br label %210

210:                                              ; preds = %207, %204, %198
  %211 = getelementptr inbounds i8, ptr %192, i64 1
  %212 = load i8, ptr %211, align 1, !tbaa !15
  %213 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %214 = icmp eq i8 %212, %213
  %215 = getelementptr inbounds i8, ptr %192, i64 2
  %216 = select i1 %214, ptr %215, ptr %211
  br label %191, !llvm.loop !178

217:                                              ; preds = %191, %191, %188, %178, %175, %167, %164, %94, %91, %71, %68
  %218 = phi i32 [ -1, %71 ], [ -1, %68 ], [ -1, %94 ], [ -1, %91 ], [ -1, %167 ], [ -1, %164 ], [ -1, %178 ], [ -1, %175 ], [ 0, %188 ], [ 0, %191 ], [ 0, %191 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #35
  ret i32 %218
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @strtoichar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %122

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %110, %6
  %9 = phi ptr [ %0, %6 ], [ %113, %110 ]
  %10 = phi i32 [ %2, %6 ], [ %12, %110 ]
  %11 = phi ptr [ %1, %6 ], [ %115, %110 ]
  %12 = add nsw i32 %10, -1
  %13 = load i8, ptr %11, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %117, label %15

15:                                               ; preds = %8
  %16 = zext i8 %13 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %106, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %22 = load i32, ptr @defdupchar, align 4
  %23 = select i1 %7, i32 %22, i32 0
  %24 = icmp slt i32 %21, 1
  br i1 %24, label %97, label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %21, -1
  %27 = getelementptr inbounds i8, ptr %11, i64 1
  br label %28

28:                                               ; preds = %93, %25
  %29 = phi i32 [ %95, %93 ], [ %26, %25 ]
  %30 = phi i32 [ %94, %93 ], [ 0, %25 ]
  %31 = add nsw i32 %30, %29
  %32 = ashr i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %28
  %38 = load i8, ptr %11, align 1, !tbaa !15
  %39 = xor i8 %38, %35
  %40 = and i8 %39, 127
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %54

42:                                               ; preds = %48
  %43 = getelementptr inbounds i8, ptr %49, i64 1
  %44 = load i8, ptr %49, align 1, !tbaa !15
  %45 = xor i8 %44, %52
  %46 = and i8 %45, 127
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !llvm.loop !179

48:                                               ; preds = %42, %37
  %49 = phi ptr [ %43, %42 ], [ %27, %37 ]
  %50 = phi ptr [ %51, %42 ], [ %34, %37 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %42, !llvm.loop !179

54:                                               ; preds = %48, %42, %37, %28
  %55 = phi ptr [ %34, %28 ], [ %34, %37 ], [ %51, %48 ], [ %51, %42 ]
  %56 = phi i1 [ %36, %28 ], [ %36, %37 ], [ %53, %48 ], [ %53, %42 ]
  %57 = phi ptr [ %11, %28 ], [ %27, %37 ], [ %43, %42 ], [ %49, %48 ]
  br i1 %56, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %33
  %60 = load i32, ptr %59, align 4, !tbaa !13
  %61 = icmp eq i32 %60, %23
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %33
  %64 = load i32, ptr %63, align 4, !tbaa !13
  store i32 %64, ptr @laststringch, align 4, !tbaa !13
  %65 = ptrtoint ptr %55 to i64
  %66 = ptrtoint ptr %34 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  br label %98

69:                                               ; preds = %58
  %70 = getelementptr inbounds i8, ptr %55, i64 -1
  br label %71

71:                                               ; preds = %69, %54
  %72 = phi ptr [ %70, %69 ], [ %55, %54 ]
  %73 = getelementptr inbounds i8, ptr %57, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = and i8 %74, 127
  %76 = load i8, ptr %72, align 1, !tbaa !15
  %77 = and i8 %76, 127
  %78 = icmp ult i8 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = add nsw i32 %32, -1
  br label %93

81:                                               ; preds = %71
  %82 = icmp ugt i8 %75, %77
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = add nsw i32 %32, 1
  br label %93

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %33
  %87 = load i32, ptr %86, align 4, !tbaa !13
  %88 = icmp slt i32 %23, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = add nsw i32 %32, -1
  br label %93

91:                                               ; preds = %85
  %92 = add nsw i32 %32, 1
  br label %93

93:                                               ; preds = %91, %89, %83, %79
  %94 = phi i32 [ %30, %79 ], [ %84, %83 ], [ %30, %89 ], [ %92, %91 ]
  %95 = phi i32 [ %80, %79 ], [ %29, %83 ], [ %90, %89 ], [ %29, %91 ]
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %28, !llvm.loop !180

97:                                               ; preds = %93, %20
  store i32 -1, ptr @laststringch, align 4, !tbaa !13
  br label %98

98:                                               ; preds = %97, %62
  %99 = phi i32 [ %68, %62 ], [ 0, %97 ]
  %100 = icmp sgt i32 %99, 0
  %101 = select i1 %100, i32 %99, i32 1
  br i1 %100, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, ptr @laststringch, align 4, !tbaa !13
  %104 = trunc i32 %103 to i8
  %105 = xor i8 %104, -128
  br label %110

106:                                              ; preds = %98, %15
  %107 = phi i32 [ %101, %98 ], [ 1, %15 ]
  %108 = load i8, ptr %11, align 1, !tbaa !15
  %109 = and i8 %108, 127
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i8 [ %109, %106 ], [ %105, %102 ]
  %112 = phi i32 [ %107, %106 ], [ %101, %102 ]
  %113 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %111, ptr %9, align 1, !tbaa !15
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %11, i64 %114
  %116 = icmp sgt i32 %10, 2
  br i1 %116, label %8, label %117, !llvm.loop !181

117:                                              ; preds = %110, %8
  %118 = phi i32 [ %10, %8 ], [ 1, %110 ]
  %119 = phi ptr [ %9, %8 ], [ %113, %110 ]
  %120 = icmp slt i32 %118, 2
  %121 = zext i1 %120 to i32
  br label %122

122:                                              ; preds = %117, %4
  %123 = phi i32 [ 1, %4 ], [ %121, %117 ]
  %124 = phi ptr [ %0, %4 ], [ %119, %117 ]
  store i8 0, ptr %124, align 1, !tbaa !15
  ret i32 %123
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @chupcase(ptr noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef 1), !range !21
  %3 = icmp ne i32 %2, 0
  %4 = load i32, ptr @cbench_print, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.250, ptr noundef %0, i32 noundef 942, ptr noundef nonnull @.str.1.251) #37
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i8, ptr @strtosichar.out, align 16, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %13, %10
  %14 = phi i8 [ %20, %13 ], [ %11, %10 ]
  %15 = phi ptr [ %19, %13 ], [ @strtosichar.out, %10 ]
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  store i8 %18, ptr %15, align 1, !tbaa !15
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !182

22:                                               ; preds = %13, %10
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 1
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = add i64 %23, 4294967295
  %29 = and i64 %28, 4294967295
  %30 = getelementptr i8, ptr @strtosichar.out, i64 %29
  br label %31

31:                                               ; preds = %53, %27
  %32 = phi ptr [ %54, %53 ], [ %0, %27 ]
  %33 = phi ptr [ %34, %53 ], [ @strtosichar.out, %27 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %33, align 1, !tbaa !15
  %36 = zext i8 %35 to i64
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %31
  %39 = icmp sgt i8 %35, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %35, ptr %32, align 1, !tbaa !15
  br label %53

42:                                               ; preds = %38
  %43 = add nuw nsw i64 %36, 4294967168
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %44
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %32, %42 ], [ %51, %46 ]
  %48 = phi ptr [ %45, %42 ], [ %49, %46 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !15
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %50, ptr %47, align 1, !tbaa !15
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %53, label %46, !llvm.loop !172

53:                                               ; preds = %46, %40
  %54 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %55 = icmp eq ptr %33, %30
  br i1 %55, label %56, label %31, !llvm.loop !173

56:                                               ; preds = %53, %31, %22
  %57 = phi ptr [ %0, %22 ], [ %32, %31 ], [ %54, %53 ]
  store i8 0, ptr %57, align 1, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ichartostr(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %62

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %54, %6
  %9 = phi ptr [ %0, %6 ], [ %55, %54 ]
  %10 = phi i32 [ %2, %6 ], [ %12, %54 ]
  %11 = phi ptr [ %1, %6 ], [ %13, %54 ]
  %12 = add nsw i32 %10, -1
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = load i8, ptr %11, align 1, !tbaa !15
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %8
  %18 = icmp sgt i8 %14, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %14, ptr %9, align 1, !tbaa !15
  br label %54

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -128
  br i1 %7, label %23, label %43

23:                                               ; preds = %21
  %24 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, ptr @defdupchar, align 4, !tbaa !13
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %39, %26
  %30 = phi i64 [ %28, %26 ], [ %31, %39 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = icmp eq i32 %33, %27
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = icmp eq i32 %37, %22
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %29
  %40 = icmp sgt i64 %30, 1
  br i1 %40, label %29, label %43, !llvm.loop !183

41:                                               ; preds = %35
  %42 = trunc i64 %31 to i32
  br label %43

43:                                               ; preds = %41, %39, %23, %21
  %44 = phi i32 [ %22, %21 ], [ %22, %23 ], [ %42, %41 ], [ %22, %39 ]
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %45
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi ptr [ %9, %43 ], [ %52, %47 ]
  %49 = phi ptr [ %46, %43 ], [ %50, %47 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !15
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %51, ptr %48, align 1, !tbaa !15
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %54, label %47, !llvm.loop !172

54:                                               ; preds = %47, %19
  %55 = phi ptr [ %20, %19 ], [ %48, %47 ]
  %56 = icmp sgt i32 %10, 2
  br i1 %56, label %8, label %57, !llvm.loop !173

57:                                               ; preds = %54, %8
  %58 = phi i32 [ %10, %8 ], [ 1, %54 ]
  %59 = phi ptr [ %9, %8 ], [ %55, %54 ]
  %60 = icmp slt i32 %58, 2
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %57, %4
  %63 = phi i32 [ 1, %4 ], [ %61, %57 ]
  %64 = phi ptr [ %0, %4 ], [ %59, %57 ]
  store i8 0, ptr %64, align 1, !tbaa !15
  ret i32 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @whatcap(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i64
  %6 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %19

9:                                                ; preds = %14
  %10 = zext i8 %17 to i64
  %11 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19, !llvm.loop !175

14:                                               ; preds = %9, %4
  %15 = phi ptr [ %16, %9 ], [ %0, %4 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %58, label %9, !llvm.loop !175

19:                                               ; preds = %9, %4
  %20 = phi i1 [ %3, %4 ], [ %18, %9 ]
  %21 = phi ptr [ %0, %4 ], [ %16, %9 ]
  br i1 %20, label %58, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %21, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = zext i8 %23 to i64
  %27 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %35, %25
  %31 = phi ptr [ %32, %35 ], [ %21, %25 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35, !llvm.loop !176

35:                                               ; preds = %30
  %36 = zext i8 %33 to i64
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %30, label %40, !llvm.loop !176

40:                                               ; preds = %35, %25
  %41 = phi i1 [ %24, %25 ], [ %34, %35 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %40, %30, %22
  %43 = load i8, ptr %0, align 1, !tbaa !15
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %53, %42
  %49 = phi ptr [ %50, %53 ], [ %0, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = zext i8 %51 to i64
  %55 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %48, label %58, !llvm.loop !177

58:                                               ; preds = %53, %48, %42, %40, %19, %14, %1
  %59 = phi i64 [ 268435456, %19 ], [ 0, %42 ], [ 805306368, %40 ], [ 268435456, %1 ], [ 805306368, %53 ], [ 536870912, %48 ], [ 268435456, %14 ]
  ret i64 %59
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @addvheader(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @mymalloc(i32 noundef 24) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.3.253, ptr noundef %10) #37
  br label %46

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !184
  %13 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = and i64 %14, 805306368
  %16 = icmp eq i64 %15, 805306368
  %17 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  br i1 %16, label %19, label %18

18:                                               ; preds = %12
  store ptr null, ptr %17, align 8, !tbaa !71
  br label %39

19:                                               ; preds = %12
  %20 = load ptr, ptr %17, align 8, !tbaa !71
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #36
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, 1
  %24 = tail call ptr @mymalloc(i32 noundef %23) #35
  store ptr %24, ptr %17, align 8, !tbaa !71
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.3.253, ptr noundef %32) #37
  br label %34

34:                                               ; preds = %29, %26
  tail call void @myfree(ptr noundef nonnull %2) #35
  br label %46

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %37) #35
  br label %39

39:                                               ; preds = %35, %18
  %40 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  tail call void @chupcase(ptr noundef %41)
  store ptr %2, ptr %0, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !63
  %44 = and i64 %43, -1879048193
  %45 = or disjoint i64 %44, 1342177280
  store i64 %45, ptr %42, align 8, !tbaa !63
  br label %46

46:                                               ; preds = %39, %34, %7, %4
  %47 = phi i32 [ 0, %39 ], [ -1, %34 ], [ -1, %7 ], [ -1, %4 ]
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @combinecaps(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !63
  %5 = and i64 %4, 1879048192
  %6 = icmp eq i64 %5, 1342177280
  br i1 %6, label %7, label %17

7:                                                ; preds = %13, %2
  %8 = phi ptr [ %14, %13 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.dent, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = and i64 %10, 1073741824
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !67
  %15 = tail call fastcc i32 @combine_two_entries(ptr noundef %0, ptr noundef %14, ptr noundef %1), !range !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %19, !llvm.loop !185

17:                                               ; preds = %2
  %18 = tail call fastcc i32 @combine_two_entries(ptr noundef %0, ptr noundef %0, ptr noundef %1), !range !21
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = phi ptr [ %0, %17 ], [ %14, %13 ], [ %8, %7 ]
  %21 = phi i32 [ %18, %17 ], [ %15, %13 ], [ 0, %7 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load i64, ptr %3, align 8, !tbaa !63
  %25 = and i64 %24, 1879048192
  switch i64 %25, label %36 [
    i64 268435456, label %26
    i64 1342177280, label %38
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = xor i64 %30, %28
  %32 = and i64 %31, 134217728
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i64 %25, 1342177280
  %35 = or i1 %34, %33
  br i1 %35, label %38, label %36

36:                                               ; preds = %26, %23
  %37 = tail call i32 @addvheader(ptr noundef %0), !range !35
  br label %38

38:                                               ; preds = %36, %26, %23
  %39 = tail call ptr @mymalloc(i32 noundef 24) #35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.3.253, ptr noundef %47) #37
  br label %76

49:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !184
  %50 = load ptr, ptr %0, align 8, !tbaa !67
  store ptr %50, ptr %39, align 8, !tbaa !67
  store ptr %39, ptr %0, align 8, !tbaa !67
  %51 = load i64, ptr %3, align 8, !tbaa !63
  %52 = and i64 %51, 1073741824
  %53 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !63
  %55 = or i64 %54, %52
  store i64 %55, ptr %53, align 8, !tbaa !63
  %56 = load i64, ptr %3, align 8, !tbaa !63
  %57 = or i64 %56, 1073741824
  store i64 %57, ptr %3, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !63
  %60 = and i64 %59, -2080374785
  %61 = or i64 %60, %57
  store i64 %61, ptr %3, align 8, !tbaa !63
  %62 = load i64, ptr %58, align 8, !tbaa !63
  %63 = and i64 %62, 134217728
  %64 = or i64 %63, %61
  store i64 %64, ptr %3, align 8, !tbaa !63
  %65 = load i64, ptr %58, align 8, !tbaa !63
  %66 = and i64 %65, 805306368
  %67 = icmp eq i64 %66, 805306368
  br i1 %67, label %68, label %72

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !71
  br label %76

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.dent, ptr %39, i64 0, i32 1
  store ptr null, ptr %73, align 8, !tbaa !71
  %74 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  tail call void @myfree(ptr noundef %75) #35
  br label %76

76:                                               ; preds = %72, %68, %44, %41, %19
  %77 = phi i32 [ -1, %44 ], [ -1, %41 ], [ %21, %68 ], [ %21, %72 ], [ %21, %19 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @combine_two_entries(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !63
  %8 = xor i64 %7, -1
  %9 = and i64 %5, -2080374785
  %10 = and i64 %9, %8
  %11 = icmp eq i64 %10, 0
  %12 = xor i64 %7, %5
  %13 = and i64 %12, 134217728
  br i1 %11, label %14, label %19

14:                                               ; preds = %3
  %15 = icmp ne i64 %13, 0
  %16 = and i64 %7, 134217728
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %58, label %21

19:                                               ; preds = %3
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %19, %14
  %22 = xor i64 %7, %5
  %23 = and i64 %22, 805306368
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = and i64 %7, 805306368
  %27 = icmp eq i64 %26, 805306368
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %32) #36
  %34 = icmp eq i32 %33, 0
  br label %44

35:                                               ; preds = %21
  br i1 %11, label %36, label %58

36:                                               ; preds = %35
  %37 = and i64 %5, 805306368
  %38 = icmp eq i64 %37, 268435456
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = and i64 %7, 805306368
  %41 = icmp eq i64 %40, 0
  %42 = icmp eq i64 %37, 536870912
  %43 = and i1 %42, %41
  br label %44

44:                                               ; preds = %39, %28
  %45 = phi i1 [ %34, %28 ], [ %43, %39 ]
  br i1 %45, label %46, label %58

46:                                               ; preds = %44, %36, %25
  %47 = or i64 %7, %9
  store i64 %47, ptr %6, align 8, !tbaa !63
  %48 = load i64, ptr %4, align 8, !tbaa !63
  %49 = and i64 %48, 134217728
  %50 = or i64 %49, %47
  store i64 %50, ptr %6, align 8, !tbaa !63
  %51 = load i64, ptr %4, align 8, !tbaa !63
  %52 = and i64 %51, 134217728
  %53 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !63
  %55 = or i64 %54, %52
  store i64 %55, ptr %53, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  tail call void @myfree(ptr noundef %57) #35
  br label %127

58:                                               ; preds = %44, %35, %19, %14
  %59 = xor i64 %5, -1
  %60 = and i64 %7, -2080374785
  %61 = and i64 %60, %59
  %62 = icmp eq i64 %61, 0
  %63 = xor i64 %7, %5
  %64 = and i64 %63, 134217728
  br i1 %62, label %65, label %70

65:                                               ; preds = %58
  %66 = icmp ne i64 %64, 0
  %67 = and i64 %5, 134217728
  %68 = icmp eq i64 %67, 0
  %69 = and i1 %68, %66
  br i1 %69, label %127, label %72

70:                                               ; preds = %58
  %71 = icmp eq i64 %64, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %70, %65
  %73 = xor i64 %7, %5
  %74 = and i64 %73, 805306368
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = and i64 %5, 805306368
  %78 = icmp eq i64 %77, 805306368
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !71
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %83) #36
  %85 = icmp eq i32 %84, 0
  br label %95

86:                                               ; preds = %72
  br i1 %62, label %87, label %127

87:                                               ; preds = %86
  %88 = and i64 %7, 805306368
  %89 = icmp eq i64 %88, 268435456
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = and i64 %5, 805306368
  %92 = icmp eq i64 %91, 0
  %93 = icmp eq i64 %88, 536870912
  %94 = and i1 %92, %93
  br label %95

95:                                               ; preds = %90, %79
  %96 = phi i1 [ %85, %79 ], [ %94, %90 ]
  br i1 %96, label %97, label %127

97:                                               ; preds = %95, %87, %76
  %98 = or i64 %60, %5
  store i64 %98, ptr %4, align 8, !tbaa !63
  %99 = load i64, ptr %6, align 8, !tbaa !63
  %100 = and i64 %99, 1207959552
  %101 = or i64 %100, %98
  store i64 %101, ptr %4, align 8, !tbaa !63
  %102 = and i64 %101, 134217728
  %103 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !63
  %105 = or i64 %102, %104
  store i64 %105, ptr %103, align 8, !tbaa !63
  %106 = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %106, ptr %2, align 8, !tbaa !67
  %107 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %108, ptr noundef nonnull dereferenceable(1) %112) #35
  br label %114

114:                                              ; preds = %110, %97
  %115 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !71
  tail call void @myfree(ptr noundef %116) #35
  %117 = load ptr, ptr %107, align 8, !tbaa !71
  store ptr %117, ptr %115, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !184
  %118 = load i64, ptr %4, align 8, !tbaa !63
  %119 = and i64 %118, 805306368
  %120 = icmp eq i64 %119, 805306368
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i64, ptr %103, align 8, !tbaa !63
  %123 = and i64 %122, 1879048192
  %124 = icmp eq i64 %123, 1342177280
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @addvheader(ptr noundef %0), !range !35
  br label %127

127:                                              ; preds = %125, %121, %114, %95, %86, %70, %65, %46
  %128 = phi i32 [ 1, %46 ], [ 1, %125 ], [ 1, %121 ], [ 1, %114 ], [ 0, %95 ], [ 0, %86 ], [ 0, %70 ], [ 0, %65 ]
  ret i32 %128
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @upcase(ptr nocapture noundef %0) local_unnamed_addr #26 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  store i8 %9, ptr %6, align 1, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !182

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lowcase(ptr nocapture noundef %0) local_unnamed_addr #26 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  store i8 %9, ptr %6, align 1, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !186

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @strtosichar(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = tail call i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef %1), !range !21
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @cbench_print, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.250, ptr noundef %0, i32 noundef 942, ptr noundef nonnull @.str.1.251) #37
  br label %11

11:                                               ; preds = %8, %2
  ret ptr @strtosichar.out
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @toutent(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #35
  %5 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 100, i32 noundef 1), !range !21
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @cbench_print, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = load ptr, ptr %5, align 8, !tbaa !71
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.250, ptr noundef %14, i32 noundef 698, ptr noundef nonnull @.str.1.251) #37
  br label %16

16:                                               ; preds = %12, %3
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr i8, ptr %4, i64 182
  br label %19

19:                                               ; preds = %284, %16
  %20 = phi ptr [ %1, %16 ], [ %285, %284 ]
  br i1 %17, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = and i64 %23, 134217728
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %279, label %26

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !63
  %29 = lshr i64 %28, 28
  %30 = and i64 %29, 3
  switch i64 %30, label %276 [
    i64 0, label %31
    i64 1, label %102
    i64 2, label %178
    i64 3, label %253
  ]

31:                                               ; preds = %26
  %32 = load i8, ptr %4, align 16, !tbaa !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %34, %31
  %35 = phi i8 [ %41, %34 ], [ %32, %31 ]
  %36 = phi ptr [ %40, %34 ], [ %4, %31 ]
  %37 = zext i8 %35 to i64
  %38 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  store i8 %39, ptr %36, align 1, !tbaa !15
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %34, !llvm.loop !186

43:                                               ; preds = %34, %31
  br label %44

44:                                               ; preds = %68, %43
  %45 = phi ptr [ %69, %68 ], [ @ichartosstr.out, %43 ]
  %46 = phi i32 [ %48, %68 ], [ 184, %43 ]
  %47 = phi ptr [ %49, %68 ], [ %4, %43 ]
  %48 = add nsw i32 %46, -1
  %49 = getelementptr inbounds i8, ptr %47, i64 1
  %50 = load i8, ptr %47, align 1, !tbaa !15
  %51 = zext i8 %50 to i64
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = icmp sgt i8 %50, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %50, ptr %45, align 1, !tbaa !15
  br label %68

57:                                               ; preds = %53
  %58 = add nuw nsw i64 %51, 4294967168
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %59
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi ptr [ %45, %57 ], [ %66, %61 ]
  %63 = phi ptr [ %60, %57 ], [ %64, %61 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load i8, ptr %63, align 1, !tbaa !15
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %65, ptr %62, align 1, !tbaa !15
  %67 = icmp eq i8 %65, 0
  br i1 %67, label %68, label %61, !llvm.loop !172

68:                                               ; preds = %61, %55
  %69 = phi ptr [ %56, %55 ], [ %62, %61 ]
  %70 = icmp eq ptr %47, %18
  br i1 %70, label %71, label %44, !llvm.loop !173

71:                                               ; preds = %68, %44
  %72 = phi i32 [ %46, %44 ], [ 1, %68 ]
  %73 = phi ptr [ %45, %44 ], [ %69, %68 ]
  %74 = icmp slt i32 %72, 2
  store i8 0, ptr %73, align 1, !tbaa !15
  %75 = load i32, ptr @cbench_print, align 4
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr @stderr, align 8, !tbaa !7
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.250, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1.251) #37
  br label %81

81:                                               ; preds = %78, %71
  store i1 false, ptr @has_marker, align 4
  %82 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %83

83:                                               ; preds = %99, %81
  %84 = phi i64 [ 0, %81 ], [ %100, %99 ]
  %85 = load i64, ptr %27, align 8, !tbaa !63
  %86 = shl nuw nsw i64 1, %84
  %87 = and i64 %85, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = load i1, ptr @has_marker, align 4
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %93 = sext i8 %92 to i32
  %94 = call i32 @putc(i32 noundef %93, ptr noundef %0)
  br label %95

95:                                               ; preds = %91, %89
  store i1 true, ptr @has_marker, align 4
  %96 = trunc i64 %84 to i32
  %97 = add i32 %96, 65
  %98 = call i32 @putc(i32 noundef %97, ptr noundef %0)
  br label %99

99:                                               ; preds = %95, %83
  %100 = add nuw nsw i64 %84, 1
  %101 = icmp eq i64 %100, 26
  br i1 %101, label %277, label %83, !llvm.loop !187

102:                                              ; preds = %26
  %103 = and i64 %28, 1073741824
  %104 = icmp ne i64 %103, 0
  %105 = icmp eq ptr %20, %1
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %279, label %107

107:                                              ; preds = %102
  %108 = load i8, ptr %4, align 16, !tbaa !15
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %110, %107
  %111 = phi i8 [ %117, %110 ], [ %108, %107 ]
  %112 = phi ptr [ %116, %110 ], [ %4, %107 ]
  %113 = zext i8 %111 to i64
  %114 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !15
  store i8 %115, ptr %112, align 1, !tbaa !15
  %116 = getelementptr inbounds i8, ptr %112, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !15
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %110, !llvm.loop !182

119:                                              ; preds = %110, %107
  br label %120

120:                                              ; preds = %144, %119
  %121 = phi ptr [ %145, %144 ], [ @ichartosstr.out, %119 ]
  %122 = phi i32 [ %124, %144 ], [ 184, %119 ]
  %123 = phi ptr [ %125, %144 ], [ %4, %119 ]
  %124 = add nsw i32 %122, -1
  %125 = getelementptr inbounds i8, ptr %123, i64 1
  %126 = load i8, ptr %123, align 1, !tbaa !15
  %127 = zext i8 %126 to i64
  %128 = icmp eq i8 %126, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %120
  %130 = icmp sgt i8 %126, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = getelementptr inbounds i8, ptr %121, i64 1
  store i8 %126, ptr %121, align 1, !tbaa !15
  br label %144

133:                                              ; preds = %129
  %134 = add nuw nsw i64 %127, 4294967168
  %135 = and i64 %134, 4294967295
  %136 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %135
  br label %137

137:                                              ; preds = %137, %133
  %138 = phi ptr [ %121, %133 ], [ %142, %137 ]
  %139 = phi ptr [ %136, %133 ], [ %140, %137 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 1
  %141 = load i8, ptr %139, align 1, !tbaa !15
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store i8 %141, ptr %138, align 1, !tbaa !15
  %143 = icmp eq i8 %141, 0
  br i1 %143, label %144, label %137, !llvm.loop !172

144:                                              ; preds = %137, %131
  %145 = phi ptr [ %132, %131 ], [ %138, %137 ]
  %146 = icmp eq ptr %123, %18
  br i1 %146, label %147, label %120, !llvm.loop !173

147:                                              ; preds = %144, %120
  %148 = phi i32 [ %122, %120 ], [ 1, %144 ]
  %149 = phi ptr [ %121, %120 ], [ %145, %144 ]
  %150 = icmp slt i32 %148, 2
  store i8 0, ptr %149, align 1, !tbaa !15
  %151 = load i32, ptr @cbench_print, align 4
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load ptr, ptr @stderr, align 8, !tbaa !7
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.250, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1.251) #37
  br label %157

157:                                              ; preds = %154, %147
  store i1 false, ptr @has_marker, align 4
  %158 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %159

159:                                              ; preds = %175, %157
  %160 = phi i64 [ 0, %157 ], [ %176, %175 ]
  %161 = load i64, ptr %27, align 8, !tbaa !63
  %162 = shl nuw nsw i64 1, %160
  %163 = and i64 %161, %162
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %159
  %166 = load i1, ptr @has_marker, align 4
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %169 = sext i8 %168 to i32
  %170 = call i32 @putc(i32 noundef %169, ptr noundef %0)
  br label %171

171:                                              ; preds = %167, %165
  store i1 true, ptr @has_marker, align 4
  %172 = trunc i64 %160 to i32
  %173 = add i32 %172, 65
  %174 = call i32 @putc(i32 noundef %173, ptr noundef %0)
  br label %175

175:                                              ; preds = %171, %159
  %176 = add nuw nsw i64 %160, 1
  %177 = icmp eq i64 %176, 26
  br i1 %177, label %277, label %159, !llvm.loop !187

178:                                              ; preds = %26
  %179 = load i8, ptr %4, align 16, !tbaa !15
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %181, %178
  %182 = phi i8 [ %188, %181 ], [ %179, %178 ]
  %183 = phi ptr [ %187, %181 ], [ %4, %178 ]
  %184 = zext i8 %182 to i64
  %185 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !15
  store i8 %186, ptr %183, align 1, !tbaa !15
  %187 = getelementptr inbounds i8, ptr %183, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !15
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %181, !llvm.loop !186

190:                                              ; preds = %181, %178
  %191 = load i8, ptr %4, align 16, !tbaa !15
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !15
  store i8 %194, ptr %4, align 16, !tbaa !15
  br label %195

195:                                              ; preds = %219, %190
  %196 = phi ptr [ @ichartosstr.out, %190 ], [ %220, %219 ]
  %197 = phi i32 [ 184, %190 ], [ %199, %219 ]
  %198 = phi ptr [ %4, %190 ], [ %200, %219 ]
  %199 = add nsw i32 %197, -1
  %200 = getelementptr inbounds i8, ptr %198, i64 1
  %201 = load i8, ptr %198, align 1, !tbaa !15
  %202 = zext i8 %201 to i64
  %203 = icmp eq i8 %201, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %195
  %205 = icmp sgt i8 %201, -1
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, ptr %196, i64 1
  store i8 %201, ptr %196, align 1, !tbaa !15
  br label %219

208:                                              ; preds = %204
  %209 = add nuw nsw i64 %202, 4294967168
  %210 = and i64 %209, 4294967295
  %211 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %210
  br label %212

212:                                              ; preds = %212, %208
  %213 = phi ptr [ %196, %208 ], [ %217, %212 ]
  %214 = phi ptr [ %211, %208 ], [ %215, %212 ]
  %215 = getelementptr inbounds i8, ptr %214, i64 1
  %216 = load i8, ptr %214, align 1, !tbaa !15
  %217 = getelementptr inbounds i8, ptr %213, i64 1
  store i8 %216, ptr %213, align 1, !tbaa !15
  %218 = icmp eq i8 %216, 0
  br i1 %218, label %219, label %212, !llvm.loop !172

219:                                              ; preds = %212, %206
  %220 = phi ptr [ %207, %206 ], [ %213, %212 ]
  %221 = icmp eq ptr %198, %18
  br i1 %221, label %222, label %195, !llvm.loop !173

222:                                              ; preds = %219, %195
  %223 = phi i32 [ %197, %195 ], [ 1, %219 ]
  %224 = phi ptr [ %196, %195 ], [ %220, %219 ]
  %225 = icmp slt i32 %223, 2
  store i8 0, ptr %224, align 1, !tbaa !15
  %226 = load i32, ptr @cbench_print, align 4
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = load ptr, ptr @stderr, align 8, !tbaa !7
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.250, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1.251) #37
  br label %232

232:                                              ; preds = %229, %222
  store i1 false, ptr @has_marker, align 4
  %233 = call i32 @fputs(ptr nonnull @ichartosstr.out, ptr %0)
  br label %234

234:                                              ; preds = %250, %232
  %235 = phi i64 [ 0, %232 ], [ %251, %250 ]
  %236 = load i64, ptr %27, align 8, !tbaa !63
  %237 = shl nuw nsw i64 1, %235
  %238 = and i64 %236, %237
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %234
  %241 = load i1, ptr @has_marker, align 4
  br i1 %241, label %246, label %242

242:                                              ; preds = %240
  %243 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %244 = sext i8 %243 to i32
  %245 = call i32 @putc(i32 noundef %244, ptr noundef %0)
  br label %246

246:                                              ; preds = %242, %240
  store i1 true, ptr @has_marker, align 4
  %247 = trunc i64 %235 to i32
  %248 = add i32 %247, 65
  %249 = call i32 @putc(i32 noundef %248, ptr noundef %0)
  br label %250

250:                                              ; preds = %246, %234
  %251 = add nuw nsw i64 %235, 1
  %252 = icmp eq i64 %251, 26
  br i1 %252, label %277, label %234, !llvm.loop !187

253:                                              ; preds = %26
  %254 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !71
  store i1 false, ptr @has_marker, align 4
  %256 = call i32 @fputs(ptr %255, ptr %0)
  br label %257

257:                                              ; preds = %273, %253
  %258 = phi i64 [ 0, %253 ], [ %274, %273 ]
  %259 = load i64, ptr %27, align 8, !tbaa !63
  %260 = shl nuw nsw i64 1, %258
  %261 = and i64 %259, %260
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %257
  %264 = load i1, ptr @has_marker, align 4
  br i1 %264, label %269, label %265

265:                                              ; preds = %263
  %266 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !128
  %267 = sext i8 %266 to i32
  %268 = call i32 @putc(i32 noundef %267, ptr noundef %0)
  br label %269

269:                                              ; preds = %265, %263
  store i1 true, ptr @has_marker, align 4
  %270 = trunc i64 %258 to i32
  %271 = add i32 %270, 65
  %272 = call i32 @putc(i32 noundef %271, ptr noundef %0)
  br label %273

273:                                              ; preds = %269, %257
  %274 = add nuw nsw i64 %258, 1
  %275 = icmp eq i64 %274, 26
  br i1 %275, label %277, label %257, !llvm.loop !187

276:                                              ; preds = %26
  unreachable

277:                                              ; preds = %273, %250, %175, %99
  %278 = call i32 @fputc(i32 10, ptr %0)
  br label %279

279:                                              ; preds = %277, %102, %21
  %280 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !63
  %282 = and i64 %281, 1073741824
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr %20, align 8, !tbaa !67
  br label %19, !llvm.loop !188

286:                                              ; preds = %279
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #35
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @ichartosstr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq i32 %1, 0
  br label %4

4:                                                ; preds = %50, %2
  %5 = phi ptr [ @ichartosstr.out, %2 ], [ %51, %50 ]
  %6 = phi i32 [ 184, %2 ], [ %8, %50 ]
  %7 = phi ptr [ %0, %2 ], [ %9, %50 ]
  %8 = add nsw i32 %6, -1
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !15
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i8 %10, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %10, ptr %5, align 1, !tbaa !15
  br label %50

17:                                               ; preds = %13
  %18 = add nsw i32 %11, -128
  br i1 %3, label %19, label %39

19:                                               ; preds = %17
  %20 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, ptr @defdupchar, align 4, !tbaa !13
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %35, %22
  %26 = phi i64 [ %24, %22 ], [ %27, %35 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = icmp eq i32 %29, %23
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %27
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = icmp eq i32 %33, %18
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %25
  %36 = icmp sgt i64 %26, 1
  br i1 %36, label %25, label %39, !llvm.loop !183

37:                                               ; preds = %31
  %38 = trunc i64 %27 to i32
  br label %39

39:                                               ; preds = %37, %35, %19, %17
  %40 = phi i32 [ %18, %17 ], [ %18, %19 ], [ %38, %37 ], [ %18, %35 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %41
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %5, %39 ], [ %48, %43 ]
  %45 = phi ptr [ %42, %39 ], [ %46, %43 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %45, align 1, !tbaa !15
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %47, ptr %44, align 1, !tbaa !15
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %50, label %43, !llvm.loop !172

50:                                               ; preds = %43, %15
  %51 = phi ptr [ %16, %15 ], [ %44, %43 ]
  %52 = icmp ugt i32 %6, 2
  br i1 %52, label %4, label %53, !llvm.loop !173

53:                                               ; preds = %50, %4
  %54 = phi i32 [ %6, %4 ], [ 1, %50 ]
  %55 = phi ptr [ %5, %4 ], [ %51, %50 ]
  %56 = icmp slt i32 %54, 2
  store i8 0, ptr %55, align 1, !tbaa !15
  %57 = load i32, ptr @cbench_print, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load ptr, ptr @stderr, align 8, !tbaa !7
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.250, ptr noundef nonnull @ichartosstr.out, i32 noundef 956, ptr noundef nonnull @.str.1.251) #37
  br label %63

63:                                               ; preds = %60, %53
  ret ptr @ichartosstr.out
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @stringcharlen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #27 {
  %3 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !136
  %4 = icmp eq i32 %1, 0
  %5 = load i32, ptr @defdupchar, align 4
  %6 = select i1 %4, i32 %5, i32 0
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %80, label %8

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  br label %11

11:                                               ; preds = %76, %8
  %12 = phi i32 [ %78, %76 ], [ %9, %8 ]
  %13 = phi i32 [ %77, %76 ], [ 0, %8 ]
  %14 = add nsw i32 %12, %13
  %15 = ashr i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %11
  %21 = load i8, ptr %0, align 1, !tbaa !15
  %22 = xor i8 %21, %18
  %23 = and i8 %22, 127
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %37

25:                                               ; preds = %31
  %26 = getelementptr inbounds i8, ptr %32, i64 1
  %27 = load i8, ptr %32, align 1, !tbaa !15
  %28 = xor i8 %27, %35
  %29 = and i8 %28, 127
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37, !llvm.loop !179

31:                                               ; preds = %25, %20
  %32 = phi ptr [ %26, %25 ], [ %10, %20 ]
  %33 = phi ptr [ %34, %25 ], [ %17, %20 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %25, !llvm.loop !179

37:                                               ; preds = %31, %25, %20, %11
  %38 = phi ptr [ %17, %11 ], [ %17, %20 ], [ %34, %31 ], [ %34, %25 ]
  %39 = phi i1 [ %19, %11 ], [ %19, %20 ], [ %36, %31 ], [ %36, %25 ]
  %40 = phi ptr [ %0, %11 ], [ %10, %20 ], [ %32, %31 ], [ %26, %25 ]
  br i1 %39, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %16
  %43 = load i32, ptr %42, align 4, !tbaa !13
  %44 = icmp eq i32 %43, %6
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %16
  %47 = load i32, ptr %46, align 4, !tbaa !13
  store i32 %47, ptr @laststringch, align 4, !tbaa !13
  %48 = ptrtoint ptr %38 to i64
  %49 = ptrtoint ptr %17 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  br label %81

52:                                               ; preds = %41
  %53 = getelementptr inbounds i8, ptr %38, i64 -1
  br label %54

54:                                               ; preds = %52, %37
  %55 = phi ptr [ %53, %52 ], [ %38, %37 ]
  %56 = getelementptr inbounds i8, ptr %40, i64 -1
  %57 = load i8, ptr %56, align 1, !tbaa !15
  %58 = and i8 %57, 127
  %59 = load i8, ptr %55, align 1, !tbaa !15
  %60 = and i8 %59, 127
  %61 = icmp ult i8 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = add nsw i32 %15, -1
  br label %76

64:                                               ; preds = %54
  %65 = icmp ugt i8 %58, %60
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = add nsw i32 %15, 1
  br label %76

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %16
  %70 = load i32, ptr %69, align 4, !tbaa !13
  %71 = icmp slt i32 %6, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = add nsw i32 %15, -1
  br label %76

74:                                               ; preds = %68
  %75 = add nsw i32 %15, 1
  br label %76

76:                                               ; preds = %74, %72, %66, %62
  %77 = phi i32 [ %13, %62 ], [ %67, %66 ], [ %13, %72 ], [ %75, %74 ]
  %78 = phi i32 [ %63, %62 ], [ %12, %66 ], [ %73, %72 ], [ %12, %74 ]
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %11, !llvm.loop !180

80:                                               ; preds = %76, %2
  store i32 -1, ptr @laststringch, align 4, !tbaa !13
  br label %81

81:                                               ; preds = %80, %45
  %82 = phi i32 [ %51, %45 ], [ 0, %80 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @printichar(i32 noundef %0) local_unnamed_addr #28 {
  %2 = icmp slt i32 %0, 128
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr @printichar.out, align 1, !tbaa !15
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !15
  br label %10

5:                                                ; preds = %1
  %6 = add nsw i32 %0, -128
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %7
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %8) #35
  br label %10

10:                                               ; preds = %5, %3
  ret ptr @printichar.out
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @findfiletype(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #29 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !162
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %24, %10
  %14 = phi i64 [ 0, %10 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.success, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %16) #36
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i32
  %21 = icmp eq ptr %2, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.success, ptr %11, i64 %14, i32 1
  br label %66

24:                                               ; preds = %13
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %13, !llvm.loop !189

27:                                               ; preds = %24, %7, %3
  %28 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !162
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %32 = zext nneg i32 %28 to i64
  br label %33

33:                                               ; preds = %63, %30
  %34 = phi i64 [ 0, %30 ], [ %64, %63 ]
  %35 = getelementptr inbounds %struct.success, ptr %31, i64 %34, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !167
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %56, %33
  %40 = phi ptr [ %60, %56 ], [ %36, %33 ]
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #36
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %5, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = sub i64 %4, %41
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %40) #36
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = trunc i64 %34 to i32
  %53 = icmp eq ptr %2, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.success, ptr %31, i64 %34, i32 1
  br label %66

56:                                               ; preds = %44, %39
  %57 = shl i64 %41, 32
  %58 = add i64 %57, 4294967296
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i8, ptr %40, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %39, !llvm.loop !190

63:                                               ; preds = %56, %33
  %64 = add nuw nsw i64 %34, 1
  %65 = icmp eq i64 %64, %32
  br i1 %65, label %73, label %33, !llvm.loop !191

66:                                               ; preds = %54, %22
  %67 = phi ptr [ %55, %54 ], [ %23, %22 ]
  %68 = phi i32 [ %52, %54 ], [ %20, %22 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !166
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(4) @.str.5.273) #36
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, ptr %2, align 4, !tbaa !13
  br label %73

73:                                               ; preds = %66, %63, %51, %27, %19
  %74 = phi i32 [ %20, %19 ], [ %52, %51 ], [ -1, %27 ], [ %68, %66 ], [ -1, %63 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @erase() local_unnamed_addr #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @move(i32 noundef %0, i32 noundef %1) local_unnamed_addr #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @inverse() local_unnamed_addr #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @normal() local_unnamed_addr #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @backup() local_unnamed_addr #30 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @terminit() local_unnamed_addr #0 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str.286) #35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #35
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr @co, align 4, !tbaa !13
  br label %6

6:                                                ; preds = %3, %0
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1.287) #35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #35
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr @li, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, ptr @contextsize, align 4, !tbaa !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr @li, align 4, !tbaa !13
  %17 = sdiv i32 %16, 10
  store i32 %17, ptr @contextsize, align 4, !tbaa !13
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, ptr @contextsize, align 4, !tbaa !13
  %20 = icmp sgt i32 %19, 10
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = icmp slt i32 %19, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21, %18
  %24 = phi i32 [ 10, %18 ], [ 2, %21 ]
  store i32 %24, ptr @contextsize, align 4, !tbaa !13
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, ptr @li, align 4, !tbaa !13
  %27 = load i32, ptr @contextsize, align 4
  %28 = add nsw i32 %27, 8
  %29 = icmp slt i32 %26, %28
  %30 = icmp sgt i32 %27, 2
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = tail call i32 @llvm.smax.i32(i32 %26, i32 10)
  %34 = add nsw i32 %33, -8
  store i32 %34, ptr @contextsize, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = icmp slt i32 %26, 10
  %37 = load i32, ptr @cbench_print, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr @stderr, align 8, !tbaa !7
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.2.288, i32 noundef 10) #37
  br label %43

43:                                               ; preds = %40, %35
  %44 = tail call i32 @isatty(i32 noundef 0) #35
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !7
  %51 = tail call i64 @fwrite(ptr nonnull @.str.3.289, i64 41, i64 1, ptr %50) #37
  br label %52

52:                                               ; preds = %49, %46
  tail call void @exit(i32 noundef 1) #38
  unreachable

53:                                               ; preds = %43
  %54 = tail call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @osbuf) #35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @sbuf, ptr noundef nonnull align 4 dereferenceable(60) @osbuf, i64 60, i1 false), !tbaa.struct !192
  %55 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !193
  %56 = and i32 %55, -107
  store i32 %56, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !193
  %57 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 1), align 4, !tbaa !195
  %58 = and i32 %57, -2
  store i32 %58, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 1), align 4, !tbaa !195
  %59 = load i32, ptr @sbuf, align 4, !tbaa !196
  %60 = and i32 %59, -449
  store i32 %60, ptr @sbuf, align 4, !tbaa !196
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 6), align 1, !tbaa !15
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 5), align 2, !tbaa !15
  %61 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  %62 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 2), align 1, !tbaa !15
  %63 = zext i8 %62 to i32
  store i32 %63, ptr @uerasechar, align 4, !tbaa !13
  %64 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 3), align 4, !tbaa !15
  %65 = zext i8 %64 to i32
  store i32 %65, ptr @ukillchar, align 4, !tbaa !13
  %66 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %66, ptr @oldint, align 8, !tbaa !7
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %53
  %69 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #35
  br label %70

70:                                               ; preds = %68, %53
  %71 = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %71, ptr @oldterm, align 8, !tbaa !7
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #35
  br label %75

75:                                               ; preds = %73, %70
  %76 = tail call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %76, ptr @oldttin, align 8, !tbaa !7
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #35
  br label %80

80:                                               ; preds = %78, %75
  %81 = tail call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %81, ptr @oldttou, align 8, !tbaa !7
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #35
  br label %85

85:                                               ; preds = %83, %80
  %86 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %86, ptr @oldtstp, align 8, !tbaa !7
  %87 = icmp eq ptr %86, inttoptr (i64 1 to ptr)
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #35
  br label %90

90:                                               ; preds = %88, %85
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: noreturn nounwind uwtable
define dso_local void @done(i32 %0) #21 {
  %2 = load i8, ptr @tempfile, align 16, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @unlink(ptr noundef nonnull @tempfile) #35
  br label %6

6:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 0) #38
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @onstop(i32 noundef %0) #0 {
  %2 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #35
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #35
  %4 = tail call i32 @kill(i32 noundef 0, i32 noundef %0) #35
  %5 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull @onstop) #35
  %6 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local void @stop() local_unnamed_addr #0 {
  %1 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #35
  %2 = tail call ptr @signal(i32 noundef 20, ptr noundef null) #35
  %3 = tail call i32 @kill(i32 noundef 0, i32 noundef 20) #35
  %4 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #35
  %5 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @shellescape(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [100 x ptr], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #35
  %4 = load i8, ptr %0, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %24, %1
  %7 = phi i64 [ %15, %24 ], [ 0, %1 ]
  %8 = phi ptr [ %25, %24 ], [ %0, %1 ]
  br label %9

9:                                                ; preds = %12, %6
  %10 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %11 = load i8, ptr %10, align 1, !tbaa !15
  switch i8 %11, label %14 [
    i8 32, label %12
    i8 9, label %12
    i8 0, label %28
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  br label %9, !llvm.loop !197

14:                                               ; preds = %9
  %15 = add nuw i64 %7, 1
  %16 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %7
  store ptr %10, ptr %16, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %20, %14
  %18 = phi ptr [ %10, %14 ], [ %21, %20 ]
  %19 = load i8, ptr %18, align 1, !tbaa !15
  switch i8 %19, label %20 [
    i8 0, label %24
    i8 9, label %22
    i8 32, label %22
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  br label %17, !llvm.loop !198

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 0, ptr %18, align 1, !tbaa !15
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %18, %17 ]
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !llvm.loop !199

28:                                               ; preds = %24, %9, %1
  %29 = phi i64 [ 0, %1 ], [ %7, %9 ], [ %15, %24 ]
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !7
  %32 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #35
  %33 = load ptr, ptr @oldint, align 8, !tbaa !7
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef %33) #35
  %35 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %36 = tail call ptr @signal(i32 noundef 15, ptr noundef %35) #35
  %37 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %38 = tail call ptr @signal(i32 noundef 21, ptr noundef %37) #35
  %39 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %40 = tail call ptr @signal(i32 noundef 22, ptr noundef %39) #35
  %41 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %42 = tail call ptr @signal(i32 noundef 20, ptr noundef %41) #35
  %43 = tail call i32 @fork() #35
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load ptr, ptr %2, align 16, !tbaa !7
  %47 = call i32 @execvp(ptr noundef %46, ptr noundef nonnull %2) #35
  call void @_exit(i32 noundef 123) #38
  unreachable

48:                                               ; preds = %28
  %49 = icmp sgt i32 %43, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %48
  %51 = call i32 (ptr, ...) @wait(ptr noundef nonnull %3) #35
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %53, label %50, !llvm.loop !200

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4, !tbaa !13
  %55 = icmp ne i32 %54, 31488
  %56 = sext i1 %55 to i32
  br label %59

57:                                               ; preds = %48
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.296)
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ -1, %57 ], [ %56, %53 ]
  store i32 %60, ptr %3, align 4, !tbaa !13
  %61 = load ptr, ptr @oldint, align 8, !tbaa !7
  %62 = icmp eq ptr %61, inttoptr (i64 1 to ptr)
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #35
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #35
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #35
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #35
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #35
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  %87 = load i32, ptr %3, align 4, !tbaa !13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.297)
  %91 = load ptr, ptr @outfile1, align 8, !tbaa !7
  %92 = call i32 @fflush(ptr noundef %91)
  br label %93

93:                                               ; preds = %93, %89
  %94 = load ptr, ptr @stdin, align 8, !tbaa !7
  %95 = call i32 @getc(ptr noundef %94)
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %93, !llvm.loop !201

97:                                               ; preds = %93, %85
  %98 = load i32, ptr %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %2) #35
  ret i32 %98
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #31

declare i32 @wait(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @chk_aff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @pflagindex, i32 noundef %3, i32 noundef %4)
  %8 = load i8, ptr %1, align 1, !tbaa !15
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9
  %11 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !156
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %7
  %15 = icmp ne i32 %4, 0
  br label %16

16:                                               ; preds = %37, %14
  %17 = phi ptr [ %1, %14 ], [ %19, %37 ]
  %18 = phi ptr [ %10, %14 ], [ %41, %37 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load ptr, ptr %18, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %16
  %23 = load i8, ptr %19, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.flagptr, ptr %20, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !156
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %20, i32 noundef %3, i32 noundef %4)
  %30 = load i32, ptr @numhits, align 4, !tbaa !13
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %15, %31
  %33 = load i32, ptr @cflag, align 4
  %34 = or i32 %33, %3
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29, %25
  %38 = load ptr, ptr %18, align 8, !tbaa !15
  %39 = load i8, ptr %19, align 1, !tbaa !15
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.flagptr, ptr %38, i64 %40
  %42 = getelementptr inbounds %struct.flagptr, ptr %38, i64 %40, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !156
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %16, label %45, !llvm.loop !202

45:                                               ; preds = %37, %16, %7
  %46 = phi ptr [ %10, %7 ], [ %18, %16 ], [ %41, %37 ]
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef %46, i32 noundef %3, i32 noundef %4)
  %47 = load i32, ptr @numhits, align 4, !tbaa !13
  %48 = icmp eq i32 %47, 0
  %49 = icmp ne i32 %4, 0
  %50 = or i1 %49, %48
  %51 = load i32, ptr @cflag, align 4
  %52 = or i32 %51, %3
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %50, i1 true, i1 %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  tail call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %6, ptr noundef null, i32 noundef %3, i32 noundef %4)
  br label %56

56:                                               ; preds = %55, %45, %29, %22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pfx_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #35
  %11 = getelementptr inbounds %struct.flagptr, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !156
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %188

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !15
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %6, 0
  %19 = ptrtoint ptr %10 to i64
  %20 = icmp eq i32 %7, 0
  %21 = or i32 %4, 1
  br label %22

22:                                               ; preds = %184, %14
  %23 = phi ptr [ %15, %14 ], [ %185, %184 ]
  %24 = phi i32 [ %12, %14 ], [ %186, %184 ]
  %25 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 6
  %26 = load i16, ptr %25, align 8, !tbaa !103
  %27 = and i16 %26, 2
  %28 = icmp ne i16 %27, 0
  %29 = and i1 %17, %28
  br i1 %29, label %184, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = zext i16 %26 to i32
  %35 = xor i32 %34, %3
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %184

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !47
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %2, %41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %184

44:                                               ; preds = %38
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !108
  %49 = sext i16 %40 to i64
  %50 = call i32 @strncmp(ptr noundef %48, ptr noundef %1, i64 noundef %49) #36
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %184

52:                                               ; preds = %46, %44
  %53 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !45
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %42, %55
  %57 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !104
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %184, label %61

61:                                               ; preds = %52
  %62 = icmp eq i16 %54, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %23, align 8, !tbaa !107
  %65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %64) #35
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i16, ptr %53, align 2, !tbaa !45
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds i8, ptr %9, i64 %68
  %70 = load i16, ptr %39, align 4, !tbaa !47
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  %73 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) %72) #35
  %74 = load i16, ptr %57, align 2, !tbaa !104
  %75 = sext i16 %74 to i32
  %76 = icmp sgt i16 %74, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %66
  %78 = load i8, ptr %9, align 16, !tbaa !15
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %101, label %94

84:                                               ; preds = %94
  %85 = getelementptr inbounds i8, ptr %95, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = sext i8 %89 to i32
  %91 = shl i32 2, %96
  %92 = and i32 %91, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94, !llvm.loop !203

94:                                               ; preds = %84, %77
  %95 = phi ptr [ %85, %84 ], [ %9, %77 ]
  %96 = phi i32 [ %97, %84 ], [ 0, %77 ]
  %97 = add nuw nsw i32 %96, 1
  %98 = icmp eq i32 %97, %75
  br i1 %98, label %103, label %84, !llvm.loop !203

99:                                               ; preds = %84
  %100 = icmp slt i32 %97, %75
  br label %101

101:                                              ; preds = %99, %77
  %102 = phi i1 [ %100, %99 ], [ %76, %77 ]
  br i1 %102, label %184, label %103

103:                                              ; preds = %101, %94, %66
  %104 = load i16, ptr %53, align 2, !tbaa !45
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %42, %105
  %107 = load i32, ptr @cflag, align 4, !tbaa !13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %111 = load i16, ptr %110, align 8, !tbaa !69
  %112 = sext i16 %111 to i32
  %113 = add nsw i32 %112, 65
  %114 = load i16, ptr %39, align 4, !tbaa !47
  %115 = sext i16 %114 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %113, i32 noundef %105, i32 noundef %115, i32 noundef -1, i32 noundef 0) #35
  br label %179

116:                                              ; preds = %103
  %117 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #35
  %118 = icmp eq ptr %117, null
  br i1 %18, label %154, label %119

119:                                              ; preds = %116
  br i1 %118, label %179, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %39, align 4, !tbaa !47
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !108
  %126 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %125) #35
  %127 = load i16, ptr %39, align 4, !tbaa !47
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i8, ptr %10, i64 %128
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 43, ptr %129, align 1, !tbaa !15
  br label %131

131:                                              ; preds = %123, %120
  %132 = phi ptr [ %130, %123 ], [ %10, %120 ]
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %133, %19
  %135 = trunc i64 %134 to i32
  %136 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) %9) #35
  %137 = sext i32 %106 to i64
  %138 = getelementptr inbounds i8, ptr %132, i64 %137
  %139 = load i16, ptr %53, align 2, !tbaa !45
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store i8 45, ptr %138, align 1, !tbaa !15
  %143 = load ptr, ptr %23, align 8, !tbaa !107
  %144 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) %143) #35
  br label %145

145:                                              ; preds = %141, %131
  %146 = phi ptr [ %142, %141 ], [ %138, %131 ]
  %147 = load i16, ptr %53, align 2, !tbaa !45
  %148 = sext i16 %147 to i32
  %149 = ptrtoint ptr %146 to i64
  %150 = add i64 %133, %137
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %148, i32 noundef %135, i32 noundef 0, i32 noundef %152, ptr noundef nonnull %117, ptr noundef %23, ptr noundef null) #35
  br label %179

154:                                              ; preds = %116
  br i1 %118, label %179, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.dent, ptr %117, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !63
  %158 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %159 = load i16, ptr %158, align 8, !tbaa !69
  %160 = sext i16 %159 to i64
  %161 = and i64 %160, 4294967295
  %162 = shl nuw i64 1, %161
  %163 = and i64 %162, %157
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %155
  %166 = load i32, ptr @numhits, align 4, !tbaa !13
  %167 = icmp slt i32 %166, 10
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = sext i32 %166 to i64
  %170 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169
  store ptr %117, ptr %170, align 8, !tbaa !49
  %171 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169, i32 1
  store ptr %23, ptr %171, align 8, !tbaa !43
  %172 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %169, i32 2
  store ptr null, ptr %172, align 8, !tbaa !48
  %173 = add nsw i32 %166, 1
  store i32 %173, ptr @numhits, align 4, !tbaa !13
  br label %174

174:                                              ; preds = %168, %165
  br i1 %20, label %175, label %179

175:                                              ; preds = %174
  %176 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #35
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %179

179:                                              ; preds = %178, %174, %155, %154, %145, %119, %109
  %180 = load i16, ptr %25, align 8, !tbaa !103
  %181 = and i16 %180, 1
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %106, i32 noundef %21, ptr noundef %23, i32 noundef %6, i32 noundef %7)
  br label %184

184:                                              ; preds = %183, %179, %101, %52, %46, %38, %33, %22
  %185 = getelementptr inbounds %struct.flagent, ptr %23, i64 1
  %186 = add nsw i32 %24, -1
  %187 = icmp sgt i32 %24, 1
  br i1 %187, label %22, label %188, !llvm.loop !204

188:                                              ; preds = %184, %175, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @chk_suf(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @sflagindex, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12
  %14 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !156
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %7
  %18 = icmp ne i32 %6, 0
  br label %19

19:                                               ; preds = %38, %17
  %20 = phi ptr [ %13, %17 ], [ %43, %38 ]
  %21 = phi ptr [ %10, %17 ], [ %40, %38 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %1
  br i1 %25, label %49, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.flagptr, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !156
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %22, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  %31 = load i32, ptr @numhits, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %18, %32
  %34 = load i32, ptr @cflag, align 4
  %35 = or i32 %34, %5
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30, %26
  %39 = load ptr, ptr %20, align 8, !tbaa !15
  %40 = getelementptr inbounds i8, ptr %21, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.flagptr, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.flagptr, ptr %39, i64 %42, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !156
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %19, label %47, !llvm.loop !205

47:                                               ; preds = %38, %19, %7
  %48 = phi ptr [ %13, %7 ], [ %20, %19 ], [ %43, %38 ]
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %48, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  br label %49

49:                                               ; preds = %47, %30, %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @suf_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #35
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #35
  %12 = getelementptr inbounds %struct.flagptr, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %244

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8, !tbaa !15
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %4, 2
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 2
  %22 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 4
  %24 = icmp eq i32 %6, 0
  %25 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 4
  %26 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 1
  %27 = ptrtoint ptr %10 to i64
  %28 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %29 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %30 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 2
  %31 = icmp eq i32 %7, 0
  br label %32

32:                                               ; preds = %240, %15
  %33 = phi ptr [ %16, %15 ], [ %241, %240 ]
  %34 = phi i32 [ %13, %15 ], [ %242, %240 ]
  br i1 %18, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 6
  %37 = load i16, ptr %36, align 8, !tbaa !103
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %240, label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 6
  %42 = load i16, ptr %41, align 8, !tbaa !103
  %43 = and i16 %42, 2
  %44 = icmp ne i16 %43, 0
  %45 = and i1 %20, %44
  br i1 %45, label %240, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = zext i16 %42 to i32
  %51 = xor i32 %50, %4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %240

54:                                               ; preds = %49, %46
  %55 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 4
  %56 = load i16, ptr %55, align 4, !tbaa !47
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %2, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %240

60:                                               ; preds = %54
  %61 = icmp eq i16 %56, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !108
  %65 = zext nneg i32 %58 to i64
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %66) #36
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %240

69:                                               ; preds = %62, %60
  %70 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !45
  %72 = sext i16 %71 to i32
  %73 = add nsw i32 %58, %72
  %74 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !104
  %76 = sext i16 %75 to i32
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %240, label %78

78:                                               ; preds = %69
  %79 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #35
  %80 = zext nneg i32 %58 to i64
  %81 = getelementptr inbounds i8, ptr %9, i64 %80
  %82 = load i16, ptr %70, align 2, !tbaa !45
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %33, align 8, !tbaa !107
  %86 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %85) #35
  %87 = load i16, ptr %70, align 2, !tbaa !45
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %58, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %9, i64 %90
  br label %93

92:                                               ; preds = %78
  store i8 0, ptr %81, align 1, !tbaa !15
  br label %93

93:                                               ; preds = %92, %84
  %94 = phi ptr [ %91, %84 ], [ %81, %92 ]
  %95 = phi i32 [ %89, %84 ], [ %58, %92 ]
  %96 = load i16, ptr %74, align 2, !tbaa !104
  %97 = sext i16 %96 to i32
  br label %98

98:                                               ; preds = %102, %93
  %99 = phi i32 [ %97, %93 ], [ %103, %102 ]
  %100 = phi ptr [ %94, %93 ], [ %104, %102 ]
  %101 = icmp slt i32 %99, 1
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = add nsw i32 %99, -1
  %104 = getelementptr inbounds i8, ptr %100, i64 -1
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 7, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = sext i8 %108 to i32
  %110 = shl nuw i32 1, %103
  %111 = and i32 %110, %109
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %98, !llvm.loop !206

113:                                              ; preds = %102
  br i1 %101, label %114, label %240

114:                                              ; preds = %113, %98
  %115 = load i32, ptr @cflag, align 4, !tbaa !13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %114
  br i1 %18, label %132, label %118

118:                                              ; preds = %117
  %119 = load i16, ptr %21, align 8, !tbaa !69
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %120, 65
  %122 = load i16, ptr %22, align 2, !tbaa !45
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %23, align 4, !tbaa !47
  %125 = sext i16 %124 to i32
  %126 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !69
  %128 = sext i16 %127 to i32
  %129 = add nsw i32 %128, 65
  %130 = load i16, ptr %55, align 4, !tbaa !47
  %131 = sext i16 %130 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %129, i32 noundef %131) #35
  br label %240

132:                                              ; preds = %117
  %133 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %134 = load i16, ptr %133, align 8, !tbaa !69
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %135, 65
  %137 = load i16, ptr %55, align 4, !tbaa !47
  %138 = sext i16 %137 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %136, i32 noundef %138) #35
  br label %240

139:                                              ; preds = %114
  %140 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #35
  %141 = icmp eq ptr %140, null
  br i1 %24, label %207, label %142

142:                                              ; preds = %139
  br i1 %141, label %240, label %143

143:                                              ; preds = %142
  br i1 %18, label %153, label %144

144:                                              ; preds = %143
  %145 = load i16, ptr %25, align 4, !tbaa !47
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %26, align 8, !tbaa !108
  %149 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %148) #35
  %150 = sext i16 %145 to i64
  %151 = getelementptr inbounds i8, ptr %10, i64 %150
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 43, ptr %151, align 1, !tbaa !15
  br label %153

153:                                              ; preds = %147, %144, %143
  %154 = phi ptr [ %152, %147 ], [ %10, %144 ], [ %10, %143 ]
  %155 = ptrtoint ptr %154 to i64
  %156 = sub i64 %155, %27
  %157 = trunc i64 %156 to i32
  %158 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %154, ptr noundef nonnull dereferenceable(1) %9) #35
  %159 = sext i32 %95 to i64
  %160 = getelementptr inbounds i8, ptr %154, i64 %159
  br i1 %18, label %170, label %161

161:                                              ; preds = %153
  %162 = load i16, ptr %28, align 2, !tbaa !45
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, ptr %160, i64 1
  store i8 45, ptr %160, align 1, !tbaa !15
  %166 = load ptr, ptr %5, align 8, !tbaa !107
  %167 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %166) #35
  %168 = sext i16 %162 to i64
  %169 = getelementptr inbounds i8, ptr %165, i64 %168
  br label %170

170:                                              ; preds = %164, %161, %153
  %171 = phi ptr [ %169, %164 ], [ %160, %161 ], [ %160, %153 ]
  %172 = load i16, ptr %70, align 2, !tbaa !45
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds i8, ptr %171, i64 1
  store i8 45, ptr %171, align 1, !tbaa !15
  %176 = load ptr, ptr %33, align 8, !tbaa !107
  %177 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %175, ptr noundef nonnull dereferenceable(1) %176) #35
  %178 = load i16, ptr %70, align 2, !tbaa !45
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  br label %181

181:                                              ; preds = %174, %170
  %182 = phi ptr [ %180, %174 ], [ %171, %170 ]
  %183 = load i16, ptr %55, align 4, !tbaa !47
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 43, ptr %182, align 1, !tbaa !15
  %187 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !108
  %189 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #35
  %190 = load i16, ptr %55, align 4, !tbaa !47
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i8, ptr %186, i64 %191
  br label %193

193:                                              ; preds = %185, %181
  %194 = phi ptr [ %192, %185 ], [ %182, %181 ]
  br i1 %18, label %198, label %195

195:                                              ; preds = %193
  %196 = load i16, ptr %29, align 2, !tbaa !45
  %197 = sext i16 %196 to i32
  br label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %197, %195 ], [ 0, %193 ]
  %200 = load i16, ptr %70, align 2, !tbaa !45
  %201 = sext i16 %200 to i32
  %202 = ptrtoint ptr %194 to i64
  %203 = add i64 %155, %159
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %199, i32 noundef %157, i32 noundef %201, i32 noundef %205, ptr noundef nonnull %140, ptr noundef %5, ptr noundef %33) #35
  br label %240

207:                                              ; preds = %139
  br i1 %141, label %240, label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.dent, ptr %140, i64 0, i32 2
  %210 = load i64, ptr %209, align 8, !tbaa !63
  %211 = getelementptr inbounds %struct.flagent, ptr %33, i64 0, i32 2
  %212 = load i16, ptr %211, align 8, !tbaa !69
  %213 = sext i16 %212 to i64
  %214 = and i64 %213, 4294967295
  %215 = shl nuw i64 1, %214
  %216 = and i64 %215, %210
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %208
  br i1 %18, label %226, label %219

219:                                              ; preds = %218
  %220 = load i16, ptr %30, align 8, !tbaa !69
  %221 = sext i16 %220 to i64
  %222 = and i64 %221, 4294967295
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %210
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %219, %218
  %227 = load i32, ptr @numhits, align 4, !tbaa !13
  %228 = icmp slt i32 %227, 10
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = sext i32 %227 to i64
  %231 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230
  store ptr %140, ptr %231, align 8, !tbaa !49
  %232 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 1
  store ptr %5, ptr %232, align 8, !tbaa !43
  %233 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 2
  store ptr %33, ptr %233, align 8, !tbaa !48
  %234 = add nsw i32 %227, 1
  store i32 %234, ptr @numhits, align 4, !tbaa !13
  br label %235

235:                                              ; preds = %229, %226
  br i1 %31, label %236, label %240

236:                                              ; preds = %235
  %237 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #35
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %240

240:                                              ; preds = %239, %235, %219, %208, %207, %198, %142, %132, %118, %113, %69, %62, %54, %49, %40, %35
  %241 = getelementptr inbounds %struct.flagent, ptr %33, i64 1
  %242 = add nsw i32 %34, -1
  %243 = icmp sgt i32 %34, 1
  br i1 %243, label %32, label %244, !llvm.loop !207

244:                                              ; preds = %240, %236, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expand_pre(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [120 x i8], align 16
  %7 = load i32, ptr @numpflags, align 4, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %193

10:                                               ; preds = %5
  %11 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  br label %13

13:                                               ; preds = %188, %10
  %14 = phi ptr [ %11, %10 ], [ %190, %188 ]
  %15 = phi i32 [ 0, %10 ], [ %189, %188 ]
  %16 = phi i32 [ %7, %10 ], [ %191, %188 ]
  %17 = load i64, ptr %2, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !69
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = and i64 %22, %17
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %188, label %25

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #35
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !104
  %30 = sext i16 %29 to i32
  %31 = icmp sgt i32 %30, %27
  br i1 %31, label %185, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !45
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %27, %35
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %185, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !47
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %36, %41
  %43 = icmp sgt i16 %29, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = zext nneg i32 %30 to i64
  %46 = getelementptr i8, ptr %1, i64 %45
  br label %47

47:                                               ; preds = %61, %44
  %48 = phi ptr [ %62, %61 ], [ %1, %44 ]
  %49 = phi i32 [ %63, %61 ], [ 0, %44 ]
  %50 = load i8, ptr %48, align 1, !tbaa !15
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 7, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !15
  %57 = sext i8 %56 to i32
  %58 = shl nuw i32 1, %49
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %185, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds i8, ptr %48, i64 1
  %63 = add nuw nsw i32 %49, 1
  %64 = icmp eq i32 %63, %30
  br i1 %64, label %65, label %47, !llvm.loop !208

65:                                               ; preds = %61, %38
  %66 = phi ptr [ %1, %38 ], [ %46, %61 ]
  %67 = icmp eq i16 %40, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !108
  %71 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %70) #35
  %72 = sext i16 %40 to i64
  %73 = getelementptr inbounds i8, ptr %6, i64 %72
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %76 = sext i16 %34 to i64
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %77) #35
  %79 = load i8, ptr %1, align 1, !tbaa !15
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %149, label %84

84:                                               ; preds = %89, %74
  %85 = phi ptr [ %86, %89 ], [ %1, %74 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %171, label %89

89:                                               ; preds = %84
  %90 = zext i8 %87 to i64
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %84, !llvm.loop !209

94:                                               ; preds = %89
  %95 = zext i8 %87 to i64
  %96 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %104, %94
  %100 = phi ptr [ %101, %104 ], [ %86, %94 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %133, label %104, !llvm.loop !210

104:                                              ; preds = %99
  %105 = zext i8 %102 to i64
  %106 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %99, label %109, !llvm.loop !210

109:                                              ; preds = %104
  br i1 %103, label %133, label %110

110:                                              ; preds = %109, %94
  %111 = load i16, ptr %39, align 4, !tbaa !47
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds [120 x i8], ptr %6, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !15
  %118 = icmp eq i8 %117, 0
  %119 = icmp sgt i16 %111, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %171

121:                                              ; preds = %110
  %122 = add nsw i64 %112, 4294967295
  %123 = and i64 %122, 4294967295
  %124 = getelementptr i8, ptr %6, i64 %123
  br label %125

125:                                              ; preds = %125, %121
  %126 = phi ptr [ %131, %125 ], [ %6, %121 ]
  %127 = load i8, ptr %126, align 1, !tbaa !15
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !15
  store i8 %130, ptr %126, align 1, !tbaa !15
  %131 = getelementptr inbounds i8, ptr %126, i64 1
  %132 = icmp eq ptr %126, %124
  br i1 %132, label %171, label %125, !llvm.loop !211

133:                                              ; preds = %109, %99
  %134 = icmp sgt i32 %42, 1
  br i1 %134, label %135, label %171

135:                                              ; preds = %133
  %136 = add i32 %27, -2
  %137 = sub i32 %136, %35
  %138 = add i32 %137, %41
  %139 = zext i32 %138 to i64
  %140 = getelementptr i8, ptr %8, i64 %139
  br label %141

141:                                              ; preds = %141, %135
  %142 = phi ptr [ %147, %141 ], [ %12, %135 ]
  %143 = load i8, ptr %142, align 1, !tbaa !15
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !15
  store i8 %146, ptr %142, align 1, !tbaa !15
  %147 = getelementptr inbounds i8, ptr %142, i64 1
  %148 = icmp eq ptr %142, %140
  br i1 %148, label %171, label %141, !llvm.loop !211

149:                                              ; preds = %74
  %150 = load i8, ptr %75, align 1, !tbaa !15
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !15
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load i16, ptr %39, align 4, !tbaa !47
  %157 = icmp sgt i16 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = add nsw i16 %156, -1
  %160 = sext i16 %159 to i64
  %161 = and i64 %160, 4294967295
  %162 = getelementptr i8, ptr %6, i64 %161
  br label %163

163:                                              ; preds = %163, %158
  %164 = phi ptr [ %169, %163 ], [ %6, %158 ]
  %165 = load i8, ptr %164, align 1, !tbaa !15
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !15
  store i8 %168, ptr %164, align 1, !tbaa !15
  %169 = getelementptr inbounds i8, ptr %164, i64 1
  %170 = icmp eq ptr %164, %162
  br i1 %170, label %171, label %163, !llvm.loop !211

171:                                              ; preds = %163, %155, %149, %141, %133, %125, %110, %84
  switch i32 %3, label %174 [
    i32 3, label %172
    i32 4, label %177
  ]

172:                                              ; preds = %171
  %173 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.302, ptr noundef %0)
  br label %174

174:                                              ; preds = %172, %171
  %175 = call ptr @ichartosstr(ptr noundef nonnull %6, i32 noundef 1) #35
  %176 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.303, ptr noundef %175, ptr noundef %4)
  br label %177

177:                                              ; preds = %174, %171
  %178 = getelementptr inbounds %struct.flagent, ptr %14, i64 0, i32 6
  %179 = load i16, ptr %178, align 8, !tbaa !103
  %180 = and i16 %179, 1
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = call i32 @expand_suf(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, ptr noundef %4)
  %184 = add nsw i32 %183, %42
  br label %185

185:                                              ; preds = %182, %177, %47, %32, %25
  %186 = phi i32 [ %184, %182 ], [ 0, %25 ], [ 0, %32 ], [ %42, %177 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #35
  %187 = add nsw i32 %186, %15
  br label %188

188:                                              ; preds = %185, %13
  %189 = phi i32 [ %187, %185 ], [ %15, %13 ]
  %190 = getelementptr inbounds %struct.flagent, ptr %14, i64 1
  %191 = add nsw i32 %16, -1
  %192 = icmp sgt i32 %16, 1
  br i1 %192, label %13, label %193, !llvm.loop !212

193:                                              ; preds = %188, %5
  %194 = phi i32 [ 0, %5 ], [ %189, %188 ]
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expand_suf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [120 x i8], align 16
  %8 = load i32, ptr @numsflags, align 4, !tbaa !13
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %6
  %11 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %116, %10
  %15 = phi ptr [ %11, %10 ], [ %118, %116 ]
  %16 = phi i32 [ 0, %10 ], [ %117, %116 ]
  %17 = phi i32 [ %8, %10 ], [ %119, %116 ]
  %18 = load i64, ptr %2, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !69
  %21 = sext i16 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %14
  br i1 %13, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !103
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %116, label %32

32:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #35
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !104
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %37, %34
  br i1 %38, label %113, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !45
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %34, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %39
  %45 = shl i64 %33, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %1, i64 %46
  br label %48

48:                                               ; preds = %52, %44
  %49 = phi i32 [ %37, %44 ], [ %53, %52 ]
  %50 = phi ptr [ %47, %44 ], [ %54, %52 ]
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = add nsw i32 %49, -1
  %54 = getelementptr inbounds i8, ptr %50, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 7, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = sext i8 %61 to i32
  %63 = shl nuw i32 1, %53
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %113, label %48, !llvm.loop !213

66:                                               ; preds = %48
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #35
  %68 = getelementptr inbounds i8, ptr %7, i64 %46
  %69 = sext i16 %41 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 4
  %73 = load i16, ptr %72, align 4, !tbaa !47
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !108
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %77) #35
  %79 = getelementptr inbounds i8, ptr %71, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !15
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = icmp eq i8 %83, 0
  %85 = icmp sgt i16 %73, 0
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = sext i16 %73 to i32
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %92, %89 ], [ %88, %87 ]
  %91 = phi ptr [ %97, %89 ], [ %71, %87 ]
  %92 = add nsw i32 %90, -1
  %93 = load i8, ptr %91, align 1, !tbaa !15
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !15
  store i8 %96, ptr %91, align 1, !tbaa !15
  %97 = getelementptr inbounds i8, ptr %91, i64 1
  %98 = icmp sgt i32 %90, 1
  br i1 %98, label %89, label %100, !llvm.loop !211

99:                                               ; preds = %66
  store i8 0, ptr %71, align 1, !tbaa !15
  br label %100

100:                                              ; preds = %99, %89, %75
  switch i32 %4, label %103 [
    i32 3, label %101
    i32 4, label %106
  ]

101:                                              ; preds = %100
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.302, ptr noundef %0)
  br label %103

103:                                              ; preds = %101, %100
  %104 = call ptr @ichartosstr(ptr noundef nonnull %7, i32 noundef 1) #35
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.303, ptr noundef %104, ptr noundef %5)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i16, ptr %72, align 4, !tbaa !47
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %108, %34
  %110 = load i16, ptr %40, align 2, !tbaa !45
  %111 = sext i16 %110 to i32
  %112 = sub i32 %109, %111
  br label %113

113:                                              ; preds = %106, %52, %39, %32
  %114 = phi i32 [ %112, %106 ], [ 0, %32 ], [ 0, %39 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #35
  %115 = add nsw i32 %114, %16
  br label %116

116:                                              ; preds = %113, %27, %14
  %117 = phi i32 [ %115, %113 ], [ %16, %27 ], [ %16, %14 ]
  %118 = getelementptr inbounds %struct.flagent, ptr %15, i64 1
  %119 = add nsw i32 %17, -1
  %120 = icmp sgt i32 %17, 1
  br i1 %120, label %14, label %121, !llvm.loop !214

121:                                              ; preds = %116, %6
  %122 = phi i32 [ 0, %6 ], [ %117, %116 ]
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define dso_local void @treeinit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #35
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str.308) #35
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.1.309) #35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %174, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %104

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16.310, ptr noundef nonnull @.str.2.311, ptr noundef %1) #35
  %19 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8 0, ptr @personaldict, align 16, !tbaa !15
  br label %22

22:                                               ; preds = %21, %17
  store ptr %19, ptr @dictf, align 8, !tbaa !7
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4.313, ptr noundef nonnull %13, ptr noundef nonnull @.str.2.311, ptr noundef %1) #35
  %24 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7.312)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8 0, ptr %7, align 16, !tbaa !15
  br label %27

27:                                               ; preds = %26, %22
  %28 = load ptr, ptr @dictf, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  %30 = and i1 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16.310, ptr noundef nonnull @.str.2.311, ptr noundef nonnull @.str.3.314) #35
  %33 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8 0, ptr @personaldict, align 16, !tbaa !15
  br label %36

36:                                               ; preds = %35, %31
  store ptr %33, ptr @dictf, align 8, !tbaa !7
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4.313, ptr noundef nonnull %13, ptr noundef nonnull @.str.2.311, ptr noundef nonnull @.str.3.314) #35
  %38 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7.312)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8 0, ptr %7, align 16, !tbaa !15
  br label %41

41:                                               ; preds = %40, %36, %27
  %42 = phi ptr [ %24, %27 ], [ %38, %36 ], [ %38, %40 ]
  %43 = load ptr, ptr @dictf, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  %45 = icmp eq ptr %42, null
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16.310, ptr noundef nonnull @.str.2.311, ptr noundef %1) #35
  %49 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8 0, ptr @personaldict, align 16, !tbaa !15
  br label %52

52:                                               ; preds = %51, %47
  store ptr %49, ptr @dictf, align 8, !tbaa !7
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4.313, ptr noundef nonnull %13, ptr noundef nonnull @.str.2.311, ptr noundef %1) #35
  %54 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7.312)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8 0, ptr %7, align 16, !tbaa !15
  br label %57

57:                                               ; preds = %56, %52, %41
  %58 = phi ptr [ %42, %41 ], [ %54, %52 ], [ %54, %56 ]
  %59 = load ptr, ptr @dictf, align 8, !tbaa !7
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %58, null
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.16.310, ptr noundef nonnull @.str.2.311, ptr noundef nonnull @.str.3.314) #35
  %65 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8 0, ptr @personaldict, align 16, !tbaa !15
  br label %68

68:                                               ; preds = %67, %63
  store ptr %65, ptr @dictf, align 8, !tbaa !7
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4.313, ptr noundef nonnull %13, ptr noundef nonnull @.str.2.311, ptr noundef nonnull @.str.3.314) #35
  %70 = call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.7.312)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8 0, ptr %7, align 16, !tbaa !15
  br label %73

73:                                               ; preds = %72, %68, %57
  %74 = phi ptr [ %58, %57 ], [ %70, %68 ], [ %70, %72 ]
  %75 = load i8, ptr @personaldict, align 16, !tbaa !15
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i8, ptr %7, align 16, !tbaa !15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %7) #35
  br label %84

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.4.313, ptr noundef nonnull %13, ptr noundef nonnull @.str.2.311, ptr noundef %1) #35
  br label %84

84:                                               ; preds = %82, %80, %73
  %85 = load ptr, ptr @dictf, align 8, !tbaa !7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #35
  br label %88

88:                                               ; preds = %91, %87
  %89 = call ptr @fgets(ptr noundef nonnull %6, i32 noundef 8192, ptr noundef nonnull %85)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @treeinsert(ptr noundef nonnull %6, i32 noundef 8192, i32 noundef 1)
  br label %88, !llvm.loop !215

92:                                               ; preds = %88
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #35
  %93 = load ptr, ptr @dictf, align 8, !tbaa !7
  %94 = call i32 @fclose(ptr noundef %93)
  br label %95

95:                                               ; preds = %92, %84
  %96 = icmp eq ptr %74, null
  br i1 %96, label %153, label %97

97:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #35
  br label %98

98:                                               ; preds = %101, %97
  %99 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 8192, ptr noundef nonnull %74)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @treeinsert(ptr noundef nonnull %5, i32 noundef 8192, i32 noundef 1)
  br label %98, !llvm.loop !215

102:                                              ; preds = %98
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #35
  %103 = call i32 @fclose(ptr noundef nonnull %74)
  br label %153

104:                                              ; preds = %15
  %105 = load i8, ptr %12, align 1, !tbaa !15
  %106 = icmp eq i8 %105, 47
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.5.317, i64 noundef 2) #36
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.6.318, i64 noundef 3) #36
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110, %107, %104
  %114 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %12) #35
  %115 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  store ptr %115, ptr @dictf, align 8, !tbaa !7
  %116 = icmp eq ptr %115, null
  br i1 %116, label %153, label %117

117:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #35
  br label %118

118:                                              ; preds = %121, %117
  %119 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 8192, ptr noundef nonnull %115)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void @treeinsert(ptr noundef nonnull %4, i32 noundef 8192, i32 noundef 1)
  br label %118, !llvm.loop !215

122:                                              ; preds = %118
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #35
  %123 = load ptr, ptr @dictf, align 8, !tbaa !7
  %124 = call i32 @fclose(ptr noundef %123)
  br label %153

125:                                              ; preds = %110
  %126 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %12) #35
  %127 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  store ptr %127, ptr @dictf, align 8, !tbaa !7
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #35
  br label %130

130:                                              ; preds = %133, %129
  %131 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 8192, ptr noundef nonnull %127)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call void @treeinsert(ptr noundef nonnull %3, i32 noundef 8192, i32 noundef 1)
  br label %130, !llvm.loop !215

134:                                              ; preds = %130
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #35
  br label %140

135:                                              ; preds = %125
  %136 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.8.319, ptr noundef nonnull %13, ptr noundef nonnull %12) #35
  %137 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312)
  store ptr %137, ptr @dictf, align 8, !tbaa !7
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  tail call fastcc void @treeload(ptr noundef nonnull %137)
  br label %140

140:                                              ; preds = %139, %134
  %141 = load ptr, ptr @dictf, align 8, !tbaa !7
  %142 = call i32 @fclose(ptr noundef %141)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load ptr, ptr @dictf, align 8, !tbaa !7
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @stderr, align 8, !tbaa !7
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.9.320, ptr noundef nonnull %12) #37
  br label %152

152:                                              ; preds = %149, %146
  call void @perror(ptr noundef nonnull @.str.10.321) #37
  br label %174

153:                                              ; preds = %143, %122, %113, %102, %95
  %154 = load i32, ptr @lflag, align 4, !tbaa !13
  %155 = icmp ne i32 %154, 0
  %156 = load i32, ptr @aflag, align 4
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %174, label %159

159:                                              ; preds = %153
  %160 = call i32 (ptr, i32, ...) @access(ptr noundef nonnull @personaldict, i32 noundef 2) #35
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = tail call ptr @__errno_location() #39
  %164 = load i32, ptr %163, align 4, !tbaa !13
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr @stderr, align 8, !tbaa !7
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.11.322, ptr noundef nonnull @personaldict) #37
  br label %172

172:                                              ; preds = %169, %166
  %173 = call i32 (i32, ...) @sleep(i32 noundef 2) #35
  br label %174

174:                                              ; preds = %172, %162, %159, %153, %152, %11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @treeinsert(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [120 x i8], align 16
  %5 = alloca %struct.dent, align 8
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #35
  %7 = load i1, ptr @cantexpand, align 4
  br i1 %7, label %57, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @pershsize, align 4, !tbaa !13
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load ptr, ptr @pershtab, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %15 = getelementptr inbounds [4 x i32], ptr @goodsizes, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = icmp sgt i32 %16, %9
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %23, label %13, !llvm.loop !216

21:                                               ; preds = %13
  %22 = trunc i64 %14 to i32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 4, %18 ]
  %25 = phi i64 [ %14, %21 ], [ 4, %18 ]
  %26 = icmp ugt i32 %24, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = shl i32 %9, 1
  %29 = or disjoint i32 %28, 1
  br label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds [4 x i32], ptr @goodsizes, i64 0, i64 %25
  %32 = load i32, ptr %31, align 4, !tbaa !13
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %32, %30 ], [ %29, %27 ]
  store i32 %34, ptr @pershsize, align 4, !tbaa !13
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 24) #40
  store ptr %36, ptr @pershtab, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @stderr, align 8, !tbaa !7
  %43 = tail call i64 @fwrite(ptr nonnull @.str.12.323, i64 42, i64 1, ptr %42) #37
  br label %44

44:                                               ; preds = %41, %38
  %45 = icmp eq ptr %12, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @exit(i32 noundef 1) #38
  unreachable

47:                                               ; preds = %44
  %48 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  %52 = tail call i64 @fwrite(ptr nonnull @.str.13.324, i64 47, i64 1, ptr %51) #37
  br label %53

53:                                               ; preds = %50, %47
  store i1 true, ptr @cantexpand, align 4
  store i32 %9, ptr @pershsize, align 4, !tbaa !13
  store ptr %12, ptr @pershtab, align 8, !tbaa !7
  store i32 1, ptr @newwords, align 4, !tbaa !13
  br label %57

54:                                               ; preds = %33
  %55 = icmp eq ptr %12, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @free(ptr noundef %12) #35
  br label %57

57:                                               ; preds = %56, %54, %53, %8, %3
  %58 = call i32 @makedent(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #35
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %130, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !63
  %65 = or i64 %64, 134217728
  store i64 %65, ptr %63, align 8, !tbaa !63
  br label %66

66:                                               ; preds = %62, %60
  %67 = call i32 @strtoichar(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  call void @upcase(ptr noundef nonnull %6) #35
  %68 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = call i32 @combinecaps(ptr noundef nonnull %68, ptr noundef nonnull %5) #35
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  call void @free(ptr noundef %75) #35
  br label %130

76:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #35
  %77 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  %79 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %78, i32 noundef 120, i32 noundef 1) #35
  %80 = icmp ne i32 %79, 0
  %81 = load i32, ptr @cbench_print, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load ptr, ptr @stderr, align 8, !tbaa !7
  %86 = load ptr, ptr %77, align 8, !tbaa !71
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.17.325, ptr noundef %86, i32 noundef 446, ptr noundef nonnull @.str.18.326) #37
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, ptr @pershsize, align 4, !tbaa !13
  %90 = call i32 @hash(ptr noundef nonnull %4, i32 noundef %89) #35
  %91 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.dent, ptr %91, i64 %92
  %94 = getelementptr inbounds %struct.dent, ptr %91, i64 %92, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !63
  %96 = and i64 %95, 67108864
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %88
  %99 = icmp eq ptr %91, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %100, %98
  %101 = phi ptr [ %102, %100 ], [ %93, %98 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %100, !llvm.loop !217

104:                                              ; preds = %100, %98
  %105 = phi ptr [ null, %98 ], [ %101, %100 ]
  %106 = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #40
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @stderr, align 8, !tbaa !7
  %113 = call i64 @fwrite(ptr nonnull @.str.12.323, i64 42, i64 1, ptr %112) #37
  br label %114

114:                                              ; preds = %111, %108
  call void @exit(i32 noundef 1) #38
  unreachable

115:                                              ; preds = %104, %88
  %116 = phi ptr [ %106, %104 ], [ %93, %88 ]
  %117 = phi ptr [ %105, %104 ], [ null, %88 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !184
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store ptr %116, ptr %117, align 8, !tbaa !67
  br label %120

120:                                              ; preds = %119, %115
  store ptr null, ptr %116, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #35
  %121 = getelementptr inbounds %struct.dent, ptr %116, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !63
  %123 = and i64 %122, 805306368
  %124 = icmp eq i64 %123, 805306368
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 @addvheader(ptr noundef nonnull %116) #35
  br label %127

127:                                              ; preds = %125, %120, %70
  %128 = load i32, ptr @newwords, align 4, !tbaa !13
  %129 = or i32 %128, %2
  store i32 %129, ptr @newwords, align 4, !tbaa !13
  br label %130

130:                                              ; preds = %127, %73, %57
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @treeload(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #35
  br label %3

3:                                                ; preds = %6, %1
  %4 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call void @treeinsert(ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1)
  br label %3, !llvm.loop !215

7:                                                ; preds = %3
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #35
  ret void
}

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define dso_local ptr @treelookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #35
  %3 = load i32, ptr @pershsize, align 4, !tbaa !13
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = call i32 @ichartostr(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  %7 = load i32, ptr @pershsize, align 4, !tbaa !13
  %8 = call i32 @hash(ptr noundef %0, i32 noundef %7) #35
  %9 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.dent, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %37, %11
  %15 = phi ptr [ %39, %37 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !63
  %18 = and i64 %17, 67108864
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #36
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !63
  %28 = and i64 %27, 1073741824
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %30, %25
  %31 = phi ptr [ %32, %30 ], [ %15, %25 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !63
  %35 = and i64 %34, 1073741824
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %30, !llvm.loop !218

37:                                               ; preds = %30, %25
  %38 = phi ptr [ %15, %25 ], [ %32, %30 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %14, !llvm.loop !219

41:                                               ; preds = %20
  br i1 %19, label %42, label %43

42:                                               ; preds = %41, %37, %14, %5
  br label %43

43:                                               ; preds = %42, %41, %1
  %44 = phi ptr [ null, %42 ], [ null, %1 ], [ %15, %41 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #35
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local void @treeoutput() local_unnamed_addr #0 {
  %1 = load i32, ptr @newwords, align 4, !tbaa !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %209, label %3

3:                                                ; preds = %0
  %4 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.14.331)
  store ptr %4, ptr @dictf, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, ptr @cbench_print, align 4, !tbaa !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %209, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.15.332, ptr noundef nonnull @personaldict) #37
  br label %209

12:                                               ; preds = %3
  %13 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %14 = load i32, ptr @pershsize, align 4, !tbaa !13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dent, ptr %13, i64 %15
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %44, %12
  %19 = phi i32 [ %45, %44 ], [ 0, %12 ]
  %20 = phi ptr [ %46, %44 ], [ %13, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %40, %18
  %23 = phi i32 [ %30, %40 ], [ %19, %18 ]
  %24 = phi ptr [ %42, %40 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.dent, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !63
  %27 = and i64 %26, 201326592
  %28 = icmp eq i64 %27, 201326592
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %23, %29
  %31 = and i64 %26, 1073741824
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %22
  %34 = phi ptr [ %35, %33 ], [ %24, %22 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = getelementptr inbounds %struct.dent, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = and i64 %37, 1073741824
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %33, !llvm.loop !220

40:                                               ; preds = %33, %22
  %41 = phi ptr [ %24, %22 ], [ %35, %33 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !221

44:                                               ; preds = %40, %18
  %45 = phi i32 [ %19, %18 ], [ %30, %40 ]
  %46 = getelementptr inbounds %struct.dent, ptr %20, i64 1
  %47 = icmp ult ptr %46, %16
  br i1 %47, label %18, label %48, !llvm.loop !222

48:                                               ; preds = %44, %12
  %49 = phi i32 [ 0, %12 ], [ %45, %44 ]
  %50 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %51 = load i32, ptr @hashsize, align 4, !tbaa !13
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dent, ptr %50, i64 %52
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %71, %48
  %56 = phi i32 [ %72, %71 ], [ %49, %48 ]
  %57 = phi ptr [ %73, %71 ], [ %50, %48 ]
  %58 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !63
  %60 = and i64 %59, 201326592
  %61 = icmp ne i64 %60, 201326592
  %62 = and i64 %59, 805306368
  %63 = icmp eq i64 %62, 805306368
  %64 = or i1 %61, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = icmp ne ptr %67, null
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %56, %69
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i32 [ %56, %55 ], [ %70, %65 ]
  %73 = getelementptr inbounds %struct.dent, ptr %57, i64 1
  %74 = icmp ult ptr %73, %53
  br i1 %74, label %55, label %75, !llvm.loop !223

75:                                               ; preds = %71, %48
  %76 = phi i32 [ %49, %48 ], [ %72, %71 ]
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 24
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #41
  %80 = icmp eq ptr %79, null
  %81 = icmp sgt i32 %14, 0
  br i1 %80, label %83, label %82

82:                                               ; preds = %75
  br i1 %81, label %137, label %170

83:                                               ; preds = %75
  br i1 %81, label %84, label %113

84:                                               ; preds = %110, %83
  %85 = phi ptr [ %111, %110 ], [ %13, %83 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %110, label %87

87:                                               ; preds = %106, %84
  %88 = phi ptr [ %108, %106 ], [ %85, %84 ]
  %89 = getelementptr inbounds %struct.dent, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !63
  %91 = and i64 %90, 201326592
  %92 = icmp eq i64 %91, 201326592
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %94, ptr noundef nonnull %88, i32 noundef 1) #35
  %95 = getelementptr inbounds %struct.dent, ptr %88, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !63
  %97 = and i64 %96, 1073741824
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %99, %93
  %100 = phi ptr [ %101, %99 ], [ %88, %93 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = getelementptr inbounds %struct.dent, ptr %101, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !63
  %104 = and i64 %103, 1073741824
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %99, !llvm.loop !224

106:                                              ; preds = %99, %93, %87
  %107 = phi ptr [ %88, %87 ], [ %88, %93 ], [ %101, %99 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !67
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %87, !llvm.loop !225

110:                                              ; preds = %106, %84
  %111 = getelementptr inbounds %struct.dent, ptr %85, i64 1
  %112 = icmp ult ptr %111, %16
  br i1 %112, label %84, label %113, !llvm.loop !226

113:                                              ; preds = %110, %83
  %114 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %115 = load i32, ptr @hashsize, align 4, !tbaa !13
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dent, ptr %114, i64 %116
  %118 = icmp sgt i32 %115, 0
  br i1 %118, label %119, label %209

119:                                              ; preds = %134, %113
  %120 = phi ptr [ %135, %134 ], [ %114, %113 ]
  %121 = getelementptr inbounds %struct.dent, ptr %120, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !63
  %123 = and i64 %122, 201326592
  %124 = icmp ne i64 %123, 201326592
  %125 = and i64 %122, 805306368
  %126 = icmp eq i64 %125, 805306368
  %127 = or i1 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.dent, ptr %120, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !71
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %133, ptr noundef %120, i32 noundef 1) #35
  br label %134

134:                                              ; preds = %132, %128, %119
  %135 = getelementptr inbounds %struct.dent, ptr %120, i64 1
  %136 = icmp ult ptr %135, %117
  br i1 %136, label %119, label %209, !llvm.loop !227

137:                                              ; preds = %166, %82
  %138 = phi ptr [ %167, %166 ], [ %79, %82 ]
  %139 = phi ptr [ %168, %166 ], [ %13, %82 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %166, label %141

141:                                              ; preds = %161, %137
  %142 = phi ptr [ %163, %161 ], [ %138, %137 ]
  %143 = phi ptr [ %164, %161 ], [ %139, %137 ]
  %144 = getelementptr inbounds %struct.dent, ptr %143, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !63
  %146 = and i64 %145, 201326592
  %147 = icmp eq i64 %146, 201326592
  br i1 %147, label %148, label %161

148:                                              ; preds = %141
  %149 = getelementptr inbounds ptr, ptr %142, i64 1
  store ptr %143, ptr %142, align 8, !tbaa !7
  %150 = getelementptr inbounds %struct.dent, ptr %143, i64 0, i32 2
  %151 = load i64, ptr %150, align 8, !tbaa !63
  %152 = and i64 %151, 1073741824
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %154, %148
  %155 = phi ptr [ %156, %154 ], [ %143, %148 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !67
  %157 = getelementptr inbounds %struct.dent, ptr %156, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !63
  %159 = and i64 %158, 1073741824
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %154, !llvm.loop !228

161:                                              ; preds = %154, %148, %141
  %162 = phi ptr [ %143, %141 ], [ %143, %148 ], [ %156, %154 ]
  %163 = phi ptr [ %142, %141 ], [ %149, %148 ], [ %149, %154 ]
  %164 = load ptr, ptr %162, align 8, !tbaa !67
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %141, !llvm.loop !229

166:                                              ; preds = %161, %137
  %167 = phi ptr [ %138, %137 ], [ %163, %161 ]
  %168 = getelementptr inbounds %struct.dent, ptr %139, i64 1
  %169 = icmp ult ptr %168, %16
  br i1 %169, label %137, label %170, !llvm.loop !230

170:                                              ; preds = %166, %82
  %171 = phi ptr [ %79, %82 ], [ %167, %166 ]
  %172 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %173 = getelementptr inbounds %struct.dent, ptr %172, i64 %52
  %174 = icmp sgt i32 %51, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %191, %170
  %176 = phi ptr [ %192, %191 ], [ %171, %170 ]
  %177 = phi ptr [ %193, %191 ], [ %172, %170 ]
  %178 = getelementptr inbounds %struct.dent, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !63
  %180 = and i64 %179, 201326592
  %181 = icmp ne i64 %180, 201326592
  %182 = and i64 %179, 805306368
  %183 = icmp eq i64 %182, 805306368
  %184 = or i1 %181, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.dent, ptr %177, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !71
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds ptr, ptr %176, i64 1
  store ptr %177, ptr %176, align 8, !tbaa !7
  br label %191

191:                                              ; preds = %189, %185, %175
  %192 = phi ptr [ %190, %189 ], [ %176, %185 ], [ %176, %175 ]
  %193 = getelementptr inbounds %struct.dent, ptr %177, i64 1
  %194 = icmp ult ptr %193, %173
  br i1 %194, label %175, label %195, !llvm.loop !231

195:                                              ; preds = %191, %170
  %196 = zext i32 %76 to i64
  tail call void @qsort(ptr noundef nonnull %79, i64 noundef %196, i64 noundef 8, ptr noundef nonnull @pdictcmp) #35
  %197 = icmp sgt i32 %76, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %198, %195
  %199 = phi ptr [ %203, %198 ], [ %79, %195 ]
  %200 = phi i32 [ %201, %198 ], [ %76, %195 ]
  %201 = add nsw i32 %200, -1
  %202 = load ptr, ptr @dictf, align 8, !tbaa !7
  %203 = getelementptr inbounds ptr, ptr %199, i64 1
  %204 = load ptr, ptr %199, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %202, ptr noundef %204, i32 noundef 1) #35
  %205 = icmp sgt i32 %200, 1
  br i1 %205, label %198, label %206, !llvm.loop !232

206:                                              ; preds = %198, %195
  tail call void @free(ptr noundef %79) #35
  store i32 0, ptr @newwords, align 4, !tbaa !13
  %207 = load ptr, ptr @dictf, align 8, !tbaa !7
  %208 = tail call i32 @fclose(ptr noundef %207)
  br label %209

209:                                              ; preds = %206, %134, %113, %9, %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pdictcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.dent, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call i32 @casecmp(ptr noundef %5, ptr noundef %8, i32 noundef 1) #35
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @mymalloc(i32 noundef %0) local_unnamed_addr #33 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #41
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @myfree(ptr noundef %0) local_unnamed_addr #34 {
  %2 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, %0
  %5 = or i1 %3, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %2, i64 %7
  %9 = icmp ult ptr %8, %0
  %10 = select i1 %5, i1 true, i1 %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @free(ptr noundef %0) #35
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @xgets(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1.339) #35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr @xgets.Include_File, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !7
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #36
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr @xgets.Include_Len, align 4, !tbaa !13
  %14 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %2, ptr %14, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %10, %3
  %16 = ptrtoint ptr %0 to i64
  %17 = sext i32 %1 to i64
  br label %18

18:                                               ; preds = %62, %15
  %19 = phi ptr [ %0, %15 ], [ %63, %62 ]
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %20, %16
  %22 = add i64 %21, 1
  %23 = icmp slt i64 %22, %17
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = tail call i32 @getc(ptr noundef %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = trunc i32 %27 to i8
  %31 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %30, ptr %19, align 1, !tbaa !15
  %32 = icmp eq i32 %27, 10
  br i1 %32, label %33, label %62

33:                                               ; preds = %29, %24, %18
  %34 = phi i1 [ false, %29 ], [ true, %24 ], [ false, %18 ]
  %35 = phi ptr [ %31, %29 ], [ %19, %24 ], [ %19, %18 ]
  store i8 0, ptr %35, align 1, !tbaa !15
  br i1 %34, label %36, label %46

36:                                               ; preds = %33
  %37 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %38 = icmp eq ptr %37, @xgets.F
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = icmp eq ptr %35, %0
  br i1 %40, label %73, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds ptr, ptr %37, i64 -1
  store ptr %42, ptr @xgets.current_F, align 8, !tbaa !7
  %43 = load ptr, ptr %37, align 8, !tbaa !7
  %44 = tail call i32 @fclose(ptr noundef %43)
  %45 = icmp eq ptr %35, %0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41, %39, %33
  %47 = load i32, ptr @incfileflag, align 4, !tbaa !13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !7
  %51 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !13
  %52 = zext i32 %51 to i64
  %53 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %50, i64 noundef %52) #36
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, ptrtoint (ptr @xgets.F to i64)
  %61 = icmp slt i64 %60, 40
  br i1 %61, label %64, label %62

62:                                               ; preds = %70, %67, %64, %55, %41, %29
  %63 = phi ptr [ %31, %29 ], [ %35, %41 ], [ %0, %67 ], [ %0, %70 ], [ %0, %64 ], [ %0, %55 ]
  br label %18, !llvm.loop !233

64:                                               ; preds = %55
  %65 = load i8, ptr %57, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %62, label %67

67:                                               ; preds = %64
  %68 = tail call noalias ptr @fopen(ptr noundef nonnull %57, ptr noundef nonnull @.str.2.340)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %62, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %72, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %68, ptr %72, align 8, !tbaa !7
  br label %62

73:                                               ; preds = %49, %46, %39
  %74 = phi ptr [ null, %39 ], [ %0, %46 ], [ %0, %49 ]
  ret ptr %74
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { cold }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = !{i32 0, i32 2}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = !{!31, !32, i64 8}
!31 = !{!"hashheader", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6, !32, i64 8, !32, i64 10, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !9, i64 48, !9, i64 53, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 70, !9, i64 526, !9, i64 754, !9, i64 982, !9, i64 1210, !9, i64 1438, !9, i64 1666, !9, i64 1894, !9, i64 2022, !9, i64 3124, !9, i64 3524, !32, i64 3924}
!32 = !{!"short", !9, i64 0}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{i32 -1, i32 1}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = !{!44, !8, i64 8}
!44 = !{!"success", !8, i64 0, !8, i64 8, !8, i64 16}
!45 = !{!46, !32, i64 18}
!46 = !{!"flagent", !8, i64 0, !8, i64 8, !32, i64 16, !32, i64 18, !32, i64 20, !32, i64 22, !32, i64 24, !9, i64 26}
!47 = !{!46, !32, i64 20}
!48 = !{!44, !8, i64 16}
!49 = !{!44, !8, i64 0}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !9, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = !{!68, !8, i64 0}
!68 = !{!"dent", !8, i64 0, !8, i64 8, !9, i64 16}
!69 = !{!46, !32, i64 16}
!70 = distinct !{!70, !12}
!71 = !{!68, !8, i64 8}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = !{i32 -65535, i32 65536}
!78 = !{!32, !32, i64 0}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = !{!46, !32, i64 24}
!104 = !{!46, !32, i64 22}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = !{!46, !8, i64 0}
!108 = !{!46, !8, i64 8}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = !{!31, !9, i64 68}
!129 = distinct !{!129, !12}
!130 = distinct !{!130, !12}
!131 = distinct !{!131, !12}
!132 = distinct !{!132, !12}
!133 = distinct !{!133, !12}
!134 = !{!31, !9, i64 66}
!135 = !{!31, !9, i64 67}
!136 = !{!31, !14, i64 36}
!137 = distinct !{!137, !12}
!138 = !{!31, !14, i64 32}
!139 = !{!140, !14, i64 24}
!140 = !{!"stat", !64, i64 0, !64, i64 8, !64, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !141, i64 72, !141, i64 88, !141, i64 104, !9, i64 120}
!141 = !{!"timespec", !64, i64 0, !64, i64 8}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12}
!144 = distinct !{!144, !12}
!145 = distinct !{!145, !12}
!146 = !{!31, !32, i64 0}
!147 = !{!31, !32, i64 3924}
!148 = !{!31, !32, i64 2}
!149 = !{!31, !14, i64 20}
!150 = !{!31, !14, i64 24}
!151 = !{!31, !14, i64 28}
!152 = !{!31, !14, i64 16}
!153 = !{!31, !14, i64 12}
!154 = distinct !{!154, !12}
!155 = distinct !{!155, !12}
!156 = !{!157, !14, i64 8}
!157 = !{!"flagptr", !9, i64 0, !14, i64 8}
!158 = distinct !{!158, !12}
!159 = distinct !{!159, !12}
!160 = distinct !{!160, !12}
!161 = distinct !{!161, !12}
!162 = !{!31, !14, i64 40}
!163 = !{!31, !14, i64 44}
!164 = !{!165, !8, i64 0}
!165 = !{!"strchartype", !8, i64 0, !8, i64 8, !8, i64 16}
!166 = !{!165, !8, i64 8}
!167 = !{!165, !8, i64 16}
!168 = distinct !{!168, !12}
!169 = distinct !{!169, !12}
!170 = distinct !{!170, !12}
!171 = distinct !{!171, !12}
!172 = distinct !{!172, !12}
!173 = distinct !{!173, !12}
!174 = distinct !{!174, !12}
!175 = distinct !{!175, !12}
!176 = distinct !{!176, !12}
!177 = distinct !{!177, !12}
!178 = distinct !{!178, !12}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !12}
!182 = distinct !{!182, !12}
!183 = distinct !{!183, !12}
!184 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !15}
!185 = distinct !{!185, !12}
!186 = distinct !{!186, !12}
!187 = distinct !{!187, !12}
!188 = distinct !{!188, !12}
!189 = distinct !{!189, !12}
!190 = distinct !{!190, !12}
!191 = distinct !{!191, !12}
!192 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 1, !15, i64 17, i64 32, !15, i64 52, i64 4, !13, i64 56, i64 4, !13}
!193 = !{!194, !14, i64 12}
!194 = !{!"termios", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !9, i64 16, !9, i64 17, !14, i64 52, !14, i64 56}
!195 = !{!194, !14, i64 4}
!196 = !{!194, !14, i64 0}
!197 = distinct !{!197, !12}
!198 = distinct !{!198, !12}
!199 = distinct !{!199, !12}
!200 = distinct !{!200, !12}
!201 = distinct !{!201, !12}
!202 = distinct !{!202, !12}
!203 = distinct !{!203, !12}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, !12}
!206 = distinct !{!206, !12}
!207 = distinct !{!207, !12}
!208 = distinct !{!208, !12}
!209 = distinct !{!209, !12}
!210 = distinct !{!210, !12}
!211 = distinct !{!211, !12}
!212 = distinct !{!212, !12}
!213 = distinct !{!213, !12}
!214 = distinct !{!214, !12}
!215 = distinct !{!215, !12}
!216 = distinct !{!216, !12}
!217 = distinct !{!217, !12}
!218 = distinct !{!218, !12}
!219 = distinct !{!219, !12}
!220 = distinct !{!220, !12}
!221 = distinct !{!221, !12}
!222 = distinct !{!222, !12}
!223 = distinct !{!223, !12}
!224 = distinct !{!224, !12}
!225 = distinct !{!225, !12}
!226 = distinct !{!226, !12}
!227 = distinct !{!227, !12}
!228 = distinct !{!228, !12}
!229 = distinct !{!229, !12}
!230 = distinct !{!230, !12}
!231 = distinct !{!231, !12}
!232 = distinct !{!232, !12}
!233 = distinct !{!233, !12}
