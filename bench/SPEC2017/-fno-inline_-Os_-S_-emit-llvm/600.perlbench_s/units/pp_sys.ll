; ModuleID = 'pp_sys.c'
source_filename = "pp_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, %union._xnvu }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.av = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, ptr, %union.anon.8, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, %union._xnvu, %union.anon.12, i64, ptr, i8, i8 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%struct.timeval = type { i64, i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu, %union._xnvu }
%union.anon.13 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.14, ptr, %union.anon.15, %union.anon.16, %union.anon.17, ptr, %union.anon.18, ptr, i32, i32, i32 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { ptr }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%struct.context = type { %union.anon.19 }
%union.anon.19 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.26, %union._xivu }
%union.anon.26 = type { i64 }
%struct.TM64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"``\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@PL_rs = external global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_statusvalue_posix = external local_unnamed_addr global i32, align 4
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_globhook = external local_unnamed_addr global ptr, align 8
@PL_no_security = external constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_last_in_gv = external global ptr, align 8
@.str.6 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"\09...caught\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Warning: something's wrong\00", align 1
@PL_warnhook = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%-p\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"PROPAGATE\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"\09...propagated\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Died\00", align 1
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_ors_sv = external global ptr, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_no_usym = external constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Opening dirhandle %2p also as a file\00", align 1
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@PL_forkprocess = external local_unnamed_addr global i32, align 4
@PL_defoutgv = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@PL_no_func = external constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"umask not implemented\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"TIEARRAY\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Cannot tie unreifiable array\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"TIEHANDLE\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"TIESCALAR\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Can't locate object method \22%s\22 via package \22%-p\22\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"Self-ties of arrays and hashes are not supported\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"UNTIE\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"untie attempted while %lu inner references still exist\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"AnyDBM_File\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"AnyDBM_File.pm\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"No dbm on this machine\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Non-string passed as bitmask\00", align 1
@PL_stdingv = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"GETC\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Undefined format \22%-p\22 called\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_formtarget = external local_unnamed_addr global ptr, align 8
@PL_toptarget = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"%2p_TOP\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Undefined top format \22%-p\22 called\00", align 1
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [14 x i8] c"page overflow\00", align 1
@PL_bodytarget = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"PRINTF\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"Negative length\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Offset outside string\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"Wide character in %s\00", align 1
@PL_op_desc = external local_unnamed_addr constant [0 x ptr], align 8
@PL_argvgv = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@zero_but_true = internal constant [11 x i8] c"0 but true\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"Possible memory corruption: %s overflowed 3rd argument\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@PL_no_sock_func = external constant [0 x i8], align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [27 x i8] c"lstat() on filehandle%s%-p\00", align 1
@PL_laststype = external local_unnamed_addr global i16, align 2
@.str.58 = private unnamed_addr constant [43 x i8] c"The stat preceding lstat() wasn't an lstat\00", align 1
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_statname = external local_unnamed_addr global ptr, align 8
@PL_laststatval = external local_unnamed_addr global i32, align 4
@PL_statcache = external global %struct.stat, align 8
@PL_warn_nl = external constant [0 x i8], align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@PL_basetime = external local_unnamed_addr global i64, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.60 = private unnamed_addr constant [41 x i8] c"-T and -B not implemented on filehandles\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PL_envgv = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"LOGDIR\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"Use of chdir('') or chdir(undef) as chdir() is deprecated\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"fchdir\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.69 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@PL_no_dir_func = external constant [0 x i8], align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_psig_pend = external local_unnamed_addr global ptr, align 8
@PL_signals = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"panic: kid popen errno read, n=%u\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"setpgrp\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"getpriority\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"setpriority\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"times not implemented\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@reltable.Perl_pp_gmtime = internal unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.88 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.89 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.91 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.92 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime to i64)) to i32)], align 4
@.str.88 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@reltable.Perl_pp_gmtime.115 = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.97 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.98 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.99 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.100 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.101 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.102 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.103 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.104 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.105 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.106 to i64), i64 ptrtoint (ptr @reltable.Perl_pp_gmtime.115 to i64)) to i32)], align 4
@.str.95 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"%s(%.0f) too large\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"%s(%.0f) too small\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"%s(%.0f) failed\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"%s %s %2d %02d:%02d:%02d %ld\00", align 1
@safe_years = internal unnamed_addr constant [28 x i16] [i16 2016, i16 2017, i16 2018, i16 2019, i16 2020, i16 2021, i16 2022, i16 2023, i16 2024, i16 2025, i16 2026, i16 2027, i16 2028, i16 2029, i16 2030, i16 2031, i16 2032, i16 2033, i16 2034, i16 2035, i16 2036, i16 2037, i16 2010, i16 2011, i16 2012, i16 2013, i16 2014, i16 2015], align 16
@length_of_year = internal unnamed_addr constant [2 x i16] [i16 365, i16 366], align 2
@julian_days_by_month = internal unnamed_addr constant [2 x [12 x i16]] [[12 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], [12 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335]], align 16
@days_in_month = internal unnamed_addr constant [2 x [12 x i8]] [[12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", [12 x i8] c"\1F\1D\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F"], align 16
@.str.111 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.112 = private unnamed_addr constant [48 x i8] c"System V IPC is not implemented on this machine\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@switch.table.Perl_pp_ftrowned = private unnamed_addr constant [12 x i8] c"OozScbfdpugk", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_backtick() local_unnamed_addr #0 {
  %1 = alloca [256 x i8], align 16
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  store ptr %10, ptr @PL_Sv, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  br label %21

18:                                               ; preds = %0
  %19 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %10, ptr noundef null, i32 noundef 34) #21
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %4, %15 ], [ %20, %18 ]
  %23 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %25 = load i8, ptr %24, align 2, !tbaa !17
  %26 = and i8 %25, 3
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = zext nneg i8 %26 to i32
  br label %32

30:                                               ; preds = %21
  %31 = tail call i32 @Perl_block_gimme() #21
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %32, %36
  %38 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.op, ptr %38, i64 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !22
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %41, 32
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str, ptr @.str.3
  %47 = select i1 %43, ptr %46, ptr @.str.2
  %48 = tail call ptr @Perl_my_popen(ptr noundef %23, ptr noundef nonnull %47) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %143, label %50

50:                                               ; preds = %37
  %51 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef null) #21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %51, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %48, ptr noundef nonnull %47, ptr noundef nonnull %51) #21
  br label %58

58:                                               ; preds = %56, %53, %50
  switch i32 %33, label %59 [
    i32 1, label %63
    i32 2, label %68
  ]

59:                                               ; preds = %58
  %60 = tail call ptr @Perl_newSV(i64 noundef 79) #21
  %61 = tail call ptr @Perl_sv_gets(ptr noundef %60, ptr noundef nonnull %48, i32 noundef 0) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %93

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #22
  br label %64

64:                                               ; preds = %64, %63
  %65 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %48, ptr noundef nonnull %1, i64 noundef 256) #21
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %64, label %67, !llvm.loop !23

67:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #22
  br label %127

68:                                               ; preds = %58
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_rs) #21
  store ptr @PL_sv_undef, ptr @PL_rs, align 8, !tbaa !6
  tail call void @Perl_sv_setpvn(ptr noundef %8, ptr noundef nonnull @.str.4, i64 noundef 0) #21
  br label %69

69:                                               ; preds = %69, %68
  %70 = load ptr, ptr %8, align 8, !tbaa !25
  %71 = getelementptr inbounds %struct.xpv, ptr %70, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !26
  %73 = trunc i64 %72 to i32
  %74 = tail call ptr @Perl_sv_gets(ptr noundef nonnull %8, ptr noundef nonnull %48, i32 noundef %73) #21
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %69, !llvm.loop !28

76:                                               ; preds = %69
  tail call void @Perl_pop_scope() #21
  %77 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %9 to i64
  %80 = sub i64 %78, %79
  %81 = icmp slt i64 %80, 8
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %9, ptr noundef nonnull %9, i64 noundef 1) #21
  br label %84

84:                                               ; preds = %76, %82
  %85 = phi ptr [ %83, %82 ], [ %9, %76 ]
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  store ptr %8, ptr %86, align 8, !tbaa !6
  %87 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %127, label %89

89:                                               ; preds = %84
  tail call void @Perl_sv_magic(ptr noundef nonnull %8, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %127

90:                                               ; preds = %123, %59
  %91 = phi ptr [ %9, %59 ], [ %106, %123 ]
  %92 = phi ptr [ %60, %59 ], [ %124, %123 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %92) #23
  br label %127

93:                                               ; preds = %59, %123
  %94 = phi ptr [ %124, %123 ], [ %60, %59 ]
  %95 = phi ptr [ %106, %123 ], [ %9, %59 ]
  %96 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %95 to i64
  %99 = sub i64 %97, %98
  %100 = icmp slt i64 %99, 8
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %95, ptr noundef nonnull %95, i64 noundef 1) #21
  br label %103

103:                                              ; preds = %93, %101
  %104 = phi ptr [ %102, %101 ], [ %95, %93 ]
  %105 = tail call ptr @Perl_sv_2mortal(ptr noundef %94) #21
  %106 = getelementptr inbounds ptr, ptr %104, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !6
  %107 = load ptr, ptr %94, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.xpv, ptr %107, i64 0, i32 3
  %109 = load i64, ptr %108, align 8, !tbaa !16
  %110 = getelementptr inbounds %struct.xpv, ptr %107, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !26
  %112 = sub i64 %109, %111
  %113 = icmp ugt i64 %112, 20
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = add i64 %111, 1
  store i64 %115, ptr %108, align 8, !tbaa !16
  %116 = getelementptr inbounds %struct.sv, ptr %94, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !16
  %118 = tail call ptr @Perl_safesysrealloc(ptr noundef %117, i64 noundef %115) #21
  store ptr %118, ptr %116, align 8, !tbaa !16
  br label %119

119:                                              ; preds = %103, %114
  %120 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void @Perl_sv_magic(ptr noundef nonnull %94, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %123

123:                                              ; preds = %122, %119
  %124 = tail call ptr @Perl_newSV(i64 noundef 79) #21
  %125 = tail call ptr @Perl_sv_gets(ptr noundef %124, ptr noundef nonnull %48, i32 noundef 0) #21
  %126 = icmp eq ptr %125, null
  br i1 %126, label %90, label %93

127:                                              ; preds = %90, %67, %89, %84
  %128 = phi ptr [ %9, %67 ], [ %86, %89 ], [ %86, %84 ], [ %91, %90 ]
  %129 = call i32 @Perl_my_pclose(ptr noundef nonnull %48) #21
  store i32 %129, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = and i32 %129, 127
  %133 = icmp eq i32 %132, 0
  %134 = and i32 %129, 65280
  %135 = select i1 %133, i32 %134, i32 0
  %136 = shl nuw nsw i32 %132, 24
  %137 = add nuw i32 %136, 16777216
  %138 = icmp sgt i32 %137, 33554431
  %139 = select i1 %138, i32 %132, i32 0
  %140 = or disjoint i32 %139, %135
  br label %141

141:                                              ; preds = %127, %131
  %142 = phi i32 [ %140, %131 ], [ -1, %127 ]
  store i32 %142, ptr @PL_statusvalue, align 4, !tbaa !29
  store i8 1, ptr @PL_tainted, align 1, !tbaa !18
  br label %146

143:                                              ; preds = %37
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  store i32 -1, ptr @PL_statusvalue, align 4, !tbaa !29
  %144 = icmp eq i32 %33, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !6
  br label %146

146:                                              ; preds = %141, %143, %145
  %147 = phi ptr [ %2, %145 ], [ %128, %141 ], [ %9, %143 ]
  store ptr %147, ptr @PL_stack_sp, align 8, !tbaa !6
  %148 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %149 = load ptr, ptr %148, align 8, !tbaa !30
  ret ptr %149
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_my_popen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_context_layers(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_apply_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !31
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #21
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_my_pclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_glob() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !17
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %0, %6
  %10 = phi ptr [ %1, %0 ], [ %7, %6 ]
  %11 = phi ptr [ null, %0 ], [ %8, %6 ]
  store ptr %10, ptr @PL_stack_sp, align 8, !tbaa !6
  %12 = load ptr, ptr %10, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %12) #21
  %19 = tail call ptr @Perl_sv_2mortal(ptr noundef %18) #21
  store ptr %19, ptr %10, align 8, !tbaa !6
  %20 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !17
  br label %25

25:                                               ; preds = %9, %17
  %26 = phi i8 [ %4, %9 ], [ %24, %17 ]
  %27 = phi ptr [ %12, %9 ], [ %21, %17 ]
  %28 = and i8 %26, 3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = zext nneg i8 %28 to i32
  br label %34

32:                                               ; preds = %25
  %33 = tail call i32 @Perl_block_gimme() #21
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %129, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = and i32 %44, 1048576
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %129, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !25
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct.hv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !34
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %129, label %54

54:                                               ; preds = %47
  %55 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %27, ptr noundef nonnull @PL_sv_undef, i32 noundef 15, i32 noundef 73) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %129, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  switch i32 %35, label %81 [
    i32 1, label %111
    i32 3, label %59
  ]

59:                                               ; preds = %57
  %60 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %55) #23
  %61 = getelementptr inbounds ptr, ptr %58, i64 -1
  %62 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %61 to i64
  %65 = sub i64 %63, %64
  %66 = ashr exact i64 %65, 3
  %67 = icmp sgt i64 %66, %60
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = add nsw i64 %60, 1
  %70 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %61, ptr noundef nonnull %61, i64 noundef %69) #21
  br label %71

71:                                               ; preds = %59, %68
  %72 = phi ptr [ %70, %68 ], [ %61, %59 ]
  %73 = icmp slt i64 %60, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ %79, %74 ], [ 0, %71 ]
  %76 = phi ptr [ %78, %74 ], [ %72, %71 ]
  %77 = tail call ptr @Perl_av_shift(ptr noundef nonnull %55) #21
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !6
  %79 = add nuw i64 %75, 1
  %80 = icmp eq i64 %75, %60
  br i1 %80, label %111, label %74, !llvm.loop !36

81:                                               ; preds = %57
  %82 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.op, ptr %82, i64 0, i32 5
  %84 = load i8, ptr %83, align 2, !tbaa !17
  %85 = and i8 %84, 64
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds ptr, ptr %58, i64 -1
  br label %94

89:                                               ; preds = %81
  %90 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.op, ptr %82, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !10
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi ptr [ %88, %87 ], [ %93, %89 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  tail call void @Perl_sv_setsv_flags(ptr noundef %96, ptr noundef nonnull %55, i32 noundef 1538) #21
  %97 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %98 = getelementptr inbounds %struct.op, ptr %97, i64 0, i32 5
  %99 = load i8, ptr %98, align 2, !tbaa !17
  %100 = shl i8 %99, 1
  %101 = ashr i8 %100, 7
  %102 = sext i8 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %58, i64 %102
  %104 = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !14
  %106 = and i32 %105, 4194304
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %94
  %109 = tail call i32 @Perl_mg_set(ptr noundef nonnull %96) #21
  br label %110

110:                                              ; preds = %94, %108
  store ptr %96, ptr %103, align 8, !tbaa !6
  br label %111

111:                                              ; preds = %74, %71, %57, %110
  %112 = phi ptr [ %58, %57 ], [ %103, %110 ], [ %72, %71 ], [ %78, %74 ]
  store ptr %112, ptr @PL_stack_sp, align 8, !tbaa !6
  %113 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.op, ptr %113, i64 0, i32 5
  %115 = load i8, ptr %114, align 2, !tbaa !17
  %116 = icmp sgt i8 %115, -1
  %117 = load ptr, ptr %113, align 8, !tbaa !30
  br i1 %116, label %149, label %118

118:                                              ; preds = %111, %118
  %119 = phi ptr [ %120, %118 ], [ %117, %111 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !30
  %121 = getelementptr inbounds %struct.op, ptr %120, i64 0, i32 4
  %122 = load i16, ptr %121, align 8
  %123 = and i16 %122, 511
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %118, label %125, !llvm.loop !37

125:                                              ; preds = %118
  %126 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %127 = getelementptr inbounds i32, ptr %126, i64 -1
  store ptr %127, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %128 = load ptr, ptr %120, align 8, !tbaa !30
  br label %149

129:                                              ; preds = %34, %40, %47, %54
  %130 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.op, ptr %130, i64 0, i32 5
  %132 = load i8, ptr %131, align 2, !tbaa !17
  %133 = icmp sgt i8 %132, -1
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %130, align 8, !tbaa !30
  br label %149

136:                                              ; preds = %129
  %137 = load ptr, ptr @PL_globhook, align 8, !tbaa !6
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  tail call void %137() #21
  %140 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %141 = load ptr, ptr %140, align 8, !tbaa !30
  br label %149

142:                                              ; preds = %136
  tail call void @Perl_push_scope() #21
  %143 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store i8 1, ptr @PL_tainted, align 1, !tbaa !18
  tail call void @Perl_taint_proper(ptr noundef nonnull @PL_no_security, ptr noundef nonnull @.str.5) #21
  br label %146

146:                                              ; preds = %145, %142
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_last_in_gv) #21
  store ptr %11, ptr @PL_last_in_gv, align 8, !tbaa !6
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_rs) #21
  %147 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.6, i64 noundef 1, i32 noundef 524288) #21
  store ptr %147, ptr @PL_rs, align 8, !tbaa !6
  %148 = tail call ptr @Perl_do_readline() #21
  tail call void @Perl_pop_scope() #21
  br label %149

149:                                              ; preds = %111, %125, %146, %139, %134
  %150 = phi ptr [ %135, %134 ], [ %141, %139 ], [ %148, %146 ], [ %128, %125 ], [ %117, %111 ]
  ret ptr %150
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !14
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #21
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !40
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_do_readline() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_rcatline() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %3, ptr @PL_last_in_gv, align 8, !tbaa !6
  %4 = tail call ptr @Perl_do_readline() #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_warn() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %21

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  tail call void @Perl_do_join(ptr noundef %19, ptr noundef nonnull @PL_sv_no, ptr noundef %8, ptr noundef %2) #21
  %20 = getelementptr inbounds ptr, ptr %8, i64 1
  br label %40

21:                                               ; preds = %0
  %22 = icmp eq ptr %2, %8
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %25, %9
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #21
  br label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds ptr, ptr %2, i64 1
  br label %40

32:                                               ; preds = %21
  %33 = load ptr, ptr %2, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %33, i32 noundef 1538) #21
  br label %40

40:                                               ; preds = %30, %38, %32, %13
  %41 = phi ptr [ %19, %13 ], [ @PL_sv_no, %30 ], [ %39, %38 ], [ %33, %32 ]
  %42 = phi ptr [ %20, %13 ], [ %31, %30 ], [ %2, %38 ], [ %2, %32 ]
  %43 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %40
  %48 = and i32 %44, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %41, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !26
  store i64 %53, ptr %1, align 8, !tbaa !44
  br label %57

54:                                               ; preds = %47
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %41, ptr noundef nonnull %1, i32 noundef 34) #21
  %56 = load i64, ptr %1, align 8, !tbaa !44
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %53, %50 ]
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  %61 = load ptr, ptr @PL_errgv, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.gv, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %61, i32 noundef 0) #21
  %68 = getelementptr inbounds %struct.gv, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  br label %71

71:                                               ; preds = %60, %66
  %72 = phi ptr [ %70, %66 ], [ %64, %60 ]
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !14
  %75 = and i32 %74, 2097152
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = call i32 @Perl_mg_get(ptr noundef nonnull %72) #21
  %79 = load i32, ptr %73, align 4, !tbaa !14
  br label %80

80:                                               ; preds = %71, %77
  %81 = phi i32 [ %74, %71 ], [ %79, %77 ]
  %82 = and i32 %81, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = and i32 %81, 2097152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %84
  %88 = call ptr @Perl_sv_newmortal() #21
  call void @Perl_sv_setsv_flags(ptr noundef %88, ptr noundef nonnull %72, i32 noundef 1536) #21
  br label %104

89:                                               ; preds = %80
  %90 = and i32 %81, 16384
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %72, align 8, !tbaa !25
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !26
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %102, label %100

97:                                               ; preds = %89
  %98 = and i32 %81, 12288
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %92
  %101 = call ptr @Perl_sv_newmortal() #21
  call void @Perl_sv_setsv_flags(ptr noundef %101, ptr noundef nonnull %72, i32 noundef 1536) #21
  call void @Perl_sv_catpvn_flags(ptr noundef %101, ptr noundef nonnull @.str.7, i64 noundef 10, i32 noundef 2) #21
  br label %104

102:                                              ; preds = %97, %92
  %103 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 26, i32 noundef 524288) #21
  br label %104

104:                                              ; preds = %87, %102, %100, %84, %40, %57
  %105 = phi ptr [ %41, %40 ], [ %41, %57 ], [ %88, %87 ], [ %101, %100 ], [ %103, %102 ], [ %72, %84 ]
  %106 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !14
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  %110 = load ptr, ptr @PL_warnhook, align 8
  %111 = icmp ne ptr %110, null
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.9, ptr noundef nonnull %105) #21
  br label %115

114:                                              ; preds = %104
  call void @Perl_warn_sv(ptr noundef nonnull %105) #21
  br label %115

115:                                              ; preds = %114, %113
  store ptr @PL_sv_yes, ptr %42, align 8, !tbaa !6
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !6
  %116 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %117 = load ptr, ptr %116, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %117
}

; Function Attrs: optsize
declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warn_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_pp_die() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  tail call void @Perl_do_join(ptr noundef %19, ptr noundef nonnull @PL_sv_no, ptr noundef %8, ptr noundef %2) #21
  %20 = getelementptr inbounds ptr, ptr %8, i64 1
  br label %23

21:                                               ; preds = %0
  %22 = load ptr, ptr %2, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %19, %13 ], [ %22, %21 ]
  %25 = phi ptr [ %20, %13 ], [ %2, %21 ]
  %26 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !14
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %144

30:                                               ; preds = %23
  %31 = and i32 %27, 2098176
  %32 = icmp eq i32 %31, 1024
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %24, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.xpv, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !26
  store i64 %36, ptr %1, align 8, !tbaa !44
  br label %40

37:                                               ; preds = %30
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %24, ptr noundef nonnull %1, i32 noundef 34) #21
  %39 = load i64, ptr %1, align 8, !tbaa !44
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i64 [ %39, %37 ], [ %36, %33 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %144

43:                                               ; preds = %40
  %44 = load ptr, ptr @PL_errgv, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %44, i32 noundef 0) #21
  %51 = getelementptr inbounds %struct.gv, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  br label %54

54:                                               ; preds = %43, %49
  %55 = phi ptr [ %53, %49 ], [ %47, %43 ]
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !14
  %58 = and i32 %57, 2097152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = call i32 @Perl_mg_get(ptr noundef nonnull %55) #21
  %62 = load i32, ptr %56, align 4, !tbaa !14
  br label %63

63:                                               ; preds = %54, %60
  %64 = phi i32 [ %57, %54 ], [ %62, %60 ]
  %65 = and i32 %64, 2048
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %132, label %67

67:                                               ; preds = %63
  %68 = call i32 @Perl_sv_isobject(ptr noundef nonnull %55) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %144, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !16
  %73 = load ptr, ptr %72, align 8, !tbaa !25
  %74 = load ptr, ptr %73, align 8, !tbaa !32
  %75 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %74, ptr noundef nonnull @.str.10, i32 noundef 1) #21
  %76 = icmp eq ptr %75, null
  br i1 %76, label %144, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.cop, ptr %78, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %80, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.xpvgv, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !16
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2, i64 2
  br label %87

87:                                               ; preds = %77, %82
  %88 = phi ptr [ %86, %82 ], [ null, %77 ]
  %89 = call ptr @Perl_newSVpv(ptr noundef %88, i64 noundef 0) #21
  %90 = call ptr @Perl_sv_2mortal(ptr noundef %89) #21
  %91 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.cop, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !49
  %94 = zext i32 %93 to i64
  %95 = call ptr @Perl_newSVuv(i64 noundef %94) #21
  %96 = call ptr @Perl_sv_2mortal(ptr noundef %95) #21
  %97 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %25 to i64
  %100 = sub i64 %98, %99
  %101 = icmp slt i64 %100, 24
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = call ptr @Perl_stack_grow(ptr noundef nonnull %25, ptr noundef nonnull %25, i64 noundef 3) #21
  br label %104

104:                                              ; preds = %102, %87
  %105 = phi ptr [ %103, %102 ], [ %25, %87 ]
  %106 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %107 = getelementptr inbounds i32, ptr %106, i64 1
  store ptr %107, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %108 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call ptr @Perl_markstack_grow() #21
  br label %112

112:                                              ; preds = %104, %110
  %113 = phi ptr [ %111, %110 ], [ %107, %104 ]
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %115 = ptrtoint ptr %105 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = lshr exact i64 %117, 3
  %119 = trunc i64 %118 to i32
  store i32 %119, ptr %113, align 4, !tbaa !29
  %120 = getelementptr inbounds ptr, ptr %105, i64 1
  store ptr %55, ptr %120, align 8, !tbaa !6
  %121 = getelementptr inbounds ptr, ptr %105, i64 2
  store ptr %90, ptr %121, align 8, !tbaa !6
  %122 = getelementptr inbounds ptr, ptr %105, i64 3
  store ptr %96, ptr %122, align 8, !tbaa !6
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !6
  %123 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !16
  %125 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  %127 = call i32 @Perl_call_sv(ptr noundef %126, i32 noundef 42) #21
  %128 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %129 = getelementptr inbounds ptr, ptr %128, i64 -1
  store ptr %129, ptr @PL_stack_sp, align 8, !tbaa !6
  %130 = load ptr, ptr %128, align 8, !tbaa !6
  %131 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %130, i32 noundef 1538) #21
  br label %144

132:                                              ; preds = %63
  %133 = and i32 %64, 1024
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %55, align 8, !tbaa !25
  %137 = getelementptr inbounds %struct.xpv, ptr %136, i64 0, i32 2
  %138 = load i64, ptr %137, align 8, !tbaa !26
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %55, i32 noundef 1538) #21
  call void @Perl_sv_catpvn_flags(ptr noundef %141, ptr noundef nonnull @.str.11, i64 noundef 14, i32 noundef 2) #21
  br label %144

142:                                              ; preds = %135, %132
  %143 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.12, i64 noundef 4, i32 noundef 524288) #21
  br label %144

144:                                              ; preds = %67, %142, %140, %112, %70, %23, %40
  %145 = phi ptr [ %24, %23 ], [ %24, %40 ], [ %55, %67 ], [ %141, %140 ], [ %143, %142 ], [ %131, %112 ], [ %55, %70 ]
  %146 = call ptr @Perl_die_sv(ptr noundef %145) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr null
}

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_tied_method(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ...) local_unnamed_addr #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %8 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.stackinfo, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #21
  %14 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.stackinfo, ptr %14, i64 0, i32 3
  store ptr %13, ptr %16, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %10, %6 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 6
  store i32 2, ptr %19, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 4
  store i32 -1, ptr %20, align 8, !tbaa !56
  %21 = load ptr, ptr %18, align 8, !tbaa !57
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !40
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %25 = ptrtoint ptr %1 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = load ptr, ptr @PL_curstack, align 8, !tbaa !6
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  store i64 %28, ptr %31, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.av, ptr %21, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  store ptr %33, ptr @PL_stack_base, align 8, !tbaa !6
  %34 = load ptr, ptr %18, align 8, !tbaa !57
  %35 = load ptr, ptr %34, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !58
  %38 = getelementptr inbounds ptr, ptr %33, i64 %37
  store ptr %38, ptr @PL_stack_max, align 8, !tbaa !6
  %39 = load ptr, ptr %18, align 8, !tbaa !57
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.xpvav, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !40
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !6
  %44 = load ptr, ptr %18, align 8, !tbaa !57
  store ptr %44, ptr @PL_curstack, align 8, !tbaa !6
  store ptr %18, ptr @PL_curstackinfo, align 8, !tbaa !6
  %45 = ptrtoint ptr %38 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = add i32 %5, 1
  %50 = zext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %17
  %53 = tail call ptr @Perl_stack_grow(ptr noundef %43, ptr noundef %43, i64 noundef %50) #21
  br label %54

54:                                               ; preds = %52, %17
  %55 = phi ptr [ %53, %52 ], [ %43, %17 ]
  %56 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  store ptr %57, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %58 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call ptr @Perl_markstack_grow() #21
  br label %62

62:                                               ; preds = %54, %60
  %63 = phi ptr [ %61, %60 ], [ %57, %54 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %65 = ptrtoint ptr %55 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = lshr exact i64 %67, 3
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %63, align 4, !tbaa !29
  %70 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = tail call ptr @Perl_newRV(ptr noundef %2) #21
  %75 = tail call ptr @Perl_sv_2mortal(ptr noundef %74) #21
  br label %76

76:                                               ; preds = %62, %73
  %77 = phi ptr [ %75, %73 ], [ %71, %62 ]
  %78 = getelementptr inbounds ptr, ptr %55, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !6
  %79 = and i32 %4, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds ptr, ptr %55, i64 2
  %83 = getelementptr inbounds ptr, ptr %1, i64 2
  %84 = zext i32 %5 to i64
  %85 = shl nuw nsw i64 %84, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %82, ptr nonnull align 1 %83, i64 %85, i1 false)
  %86 = getelementptr inbounds ptr, ptr %78, i64 %84
  br label %120

87:                                               ; preds = %76
  %88 = icmp eq i32 %5, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %87
  %90 = and i32 %4, 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.va_start(ptr nonnull %7)
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %struct.__va_list_tag, ptr %7, i64 0, i32 2
  %93 = getelementptr inbounds %struct.__va_list_tag, ptr %7, i64 0, i32 3
  br label %94

94:                                               ; preds = %115, %89
  %95 = phi i32 [ %5, %89 ], [ %117, %115 ]
  %96 = phi ptr [ %78, %89 ], [ %116, %115 ]
  %97 = load i32, ptr %7, align 16
  %98 = icmp ult i32 %97, 41
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load ptr, ptr %93, align 16
  %101 = zext nneg i32 %97 to i64
  %102 = getelementptr i8, ptr %100, i64 %101
  %103 = add nuw nsw i32 %97, 8
  store i32 %103, ptr %7, align 16
  br label %107

104:                                              ; preds = %94
  %105 = load ptr, ptr %92, align 8
  %106 = getelementptr i8, ptr %105, i64 8
  store ptr %106, ptr %92, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi ptr [ %102, %99 ], [ %105, %104 ]
  %109 = load ptr, ptr %108, align 8
  br i1 %91, label %112, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds ptr, ptr %96, i64 1
  store ptr %109, ptr %111, align 8, !tbaa !6
  br label %115

112:                                              ; preds = %107
  %113 = call ptr @Perl_sv_2mortal(ptr noundef %109) #21
  %114 = getelementptr inbounds ptr, ptr %96, i64 1
  store ptr %113, ptr %114, align 8, !tbaa !6
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi ptr [ %111, %110 ], [ %114, %112 ]
  %117 = add i32 %95, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %94, !llvm.loop !62

119:                                              ; preds = %115
  call void @llvm.va_end(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %120

120:                                              ; preds = %87, %119, %81
  %121 = phi ptr [ %86, %81 ], [ %116, %119 ], [ %78, %87 ]
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @Perl_push_scope() #21
  %122 = and i32 %4, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_ors_sv) #21
  %125 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #21
  store ptr %125, ptr @PL_ors_sv, align 8, !tbaa !6
  br label %126

126:                                              ; preds = %124, %120
  %127 = and i32 %4, 3
  %128 = or disjoint i32 %127, 4096
  %129 = call i32 @Perl_call_sv(ptr noundef %0, i32 noundef %128) #21
  %130 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %131 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %132 = getelementptr inbounds %struct.stackinfo, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !54
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  call void @Perl_croak_popstack() #21
  br label %136

136:                                              ; preds = %126, %135
  %137 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %138 = ptrtoint ptr %130 to i64
  %139 = ptrtoint ptr %137 to i64
  %140 = sub i64 %138, %139
  %141 = ashr exact i64 %140, 3
  %142 = load ptr, ptr @PL_curstack, align 8, !tbaa !6
  %143 = load ptr, ptr %142, align 8, !tbaa !38
  %144 = getelementptr inbounds %struct.xpvav, ptr %143, i64 0, i32 2
  store i64 %141, ptr %144, align 8, !tbaa !40
  %145 = load ptr, ptr %133, align 8, !tbaa !57
  %146 = getelementptr inbounds %struct.av, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !16
  store ptr %147, ptr @PL_stack_base, align 8, !tbaa !6
  %148 = load ptr, ptr %133, align 8, !tbaa !57
  %149 = load ptr, ptr %148, align 8, !tbaa !38
  %150 = getelementptr inbounds %struct.xpvav, ptr %149, i64 0, i32 3
  %151 = load i64, ptr %150, align 8, !tbaa !58
  %152 = getelementptr inbounds ptr, ptr %147, i64 %151
  store ptr %152, ptr @PL_stack_max, align 8, !tbaa !6
  %153 = load ptr, ptr %133, align 8, !tbaa !57
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  %155 = getelementptr inbounds %struct.xpvav, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !40
  %157 = getelementptr inbounds ptr, ptr %147, i64 %156
  store ptr %157, ptr @PL_stack_sp, align 8, !tbaa !6
  %158 = load ptr, ptr %133, align 8, !tbaa !57
  store ptr %158, ptr @PL_curstack, align 8, !tbaa !6
  store ptr %133, ptr @PL_curstackinfo, align 8, !tbaa !6
  %159 = icmp eq i32 %129, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %136
  %161 = ptrtoint ptr %152 to i64
  %162 = ptrtoint ptr %157 to i64
  %163 = sub i64 %161, %162
  %164 = ashr exact i64 %163, 3
  %165 = sext i32 %129 to i64
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = call ptr @Perl_stack_grow(ptr noundef %157, ptr noundef %157, i64 noundef %165) #21
  br label %169

169:                                              ; preds = %160, %167
  %170 = phi ptr [ %168, %167 ], [ %157, %160 ]
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = sub nsw i64 0, %165
  %173 = getelementptr inbounds ptr, ptr %130, i64 %172
  %174 = getelementptr inbounds ptr, ptr %173, i64 1
  %175 = shl nsw i64 %165, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %171, ptr nonnull align 1 %174, i64 %175, i1 false)
  %176 = getelementptr inbounds ptr, ptr %170, i64 %165
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %177

177:                                              ; preds = %169, %136
  call void @Perl_pop_scope() #21
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %179 = load ptr, ptr %178, align 8, !tbaa !30
  ret ptr %179
}

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_open() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %23 [
    i8 9, label %25
    i8 10, label %20
  ]

20:                                               ; preds = %0
  %21 = and i32 %18, 49152
  %22 = icmp eq i32 %21, 32768
  br i1 %22, label %25, label %23

23:                                               ; preds = %0, %20
  %24 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.14) #21
  br label %134

25:                                               ; preds = %20, %0
  %26 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %69, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %29, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.xpvio, ptr %32, i64 0, i32 17
  %34 = load i8, ptr %33, align 1, !tbaa !67
  %35 = and i8 %34, -17
  store i8 %35, ptr %33, align 1, !tbaa !67
  %36 = getelementptr inbounds %struct.xpvio, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %26, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.gp, ptr %40, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %16, ptr %42
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.xpvgv, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 517, ptr noundef nonnull @.str.15, ptr noundef %47) #21
  br label %48

48:                                               ; preds = %39, %31
  %49 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !14
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %29, i32 noundef 113) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 18), align 16, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.16, i32 noundef 0) #21
  store ptr %60, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 18), align 16, !tbaa !6
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %60, %59 ], [ %57, %56 ]
  %63 = ptrtoint ptr %2 to i64
  %64 = ptrtoint ptr %15 to i64
  %65 = sub i64 %63, %64
  %66 = lshr exact i64 %65, 3
  %67 = trunc i64 %66 to i32
  %68 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %62, ptr noundef nonnull %8, ptr noundef nonnull %29, ptr noundef nonnull %54, i32 noundef 10, i32 noundef %67) #23
  br label %134

69:                                               ; preds = %48, %53, %25
  %70 = icmp ult ptr %15, %2
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = getelementptr inbounds ptr, ptr %8, i64 2
  br label %81

73:                                               ; preds = %69
  %74 = load ptr, ptr %26, align 8, !tbaa !16
  %75 = load ptr, ptr %74, align 8, !tbaa !70
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %16, i32 noundef 0) #21
  %79 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  br label %81

81:                                               ; preds = %77, %73, %71
  %82 = phi ptr [ %72, %71 ], [ %80, %77 ], [ %74, %73 ]
  %83 = phi ptr [ %72, %71 ], [ %15, %77 ], [ %15, %73 ]
  %84 = load ptr, ptr %82, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !14
  %87 = and i32 %86, 2098176
  %88 = icmp eq i32 %87, 1024
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load ptr, ptr %84, align 8, !tbaa !25
  %91 = getelementptr inbounds %struct.xpv, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !26
  store i64 %92, ptr %1, align 8, !tbaa !44
  %93 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  br label %98

95:                                               ; preds = %81
  %96 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %84, ptr noundef nonnull %1, i32 noundef 34) #21
  %97 = load i64, ptr %1, align 8, !tbaa !44
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i64 [ %92, %89 ], [ %97, %95 ]
  %100 = phi ptr [ %94, %89 ], [ %96, %95 ]
  %101 = getelementptr inbounds ptr, ptr %83, i64 1
  %102 = ptrtoint ptr %2 to i64
  %103 = ptrtoint ptr %83 to i64
  %104 = sub i64 %102, %103
  %105 = lshr exact i64 %104, 3
  %106 = trunc i64 %105 to i32
  %107 = call zeroext i1 @Perl_do_open6(ptr noundef nonnull %16, ptr noundef %100, i64 noundef %99, ptr noundef null, ptr noundef nonnull %101, i32 noundef %106) #21
  %108 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %109 = getelementptr inbounds ptr, ptr %108, i64 %7
  %110 = load i32, ptr @PL_forkprocess, align 4, !tbaa !29
  br i1 %107, label %111, label %117

111:                                              ; preds = %98
  %112 = sext i32 %110 to i64
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef %112) #21
  %113 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !14
  %115 = and i32 %114, 4194304
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %130, label %128

117:                                              ; preds = %98
  %118 = icmp eq i32 %110, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef 0) #21
  %120 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !14
  %122 = and i32 %121, 4194304
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %128

124:                                              ; preds = %117
  %125 = getelementptr inbounds ptr, ptr %109, i64 1
  store ptr @PL_sv_undef, ptr %125, align 8, !tbaa !6
  store ptr %125, ptr @PL_stack_sp, align 8, !tbaa !6
  %126 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  br label %134

128:                                              ; preds = %119, %111
  %129 = call i32 @Perl_mg_set(ptr noundef nonnull %14) #21
  br label %130

130:                                              ; preds = %128, %119, %111
  %131 = getelementptr inbounds ptr, ptr %109, i64 1
  store ptr %14, ptr %131, align 8, !tbaa !6
  store ptr %131, ptr @PL_stack_sp, align 8, !tbaa !6
  %132 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %133 = load ptr, ptr %132, align 8, !tbaa !30
  br label %134

134:                                              ; preds = %61, %130, %124, %23
  %135 = phi ptr [ %133, %130 ], [ %127, %124 ], [ %68, %61 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %135
}

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_open6(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_close() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds ptr, ptr %1, i64 -1
  %11 = load ptr, ptr @PL_defoutgv, align 8
  %12 = select i1 %9, ptr %11, ptr %8
  br label %22

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !6
  %15 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %22

22:                                               ; preds = %7, %20, %13
  %23 = phi ptr [ %14, %20 ], [ %14, %13 ], [ %12, %7 ]
  %24 = phi ptr [ %21, %20 ], [ %1, %13 ], [ %10, %7 ]
  %25 = icmp eq ptr %23, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -9
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gp, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !14
  %43 = and i32 %42, 8388608
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = tail call ptr @Perl_mg_find(ptr noundef nonnull %38, i32 noundef 113) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 30), align 16, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.17, i32 noundef 0) #21
  store ptr %52, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 30), align 16, !tbaa !6
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ %49, %48 ]
  %55 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %54, ptr noundef %24, ptr noundef nonnull %38, ptr noundef nonnull %46, i32 noundef 2, i32 noundef 0) #23
  br label %62

56:                                               ; preds = %40, %26, %32, %45, %36, %22
  %57 = tail call zeroext i1 @Perl_do_close(ptr noundef %23, i1 noundef zeroext true) #21
  %58 = select i1 %57, ptr @PL_sv_yes, ptr @PL_sv_no
  %59 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %58, ptr %59, align 8, !tbaa !6
  store ptr %59, ptr @PL_stack_sp, align 8, !tbaa !6
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %61 = load ptr, ptr %60, align 8, !tbaa !30
  br label %62

62:                                               ; preds = %53, %56
  %63 = phi ptr [ %61, %56 ], [ %55, %53 ]
  ret ptr %63
}

; Function Attrs: optsize
declare zeroext i1 @Perl_do_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pipe_op() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.18) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_fileno() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @PL_sv_undef, ptr %13, align 8, !tbaa !6
  store ptr %13, ptr @PL_stack_sp, align 8, !tbaa !6
  %14 = load ptr, ptr %3, align 8, !tbaa !30
  br label %77

15:                                               ; preds = %0
  %16 = getelementptr inbounds ptr, ptr %1, i64 -1
  %17 = load ptr, ptr %1, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -9
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = and i32 %35, 8388608
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @Perl_mg_find(ptr noundef nonnull %31, i32 noundef 113) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 29), align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.19, i32 noundef 0) #21
  store ptr %45, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 29), align 8, !tbaa !6
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi ptr [ %45, %44 ], [ %42, %41 ]
  %48 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %47, ptr noundef nonnull %16, ptr noundef nonnull %31, ptr noundef nonnull %39, i32 noundef 2, i32 noundef 0) #23
  br label %77

49:                                               ; preds = %33, %38
  %50 = load ptr, ptr %31, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.xpvio, ptr %50, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @__errno_location() #24
  store i32 95, ptr %55, align 4, !tbaa !29
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %56 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  br label %77

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.io, ptr %31, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %19, %15, %25, %29, %58
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  br label %77

65:                                               ; preds = %58
  %66 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %60) #21
  %67 = sext i32 %66 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %67) #21
  %68 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !14
  %70 = and i32 %69, 4194304
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %74

74:                                               ; preds = %65, %72
  store ptr %7, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %75 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %76 = load ptr, ptr %75, align 8, !tbaa !30
  br label %77

77:                                               ; preds = %74, %62, %54, %46, %12
  %78 = phi ptr [ %14, %12 ], [ %48, %46 ], [ %57, %54 ], [ %76, %74 ], [ %64, %62 ]
  ret ptr %78
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_umask() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %9, label %28, label %11

11:                                               ; preds = %7
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !16
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %8, i32 noundef 2) #21
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = and i64 %23, 448
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.20) #21
  br label %42

28:                                               ; preds = %7, %22, %0
  %29 = phi ptr [ %10, %22 ], [ %1, %0 ], [ %10, %7 ]
  %30 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %29 to i64
  %33 = sub i64 %31, %32
  %34 = icmp slt i64 %33, 8
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = tail call ptr @Perl_stack_grow(ptr noundef %29, ptr noundef %29, i64 noundef 1) #21
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ %29, %28 ]
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr @PL_sv_undef, ptr %39, align 8, !tbaa !6
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !6
  %40 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi ptr [ %27, %26 ], [ %41, %37 ]
  ret ptr %43
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_binmode() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %6 = and i8 %5, 15
  switch i8 %6, label %10 [
    i8 0, label %7
    i8 1, label %13
  ]

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr @PL_sv_undef, ptr %8, align 8, !tbaa !6
  store ptr %8, ptr @PL_stack_sp, align 8, !tbaa !6
  %9 = load ptr, ptr %3, align 8, !tbaa !30
  br label %112

10:                                               ; preds = %0
  %11 = getelementptr inbounds ptr, ptr %2, i64 -1
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %0, %10
  %14 = phi ptr [ %12, %10 ], [ null, %0 ]
  %15 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %16 = getelementptr inbounds ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %15, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -9
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = and i32 %35, 8388608
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @Perl_mg_find(ptr noundef nonnull %31, i32 noundef 113) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 28), align 16, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.21, i32 noundef 0) #21
  store ptr %45, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 28), align 16, !tbaa !6
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %45, %44 ], [ %42, %41 ]
  %48 = icmp ne ptr %14, null
  %49 = zext i1 %48 to i32
  %50 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %47, ptr noundef nonnull %16, ptr noundef nonnull %31, ptr noundef nonnull %39, i32 noundef 6, i32 noundef %49, ptr noundef %14) #23
  br label %112

51:                                               ; preds = %33, %38
  %52 = getelementptr inbounds %struct.io, ptr %31, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %19, %13, %25, %29, %51
  tail call void @Perl_report_evil_fh(ptr noundef %17) #21
  %56 = tail call ptr @__errno_location() #24
  store i32 9, ptr %56, align 4, !tbaa !29
  store ptr @PL_sv_undef, ptr %15, align 8, !tbaa !6
  store ptr %15, ptr @PL_stack_sp, align 8, !tbaa !6
  %57 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %58 = load ptr, ptr %57, align 8, !tbaa !30
  br label %112

59:                                               ; preds = %51
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  store i64 0, ptr %1, align 8, !tbaa !44
  %60 = icmp eq ptr %14, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !14
  %64 = and i32 %63, 2098176
  %65 = icmp eq i32 %64, 1024
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load ptr, ptr %14, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !26
  store i64 %69, ptr %1, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  br label %75

72:                                               ; preds = %61
  %73 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef nonnull %1, i32 noundef 34) #21
  %74 = load i64, ptr %1, align 8, !tbaa !44
  br label %75

75:                                               ; preds = %66, %72, %59
  %76 = phi i64 [ 0, %59 ], [ %69, %66 ], [ %74, %72 ]
  %77 = phi ptr [ null, %59 ], [ %71, %66 ], [ %73, %72 ]
  %78 = call i32 @Perl_mode_from_discipline(ptr noundef %77, i64 noundef %76) #21
  %79 = load ptr, ptr %31, align 8, !tbaa !65
  %80 = getelementptr inbounds %struct.xpvio, ptr %79, i64 0, i32 16
  %81 = load i8, ptr %80, align 8, !tbaa !71
  %82 = sext i8 %81 to i32
  %83 = call i32 @PerlIO_binmode(ptr noundef nonnull %53, i32 noundef %82, i32 noundef %78, ptr noundef %77) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %75
  %86 = load ptr, ptr %31, align 8, !tbaa !65
  %87 = getelementptr inbounds %struct.xpvio, ptr %86, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !72
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %52, align 8, !tbaa !16
  %92 = icmp eq ptr %88, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.xpvio, ptr %86, i64 0, i32 16
  %95 = load i8, ptr %94, align 8, !tbaa !71
  %96 = sext i8 %95 to i32
  %97 = call i32 @PerlIO_binmode(ptr noundef nonnull %88, i32 noundef %96, i32 noundef %78, ptr noundef %77) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 1
  store ptr @PL_sv_undef, ptr %101, align 8, !tbaa !6
  br label %108

102:                                              ; preds = %93, %90, %85
  %103 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %104 = getelementptr inbounds ptr, ptr %103, i64 1
  store ptr @PL_sv_yes, ptr %104, align 8, !tbaa !6
  br label %108

105:                                              ; preds = %75
  %106 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 1
  store ptr @PL_sv_undef, ptr %107, align 8, !tbaa !6
  br label %108

108:                                              ; preds = %105, %102, %99
  %109 = phi ptr [ %107, %105 ], [ %104, %102 ], [ %101, %99 ]
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !6
  %110 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %111 = load ptr, ptr %110, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  br label %112

112:                                              ; preds = %46, %108, %55, %7
  %113 = phi ptr [ %9, %7 ], [ %111, %108 ], [ %58, %55 ], [ %50, %46 ]
  ret ptr %113
}

; Function Attrs: optsize
declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mode_from_discipline(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_binmode(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_tie() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %68 [
    i8 12, label %13
    i8 11, label %24
    i8 9, label %34
    i8 10, label %34
  ]

13:                                               ; preds = %0
  %14 = and i32 %11, 1073741824
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @Perl_hv_eiter_p(ptr noundef nonnull %9) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %10, align 4, !tbaa !14
  %22 = and i32 %21, -1073741825
  store i32 %22, ptr %10, align 4, !tbaa !14
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %9, ptr noundef nonnull %18) #21
  br label %23

23:                                               ; preds = %20, %16, %13
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %9, ptr noundef null) #21
  br label %68

24:                                               ; preds = %0
  %25 = and i32 %11, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = icmp sgt i32 %11, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24) #21
  br label %30

30:                                               ; preds = %29, %27
  tail call void @Perl_av_clear(ptr noundef nonnull %9) #21
  %31 = load i32, ptr %10, align 4, !tbaa !14
  %32 = and i32 %31, 1073741823
  %33 = or disjoint i32 %32, 1073741824
  store i32 %33, ptr %10, align 4, !tbaa !14
  br label %68

34:                                               ; preds = %0, %0
  %35 = and i32 %11, 49152
  %36 = icmp eq i32 %35, 32768
  %37 = and i32 %11, 255
  br i1 %36, label %38, label %57

38:                                               ; preds = %34
  %39 = add nsw i32 %37, -9
  %40 = icmp ult i32 %39, 2
  %41 = and i32 %11, 16777216
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = tail call ptr @Perl_newSV_type(i32 noundef 15) #21
  %52 = load ptr, ptr %45, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.gp, ptr %52, i64 0, i32 1
  store ptr %51, ptr %53, align 8, !tbaa !64
  %54 = load ptr, ptr %45, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  br label %68

57:                                               ; preds = %34, %38
  %58 = icmp eq i32 %37, 10
  br i1 %58, label %59, label %68

59:                                               ; preds = %57
  %60 = load ptr, ptr %9, align 8, !tbaa !25
  %61 = getelementptr inbounds %struct.xpvlv, ptr %60, i64 0, i32 9
  %62 = load i8, ptr %61, align 8, !tbaa !73
  %63 = icmp eq i8 %62, 121
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %9) #21
  %65 = load ptr, ptr %9, align 8, !tbaa !25
  %66 = getelementptr inbounds %struct.xpvlv, ptr %65, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %44, %50, %0, %64, %59, %57, %24, %30, %23
  %69 = phi ptr [ @.str.23, %24 ], [ @.str.23, %30 ], [ @.str.22, %23 ], [ @.str.26, %57 ], [ @.str.26, %59 ], [ @.str.26, %64 ], [ @.str.26, %0 ], [ @.str.25, %50 ], [ @.str.25, %44 ]
  %70 = phi i32 [ 80, %24 ], [ 80, %30 ], [ 80, %23 ], [ 113, %57 ], [ 113, %59 ], [ 113, %64 ], [ 113, %0 ], [ 113, %50 ], [ 113, %44 ]
  %71 = phi ptr [ %9, %24 ], [ %9, %30 ], [ %9, %23 ], [ %9, %57 ], [ %9, %59 ], [ %67, %64 ], [ %9, %0 ], [ %56, %50 ], [ %48, %44 ]
  %72 = getelementptr inbounds ptr, ptr %7, i64 2
  %73 = ptrtoint ptr %1 to i64
  %74 = ptrtoint ptr %8 to i64
  %75 = sub i64 %73, %74
  %76 = lshr exact i64 %75, 3
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %72, align 8, !tbaa !6
  %79 = tail call i32 @Perl_sv_isobject(ptr noundef %78) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %158, label %81

81:                                               ; preds = %68
  tail call void @Perl_push_scope() #21
  %82 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.stackinfo, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #21
  %88 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %89 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !54
  %90 = getelementptr inbounds %struct.stackinfo, ptr %88, i64 0, i32 3
  store ptr %87, ptr %90, align 8, !tbaa !52
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi ptr [ %84, %81 ], [ %87, %86 ]
  %93 = getelementptr inbounds %struct.stackinfo, ptr %92, i64 0, i32 6
  store i32 2, ptr %93, align 8, !tbaa !55
  %94 = getelementptr inbounds %struct.stackinfo, ptr %92, i64 0, i32 4
  store i32 -1, ptr %94, align 8, !tbaa !56
  %95 = load ptr, ptr %92, align 8, !tbaa !57
  %96 = load ptr, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds %struct.xpvav, ptr %96, i64 0, i32 2
  store i64 0, ptr %97, align 8, !tbaa !40
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %99 = ptrtoint ptr %98 to i64
  %100 = sub i64 %73, %99
  %101 = ashr exact i64 %100, 3
  %102 = load ptr, ptr @PL_curstack, align 8, !tbaa !6
  %103 = load ptr, ptr %102, align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.xpvav, ptr %103, i64 0, i32 2
  store i64 %101, ptr %104, align 8, !tbaa !40
  %105 = getelementptr inbounds %struct.av, ptr %95, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !16
  store ptr %106, ptr @PL_stack_base, align 8, !tbaa !6
  %107 = load ptr, ptr %92, align 8, !tbaa !57
  %108 = load ptr, ptr %107, align 8, !tbaa !38
  %109 = getelementptr inbounds %struct.xpvav, ptr %108, i64 0, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !58
  %111 = getelementptr inbounds ptr, ptr %106, i64 %110
  store ptr %111, ptr @PL_stack_max, align 8, !tbaa !6
  %112 = load ptr, ptr %92, align 8, !tbaa !57
  %113 = load ptr, ptr %112, align 8, !tbaa !38
  %114 = getelementptr inbounds %struct.xpvav, ptr %113, i64 0, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !40
  %116 = getelementptr inbounds ptr, ptr %106, i64 %115
  store ptr %116, ptr @PL_stack_sp, align 8, !tbaa !6
  %117 = load ptr, ptr %92, align 8, !tbaa !57
  store ptr %117, ptr @PL_curstack, align 8, !tbaa !6
  store ptr %92, ptr @PL_curstackinfo, align 8, !tbaa !6
  %118 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %119 = getelementptr inbounds i32, ptr %118, i64 1
  store ptr %119, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %120 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %91
  %123 = tail call ptr @Perl_markstack_grow() #21
  %124 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %125 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  br label %126

126:                                              ; preds = %91, %122
  %127 = phi ptr [ %125, %122 ], [ %111, %91 ]
  %128 = phi ptr [ %124, %122 ], [ %106, %91 ]
  %129 = phi ptr [ %123, %122 ], [ %119, %91 ]
  %130 = ptrtoint ptr %116 to i64
  %131 = ptrtoint ptr %128 to i64
  %132 = sub i64 %130, %131
  %133 = lshr exact i64 %132, 3
  %134 = trunc i64 %133 to i32
  store i32 %134, ptr %129, align 4, !tbaa !29
  %135 = ptrtoint ptr %127 to i64
  %136 = sub i64 %135, %130
  %137 = ashr exact i64 %136, 3
  %138 = shl i64 %75, 29
  %139 = ashr i64 %138, 32
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = tail call ptr @Perl_stack_grow(ptr noundef %116, ptr noundef %116, i64 noundef %139) #21
  br label %143

143:                                              ; preds = %126, %141
  %144 = phi ptr [ %142, %141 ], [ %116, %126 ]
  %145 = icmp eq i32 %77, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %143, %146
  %147 = phi ptr [ %153, %146 ], [ %144, %143 ]
  %148 = phi i32 [ %150, %146 ], [ %77, %143 ]
  %149 = phi ptr [ %151, %146 ], [ %72, %143 ]
  %150 = add i32 %148, -1
  %151 = getelementptr inbounds ptr, ptr %149, i64 1
  %152 = load ptr, ptr %149, align 8, !tbaa !6
  %153 = getelementptr inbounds ptr, ptr %147, i64 1
  store ptr %152, ptr %153, align 8, !tbaa !6
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %155, label %146, !llvm.loop !76

155:                                              ; preds = %146, %143
  %156 = phi ptr [ %144, %143 ], [ %153, %146 ]
  store ptr %156, ptr @PL_stack_sp, align 8, !tbaa !6
  %157 = tail call i32 @Perl_call_method(ptr noundef nonnull %69, i32 noundef 2) #21
  br label %260

158:                                              ; preds = %68
  %159 = load ptr, ptr %72, align 8, !tbaa !6
  %160 = tail call ptr @Perl_gv_stashsv(ptr noundef %159, i32 noundef 0) #21
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %160, ptr noundef nonnull %69, i32 noundef 1) #21
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %162, %158
  %166 = load ptr, ptr %72, align 8, !tbaa !6
  %167 = getelementptr inbounds %struct.sv, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !14
  %169 = and i32 %168, 65280
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 255
  %172 = icmp eq i32 %171, 8
  %173 = or i1 %170, %172
  %174 = and i32 %168, 16777471
  %175 = icmp eq i32 %174, 16777226
  %176 = or i1 %175, %173
  %177 = select i1 %176, ptr %166, ptr @PL_sv_no
  %178 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.27, ptr noundef nonnull %69, ptr noundef nonnull %177) #21
  br label %316

179:                                              ; preds = %162
  tail call void @Perl_push_scope() #21
  %180 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %181 = getelementptr inbounds %struct.stackinfo, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !52
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #21
  %186 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %187 = getelementptr inbounds %struct.stackinfo, ptr %185, i64 0, i32 2
  store ptr %186, ptr %187, align 8, !tbaa !54
  %188 = getelementptr inbounds %struct.stackinfo, ptr %186, i64 0, i32 3
  store ptr %185, ptr %188, align 8, !tbaa !52
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi ptr [ %182, %179 ], [ %185, %184 ]
  %191 = getelementptr inbounds %struct.stackinfo, ptr %190, i64 0, i32 6
  store i32 2, ptr %191, align 8, !tbaa !55
  %192 = getelementptr inbounds %struct.stackinfo, ptr %190, i64 0, i32 4
  store i32 -1, ptr %192, align 8, !tbaa !56
  %193 = load ptr, ptr %190, align 8, !tbaa !57
  %194 = load ptr, ptr %193, align 8, !tbaa !38
  %195 = getelementptr inbounds %struct.xpvav, ptr %194, i64 0, i32 2
  store i64 0, ptr %195, align 8, !tbaa !40
  %196 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %197 = ptrtoint ptr %196 to i64
  %198 = sub i64 %73, %197
  %199 = ashr exact i64 %198, 3
  %200 = load ptr, ptr @PL_curstack, align 8, !tbaa !6
  %201 = load ptr, ptr %200, align 8, !tbaa !38
  %202 = getelementptr inbounds %struct.xpvav, ptr %201, i64 0, i32 2
  store i64 %199, ptr %202, align 8, !tbaa !40
  %203 = getelementptr inbounds %struct.av, ptr %193, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !16
  store ptr %204, ptr @PL_stack_base, align 8, !tbaa !6
  %205 = load ptr, ptr %190, align 8, !tbaa !57
  %206 = load ptr, ptr %205, align 8, !tbaa !38
  %207 = getelementptr inbounds %struct.xpvav, ptr %206, i64 0, i32 3
  %208 = load i64, ptr %207, align 8, !tbaa !58
  %209 = getelementptr inbounds ptr, ptr %204, i64 %208
  store ptr %209, ptr @PL_stack_max, align 8, !tbaa !6
  %210 = load ptr, ptr %190, align 8, !tbaa !57
  %211 = load ptr, ptr %210, align 8, !tbaa !38
  %212 = getelementptr inbounds %struct.xpvav, ptr %211, i64 0, i32 2
  %213 = load i64, ptr %212, align 8, !tbaa !40
  %214 = getelementptr inbounds ptr, ptr %204, i64 %213
  store ptr %214, ptr @PL_stack_sp, align 8, !tbaa !6
  %215 = load ptr, ptr %190, align 8, !tbaa !57
  store ptr %215, ptr @PL_curstack, align 8, !tbaa !6
  store ptr %190, ptr @PL_curstackinfo, align 8, !tbaa !6
  %216 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %217 = getelementptr inbounds i32, ptr %216, i64 1
  store ptr %217, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %218 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %189
  %221 = tail call ptr @Perl_markstack_grow() #21
  %222 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %223 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  br label %224

224:                                              ; preds = %189, %220
  %225 = phi ptr [ %223, %220 ], [ %209, %189 ]
  %226 = phi ptr [ %222, %220 ], [ %204, %189 ]
  %227 = phi ptr [ %221, %220 ], [ %217, %189 ]
  %228 = ptrtoint ptr %214 to i64
  %229 = ptrtoint ptr %226 to i64
  %230 = sub i64 %228, %229
  %231 = lshr exact i64 %230, 3
  %232 = trunc i64 %231 to i32
  store i32 %232, ptr %227, align 4, !tbaa !29
  %233 = ptrtoint ptr %225 to i64
  %234 = sub i64 %233, %228
  %235 = ashr exact i64 %234, 3
  %236 = shl i64 %75, 29
  %237 = ashr i64 %236, 32
  %238 = icmp slt i64 %235, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %224
  %240 = tail call ptr @Perl_stack_grow(ptr noundef %214, ptr noundef %214, i64 noundef %237) #21
  br label %241

241:                                              ; preds = %224, %239
  %242 = phi ptr [ %240, %239 ], [ %214, %224 ]
  %243 = icmp eq i32 %77, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241, %244
  %245 = phi ptr [ %251, %244 ], [ %242, %241 ]
  %246 = phi i32 [ %248, %244 ], [ %77, %241 ]
  %247 = phi ptr [ %249, %244 ], [ %72, %241 ]
  %248 = add i32 %246, -1
  %249 = getelementptr inbounds ptr, ptr %247, i64 1
  %250 = load ptr, ptr %247, align 8, !tbaa !6
  %251 = getelementptr inbounds ptr, ptr %245, i64 1
  store ptr %250, ptr %251, align 8, !tbaa !6
  %252 = icmp eq i32 %248, 0
  br i1 %252, label %253, label %244, !llvm.loop !77

253:                                              ; preds = %244, %241
  %254 = phi ptr [ %242, %241 ], [ %251, %244 ]
  store ptr %254, ptr @PL_stack_sp, align 8, !tbaa !6
  %255 = getelementptr inbounds %struct.gv, ptr %163, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !16
  %257 = getelementptr inbounds %struct.gp, ptr %256, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !50
  %259 = tail call i32 @Perl_call_sv(ptr noundef %258, i32 noundef 2) #21
  br label %260

260:                                              ; preds = %253, %155
  %261 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %262 = load ptr, ptr %261, align 8, !tbaa !6
  %263 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %264 = getelementptr inbounds %struct.stackinfo, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !54
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  tail call void @Perl_croak_popstack() #21
  br label %268

268:                                              ; preds = %260, %267
  %269 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %270 = ptrtoint ptr %261 to i64
  %271 = ptrtoint ptr %269 to i64
  %272 = sub i64 %270, %271
  %273 = ashr exact i64 %272, 3
  %274 = load ptr, ptr @PL_curstack, align 8, !tbaa !6
  %275 = load ptr, ptr %274, align 8, !tbaa !38
  %276 = getelementptr inbounds %struct.xpvav, ptr %275, i64 0, i32 2
  store i64 %273, ptr %276, align 8, !tbaa !40
  %277 = load ptr, ptr %265, align 8, !tbaa !57
  %278 = getelementptr inbounds %struct.av, ptr %277, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !16
  store ptr %279, ptr @PL_stack_base, align 8, !tbaa !6
  %280 = load ptr, ptr %265, align 8, !tbaa !57
  %281 = load ptr, ptr %280, align 8, !tbaa !38
  %282 = getelementptr inbounds %struct.xpvav, ptr %281, i64 0, i32 3
  %283 = load i64, ptr %282, align 8, !tbaa !58
  %284 = getelementptr inbounds ptr, ptr %279, i64 %283
  store ptr %284, ptr @PL_stack_max, align 8, !tbaa !6
  %285 = load ptr, ptr %265, align 8, !tbaa !57
  %286 = load ptr, ptr %285, align 8, !tbaa !38
  %287 = getelementptr inbounds %struct.xpvav, ptr %286, i64 0, i32 2
  %288 = load i64, ptr %287, align 8, !tbaa !40
  %289 = getelementptr inbounds ptr, ptr %279, i64 %288
  store ptr %289, ptr @PL_stack_sp, align 8, !tbaa !6
  %290 = load ptr, ptr %265, align 8, !tbaa !57
  store ptr %290, ptr @PL_curstack, align 8, !tbaa !6
  store ptr %265, ptr @PL_curstackinfo, align 8, !tbaa !6
  %291 = tail call i32 @Perl_sv_isobject(ptr noundef %262) #21
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %310, label %293

293:                                              ; preds = %268
  %294 = tail call i32 @Perl_sv_unmagic(ptr noundef %71, i32 noundef %70) #21
  %295 = getelementptr inbounds %struct.sv, ptr %262, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !16
  %297 = icmp eq ptr %71, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %300 = load i32, ptr %299, align 4, !tbaa !14
  %301 = and i32 %300, 255
  %302 = add nsw i32 %301, -11
  %303 = icmp ult i32 %302, 2
  br i1 %303, label %304, label %306

304:                                              ; preds = %298
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28) #21
  %305 = load ptr, ptr %295, align 8, !tbaa !16
  br label %306

306:                                              ; preds = %298, %304, %293
  %307 = phi ptr [ %71, %298 ], [ %305, %304 ], [ %296, %293 ]
  %308 = icmp eq ptr %307, %71
  %309 = select i1 %308, ptr null, ptr %262
  tail call void @Perl_sv_magic(ptr noundef %71, ptr noundef %309, i32 noundef %70, ptr noundef null, i32 noundef 0) #21
  br label %310

310:                                              ; preds = %306, %268
  tail call void @Perl_pop_scope() #21
  %311 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %312 = getelementptr inbounds ptr, ptr %311, i64 %6
  %313 = getelementptr inbounds ptr, ptr %312, i64 1
  store ptr %262, ptr %313, align 8, !tbaa !6
  store ptr %313, ptr @PL_stack_sp, align 8, !tbaa !6
  %314 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %315 = load ptr, ptr %314, align 8, !tbaa !30
  br label %316

316:                                              ; preds = %310, %165
  %317 = phi ptr [ %315, %310 ], [ %178, %165 ]
  ret ptr %317
}

; Function Attrs: optsize
declare ptr @Perl_hv_eiter_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_free_ent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_vivify_defelem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_untie() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -11
  %8 = icmp ult i32 %7, 2
  %9 = add nsw i32 %6, -9
  %10 = icmp ult i32 %9, 2
  %11 = and i32 %5, 16826368
  %12 = icmp eq i32 %11, 32768
  %13 = select i1 %12, i1 %10, i1 false
  br i1 %13, label %14, label %24

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !14
  br label %24

23:                                               ; preds = %14
  store ptr @PL_sv_yes, ptr %1, align 8, !tbaa !6
  br label %128

24:                                               ; preds = %20, %0
  %25 = phi i32 [ %22, %20 ], [ %5, %0 ]
  %26 = phi ptr [ %18, %20 ], [ %3, %0 ]
  %27 = and i32 %25, 255
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load ptr, ptr %26, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.xpvlv, ptr %30, i64 0, i32 9
  %32 = load i8, ptr %31, align 8, !tbaa !73
  %33 = icmp eq i8 %32, 121
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = tail call ptr @Perl_defelem_target(ptr noundef nonnull %26, ptr noundef null) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !14
  br label %41

40:                                               ; preds = %34
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !6
  br label %128

41:                                               ; preds = %37, %29, %24
  %42 = phi i32 [ %39, %37 ], [ %25, %29 ], [ %25, %24 ]
  %43 = phi ptr [ %35, %37 ], [ %26, %29 ], [ %26, %24 ]
  %44 = and i32 %42, 8388608
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %8, i32 80, i32 113
  br i1 %45, label %124, label %47

47:                                               ; preds = %41
  %48 = tail call ptr @Perl_mg_find(ptr noundef nonnull %43, i32 noundef %46) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %124, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.magic, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = tail call ptr @Perl_newRV(ptr noundef nonnull %43) #21
  %56 = tail call ptr @Perl_sv_2mortal(ptr noundef %55) #21
  br label %57

57:                                               ; preds = %50, %54
  %58 = phi ptr [ %56, %54 ], [ %52, %50 ]
  %59 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %124, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %60, align 8, !tbaa !25
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %64, ptr noundef nonnull @.str.29, i32 noundef 0) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %117, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.gv, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !63
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.gv, ptr %65, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.gp, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = icmp eq ptr %76, null
  br i1 %77, label %117, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %80 = getelementptr inbounds i32, ptr %79, i64 1
  store ptr %80, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %81 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = tail call ptr @Perl_markstack_grow() #21
  br label %85

85:                                               ; preds = %78, %83
  %86 = phi ptr [ %84, %83 ], [ %80, %78 ]
  %87 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %88 = ptrtoint ptr %2 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  %91 = lshr exact i64 %90, 3
  %92 = trunc i64 %91 to i32
  store i32 %92, ptr %86, align 4, !tbaa !29
  %93 = load ptr, ptr %51, align 8, !tbaa !59
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = tail call ptr @Perl_newRV(ptr noundef nonnull %65) #21
  %97 = tail call ptr @Perl_sv_2mortal(ptr noundef %96) #21
  br label %98

98:                                               ; preds = %85, %95
  %99 = phi ptr [ %97, %95 ], [ %93, %85 ]
  store ptr %99, ptr %1, align 8, !tbaa !6
  %100 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %101 = ptrtoint ptr %100 to i64
  %102 = ptrtoint ptr %1 to i64
  %103 = sub i64 %101, %102
  %104 = icmp slt i64 %103, 8
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef 1) #21
  br label %107

107:                                              ; preds = %98, %105
  %108 = phi ptr [ %106, %105 ], [ %1, %98 ]
  %109 = tail call ptr @Perl_sv_newmortal() #21
  %110 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %109, ptr %110, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !31
  %113 = add i32 %112, -1
  %114 = zext i32 %113 to i64
  tail call void @Perl_sv_setiv(ptr noundef %109, i64 noundef %114) #21
  store ptr %110, ptr @PL_stack_sp, align 8, !tbaa !6
  tail call void @Perl_push_scope() #21
  %115 = tail call i32 @Perl_call_sv(ptr noundef nonnull %76, i32 noundef 1) #21
  tail call void @Perl_pop_scope() #21
  %116 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %124

117:                                              ; preds = %62, %67, %72
  %118 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !31
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = zext i32 %119 to i64
  %123 = add nsw i64 %122, -1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 43, ptr noundef nonnull @.str.30, i64 noundef %123) #21
  br label %124

124:                                              ; preds = %41, %57, %117, %121, %107, %47
  %125 = phi ptr [ %2, %57 ], [ %2, %117 ], [ %2, %121 ], [ %116, %107 ], [ %2, %47 ], [ %2, %41 ]
  %126 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %43, i32 noundef %46) #21
  %127 = getelementptr inbounds ptr, ptr %125, i64 1
  store ptr @PL_sv_yes, ptr %127, align 8, !tbaa !6
  br label %128

128:                                              ; preds = %124, %40, %23
  %129 = phi ptr [ %127, %124 ], [ %1, %40 ], [ %1, %23 ]
  store ptr %129, ptr @PL_stack_sp, align 8, !tbaa !6
  %130 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %131 = load ptr, ptr %130, align 8, !tbaa !30
  ret ptr %131
}

; Function Attrs: optsize
declare ptr @Perl_defelem_target(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_tied() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, 2
  %8 = select i1 %7, i32 80, i32 113
  %9 = add nsw i32 %5, -9
  %10 = icmp ult i32 %9, 2
  %11 = and i32 %4, 16826368
  %12 = icmp eq i32 %11, 32768
  %13 = select i1 %12, i1 %10, i1 false
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !14
  br label %23

23:                                               ; preds = %20, %0
  %24 = phi i32 [ %22, %20 ], [ %4, %0 ]
  %25 = phi ptr [ %18, %20 ], [ %2, %0 ]
  %26 = and i32 %24, 255
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load ptr, ptr %25, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.xpvlv, ptr %29, i64 0, i32 9
  %31 = load i8, ptr %30, align 8, !tbaa !73
  %32 = icmp eq i8 %31, 121
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_defelem_target(ptr noundef nonnull %25, ptr noundef null) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !14
  br label %39

39:                                               ; preds = %36, %28, %23
  %40 = phi i32 [ %38, %36 ], [ %24, %28 ], [ %24, %23 ]
  %41 = phi ptr [ %34, %36 ], [ %25, %28 ], [ %25, %23 ]
  %42 = and i32 %40, 8388608
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = tail call ptr @Perl_mg_find(ptr noundef nonnull %41, i32 noundef %8) #21
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.magic, ptr %45, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = tail call ptr @Perl_newRV(ptr noundef nonnull %41) #21
  %53 = tail call ptr @Perl_sv_2mortal(ptr noundef %52) #21
  br label %54

54:                                               ; preds = %14, %33, %44, %39, %51, %47
  %55 = phi ptr [ %53, %51 ], [ %49, %47 ], [ @PL_sv_undef, %39 ], [ @PL_sv_undef, %44 ], [ @PL_sv_undef, %33 ], [ @PL_sv_undef, %14 ]
  store ptr %55, ptr %1, align 8, !tbaa !6
  %56 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_dbmopen() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds ptr, ptr %1, i64 -2
  %5 = load ptr, ptr %2, align 8, !tbaa !6
  %6 = getelementptr inbounds ptr, ptr %1, i64 -3
  %7 = load ptr, ptr %4, align 8, !tbaa !6
  %8 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.31, i64 noundef 11, i32 noundef 524288) #21
  %9 = tail call ptr @Perl_gv_stashsv(ptr noundef %8, i32 noundef 0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %9, ptr noundef nonnull @.str.22, i32 noundef 1) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !6
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.32) #21
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %16 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %9, ptr noundef nonnull @.str.22, i32 noundef 1) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %21

18:                                               ; preds = %0
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !6
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.32) #21
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #21
  br label %124

21:                                               ; preds = %14, %11
  %22 = phi ptr [ %12, %11 ], [ %16, %14 ]
  %23 = phi ptr [ %6, %11 ], [ %15, %14 ]
  tail call void @Perl_push_scope() #21
  %24 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %26 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call ptr @Perl_markstack_grow() #21
  br label %30

30:                                               ; preds = %21, %28
  %31 = phi ptr [ %29, %28 ], [ %25, %21 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %33 = ptrtoint ptr %23 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 3
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %31, align 4, !tbaa !29
  %38 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %33
  %41 = icmp slt i64 %40, 40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = tail call ptr @Perl_stack_grow(ptr noundef %23, ptr noundef %23, i64 noundef 5) #21
  br label %44

44:                                               ; preds = %30, %42
  %45 = phi ptr [ %43, %42 ], [ %23, %30 ]
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %8, ptr %46, align 8, !tbaa !6
  %47 = getelementptr inbounds ptr, ptr %45, i64 2
  store ptr %5, ptr %47, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !14
  %50 = and i32 %49, 2097408
  %51 = icmp eq i32 %50, 256
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load ptr, ptr %3, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct.xpviv, ptr %53, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !16
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %63, label %60

57:                                               ; preds = %44
  %58 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #21
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %52
  %61 = tail call ptr @Perl_sv_newmortal() #21
  %62 = getelementptr inbounds ptr, ptr %45, i64 3
  store ptr %61, ptr %62, align 8, !tbaa !6
  tail call void @Perl_sv_setuv(ptr noundef %61, i64 noundef 66) #21
  br label %76

63:                                               ; preds = %57, %52
  %64 = tail call ptr @Perl_sv_newmortal() #21
  %65 = getelementptr inbounds ptr, ptr %45, i64 3
  store ptr %64, ptr %65, align 8, !tbaa !6
  tail call void @Perl_sv_setuv(ptr noundef %64, i64 noundef 2) #21
  %66 = load i32, ptr %48, align 4, !tbaa !14
  %67 = and i32 %66, 65280
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %66, 255
  %70 = icmp eq i32 %69, 8
  %71 = or i1 %68, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = and i32 %66, 16777471
  %74 = icmp eq i32 %73, 16777226
  %75 = select i1 %74, ptr %3, ptr @PL_sv_no
  br label %76

76:                                               ; preds = %72, %63, %60
  %77 = phi ptr [ %3, %60 ], [ %3, %63 ], [ %75, %72 ]
  %78 = getelementptr inbounds ptr, ptr %45, i64 4
  store ptr %77, ptr %78, align 8, !tbaa !6
  store ptr %78, ptr @PL_stack_sp, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  %81 = getelementptr inbounds %struct.gp, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  %83 = tail call i32 @Perl_call_sv(ptr noundef %82, i32 noundef 2) #21
  %84 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = tail call i32 @Perl_sv_isobject(ptr noundef %85) #21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %76
  %89 = getelementptr inbounds ptr, ptr %84, i64 -1
  %90 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %91 = getelementptr inbounds i32, ptr %90, i64 1
  store ptr %91, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %92 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = tail call ptr @Perl_markstack_grow() #21
  br label %96

96:                                               ; preds = %88, %94
  %97 = phi ptr [ %95, %94 ], [ %91, %88 ]
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %99 = ptrtoint ptr %89 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = lshr exact i64 %101, 3
  %103 = trunc i64 %102 to i32
  store i32 %103, ptr %97, align 4, !tbaa !29
  store ptr %8, ptr %84, align 8, !tbaa !6
  %104 = getelementptr inbounds ptr, ptr %84, i64 1
  store ptr %5, ptr %104, align 8, !tbaa !6
  %105 = tail call ptr @Perl_sv_newmortal() #21
  %106 = getelementptr inbounds ptr, ptr %84, i64 2
  store ptr %105, ptr %106, align 8, !tbaa !6
  tail call void @Perl_sv_setuv(ptr noundef %105, i64 noundef 0) #21
  %107 = getelementptr inbounds ptr, ptr %84, i64 3
  store ptr %77, ptr %107, align 8, !tbaa !6
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !6
  %108 = load ptr, ptr %79, align 8, !tbaa !16
  %109 = getelementptr inbounds %struct.gp, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !50
  %111 = tail call i32 @Perl_call_sv(ptr noundef %110, i32 noundef 2) #21
  %112 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %113

113:                                              ; preds = %96, %76
  %114 = phi ptr [ %84, %76 ], [ %112, %96 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = tail call i32 @Perl_sv_isobject(ptr noundef %115) #21
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = tail call i32 @Perl_sv_unmagic(ptr noundef %7, i32 noundef 80) #21
  %120 = load ptr, ptr %114, align 8, !tbaa !6
  tail call void @Perl_sv_magic(ptr noundef %7, ptr noundef %120, i32 noundef 80, ptr noundef null, i32 noundef 0) #21
  br label %121

121:                                              ; preds = %118, %113
  tail call void @Perl_pop_scope() #21
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !6
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %123 = load ptr, ptr %122, align 8, !tbaa !30
  br label %124

124:                                              ; preds = %121, %19
  %125 = phi ptr [ %123, %121 ], [ %20, %19 ]
  ret ptr %125
}

; Function Attrs: optsize
declare void @Perl_require_pv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sselect() local_unnamed_addr #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca [4 x ptr], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %10 = getelementptr inbounds ptr, ptr %3, i64 -4
  br label %11

11:                                               ; preds = %0, %70
  %12 = phi i64 [ 1, %0 ], [ %72, %70 ]
  %13 = phi i32 [ 0, %0 ], [ %71, %70 ]
  %14 = getelementptr inbounds ptr, ptr %10, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = tail call i32 @Perl_mg_get(ptr noundef nonnull %15) #21
  %22 = load i32, ptr %16, align 4, !tbaa !14
  br label %23

23:                                               ; preds = %11, %20
  %24 = phi i32 [ %17, %11 ], [ %22, %20 ]
  %25 = and i32 %24, 65280
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %24, 255
  %28 = icmp eq i32 %27, 8
  %29 = or i1 %26, %28
  %30 = and i32 %24, 16777471
  %31 = icmp eq i32 %30, 16777226
  %32 = or i1 %31, %29
  br i1 %32, label %33, label %70

33:                                               ; preds = %23
  %34 = and i32 %24, 134283264
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = and i32 %24, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %15, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !26
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %36
  tail call void @Perl_croak_no_modify() #21
  br label %49

45:                                               ; preds = %33
  %46 = and i32 %24, 268435456
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %15, i32 noundef 0) #21
  br label %49

49:                                               ; preds = %45, %48, %39, %44
  %50 = load i32, ptr %16, align 4, !tbaa !14
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = and i32 %50, 16384
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.34) #21
  %57 = load i32, ptr %16, align 4, !tbaa !14
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ %50, %53 ]
  %60 = and i32 %59, 430018304
  %61 = icmp eq i32 %60, 1024
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %15, ptr noundef null, i32 noundef 0) #21
  br label %64

64:                                               ; preds = %58, %62, %49
  %65 = load ptr, ptr %15, align 8, !tbaa !25
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !26
  %68 = trunc i64 %67 to i32
  %69 = tail call i32 @llvm.smax.i32(i32 %13, i32 %68)
  br label %70

70:                                               ; preds = %23, %64
  %71 = phi i32 [ %69, %64 ], [ %13, %23 ]
  %72 = add nuw nsw i64 %12, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %11, !llvm.loop !78

74:                                               ; preds = %70
  %75 = and i32 %71, -128
  %76 = add nuw i32 %75, 128
  %77 = load ptr, ptr %3, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !14
  %80 = and i32 %79, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = tail call i32 @Perl_mg_get(ptr noundef nonnull %77) #21
  %84 = load i32, ptr %78, align 4, !tbaa !14
  br label %85

85:                                               ; preds = %74, %82
  %86 = phi i32 [ %79, %74 ], [ %84, %82 ]
  %87 = and i32 %86, 65280
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 255
  %90 = icmp eq i32 %89, 8
  %91 = or i1 %88, %90
  %92 = and i32 %86, 16777471
  %93 = icmp eq i32 %92, 16777226
  %94 = or i1 %93, %91
  br i1 %94, label %95, label %114

95:                                               ; preds = %85
  %96 = and i32 %86, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %77, align 8, !tbaa !25
  %100 = getelementptr inbounds %struct.xpvnv, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !16
  br label %104

102:                                              ; preds = %95
  %103 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %77, i32 noundef 0) #21
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi double [ %101, %98 ], [ %103, %102 ]
  %106 = fcmp olt double %105, 0.000000e+00
  %107 = select i1 %106, double 0.000000e+00, double %105
  %108 = fptosi double %107 to i64
  store i64 %108, ptr %1, align 8, !tbaa !79
  %109 = sitofp i64 %108 to double
  %110 = fsub double %107, %109
  %111 = fmul double %110, 1.000000e+06
  %112 = fptosi double %111 to i64
  %113 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  store i64 %112, ptr %113, align 8, !tbaa !81
  br label %114

114:                                              ; preds = %85, %104
  %115 = phi ptr [ %1, %104 ], [ null, %85 ]
  %116 = sext i32 %76 to i64
  %117 = or i32 %71, 127
  br label %118

118:                                              ; preds = %114, %161
  %119 = phi i64 [ 1, %114 ], [ %164, %161 ]
  %120 = getelementptr inbounds ptr, ptr %10, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !14
  %124 = and i32 %123, 65280
  %125 = icmp ne i32 %124, 0
  %126 = and i32 %123, 255
  %127 = icmp eq i32 %126, 8
  %128 = or i1 %125, %127
  %129 = and i32 %123, 16777471
  %130 = icmp eq i32 %129, 16777226
  %131 = or i1 %130, %128
  br i1 %131, label %132, label %161

132:                                              ; preds = %118
  %133 = load ptr, ptr %121, align 8, !tbaa !25
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !26
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 3
  %139 = load i64, ptr %138, align 8, !tbaa !16
  %140 = trunc i64 %139 to i32
  %141 = icmp sgt i32 %76, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %121, i64 noundef %116) #21
  %144 = load ptr, ptr %121, align 8, !tbaa !25
  %145 = getelementptr inbounds %struct.xpv, ptr %144, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !26
  br label %147

147:                                              ; preds = %142, %137
  %148 = phi i64 [ %146, %142 ], [ %135, %137 ]
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !16
  %152 = icmp sgt i32 %76, %149
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = shl i64 %148, 32
  %155 = ashr exact i64 %154, 32
  %156 = getelementptr i8, ptr %151, i64 %155
  %157 = sub i32 %117, %149
  %158 = zext i32 %157 to i64
  %159 = add nuw nsw i64 %158, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %156, i8 0, i64 %159, i1 false), !tbaa !16
  %160 = load ptr, ptr %150, align 8, !tbaa !16
  br label %161

161:                                              ; preds = %147, %153, %132, %118
  %162 = phi ptr [ null, %118 ], [ null, %132 ], [ %160, %153 ], [ %151, %147 ]
  %163 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %119
  store ptr %162, ptr %163, align 8, !tbaa !6
  %164 = add nuw nsw i64 %119, 1
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %118, !llvm.loop !82

166:                                              ; preds = %161
  %167 = shl nsw i32 %71, 3
  %168 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %171 = load ptr, ptr %170, align 16, !tbaa !6
  %172 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = call i32 @select(i32 noundef %167, ptr noundef %169, ptr noundef %171, ptr noundef %173, ptr noundef %115) #21
  br label %175

175:                                              ; preds = %166, %189
  %176 = phi i64 [ 1, %166 ], [ %190, %189 ]
  %177 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = icmp eq ptr %178, null
  br i1 %179, label %189, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds ptr, ptr %10, i64 %176
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.sv, ptr %182, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !14
  %185 = and i32 %184, 4194304
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %180
  %188 = call i32 @Perl_mg_set(ptr noundef nonnull %182) #21
  br label %189

189:                                              ; preds = %175, %180, %187
  %190 = add nuw nsw i64 %176, 1
  %191 = icmp eq i64 %190, 4
  br i1 %191, label %192, label %175, !llvm.loop !83

192:                                              ; preds = %189
  %193 = sext i32 %174 to i64
  call void @Perl_sv_setiv(ptr noundef %9, i64 noundef %193) #21
  %194 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !14
  %196 = and i32 %195, 4194304
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  %199 = call i32 @Perl_mg_set(ptr noundef nonnull %9) #21
  br label %200

200:                                              ; preds = %192, %198
  %201 = getelementptr inbounds ptr, ptr %3, i64 -3
  store ptr %9, ptr %201, align 8, !tbaa !6
  %202 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %203 = getelementptr inbounds %struct.op, ptr %202, i64 0, i32 5
  %204 = load i8, ptr %203, align 2, !tbaa !17
  %205 = and i8 %204, 3
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %200
  %208 = zext nneg i8 %205 to i32
  br label %211

209:                                              ; preds = %200
  %210 = call i32 @Perl_block_gimme() #21
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = icmp eq i32 %212, 3
  %214 = icmp ne ptr %115, null
  %215 = and i1 %214, %213
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load i64, ptr %1, align 8, !tbaa !79
  %218 = sitofp i64 %217 to double
  %219 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %220 = load i64, ptr %219, align 8, !tbaa !81
  %221 = sitofp i64 %220 to double
  %222 = fdiv double %221, 1.000000e+06
  %223 = fadd double %222, %218
  %224 = call ptr @Perl_sv_newmortal() #21
  %225 = getelementptr inbounds ptr, ptr %3, i64 -2
  store ptr %224, ptr %225, align 8, !tbaa !6
  call void @Perl_sv_setnv(ptr noundef %224, double noundef %223) #21
  br label %226

226:                                              ; preds = %216, %211
  %227 = phi ptr [ %225, %216 ], [ %201, %211 ]
  store ptr %227, ptr @PL_stack_sp, align 8, !tbaa !6
  %228 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %229 = load ptr, ptr %228, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret ptr %229
}

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_setdefout(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !31
  %5 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %5) #23
  store ptr %0, ptr @PL_defoutgv, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_select() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds ptr, ptr %1, i64 -1
  %13 = load ptr, ptr %1, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %0, %11
  %15 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %16 = phi ptr [ %13, %11 ], [ null, %0 ]
  %17 = load ptr, ptr @PL_defoutgv, align 8
  %18 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !63
  %20 = and i32 %19, 49152
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = and i32 %19, 255
  %24 = add nsw i32 %23, -9
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  br label %31

31:                                               ; preds = %22, %14, %26
  %32 = phi ptr [ %30, %26 ], [ null, %14 ], [ null, %22 ]
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %17, ptr %32
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !63
  %37 = and i32 %36, 49152
  %38 = icmp eq i32 %37, 32768
  br i1 %38, label %39, label %105

39:                                               ; preds = %31
  %40 = and i32 %36, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %105

43:                                               ; preds = %39
  %44 = load ptr, ptr %34, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.xpvgv, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %105, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !34
  %51 = and i32 %50, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hv, ptr %46, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !16
  %56 = load ptr, ptr %46, align 8, !tbaa !84
  %57 = getelementptr inbounds %struct.xpvhv, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !85
  %59 = getelementptr ptr, ptr %55, i64 %58
  %60 = getelementptr ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %105, label %63

63:                                               ; preds = %53
  %64 = getelementptr i8, ptr %59, i64 36
  %65 = load i32, ptr %64, align 4, !tbaa !87
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %105, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.xpvgv, ptr %44, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  %71 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !89
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !16
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  %79 = sub nsw i32 0, %72
  %80 = select i1 %78, i32 %72, i32 %79
  %81 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %46, ptr noundef nonnull %70, i32 noundef %80, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %105, label %83

83:                                               ; preds = %67
  %84 = load ptr, ptr %81, align 8, !tbaa !6
  %85 = icmp eq ptr %84, %34
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !6
  tail call void @Perl_gv_efullname4(ptr noundef %7, ptr noundef %87, ptr noundef null, i1 noundef zeroext true) #21
  %88 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !14
  %90 = and i32 %89, 4194304
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %94

94:                                               ; preds = %86, %92
  %95 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %15 to i64
  %98 = sub i64 %96, %97
  %99 = icmp slt i64 %98, 8
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #21
  br label %102

102:                                              ; preds = %94, %100
  %103 = phi ptr [ %101, %100 ], [ %15, %94 ]
  %104 = getelementptr inbounds ptr, ptr %103, i64 1
  store ptr %7, ptr %104, align 8, !tbaa !6
  br label %118

105:                                              ; preds = %39, %31, %43, %63, %53, %48, %83, %67
  %106 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %107 = ptrtoint ptr %106 to i64
  %108 = ptrtoint ptr %15 to i64
  %109 = sub i64 %107, %108
  %110 = icmp slt i64 %109, 8
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #21
  br label %113

113:                                              ; preds = %105, %111
  %114 = phi ptr [ %112, %111 ], [ %15, %105 ]
  %115 = tail call ptr @Perl_newRV(ptr noundef nonnull %34) #21
  %116 = tail call ptr @Perl_sv_2mortal(ptr noundef %115) #21
  %117 = getelementptr inbounds ptr, ptr %114, i64 1
  store ptr %116, ptr %117, align 8, !tbaa !6
  br label %118

118:                                              ; preds = %113, %102
  %119 = phi ptr [ %104, %102 ], [ %117, %113 ]
  %120 = icmp eq ptr %16, null
  br i1 %120, label %138, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !14
  %124 = and i32 %123, 255
  %125 = add nsw i32 %124, -9
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.gp, ptr %129, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !64
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %121, %127, %131
  %136 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %16, i32 noundef 15) #21
  br label %137

137:                                              ; preds = %135, %131
  tail call void @Perl_setdefout(ptr noundef nonnull %16) #23
  br label %138

138:                                              ; preds = %137, %118
  store ptr %119, ptr @PL_stack_sp, align 8, !tbaa !6
  %139 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %140 = load ptr, ptr %139, align 8, !tbaa !30
  ret ptr %140
}

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_getc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %14, label %16, label %20

16:                                               ; preds = %12, %0
  %17 = phi ptr [ %1, %0 ], [ %15, %12 ]
  %18 = load ptr, ptr @PL_stdingv, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %12, %16
  %21 = phi ptr [ %17, %16 ], [ %15, %12 ]
  %22 = phi ptr [ %18, %16 ], [ %13, %12 ]
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !14
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -9
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gp, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  br label %35

35:                                               ; preds = %20, %16, %28, %32
  %36 = phi i1 [ false, %32 ], [ false, %28 ], [ true, %16 ], [ false, %20 ]
  %37 = phi ptr [ %21, %32 ], [ %21, %28 ], [ %17, %16 ], [ %21, %20 ]
  %38 = phi ptr [ %22, %32 ], [ %22, %28 ], [ null, %16 ], [ %22, %20 ]
  %39 = phi ptr [ %34, %32 ], [ null, %28 ], [ null, %16 ], [ null, %20 ]
  br i1 %11, label %40, label %48

40:                                               ; preds = %35
  %41 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %37 to i64
  %44 = sub i64 %42, %43
  %45 = icmp slt i64 %44, 8
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call ptr @Perl_stack_grow(ptr noundef %37, ptr noundef %37, i64 noundef 1) #21
  br label %48

48:                                               ; preds = %46, %40, %35
  %49 = phi ptr [ %47, %46 ], [ %37, %40 ], [ %37, %35 ]
  %50 = icmp eq ptr %39, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !14
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %51
  %57 = tail call ptr @Perl_mg_find(ptr noundef nonnull %39, i32 noundef 113) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.op, ptr %60, i64 0, i32 5
  %62 = load i8, ptr %61, align 2, !tbaa !17
  %63 = and i8 %62, 3
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = zext nneg i8 %63 to i32
  br label %69

67:                                               ; preds = %59
  %68 = tail call i32 @Perl_block_gimme() #21
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 24), align 16, !tbaa !6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.35, i32 noundef 0) #21
  store ptr %74, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 24), align 16, !tbaa !6
  br label %75

75:                                               ; preds = %69, %73
  %76 = phi ptr [ %74, %73 ], [ %71, %69 ]
  %77 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %76, ptr noundef %49, ptr noundef nonnull %39, ptr noundef nonnull %57, i32 noundef %70, i32 noundef 0) #23
  %78 = icmp eq i32 %70, 2
  br i1 %78, label %79, label %176

79:                                               ; preds = %75
  %80 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = icmp eq ptr %7, %81
  br i1 %82, label %176, label %83

83:                                               ; preds = %79
  tail call void @Perl_sv_setsv_flags(ptr noundef %7, ptr noundef %81, i32 noundef 1554) #21
  %84 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !14
  %86 = and i32 %85, 4194304
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %176, label %88

88:                                               ; preds = %83
  %89 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %176

90:                                               ; preds = %51, %56, %48
  br i1 %36, label %93, label %91

91:                                               ; preds = %90
  %92 = tail call zeroext i1 @Perl_do_eof(ptr noundef nonnull %38) #21
  br i1 %92, label %93, label %107

93:                                               ; preds = %91, %90
  br i1 %50, label %103, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.io, ptr %39, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load ptr, ptr %39, align 8, !tbaa !65
  %100 = getelementptr inbounds %struct.xpvio, ptr %99, i64 0, i32 16
  %101 = load i8, ptr %100, align 8, !tbaa !71
  %102 = icmp eq i8 %101, 62
  br i1 %102, label %104, label %103

103:                                              ; preds = %98, %93
  tail call void @Perl_report_evil_fh(ptr noundef %38) #21
  br label %104

104:                                              ; preds = %103, %98, %94
  %105 = tail call ptr @__errno_location() #24
  store i32 9, ptr %105, align 4, !tbaa !29
  %106 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr @PL_sv_undef, ptr %106, align 8, !tbaa !6
  store ptr %106, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %176

107:                                              ; preds = %91
  store i8 1, ptr @PL_tainted, align 1, !tbaa !18
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef nonnull @.str.36, i64 noundef 1) #21
  %108 = getelementptr inbounds %struct.gv, ptr %38, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !16
  %110 = getelementptr inbounds %struct.gp, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  %112 = getelementptr inbounds %struct.io, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !16
  %114 = tail call i32 @PerlIO_getc(ptr noundef %113) #21
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !16
  store i8 %115, ptr %117, align 1, !tbaa !16
  %118 = load ptr, ptr %108, align 8, !tbaa !16
  %119 = getelementptr inbounds %struct.gp, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !64
  %121 = getelementptr inbounds %struct.io, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !16
  %123 = tail call i32 @PerlIO_isutf8(ptr noundef %122) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %164, label %125

125:                                              ; preds = %107
  %126 = load ptr, ptr %116, align 8, !tbaa !16
  %127 = load i8, ptr %126, align 1, !tbaa !16
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !16
  %131 = zext i8 %130 to i64
  %132 = icmp ugt i8 %130, 1
  br i1 %132, label %133, label %160

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !14
  %136 = and i32 %135, 268435456
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load ptr, ptr %7, align 8, !tbaa !25
  %140 = getelementptr inbounds %struct.xpv, ptr %139, i64 0, i32 3
  %141 = load i64, ptr %140, align 8, !tbaa !16
  %142 = icmp ugt i64 %141, %131
  br i1 %142, label %147, label %143

143:                                              ; preds = %138, %133
  %144 = add nuw nsw i64 %131, 1
  %145 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %7, i64 noundef %144) #21
  %146 = load ptr, ptr %116, align 8, !tbaa !16
  br label %147

147:                                              ; preds = %138, %143
  %148 = phi ptr [ %126, %138 ], [ %146, %143 ]
  %149 = load ptr, ptr %108, align 8, !tbaa !16
  %150 = getelementptr inbounds %struct.gp, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !64
  %152 = getelementptr inbounds %struct.io, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !16
  %154 = getelementptr inbounds i8, ptr %148, i64 1
  %155 = add nsw i64 %131, -1
  %156 = tail call i64 @Perl_PerlIO_read(ptr noundef %153, ptr noundef nonnull %154, i64 noundef %155) #21
  %157 = add i64 %156, 1
  %158 = load ptr, ptr %7, align 8, !tbaa !25
  %159 = getelementptr inbounds %struct.xpv, ptr %158, i64 0, i32 2
  store i64 %157, ptr %159, align 8, !tbaa !26
  br label %160

160:                                              ; preds = %147, %125
  %161 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !14
  %163 = or i32 %162, 536870912
  store i32 %163, ptr %161, align 4, !tbaa !14
  br label %168

164:                                              ; preds = %107
  %165 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !14
  %167 = and i32 %166, -536870913
  store i32 %167, ptr %165, align 4, !tbaa !14
  br label %168

168:                                              ; preds = %164, %160
  %169 = phi i32 [ %167, %164 ], [ %163, %160 ]
  %170 = and i32 %169, 4194304
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %174

174:                                              ; preds = %168, %172
  %175 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %7, ptr %175, align 8, !tbaa !6
  store ptr %175, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %176

176:                                              ; preds = %79, %83, %88, %75, %174, %104
  %177 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %178 = load ptr, ptr %177, align 8, !tbaa !30
  ret ptr %178
}

; Function Attrs: optsize
declare zeroext i1 @Perl_do_eof(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_enterwrite() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %7 ]
  %17 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !6
  br label %24

18:                                               ; preds = %0
  %19 = getelementptr inbounds ptr, ptr %1, i64 -1
  %20 = load ptr, ptr %1, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @PL_defoutgv, align 8
  %23 = select i1 %21, ptr %22, ptr %20
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi ptr [ %16, %15 ], [ %19, %18 ]
  %26 = phi ptr [ %17, %15 ], [ %23, %18 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !14
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %28, %24, %34, %38
  %43 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr @PL_sv_no, ptr %43, align 8, !tbaa !6
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !6
  %44 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %45 = load ptr, ptr %44, align 8, !tbaa !30
  br label %67

46:                                               ; preds = %38
  %47 = load ptr, ptr %40, align 8, !tbaa !65
  %48 = getelementptr inbounds %struct.xpvio, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %26, ptr %49
  %52 = getelementptr inbounds %struct.gv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.gp, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = tail call ptr @Perl_sv_newmortal() #21
  tail call void @Perl_gv_efullname4(ptr noundef %58, ptr noundef nonnull %51, ptr noundef null, i1 noundef zeroext false) #21
  %59 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37, ptr noundef %58) #21
  br label %67

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.xpvio, ptr %47, i64 0, i32 17
  %62 = load i8, ptr %61, align 1, !tbaa !67
  %63 = and i8 %62, -9
  store i8 %63, ptr %61, align 1, !tbaa !67
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !6
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = tail call fastcc ptr @S_doform(ptr noundef nonnull %55, ptr noundef nonnull %26, ptr noundef %65) #23
  br label %67

67:                                               ; preds = %60, %57, %42
  %68 = phi ptr [ %66, %60 ], [ %59, %57 ], [ %45, %42 ]
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_doform(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !17
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call i32 @Perl_block_gimme() #21
  %11 = trunc i32 %10 to i8
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ %7, %3 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !93
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !95
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @Perl_cv_clone(ptr noundef nonnull %0) #21
  %21 = tail call ptr @Perl_sv_2mortal(ptr noundef %20) #21
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ %0, %12 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %24 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !44
  store i64 %24, ptr @PL_tmps_floor, align 8, !tbaa !44
  %25 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !97
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = add nsw i32 %27, 1
  store i32 %32, ptr %26, align 8, !tbaa !56
  br label %37

33:                                               ; preds = %22
  %34 = tail call i32 @Perl_cxinc() #21
  %35 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.stackinfo, ptr %35, i64 0, i32 4
  store i32 %34, ptr %36, align 8, !tbaa !56
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %34, %33 ], [ %32, %31 ]
  %39 = phi ptr [ %35, %33 ], [ %25, %31 ]
  %40 = getelementptr inbounds %struct.stackinfo, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds %struct.context, ptr %41, i64 %42
  store i8 9, ptr %43, align 8, !tbaa !16
  %44 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = lshr exact i64 %48, 3
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !16
  %52 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !16
  %54 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %55 = load ptr, ptr @PL_markstack, align 8, !tbaa !6
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 2
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 5
  store i32 %60, ptr %61, align 8, !tbaa !16
  %62 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !29
  %63 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 6
  store i32 %62, ptr %63, align 4, !tbaa !16
  %64 = load ptr, ptr @PL_curpm, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 7
  store ptr %64, ptr %65, align 8, !tbaa !16
  %66 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 1
  store i8 %13, ptr %66, align 1, !tbaa !16
  %67 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 8
  %68 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 8, i32 0, i32 1
  store ptr %23, ptr %68, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 8, i32 0, i32 2
  store ptr %1, ptr %69, align 8, !tbaa !16
  store ptr %2, ptr %67, align 8, !tbaa !16
  %70 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 8, i32 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !16
  %72 = getelementptr inbounds %struct.block, ptr %43, i64 0, i32 2
  store i16 0, ptr %72, align 2, !tbaa !16
  %73 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %23) #23
  %74 = load i32, ptr %73, align 4, !tbaa !29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %37
  %77 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !31
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !31
  br label %80

80:                                               ; preds = %76, %37
  %81 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %23) #23
  %82 = load i32, ptr %81, align 4, !tbaa !29
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !29
  %84 = load ptr, ptr %71, align 8, !tbaa !16
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %84) #23
  %85 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %23) #23
  %86 = load i32, ptr %85, align 4, !tbaa !29
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load ptr, ptr %23, align 8, !tbaa !93
  %90 = getelementptr inbounds %struct.xpvcv, ptr %89, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !16
  %92 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %23) #23
  %93 = load i32, ptr %92, align 4, !tbaa !29
  tail call void @Perl_pad_push(ptr noundef %91, i32 noundef %93) #21
  br label %94

94:                                               ; preds = %88, %80
  %95 = load ptr, ptr @PL_comppad, align 8, !tbaa !6
  tail call void @Perl_save_pushptr(ptr noundef %95, i32 noundef 7) #21
  %96 = load ptr, ptr %23, align 8, !tbaa !93
  %97 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !16
  %99 = getelementptr inbounds %struct.padlist, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !99
  %101 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %23) #23
  %102 = load i32, ptr %101, align 4, !tbaa !29
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %100, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  store ptr %105, ptr @PL_comppad, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.av, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !16
  store ptr %107, ptr @PL_curpad, align 8, !tbaa !6
  tail call void @Perl_setdefout(ptr noundef %1) #23
  %108 = load ptr, ptr %23, align 8, !tbaa !93
  %109 = getelementptr inbounds %struct.xpvcv, ptr %108, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !16
  ret ptr %110
}

; Function Attrs: optsize
declare ptr @Perl_cv_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !31
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavewrite() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !56
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.context, ptr %3, i64 %6, i32 0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %178, label %14

14:                                               ; preds = %0
  %15 = load ptr, ptr %12, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %178, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !101
  %22 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !16
  %26 = icmp sge i64 %21, %25
  %27 = load ptr, ptr @PL_toptarget, align 8
  %28 = icmp eq ptr %22, %27
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %178, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !103
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.xpvgv, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.hek, ptr %45, i64 0, i32 2
  %47 = tail call ptr @Perl_savepv(ptr noundef nonnull %46) #21
  %48 = load ptr, ptr %12, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.xpvio, ptr %48, i64 0, i32 12
  store ptr %47, ptr %49, align 8, !tbaa !104
  br label %50

50:                                               ; preds = %42, %38
  %51 = load ptr, ptr %8, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.xpvgv, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.38, ptr noundef %53) #21
  %55 = tail call ptr @Perl_sv_2mortal(ptr noundef %54) #21
  %56 = tail call ptr @Perl_gv_fetchsv(ptr noundef %55, i32 noundef 0, i32 noundef 14) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.gv, ptr %56, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.gp, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !92
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %50
  %65 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.39, i64 noundef 3, i32 noundef 128, i32 noundef 14) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %58
  %68 = tail call ptr @Perl_savesvpv(ptr noundef %55) #21
  br label %71

69:                                               ; preds = %64
  %70 = tail call ptr @Perl_savepvn(ptr noundef nonnull @.str.39, i32 noundef 3) #21
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = load ptr, ptr %12, align 8, !tbaa !65
  %74 = getelementptr inbounds %struct.xpvio, ptr %73, i64 0, i32 10
  store ptr %72, ptr %74, align 8, !tbaa !103
  br label %75

75:                                               ; preds = %71, %34
  %76 = phi ptr [ %36, %34 ], [ %72, %71 ]
  %77 = tail call ptr @Perl_gv_fetchpv(ptr noundef %76, i32 noundef 0, i32 noundef 14) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.gv, ptr %77, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.gp, ptr %81, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !92
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %12, align 8, !tbaa !65
  %87 = getelementptr inbounds %struct.xpvio, ptr %86, i64 0, i32 11
  store ptr %77, ptr %87, align 8, !tbaa !102
  br label %93

88:                                               ; preds = %75, %79
  %89 = load ptr, ptr %12, align 8, !tbaa !65
  %90 = getelementptr inbounds %struct.xpvio, ptr %89, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !105
  %92 = getelementptr inbounds %struct.xpvio, ptr %89, i64 0, i32 9
  store i64 %91, ptr %92, align 8, !tbaa !101
  br label %178

93:                                               ; preds = %85, %30
  %94 = phi ptr [ %86, %85 ], [ %15, %30 ]
  %95 = getelementptr inbounds %struct.xpvio, ptr %94, i64 0, i32 17
  %96 = load i8, ptr %95, align 1, !tbaa !67
  %97 = and i8 %96, 8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %136, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.xpvio, ptr %94, i64 0, i32 9
  %101 = load i64, ptr %100, align 8, !tbaa !101
  %102 = trunc i64 %101 to i32
  %103 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !16
  %106 = icmp sgt i32 %102, 0
  br i1 %106, label %111, label %178

107:                                              ; preds = %111
  %108 = getelementptr inbounds i8, ptr %114, i64 1
  %109 = add nsw i32 %112, -1
  %110 = icmp sgt i32 %112, 1
  br i1 %110, label %111, label %116, !llvm.loop !106

111:                                              ; preds = %99, %107
  %112 = phi i32 [ %109, %107 ], [ %102, %99 ]
  %113 = phi ptr [ %108, %107 ], [ %105, %99 ]
  %114 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %113, i32 noundef 10) #25
  %115 = icmp eq ptr %114, null
  br i1 %115, label %136, label %107

116:                                              ; preds = %107
  %117 = load ptr, ptr %103, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.xpv, ptr %117, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !26
  %120 = ptrtoint ptr %108 to i64
  %121 = ptrtoint ptr %105 to i64
  %122 = sub i64 %120, %121
  store i64 %122, ptr %118, align 8, !tbaa !26
  %123 = tail call zeroext i1 @Perl_do_print(ptr noundef nonnull %103, ptr noundef nonnull %17) #21
  %124 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %125 = load ptr, ptr %124, align 8, !tbaa !25
  %126 = getelementptr inbounds %struct.xpv, ptr %125, i64 0, i32 2
  store i64 %119, ptr %126, align 8, !tbaa !26
  tail call void @Perl_sv_chop(ptr noundef nonnull %124, ptr noundef nonnull %108) #21
  %127 = load ptr, ptr %12, align 8, !tbaa !65
  %128 = getelementptr inbounds %struct.xpvio, ptr %127, i64 0, i32 9
  %129 = load i64, ptr %128, align 8, !tbaa !101
  %130 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %131 = load ptr, ptr %130, align 8, !tbaa !25
  %132 = getelementptr inbounds %struct.xpviv, ptr %131, i64 0, i32 4
  %133 = load i64, ptr %132, align 8, !tbaa !16
  %134 = sub nsw i64 %133, %129
  store i64 %134, ptr %132, align 8, !tbaa !16
  %135 = load ptr, ptr %12, align 8, !tbaa !65
  br label %136

136:                                              ; preds = %111, %116, %93
  %137 = phi ptr [ %135, %116 ], [ %94, %93 ], [ %94, %111 ]
  %138 = getelementptr inbounds %struct.xpvio, ptr %137, i64 0, i32 9
  %139 = load i64, ptr %138, align 8, !tbaa !101
  %140 = icmp sgt i64 %139, -1
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.xpvio, ptr %137, i64 0, i32 7
  %143 = load i64, ptr %142, align 8, !tbaa !107
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 1, i32 noundef 1, i32 noundef 3) #21
  %147 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !16
  %149 = load ptr, ptr %148, align 8, !tbaa !70
  %150 = tail call zeroext i1 @Perl_do_print(ptr noundef %149, ptr noundef nonnull %17) #21
  %151 = load ptr, ptr %12, align 8, !tbaa !65
  br label %152

152:                                              ; preds = %145, %141, %136
  %153 = phi ptr [ %151, %145 ], [ %137, %141 ], [ %137, %136 ]
  %154 = getelementptr inbounds %struct.xpvio, ptr %153, i64 0, i32 8
  %155 = load i64, ptr %154, align 8, !tbaa !105
  %156 = getelementptr inbounds %struct.xpvio, ptr %153, i64 0, i32 9
  store i64 %155, ptr %156, align 8, !tbaa !101
  %157 = getelementptr inbounds %struct.xpvio, ptr %153, i64 0, i32 7
  %158 = load i64, ptr %157, align 8, !tbaa !107
  %159 = add nsw i64 %158, 1
  store i64 %159, ptr %157, align 8, !tbaa !107
  %160 = load ptr, ptr @PL_toptarget, align 8, !tbaa !6
  store ptr %160, ptr @PL_formtarget, align 8, !tbaa !6
  %161 = load ptr, ptr %12, align 8, !tbaa !65
  %162 = getelementptr inbounds %struct.xpvio, ptr %161, i64 0, i32 17
  %163 = load i8, ptr %162, align 1, !tbaa !67
  %164 = or i8 %163, 8
  store i8 %164, ptr %162, align 1, !tbaa !67
  %165 = getelementptr inbounds %struct.xpvio, ptr %161, i64 0, i32 11
  %166 = load ptr, ptr %165, align 8, !tbaa !102
  %167 = getelementptr inbounds %struct.gv, ptr %166, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !16
  %169 = getelementptr inbounds %struct.gp, ptr %168, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !92
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %152
  %173 = tail call ptr @Perl_sv_newmortal() #21
  tail call void @Perl_gv_efullname4(ptr noundef %173, ptr noundef nonnull %166, ptr noundef null, i1 noundef zeroext false) #21
  %174 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41, ptr noundef %173) #21
  br label %282

175:                                              ; preds = %152
  %176 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %177 = tail call fastcc ptr @S_doform(ptr noundef nonnull %170, ptr noundef %8, ptr noundef %176) #23
  br label %282

178:                                              ; preds = %99, %88, %19, %0, %14
  %179 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %180 = getelementptr inbounds %struct.stackinfo, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !98
  %182 = getelementptr inbounds %struct.stackinfo, ptr %179, i64 0, i32 4
  %183 = load i32, ptr %182, align 8, !tbaa !56
  %184 = add nsw i32 %183, -1
  store i32 %184, ptr %182, align 8, !tbaa !56
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds %struct.context, ptr %181, i64 %185
  %187 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %188 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !16
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %187, i64 %190
  %192 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !16
  store ptr %193, ptr @PL_curcop, align 8, !tbaa !6
  %194 = load ptr, ptr @PL_markstack, align 8, !tbaa !6
  %195 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 5
  %196 = load i32, ptr %195, align 8, !tbaa !16
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %194, i64 %197
  store ptr %198, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %199 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !16
  store i32 %200, ptr @PL_scopestack_ix, align 4, !tbaa !29
  %201 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !16
  store ptr %202, ptr @PL_curpm, align 8, !tbaa !6
  %203 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 8
  %204 = load ptr, ptr %203, align 8, !tbaa !16
  %205 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 2
  %206 = load i16, ptr %205, align 2, !tbaa !16
  %207 = and i16 %206, 256
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %178
  %210 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 8, i32 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !16
  %212 = getelementptr inbounds %struct.block, ptr %186, i64 0, i32 8, i32 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !16
  %214 = or disjoint i16 %206, 256
  store i16 %214, ptr %205, align 2, !tbaa !16
  tail call void @Perl_setdefout(ptr noundef %213) #23
  %215 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !29
  %216 = load ptr, ptr @PL_scopestack, align 8, !tbaa !6
  %217 = load i32, ptr %199, align 4, !tbaa !16
  %218 = sext i32 %217 to i64
  %219 = getelementptr i32, ptr %216, i64 %218
  %220 = getelementptr i32, ptr %219, i64 -1
  %221 = load i32, ptr %220, align 4, !tbaa !29
  %222 = icmp sgt i32 %215, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %209
  tail call void @Perl_leave_scope(i32 noundef %221) #21
  br label %224

224:                                              ; preds = %223, %209
  %225 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %211) #23
  %226 = load i32, ptr %225, align 4, !tbaa !29
  %227 = add nsw i32 %226, -1
  store i32 %227, ptr %225, align 4, !tbaa !29
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load ptr, ptr %210, align 8, !tbaa !16
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %230) #23
  br label %231

231:                                              ; preds = %229, %224
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %213) #23
  br label %232

232:                                              ; preds = %231, %178
  tail call void @Perl_pop_scope() #21
  br i1 %13, label %243, label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr %12, align 8, !tbaa !65
  %235 = getelementptr inbounds %struct.xpvio, ptr %234, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !72
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.io, ptr %12, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !16
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %8, i8 noundef signext 60) #21
  br label %244

243:                                              ; preds = %232, %238
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %8) #21
  br label %244

244:                                              ; preds = %243, %242
  %245 = getelementptr inbounds ptr, ptr %191, i64 1
  store ptr @PL_sv_no, ptr %245, align 8, !tbaa !6
  br label %279

246:                                              ; preds = %233
  %247 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %248 = load ptr, ptr %247, align 8, !tbaa !25
  %249 = getelementptr inbounds %struct.xpviv, ptr %248, i64 0, i32 4
  %250 = load i64, ptr %249, align 8, !tbaa !16
  %251 = getelementptr inbounds %struct.xpvio, ptr %234, i64 0, i32 9
  %252 = load i64, ptr %251, align 8, !tbaa !101
  %253 = sub nsw i64 %252, %250
  store i64 %253, ptr %251, align 8, !tbaa !101
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %246
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 5, ptr noundef nonnull @.str.42) #21
  %256 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  br label %257

257:                                              ; preds = %255, %246
  %258 = phi ptr [ %256, %255 ], [ %247, %246 ]
  %259 = tail call zeroext i1 @Perl_do_print(ptr noundef %258, ptr noundef nonnull %236) #21
  br i1 %259, label %262, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds ptr, ptr %191, i64 1
  store ptr @PL_sv_no, ptr %261, align 8, !tbaa !6
  br label %279

262:                                              ; preds = %257
  %263 = load ptr, ptr @PL_formtarget, align 8, !tbaa !6
  %264 = load ptr, ptr %263, align 8, !tbaa !25
  %265 = getelementptr inbounds %struct.xpviv, ptr %264, i64 0, i32 4
  store i64 0, ptr %265, align 8, !tbaa !16
  %266 = load ptr, ptr %263, align 8, !tbaa !25
  %267 = getelementptr inbounds %struct.xpv, ptr %266, i64 0, i32 2
  store i64 0, ptr %267, align 8, !tbaa !26
  %268 = getelementptr inbounds %struct.sv, ptr %263, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !16
  store i8 0, ptr %269, align 1, !tbaa !16
  %270 = load ptr, ptr %12, align 8, !tbaa !65
  %271 = getelementptr inbounds %struct.xpvio, ptr %270, i64 0, i32 17
  %272 = load i8, ptr %271, align 1, !tbaa !67
  %273 = and i8 %272, 4
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %262
  %276 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %236) #21
  br label %277

277:                                              ; preds = %275, %262
  %278 = getelementptr inbounds ptr, ptr %191, i64 1
  store ptr @PL_sv_yes, ptr %278, align 8, !tbaa !6
  br label %279

279:                                              ; preds = %260, %277, %244
  %280 = phi ptr [ %278, %277 ], [ %261, %260 ], [ %245, %244 ]
  %281 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !6
  store ptr %281, ptr @PL_formtarget, align 8, !tbaa !6
  store ptr %280, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %282

282:                                              ; preds = %172, %175, %279
  %283 = phi ptr [ %204, %279 ], [ %174, %172 ], [ %177, %175 ]
  ret ptr %283
}

; Function Attrs: optsize
declare ptr @Perl_savepv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_savesvpv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !31
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !31
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #21
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_prtf() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !17
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  %14 = select i1 %12, ptr %7, ptr %13
  %15 = select i1 %12, ptr @PL_defoutgv, ptr %13
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -9
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %18, %0, %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ], [ null, %0 ], [ null, %18 ]
  %33 = icmp eq ptr %14, %1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %1 to i64
  %38 = sub i64 %36, %37
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi ptr [ %41, %40 ], [ %1, %34 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  store ptr @PL_sv_no, ptr %44, align 8, !tbaa !6
  br label %45

45:                                               ; preds = %42, %31
  %46 = phi ptr [ %44, %42 ], [ %1, %31 ]
  %47 = icmp eq ptr %32, null
  br i1 %47, label %100, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !14
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %32, i32 noundef 113) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %101, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %58 = getelementptr inbounds ptr, ptr %57, i64 %6
  %59 = icmp eq ptr %14, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %62 = ptrtoint ptr %61 to i64
  %63 = ptrtoint ptr %46 to i64
  %64 = sub i64 %62, %63
  %65 = icmp slt i64 %64, 8
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = ptrtoint ptr %14 to i64
  %68 = ptrtoint ptr %57 to i64
  %69 = sub i64 %67, %68
  %70 = tail call ptr @Perl_stack_grow(ptr noundef %46, ptr noundef %46, i64 noundef 1) #21
  %71 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %72 = getelementptr inbounds i8, ptr %71, i64 %69
  %73 = ptrtoint ptr %70 to i64
  br label %74

74:                                               ; preds = %60, %66
  %75 = phi i64 [ %63, %60 ], [ %73, %66 ]
  %76 = phi ptr [ %14, %60 ], [ %72, %66 ]
  %77 = phi ptr [ %46, %60 ], [ %70, %66 ]
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  %79 = getelementptr inbounds ptr, ptr %76, i64 2
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %75, %80
  %82 = add i64 %81, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %79, ptr nonnull align 1 %78, i64 %82, i1 false)
  %83 = getelementptr inbounds ptr, ptr %77, i64 1
  br label %84

84:                                               ; preds = %74, %56
  %85 = phi ptr [ %78, %74 ], [ %14, %56 ]
  %86 = phi ptr [ %83, %74 ], [ %46, %56 ]
  %87 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 21), align 8, !tbaa !6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.43, i32 noundef 0) #21
  store ptr %90, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 21), align 8, !tbaa !6
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi ptr [ %90, %89 ], [ %87, %84 ]
  %93 = getelementptr inbounds ptr, ptr %85, i64 -1
  %94 = ptrtoint ptr %86 to i64
  %95 = ptrtoint ptr %85 to i64
  %96 = sub i64 %94, %95
  %97 = lshr exact i64 %96, 3
  %98 = trunc i64 %97 to i32
  %99 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %92, ptr noundef nonnull %93, ptr noundef nonnull %32, ptr noundef nonnull %54, i32 noundef 10, i32 noundef %98) #23
  br label %146

100:                                              ; preds = %45
  tail call void @Perl_report_evil_fh(ptr noundef %16) #21
  br label %138

101:                                              ; preds = %48, %53
  %102 = load ptr, ptr %32, align 8, !tbaa !65
  %103 = getelementptr inbounds %struct.xpvio, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !72
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.io, ptr %32, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @Perl_report_wrongway_fh(ptr noundef %16, i8 noundef signext 60) #21
  br label %138

111:                                              ; preds = %106
  %112 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 6) #21
  br i1 %112, label %113, label %138

113:                                              ; preds = %111
  tail call void @Perl_report_evil_fh(ptr noundef %16) #21
  br label %138

114:                                              ; preds = %101
  %115 = tail call ptr @Perl_sv_newmortal() #21
  %116 = ptrtoint ptr %46 to i64
  %117 = ptrtoint ptr %14 to i64
  %118 = sub i64 %116, %117
  %119 = lshr exact i64 %118, 3
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds ptr, ptr %14, i64 1
  tail call void @Perl_do_sprintf(ptr noundef %115, i32 noundef %120, ptr noundef nonnull %121) #21
  %122 = tail call zeroext i1 @Perl_do_print(ptr noundef %115, ptr noundef nonnull %104) #21
  br i1 %122, label %123, label %140

123:                                              ; preds = %114
  %124 = load ptr, ptr %32, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.xpvio, ptr %124, i64 0, i32 17
  %126 = load i8, ptr %125, align 1, !tbaa !67
  %127 = and i8 %126, 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %104) #21
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %140, label %132

132:                                              ; preds = %129, %123
  %133 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %134 = getelementptr inbounds ptr, ptr %133, i64 %6
  %135 = getelementptr inbounds ptr, ptr %134, i64 1
  store ptr @PL_sv_yes, ptr %135, align 8, !tbaa !6
  store ptr %135, ptr @PL_stack_sp, align 8, !tbaa !6
  %136 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %137 = load ptr, ptr %136, align 8, !tbaa !30
  br label %146

138:                                              ; preds = %110, %113, %111, %100
  %139 = tail call ptr @__errno_location() #24
  store i32 9, ptr %139, align 4, !tbaa !29
  br label %140

140:                                              ; preds = %138, %129, %114
  %141 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %142 = getelementptr inbounds ptr, ptr %141, i64 %6
  %143 = getelementptr inbounds ptr, ptr %142, i64 1
  store ptr @PL_sv_undef, ptr %143, align 8, !tbaa !6
  store ptr %143, ptr @PL_stack_sp, align 8, !tbaa !6
  %144 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %145 = load ptr, ptr %144, align 8, !tbaa !30
  br label %146

146:                                              ; preds = %91, %140, %132
  %147 = phi ptr [ %145, %140 ], [ %137, %132 ], [ %99, %91 ]
  ret ptr %147
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_do_sprintf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sysopen() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %2, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %10, label %23, label %12

12:                                               ; preds = %8
  store ptr %9, ptr @PL_Sv, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = and i32 %14, 2097408
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !16
  br label %23

21:                                               ; preds = %12
  %22 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %9, i32 noundef 2) #21
  br label %23

23:                                               ; preds = %8, %0, %17, %21
  %24 = phi ptr [ %11, %17 ], [ %11, %21 ], [ %2, %0 ], [ %11, %8 ]
  %25 = phi i64 [ %20, %17 ], [ %22, %21 ], [ 438, %0 ], [ 438, %8 ]
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds ptr, ptr %24, i64 -1
  %28 = load ptr, ptr %24, align 8, !tbaa !6
  store ptr %28, ptr @PL_Sv, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !14
  %31 = and i32 %30, 2097408
  %32 = icmp eq i32 %31, 256
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load ptr, ptr %28, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.xpviv, ptr %34, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !16
  br label %39

37:                                               ; preds = %23
  %38 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %28, i32 noundef 2) #21
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i64 [ %36, %33 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds ptr, ptr %24, i64 -2
  %43 = load ptr, ptr %27, align 8, !tbaa !6
  %44 = load ptr, ptr %42, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %45 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !14
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load ptr, ptr %43, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !26
  store i64 %52, ptr %1, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  br label %58

55:                                               ; preds = %39
  %56 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %43, ptr noundef nonnull %1, i32 noundef 34) #21
  %57 = load i64, ptr %1, align 8, !tbaa !44
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i64 [ %52, %49 ], [ %57, %55 ]
  %60 = phi ptr [ %54, %49 ], [ %56, %55 ]
  %61 = call zeroext i1 @Perl_do_open_raw(ptr noundef %44, ptr noundef %60, i64 noundef %59, i32 noundef %41, i32 noundef %26) #21
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.gp, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.xpvio, ptr %67, i64 0, i32 4
  store i64 0, ptr %68, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %58, %62
  %70 = phi ptr [ @PL_sv_yes, %62 ], [ @PL_sv_undef, %58 ]
  store ptr %70, ptr %42, align 8, !tbaa !6
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !6
  %71 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %72
}

; Function Attrs: optsize
declare zeroext i1 @Perl_do_open_raw(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sysread() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %6 = load i32, ptr %4, align 4, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = icmp eq i16 %19, 234
  br i1 %20, label %25, label %21

21:                                               ; preds = %0
  %22 = icmp eq i16 %19, 242
  %23 = icmp ne ptr %16, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %27, label %62

25:                                               ; preds = %0
  %26 = icmp eq ptr %16, null
  br i1 %26, label %450, label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -9
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !14
  %44 = and i32 %43, 8388608
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @Perl_mg_find(ptr noundef nonnull %39, i32 noundef 113) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 22), align 16, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.44, i32 noundef 0) #21
  store ptr %53, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 22), align 16, !tbaa !6
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %53, %52 ], [ %50, %49 ]
  %56 = ptrtoint ptr %2 to i64
  %57 = ptrtoint ptr %15 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 3
  %60 = trunc i64 %59 to i32
  %61 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %55, ptr noundef nonnull %8, ptr noundef nonnull %39, ptr noundef nonnull %47, i32 noundef 10, i32 noundef %60) #23
  br label %456

62:                                               ; preds = %21
  %63 = icmp eq ptr %16, null
  br i1 %63, label %450, label %64

64:                                               ; preds = %41, %46, %27, %33, %37, %62
  %65 = getelementptr inbounds ptr, ptr %8, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !14
  %69 = and i32 %68, 65280
  %70 = icmp ne i32 %69, 0
  %71 = and i32 %68, 255
  %72 = icmp eq i32 %71, 8
  %73 = or i1 %70, %72
  %74 = and i32 %68, 16777471
  %75 = icmp eq i32 %74, 16777226
  %76 = or i1 %75, %73
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %66, ptr noundef nonnull @.str.4, i64 noundef 0) #21
  br label %78

78:                                               ; preds = %77, %64
  %79 = getelementptr inbounds ptr, ptr %8, i64 3
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  store ptr %80, ptr @PL_Sv, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !14
  %83 = and i32 %82, 2097408
  %84 = icmp eq i32 %83, 256
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load ptr, ptr %80, align 8, !tbaa !25
  %87 = getelementptr inbounds %struct.xpviv, ptr %86, i64 0, i32 4
  %88 = load i64, ptr %87, align 8, !tbaa !16
  br label %91

89:                                               ; preds = %78
  %90 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %80, i32 noundef 2) #21
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i64 [ %88, %85 ], [ %90, %89 ]
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.45) #21
  br label %456

96:                                               ; preds = %91
  %97 = tail call ptr @__errno_location() #24
  store i32 0, ptr %97, align 4, !tbaa !29
  %98 = icmp ult ptr %79, %2
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = getelementptr inbounds ptr, ptr %8, i64 4
  %101 = load ptr, ptr %100, align 8, !tbaa !6
  store ptr %101, ptr @PL_Sv, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !14
  %104 = and i32 %103, 2097408
  %105 = icmp eq i32 %104, 256
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load ptr, ptr %101, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.xpviv, ptr %107, i64 0, i32 4
  %109 = load i64, ptr %108, align 8, !tbaa !16
  br label %112

110:                                              ; preds = %99
  %111 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %101, i32 noundef 2) #21
  br label %112

112:                                              ; preds = %110, %106, %96
  %113 = phi i64 [ %109, %106 ], [ %111, %110 ], [ 0, %96 ]
  %114 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !14
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -9
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gp, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !64
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.io, ptr %125, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %112, %119, %127, %123
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %16) #21
  store i32 9, ptr %97, align 4, !tbaa !29
  br label %450

132:                                              ; preds = %127
  %133 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %129) #21
  %134 = load ptr, ptr %128, align 8, !tbaa !16
  %135 = tail call i32 @PerlIO_isutf8(ptr noundef %134) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct.cop, ptr %138, i64 0, i32 10
  %140 = load i32, ptr %139, align 8, !tbaa !108
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %137
  %144 = load i32, ptr %67, align 4, !tbaa !14
  %145 = and i32 %144, 966889216
  %146 = icmp eq i32 %145, 536871936
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load ptr, ptr %66, align 8, !tbaa !25
  %149 = getelementptr inbounds %struct.xpv, ptr %148, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !26
  store i64 %150, ptr %1, align 8, !tbaa !44
  %151 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !16
  br label %156

153:                                              ; preds = %143
  %154 = call ptr @Perl_sv_pvutf8n_force(ptr noundef nonnull %66, ptr noundef nonnull %1) #21
  %155 = load i32, ptr %67, align 4, !tbaa !14
  br label %156

156:                                              ; preds = %147, %153
  %157 = phi i32 [ %144, %147 ], [ %155, %153 ]
  %158 = phi ptr [ %152, %147 ], [ %154, %153 ]
  %159 = or i32 %157, 536870912
  store i32 %159, ptr %67, align 4, !tbaa !14
  br label %186

160:                                              ; preds = %137, %132
  %161 = load i32, ptr %67, align 4, !tbaa !14
  %162 = and i32 %161, 430018304
  %163 = icmp eq i32 %162, 1024
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load ptr, ptr %66, align 8, !tbaa !25
  %166 = getelementptr inbounds %struct.xpv, ptr %165, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !26
  store i64 %167, ptr %1, align 8, !tbaa !44
  %168 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !16
  br label %173

170:                                              ; preds = %160
  %171 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %66, ptr noundef nonnull %1, i32 noundef 2) #21
  %172 = load i32, ptr %67, align 4, !tbaa !14
  br label %173

173:                                              ; preds = %170, %164
  %174 = phi i32 [ %161, %164 ], [ %172, %170 ]
  %175 = phi ptr [ %169, %164 ], [ %171, %170 ]
  %176 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.cop, ptr %176, i64 0, i32 10
  %178 = load i32, ptr %177, align 8, !tbaa !108
  %179 = and i32 %178, 8
  %180 = icmp ne i32 %179, 0
  %181 = and i32 %174, 536870912
  %182 = icmp eq i32 %181, 0
  %183 = or i1 %180, %182
  %184 = and i32 %174, 536870912
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %156, %173
  %187 = phi i1 [ true, %156 ], [ %183, %173 ]
  %188 = phi ptr [ %158, %156 ], [ %175, %173 ]
  %189 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %190 = getelementptr inbounds %struct.cop, ptr %189, i64 0, i32 10
  %191 = load i32, ptr %190, align 8, !tbaa !108
  %192 = and i32 %191, 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef nonnull %66) #21
  store i64 %195, ptr %1, align 8, !tbaa !44
  br label %196

196:                                              ; preds = %194, %186, %173
  %197 = phi i1 [ %187, %194 ], [ %187, %186 ], [ %183, %173 ]
  %198 = phi ptr [ %188, %194 ], [ %188, %186 ], [ %175, %173 ]
  %199 = icmp slt i64 %113, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = sub nsw i64 0, %113
  %202 = load i64, ptr %1, align 8, !tbaa !44
  %203 = icmp slt i64 %202, %201
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #21
  br label %456

206:                                              ; preds = %200
  %207 = add nsw i64 %202, %113
  br label %208

208:                                              ; preds = %206, %196
  %209 = phi i64 [ %207, %206 ], [ %113, %196 ]
  %210 = load i32, ptr %67, align 4, !tbaa !14
  %211 = and i32 %210, 536870912
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %234, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %215 = getelementptr inbounds %struct.cop, ptr %214, i64 0, i32 10
  %216 = load i32, ptr %215, align 8, !tbaa !108
  %217 = and i32 %216, 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %213
  %220 = load i64, ptr %1, align 8, !tbaa !44
  %221 = icmp slt i64 %209, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %66, align 8, !tbaa !25
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !26
  %226 = sub i64 %209, %220
  %227 = add i64 %226, %225
  br label %234

228:                                              ; preds = %219
  %229 = trunc i64 %209 to i32
  %230 = call ptr @Perl_utf8_hop(ptr noundef %198, i32 noundef %229) #21
  %231 = ptrtoint ptr %230 to i64
  %232 = ptrtoint ptr %198 to i64
  %233 = sub i64 %231, %232
  br label %234

234:                                              ; preds = %222, %228, %213, %208
  %235 = phi i64 [ %209, %213 ], [ %227, %222 ], [ %233, %228 ], [ %209, %208 ]
  %236 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 3
  br label %237

237:                                              ; preds = %408, %234
  %238 = phi i64 [ %92, %234 ], [ %409, %408 ]
  %239 = phi i64 [ 0, %234 ], [ %410, %408 ]
  %240 = phi i64 [ %235, %234 ], [ %411, %408 ]
  %241 = phi i8 [ 1, %234 ], [ %412, %408 ]
  %242 = phi i64 [ 0, %234 ], [ %413, %408 ]
  %243 = phi i64 [ 0, %234 ], [ %414, %408 ]
  %244 = load ptr, ptr %128, align 8, !tbaa !16
  %245 = call i32 @Perl_PerlIO_fileno(ptr noundef %244) #21
  %246 = load ptr, ptr %66, align 8, !tbaa !25
  %247 = getelementptr inbounds %struct.xpv, ptr %246, i64 0, i32 2
  %248 = load i64, ptr %247, align 8, !tbaa !26
  %249 = load i32, ptr %67, align 4, !tbaa !14
  %250 = and i32 %249, 268435456
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %237
  %253 = add i64 %238, 1
  %254 = add i64 %253, %240
  br label %261

255:                                              ; preds = %237
  %256 = getelementptr inbounds %struct.xpv, ptr %246, i64 0, i32 3
  %257 = load i64, ptr %256, align 8, !tbaa !16
  %258 = add i64 %238, 1
  %259 = add i64 %258, %240
  %260 = icmp ult i64 %257, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %252, %255
  %262 = phi i64 [ %254, %252 ], [ %259, %255 ]
  %263 = call ptr @Perl_sv_grow(ptr noundef nonnull %66, i64 noundef %262) #21
  br label %266

264:                                              ; preds = %255
  %265 = load ptr, ptr %236, align 8, !tbaa !16
  br label %266

266:                                              ; preds = %264, %261
  %267 = phi ptr [ %263, %261 ], [ %265, %264 ]
  %268 = icmp sgt i64 %240, 0
  %269 = icmp sgt i64 %240, %248
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = getelementptr inbounds i8, ptr %267, i64 %248
  %273 = sub i64 %240, %248
  call void @llvm.memset.p0.i64(ptr align 1 %272, i8 0, i64 %273, i1 false)
  br label %274

274:                                              ; preds = %271, %266
  br i1 %197, label %275, label %277

275:                                              ; preds = %274
  %276 = getelementptr inbounds i8, ptr %267, i64 %240
  br label %305

277:                                              ; preds = %274
  %278 = load ptr, ptr %66, align 8, !tbaa !25
  %279 = getelementptr inbounds %struct.xpv, ptr %278, i64 0, i32 2
  store i64 %240, ptr %279, align 8, !tbaa !26
  %280 = call ptr @Perl_sv_newmortal() #21
  %281 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !14
  %283 = and i32 %282, 255
  %284 = icmp ugt i32 %283, 2
  br i1 %284, label %287, label %285

285:                                              ; preds = %277
  call void @Perl_sv_upgrade(ptr noundef nonnull %280, i32 noundef 3) #21
  %286 = load i32, ptr %281, align 4, !tbaa !14
  br label %287

287:                                              ; preds = %285, %277
  %288 = phi i32 [ %286, %285 ], [ %282, %277 ]
  %289 = and i32 %288, 268435456
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = add nsw i64 %238, 1
  br label %299

293:                                              ; preds = %287
  %294 = load ptr, ptr %280, align 8, !tbaa !25
  %295 = getelementptr inbounds %struct.xpv, ptr %294, i64 0, i32 3
  %296 = load i64, ptr %295, align 8, !tbaa !16
  %297 = add nsw i64 %238, 1
  %298 = icmp ult i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %291, %293
  %300 = phi i64 [ %292, %291 ], [ %297, %293 ]
  %301 = call ptr @Perl_sv_grow(ptr noundef nonnull %280, i64 noundef %300) #21
  br label %305

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !16
  br label %305

305:                                              ; preds = %299, %302, %275
  %306 = phi ptr [ %276, %275 ], [ %301, %299 ], [ %304, %302 ]
  %307 = phi ptr [ %66, %275 ], [ %280, %299 ], [ %280, %302 ]
  %308 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %309 = getelementptr inbounds %struct.op, ptr %308, i64 0, i32 4
  %310 = load i16, ptr %309, align 8
  %311 = and i16 %310, 511
  %312 = icmp eq i16 %311, 242
  br i1 %312, label %313, label %318

313:                                              ; preds = %305
  %314 = icmp slt i32 %245, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %313
  store i32 9, ptr %97, align 4, !tbaa !29
  br label %329

316:                                              ; preds = %313
  %317 = call i64 @read(i32 noundef %245, ptr noundef %306, i64 noundef %238) #21
  br label %326

318:                                              ; preds = %305
  %319 = load ptr, ptr %128, align 8, !tbaa !16
  %320 = call i64 @Perl_PerlIO_read(ptr noundef %319, ptr noundef %306, i64 noundef %238) #21
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = load ptr, ptr %128, align 8, !tbaa !16
  %324 = call i32 @Perl_PerlIO_error(ptr noundef %323) #21
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %335, label %329

326:                                              ; preds = %318, %316
  %327 = phi i64 [ %317, %316 ], [ %320, %318 ]
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %322, %326, %315
  %330 = load ptr, ptr %125, align 8, !tbaa !65
  %331 = getelementptr inbounds %struct.xpvio, ptr %330, i64 0, i32 16
  %332 = load i8, ptr %331, align 8, !tbaa !71
  %333 = icmp eq i8 %332, 62
  br i1 %333, label %334, label %450

334:                                              ; preds = %329
  call void @Perl_report_wrongway_fh(ptr noundef nonnull %16, i8 noundef signext 62) #21
  br label %450

335:                                              ; preds = %322, %326
  %336 = phi i64 [ %327, %326 ], [ 0, %322 ]
  %337 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !16
  %339 = ptrtoint ptr %306 to i64
  %340 = ptrtoint ptr %338 to i64
  %341 = sub i64 %339, %340
  %342 = add nsw i64 %341, %336
  %343 = load ptr, ptr %307, align 8, !tbaa !25
  %344 = getelementptr inbounds %struct.xpv, ptr %343, i64 0, i32 2
  store i64 %342, ptr %344, align 8, !tbaa !26
  %345 = load ptr, ptr %337, align 8, !tbaa !16
  %346 = getelementptr inbounds i8, ptr %345, i64 %342
  store i8 0, ptr %346, align 1, !tbaa !16
  %347 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 2
  %348 = load i32, ptr %347, align 4, !tbaa !14
  %349 = and i32 %348, 1610547455
  %350 = or disjoint i32 %349, 17408
  store i32 %350, ptr %347, align 4, !tbaa !14
  br i1 %136, label %418, label %351

351:                                              ; preds = %335
  %352 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %353 = getelementptr inbounds %struct.cop, ptr %352, i64 0, i32 10
  %354 = load i32, ptr %353, align 8, !tbaa !108
  %355 = and i32 %354, 8
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %418

357:                                              ; preds = %351
  %358 = getelementptr inbounds i8, ptr %306, i64 %336
  %359 = icmp eq i64 %336, 0
  br i1 %359, label %394, label %360

360:                                              ; preds = %357, %390
  %361 = phi i64 [ %376, %390 ], [ %243, %357 ]
  %362 = phi i64 [ 0, %390 ], [ %242, %357 ]
  %363 = phi i8 [ 1, %390 ], [ %241, %357 ]
  %364 = phi i64 [ %391, %390 ], [ %239, %357 ]
  %365 = phi ptr [ %392, %390 ], [ %306, %357 ]
  %366 = and i8 %363, 1
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %360
  %369 = load i8, ptr %365, align 1, !tbaa !16
  %370 = zext i8 %369 to i64
  %371 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !16
  %373 = zext i8 %372 to i64
  br label %374

374:                                              ; preds = %368, %360
  %375 = phi i64 [ 0, %368 ], [ %362, %360 ]
  %376 = phi i64 [ %373, %368 ], [ %361, %360 ]
  %377 = sub i64 0, %375
  %378 = getelementptr inbounds i8, ptr %365, i64 %377
  %379 = getelementptr inbounds i8, ptr %378, i64 %376
  %380 = icmp ugt ptr %379, %358
  br i1 %380, label %381, label %390

381:                                              ; preds = %374
  %382 = ptrtoint ptr %358 to i64
  %383 = ptrtoint ptr %365 to i64
  %384 = sub i64 %383, %382
  %385 = add i64 %384, %376
  %386 = load ptr, ptr %236, align 8, !tbaa !16
  %387 = ptrtoint ptr %386 to i64
  %388 = sub i64 %382, %387
  %389 = add i64 %375, %336
  br label %408

390:                                              ; preds = %374
  %391 = add i64 %364, 1
  %392 = getelementptr inbounds i8, ptr %365, i64 %376
  %393 = icmp ult ptr %392, %358
  br i1 %393, label %360, label %394, !llvm.loop !109

394:                                              ; preds = %390, %357
  %395 = phi i64 [ %239, %357 ], [ %391, %390 ]
  %396 = phi i8 [ %241, %357 ], [ 1, %390 ]
  %397 = phi i64 [ %242, %357 ], [ 0, %390 ]
  %398 = phi i64 [ %243, %357 ], [ %376, %390 ]
  %399 = icmp ult i64 %395, %92
  %400 = icmp eq i64 %336, %238
  %401 = select i1 %399, i1 %400, i1 false
  br i1 %401, label %402, label %415

402:                                              ; preds = %394
  %403 = sub nsw i64 %92, %395
  %404 = load ptr, ptr %236, align 8, !tbaa !16
  %405 = ptrtoint ptr %358 to i64
  %406 = ptrtoint ptr %404 to i64
  %407 = sub i64 %405, %406
  br label %408

408:                                              ; preds = %402, %381
  %409 = phi i64 [ %385, %381 ], [ %403, %402 ]
  %410 = phi i64 [ %364, %381 ], [ %395, %402 ]
  %411 = phi i64 [ %388, %381 ], [ %407, %402 ]
  %412 = phi i8 [ 0, %381 ], [ %396, %402 ]
  %413 = phi i64 [ %389, %381 ], [ %397, %402 ]
  %414 = phi i64 [ %376, %381 ], [ %398, %402 ]
  br label %237

415:                                              ; preds = %394
  %416 = load i32, ptr %67, align 4, !tbaa !14
  %417 = or i32 %416, 536870912
  store i32 %417, ptr %67, align 4, !tbaa !14
  br label %420

418:                                              ; preds = %351, %335
  br i1 %197, label %420, label %419

419:                                              ; preds = %418
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %66, ptr noundef nonnull %307, i32 noundef 0) #21
  br label %420

420:                                              ; preds = %415, %419, %418
  %421 = phi i64 [ %336, %419 ], [ %336, %418 ], [ %395, %415 ]
  %422 = load i32, ptr %67, align 4, !tbaa !14
  %423 = and i32 %422, 4194304
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %420
  %426 = call i32 @Perl_mg_set(ptr noundef nonnull %66) #21
  br label %427

427:                                              ; preds = %420, %425
  %428 = load ptr, ptr %125, align 8, !tbaa !65
  %429 = getelementptr inbounds %struct.xpvio, ptr %428, i64 0, i32 17
  %430 = load i8, ptr %429, align 1, !tbaa !67
  %431 = and i8 %430, 16
  %432 = icmp ne i8 %431, 0
  %433 = load i8, ptr @PL_tainting, align 1, !range !20
  %434 = icmp eq i8 %433, 0
  %435 = select i1 %432, i1 true, i1 %434
  br i1 %435, label %437, label %436

436:                                              ; preds = %427
  call void @Perl_sv_magic(ptr noundef nonnull %66, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %437

437:                                              ; preds = %436, %427
  %438 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %439 = getelementptr inbounds ptr, ptr %438, i64 %7
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef %421) #21
  %440 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %441 = load i32, ptr %440, align 4, !tbaa !14
  %442 = and i32 %441, 4194304
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %446, label %444

444:                                              ; preds = %437
  %445 = call i32 @Perl_mg_set(ptr noundef nonnull %14) #21
  br label %446

446:                                              ; preds = %437, %444
  %447 = getelementptr inbounds ptr, ptr %439, i64 1
  store ptr %14, ptr %447, align 8, !tbaa !6
  store ptr %447, ptr @PL_stack_sp, align 8, !tbaa !6
  %448 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %449 = load ptr, ptr %448, align 8, !tbaa !30
  br label %456

450:                                              ; preds = %25, %329, %334, %62, %131
  %451 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %452 = getelementptr inbounds ptr, ptr %451, i64 %7
  %453 = getelementptr inbounds ptr, ptr %452, i64 1
  store ptr @PL_sv_undef, ptr %453, align 8, !tbaa !6
  store ptr %453, ptr @PL_stack_sp, align 8, !tbaa !6
  %454 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %455 = load ptr, ptr %454, align 8, !tbaa !30
  br label %456

456:                                              ; preds = %54, %450, %446, %204, %94
  %457 = phi ptr [ %95, %94 ], [ %205, %204 ], [ %455, %450 ], [ %449, %446 ], [ %61, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %457
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvutf8n_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_syswrite() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %9 = getelementptr inbounds i32, ptr %8, i64 -1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %10 = load i32, ptr %8, align 4, !tbaa !29
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !10
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %19 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 511
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %22 = getelementptr inbounds ptr, ptr %12, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %340, label %25

25:                                               ; preds = %0
  %26 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !14
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -9
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %84

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %84, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gp, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = icmp eq i16 %21, 243
  %39 = icmp ne ptr %37, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %86

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !14
  %44 = and i32 %43, 8388608
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @Perl_mg_find(ptr noundef nonnull %37, i32 noundef 113) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds ptr, ptr %6, i64 -1
  %51 = icmp eq ptr %22, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load ptr, ptr %6, align 8, !tbaa !6
  %54 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %6 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 1) #21
  br label %61

61:                                               ; preds = %52, %59
  %62 = phi ptr [ %60, %59 ], [ %6, %52 ]
  %63 = tail call ptr @Perl_sv_newmortal() #21
  %64 = getelementptr inbounds ptr, ptr %62, i64 1
  store ptr %63, ptr %64, align 8, !tbaa !6
  %65 = tail call i64 @Perl_sv_len(ptr noundef %53) #21
  tail call void @Perl_sv_setiv(ptr noundef %63, i64 noundef %65) #21
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %66

66:                                               ; preds = %61, %49
  %67 = phi ptr [ %64, %61 ], [ %6, %49 ]
  %68 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 19), align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.47, i32 noundef 0) #21
  store ptr %71, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 19), align 8, !tbaa !6
  br label %76

72:                                               ; preds = %41, %46
  %73 = getelementptr inbounds ptr, ptr %12, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = tail call ptr @__errno_location() #24
  store i32 0, ptr %75, align 4, !tbaa !29
  br label %90

76:                                               ; preds = %70, %66
  %77 = phi ptr [ %71, %70 ], [ %68, %66 ]
  %78 = ptrtoint ptr %67 to i64
  %79 = ptrtoint ptr %22 to i64
  %80 = sub i64 %78, %79
  %81 = lshr exact i64 %80, 3
  %82 = trunc i64 %81 to i32
  %83 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %77, ptr noundef nonnull %12, ptr noundef nonnull %37, ptr noundef nonnull %47, i32 noundef 10, i32 noundef %82) #23
  br label %347

84:                                               ; preds = %25, %31
  %85 = tail call ptr @__errno_location() #24
  store i32 0, ptr %85, align 4, !tbaa !29
  br label %103

86:                                               ; preds = %35
  %87 = getelementptr inbounds ptr, ptr %12, i64 2
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = tail call ptr @__errno_location() #24
  store i32 0, ptr %89, align 4, !tbaa !29
  br i1 %39, label %90, label %103

90:                                               ; preds = %72, %86
  %91 = phi ptr [ %75, %72 ], [ %89, %86 ]
  %92 = phi ptr [ %74, %72 ], [ %88, %86 ]
  %93 = phi ptr [ %73, %72 ], [ %87, %86 ]
  %94 = getelementptr inbounds %struct.io, ptr %37, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %37, align 8, !tbaa !65
  %99 = getelementptr inbounds %struct.xpvio, ptr %98, i64 0, i32 16
  %100 = load i8, ptr %99, align 8, !tbaa !71
  %101 = icmp eq i8 %100, 60
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %23, i8 noundef signext 60) #21
  br label %338

103:                                              ; preds = %90, %84, %86
  %104 = phi ptr [ %85, %84 ], [ %89, %86 ], [ %91, %90 ]
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %23) #21
  br label %338

105:                                              ; preds = %97
  %106 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %95) #21
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %338, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !14
  %111 = and i32 %110, 2098176
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load ptr, ptr %92, align 8, !tbaa !25
  %115 = getelementptr inbounds %struct.xpv, ptr %114, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !26
  store i64 %116, ptr %1, align 8, !tbaa !44
  %117 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !16
  br label %123

119:                                              ; preds = %108
  %120 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %92, ptr noundef nonnull %1, i32 noundef 34) #21
  %121 = load i64, ptr %1, align 8, !tbaa !44
  %122 = load i32, ptr %109, align 4, !tbaa !14
  br label %123

123:                                              ; preds = %119, %113
  %124 = phi i32 [ %110, %113 ], [ %122, %119 ]
  %125 = phi i64 [ %116, %113 ], [ %121, %119 ]
  %126 = phi ptr [ %118, %113 ], [ %120, %119 ]
  %127 = and i32 %124, 536870912
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.cop, ptr %130, i64 0, i32 10
  %132 = load i32, ptr %131, align 8, !tbaa !108
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi i1 [ false, %123 ], [ %134, %129 ]
  %137 = zext i1 %136 to i8
  store i8 %137, ptr %2, align 1, !tbaa !18
  %138 = load ptr, ptr %94, align 8, !tbaa !16
  %139 = call i32 @PerlIO_isutf8(ptr noundef %138) #21
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i32, ptr %109, align 4, !tbaa !14
  %143 = and i32 %142, 536870912
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %174

145:                                              ; preds = %141
  %146 = call ptr @Perl_bytes_to_utf8(ptr noundef %126, ptr noundef nonnull %1) #21
  store i8 1, ptr %2, align 1, !tbaa !18
  br label %181

147:                                              ; preds = %135
  %148 = load i8, ptr %2, align 1, !tbaa !18, !range !20, !noundef !21
  %149 = icmp eq i8 %148, 0
  %150 = load i64, ptr %1, align 8, !tbaa !44
  br i1 %149, label %212, label %151

151:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 %150, ptr %3, align 8, !tbaa !44
  %152 = call ptr @Perl_bytes_from_utf8(ptr noundef %126, ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %153 = load i8, ptr %2, align 1, !tbaa !18, !range !20, !noundef !21
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i64, ptr %3, align 8, !tbaa !44
  store i64 %156, ptr %1, align 8, !tbaa !44
  br label %171

157:                                              ; preds = %151
  %158 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %159 = getelementptr inbounds %struct.op, ptr %158, i64 0, i32 4
  %160 = load i16, ptr %159, align 8
  %161 = and i16 %160, 511
  %162 = icmp eq i16 %161, 380
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %158, i32 noundef 2) #21
  br label %169

165:                                              ; preds = %157
  %166 = zext nneg i16 %161 to i64
  %167 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  br label %169

169:                                              ; preds = %165, %163
  %170 = phi ptr [ %164, %163 ], [ %168, %165 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, ptr noundef %170) #21
  br label %171

171:                                              ; preds = %169, %155
  %172 = phi ptr [ null, %169 ], [ %152, %155 ]
  %173 = phi ptr [ %126, %169 ], [ %152, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %174

174:                                              ; preds = %171, %141
  %175 = phi ptr [ %172, %171 ], [ null, %141 ]
  %176 = phi ptr [ %173, %171 ], [ %126, %141 ]
  %177 = load i8, ptr %2, align 1, !tbaa !18
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i64, ptr %1, align 8, !tbaa !44
  br label %212

181:                                              ; preds = %145, %174
  %182 = phi ptr [ %146, %145 ], [ %176, %174 ]
  %183 = phi ptr [ %146, %145 ], [ %175, %174 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %212

185:                                              ; preds = %181
  %186 = load i32, ptr %109, align 4, !tbaa !14
  %187 = and i32 %186, 2097152
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = and i32 %186, 2048
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %210, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !16
  %195 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !14
  %197 = and i32 %196, 1048576
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %192
  %200 = load ptr, ptr %194, align 8, !tbaa !25
  %201 = load ptr, ptr %200, align 8, !tbaa !32
  %202 = getelementptr inbounds %struct.hv, ptr %201, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !34
  %204 = and i32 %203, 268435456
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %199, %185
  %207 = load i64, ptr %1, align 8, !tbaa !44
  %208 = getelementptr inbounds i8, ptr %182, i64 %207
  %209 = call i64 @Perl_utf8_length(ptr noundef %182, ptr noundef %208) #21
  br label %212

210:                                              ; preds = %199, %192, %189
  %211 = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %92) #21
  br label %212

212:                                              ; preds = %147, %179, %206, %210, %181
  %213 = phi ptr [ %182, %181 ], [ %182, %206 ], [ %182, %210 ], [ %176, %179 ], [ %126, %147 ]
  %214 = phi ptr [ %183, %181 ], [ null, %206 ], [ null, %210 ], [ %175, %179 ], [ null, %147 ]
  %215 = phi i64 [ %125, %181 ], [ %209, %206 ], [ %211, %210 ], [ %180, %179 ], [ %150, %147 ]
  %216 = icmp ult ptr %93, %6
  br i1 %216, label %217, label %235

217:                                              ; preds = %212
  %218 = getelementptr inbounds ptr, ptr %12, i64 3
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  store ptr %219, ptr @PL_Sv, align 8, !tbaa !6
  %220 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !14
  %222 = and i32 %221, 2097408
  %223 = icmp eq i32 %222, 256
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load ptr, ptr %219, align 8, !tbaa !25
  %226 = getelementptr inbounds %struct.xpviv, ptr %225, i64 0, i32 4
  %227 = load i64, ptr %226, align 8, !tbaa !16
  br label %230

228:                                              ; preds = %217
  %229 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %219, i32 noundef 2) #21
  br label %230

230:                                              ; preds = %228, %224
  %231 = phi i64 [ %227, %224 ], [ %229, %228 ]
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  call void @Perl_safesysfree(ptr noundef %214) #21
  %234 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.45) #21
  br label %347

235:                                              ; preds = %212, %230
  %236 = phi ptr [ %218, %230 ], [ %93, %212 ]
  %237 = phi i64 [ %231, %230 ], [ %215, %212 ]
  %238 = icmp ult ptr %236, %6
  br i1 %238, label %239, label %266

239:                                              ; preds = %235
  %240 = getelementptr inbounds ptr, ptr %236, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  store ptr %241, ptr @PL_Sv, align 8, !tbaa !6
  %242 = getelementptr inbounds %struct.sv, ptr %241, i64 0, i32 2
  %243 = load i32, ptr %242, align 4, !tbaa !14
  %244 = and i32 %243, 2097408
  %245 = icmp eq i32 %244, 256
  br i1 %245, label %246, label %250

246:                                              ; preds = %239
  %247 = load ptr, ptr %241, align 8, !tbaa !25
  %248 = getelementptr inbounds %struct.xpviv, ptr %247, i64 0, i32 4
  %249 = load i64, ptr %248, align 8, !tbaa !16
  br label %252

250:                                              ; preds = %239
  %251 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %241, i32 noundef 2) #21
  br label %252

252:                                              ; preds = %250, %246
  %253 = phi i64 [ %249, %246 ], [ %251, %250 ]
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = sub nsw i64 0, %253
  %257 = icmp slt i64 %215, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  call void @Perl_safesysfree(ptr noundef %214) #21
  %259 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #21
  br label %347

260:                                              ; preds = %255
  %261 = add nsw i64 %253, %215
  br label %266

262:                                              ; preds = %252
  %263 = icmp sgt i64 %253, %215
  br i1 %263, label %264, label %266

264:                                              ; preds = %262
  call void @Perl_safesysfree(ptr noundef %214) #21
  %265 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #21
  br label %347

266:                                              ; preds = %235, %260, %262
  %267 = phi i64 [ %261, %260 ], [ %253, %262 ], [ 0, %235 ]
  %268 = sub i64 %215, %267
  %269 = call i64 @llvm.umin.i64(i64 %237, i64 %268)
  %270 = load i8, ptr %2, align 1, !tbaa !18, !range !20, !noundef !21
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %311, label %272

272:                                              ; preds = %266
  %273 = icmp eq ptr %214, null
  br i1 %273, label %274, label %295

274:                                              ; preds = %272
  %275 = load i32, ptr %109, align 4, !tbaa !14
  %276 = and i32 %275, 2097152
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %274
  %279 = and i32 %275, 2048
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %303, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !16
  %284 = getelementptr inbounds %struct.sv, ptr %283, i64 0, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !14
  %286 = and i32 %285, 1048576
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %303, label %288

288:                                              ; preds = %281
  %289 = load ptr, ptr %283, align 8, !tbaa !25
  %290 = load ptr, ptr %289, align 8, !tbaa !32
  %291 = getelementptr inbounds %struct.hv, ptr %290, i64 0, i32 2
  %292 = load i32, ptr %291, align 4, !tbaa !34
  %293 = and i32 %292, 268435456
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %288, %274, %272
  %296 = trunc i64 %267 to i32
  %297 = call ptr @Perl_utf8_hop(ptr noundef %213, i32 noundef %296) #21
  %298 = trunc i64 %269 to i32
  %299 = call ptr @Perl_utf8_hop(ptr noundef %297, i32 noundef %298) #21
  %300 = ptrtoint ptr %299 to i64
  %301 = ptrtoint ptr %297 to i64
  %302 = sub i64 %300, %301
  br label %313

303:                                              ; preds = %288, %281, %278
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %304 = trunc i64 %267 to i32
  store i32 %304, ptr %4, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %305 = trunc i64 %269 to i32
  store i32 %305, ptr %5, align 4, !tbaa !29
  call void @Perl_sv_pos_u2b(ptr noundef nonnull %92, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %306 = load i32, ptr %4, align 4, !tbaa !29
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %213, i64 %307
  %309 = load i32, ptr %5, align 4, !tbaa !29
  %310 = sext i32 %309 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %313

311:                                              ; preds = %266
  %312 = getelementptr inbounds i8, ptr %213, i64 %267
  br label %313

313:                                              ; preds = %295, %303, %311
  %314 = phi ptr [ %297, %295 ], [ %308, %303 ], [ %312, %311 ]
  %315 = phi i64 [ %302, %295 ], [ %310, %303 ], [ %269, %311 ]
  %316 = call i64 @write(i32 noundef %106, ptr noundef %314, i64 noundef %315) #21
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %340, label %318

318:                                              ; preds = %313
  %319 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %320 = getelementptr inbounds ptr, ptr %319, i64 %11
  %321 = load i8, ptr %2, align 1, !tbaa !18, !range !20, !noundef !21
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %314, i64 %316
  %325 = call i64 @Perl_utf8_length(ptr noundef %314, ptr noundef %324) #21
  br label %326

326:                                              ; preds = %323, %318
  %327 = phi i64 [ %325, %323 ], [ %316, %318 ]
  call void @Perl_safesysfree(ptr noundef %214) #21
  call void @Perl_sv_setiv(ptr noundef %18, i64 noundef %327) #21
  %328 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !14
  %330 = and i32 %329, 4194304
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332

332:                                              ; preds = %326
  %333 = call i32 @Perl_mg_set(ptr noundef nonnull %18) #21
  br label %334

334:                                              ; preds = %326, %332
  %335 = getelementptr inbounds ptr, ptr %320, i64 1
  store ptr %18, ptr %335, align 8, !tbaa !6
  store ptr %335, ptr @PL_stack_sp, align 8, !tbaa !6
  %336 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %337 = load ptr, ptr %336, align 8, !tbaa !30
  br label %347

338:                                              ; preds = %105, %102, %103
  %339 = phi ptr [ %104, %103 ], [ %91, %102 ], [ %91, %105 ]
  store i32 9, ptr %339, align 4, !tbaa !29
  br label %340

340:                                              ; preds = %338, %0, %313
  %341 = phi ptr [ %214, %313 ], [ null, %0 ], [ null, %338 ]
  call void @Perl_safesysfree(ptr noundef %341) #21
  %342 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %343 = getelementptr inbounds ptr, ptr %342, i64 %11
  %344 = getelementptr inbounds ptr, ptr %343, i64 1
  store ptr @PL_sv_undef, ptr %344, align 8, !tbaa !6
  store ptr %344, ptr @PL_stack_sp, align 8, !tbaa !6
  %345 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %346 = load ptr, ptr %345, align 8, !tbaa !30
  br label %347

347:                                              ; preds = %233, %264, %258, %76, %340, %334
  %348 = phi ptr [ %346, %340 ], [ %337, %334 ], [ %83, %76 ], [ %234, %233 ], [ %265, %264 ], [ %259, %258 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %348
}

; Function Attrs: optsize
declare i64 @Perl_sv_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_pos_u2b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_eof() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %9, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %44

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %18, %16 ], [ %2, %10 ]
  %21 = phi ptr [ %17, %16 ], [ %1, %10 ]
  %22 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %23 = load i8, ptr %22, align 2, !tbaa !17
  %24 = icmp sgt i8 %23, -1
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @PL_argvgv, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !63
  %29 = and i32 %28, 49152
  %30 = icmp eq i32 %29, 32768
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = and i32 %28, 255
  %33 = add nsw i32 %32, -9
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  br label %40

40:                                               ; preds = %31, %25, %35
  %41 = phi ptr [ %39, %35 ], [ null, %25 ], [ null, %31 ]
  store ptr %41, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %44

42:                                               ; preds = %19
  %43 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %40, %42, %7
  %45 = phi ptr [ %2, %7 ], [ %20, %40 ], [ %20, %42 ]
  %46 = phi ptr [ %9, %7 ], [ %41, %40 ], [ %43, %42 ]
  %47 = phi i64 [ 1, %7 ], [ 2, %40 ], [ 0, %42 ]
  %48 = phi ptr [ %8, %7 ], [ %21, %40 ], [ %21, %42 ]
  %49 = icmp eq ptr %46, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr @PL_sv_no, ptr %51, align 8, !tbaa !6
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !6
  %52 = load ptr, ptr %45, align 8, !tbaa !30
  br label %158

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !14
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -9
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gp, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = icmp eq ptr %65, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !14
  %70 = and i32 %69, 8388608
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %67
  %73 = tail call ptr @Perl_mg_find(ptr noundef nonnull %65, i32 noundef 113) #21
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %86

77:                                               ; preds = %72
  %78 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 27), align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.49, i32 noundef 0) #21
  store ptr %81, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 27), align 8, !tbaa !6
  br label %82

82:                                               ; preds = %77, %80
  %83 = phi ptr [ %81, %80 ], [ %78, %77 ]
  %84 = tail call ptr @Perl_newSVuv(i64 noundef %47) #21
  %85 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %83, ptr noundef %48, ptr noundef nonnull %65, ptr noundef nonnull %73, i32 noundef 2, i32 noundef 1, ptr noundef %84) #23
  br label %158

86:                                               ; preds = %75, %67, %53, %59, %63
  %87 = phi ptr [ %76, %75 ], [ %45, %63 ], [ %45, %59 ], [ %45, %53 ], [ %45, %67 ]
  %88 = phi i1 [ true, %75 ], [ false, %63 ], [ false, %59 ], [ false, %53 ], [ true, %67 ]
  %89 = phi ptr [ %65, %75 ], [ null, %63 ], [ null, %59 ], [ null, %53 ], [ %65, %67 ]
  %90 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 6
  %91 = load i8, ptr %90, align 1, !tbaa !22
  %92 = and i8 %91, 15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %152

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 5
  %96 = load i8, ptr %95, align 2, !tbaa !17
  %97 = icmp slt i8 %96, 0
  %98 = and i1 %88, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.io, ptr %89, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %152

103:                                              ; preds = %99
  %104 = load ptr, ptr %89, align 8, !tbaa !65
  %105 = getelementptr inbounds %struct.xpvio, ptr %104, i64 0, i32 17
  %106 = load i8, ptr %105, align 1, !tbaa !67
  %107 = and i8 %106, 2
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %145, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !16
  %112 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !110
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %46, i32 noundef 11) #21
  %117 = getelementptr inbounds %struct.gv, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !16
  %119 = getelementptr inbounds %struct.gp, ptr %118, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !110
  br label %121

121:                                              ; preds = %109, %115
  %122 = phi ptr [ %120, %115 ], [ %113, %109 ]
  %123 = tail call fastcc i64 @S_av_top_index(ptr noundef %122) #23
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = load ptr, ptr %89, align 8, !tbaa !65
  %127 = getelementptr inbounds %struct.xpvio, ptr %126, i64 0, i32 4
  store i64 0, ptr %127, align 8, !tbaa !16
  %128 = load ptr, ptr %89, align 8, !tbaa !65
  %129 = getelementptr inbounds %struct.xpvio, ptr %128, i64 0, i32 17
  %130 = load i8, ptr %129, align 1, !tbaa !67
  %131 = and i8 %130, -3
  store i8 %131, ptr %129, align 1, !tbaa !67
  %132 = tail call zeroext i1 @Perl_do_open6(ptr noundef nonnull %46, ptr noundef nonnull @.str.50, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #21
  %133 = load ptr, ptr %110, align 8, !tbaa !16
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %125
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %134, ptr noundef nonnull @.str.50, i64 noundef 1) #21
  %137 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !14
  %139 = and i32 %138, 4194304
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %136
  %142 = tail call i32 @Perl_mg_set(ptr noundef nonnull %134) #21
  br label %152

143:                                              ; preds = %125
  %144 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.50, i64 noundef 1) #21
  store ptr %144, ptr %133, align 8, !tbaa !6
  br label %152

145:                                              ; preds = %121, %103
  %146 = tail call ptr @Perl_nextargv(ptr noundef nonnull %46, i1 noundef zeroext false) #21
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr @PL_sv_yes, ptr %149, align 8, !tbaa !6
  store ptr %149, ptr @PL_stack_sp, align 8, !tbaa !6
  %150 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %151 = load ptr, ptr %150, align 8, !tbaa !30
  br label %158

152:                                              ; preds = %143, %136, %141, %99, %145, %94, %86
  %153 = tail call zeroext i1 @Perl_do_eof(ptr noundef nonnull %46) #21
  %154 = select i1 %153, ptr @PL_sv_yes, ptr @PL_sv_no
  %155 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %154, ptr %155, align 8, !tbaa !6
  store ptr %155, ptr @PL_stack_sp, align 8, !tbaa !6
  %156 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %157 = load ptr, ptr %156, align 8, !tbaa !30
  br label %158

158:                                              ; preds = %152, %148, %82, %50
  %159 = phi ptr [ %85, %82 ], [ %157, %152 ], [ %151, %148 ], [ %52, %50 ]
  ret ptr %159
}

; Function Attrs: optsize
declare ptr @Perl_nextargv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_tell() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  store ptr %13, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %30

17:                                               ; preds = %12, %0
  %18 = phi ptr [ %1, %0 ], [ %15, %12 ]
  %19 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @Perl_stack_grow(ptr noundef %18, ptr noundef %18, i64 noundef 1) #21
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi ptr [ %18, %17 ], [ %25, %24 ]
  %28 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %16, %26
  %31 = phi ptr [ %15, %16 ], [ %27, %26 ]
  %32 = phi ptr [ %13, %16 ], [ %28, %26 ]
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -9
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %78

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %78, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gp, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = and i32 %48, 8388608
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @Perl_mg_find(ptr noundef nonnull %44, i32 noundef 113) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 26), align 16, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.51, i32 noundef 0) #21
  store ptr %58, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 26), align 16, !tbaa !6
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi ptr [ %58, %57 ], [ %55, %54 ]
  %61 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %60, ptr noundef %31, ptr noundef nonnull %44, ptr noundef nonnull %52, i32 noundef 2, i32 noundef 0) #23
  br label %90

62:                                               ; preds = %26
  %63 = tail call ptr @__errno_location() #24
  %64 = load i32, ptr %63, align 4, !tbaa !29
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 9, ptr %63, align 4, !tbaa !29
  br label %67

67:                                               ; preds = %62, %66
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef -1) #21
  %68 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !14
  %70 = and i32 %69, 4194304
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %74

74:                                               ; preds = %67, %72
  %75 = getelementptr inbounds ptr, ptr %27, i64 1
  store ptr %7, ptr %75, align 8, !tbaa !6
  store ptr %75, ptr @PL_stack_sp, align 8, !tbaa !6
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  br label %90

78:                                               ; preds = %42, %30, %38, %46, %51
  %79 = tail call i64 @Perl_do_tell(ptr noundef nonnull %32) #21
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %79) #21
  %80 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !14
  %82 = and i32 %81, 4194304
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %86

86:                                               ; preds = %78, %84
  %87 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %7, ptr %87, align 8, !tbaa !6
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !6
  %88 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %89 = load ptr, ptr %88, align 8, !tbaa !30
  br label %90

90:                                               ; preds = %59, %86, %74
  %91 = phi ptr [ %89, %86 ], [ %61, %59 ], [ %77, %74 ]
  ret ptr %91
}

; Function Attrs: optsize
declare i64 @Perl_do_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sysseek() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !16
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #21
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds ptr, ptr %1, i64 -2
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  store ptr %18, ptr @PL_Sv, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %21 = and i32 %20, 2097408
  %22 = icmp eq i32 %21, 256
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load ptr, ptr %18, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.xpviv, ptr %24, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !16
  br label %29

27:                                               ; preds = %14
  %28 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %18, i32 noundef 2) #21
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i64 [ %26, %23 ], [ %28, %27 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 -3
  %32 = load ptr, ptr %17, align 8, !tbaa !6
  store ptr %32, ptr @PL_last_in_gv, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !14
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -9
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !14
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %46, i32 noundef 113) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @Perl_newSViv(i64 noundef %30) #21
  %58 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 25), align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.52, i32 noundef 0) #21
  store ptr %61, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 25), align 8, !tbaa !6
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ %58, %56 ]
  %64 = shl i64 %15, 32
  %65 = ashr exact i64 %64, 32
  %66 = tail call ptr @Perl_newSViv(i64 noundef %65) #21
  %67 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %63, ptr noundef nonnull %31, ptr noundef nonnull %46, ptr noundef nonnull %54, i32 noundef 2, i32 noundef 2, ptr noundef %57, ptr noundef %66) #23
  br label %93

68:                                               ; preds = %48, %53, %34, %29, %40, %44
  %69 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.op, ptr %69, i64 0, i32 4
  %71 = load i16, ptr %70, align 8
  %72 = and i16 %71, 511
  %73 = icmp eq i16 %72, 246
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = tail call zeroext i1 @Perl_do_seek(ptr noundef %32, i64 noundef %30, i32 noundef %16) #21
  %76 = select i1 %75, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %89

77:                                               ; preds = %68
  %78 = tail call i64 @Perl_do_sysseek(ptr noundef %32, i64 noundef %30, i32 noundef %16) #21
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = icmp eq i64 %78, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = tail call ptr @Perl_newSViv(i64 noundef %78) #21
  br label %86

84:                                               ; preds = %80
  %85 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @zero_but_true, i64 noundef 10) #21
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi ptr [ %83, %82 ], [ %85, %84 ]
  %88 = tail call ptr @Perl_sv_2mortal(ptr noundef %87) #21
  br label %89

89:                                               ; preds = %77, %86, %74
  %90 = phi ptr [ %88, %86 ], [ %76, %74 ], [ @PL_sv_undef, %77 ]
  store ptr %90, ptr %17, align 8, !tbaa !6
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !6
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %92 = load ptr, ptr %91, align 8, !tbaa !30
  br label %93

93:                                               ; preds = %62, %89
  %94 = phi ptr [ %92, %89 ], [ %67, %62 ]
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_do_sysseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_truncate() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !16
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #21
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = tail call ptr @__errno_location() #24
  store i32 0, ptr %16, align 4, !tbaa !29
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !17
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %22, label %65

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !14
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @Perl_mg_get(ptr noundef nonnull %17) #21
  %29 = load i32, ptr %23, align 4, !tbaa !14
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ %24, %22 ], [ %29, %27 ]
  %32 = and i32 %31, 49152
  %33 = icmp eq i32 %32, 32768
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = and i32 %31, 255
  %36 = add nsw i32 %35, -9
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %74, label %38

38:                                               ; preds = %34, %30
  %39 = and i32 %31, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %99, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !14
  %46 = and i32 %45, 255
  %47 = icmp ult i32 %46, 11
  br i1 %47, label %48, label %99

48:                                               ; preds = %41
  %49 = and i32 %45, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @Perl_mg_get(ptr noundef nonnull %43) #21
  %53 = load ptr, ptr %42, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !14
  br label %56

56:                                               ; preds = %48, %51
  %57 = phi i32 [ %45, %48 ], [ %55, %51 ]
  %58 = phi ptr [ %43, %48 ], [ %53, %51 ]
  %59 = and i32 %57, 49152
  %60 = icmp eq i32 %59, 32768
  br i1 %60, label %61, label %99

61:                                               ; preds = %56
  %62 = and i32 %57, 255
  %63 = add nsw i32 %62, -9
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %74, label %99

65:                                               ; preds = %14
  %66 = tail call ptr @Perl_gv_fetchsv(ptr noundef %17, i32 noundef 0, i32 noundef 15) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %126, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !14
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -9
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %126

74:                                               ; preds = %34, %61, %68
  %75 = phi ptr [ %66, %68 ], [ %17, %34 ], [ %58, %61 ]
  %76 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %126, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.gp, ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = icmp eq ptr %81, null
  br i1 %82, label %126, label %83

83:                                               ; preds = %103, %79
  %84 = phi ptr [ %81, %79 ], [ %105, %103 ]
  %85 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.53) #21
  br label %88

88:                                               ; preds = %83, %87
  %89 = getelementptr inbounds %struct.io, ptr %84, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %126, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %90) #21
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %129, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %90) #21
  %97 = tail call i32 @ftruncate64(i32 noundef %93, i64 noundef %15) #21
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %126, label %130

99:                                               ; preds = %56, %41, %38, %61
  %100 = load i32, ptr %23, align 4, !tbaa !14
  %101 = and i32 %100, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !16
  %106 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !14
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 15
  br i1 %109, label %83, label %110

110:                                              ; preds = %103, %99
  %111 = and i32 %100, 2098176
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !16
  br label %118

116:                                              ; preds = %110
  %117 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef null, i32 noundef 32) #21
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi ptr [ %115, %113 ], [ %117, %116 ]
  %120 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.53) #21
  br label %123

123:                                              ; preds = %118, %122
  %124 = tail call i32 @truncate64(ptr noundef %119, i64 noundef %15) #21
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %95, %123, %68, %65, %74, %79, %88
  %127 = load i32, ptr %16, align 4, !tbaa !29
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %92
  store i32 9, ptr %16, align 4, !tbaa !29
  br label %130

130:                                              ; preds = %129, %126, %95, %123
  %131 = phi ptr [ @PL_sv_yes, %123 ], [ @PL_sv_yes, %95 ], [ @PL_sv_undef, %126 ], [ @PL_sv_undef, %129 ]
  store ptr %131, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %132 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %133 = load ptr, ptr %132, align 8, !tbaa !30
  ret ptr %133
}

; Function Attrs: nounwind optsize
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare i32 @truncate64(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ioctl() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  %11 = getelementptr inbounds ptr, ptr %2, i64 -2
  %12 = load ptr, ptr %9, align 8, !tbaa !6
  store ptr %12, ptr @PL_Sv, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = and i32 %14, -2145386240
  %16 = icmp eq i32 %15, -2147483392
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load ptr, ptr %12, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.xpvuv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !16
  br label %23

21:                                               ; preds = %0
  %22 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %12, i32 noundef 2) #21
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %20, %17 ], [ %22, %21 ]
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %11, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !14
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %28, %23, %34, %38
  %43 = tail call ptr @Perl_gv_add_by_type(ptr noundef %26, i32 noundef 15) #21
  %44 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %38, %42
  %49 = phi ptr [ %47, %42 ], [ %40, %38 ]
  %50 = getelementptr inbounds %struct.io, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  tail call void @Perl_report_evil_fh(ptr noundef %26) #21
  %54 = tail call ptr @__errno_location() #24
  store i32 9, ptr %54, align 4, !tbaa !29
  store ptr @PL_sv_undef, ptr %11, align 8, !tbaa !6
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !6
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  br label %184

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !14
  %60 = and i32 %59, 1024
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %59, 768
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %66 = and i32 %59, 430018304
  %67 = icmp eq i32 %66, 1024
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load ptr, ptr %10, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct.xpv, ptr %69, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !26
  store i64 %71, ptr %1, align 8, !tbaa !44
  %72 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !16
  br label %77

74:                                               ; preds = %65
  %75 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %10, ptr noundef nonnull %1, i32 noundef 2) #21
  %76 = load i64, ptr %1, align 8, !tbaa !44
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i64 [ %71, %68 ], [ %76, %74 ]
  %79 = phi ptr [ %73, %68 ], [ %75, %74 ]
  %80 = lshr i32 %25, 16
  %81 = and i32 %80, 16383
  %82 = call i32 @llvm.umax.i32(i32 %81, i32 256)
  %83 = zext nneg i32 %82 to i64
  %84 = icmp ult i64 %78, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %10, align 8, !tbaa !25
  %87 = getelementptr inbounds %struct.xpv, ptr %86, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !26
  br label %94

89:                                               ; preds = %77
  %90 = add nuw nsw i64 %83, 1
  %91 = call ptr @Perl_sv_grow(ptr noundef nonnull %10, i64 noundef %90) #21
  %92 = load ptr, ptr %10, align 8, !tbaa !25
  %93 = getelementptr inbounds %struct.xpv, ptr %92, i64 0, i32 2
  store i64 %83, ptr %93, align 8, !tbaa !26
  br label %94

94:                                               ; preds = %85, %89
  %95 = phi i64 [ %83, %89 ], [ %88, %85 ]
  %96 = phi ptr [ %91, %89 ], [ %79, %85 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 %95
  store i8 17, ptr %97, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  br label %110

98:                                               ; preds = %57
  %99 = and i32 %59, 2097408
  %100 = icmp eq i32 %99, 256
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr %10, align 8, !tbaa !25
  %103 = getelementptr inbounds %struct.xpviv, ptr %102, i64 0, i32 4
  %104 = load i64, ptr %103, align 8, !tbaa !16
  br label %107

105:                                              ; preds = %98
  %106 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #21
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i64 [ %104, %101 ], [ %106, %105 ]
  %109 = inttoptr i64 %108 to ptr
  br label %110

110:                                              ; preds = %107, %94
  %111 = phi ptr [ %96, %94 ], [ %109, %107 ]
  %112 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.op, ptr %112, i64 0, i32 4
  %114 = load i16, ptr %113, align 8
  %115 = and i16 %114, 511
  %116 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = zext nneg i16 %115 to i64
  %120 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %121) #21
  br label %122

122:                                              ; preds = %110, %118
  %123 = icmp eq i16 %115, 249
  %124 = load ptr, ptr %50, align 8, !tbaa !16
  %125 = call i32 @Perl_PerlIO_fileno(ptr noundef %124) #21
  br i1 %123, label %126, label %129

126:                                              ; preds = %122
  %127 = and i64 %24, 4294967295
  %128 = call i32 (i32, i64, ...) @ioctl(i32 noundef %125, i64 noundef %127, ptr noundef %111) #21
  br label %131

129:                                              ; preds = %122
  %130 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %125, i32 noundef %25, ptr noundef %111) #21
  br label %131

131:                                              ; preds = %129, %126
  %132 = phi i32 [ %128, %126 ], [ %130, %129 ]
  %133 = sext i32 %132 to i64
  %134 = load i32, ptr %58, align 4, !tbaa !14
  %135 = and i32 %134, 1024
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %165, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %10, align 8, !tbaa !25
  %139 = getelementptr inbounds %struct.xpv, ptr %138, i64 0, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !26
  %141 = getelementptr inbounds i8, ptr %111, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !16
  %143 = icmp eq i8 %142, 17
  br i1 %143, label %159, label %144

144:                                              ; preds = %137
  %145 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %146 = getelementptr inbounds %struct.op, ptr %145, i64 0, i32 4
  %147 = load i16, ptr %146, align 8
  %148 = and i16 %147, 511
  %149 = icmp eq i16 %148, 380
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %145, i32 noundef 1) #21
  br label %156

152:                                              ; preds = %144
  %153 = zext nneg i16 %148 to i64
  %154 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  br label %156

156:                                              ; preds = %152, %150
  %157 = phi ptr [ %151, %150 ], [ %155, %152 ]
  %158 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.54, ptr noundef %157) #21
  br label %184

159:                                              ; preds = %137
  store i8 0, ptr %141, align 1, !tbaa !16
  %160 = load i32, ptr %58, align 4, !tbaa !14
  %161 = and i32 %160, 4194304
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = call i32 @Perl_mg_set(ptr noundef nonnull %10) #21
  br label %165

165:                                              ; preds = %163, %159, %131
  switch i32 %132, label %169 [
    i32 -1, label %166
    i32 0, label %174
  ]

166:                                              ; preds = %165
  store ptr @PL_sv_undef, ptr %11, align 8, !tbaa !6
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !6
  %167 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %168 = load ptr, ptr %167, align 8, !tbaa !30
  br label %184

169:                                              ; preds = %165
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %133) #21
  %170 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !14
  %172 = and i32 %171, 4194304
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %179

174:                                              ; preds = %165
  call void @Perl_sv_setpvn(ptr noundef %8, ptr noundef nonnull @zero_but_true, i64 noundef 10) #21
  %175 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !14
  %177 = and i32 %176, 4194304
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174, %169
  %180 = call i32 @Perl_mg_set(ptr noundef nonnull %8) #21
  br label %181

181:                                              ; preds = %179, %174, %169
  store ptr %8, ptr %11, align 8, !tbaa !6
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !6
  %182 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %183 = load ptr, ptr %182, align 8, !tbaa !30
  br label %184

184:                                              ; preds = %181, %166, %156, %53
  %185 = phi ptr [ %158, %156 ], [ %168, %166 ], [ %183, %181 ], [ %56, %53 ]
  ret ptr %185
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_flock() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.55) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sockpair() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef nonnull @.str.56) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_stat() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !17
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br label %55

10:                                               ; preds = %0
  %11 = getelementptr inbounds ptr, ptr %1, i64 -1
  %12 = load ptr, ptr %1, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @Perl_mg_get(ptr noundef nonnull %12) #21
  %19 = load i32, ptr %13, align 4, !tbaa !14
  br label %20

20:                                               ; preds = %10, %17
  %21 = phi i32 [ %14, %10 ], [ %19, %17 ]
  %22 = and i32 %21, 49152
  %23 = icmp eq i32 %22, 32768
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = and i32 %21, 255
  %26 = add nsw i32 %25, -9
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %55, label %28

28:                                               ; preds = %24, %20
  %29 = and i32 %21, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %147, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = and i32 %35, 255
  %37 = icmp ult i32 %36, 11
  br i1 %37, label %38, label %147

38:                                               ; preds = %31
  %39 = and i32 %35, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %33) #21
  %43 = load ptr, ptr %32, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !14
  br label %46

46:                                               ; preds = %38, %41
  %47 = phi i32 [ %35, %38 ], [ %45, %41 ]
  %48 = phi ptr [ %33, %38 ], [ %43, %41 ]
  %49 = and i32 %47, 49152
  %50 = icmp eq i32 %49, 32768
  br i1 %50, label %51, label %147

51:                                               ; preds = %46
  %52 = and i32 %47, 255
  %53 = add nsw i32 %52, -9
  %54 = icmp ult i32 %53, 2
  br i1 %54, label %55, label %147

55:                                               ; preds = %51, %24, %7
  %56 = phi ptr [ %9, %7 ], [ %12, %24 ], [ %48, %51 ]
  %57 = phi ptr [ %1, %7 ], [ %11, %24 ], [ %11, %51 ]
  %58 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.op, ptr %58, i64 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 511
  %62 = icmp eq i16 %61, 264
  br i1 %62, label %63, label %90

63:                                               ; preds = %55
  %64 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %65 = icmp eq ptr %56, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %56, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.gv, ptr %56, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.gp, ptr %70, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = icmp eq ptr %72, null
  %74 = select i1 %73, ptr %56, ptr %72
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.xpvgv, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = tail call ptr @Perl_newSVhek(ptr noundef %77) #21
  %79 = tail call ptr @Perl_sv_2mortal(ptr noundef %78) #21
  br label %80

80:                                               ; preds = %158, %66, %68
  %81 = phi ptr [ @.str.36, %68 ], [ @.str.4, %66 ], [ @.str.4, %158 ]
  %82 = phi ptr [ %57, %68 ], [ %57, %66 ], [ %11, %158 ]
  %83 = phi ptr [ %56, %68 ], [ null, %66 ], [ null, %158 ]
  %84 = phi ptr [ null, %68 ], [ null, %66 ], [ %153, %158 ]
  %85 = phi ptr [ %79, %68 ], [ @PL_sv_no, %66 ], [ @PL_sv_no, %158 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 5, ptr noundef nonnull @.str.57, ptr noundef nonnull %81, ptr noundef %85) #21
  br label %90

86:                                               ; preds = %63
  %87 = load i16, ptr @PL_laststype, align 2, !tbaa !111
  %88 = icmp eq i16 %87, 264
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #21
  br label %90

90:                                               ; preds = %80, %89, %86, %55
  %91 = phi ptr [ %84, %80 ], [ null, %89 ], [ null, %86 ], [ null, %55 ]
  %92 = phi ptr [ %83, %80 ], [ %56, %89 ], [ %56, %86 ], [ %56, %55 ]
  %93 = phi ptr [ %82, %80 ], [ %57, %89 ], [ %57, %86 ], [ %57, %55 ]
  %94 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %95 = icmp eq ptr %92, %94
  br i1 %95, label %142, label %96

96:                                               ; preds = %158, %90
  %97 = phi ptr [ %91, %90 ], [ %153, %158 ]
  %98 = phi ptr [ %92, %90 ], [ null, %158 ]
  %99 = phi ptr [ %93, %90 ], [ %11, %158 ]
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  %100 = icmp eq ptr %98, null
  %101 = select i1 %100, ptr %97, ptr %98
  store ptr %101, ptr @PL_statgv, align 8, !tbaa !6
  %102 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  tail call void @Perl_sv_setpvn(ptr noundef %102, ptr noundef nonnull @.str.4, i64 noundef 0) #21
  br i1 %100, label %116, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !14
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -9
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %140, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !64
  br label %116

116:                                              ; preds = %113, %96
  %117 = phi ptr [ %97, %96 ], [ %115, %113 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %140, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.io, ptr %117, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %121) #21
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = tail call i32 @fstat64(i32 noundef %124, ptr noundef nonnull @PL_statcache) #21
  store i32 %127, ptr @PL_laststatval, align 4, !tbaa !29
  br label %142

128:                                              ; preds = %119
  %129 = load ptr, ptr %117, align 8, !tbaa !65
  %130 = getelementptr inbounds %struct.xpvio, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !16
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = tail call i32 @Perl_my_dirfd(ptr noundef nonnull %131) #21
  %135 = tail call i32 @fstat64(i32 noundef %134, ptr noundef nonnull @PL_statcache) #21
  store i32 %135, ptr @PL_laststatval, align 4, !tbaa !29
  br label %142

136:                                              ; preds = %123
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  %137 = tail call ptr @__errno_location() #24
  store i32 9, ptr %137, align 4, !tbaa !29
  %138 = load i32, ptr @PL_laststatval, align 4, !tbaa !29
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %142, label %141

140:                                              ; preds = %116, %109, %103, %128
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  br label %141

141:                                              ; preds = %140, %136
  tail call void @Perl_report_evil_fh(ptr noundef %98) #21
  br label %142

142:                                              ; preds = %126, %133, %136, %141, %90
  %143 = phi ptr [ %99, %141 ], [ %99, %136 ], [ %93, %90 ], [ %99, %133 ], [ %99, %126 ]
  %144 = load i32, ptr @PL_laststatval, align 4, !tbaa !29
  %145 = icmp slt i32 %144, 0
  %146 = select i1 %145, i32 0, i32 13
  br label %205

147:                                              ; preds = %46, %31, %28, %51
  %148 = load i32, ptr %13, align 4, !tbaa !14
  %149 = and i32 %148, 2048
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !16
  %154 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !14
  %156 = and i32 %155, 255
  %157 = icmp eq i32 %156, 15
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %160 = getelementptr inbounds %struct.op, ptr %159, i64 0, i32 4
  %161 = load i16, ptr %160, align 8
  %162 = and i16 %161, 511
  %163 = icmp eq i16 %162, 264
  br i1 %163, label %80, label %96

164:                                              ; preds = %147, %151
  %165 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  tail call void @Perl_sv_untaint(ptr noundef %168) #21
  %169 = load i32, ptr %13, align 4, !tbaa !14
  br label %170

170:                                              ; preds = %164, %167
  %171 = phi i32 [ %148, %164 ], [ %169, %167 ]
  %172 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  %173 = and i32 %171, 2098176
  %174 = icmp eq i32 %173, 1024
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !16
  br label %180

178:                                              ; preds = %170
  %179 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %12, ptr noundef null, i32 noundef 32) #21
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi ptr [ %177, %175 ], [ %179, %178 ]
  tail call void @Perl_sv_setpv(ptr noundef %172, ptr noundef %181) #21
  store ptr null, ptr @PL_statgv, align 8, !tbaa !6
  %182 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.op, ptr %182, i64 0, i32 4
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 511
  store i16 %185, ptr @PL_laststype, align 2, !tbaa !111
  %186 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  %187 = getelementptr inbounds %struct.sv, ptr %186, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !14
  %189 = and i32 %188, 2098176
  %190 = icmp eq i32 %189, 1024
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = getelementptr inbounds %struct.sv, ptr %186, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !16
  br label %196

194:                                              ; preds = %180
  %195 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %186, ptr noundef null, i32 noundef 34) #21
  br label %196

196:                                              ; preds = %194, %191
  %197 = phi ptr [ %193, %191 ], [ %195, %194 ]
  %198 = tail call i32 @stat64(ptr noundef %197, ptr noundef nonnull @PL_statcache) #21
  store i32 %198, ptr @PL_laststatval, align 4, !tbaa !29
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #21
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = tail call fastcc zeroext i1 @S_should_warn_nl(ptr noundef %197) #23
  br i1 %203, label %204, label %205

204:                                              ; preds = %202
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.59) #21
  br label %205

205:                                              ; preds = %196, %204, %202, %200, %142
  %206 = phi i32 [ %146, %142 ], [ 0, %200 ], [ 0, %202 ], [ 0, %204 ], [ 13, %196 ]
  %207 = phi ptr [ %143, %142 ], [ %11, %200 ], [ %11, %202 ], [ %11, %204 ], [ %11, %196 ]
  %208 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %209 = getelementptr inbounds %struct.op, ptr %208, i64 0, i32 5
  %210 = load i8, ptr %209, align 2, !tbaa !17
  %211 = and i8 %210, 3
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %205
  %214 = zext nneg i8 %211 to i32
  br label %217

215:                                              ; preds = %205
  %216 = tail call i32 @Perl_block_gimme() #21
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  switch i32 %218, label %219 [
    i32 3, label %232
    i32 1, label %292
  ]

219:                                              ; preds = %217
  %220 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %221 = ptrtoint ptr %220 to i64
  %222 = ptrtoint ptr %207 to i64
  %223 = sub i64 %221, %222
  %224 = icmp slt i64 %223, 8
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = tail call ptr @Perl_stack_grow(ptr noundef %207, ptr noundef %207, i64 noundef 1) #21
  br label %227

227:                                              ; preds = %219, %225
  %228 = phi ptr [ %226, %225 ], [ %207, %219 ]
  %229 = icmp eq i32 %206, 0
  %230 = select i1 %229, ptr @PL_sv_no, ptr @PL_sv_yes
  %231 = getelementptr inbounds ptr, ptr %228, i64 1
  store ptr %230, ptr %231, align 8, !tbaa !6
  br label %292

232:                                              ; preds = %217
  %233 = icmp eq i32 %206, 0
  br i1 %233, label %292, label %234

234:                                              ; preds = %232
  %235 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %236 = ptrtoint ptr %235 to i64
  %237 = ptrtoint ptr %207 to i64
  %238 = sub i64 %236, %237
  %239 = ashr exact i64 %238, 3
  %240 = zext nneg i32 %206 to i64
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %234
  %243 = tail call ptr @Perl_stack_grow(ptr noundef %207, ptr noundef %207, i64 noundef %240) #21
  br label %244

244:                                              ; preds = %242, %234
  %245 = phi ptr [ %243, %242 ], [ %207, %234 ]
  %246 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !44
  %247 = add nsw i64 %246, %240
  %248 = load i64, ptr @PL_tmps_max, align 8, !tbaa !44
  %249 = icmp slt i64 %247, %248
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = tail call i64 @Perl_tmps_grow_p(i64 noundef %247) #21
  br label %252

252:                                              ; preds = %244, %250
  %253 = tail call ptr @Perl_sv_newmortal() #21
  %254 = getelementptr inbounds ptr, ptr %245, i64 1
  store ptr %253, ptr %254, align 8, !tbaa !6
  %255 = load i64, ptr @PL_statcache, align 8, !tbaa !112
  tail call void @Perl_sv_setiv(ptr noundef %253, i64 noundef %255) #21
  %256 = tail call ptr @Perl_sv_newmortal() #21
  %257 = getelementptr inbounds ptr, ptr %245, i64 2
  store ptr %256, ptr %257, align 8, !tbaa !6
  %258 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 1), align 8, !tbaa !115
  tail call void @Perl_sv_setiv(ptr noundef %256, i64 noundef %258) #21
  %259 = tail call ptr @Perl_sv_newmortal() #21
  %260 = getelementptr inbounds ptr, ptr %245, i64 3
  store ptr %259, ptr %260, align 8, !tbaa !6
  %261 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %262 = zext i32 %261 to i64
  tail call void @Perl_sv_setuv(ptr noundef %259, i64 noundef %262) #21
  %263 = tail call ptr @Perl_sv_newmortal() #21
  %264 = getelementptr inbounds ptr, ptr %245, i64 4
  store ptr %263, ptr %264, align 8, !tbaa !6
  %265 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 2), align 8, !tbaa !117
  tail call void @Perl_sv_setuv(ptr noundef %263, i64 noundef %265) #21
  %266 = tail call ptr @Perl_sv_newmortal() #21
  %267 = getelementptr inbounds ptr, ptr %245, i64 5
  store ptr %266, ptr %267, align 8, !tbaa !6
  %268 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !118
  %269 = zext i32 %268 to i64
  tail call void @Perl_sv_setuv(ptr noundef %266, i64 noundef %269) #21
  %270 = tail call ptr @Perl_sv_newmortal() #21
  %271 = getelementptr inbounds ptr, ptr %245, i64 6
  store ptr %270, ptr %271, align 8, !tbaa !6
  %272 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 5), align 8, !tbaa !119
  %273 = zext i32 %272 to i64
  tail call void @Perl_sv_setuv(ptr noundef %270, i64 noundef %273) #21
  %274 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #21
  %275 = getelementptr inbounds ptr, ptr %245, i64 7
  store ptr %274, ptr %275, align 8, !tbaa !6
  %276 = tail call ptr @Perl_sv_newmortal() #21
  %277 = getelementptr inbounds ptr, ptr %245, i64 8
  store ptr %276, ptr %277, align 8, !tbaa !6
  %278 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !120
  tail call void @Perl_sv_setiv(ptr noundef %276, i64 noundef %278) #21
  %279 = tail call ptr @Perl_sv_newmortal() #21
  %280 = getelementptr inbounds ptr, ptr %245, i64 9
  store ptr %279, ptr %280, align 8, !tbaa !6
  %281 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 11), align 8, !tbaa !121
  tail call void @Perl_sv_setiv(ptr noundef %279, i64 noundef %281) #21
  %282 = tail call ptr @Perl_sv_newmortal() #21
  %283 = getelementptr inbounds ptr, ptr %245, i64 10
  store ptr %282, ptr %283, align 8, !tbaa !6
  %284 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 12), align 8, !tbaa !122
  tail call void @Perl_sv_setiv(ptr noundef %282, i64 noundef %284) #21
  %285 = tail call ptr @Perl_sv_newmortal() #21
  %286 = getelementptr inbounds ptr, ptr %245, i64 11
  store ptr %285, ptr %286, align 8, !tbaa !6
  %287 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 13), align 8, !tbaa !123
  tail call void @Perl_sv_setiv(ptr noundef %285, i64 noundef %287) #21
  %288 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #21
  %289 = getelementptr inbounds ptr, ptr %245, i64 12
  store ptr %288, ptr %289, align 8, !tbaa !6
  %290 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #21
  %291 = getelementptr inbounds ptr, ptr %245, i64 13
  store ptr %290, ptr %291, align 8, !tbaa !6
  br label %292

292:                                              ; preds = %232, %252, %227, %217
  %293 = phi ptr [ %231, %227 ], [ %207, %217 ], [ %291, %252 ], [ %207, %232 ]
  store ptr %293, ptr @PL_stack_sp, align 8, !tbaa !6
  %294 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %295 = load ptr, ptr %294, align 8, !tbaa !30
  ret ptr %295
}

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_my_dirfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @S_should_warn_nl(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i64 %2
  %6 = getelementptr i8, ptr %5, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !16
  %8 = icmp eq i8 %7, 10
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ftrread() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = add nsw i16 %4, -266
  %6 = icmp ult i16 %5, 6
  %7 = zext i16 %5 to i48
  %8 = shl nuw nsw i48 %7, 3
  %9 = lshr i48 132454414833490, %8
  %10 = trunc i48 %9 to i8
  %11 = select i1 %6, i8 %10, i8 63
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = and i32 %15, 2099200
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !17
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %11) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 4
  %29 = load i16, ptr %28, align 8
  br label %30

30:                                               ; preds = %26, %18, %0
  %31 = phi i16 [ %29, %26 ], [ %3, %18 ], [ %3, %0 ]
  %32 = and i16 %31, 511
  switch i16 %32, label %38 [
    i16 271, label %37
    i16 267, label %33
    i16 268, label %34
    i16 270, label %35
    i16 269, label %36
  ]

33:                                               ; preds = %30
  br label %38

34:                                               ; preds = %30
  br label %38

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %35, %30, %37, %36, %34, %33
  %39 = phi i32 [ 64, %37 ], [ 64, %34 ], [ 128, %33 ], [ 256, %30 ], [ 128, %35 ], [ 256, %36 ]
  %40 = phi i1 [ true, %37 ], [ false, %34 ], [ false, %33 ], [ false, %30 ], [ true, %35 ], [ true, %36 ]
  %41 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #21
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %51

45:                                               ; preds = %38
  %46 = tail call zeroext i1 @Perl_cando(i32 noundef %39, i1 noundef zeroext %40, ptr noundef nonnull @PL_statcache) #21
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %51

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %51

51:                                               ; preds = %23, %49, %47, %43
  %52 = phi ptr [ %44, %43 ], [ %48, %47 ], [ %50, %49 ], [ %24, %23 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_try_amagic_ftest(i8 noundef signext %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_mg_get(ptr noundef nonnull %4) #21
  br label %17

17:                                               ; preds = %15, %10, %1
  %18 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %100, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %24, align 8, !tbaa !25
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  %32 = getelementptr inbounds %struct.hv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = and i32 %33, 268435456
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %100, label %36

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 %0, ptr %2, align 1, !tbaa !16
  %37 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %2, i64 noundef 1, i32 noundef 524288) #21
  %38 = call ptr @Perl_amagic_call(ptr noundef nonnull %4, ptr noundef %37, i32 noundef 73, i32 noundef 8) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %98, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !14
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 2) #21
  br i1 %46, label %94, label %96

47:                                               ; preds = %40
  %48 = and i32 %42, 65280
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %42, 255
  %51 = icmp eq i32 %50, 8
  %52 = or i1 %49, %51
  %53 = and i32 %42, 16777471
  %54 = icmp eq i32 %53, 16777226
  %55 = or i1 %54, %52
  br i1 %55, label %56, label %96

56:                                               ; preds = %47
  %57 = and i32 %42, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %38, align 8, !tbaa !25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %96, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !26
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %94, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !16
  %71 = load i8, ptr %70, align 1, !tbaa !16
  %72 = icmp eq i8 %71, 48
  br i1 %72, label %96, label %94

73:                                               ; preds = %56
  %74 = and i32 %42, 768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = and i32 %42, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %38, align 8, !tbaa !25
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !16
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79, %76
  %85 = and i32 %42, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %38, align 8, !tbaa !25
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !16
  %91 = fcmp une double %90, 0.000000e+00
  br i1 %91, label %94, label %96

92:                                               ; preds = %73
  %93 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 0) #21
  br i1 %93, label %94, label %96

94:                                               ; preds = %92, %87, %79, %68, %62, %45
  %95 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull %38) #23
  br label %98

96:                                               ; preds = %87, %47, %92, %84, %68, %66, %59, %45
  %97 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull %38) #23
  br label %98

98:                                               ; preds = %94, %96, %36
  %99 = phi ptr [ null, %36 ], [ %95, %94 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %100

100:                                              ; preds = %17, %22, %29, %98
  %101 = phi ptr [ %99, %98 ], [ null, %29 ], [ null, %22 ], [ null, %17 ]
  ret ptr %101
}

; Function Attrs: optsize
declare i32 @Perl_my_stat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_ft_return_false(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !17
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %4 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 1) #21
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi ptr [ %16, %15 ], [ %4, %9 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  br label %20

20:                                               ; preds = %1, %17
  %21 = phi ptr [ %19, %17 ], [ %4, %1 ]
  store ptr %0, ptr %21, align 8, !tbaa !6
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !6
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !22
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 511
  %31 = add nsw i16 %30, -266
  %32 = icmp ult i16 %31, 27
  br i1 %32, label %33, label %46

33:                                               ; preds = %27, %39
  %34 = phi ptr [ %40, %39 ], [ %3, %27 ]
  %35 = getelementptr inbounds %struct.op, ptr %34, i64 0, i32 6
  %36 = load i8, ptr %35, align 1, !tbaa !22
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, 511
  %44 = add nsw i16 %43, -266
  %45 = icmp ult i16 %44, 27
  br i1 %45, label %33, label %46, !llvm.loop !124

46:                                               ; preds = %39, %33, %27, %20
  %47 = phi ptr [ %3, %20 ], [ %3, %27 ], [ %40, %39 ], [ %34, %33 ]
  ret ptr %47
}

; Function Attrs: optsize
declare zeroext i1 @Perl_cando(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_ft_return_true(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !17
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #21
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %16, %14 ], [ %3, %8 ]
  %19 = phi ptr [ %15, %14 ], [ %2, %8 ]
  %20 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %21 = load i8, ptr %20, align 1, !tbaa !22
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.svop, ptr %18, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  br label %27

27:                                               ; preds = %17, %24
  %28 = phi ptr [ %26, %24 ], [ %0, %17 ]
  %29 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !6
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !22
  %33 = and i8 %32, 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  store ptr %0, ptr %2, align 8, !tbaa !6
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %30, %35, %27
  %38 = phi ptr [ %18, %27 ], [ %3, %30 ], [ %36, %35 ]
  %39 = phi ptr [ %29, %27 ], [ %2, %30 ], [ %2, %35 ]
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !6
  %40 = load ptr, ptr %38, align 8, !tbaa !30
  ret ptr %40
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ftis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = add nsw i16 %4, -272
  %6 = icmp ult i16 %5, 5
  %7 = zext i16 %5 to i40
  %8 = shl nuw nsw i40 %7, 3
  %9 = lshr i40 288858403685, %8
  %10 = trunc i40 %9 to i8
  %11 = select i1 %6, i8 %10, i8 63
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = and i32 %15, 2099200
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !17
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %11) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %125

26:                                               ; preds = %23, %18, %0
  %27 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %125

31:                                               ; preds = %26
  %32 = icmp eq i16 %4, 272
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %125

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !10
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  switch i16 %4, label %65 [
    i16 273, label %42
    i16 274, label %44
    i16 275, label %51
    i16 276, label %58
  ]

42:                                               ; preds = %35
  %43 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !120
  tail call void @Perl_sv_setiv(ptr noundef %41, i64 noundef %43) #21
  br label %65

44:                                               ; preds = %35
  %45 = load i64, ptr @PL_basetime, align 8, !tbaa !44
  %46 = sitofp i64 %45 to double
  %47 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 12), align 8, !tbaa !122
  %48 = sitofp i64 %47 to double
  %49 = fsub double %46, %48
  %50 = fdiv double %49, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %50) #21
  br label %65

51:                                               ; preds = %35
  %52 = load i64, ptr @PL_basetime, align 8, !tbaa !44
  %53 = sitofp i64 %52 to double
  %54 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 11), align 8, !tbaa !121
  %55 = sitofp i64 %54 to double
  %56 = fsub double %53, %55
  %57 = fdiv double %56, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %57) #21
  br label %65

58:                                               ; preds = %35
  %59 = load i64, ptr @PL_basetime, align 8, !tbaa !44
  %60 = sitofp i64 %59 to double
  %61 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 13), align 8, !tbaa !123
  %62 = sitofp i64 %61 to double
  %63 = fsub double %60, %62
  %64 = fdiv double %63, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %64) #21
  br label %65

65:                                               ; preds = %42, %44, %51, %58, %35
  %66 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !14
  %68 = and i32 %67, 4194304
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @Perl_mg_set(ptr noundef nonnull %41) #21
  %72 = load i32, ptr %66, align 4, !tbaa !14
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %72, %70 ], [ %67, %65 ]
  %75 = and i32 %74, 65280
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %74, 255
  %78 = icmp eq i32 %77, 8
  %79 = or i1 %76, %78
  %80 = and i32 %74, 16777471
  %81 = icmp eq i32 %80, 16777226
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %123

83:                                               ; preds = %73
  %84 = and i32 %74, 1024
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %41, align 8, !tbaa !25
  %88 = icmp eq ptr %87, null
  br i1 %88, label %123, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !26
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %121, label %93

93:                                               ; preds = %89
  %94 = icmp eq i64 %91, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !16
  %98 = load i8, ptr %97, align 1, !tbaa !16
  %99 = icmp eq i8 %98, 48
  br i1 %99, label %123, label %121

100:                                              ; preds = %83
  %101 = and i32 %74, 768
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %100
  %104 = and i32 %74, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %41, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.xpviv, ptr %107, i64 0, i32 4
  %109 = load i64, ptr %108, align 8, !tbaa !16
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106, %103
  %112 = and i32 %74, 512
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %41, align 8, !tbaa !25
  %116 = getelementptr inbounds %struct.xpvnv, ptr %115, i64 0, i32 5
  %117 = load double, ptr %116, align 8, !tbaa !16
  %118 = fcmp une double %117, 0.000000e+00
  br i1 %118, label %121, label %123

119:                                              ; preds = %100
  %120 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %41, i32 noundef 0) #21
  br i1 %120, label %121, label %123

121:                                              ; preds = %119, %114, %106, %95, %89
  %122 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull %41) #23
  br label %125

123:                                              ; preds = %114, %73, %119, %111, %95, %93, %86
  %124 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull %41) #23
  br label %125

125:                                              ; preds = %121, %123, %23, %33, %29
  %126 = phi ptr [ %30, %29 ], [ %34, %33 ], [ %24, %23 ], [ %122, %121 ], [ %124, %123 ]
  ret ptr %126
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ftrowned() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = add nsw i16 %4, -277
  %6 = icmp ult i16 %5, 12
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [12 x i8], ptr @switch.table.Perl_pp_ftrowned, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i8 [ 63, %0 ], [ %10, %7 ]
  %13 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !14
  %17 = and i32 %16, 2099200
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !17
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %12) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %110

27:                                               ; preds = %24, %19, %11
  %28 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #21
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %110

32:                                               ; preds = %27
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, 511
  switch i16 %36, label %108 [
    i16 277, label %37
    i16 278, label %43
    i16 279, label %49
    i16 280, label %54
    i16 281, label %60
    i16 282, label %66
    i16 283, label %72
    i16 284, label %78
    i16 285, label %84
    i16 286, label %90
    i16 287, label %96
    i16 288, label %102
  ]

37:                                               ; preds = %32
  %38 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !118
  %39 = tail call i32 @getuid() #21
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

43:                                               ; preds = %32
  %44 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !118
  %45 = tail call i32 @geteuid() #21
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

49:                                               ; preds = %32
  %50 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !120
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

54:                                               ; preds = %32
  %55 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %56 = and i32 %55, 61440
  %57 = icmp eq i32 %56, 49152
  br i1 %57, label %58, label %108

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

60:                                               ; preds = %32
  %61 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %62 = and i32 %61, 61440
  %63 = icmp eq i32 %62, 8192
  br i1 %63, label %64, label %108

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

66:                                               ; preds = %32
  %67 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %68 = and i32 %67, 61440
  %69 = icmp eq i32 %68, 24576
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

72:                                               ; preds = %32
  %73 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %74 = and i32 %73, 61440
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

78:                                               ; preds = %32
  %79 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %80 = and i32 %79, 61440
  %81 = icmp eq i32 %80, 16384
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

84:                                               ; preds = %32
  %85 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 4096
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

90:                                               ; preds = %32
  %91 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %92 = and i32 %91, 2048
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

96:                                               ; preds = %32
  %97 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %98 = and i32 %97, 1024
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

102:                                              ; preds = %32
  %103 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %110

108:                                              ; preds = %102, %96, %90, %84, %78, %72, %66, %60, %54, %49, %43, %37, %32
  %109 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %110

110:                                              ; preds = %24, %108, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %47, %41, %30
  %111 = phi ptr [ %31, %30 ], [ %109, %108 ], [ %107, %106 ], [ %101, %100 ], [ %95, %94 ], [ %89, %88 ], [ %83, %82 ], [ %77, %76 ], [ %71, %70 ], [ %65, %64 ], [ %59, %58 ], [ %53, %52 ], [ %48, %47 ], [ %42, %41 ], [ %25, %24 ]
  ret ptr %111
}

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ftlink() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = and i32 %4, 2099200
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !17
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext 108) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13, %7, %0
  %17 = tail call i32 @Perl_my_lstat_flags(i32 noundef 0) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %29

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 40960
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %29

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %29

29:                                               ; preds = %13, %27, %25, %19
  %30 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %28, %27 ], [ %14, %13 ]
  ret ptr %30
}

; Function Attrs: optsize
declare i32 @Perl_my_lstat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_fttty() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = and i32 %6, 2099200
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br i1 %8, label %20, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !17
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext 116) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %144

18:                                               ; preds = %15
  %19 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %18, %10, %0
  %21 = phi ptr [ %19, %18 ], [ %9, %10 ], [ %9, %0 ]
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 5
  %23 = load i8, ptr %22, align 2, !tbaa !17
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.svop, ptr %21, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  br label %87

29:                                               ; preds = %20
  %30 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !14
  %34 = and i32 %33, 49152
  %35 = icmp eq i32 %34, 32768
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = and i32 %33, 255
  %38 = add nsw i32 %37, -9
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %97, label %40

40:                                               ; preds = %36, %29
  %41 = and i32 %33, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !14
  %48 = and i32 %47, 255
  %49 = icmp ult i32 %48, 11
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = and i32 %47, 2097152
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @Perl_mg_get(ptr noundef nonnull %45) #21
  %55 = load ptr, ptr %44, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !14
  br label %58

58:                                               ; preds = %50, %53
  %59 = phi i32 [ %47, %50 ], [ %57, %53 ]
  %60 = phi ptr [ %45, %50 ], [ %55, %53 ]
  %61 = and i32 %59, 49152
  %62 = icmp eq i32 %61, 32768
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = and i32 %59, 255
  %65 = add nsw i32 %64, -9
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %97, label %67

67:                                               ; preds = %58, %43, %40, %63
  %68 = load i32, ptr %32, align 4, !tbaa !14
  %69 = and i32 %68, 2098176
  %70 = icmp eq i32 %69, 1024
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load ptr, ptr %31, align 8, !tbaa !25
  %73 = getelementptr inbounds %struct.xpv, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !26
  store i64 %74, ptr %1, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  br label %81

77:                                               ; preds = %67
  %78 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %31, ptr noundef nonnull %1, i32 noundef 0) #21
  %79 = load i64, ptr %1, align 8, !tbaa !44
  %80 = load i32, ptr %32, align 4, !tbaa !14
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ %68, %71 ], [ %80, %77 ]
  %83 = phi i64 [ %74, %71 ], [ %79, %77 ]
  %84 = phi ptr [ %76, %71 ], [ %78, %77 ]
  %85 = and i32 %82, 536870912
  %86 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %84, i64 noundef %83, i32 noundef %85, i32 noundef 15) #21
  br label %87

87:                                               ; preds = %81, %26
  %88 = phi ptr [ %28, %26 ], [ %86, %81 ]
  %89 = phi ptr [ null, %26 ], [ %84, %81 ]
  %90 = icmp eq ptr %88, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !14
  %94 = and i32 %93, 255
  %95 = add nsw i32 %94, -9
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %97, label %111

97:                                               ; preds = %36, %63, %91
  %98 = phi ptr [ %88, %91 ], [ %31, %36 ], [ %60, %63 ]
  %99 = phi ptr [ %89, %91 ], [ null, %36 ], [ null, %63 ]
  %100 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.io, ptr %105, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %130

111:                                              ; preds = %91, %87, %97, %107, %103
  %112 = phi ptr [ %89, %91 ], [ %89, %87 ], [ %99, %97 ], [ %99, %107 ], [ %99, %103 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load i8, ptr %112, align 1, !tbaa !16
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !29
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %112, ptr noundef nonnull %2, ptr noundef null) #21
  %123 = load i64, ptr %2, align 8
  %124 = icmp ult i64 %123, 2147483648
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = trunc i64 %123 to i32
  br label %136

128:                                              ; preds = %114, %121, %111
  %129 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %144

130:                                              ; preds = %107
  %131 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %109) #21
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = tail call ptr @__errno_location() #24
  store i32 9, ptr %134, align 4, !tbaa !29
  %135 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %144

136:                                              ; preds = %126, %130
  %137 = phi i32 [ %127, %126 ], [ %131, %130 ]
  %138 = call i32 @isatty(i32 noundef %137) #21
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %144

142:                                              ; preds = %136
  %143 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %144

144:                                              ; preds = %15, %142, %140, %133, %128
  %145 = phi ptr [ %135, %133 ], [ %141, %140 ], [ %143, %142 ], [ %129, %128 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %145
}

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_fttext() local_unnamed_addr #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #22
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = and i32 %6, 2099200
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br i1 %8, label %25, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !17
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  %19 = icmp eq i16 %18, 291
  %20 = select i1 %19, i8 84, i8 66
  %21 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %20) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %311

23:                                               ; preds = %15
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %23, %10, %0
  %26 = phi ptr [ %24, %23 ], [ %9, %10 ], [ %9, %0 ]
  %27 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 5
  %28 = load i8, ptr %27, align 2, !tbaa !17
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.svop, ptr %26, i64 0, i32 7
  br label %76

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !22
  %36 = and i8 %35, 20
  %37 = icmp eq i8 %36, 4
  br i1 %37, label %76, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !14
  %43 = and i32 %42, 49152
  %44 = icmp eq i32 %43, 32768
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = and i32 %42, 255
  %47 = add nsw i32 %46, -9
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %80, label %49

49:                                               ; preds = %45, %38
  %50 = and i32 %42, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %174, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !14
  %57 = and i32 %56, 255
  %58 = icmp ult i32 %57, 11
  br i1 %58, label %59, label %174

59:                                               ; preds = %52
  %60 = and i32 %56, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @Perl_mg_get(ptr noundef nonnull %54) #21
  %64 = load ptr, ptr %53, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !14
  br label %67

67:                                               ; preds = %59, %62
  %68 = phi i32 [ %56, %59 ], [ %66, %62 ]
  %69 = phi ptr [ %54, %59 ], [ %64, %62 ]
  %70 = and i32 %68, 49152
  %71 = icmp eq i32 %70, 32768
  br i1 %71, label %72, label %174

72:                                               ; preds = %67
  %73 = and i32 %68, 255
  %74 = add nsw i32 %73, -9
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %80, label %174

76:                                               ; preds = %33, %31
  %77 = phi ptr [ %32, %31 ], [ @PL_defgv, %33 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %174, label %80

80:                                               ; preds = %72, %45, %76
  %81 = phi ptr [ %78, %76 ], [ %40, %45 ], [ %69, %72 ]
  %82 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load ptr, ptr @PL_statgv, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %188, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !29
  %90 = trunc i32 %89 to i8
  switch i8 %90, label %110 [
    i8 15, label %91
    i8 9, label %92
    i8 10, label %92
  ]

91:                                               ; preds = %87
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  br label %116

92:                                               ; preds = %87, %87
  %93 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %111

96:                                               ; preds = %80
  store ptr %81, ptr @PL_statgv, align 8, !tbaa !6
  %97 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  tail call void @Perl_sv_setpvn(ptr noundef %97, ptr noundef nonnull @.str.4, i64 noundef 0) #21
  %98 = load ptr, ptr @PL_statgv, align 8, !tbaa !6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !14
  %103 = and i32 %102, 255
  %104 = add nsw i32 %103, -9
  %105 = icmp ult i32 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %92, %106, %96, %100, %87
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  br label %171

111:                                              ; preds = %106, %92
  %112 = phi ptr [ %94, %92 ], [ %108, %106 ]
  %113 = getelementptr inbounds %struct.gp, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  %115 = icmp eq ptr %114, null
  br i1 %115, label %171, label %116

116:                                              ; preds = %91, %111
  %117 = phi ptr [ %85, %91 ], [ %114, %111 ]
  %118 = getelementptr inbounds %struct.io, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !16
  %120 = icmp eq ptr %119, null
  br i1 %120, label %171, label %121

121:                                              ; preds = %116
  %122 = tail call i32 @PerlIO_has_base(ptr noundef nonnull %119) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.60) #21
  br label %311

126:                                              ; preds = %121
  %127 = load ptr, ptr %118, align 8, !tbaa !16
  %128 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %127) #21
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = tail call ptr @__errno_location() #24
  store i32 9, ptr %131, align 4, !tbaa !29
  %132 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

133:                                              ; preds = %126
  %134 = tail call i32 @fstat64(i32 noundef %128, ptr noundef nonnull @PL_statcache) #21
  store i32 %134, ptr @PL_laststatval, align 4, !tbaa !29
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

138:                                              ; preds = %133
  %139 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %140 = and i32 %139, 61440
  %141 = icmp eq i32 %140, 16384
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct.op, ptr %143, i64 0, i32 4
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, 511
  %147 = icmp eq i16 %146, 291
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %311

150:                                              ; preds = %142
  %151 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %311

152:                                              ; preds = %138
  %153 = load ptr, ptr %118, align 8, !tbaa !16
  %154 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %153) #21
  %155 = icmp slt i64 %154, 1
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load ptr, ptr %118, align 8, !tbaa !16
  %158 = tail call i32 @PerlIO_getc(ptr noundef %157) #21
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %118, align 8, !tbaa !16
  %162 = tail call i32 @PerlIO_ungetc(ptr noundef %161, i32 noundef %158) #21
  br label %165

163:                                              ; preds = %156
  %164 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %311

165:                                              ; preds = %152, %160
  %166 = load ptr, ptr %118, align 8, !tbaa !16
  %167 = tail call i64 @Perl_PerlIO_get_bufsiz(ptr noundef %166) #21
  %168 = load ptr, ptr %118, align 8, !tbaa !16
  %169 = tail call ptr @Perl_PerlIO_get_base(ptr noundef %168) #21
  %170 = tail call i64 @llvm.smin.i64(i64 %167, i64 512)
  br label %237

171:                                              ; preds = %110, %116, %111
  %172 = tail call ptr @__errno_location() #24
  store i32 9, ptr %172, align 4, !tbaa !29
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %81) #21
  store i32 9, ptr %172, align 4, !tbaa !29
  %173 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

174:                                              ; preds = %72, %49, %52, %67, %76
  %175 = phi ptr [ null, %76 ], [ %40, %67 ], [ %40, %52 ], [ %40, %49 ], [ %40, %72 ]
  %176 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !14
  %179 = and i32 %178, 2098176
  %180 = icmp eq i32 %179, 1024
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !16
  br label %186

184:                                              ; preds = %174
  %185 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %175, ptr noundef null, i32 noundef 32) #21
  br label %186

186:                                              ; preds = %184, %181
  %187 = phi ptr [ %183, %181 ], [ %185, %184 ]
  tail call void @Perl_sv_setpv(ptr noundef %176, ptr noundef %187) #21
  br label %188

188:                                              ; preds = %84, %186
  %189 = phi i1 [ false, %84 ], [ true, %186 ]
  %190 = load ptr, ptr @PL_statname, align 8, !tbaa !6
  %191 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !16
  store ptr null, ptr @PL_statgv, align 8, !tbaa !6
  %193 = tail call ptr @PerlIO_open(ptr noundef %192, ptr noundef nonnull @.str) #21
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %188
  br i1 %189, label %196, label %197

196:                                              ; preds = %195
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !29
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  br label %197

197:                                              ; preds = %196, %195
  %198 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #21
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = tail call fastcc zeroext i1 @S_should_warn_nl(ptr noundef %192) #23
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.61) #21
  br label %202

202:                                              ; preds = %201, %199, %197
  %203 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

204:                                              ; preds = %188
  store i16 265, ptr @PL_laststype, align 2, !tbaa !111
  %205 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %193) #21
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %193) #21
  %209 = tail call ptr @__errno_location() #24
  store i32 9, ptr %209, align 4, !tbaa !29
  %210 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

211:                                              ; preds = %204
  %212 = tail call i32 @fstat64(i32 noundef %205, ptr noundef nonnull @PL_statcache) #21
  store i32 %212, ptr @PL_laststatval, align 4, !tbaa !29
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %193) #21
  %216 = tail call ptr @__errno_location() #24
  store i32 9, ptr %216, align 4, !tbaa !29
  %217 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef) #23
  br label %311

218:                                              ; preds = %211
  %219 = tail call i32 @PerlIO_binmode(ptr noundef nonnull %193, i32 noundef 60, i32 noundef 0, ptr noundef null) #21
  %220 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %193, ptr noundef nonnull %1, i64 noundef 512) #21
  %221 = call i32 @Perl_PerlIO_close(ptr noundef nonnull %193) #21
  %222 = icmp slt i64 %220, 1
  br i1 %222, label %223, label %237

223:                                              ; preds = %218
  %224 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !116
  %225 = and i32 %224, 61440
  %226 = icmp eq i32 %225, 16384
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %229 = getelementptr inbounds %struct.op, ptr %228, i64 0, i32 4
  %230 = load i16, ptr %229, align 8
  %231 = and i16 %230, 511
  %232 = icmp eq i16 %231, 291
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %311

235:                                              ; preds = %227, %223
  %236 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %311

237:                                              ; preds = %165, %218
  %238 = phi ptr [ %169, %165 ], [ %1, %218 ]
  %239 = phi i64 [ %170, %165 ], [ %220, %218 ]
  %240 = call zeroext i1 @Perl_is_invariant_string(ptr noundef %238, i64 noundef %239) #21
  br i1 %240, label %266, label %241

241:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %242 = call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %238, i64 noundef %239, ptr noundef nonnull %2, ptr noundef null) #21
  br i1 %242, label %253, label %243

243:                                              ; preds = %241
  %244 = load ptr, ptr %2, align 8, !tbaa !6
  %245 = load i8, ptr %244, align 1, !tbaa !16
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !16
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds i8, ptr %244, i64 %249
  %251 = getelementptr inbounds i8, ptr %238, i64 %239
  %252 = icmp ugt ptr %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %243, %241
  %254 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %255 = getelementptr inbounds %struct.op, ptr %254, i64 0, i32 4
  %256 = load i16, ptr %255, align 8
  %257 = and i16 %256, 511
  %258 = icmp eq i16 %257, 291
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %263

261:                                              ; preds = %253
  %262 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %263

263:                                              ; preds = %259, %261
  %264 = phi ptr [ %262, %261 ], [ %260, %259 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %311

265:                                              ; preds = %243
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %266

266:                                              ; preds = %265, %237
  %267 = icmp sgt i64 %239, 0
  br i1 %267, label %268, label %296

268:                                              ; preds = %266, %291
  %269 = phi i64 [ %293, %291 ], [ 0, %266 ]
  %270 = phi i32 [ %292, %291 ], [ 0, %266 ]
  %271 = phi ptr [ %294, %291 ], [ %238, %266 ]
  %272 = load i8, ptr %271, align 1, !tbaa !16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = trunc i64 %239 to i32
  %276 = add i32 %270, %275
  br label %296

277:                                              ; preds = %268
  %278 = zext i8 %272 to i64
  %279 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !29
  %281 = and i32 %280, 16448
  %282 = icmp eq i32 %281, 16448
  br i1 %282, label %291, label %283

283:                                              ; preds = %277
  %284 = and i32 %280, 17408
  %285 = icmp ne i32 %284, 17408
  %286 = icmp eq i8 %272, 11
  %287 = or i1 %286, %285
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  switch i8 %272, label %289 [
    i8 8, label %291
    i8 27, label %291
  ]

289:                                              ; preds = %288
  %290 = add nsw i32 %270, 1
  br label %291

291:                                              ; preds = %288, %288, %283, %277, %289
  %292 = phi i32 [ %270, %277 ], [ %270, %288 ], [ %290, %289 ], [ %270, %283 ], [ %270, %288 ]
  %293 = add nuw nsw i64 %269, 1
  %294 = getelementptr inbounds i8, ptr %271, i64 1
  %295 = icmp eq i64 %293, %239
  br i1 %295, label %296, label %268, !llvm.loop !125

296:                                              ; preds = %291, %266, %274
  %297 = phi i32 [ %276, %274 ], [ 0, %266 ], [ %292, %291 ]
  %298 = mul nsw i32 %297, 3
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %239, %299
  %301 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %302 = getelementptr inbounds %struct.op, ptr %301, i64 0, i32 4
  %303 = load i16, ptr %302, align 8
  %304 = and i16 %303, 511
  %305 = icmp ne i16 %304, 291
  %306 = xor i1 %300, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %296
  %308 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no) #23
  br label %311

309:                                              ; preds = %296
  %310 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes) #23
  br label %311

311:                                              ; preds = %124, %163, %150, %148, %136, %130, %263, %15, %309, %307, %235, %233, %214, %207, %202, %171
  %312 = phi ptr [ %308, %307 ], [ %310, %309 ], [ %173, %171 ], [ %210, %207 ], [ %217, %214 ], [ %234, %233 ], [ %236, %235 ], [ %203, %202 ], [ %21, %15 ], [ %264, %263 ], [ %125, %124 ], [ %164, %163 ], [ %151, %150 ], [ %149, %148 ], [ %137, %136 ], [ %132, %130 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #22
  ret ptr %312
}

; Function Attrs: optsize
declare i32 @PerlIO_has_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_get_bufsiz(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_get_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_is_invariant_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_chdir() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %78

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %1, i64 -1
  %14 = load ptr, ptr %1, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !17
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @Perl_mg_get(ptr noundef nonnull %14) #21
  %25 = load i32, ptr %19, align 4, !tbaa !14
  br label %26

26:                                               ; preds = %18, %23
  %27 = phi i32 [ %20, %18 ], [ %25, %23 ]
  %28 = and i32 %27, 49152
  %29 = icmp eq i32 %28, 32768
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = and i32 %27, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %133, label %34

34:                                               ; preds = %30, %26
  %35 = and i32 %27, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !14
  %42 = and i32 %41, 255
  %43 = icmp ult i32 %42, 11
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = and i32 %41, 2097152
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @Perl_mg_get(ptr noundef nonnull %39) #21
  %49 = load ptr, ptr %38, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !14
  br label %52

52:                                               ; preds = %44, %47
  %53 = phi i32 [ %41, %44 ], [ %51, %47 ]
  %54 = and i32 %53, 49152
  %55 = icmp eq i32 %54, 32768
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = and i32 %53, 255
  %58 = add nsw i32 %57, -9
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %133, label %60

60:                                               ; preds = %52, %37, %34, %56
  %61 = load i32, ptr %19, align 4, !tbaa !14
  %62 = and i32 %61, 2098176
  %63 = icmp eq i32 %62, 1024
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  br label %72

67:                                               ; preds = %60
  %68 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef null, i32 noundef 32) #21
  br label %72

69:                                               ; preds = %12
  %70 = tail call ptr @Perl_gv_fetchsv(ptr noundef %14, i32 noundef 0, i32 noundef 15) #21
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %133

72:                                               ; preds = %67, %64
  %73 = phi ptr [ %68, %67 ], [ %66, %64 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %73, align 1, !tbaa !16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %69, %0, %75, %72
  %79 = phi ptr [ %13, %75 ], [ %13, %72 ], [ %1, %0 ], [ %13, %69 ]
  %80 = load ptr, ptr @PL_envgv, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.gv, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = getelementptr inbounds %struct.gp, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !126
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %80, i32 noundef 12) #21
  %88 = getelementptr inbounds %struct.gv, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !16
  %90 = getelementptr inbounds %struct.gp, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !126
  br label %92

92:                                               ; preds = %78, %86
  %93 = phi ptr [ %91, %86 ], [ %84, %78 ]
  %94 = tail call ptr @Perl_hv_common(ptr noundef %93, ptr noundef null, ptr noundef nonnull @.str.62, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = tail call ptr @Perl_hv_common(ptr noundef %93, ptr noundef null, ptr noundef nonnull @.str.63, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %98 = icmp eq ptr %97, null
  br i1 %98, label %118, label %99

99:                                               ; preds = %96, %92
  %100 = phi ptr [ %94, %92 ], [ %97, %96 ]
  %101 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.op, ptr %101, i64 0, i32 6
  %103 = load i8, ptr %102, align 1, !tbaa !22
  %104 = and i8 %103, 15
  %105 = icmp eq i8 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.64) #21
  br label %107

107:                                              ; preds = %106, %99
  %108 = load ptr, ptr %100, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !14
  %111 = and i32 %110, 2098176
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !16
  br label %133

116:                                              ; preds = %107
  %117 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %108, ptr noundef null, i32 noundef 34) #21
  br label %133

118:                                              ; preds = %96
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef 0) #21
  %119 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !14
  %121 = and i32 %120, 4194304
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %125

125:                                              ; preds = %118, %123
  %126 = getelementptr inbounds ptr, ptr %79, i64 1
  store ptr %7, ptr %126, align 8, !tbaa !6
  %127 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.65) #21
  br label %130

130:                                              ; preds = %129, %125
  store ptr %126, ptr @PL_stack_sp, align 8, !tbaa !6
  %131 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %132 = load ptr, ptr %131, align 8, !tbaa !30
  br label %157

133:                                              ; preds = %113, %116, %56, %30, %75, %69
  %134 = phi i1 [ false, %69 ], [ true, %75 ], [ false, %30 ], [ false, %56 ], [ true, %116 ], [ true, %113 ]
  %135 = phi ptr [ null, %69 ], [ %73, %75 ], [ null, %30 ], [ null, %56 ], [ %117, %116 ], [ %115, %113 ]
  %136 = phi ptr [ %13, %69 ], [ %13, %75 ], [ %13, %30 ], [ %13, %56 ], [ %79, %116 ], [ %79, %113 ]
  %137 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.65) #21
  br label %140

140:                                              ; preds = %133, %139
  br i1 %134, label %143, label %141

141:                                              ; preds = %140
  %142 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.66) #21
  br label %157

143:                                              ; preds = %140
  %144 = tail call i32 @chdir(ptr noundef %135) #21
  %145 = icmp sgt i32 %144, -1
  %146 = zext i1 %145 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %146) #21
  %147 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !14
  %149 = and i32 %148, 4194304
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %143
  %152 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %153

153:                                              ; preds = %143, %151
  %154 = getelementptr inbounds ptr, ptr %136, i64 1
  store ptr %7, ptr %154, align 8, !tbaa !6
  store ptr %154, ptr @PL_stack_sp, align 8, !tbaa !6
  %155 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %156 = load ptr, ptr %155, align 8, !tbaa !30
  br label %157

157:                                              ; preds = %130, %153, %141
  %158 = phi ptr [ %142, %141 ], [ %156, %153 ], [ %132, %130 ]
  ret ptr %158
}

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @chdir(ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_chown() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 511
  %17 = zext nneg i16 %16 to i32
  %18 = tail call i32 @Perl_apply(i32 noundef %17, ptr noundef %7, ptr noundef %1) #21
  %19 = sext i32 %18 to i64
  tail call void @Perl_sv_setiv(ptr noundef %13, i64 noundef %19) #21
  %20 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = and i32 %21, 4194304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %0
  %25 = tail call i32 @Perl_mg_set(ptr noundef nonnull %13) #21
  br label %26

26:                                               ; preds = %0, %24
  %27 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %28 = ptrtoint ptr %27 to i64
  %29 = ptrtoint ptr %7 to i64
  %30 = sub i64 %28, %29
  %31 = icmp slt i64 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call ptr @Perl_stack_grow(ptr noundef %7, ptr noundef %7, i64 noundef 1) #21
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi ptr [ %33, %32 ], [ %7, %26 ]
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %13, ptr %36, align 8, !tbaa !6
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !6
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @Perl_apply(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_chroot() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.67) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_rename() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %9, ptr @PL_Sv, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  br label %19

17:                                               ; preds = %0
  %18 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef null, i32 noundef 34) #21
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  br label %31

29:                                               ; preds = %19
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef null, i32 noundef 34) #21
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ]
  %33 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.68) #21
  br label %36

36:                                               ; preds = %31, %35
  %37 = tail call i32 @stat64(ptr noundef %32, ptr noundef nonnull @PL_statbuf) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = tail call i32 @Perl_same_dirent(ptr noundef %20, ptr noundef %32) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = tail call i32 @geteuid() #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = tail call i32 @stat64(ptr noundef %20, ptr noundef nonnull @PL_statbuf) #21
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !116
  %50 = and i32 %49, 61440
  %51 = icmp eq i32 %50, 16384
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %45, %42
  %53 = tail call i32 @unlink(ptr noundef %20) #21
  br label %54

54:                                               ; preds = %52, %48
  %55 = tail call i32 @link(ptr noundef %32, ptr noundef %20) #21
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call i32 @unlink(ptr noundef %32) #21
  br label %59

59:                                               ; preds = %39, %36, %54, %57
  %60 = phi i32 [ %37, %36 ], [ %55, %54 ], [ %58, %57 ], [ 1, %39 ]
  %61 = icmp sgt i32 %60, -1
  %62 = zext i1 %61 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %62) #21
  %63 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !14
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %69

69:                                               ; preds = %59, %67
  store ptr %7, ptr %8, align 8, !tbaa !6
  store ptr %8, ptr @PL_stack_sp, align 8, !tbaa !6
  %70 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  ret ptr %71
}

; Function Attrs: optsize
declare i32 @Perl_same_dirent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_link() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_readlink() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  store ptr @PL_sv_undef, ptr %10, align 8, !tbaa !6
  store ptr %10, ptr @PL_stack_sp, align 8, !tbaa !6
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_mkdir() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %9 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !22
  %11 = and i8 %10, 14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %15, label %28, label %17

17:                                               ; preds = %13
  store ptr %14, ptr @PL_Sv, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = and i32 %19, 2097408
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr %14, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !16
  br label %28

26:                                               ; preds = %17
  %27 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %14, i32 noundef 2) #21
  br label %28

28:                                               ; preds = %13, %0, %22, %26
  %29 = phi ptr [ %16, %22 ], [ %16, %26 ], [ %2, %0 ], [ %16, %13 ]
  %30 = phi i64 [ %25, %22 ], [ %27, %26 ], [ 511, %0 ], [ 511, %13 ]
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %29, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load ptr, ptr %32, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !26
  store i64 %40, ptr %1, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  br label %46

43:                                               ; preds = %28
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %32, ptr noundef nonnull %1, i32 noundef 34) #21
  %45 = load i64, ptr %1, align 8, !tbaa !44
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i64 [ %45, %43 ], [ %40, %37 ]
  %48 = phi ptr [ %44, %43 ], [ %42, %37 ]
  %49 = icmp ugt i64 %47, 1
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = add i64 %47, -1
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !16
  %54 = icmp eq i8 %53, 47
  br i1 %54, label %55, label %67

55:                                               ; preds = %50, %59
  %56 = phi i64 [ %57, %59 ], [ %47, %50 ]
  %57 = add i64 %56, -1
  store i64 %57, ptr %1, align 8, !tbaa !44
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = add i64 %56, -2
  %61 = getelementptr inbounds i8, ptr %48, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !16
  %63 = icmp eq i8 %62, 47
  br i1 %63, label %55, label %64, !llvm.loop !127

64:                                               ; preds = %55, %59
  %65 = trunc i64 %57 to i32
  %66 = call ptr @Perl_savepvn(ptr noundef nonnull %48, i32 noundef %65) #21
  br label %67

67:                                               ; preds = %64, %50, %46
  %68 = phi ptr [ %66, %64 ], [ %48, %50 ], [ %48, %46 ]
  %69 = phi i1 [ true, %64 ], [ false, %50 ], [ false, %46 ]
  %70 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.69) #21
  br label %73

73:                                               ; preds = %72, %67
  %74 = call i32 @mkdir(ptr noundef %68, i32 noundef %31) #21
  %75 = icmp sgt i32 %74, -1
  %76 = zext i1 %75 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %76) #21
  %77 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !14
  %79 = and i32 %78, 4194304
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = call i32 @Perl_mg_set(ptr noundef nonnull %8) #21
  br label %83

83:                                               ; preds = %73, %81
  store ptr %8, ptr %29, align 8, !tbaa !6
  br i1 %69, label %84, label %85

84:                                               ; preds = %83
  call void @Perl_safesysfree(ptr noundef %68) #21
  br label %85

85:                                               ; preds = %84, %83
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !6
  %86 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %87 = load ptr, ptr %86, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %87
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_rmdir() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %9 = load ptr, ptr %2, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load ptr, ptr %9, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.xpv, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !26
  store i64 %17, ptr %1, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  br label %23

20:                                               ; preds = %0
  %21 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef nonnull %1, i32 noundef 34) #21
  %22 = load i64, ptr %1, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i64 [ %22, %20 ], [ %17, %14 ]
  %25 = phi ptr [ %21, %20 ], [ %19, %14 ]
  %26 = icmp ugt i64 %24, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = add i64 %24, -1
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %31 = icmp eq i8 %30, 47
  br i1 %31, label %32, label %44

32:                                               ; preds = %27, %36
  %33 = phi i64 [ %34, %36 ], [ %24, %27 ]
  %34 = add i64 %33, -1
  store i64 %34, ptr %1, align 8, !tbaa !44
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = add i64 %33, -2
  %38 = getelementptr inbounds i8, ptr %25, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !16
  %40 = icmp eq i8 %39, 47
  br i1 %40, label %32, label %41, !llvm.loop !128

41:                                               ; preds = %32, %36
  %42 = trunc i64 %34 to i32
  %43 = call ptr @Perl_savepvn(ptr noundef nonnull %25, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %41, %27, %23
  %45 = phi ptr [ %43, %41 ], [ %25, %27 ], [ %25, %23 ]
  %46 = phi i1 [ true, %41 ], [ false, %27 ], [ false, %23 ]
  %47 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.70) #21
  br label %50

50:                                               ; preds = %49, %44
  %51 = call i32 @rmdir(ptr noundef %45) #21
  %52 = icmp sgt i32 %51, -1
  %53 = zext i1 %52 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %53) #21
  %54 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !14
  %56 = and i32 %55, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = call i32 @Perl_mg_set(ptr noundef nonnull %8) #21
  br label %60

60:                                               ; preds = %50, %58
  store ptr %8, ptr %2, align 8, !tbaa !6
  br i1 %46, label %61, label %62

61:                                               ; preds = %60
  call void @Perl_safesysfree(ptr noundef %45) #21
  br label %62

62:                                               ; preds = %61, %60
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %64
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_open_dir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.71) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_readdir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.72) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_telldir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.73) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_seekdir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.74) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_rewinddir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.75) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_closedir() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.76) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_fork() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %15

15:                                               ; preds = %0, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %0 ]
  %17 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #21
  %18 = tail call i32 @Perl_my_fork() #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  store i32 0, ptr @PL_sig_pending, align 4, !tbaa !29
  %21 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %21, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %24, i8 0, i64 60, i1 false), !tbaa !29
  br label %29

25:                                               ; preds = %15
  %26 = icmp slt i32 %18, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr @PL_sv_undef, ptr %28, align 8, !tbaa !6
  br label %39

29:                                               ; preds = %23, %20, %25
  %30 = zext nneg i32 %18 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %30) #21
  %31 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = and i32 %32, 4194304
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %37

37:                                               ; preds = %29, %35
  %38 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr %7, ptr %38, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %28, %27 ], [ %38, %37 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !6
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  ret ptr %42
}

; Function Attrs: optsize
declare i32 @Perl_my_fork() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_wait() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  %9 = load i32, ptr @PL_signals, align 4, !tbaa !29
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = call i32 @Perl_wait4pid(i32 noundef -1, ptr noundef nonnull %1, i32 noundef 0) #21
  %13 = icmp eq i32 %12, -1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %28

15:                                               ; preds = %0
  %16 = tail call ptr @__errno_location() #24
  br label %17

17:                                               ; preds = %15, %25
  %18 = load i32, ptr %16, align 4, !tbaa !29
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, ptr @PL_sig_pending, align 4, !tbaa !29
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  call void %24() #21
  br label %25

25:                                               ; preds = %20, %23
  %26 = call i32 @Perl_wait4pid(i32 noundef -1, ptr noundef nonnull %1, i32 noundef 0) #21
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %17, label %28, !llvm.loop !129

28:                                               ; preds = %25, %0
  %29 = phi i32 [ %12, %0 ], [ %26, %25 ]
  %30 = freeze i32 %29
  %31 = icmp sgt i32 %30, 0
  %32 = load i32, ptr %1, align 4
  br i1 %31, label %35, label %33

33:                                               ; preds = %17, %28
  %34 = phi i32 [ %30, %28 ], [ -1, %17 ]
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  br label %47

35:                                               ; preds = %28
  store i32 %32, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  %36 = icmp eq i32 %32, -1
  br i1 %36, label %47, label %37

37:                                               ; preds = %35
  %38 = and i32 %32, 127
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %32, 65280
  %41 = select i1 %39, i32 %40, i32 0
  %42 = shl nuw nsw i32 %38, 24
  %43 = add nuw i32 %42, 16777216
  %44 = icmp sgt i32 %43, 33554431
  %45 = select i1 %44, i32 %38, i32 0
  %46 = or disjoint i32 %45, %41
  br label %47

47:                                               ; preds = %33, %35, %37
  %48 = phi i32 [ %30, %37 ], [ %30, %35 ], [ %34, %33 ]
  %49 = phi i32 [ %46, %37 ], [ -1, %35 ], [ -1, %33 ]
  store i32 %49, ptr @PL_statusvalue, align 4, !tbaa !29
  %50 = sext i32 %48 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %50) #21
  %51 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !14
  %53 = and i32 %52, 4194304
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 @Perl_mg_set(ptr noundef nonnull %8) #21
  br label %57

57:                                               ; preds = %47, %55
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %2 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #21
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %2, %57 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %8, ptr %67, align 8, !tbaa !6
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !6
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %69 = load ptr, ptr %68, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret ptr %69
}

; Function Attrs: optsize
declare i32 @Perl_wait4pid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_waitpid() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  store ptr %10, ptr @PL_Sv, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = and i32 %12, 2097408
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load ptr, ptr %10, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.xpviv, ptr %16, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !16
  br label %21

19:                                               ; preds = %0
  %20 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #21
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %18, %15 ], [ %20, %19 ]
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %9, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load ptr, ptr %24, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.xpviv, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !16
  br label %35

33:                                               ; preds = %21
  %34 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #21
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %32, %29 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  %38 = load i32, ptr @PL_signals, align 4, !tbaa !29
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = call i32 @Perl_wait4pid(i32 noundef %37, ptr noundef nonnull %1, i32 noundef %23) #21
  %42 = icmp eq i32 %41, -1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = tail call ptr @__errno_location() #24
  br label %46

46:                                               ; preds = %44, %54
  %47 = load i32, ptr %45, align 4, !tbaa !29
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, ptr @PL_sig_pending, align 4, !tbaa !29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  call void %53() #21
  br label %54

54:                                               ; preds = %49, %52
  %55 = call i32 @Perl_wait4pid(i32 noundef %37, ptr noundef nonnull %1, i32 noundef %23) #21
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %46, label %57, !llvm.loop !130

57:                                               ; preds = %54, %35
  %58 = phi i32 [ %41, %35 ], [ %55, %54 ]
  %59 = freeze i32 %58
  %60 = icmp sgt i32 %59, 0
  %61 = load i32, ptr %1, align 4
  br i1 %60, label %64, label %62

62:                                               ; preds = %46, %57
  %63 = phi i32 [ %59, %57 ], [ -1, %46 ]
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  br label %76

64:                                               ; preds = %57
  store i32 %61, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  %65 = icmp eq i32 %61, -1
  br i1 %65, label %76, label %66

66:                                               ; preds = %64
  %67 = and i32 %61, 127
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %61, 65280
  %70 = select i1 %68, i32 %69, i32 0
  %71 = shl nuw nsw i32 %67, 24
  %72 = add nuw i32 %71, 16777216
  %73 = icmp sgt i32 %72, 33554431
  %74 = select i1 %73, i32 %67, i32 0
  %75 = or disjoint i32 %74, %70
  br label %76

76:                                               ; preds = %62, %64, %66
  %77 = phi i32 [ %59, %66 ], [ %59, %64 ], [ %63, %62 ]
  %78 = phi i32 [ %75, %66 ], [ -1, %64 ], [ -1, %62 ]
  store i32 %78, ptr @PL_statusvalue, align 4, !tbaa !29
  %79 = sext i32 %77 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %79) #21
  %80 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !14
  %82 = and i32 %81, 4194304
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = call i32 @Perl_mg_set(ptr noundef nonnull %8) #21
  br label %86

86:                                               ; preds = %76, %84
  store ptr %8, ptr %9, align 8, !tbaa !6
  store ptr %9, ptr @PL_stack_sp, align 8, !tbaa !6
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %88 = load ptr, ptr %87, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_system() local_unnamed_addr #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %8 = load i32, ptr %6, align 4, !tbaa !29
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.op, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %0
  tail call void @Perl_taint_env() #21
  br label %20

20:                                               ; preds = %32, %19
  %21 = phi ptr [ %10, %19 ], [ %22, %32 ]
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = icmp ugt ptr %22, %4
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !14
  %28 = and i32 %27, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %25, ptr noundef null, i32 noundef 34) #21
  br label %32

32:                                               ; preds = %24, %30
  %33 = load i8, ptr @PL_tainted, align 1, !tbaa !18, !range !20, !noundef !21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %20, label %35, !llvm.loop !131

35:                                               ; preds = %32, %20
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %37 = getelementptr inbounds ptr, ptr %36, i64 %9
  %38 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.77) #21
  br label %41

41:                                               ; preds = %40, %35, %0
  %42 = phi ptr [ %37, %40 ], [ %37, %35 ], [ %10, %0 ]
  %43 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %44 = call i32 @pipe(ptr noundef nonnull %1) #21
  %45 = icmp sgt i32 %44, -1
  %46 = zext i1 %45 to i32
  %47 = call i32 @Perl_my_fork() #21
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %87

49:                                               ; preds = %41
  %50 = tail call ptr @__errno_location() #24
  br label %51

51:                                               ; preds = %49, %83
  %52 = load i32, ptr %50, align 4, !tbaa !29
  %53 = icmp eq i32 %52, 11
  br i1 %53, label %83, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %56 = getelementptr inbounds ptr, ptr %55, i64 %9
  call void @Perl_sv_setiv(ptr noundef %16, i64 noundef -1) #21
  %57 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !14
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = call i32 @Perl_mg_set(ptr noundef nonnull %16) #21
  br label %63

63:                                               ; preds = %54, %61
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %56 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call ptr @Perl_stack_grow(ptr noundef %56, ptr noundef %56, i64 noundef 1) #21
  br label %71

71:                                               ; preds = %63, %69
  %72 = phi ptr [ %70, %69 ], [ %56, %63 ]
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %16, ptr %73, align 8, !tbaa !6
  br i1 %45, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, ptr %1, align 4, !tbaa !29
  %76 = call i32 @close(i32 noundef %75) #21
  %77 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !29
  %79 = call i32 @close(i32 noundef %78) #21
  br label %80

80:                                               ; preds = %74, %71
  store ptr %73, ptr @PL_stack_sp, align 8, !tbaa !6
  %81 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %82 = load ptr, ptr %81, align 8, !tbaa !30
  br label %219

83:                                               ; preds = %51
  %84 = call i32 @sleep(i32 noundef 5) #21
  %85 = call i32 @Perl_my_fork() #21
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %51, label %87, !llvm.loop !132

87:                                               ; preds = %83, %41
  %88 = phi i32 [ %47, %41 ], [ %85, %83 ]
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %168

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  br i1 %45, label %91, label %95

91:                                               ; preds = %90
  %92 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !29
  %94 = call i32 @close(i32 noundef %93) #21
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %99
  %97 = call i32 @Perl_wait4pid(i32 noundef %88, ptr noundef nonnull %2, i32 noundef 0) #21
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = tail call ptr @__errno_location() #24
  %101 = load i32, ptr %100, align 4, !tbaa !29
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %96, label %103, !llvm.loop !133

103:                                              ; preds = %99
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  br label %117

104:                                              ; preds = %96
  %105 = load i32, ptr %2, align 4
  store i32 %105, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = and i32 %105, 127
  %109 = icmp eq i32 %108, 0
  %110 = and i32 %105, 65280
  %111 = select i1 %109, i32 %110, i32 0
  %112 = shl nuw nsw i32 %108, 24
  %113 = add nuw i32 %112, 16777216
  %114 = icmp sgt i32 %113, 33554431
  %115 = select i1 %114, i32 %108, i32 0
  %116 = or disjoint i32 %115, %111
  br label %117

117:                                              ; preds = %103, %104, %107
  %118 = phi i32 [ %116, %107 ], [ -1, %104 ], [ -1, %103 ]
  store i32 %118, ptr @PL_statusvalue, align 4, !tbaa !29
  call void @Perl_do_execfree() #21
  %119 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %120 = getelementptr inbounds ptr, ptr %119, i64 %9
  br i1 %45, label %121, label %144

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  br label %126

122:                                              ; preds = %126
  %123 = trunc i64 %132 to i32
  %124 = add i32 %127, %123
  %125 = icmp ult i32 %124, 4
  br i1 %125, label %126, label %134, !llvm.loop !134

126:                                              ; preds = %121, %122
  %127 = phi i32 [ 0, %121 ], [ %124, %122 ]
  %128 = zext nneg i32 %127 to i64
  %129 = load i32, ptr %1, align 4, !tbaa !29
  %130 = getelementptr inbounds i8, ptr %3, i64 %128
  %131 = sub nuw nsw i64 4, %128
  %132 = call i64 @read(i32 noundef %129, ptr noundef nonnull %130, i64 noundef %131) #21
  %133 = icmp slt i64 %132, 1
  br i1 %133, label %134, label %122

134:                                              ; preds = %126, %122
  %135 = phi i32 [ %127, %126 ], [ %124, %122 ]
  %136 = load i32, ptr %1, align 4, !tbaa !29
  %137 = call i32 @close(i32 noundef %136) #21
  switch i32 %135, label %142 [
    i32 0, label %141
    i32 4, label %138
  ]

138:                                              ; preds = %134
  %139 = load i32, ptr %3, align 4, !tbaa !29
  %140 = tail call ptr @__errno_location() #24
  store i32 %139, ptr %140, align 4, !tbaa !29
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !29
  store i32 -1, ptr @PL_statusvalue, align 4, !tbaa !29
  br label %141

141:                                              ; preds = %134, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %144

142:                                              ; preds = %134
  %143 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.78, i32 noundef %135) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %166

144:                                              ; preds = %141, %117
  %145 = load i32, ptr @PL_statusvalue, align 4, !tbaa !29
  %146 = sext i32 %145 to i64
  call void @Perl_sv_setiv(ptr noundef %16, i64 noundef %146) #21
  %147 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !14
  %149 = and i32 %148, 4194304
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %144
  %152 = call i32 @Perl_mg_set(ptr noundef nonnull %16) #21
  br label %153

153:                                              ; preds = %144, %151
  %154 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %155 = ptrtoint ptr %154 to i64
  %156 = ptrtoint ptr %120 to i64
  %157 = sub i64 %155, %156
  %158 = icmp slt i64 %157, 8
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call ptr @Perl_stack_grow(ptr noundef %120, ptr noundef %120, i64 noundef 1) #21
  br label %161

161:                                              ; preds = %153, %159
  %162 = phi ptr [ %160, %159 ], [ %120, %153 ]
  %163 = getelementptr inbounds ptr, ptr %162, i64 1
  store ptr %16, ptr %163, align 8, !tbaa !6
  store ptr %163, ptr @PL_stack_sp, align 8, !tbaa !6
  %164 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %165 = load ptr, ptr %164, align 8, !tbaa !30
  br label %166

166:                                              ; preds = %142, %161
  %167 = phi ptr [ %165, %161 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  br label %219

168:                                              ; preds = %87
  br i1 %45, label %169, label %180

169:                                              ; preds = %168
  %170 = load i32, ptr %1, align 4, !tbaa !29
  %171 = call i32 @close(i32 noundef %170) #21
  %172 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !29
  %174 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %173, i32 noundef 2, i32 noundef 1) #21
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr @PL_sv_undef, ptr %177, align 8, !tbaa !6
  store ptr %177, ptr @PL_stack_sp, align 8, !tbaa !6
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %179 = load ptr, ptr %178, align 8, !tbaa !30
  br label %219

180:                                              ; preds = %169, %168
  %181 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %182 = getelementptr inbounds %struct.op, ptr %181, i64 0, i32 5
  %183 = load i8, ptr %182, align 2, !tbaa !17
  %184 = and i8 %183, 64
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds ptr, ptr %42, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !29
  %191 = call zeroext i1 @Perl_do_aexec5(ptr noundef %188, ptr noundef nonnull %187, ptr noundef %4, i32 noundef %190, i32 noundef %46) #21
  br label %218

192:                                              ; preds = %180
  %193 = ptrtoint ptr %4 to i64
  %194 = ptrtoint ptr %42 to i64
  %195 = sub i64 %193, %194
  %196 = icmp eq i64 %195, 8
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %199 = load i32, ptr %198, align 4, !tbaa !29
  %200 = call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef %42, ptr noundef %4, i32 noundef %199, i32 noundef %46) #21
  br label %218

201:                                              ; preds = %192
  %202 = load ptr, ptr %4, align 8, !tbaa !6
  %203 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %202, i32 noundef 1538) #21
  store ptr %203, ptr @PL_Sv, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct.sv, ptr %203, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !14
  %206 = and i32 %205, 2098176
  %207 = icmp eq i32 %206, 1024
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.sv, ptr %203, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !16
  br label %213

211:                                              ; preds = %201
  %212 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %203, ptr noundef null, i32 noundef 2) #21
  br label %213

213:                                              ; preds = %211, %208
  %214 = phi ptr [ %210, %208 ], [ %212, %211 ]
  %215 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !29
  %217 = call zeroext i1 @Perl_do_exec3(ptr noundef %214, i32 noundef %216, i32 noundef %46) #21
  br label %218

218:                                              ; preds = %197, %213, %186
  call void @_exit(i32 noundef -1) #26
  unreachable

219:                                              ; preds = %176, %166, %80
  %220 = phi ptr [ %82, %80 ], [ %167, %166 ], [ %179, %176 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %220
}

; Function Attrs: optsize
declare void @Perl_taint_env() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @pipe(ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_do_execfree() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_exec3(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_exec() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %0
  tail call void @Perl_taint_env() #21
  br label %17

17:                                               ; preds = %29, %16
  %18 = phi ptr [ %7, %16 ], [ %19, %29 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = icmp ugt ptr %19, %1
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !14
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef null, i32 noundef 34) #21
  br label %29

29:                                               ; preds = %21, %27
  %30 = load i8, ptr @PL_tainted, align 1, !tbaa !18, !range !20, !noundef !21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %17, label %32, !llvm.loop !135

32:                                               ; preds = %29, %17
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %34 = getelementptr inbounds ptr, ptr %33, i64 %6
  %35 = load i8, ptr @PL_tainting, align 1, !tbaa !18, !range !20, !noundef !21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.79) #21
  br label %38

38:                                               ; preds = %37, %32, %0
  %39 = phi ptr [ %34, %37 ], [ %34, %32 ], [ %7, %0 ]
  %40 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #21
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 5
  %43 = load i8, ptr %42, align 2, !tbaa !17
  %44 = and i8 %43, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds ptr, ptr %39, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = tail call zeroext i1 @Perl_do_aexec5(ptr noundef %48, ptr noundef nonnull %47, ptr noundef %1, i32 noundef 0, i32 noundef 0) #21
  br label %72

50:                                               ; preds = %38
  %51 = ptrtoint ptr %1 to i64
  %52 = ptrtoint ptr %39 to i64
  %53 = sub i64 %51, %52
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef %39, ptr noundef %1, i32 noundef 0, i32 noundef 0) #21
  br label %72

57:                                               ; preds = %50
  %58 = load ptr, ptr %1, align 8, !tbaa !6
  %59 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %58, i32 noundef 1538) #21
  store ptr %59, ptr @PL_Sv, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !14
  %62 = and i32 %61, 2098176
  %63 = icmp eq i32 %62, 1024
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  br label %69

67:                                               ; preds = %57
  %68 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %59, ptr noundef null, i32 noundef 2) #21
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %66, %64 ], [ %68, %67 ]
  %71 = tail call zeroext i1 @Perl_do_exec3(ptr noundef %70, i32 noundef 0, i32 noundef 0) #21
  br label %72

72:                                               ; preds = %55, %69, %46
  %73 = phi i1 [ %49, %46 ], [ %56, %55 ], [ %71, %69 ]
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %75 = getelementptr inbounds ptr, ptr %74, i64 %6
  %76 = zext i1 %73 to i64
  tail call void @Perl_sv_setiv(ptr noundef %13, i64 noundef %76) #21
  %77 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !14
  %79 = and i32 %78, 4194304
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = tail call i32 @Perl_mg_set(ptr noundef nonnull %13) #21
  br label %83

83:                                               ; preds = %72, %81
  %84 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %85 = ptrtoint ptr %84 to i64
  %86 = ptrtoint ptr %75 to i64
  %87 = sub i64 %85, %86
  %88 = icmp slt i64 %87, 8
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = tail call ptr @Perl_stack_grow(ptr noundef %75, ptr noundef %75, i64 noundef 1) #21
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi ptr [ %90, %89 ], [ %75, %83 ]
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  store ptr %13, ptr %93, align 8, !tbaa !6
  store ptr %93, ptr @PL_stack_sp, align 8, !tbaa !6
  %94 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  ret ptr %95
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_getppid() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.80) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_getpgrp() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.81) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_setpgrp() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.82) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_getpriority() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.83) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_setpriority() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.84) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_time() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call i64 @time(ptr noundef null) #21
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %8) #21
  %9 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #21
  br label %15

15:                                               ; preds = %0, %13
  %16 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ %1, %15 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %7, ptr %25, align 8, !tbaa !6
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !6
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  ret ptr %27
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_tms() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.85) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gmtime() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TM64, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #22
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 511
  %9 = icmp eq i16 %8, 324
  %10 = select i1 %9, ptr @.str.86, ptr @.str.87
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !22
  %13 = and i8 %12, 15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr %4, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds ptr, ptr %4, i64 -1
  br i1 %17, label %19, label %24

19:                                               ; preds = %15, %0
  %20 = phi ptr [ %4, %0 ], [ %18, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %21 = call i64 @time(ptr noundef nonnull %3) #21
  %22 = load i64, ptr %3, align 8, !tbaa !44
  store i64 %22, ptr %1, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %23 = sitofp i64 %22 to double
  br label %44

24:                                               ; preds = %15
  store ptr %16, ptr @PL_Sv, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = and i32 %26, 2097664
  %28 = icmp eq i32 %27, 512
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr %16, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.xpvnv, ptr %30, i64 0, i32 5
  %32 = load double, ptr %31, align 8, !tbaa !16
  br label %35

33:                                               ; preds = %24
  %34 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %16, i32 noundef 2) #21
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi double [ %32, %29 ], [ %34, %33 ]
  %37 = tail call double @llvm.floor.f64(double %36)
  %38 = fcmp uno double %37, 0.000000e+00
  %39 = fptosi double %37 to i64
  store i64 %39, ptr %1, align 8, !tbaa !44
  %40 = sitofp i64 %39 to double
  %41 = fcmp une double %37, %40
  %42 = select i1 %38, i1 true, i1 %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.107, ptr noundef nonnull %10, double noundef %37) #21
  br i1 %38, label %64, label %44

44:                                               ; preds = %35, %43, %19
  %45 = phi double [ %40, %35 ], [ %40, %43 ], [ %23, %19 ]
  %46 = phi i64 [ %39, %35 ], [ %39, %43 ], [ %22, %19 ]
  %47 = phi ptr [ %18, %35 ], [ %18, %43 ], [ %20, %19 ]
  %48 = fcmp olt double %45, 0xC36E18574F2E3538
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = fcmp ogt double %45, 0x436E1853B0D11638
  br i1 %50, label %62, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.op, ptr %52, i64 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 511
  %56 = icmp eq i16 %55, 324
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = call fastcc ptr @S_gmtime64_r(ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  br label %67

59:                                               ; preds = %51
  %60 = call fastcc ptr @S_localtime64_r(ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %67

62:                                               ; preds = %49, %44
  %63 = phi ptr [ @.str.108, %44 ], [ @.str.107, %49 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull %63, ptr noundef nonnull %10, i64 noundef %46) #21
  br label %64

64:                                               ; preds = %62, %43, %59
  %65 = phi i64 [ %46, %59 ], [ %39, %43 ], [ %46, %62 ]
  %66 = phi ptr [ %47, %59 ], [ %18, %43 ], [ %47, %62 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.109, ptr noundef nonnull %10, i64 noundef %65) #21
  br label %67

67:                                               ; preds = %57, %64, %59
  %68 = phi i1 [ true, %64 ], [ false, %59 ], [ false, %57 ]
  %69 = phi ptr [ %66, %64 ], [ %47, %59 ], [ %47, %57 ]
  %70 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.op, ptr %70, i64 0, i32 5
  %72 = load i8, ptr %71, align 2, !tbaa !17
  %73 = and i8 %72, 3
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = zext nneg i8 %73 to i32
  br label %79

77:                                               ; preds = %67
  %78 = call i32 @Perl_block_gimme() #21
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %123, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %84 = ptrtoint ptr %83 to i64
  %85 = ptrtoint ptr %69 to i64
  %86 = sub i64 %84, %85
  %87 = icmp slt i64 %86, 8
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call ptr @Perl_stack_grow(ptr noundef %69, ptr noundef %69, i64 noundef 1) #21
  br label %90

90:                                               ; preds = %82, %88
  %91 = phi ptr [ %89, %88 ], [ %69, %82 ]
  br i1 %68, label %92, label %94

92:                                               ; preds = %90
  %93 = getelementptr inbounds ptr, ptr %91, i64 1
  store ptr @PL_sv_undef, ptr %93, align 8, !tbaa !6
  br label %185

94:                                               ; preds = %90
  %95 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %96 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.op, ptr %96, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !10
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %91, i64 1
  store ptr %100, ptr %101, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 6
  %103 = load i32, ptr %102, align 4, !tbaa !136
  %104 = sext i32 %103 to i64
  %105 = shl i64 %104, 2
  %106 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_pp_gmtime, i64 %105)
  %107 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !138
  %109 = sext i32 %108 to i64
  %110 = shl i64 %109, 2
  %111 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_pp_gmtime.115, i64 %110)
  %112 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !139
  %114 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !140
  %116 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !141
  %118 = load i32, ptr %2, align 4, !tbaa !142
  %119 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 5
  %120 = load i32, ptr %119, align 4, !tbaa !143
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, 1900
  call void (ptr, ptr, ...) @Perl_sv_setpvf_mg(ptr noundef %100, ptr noundef nonnull @.str.110, ptr noundef %106, ptr noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %118, i64 noundef %122) #21
  br label %185

123:                                              ; preds = %79
  br i1 %68, label %185, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %126 = ptrtoint ptr %125 to i64
  %127 = ptrtoint ptr %69 to i64
  %128 = sub i64 %126, %127
  %129 = icmp slt i64 %128, 72
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call ptr @Perl_stack_grow(ptr noundef %69, ptr noundef %69, i64 noundef 9) #21
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi ptr [ %131, %130 ], [ %69, %124 ]
  %134 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !44
  %135 = add nsw i64 %134, 9
  %136 = load i64, ptr @PL_tmps_max, align 8, !tbaa !44
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = call i64 @Perl_tmps_grow_p(i64 noundef %135) #21
  br label %140

140:                                              ; preds = %132, %138
  %141 = call ptr @Perl_sv_newmortal() #21
  %142 = getelementptr inbounds ptr, ptr %133, i64 1
  store ptr %141, ptr %142, align 8, !tbaa !6
  %143 = load i32, ptr %2, align 4, !tbaa !142
  %144 = sext i32 %143 to i64
  call void @Perl_sv_setiv(ptr noundef %141, i64 noundef %144) #21
  %145 = call ptr @Perl_sv_newmortal() #21
  %146 = getelementptr inbounds ptr, ptr %133, i64 2
  store ptr %145, ptr %146, align 8, !tbaa !6
  %147 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !141
  %149 = sext i32 %148 to i64
  call void @Perl_sv_setiv(ptr noundef %145, i64 noundef %149) #21
  %150 = call ptr @Perl_sv_newmortal() #21
  %151 = getelementptr inbounds ptr, ptr %133, i64 3
  store ptr %150, ptr %151, align 8, !tbaa !6
  %152 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !140
  %154 = sext i32 %153 to i64
  call void @Perl_sv_setiv(ptr noundef %150, i64 noundef %154) #21
  %155 = call ptr @Perl_sv_newmortal() #21
  %156 = getelementptr inbounds ptr, ptr %133, i64 4
  store ptr %155, ptr %156, align 8, !tbaa !6
  %157 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !139
  %159 = sext i32 %158 to i64
  call void @Perl_sv_setiv(ptr noundef %155, i64 noundef %159) #21
  %160 = call ptr @Perl_sv_newmortal() #21
  %161 = getelementptr inbounds ptr, ptr %133, i64 5
  store ptr %160, ptr %161, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 4
  %163 = load i32, ptr %162, align 4, !tbaa !138
  %164 = sext i32 %163 to i64
  call void @Perl_sv_setiv(ptr noundef %160, i64 noundef %164) #21
  %165 = call ptr @Perl_sv_newmortal() #21
  %166 = getelementptr inbounds ptr, ptr %133, i64 6
  store ptr %165, ptr %166, align 8, !tbaa !6
  %167 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !143
  %169 = sitofp i32 %168 to double
  call void @Perl_sv_setnv(ptr noundef %165, double noundef %169) #21
  %170 = call ptr @Perl_sv_newmortal() #21
  %171 = getelementptr inbounds ptr, ptr %133, i64 7
  store ptr %170, ptr %171, align 8, !tbaa !6
  %172 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 6
  %173 = load i32, ptr %172, align 4, !tbaa !136
  %174 = sext i32 %173 to i64
  call void @Perl_sv_setiv(ptr noundef %170, i64 noundef %174) #21
  %175 = call ptr @Perl_sv_newmortal() #21
  %176 = getelementptr inbounds ptr, ptr %133, i64 8
  store ptr %175, ptr %176, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 7
  %178 = load i32, ptr %177, align 4, !tbaa !144
  %179 = sext i32 %178 to i64
  call void @Perl_sv_setiv(ptr noundef %175, i64 noundef %179) #21
  %180 = call ptr @Perl_sv_newmortal() #21
  %181 = getelementptr inbounds ptr, ptr %133, i64 9
  store ptr %180, ptr %181, align 8, !tbaa !6
  %182 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 8
  %183 = load i32, ptr %182, align 4, !tbaa !145
  %184 = sext i32 %183 to i64
  call void @Perl_sv_setiv(ptr noundef %180, i64 noundef %184) #21
  br label %185

185:                                              ; preds = %94, %140, %123, %92
  %186 = phi ptr [ %93, %92 ], [ %69, %123 ], [ %101, %94 ], [ %181, %140 ]
  store ptr %186, ptr @PL_stack_sp, align 8, !tbaa !6
  %187 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %188 = load ptr, ptr %187, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %188
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_localtime64_r(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca %struct.TM64, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #22
  %6 = load i64, ptr %0, align 8, !tbaa !44
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  store i64 0, ptr %3, align 8, !tbaa !44
  %9 = call fastcc ptr @S_localtime_r(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  call fastcc void @S_copy_little_tm_to_big_TM(ptr noundef nonnull %4, ptr noundef %1) #23
  br label %51

10:                                               ; preds = %2
  %11 = call fastcc ptr @S_gmtime64_r(ptr noundef nonnull %0, ptr noundef nonnull %5) #23
  %12 = getelementptr inbounds %struct.TM64, ptr %5, i64 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -138
  %15 = icmp ult i32 %14, -68
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = add nsw i32 %13, 1900
  %18 = call fastcc i32 @S_safe_year(i32 noundef %17) #23, !range !146
  %19 = add nsw i32 %18, -1900
  store i32 %19, ptr %12, align 4, !tbaa !143
  br label %20

20:                                               ; preds = %10, %16
  %21 = call fastcc i64 @S_timegm64(ptr noundef nonnull %5) #23, !range !147
  store i64 %21, ptr %3, align 8, !tbaa !44
  %22 = call fastcc ptr @S_localtime_r(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  call fastcc void @S_copy_little_tm_to_big_TM(ptr noundef nonnull %4, ptr noundef %1) #23
  %25 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 5
  store i32 %13, ptr %25, align 4, !tbaa !143
  %26 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !138
  %28 = getelementptr inbounds %struct.TM64, ptr %5, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !138
  %30 = sub nsw i32 %27, %29
  switch i32 %30, label %35 [
    i32 11, label %32
    i32 -11, label %31
  ]

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %24, %31
  %33 = phi i32 [ 1, %31 ], [ -1, %24 ]
  %34 = add nsw i32 %13, %33
  store i32 %34, ptr %25, align 4, !tbaa !143
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %13, %24 ], [ %34, %32 ]
  %37 = add nsw i32 %36, 1900
  %38 = srem i32 %37, 400
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = and i32 %36, 3
  %42 = icmp eq i32 %41, 0
  %43 = srem i32 %37, 100
  %44 = icmp ne i32 %43, 0
  %45 = and i1 %42, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !144
  %49 = icmp eq i32 %48, 365
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 364, ptr %47, align 4, !tbaa !144
  br label %51

51:                                               ; preds = %40, %46, %50, %35, %20, %8
  %52 = phi ptr [ %1, %8 ], [ null, %20 ], [ %1, %35 ], [ %1, %50 ], [ %1, %46 ], [ %1, %40 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %52
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_gmtime64_r(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) unnamed_addr #16 {
  %3 = load i64, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 8
  store i32 0, ptr %4, align 4, !tbaa !145
  %5 = srem i64 %3, 60
  %6 = trunc i64 %5 to i32
  %7 = sdiv i64 %3, 60
  %8 = srem i64 %7, 60
  %9 = trunc i64 %8 to i32
  %10 = sdiv i64 %3, 3600
  %11 = srem i64 %10, 24
  %12 = trunc i64 %11 to i32
  %13 = sdiv i64 %3, 86400
  %14 = ashr i32 %6, 31
  %15 = add nsw i32 %14, %9
  %16 = ashr i32 %15, 31
  %17 = add nsw i32 %16, %12
  %18 = ashr i32 %17, 31
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %13, %19
  %21 = icmp sgt i64 %20, 13878
  %22 = add nsw i64 %20, -13879
  %23 = select i1 %21, i64 %22, i64 %20
  %24 = select i1 %21, i32 108, i32 70
  %25 = icmp sgt i64 %23, -1
  br i1 %25, label %26, label %98

26:                                               ; preds = %2
  %27 = udiv i64 %23, 146097
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = mul nsw i64 %27, -146097
  %32 = add nsw i64 %31, %23
  %33 = mul nsw i32 %28, 400
  %34 = add nsw i32 %33, %24
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i64 [ %32, %30 ], [ %23, %26 ]
  %37 = phi i32 [ %34, %30 ], [ %24, %26 ]
  %38 = add nsw i32 %37, 1900
  %39 = srem i32 %38, 400
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = and i32 %37, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = srem i32 %38, 100
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %41, %44, %35
  %49 = phi i32 [ 1, %35 ], [ 0, %41 ], [ %47, %44 ]
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !111
  %53 = sext i16 %52 to i64
  %54 = icmp slt i64 %36, %53
  br i1 %54, label %57, label %66

55:                                               ; preds = %81
  %56 = zext i1 %82 to i32
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi i32 [ %49, %48 ], [ %56, %55 ]
  %59 = phi i64 [ %36, %48 ], [ %70, %55 ]
  %60 = phi i32 [ %37, %48 ], [ %71, %55 ]
  %61 = phi i64 [ %50, %48 ], [ %83, %55 ]
  %62 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %61, i64 0
  %63 = load i8, ptr %62, align 4, !tbaa !16
  %64 = sext i8 %63 to i64
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %187, label %88

66:                                               ; preds = %48, %81
  %67 = phi i64 [ %86, %81 ], [ %53, %48 ]
  %68 = phi i32 [ %71, %81 ], [ %37, %48 ]
  %69 = phi i64 [ %70, %81 ], [ %36, %48 ]
  %70 = sub nsw i64 %69, %67
  %71 = add nsw i32 %68, 1
  %72 = add nsw i32 %68, 1901
  %73 = srem i32 %72, 400
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = and i32 %72, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = srem i32 %72, 100
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %75, %78, %66
  %82 = phi i1 [ true, %66 ], [ false, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i64
  %84 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !111
  %86 = sext i16 %85 to i64
  %87 = icmp slt i64 %70, %86
  br i1 %87, label %55, label %66, !llvm.loop !148

88:                                               ; preds = %57, %88
  %89 = phi i64 [ %93, %88 ], [ 0, %57 ]
  %90 = phi i64 [ %96, %88 ], [ %64, %57 ]
  %91 = phi i64 [ %92, %88 ], [ %59, %57 ]
  %92 = sub nsw i64 %91, %90
  %93 = add nuw nsw i64 %89, 1
  %94 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %61, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !16
  %96 = sext i8 %95 to i64
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %185, label %88, !llvm.loop !149

98:                                               ; preds = %2
  %99 = add nsw i32 %24, -1
  %100 = sub nsw i64 0, %23
  %101 = udiv i64 %100, 146097
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = sub nsw i32 1, %102
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, -146097
  %108 = add nsw i64 %107, %23
  %109 = mul nsw i32 %105, 400
  %110 = add nsw i32 %109, %99
  br label %111

111:                                              ; preds = %104, %98
  %112 = phi i64 [ %108, %104 ], [ %23, %98 ]
  %113 = phi i32 [ %110, %104 ], [ %99, %98 ]
  %114 = add nsw i32 %113, 1900
  %115 = srem i32 %114, 400
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = and i32 %113, 3
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = srem i32 %114, 100
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  br label %124

124:                                              ; preds = %117, %120, %111
  %125 = phi i32 [ 1, %111 ], [ 0, %117 ], [ %123, %120 ]
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !111
  %129 = sext i16 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = icmp slt i64 %112, %130
  br i1 %131, label %144, label %134

132:                                              ; preds = %159
  %133 = zext i1 %160 to i32
  br label %134

134:                                              ; preds = %132, %124
  %135 = phi i32 [ %125, %124 ], [ %133, %132 ]
  %136 = phi i64 [ %112, %124 ], [ %148, %132 ]
  %137 = phi i32 [ %113, %124 ], [ %149, %132 ]
  %138 = phi i64 [ %126, %124 ], [ %161, %132 ]
  %139 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %138, i64 11
  %140 = load i8, ptr %139, align 1, !tbaa !16
  %141 = sext i8 %140 to i64
  %142 = sub nsw i64 0, %141
  %143 = icmp slt i64 %136, %142
  br i1 %143, label %167, label %180

144:                                              ; preds = %124, %159
  %145 = phi i64 [ %164, %159 ], [ %129, %124 ]
  %146 = phi i32 [ %149, %159 ], [ %113, %124 ]
  %147 = phi i64 [ %148, %159 ], [ %112, %124 ]
  %148 = add nsw i64 %145, %147
  %149 = add nsw i32 %146, -1
  %150 = add nsw i32 %146, 1899
  %151 = srem i32 %150, 400
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %144
  %154 = and i32 %150, 3
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = srem i32 %150, 100
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %153, %156, %144
  %160 = phi i1 [ true, %144 ], [ false, %153 ], [ %158, %156 ]
  %161 = zext i1 %160 to i64
  %162 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !111
  %164 = sext i16 %163 to i64
  %165 = sub nsw i64 0, %164
  %166 = icmp slt i64 %148, %165
  br i1 %166, label %144, label %132, !llvm.loop !150

167:                                              ; preds = %134, %167
  %168 = phi i64 [ %172, %167 ], [ 11, %134 ]
  %169 = phi i64 [ %175, %167 ], [ %141, %134 ]
  %170 = phi i64 [ %171, %167 ], [ %136, %134 ]
  %171 = add nsw i64 %169, %170
  %172 = add nsw i64 %168, -1
  %173 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %138, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !16
  %175 = sext i8 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = icmp slt i64 %171, %176
  br i1 %177, label %167, label %178, !llvm.loop !151

178:                                              ; preds = %167
  %179 = trunc i64 %172 to i32
  br label %180

180:                                              ; preds = %178, %134
  %181 = phi i32 [ 11, %134 ], [ %179, %178 ]
  %182 = phi i64 [ %136, %134 ], [ %171, %178 ]
  %183 = phi i64 [ %141, %134 ], [ %175, %178 ]
  %184 = add nsw i64 %183, %182
  br label %187

185:                                              ; preds = %88
  %186 = trunc i64 %93 to i32
  br label %187

187:                                              ; preds = %185, %57, %180
  %188 = phi i32 [ %181, %180 ], [ 0, %57 ], [ %186, %185 ]
  %189 = phi i32 [ %135, %180 ], [ %58, %57 ], [ %58, %185 ]
  %190 = phi i64 [ %184, %180 ], [ %59, %57 ], [ %92, %185 ]
  %191 = phi i32 [ %137, %180 ], [ %60, %57 ], [ %60, %185 ]
  %192 = add nsw i64 %20, 4
  %193 = srem i64 %192, 7
  %194 = trunc i64 %193 to i32
  %195 = icmp slt i32 %194, 0
  %196 = add nsw i32 %194, 7
  %197 = select i1 %195, i32 %196, i32 %194
  %198 = icmp slt i32 %17, 0
  %199 = add nsw i32 %17, 24
  %200 = select i1 %198, i32 %199, i32 %17
  %201 = icmp slt i32 %15, 0
  %202 = add nsw i32 %15, 60
  %203 = select i1 %201, i32 %202, i32 %15
  %204 = icmp slt i32 %6, 0
  %205 = add nsw i32 %6, 60
  %206 = select i1 %204, i32 %205, i32 %6
  %207 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 5
  store i32 %191, ptr %207, align 4, !tbaa !143
  %208 = trunc i64 %190 to i32
  %209 = add nsw i32 %208, 1
  %210 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 3
  store i32 %209, ptr %210, align 4, !tbaa !139
  %211 = zext nneg i32 %189 to i64
  %212 = sext i32 %188 to i64
  %213 = getelementptr inbounds [2 x [12 x i16]], ptr @julian_days_by_month, i64 0, i64 %211, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !111
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %215, %208
  %217 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 7
  store i32 %216, ptr %217, align 4, !tbaa !144
  store i32 %206, ptr %1, align 4, !tbaa !142
  %218 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 1
  store i32 %203, ptr %218, align 4, !tbaa !141
  %219 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 2
  store i32 %200, ptr %219, align 4, !tbaa !140
  %220 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 4
  store i32 %188, ptr %220, align 4, !tbaa !138
  %221 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 6
  store i32 %197, ptr %221, align 4, !tbaa !136
  ret ptr %1
}

; Function Attrs: optsize
declare void @Perl_sv_setpvf_mg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_localtime_r(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @localtime(ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  br label %7

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi ptr [ null, %5 ], [ %1, %6 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_copy_little_tm_to_big_TM(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = load <4 x i32>, ptr %0, align 8, !tbaa !29
  store <4 x i32> %3, ptr %1, align 4, !tbaa !29
  %4 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 4
  %6 = load <4 x i32>, ptr %4, align 8, !tbaa !29
  store <4 x i32> %6, ptr %5, align 4, !tbaa !29
  %7 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 8
  store i32 %8, ptr %9, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @S_safe_year(i32 noundef %0) unnamed_addr #17 {
  %2 = tail call fastcc i32 @S_cycle_offset(i32 noundef %0) #23, !range !154
  %3 = add nsw i32 %2, %0
  %4 = tail call fastcc i32 @S_is_exception_century(i32 noundef %0) #23, !range !155
  %5 = icmp eq i32 %4, 0
  %6 = add nsw i32 %3, 11
  %7 = select i1 %5, i32 %3, i32 %6
  %8 = add nsw i32 %0, -1
  %9 = tail call fastcc i32 @S_is_exception_century(i32 noundef %8) #23, !range !155
  %10 = icmp eq i32 %9, 0
  %11 = add nsw i32 %7, 17
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = srem i32 %12, 28
  %14 = icmp slt i32 %13, 0
  %15 = add nsw i32 %13, 28
  %16 = select i1 %14, i32 %15, i32 %13
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [28 x i16], ptr @safe_years, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !111
  %20 = sext i16 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i64 @S_timegm64(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.TM64, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp sgt i32 %3, 70
  br i1 %4, label %5, label %26

5:                                                ; preds = %1, %17
  %6 = phi i32 [ %24, %17 ], [ 70, %1 ]
  %7 = phi i32 [ %23, %17 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %6, 1900
  %9 = urem i32 %8, 400
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = and i32 %6, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = urem i32 %8, 100
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %11, %14, %5
  %18 = phi i1 [ true, %5 ], [ false, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !111
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %7, %22
  %24 = add nuw nsw i32 %6, 1
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %49, label %5, !llvm.loop !156

26:                                               ; preds = %1
  %27 = icmp eq i32 %3, 70
  br i1 %27, label %61, label %28

28:                                               ; preds = %26, %40
  %29 = phi i32 [ %46, %40 ], [ 0, %26 ]
  %30 = phi i32 [ %47, %40 ], [ 69, %26 ]
  %31 = add nsw i32 %30, 1900
  %32 = srem i32 %31, 400
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = and i32 %30, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = srem i32 %31, 100
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %34, %37, %28
  %41 = phi i1 [ true, %28 ], [ false, %34 ], [ %39, %37 ]
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !111
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %29, %45
  %47 = add nsw i32 %30, -1
  %48 = icmp sgt i32 %30, %3
  br i1 %48, label %28, label %49, !llvm.loop !157

49:                                               ; preds = %40, %17
  %50 = phi i32 [ %23, %17 ], [ %46, %40 ]
  %51 = add nsw i32 %3, 1900
  %52 = srem i32 %51, 400
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = and i32 %3, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = srem i32 %51, 100
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  br label %61

61:                                               ; preds = %26, %54, %57, %49
  %62 = phi i32 [ %50, %49 ], [ %50, %54 ], [ %50, %57 ], [ 0, %26 ]
  %63 = phi i64 [ 1, %49 ], [ 0, %54 ], [ %60, %57 ], [ 0, %26 ]
  %64 = getelementptr inbounds %struct.TM64, ptr %0, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !138
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x [12 x i16]], ptr @julian_days_by_month, i64 0, i64 %63, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !111
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds %struct.TM64, ptr %0, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !139
  %72 = add i32 %62, -1
  %73 = add i32 %72, %69
  %74 = add i32 %73, %71
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, 86400
  %77 = getelementptr inbounds %struct.TM64, ptr %0, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !140
  %79 = mul i32 %78, 3600
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = getelementptr inbounds %struct.TM64, ptr %0, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !141
  %84 = mul nsw i32 %83, 60
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load i32, ptr %0, align 4, !tbaa !142
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  ret i64 %89
}

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @S_cycle_offset(i32 noundef %0) unnamed_addr #17 {
  %2 = icmp sgt i32 %0, 2000
  %3 = select i1 %2, i32 -2001, i32 -2000
  %4 = add nsw i32 %3, %0
  %5 = sdiv i32 %4, 100
  %6 = sdiv i32 %4, -400
  %7 = add nsw i32 %6, %5
  %8 = shl nsw i32 %7, 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @S_is_exception_century(i32 noundef %0) unnamed_addr #17 {
  %2 = srem i32 %0, 100
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = srem i32 %0, 400
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_alarm() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.111) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sleep() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %10 = call i64 @time(ptr noundef nonnull %1) #21
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !22
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %0
  %17 = load ptr, ptr %3, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds ptr, ptr %3, i64 -1
  br i1 %18, label %34, label %20

20:                                               ; preds = %16
  store ptr %17, ptr @PL_Sv, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load ptr, ptr %17, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !16
  br label %31

29:                                               ; preds = %20
  %30 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %17, i32 noundef 2) #21
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i64 [ %28, %25 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %0, %16, %31
  %35 = phi i32 [ %33, %31 ], [ 2147450879, %16 ], [ 2147450879, %0 ]
  %36 = phi ptr [ %19, %31 ], [ %19, %16 ], [ %3, %0 ]
  %37 = call i32 @sleep(i32 noundef %35) #21
  %38 = call i64 @time(ptr noundef nonnull %2) #21
  %39 = load i64, ptr %2, align 8, !tbaa !44
  %40 = load i64, ptr %1, align 8, !tbaa !44
  %41 = sub nsw i64 %39, %40
  call void @Perl_sv_setiv(ptr noundef %9, i64 noundef %41) #21
  %42 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !14
  %44 = and i32 %43, 4194304
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = call i32 @Perl_mg_set(ptr noundef nonnull %9) #21
  br label %48

48:                                               ; preds = %34, %46
  %49 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %36 to i64
  %52 = sub i64 %50, %51
  %53 = icmp slt i64 %52, 8
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call ptr @Perl_stack_grow(ptr noundef %36, ptr noundef %36, i64 noundef 1) #21
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi ptr [ %55, %54 ], [ %36, %48 ]
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  store ptr %9, ptr %58, align 8, !tbaa !6
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !6
  %59 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret ptr %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_shmwrite() local_unnamed_addr #0 {
  %1 = tail call ptr @Perl_pp_semget() #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_semget() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.112) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_semctl() local_unnamed_addr #0 {
  %1 = tail call ptr @Perl_pp_semget() #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ghostent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gnetent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gprotoent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gservent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_shostent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = and i32 %4, 2097408
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2, i32 noundef 2) #21
  br label %9

9:                                                ; preds = %0, %7
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 511
  switch i16 %13, label %23 [
    i16 358, label %14
    i16 360, label %17
    i16 361, label %20
  ]

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 358), align 8, !tbaa !6
  %16 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %15) #21
  br label %26

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 360), align 8, !tbaa !6
  %19 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %18) #21
  br label %26

20:                                               ; preds = %9
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 361), align 8, !tbaa !6
  %22 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %21) #21
  br label %26

23:                                               ; preds = %9
  store ptr @PL_sv_yes, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  br label %26

26:                                               ; preds = %23, %20, %17, %14
  %27 = phi ptr [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ehostent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  switch i16 %5, label %30 [
    i16 362, label %6
    i16 363, label %9
    i16 364, label %12
    i16 365, label %15
    i16 374, label %18
    i16 375, label %21
    i16 369, label %24
    i16 370, label %27
  ]

6:                                                ; preds = %0
  %7 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 362), align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #21
  br label %44

9:                                                ; preds = %0
  %10 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 363), align 8, !tbaa !6
  %11 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %10) #21
  br label %44

12:                                               ; preds = %0
  %13 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 364), align 8, !tbaa !6
  %14 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %13) #21
  br label %44

15:                                               ; preds = %0
  %16 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 365), align 8, !tbaa !6
  %17 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %16) #21
  br label %44

18:                                               ; preds = %0
  %19 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 374), align 8, !tbaa !6
  %20 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %19) #21
  br label %44

21:                                               ; preds = %0
  %22 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 375), align 8, !tbaa !6
  %23 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %22) #21
  br label %44

24:                                               ; preds = %0
  %25 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 369), align 8, !tbaa !6
  %26 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %25) #21
  br label %44

27:                                               ; preds = %0
  %28 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 370), align 8, !tbaa !6
  %29 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %28) #21
  br label %44

30:                                               ; preds = %0
  %31 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %1 to i64
  %34 = sub i64 %32, %33
  %35 = icmp slt i64 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  %38 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %30, %36
  %40 = phi ptr [ %38, %36 ], [ %2, %30 ]
  %41 = phi ptr [ %37, %36 ], [ %1, %30 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  store ptr @PL_sv_yes, ptr %42, align 8, !tbaa !6
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !6
  %43 = load ptr, ptr %40, align 8, !tbaa !30
  br label %44

44:                                               ; preds = %39, %27, %24, %21, %18, %15, %12, %9, %6
  %45 = phi ptr [ %43, %39 ], [ %29, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gpwent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_ggrent() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_getlogin() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.113) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_syscall() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.114) #21
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 24}
!11 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !13, i64 12}
!15 = !{!"sv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!16 = !{!8, !8, i64 0}
!17 = !{!11, !8, i64 34}
!18 = !{!19, !19, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!11, !8, i64 35}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!15, !7, i64 0}
!26 = !{!27, !12, i64 16}
!27 = !{!"xpv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24}
!28 = distinct !{!28, !24}
!29 = !{!13, !13, i64 0}
!30 = !{!11, !7, i64 0}
!31 = !{!15, !13, i64 8}
!32 = !{!33, !7, i64 0}
!33 = !{!"xpvmg", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!34 = !{!35, !13, i64 12}
!35 = !{!"hv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = !{!39, !7, i64 0}
!39 = !{!"av", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!40 = !{!41, !12, i64 16}
!41 = !{!"xpvav", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !7, i64 32}
!42 = !{!43, !7, i64 40}
!43 = !{!"svop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !7, i64 40}
!44 = !{!12, !12, i64 0}
!45 = !{!46, !7, i64 48}
!46 = !{!"cop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !13, i64 36, !7, i64 40, !7, i64 48, !13, i64 56, !13, i64 60, !7, i64 64, !7, i64 72}
!47 = !{!48, !7, i64 0}
!48 = !{!"gv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!49 = !{!46, !13, i64 36}
!50 = !{!51, !7, i64 16}
!51 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !13, i64 67, !7, i64 72}
!52 = !{!53, !7, i64 24}
!53 = !{!"stackinfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!54 = !{!53, !7, i64 16}
!55 = !{!53, !13, i64 40}
!56 = !{!53, !13, i64 32}
!57 = !{!53, !7, i64 0}
!58 = !{!41, !12, i64 24}
!59 = !{!60, !7, i64 32}
!60 = !{!"magic", !7, i64 0, !7, i64 8, !61, i64 16, !8, i64 18, !8, i64 19, !12, i64 24, !7, i64 32, !7, i64 40}
!61 = !{!"short", !8, i64 0}
!62 = distinct !{!62, !24}
!63 = !{!48, !13, i64 12}
!64 = !{!51, !7, i64 8}
!65 = !{!66, !7, i64 0}
!66 = !{!"io", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!67 = !{!68, !8, i64 129}
!68 = !{!"xpvio", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 129}
!69 = !{!51, !7, i64 56}
!70 = !{!51, !7, i64 0}
!71 = !{!68, !8, i64 128}
!72 = !{!68, !7, i64 40}
!73 = !{!74, !8, i64 72}
!74 = !{!"xpvlv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !7, i64 64, !8, i64 72, !8, i64 73}
!75 = !{!74, !7, i64 64}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = !{!80, !12, i64 0}
!80 = !{!"timeval", !12, i64 0, !12, i64 8}
!81 = !{!80, !12, i64 8}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = !{!35, !7, i64 0}
!85 = !{!86, !12, i64 24}
!86 = !{!"xpvhv", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 24}
!87 = !{!88, !13, i64 28}
!88 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52}
!89 = !{!90, !13, i64 4}
!90 = !{!"hek", !13, i64 0, !13, i64 4, !8, i64 8}
!91 = !{!68, !7, i64 104}
!92 = !{!51, !7, i64 48}
!93 = !{!94, !7, i64 0}
!94 = !{!"cv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!95 = !{!96, !13, i64 92}
!96 = !{!"xpvcv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !13, i64 88, !13, i64 92, !13, i64 96}
!97 = !{!53, !13, i64 36}
!98 = !{!53, !7, i64 8}
!99 = !{!100, !7, i64 8}
!100 = !{!"padlist", !12, i64 0, !7, i64 8, !13, i64 16, !13, i64 20}
!101 = !{!68, !12, i64 72}
!102 = !{!68, !7, i64 88}
!103 = !{!68, !7, i64 80}
!104 = !{!68, !7, i64 96}
!105 = !{!68, !12, i64 64}
!106 = distinct !{!106, !24}
!107 = !{!68, !12, i64 56}
!108 = !{!46, !13, i64 56}
!109 = distinct !{!109, !24}
!110 = !{!51, !7, i64 40}
!111 = !{!61, !61, i64 0}
!112 = !{!113, !12, i64 0}
!113 = !{!"stat", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !114, i64 72, !114, i64 88, !114, i64 104, !8, i64 120}
!114 = !{!"timespec", !12, i64 0, !12, i64 8}
!115 = !{!113, !12, i64 8}
!116 = !{!113, !13, i64 24}
!117 = !{!113, !12, i64 16}
!118 = !{!113, !13, i64 28}
!119 = !{!113, !13, i64 32}
!120 = !{!113, !12, i64 48}
!121 = !{!113, !12, i64 72}
!122 = !{!113, !12, i64 88}
!123 = !{!113, !12, i64 104}
!124 = distinct !{!124, !24}
!125 = distinct !{!125, !24}
!126 = !{!51, !7, i64 32}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24}
!129 = distinct !{!129, !24}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !24}
!135 = distinct !{!135, !24}
!136 = !{!137, !13, i64 24}
!137 = !{!"TM64", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!138 = !{!137, !13, i64 16}
!139 = !{!137, !13, i64 12}
!140 = !{!137, !13, i64 8}
!141 = !{!137, !13, i64 4}
!142 = !{!137, !13, i64 0}
!143 = !{!137, !13, i64 20}
!144 = !{!137, !13, i64 28}
!145 = !{!137, !13, i64 32}
!146 = !{i32 -32768, i32 32768}
!147 = !{i64 -185549029638144, i64 185549029551742}
!148 = distinct !{!148, !24}
!149 = distinct !{!149, !24}
!150 = distinct !{!150, !24}
!151 = distinct !{!151, !24}
!152 = !{!153, !13, i64 32}
!153 = !{!"tm", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !12, i64 40, !7, i64 48}
!154 = !{i32 -429496720, i32 429496721}
!155 = !{i32 0, i32 2}
!156 = distinct !{!156, !24}
!157 = distinct !{!157, !24}
