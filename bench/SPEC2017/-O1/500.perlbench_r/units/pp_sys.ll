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
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu }
%union.anon.4 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.av = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
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
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.22, ptr, %union.anon.23, %union.anon.24, %union.anon.25, ptr, %union.anon.26, ptr, i32, i32, i32 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { ptr }
%union.anon.26 = type { ptr }
%struct.context = type { %union.anon.14 }
%union.anon.14 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.21, %union._xivu }
%union.anon.21 = type { i64 }
%struct.TM64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@PL_formtarget = external local_unnamed_addr global ptr, align 8
@PL_toptarget = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"%2p_TOP\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Undefined top format \22%-p\22 called\00", align 1
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
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
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
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
@.str.111 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.112 = private unnamed_addr constant [48 x i8] c"System V IPC is not implemented on this machine\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@safe_years = internal unnamed_addr constant [28 x i16] [i16 2016, i16 2017, i16 2018, i16 2019, i16 2020, i16 2021, i16 2022, i16 2023, i16 2024, i16 2025, i16 2026, i16 2027, i16 2028, i16 2029, i16 2030, i16 2031, i16 2032, i16 2033, i16 2034, i16 2035, i16 2036, i16 2037, i16 2010, i16 2011, i16 2012, i16 2013, i16 2014, i16 2015], align 16
@length_of_year = internal unnamed_addr constant [2 x i16] [i16 365, i16 366], align 2
@julian_days_by_month = internal unnamed_addr constant [2 x [12 x i16]] [[12 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], [12 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335]], align 16
@days_in_month = internal unnamed_addr constant [2 x [12 x i8]] [[12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", [12 x i8] c"\1F\1D\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F"], align 16
@switch.table.Perl_pp_ftrowned = private unnamed_addr constant [12 x i8] c"OozScbfdpugk", align 1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_backtick() local_unnamed_addr #0 !prof !65 {
  %1 = alloca [256 x i8], align 16
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  store ptr %10, ptr @PL_Sv, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  br label %20

18:                                               ; preds = %0
  %19 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %10, ptr noundef null, i32 noundef 34) #17
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !77
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = zext nneg i8 %25 to i32
  br label %31

29:                                               ; preds = %20
  %30 = tail call i32 @Perl_block_gimme() #17
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.1) #17
  br label %36

36:                                               ; preds = %31, %35
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 6
  %39 = load i8, ptr %38, align 1, !tbaa !82
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %40, 32
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str, ptr @.str.3
  %46 = select i1 %42, ptr %45, ptr @.str.2
  %47 = tail call ptr @Perl_my_popen(ptr noundef %21, ptr noundef nonnull %46) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %145, label %49

49:                                               ; preds = %36
  %50 = tail call ptr @Perl_PerlIO_context_layers(ptr noundef null) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i8, ptr %50, align 1, !tbaa !76
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @PerlIO_apply_layers(ptr noundef nonnull %47, ptr noundef nonnull %46, ptr noundef nonnull %50) #17
  br label %57

57:                                               ; preds = %55, %52, %49
  switch i32 %32, label %85 [
    i32 1, label %58
    i32 2, label %63
  ]

58:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #17
  br label %59

59:                                               ; preds = %59, %58
  %60 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %47, ptr noundef nonnull %1, i64 noundef 256) #17
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %59, label %62, !llvm.loop !83

62:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #17
  br label %129

63:                                               ; preds = %57
  tail call void @Perl_push_scope() #17
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_rs) #17
  store ptr @PL_sv_undef, ptr @PL_rs, align 8, !tbaa !66
  tail call void @Perl_sv_setpvn(ptr noundef %8, ptr noundef nonnull @.str.4, i64 noundef 0) #17
  br label %64

64:                                               ; preds = %64, %63
  %65 = load ptr, ptr %8, align 8, !tbaa !86
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !87
  %68 = trunc i64 %67 to i32
  %69 = tail call ptr @Perl_sv_gets(ptr noundef nonnull %8, ptr noundef nonnull %47, i32 noundef %68) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %64, !llvm.loop !89

71:                                               ; preds = %64
  tail call void @Perl_pop_scope() #17
  %72 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %9 to i64
  %75 = sub i64 %73, %74
  %76 = icmp slt i64 %75, 8
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %9, ptr noundef nonnull %9, i64 noundef 1) #17
  br label %79

79:                                               ; preds = %71, %77
  %80 = phi ptr [ %78, %77 ], [ %9, %71 ]
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  store ptr %8, ptr %81, align 8, !tbaa !66
  %82 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %129, label %84

84:                                               ; preds = %79
  tail call void @Perl_sv_magic(ptr noundef nonnull %8, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #17
  br label %129

85:                                               ; preds = %57, %127
  %86 = phi ptr [ %128, %127 ], [ %9, %57 ]
  %87 = tail call ptr @Perl_newSV(i64 noundef 79) #17
  %88 = tail call ptr @Perl_sv_gets(ptr noundef %87, ptr noundef nonnull %47, i32 noundef 0) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = icmp eq ptr %87, null
  br i1 %91, label %127, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !90
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = add i32 %94, -1
  store i32 %97, ptr %93, align 8, !tbaa !90
  br label %127

98:                                               ; preds = %92
  tail call void @Perl_sv_free2(ptr noundef nonnull %87, i32 noundef %94) #17
  br label %127

99:                                               ; preds = %85
  %100 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %101 = ptrtoint ptr %100 to i64
  %102 = ptrtoint ptr %86 to i64
  %103 = sub i64 %101, %102
  %104 = icmp slt i64 %103, 8
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = tail call ptr @Perl_stack_grow(ptr noundef %86, ptr noundef %86, i64 noundef 1) #17
  br label %107

107:                                              ; preds = %99, %105
  %108 = phi ptr [ %106, %105 ], [ %86, %99 ]
  %109 = tail call ptr @Perl_sv_2mortal(ptr noundef %87) #17
  %110 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %109, ptr %110, align 8, !tbaa !66
  %111 = load ptr, ptr %87, align 8, !tbaa !86
  %112 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 3
  %113 = load i64, ptr %112, align 8, !tbaa !76
  %114 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !87
  %116 = sub i64 %113, %115
  %117 = icmp ugt i64 %116, 20
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = add i64 %115, 1
  store i64 %119, ptr %112, align 8, !tbaa !76
  %120 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = tail call ptr @Perl_safesysrealloc(ptr noundef %121, i64 noundef %119) #17
  store ptr %122, ptr %120, align 8, !tbaa !76
  br label %123

123:                                              ; preds = %107, %118
  %124 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  tail call void @Perl_sv_magic(ptr noundef nonnull %87, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #17
  br label %127

127:                                              ; preds = %98, %96, %90, %126, %123
  %128 = phi ptr [ %110, %123 ], [ %110, %126 ], [ %86, %90 ], [ %86, %96 ], [ %86, %98 ]
  br i1 %89, label %129, label %85

129:                                              ; preds = %127, %62, %84, %79
  %130 = phi ptr [ %9, %62 ], [ %81, %84 ], [ %81, %79 ], [ %128, %127 ]
  %131 = call i32 @Perl_my_pclose(ptr noundef nonnull %47) #17
  store i32 %131, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = and i32 %131, 127
  %135 = icmp eq i32 %134, 0
  %136 = and i32 %131, 65280
  %137 = select i1 %135, i32 %136, i32 0
  %138 = shl nuw nsw i32 %134, 24
  %139 = add nuw i32 %138, 16777216
  %140 = icmp sgt i32 %139, 33554431
  %141 = select i1 %140, i32 %134, i32 0
  %142 = or disjoint i32 %141, %137
  br label %143

143:                                              ; preds = %129, %133
  %144 = phi i32 [ %142, %133 ], [ -1, %129 ]
  store i32 %144, ptr @PL_statusvalue, align 4, !tbaa !91
  store i8 1, ptr @PL_tainted, align 1, !tbaa !78
  br label %148

145:                                              ; preds = %36
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  store i32 -1, ptr @PL_statusvalue, align 4, !tbaa !91
  %146 = icmp eq i32 %32, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %145
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !66
  br label %148

148:                                              ; preds = %143, %145, %147
  %149 = phi ptr [ %2, %147 ], [ %130, %143 ], [ %9, %145 ]
  store ptr %149, ptr @PL_stack_sp, align 8, !tbaa !66
  %150 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %151 = load ptr, ptr %150, align 8, !tbaa !92
  ret ptr %151
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_my_popen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_PerlIO_context_layers(ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_apply_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_my_pclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_glob() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !77
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  br label %9

9:                                                ; preds = %0, %6
  %10 = phi ptr [ %1, %0 ], [ %7, %6 ]
  %11 = phi ptr [ null, %0 ], [ %8, %6 ]
  store ptr %10, ptr @PL_stack_sp, align 8, !tbaa !66
  %12 = load ptr, ptr %10, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_newSVsv(ptr noundef %12) #17
  %19 = tail call ptr @Perl_sv_2mortal(ptr noundef %18) #17
  store ptr %19, ptr %10, align 8, !tbaa !66
  br label %20

20:                                               ; preds = %9, %17
  %21 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 5
  %25 = load i8, ptr %24, align 2, !tbaa !77
  %26 = and i8 %25, 3
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = zext nneg i8 %26 to i32
  br label %32

30:                                               ; preds = %20
  %31 = tail call i32 @Perl_block_gimme() #17
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !74
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %139, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = and i32 %42, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %139, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %40, align 8, !tbaa !86
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !95
  %50 = and i32 %49, 268435456
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %139, label %52

52:                                               ; preds = %45
  %53 = tail call ptr @Perl_amagic_call(ptr noundef %22, ptr noundef nonnull @PL_sv_undef, i32 noundef 15, i32 noundef 73) #17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %139, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  switch i32 %33, label %91 [
    i32 1, label %121
    i32 3, label %57
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !74
  %60 = and i32 %59, 8388608
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @Perl_mg_size(ptr noundef nonnull %53) #17
  %64 = sext i32 %63 to i64
  br label %69

65:                                               ; preds = %57
  %66 = load ptr, ptr %53, align 8, !tbaa !97
  %67 = getelementptr inbounds %struct.xpvav, ptr %66, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !99
  br label %69

69:                                               ; preds = %62, %65
  %70 = phi i64 [ %64, %62 ], [ %68, %65 ]
  %71 = getelementptr inbounds ptr, ptr %56, i64 -1
  %72 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %71 to i64
  %75 = sub i64 %73, %74
  %76 = ashr exact i64 %75, 3
  %77 = icmp sgt i64 %76, %70
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = add nsw i64 %70, 1
  %80 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %71, ptr noundef nonnull %71, i64 noundef %79) #17
  br label %81

81:                                               ; preds = %69, %78
  %82 = phi ptr [ %80, %78 ], [ %71, %69 ]
  %83 = icmp slt i64 %70, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %81, %84
  %85 = phi i64 [ %89, %84 ], [ 0, %81 ]
  %86 = phi ptr [ %88, %84 ], [ %82, %81 ]
  %87 = tail call ptr @Perl_av_shift(ptr noundef nonnull %53) #17
  %88 = getelementptr inbounds ptr, ptr %86, i64 1
  store ptr %87, ptr %88, align 8, !tbaa !66
  %89 = add nuw i64 %85, 1
  %90 = icmp eq i64 %85, %70
  br i1 %90, label %121, label %84, !llvm.loop !101

91:                                               ; preds = %55
  %92 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct.op, ptr %92, i64 0, i32 5
  %94 = load i8, ptr %93, align 2, !tbaa !77
  %95 = and i8 %94, 64
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds ptr, ptr %56, i64 -1
  br label %104

99:                                               ; preds = %91
  %100 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %101 = getelementptr inbounds %struct.op, ptr %92, i64 0, i32 3
  %102 = load i64, ptr %101, align 8, !tbaa !70
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  br label %104

104:                                              ; preds = %99, %97
  %105 = phi ptr [ %98, %97 ], [ %103, %99 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !66
  tail call void @Perl_sv_setsv_flags(ptr noundef %106, ptr noundef nonnull %53, i32 noundef 1538) #17
  %107 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %108 = getelementptr inbounds %struct.op, ptr %107, i64 0, i32 5
  %109 = load i8, ptr %108, align 2, !tbaa !77
  %110 = shl i8 %109, 1
  %111 = ashr i8 %110, 7
  %112 = sext i8 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %56, i64 %112
  %114 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !74
  %116 = and i32 %115, 4194304
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %104
  %119 = tail call i32 @Perl_mg_set(ptr noundef %106) #17
  br label %120

120:                                              ; preds = %104, %118
  store ptr %106, ptr %113, align 8, !tbaa !66
  br label %121

121:                                              ; preds = %84, %81, %55, %120
  %122 = phi ptr [ %56, %55 ], [ %113, %120 ], [ %82, %81 ], [ %88, %84 ]
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !66
  %123 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %124 = getelementptr inbounds %struct.op, ptr %123, i64 0, i32 5
  %125 = load i8, ptr %124, align 2, !tbaa !77
  %126 = icmp sgt i8 %125, -1
  %127 = load ptr, ptr %123, align 8, !tbaa !92
  br i1 %126, label %139, label %128

128:                                              ; preds = %121, %128
  %129 = phi ptr [ %130, %128 ], [ %127, %121 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !92
  %131 = getelementptr inbounds %struct.op, ptr %130, i64 0, i32 4
  %132 = load i16, ptr %131, align 8
  %133 = and i16 %132, 511
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %128, label %135, !llvm.loop !102

135:                                              ; preds = %128
  %136 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %137 = getelementptr inbounds i32, ptr %136, i64 -1
  store ptr %137, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %138 = load ptr, ptr %130, align 8, !tbaa !92
  br label %139

139:                                              ; preds = %121, %52, %45, %38, %32, %135
  %140 = phi ptr [ %138, %135 ], [ undef, %32 ], [ undef, %38 ], [ undef, %45 ], [ undef, %52 ], [ %127, %121 ]
  %141 = phi i1 [ false, %135 ], [ true, %32 ], [ true, %38 ], [ true, %45 ], [ true, %52 ], [ false, %121 ]
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %144 = getelementptr inbounds %struct.op, ptr %143, i64 0, i32 5
  %145 = load i8, ptr %144, align 2, !tbaa !77
  %146 = icmp sgt i8 %145, -1
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %143, align 8, !tbaa !92
  br label %162

149:                                              ; preds = %142
  %150 = load ptr, ptr @PL_globhook, align 8, !tbaa !66
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  tail call void %150() #17
  %153 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %154 = load ptr, ptr %153, align 8, !tbaa !92
  br label %162

155:                                              ; preds = %149
  tail call void @Perl_push_scope() #17
  %156 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store i8 1, ptr @PL_tainted, align 1, !tbaa !78
  tail call void @Perl_taint_proper(ptr noundef nonnull @PL_no_security, ptr noundef nonnull @.str.5) #17
  br label %159

159:                                              ; preds = %158, %155
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_last_in_gv) #17
  store ptr %11, ptr @PL_last_in_gv, align 8, !tbaa !66
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_rs) #17
  %160 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.6, i64 noundef 1, i32 noundef 524288) #17
  store ptr %160, ptr @PL_rs, align 8, !tbaa !66
  %161 = tail call ptr @Perl_do_readline() #17
  tail call void @Perl_pop_scope() #17
  br label %162

162:                                              ; preds = %139, %159, %152, %147
  %163 = phi ptr [ %148, %147 ], [ %154, %152 ], [ %161, %159 ], [ %140, %139 ]
  ret ptr %163
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_do_readline() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_rcatline() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  store ptr %3, ptr @PL_last_in_gv, align 8, !tbaa !66
  %4 = tail call ptr @Perl_do_readline() #17
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_warn() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %6 = load i32, ptr %4, align 4, !tbaa !91
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, 8
  br i1 %12, label %13, label %21

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  tail call void @Perl_do_join(ptr noundef %19, ptr noundef nonnull @PL_sv_no, ptr noundef %8, ptr noundef %2) #17
  %20 = getelementptr inbounds ptr, ptr %8, i64 1
  br label %40

21:                                               ; preds = %0
  %22 = icmp eq ptr %2, %8
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %25, %9
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #17
  br label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds ptr, ptr %8, i64 1
  br label %40

32:                                               ; preds = %21
  %33 = load ptr, ptr %2, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !74
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %33, i32 noundef 1538) #17
  br label %40

40:                                               ; preds = %30, %38, %32, %13
  %41 = phi ptr [ %19, %13 ], [ @PL_sv_no, %30 ], [ %39, %38 ], [ %33, %32 ]
  %42 = phi ptr [ %20, %13 ], [ %31, %30 ], [ %2, %38 ], [ %2, %32 ]
  %43 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %40
  %48 = and i32 %44, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %41, align 8, !tbaa !86
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !87
  store i64 %53, ptr %1, align 8, !tbaa !105
  br label %56

54:                                               ; preds = %47
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef %41, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, ptr %1, align 8, !tbaa !105
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %56
  %60 = load ptr, ptr @PL_errgv, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.gv, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = call ptr @Perl_gv_add_by_type(ptr noundef %60, i32 noundef 0) #17
  %67 = getelementptr inbounds %struct.gv, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !76
  br label %69

69:                                               ; preds = %59, %65
  %70 = phi ptr [ %68, %65 ], [ %62, %59 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !74
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = call i32 @Perl_mg_get(ptr noundef %71) #17
  br label %78

78:                                               ; preds = %69, %76
  %79 = load i32, ptr %72, align 4, !tbaa !74
  %80 = and i32 %79, 2048
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = and i32 %79, 2097152
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %82
  %86 = call ptr @Perl_sv_newmortal() #17
  call void @Perl_sv_setsv_flags(ptr noundef %86, ptr noundef %71, i32 noundef 1536) #17
  br label %102

87:                                               ; preds = %78
  %88 = and i32 %79, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %71, align 8, !tbaa !86
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !87
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %98

95:                                               ; preds = %87
  %96 = and i32 %79, 12288
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95, %90
  %99 = call ptr @Perl_sv_newmortal() #17
  call void @Perl_sv_setsv_flags(ptr noundef %99, ptr noundef %71, i32 noundef 1536) #17
  call void @Perl_sv_catpvn_flags(ptr noundef %99, ptr noundef nonnull @.str.7, i64 noundef 10, i32 noundef 2) #17
  br label %102

100:                                              ; preds = %95, %90
  %101 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 26, i32 noundef 524288) #17
  br label %102

102:                                              ; preds = %85, %100, %98, %82, %40, %56
  %103 = phi ptr [ %41, %40 ], [ %41, %56 ], [ %86, %85 ], [ %99, %98 ], [ %101, %100 ], [ %71, %82 ]
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !74
  %106 = and i32 %105, 2048
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr @PL_warnhook, align 8
  %109 = icmp ne ptr %108, null
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.9, ptr noundef %103) #17
  br label %113

112:                                              ; preds = %102
  call void @Perl_warn_sv(ptr noundef %103) #17
  br label %113

113:                                              ; preds = %112, %111
  store ptr @PL_sv_yes, ptr %42, align 8, !tbaa !66
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !66
  %114 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %115
}

declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_warn_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_pp_die() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %6 = load i32, ptr %4, align 4, !tbaa !91
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  tail call void @Perl_do_join(ptr noundef %19, ptr noundef nonnull @PL_sv_no, ptr noundef %8, ptr noundef %2) #17
  %20 = getelementptr inbounds ptr, ptr %8, i64 1
  br label %23

21:                                               ; preds = %0
  %22 = load ptr, ptr %2, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %19, %13 ], [ %22, %21 ]
  %25 = phi ptr [ %20, %13 ], [ %2, %21 ]
  %26 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %142

30:                                               ; preds = %23
  %31 = and i32 %27, 2098176
  %32 = icmp eq i32 %31, 1024
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %24, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.xpv, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !87
  store i64 %36, ptr %1, align 8, !tbaa !105
  br label %39

37:                                               ; preds = %30
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef %24, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, ptr %1, align 8, !tbaa !105
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %142

42:                                               ; preds = %39
  %43 = load ptr, ptr @PL_errgv, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call ptr @Perl_gv_add_by_type(ptr noundef %43, i32 noundef 0) #17
  %50 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  br label %52

52:                                               ; preds = %42, %48
  %53 = phi ptr [ %51, %48 ], [ %45, %42 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !66
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = and i32 %56, 2097152
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = call i32 @Perl_mg_get(ptr noundef %54) #17
  br label %61

61:                                               ; preds = %52, %59
  %62 = load i32, ptr %55, align 4, !tbaa !74
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %130, label %65

65:                                               ; preds = %61
  %66 = call i32 @Perl_sv_isobject(ptr noundef %54) #17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %142, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = load ptr, ptr %71, align 8, !tbaa !93
  %73 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %72, ptr noundef nonnull @.str.10, i32 noundef 1) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %142, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.cop, ptr %76, i64 0, i32 9
  %78 = load ptr, ptr %77, align 8, !tbaa !108
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %78, align 8, !tbaa !110
  %82 = getelementptr inbounds %struct.xpvgv, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.hek, ptr %83, i64 0, i32 2, i64 2
  br label %85

85:                                               ; preds = %75, %80
  %86 = phi ptr [ %84, %80 ], [ null, %75 ]
  %87 = call ptr @Perl_newSVpv(ptr noundef %86, i64 noundef 0) #17
  %88 = call ptr @Perl_sv_2mortal(ptr noundef %87) #17
  %89 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %90 = getelementptr inbounds %struct.cop, ptr %89, i64 0, i32 7
  %91 = load i32, ptr %90, align 4, !tbaa !112
  %92 = zext i32 %91 to i64
  %93 = call ptr @Perl_newSVuv(i64 noundef %92) #17
  %94 = call ptr @Perl_sv_2mortal(ptr noundef %93) #17
  %95 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %25 to i64
  %98 = sub i64 %96, %97
  %99 = icmp slt i64 %98, 24
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = call ptr @Perl_stack_grow(ptr noundef nonnull %25, ptr noundef nonnull %25, i64 noundef 3) #17
  br label %102

102:                                              ; preds = %100, %85
  %103 = phi ptr [ %101, %100 ], [ %25, %85 ]
  %104 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %105 = getelementptr inbounds i32, ptr %104, i64 1
  store ptr %105, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %106 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call ptr @Perl_markstack_grow() #17
  br label %110

110:                                              ; preds = %102, %108
  %111 = phi ptr [ %109, %108 ], [ %105, %102 ]
  %112 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %113 = ptrtoint ptr %103 to i64
  %114 = ptrtoint ptr %112 to i64
  %115 = sub i64 %113, %114
  %116 = lshr exact i64 %115, 3
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %111, align 4, !tbaa !91
  %118 = getelementptr inbounds ptr, ptr %103, i64 1
  store ptr %54, ptr %118, align 8, !tbaa !66
  %119 = getelementptr inbounds ptr, ptr %103, i64 2
  store ptr %88, ptr %119, align 8, !tbaa !66
  %120 = getelementptr inbounds ptr, ptr %103, i64 3
  store ptr %94, ptr %120, align 8, !tbaa !66
  store ptr %120, ptr @PL_stack_sp, align 8, !tbaa !66
  %121 = getelementptr inbounds %struct.gv, ptr %73, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !76
  %123 = getelementptr inbounds %struct.gp, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !113
  %125 = call i32 @Perl_call_sv(ptr noundef %124, i32 noundef 42) #17
  %126 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %127 = getelementptr inbounds ptr, ptr %126, i64 -1
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !66
  %128 = load ptr, ptr %126, align 8, !tbaa !66
  %129 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %128, i32 noundef 1538) #17
  br label %142

130:                                              ; preds = %61
  %131 = and i32 %62, 1024
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %54, align 8, !tbaa !86
  %135 = getelementptr inbounds %struct.xpv, ptr %134, i64 0, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !87
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %54, i32 noundef 1538) #17
  call void @Perl_sv_catpvn_flags(ptr noundef %139, ptr noundef nonnull @.str.11, i64 noundef 14, i32 noundef 2) #17
  br label %142

140:                                              ; preds = %133, %130
  %141 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.12, i64 noundef 4, i32 noundef 524288) #17
  br label %142

142:                                              ; preds = %65, %140, %138, %110, %68, %23, %39
  %143 = phi ptr [ %24, %23 ], [ %24, %39 ], [ %54, %65 ], [ %139, %138 ], [ %141, %140 ], [ %129, %110 ], [ %54, %68 ]
  %144 = call ptr @Perl_die_sv(ptr noundef %143) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr null
}

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_die_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_tied_method(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ...) local_unnamed_addr #0 !prof !65 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !66
  %8 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.stackinfo, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #17
  %14 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.stackinfo, ptr %14, i64 0, i32 3
  store ptr %13, ptr %16, align 8, !tbaa !114
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %10, %6 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 6
  store i32 2, ptr %19, align 8, !tbaa !117
  %20 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 4
  store i32 -1, ptr %20, align 8, !tbaa !118
  %21 = load ptr, ptr %18, align 8, !tbaa !119
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !99
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %25 = ptrtoint ptr %1 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = load ptr, ptr @PL_curstack, align 8, !tbaa !66
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  store i64 %28, ptr %31, align 8, !tbaa !99
  %32 = getelementptr inbounds %struct.av, ptr %21, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  store ptr %33, ptr @PL_stack_base, align 8, !tbaa !66
  %34 = load ptr, ptr %18, align 8, !tbaa !119
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %33, i64 %37
  store ptr %38, ptr @PL_stack_max, align 8, !tbaa !66
  %39 = load ptr, ptr %18, align 8, !tbaa !119
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = getelementptr inbounds %struct.xpvav, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !99
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !66
  %44 = load ptr, ptr %18, align 8, !tbaa !119
  store ptr %44, ptr @PL_curstack, align 8, !tbaa !66
  store ptr %18, ptr @PL_curstackinfo, align 8, !tbaa !66
  %45 = ptrtoint ptr %38 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = add i32 %5, 1
  %50 = zext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %17
  %53 = tail call ptr @Perl_stack_grow(ptr noundef %43, ptr noundef %43, i64 noundef %50) #17
  br label %54

54:                                               ; preds = %52, %17
  %55 = phi ptr [ %53, %52 ], [ %43, %17 ]
  %56 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  store ptr %57, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %58 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call ptr @Perl_markstack_grow() #17
  br label %62

62:                                               ; preds = %54, %60
  %63 = phi ptr [ %61, %60 ], [ %57, %54 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %65 = ptrtoint ptr %55 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = lshr exact i64 %67, 3
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %63, align 4, !tbaa !91
  %70 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !121
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = tail call ptr @Perl_newRV(ptr noundef %2) #17
  %75 = tail call ptr @Perl_sv_2mortal(ptr noundef %74) #17
  br label %76

76:                                               ; preds = %62, %73
  %77 = phi ptr [ %75, %73 ], [ %71, %62 ]
  %78 = getelementptr inbounds ptr, ptr %55, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !66
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
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
  store ptr %109, ptr %111, align 8, !tbaa !66
  br label %115

112:                                              ; preds = %107
  %113 = call ptr @Perl_sv_2mortal(ptr noundef %109) #17
  %114 = getelementptr inbounds ptr, ptr %96, i64 1
  store ptr %113, ptr %114, align 8, !tbaa !66
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi ptr [ %111, %110 ], [ %114, %112 ]
  %117 = add i32 %95, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %94, !llvm.loop !124

119:                                              ; preds = %115
  call void @llvm.va_end(ptr %7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  br label %120

120:                                              ; preds = %87, %119, %81
  %121 = phi ptr [ %86, %81 ], [ %116, %119 ], [ %78, %87 ]
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !66
  call void @Perl_push_scope() #17
  %122 = and i32 %4, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  call void @Perl_save_generic_svref(ptr noundef nonnull @PL_ors_sv) #17
  %125 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #17
  store ptr %125, ptr @PL_ors_sv, align 8, !tbaa !66
  br label %126

126:                                              ; preds = %124, %120
  %127 = and i32 %4, 3
  %128 = or disjoint i32 %127, 4096
  %129 = call i32 @Perl_call_sv(ptr noundef %0, i32 noundef %128) #17
  %130 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %131 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %132 = getelementptr inbounds %struct.stackinfo, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !116
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  call void @Perl_croak_popstack() #17
  br label %136

136:                                              ; preds = %126, %135
  %137 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %138 = ptrtoint ptr %130 to i64
  %139 = ptrtoint ptr %137 to i64
  %140 = sub i64 %138, %139
  %141 = ashr exact i64 %140, 3
  %142 = load ptr, ptr @PL_curstack, align 8, !tbaa !66
  %143 = load ptr, ptr %142, align 8, !tbaa !97
  %144 = getelementptr inbounds %struct.xpvav, ptr %143, i64 0, i32 2
  store i64 %141, ptr %144, align 8, !tbaa !99
  %145 = load ptr, ptr %133, align 8, !tbaa !119
  %146 = getelementptr inbounds %struct.av, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !76
  store ptr %147, ptr @PL_stack_base, align 8, !tbaa !66
  %148 = load ptr, ptr %133, align 8, !tbaa !119
  %149 = load ptr, ptr %148, align 8, !tbaa !97
  %150 = getelementptr inbounds %struct.xpvav, ptr %149, i64 0, i32 3
  %151 = load i64, ptr %150, align 8, !tbaa !120
  %152 = getelementptr inbounds ptr, ptr %147, i64 %151
  store ptr %152, ptr @PL_stack_max, align 8, !tbaa !66
  %153 = load ptr, ptr %133, align 8, !tbaa !119
  %154 = load ptr, ptr %153, align 8, !tbaa !97
  %155 = getelementptr inbounds %struct.xpvav, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !99
  %157 = getelementptr inbounds ptr, ptr %147, i64 %156
  store ptr %157, ptr @PL_stack_sp, align 8, !tbaa !66
  %158 = load ptr, ptr %133, align 8, !tbaa !119
  store ptr %158, ptr @PL_curstack, align 8, !tbaa !66
  store ptr %133, ptr @PL_curstackinfo, align 8, !tbaa !66
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
  %168 = call ptr @Perl_stack_grow(ptr noundef %157, ptr noundef %157, i64 noundef %165) #17
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
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !66
  br label %177

177:                                              ; preds = %169, %136
  call void @Perl_pop_scope() #17
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %179 = load ptr, ptr %178, align 8, !tbaa !92
  ret ptr %179
}

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_open() local_unnamed_addr #0 !prof !125 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %6 = load i32, ptr %4, align 4, !tbaa !91
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !126
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %23 [
    i8 9, label %25
    i8 10, label %20
  ], !prof !127

20:                                               ; preds = %0
  %21 = and i32 %18, 49152
  %22 = icmp eq i32 %21, 32768
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %0
  %24 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.14) #17
  br label %139

25:                                               ; preds = %20, %0
  %26 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31, !prof !129

31:                                               ; preds = %25
  %32 = load ptr, ptr %29, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.xpvio, ptr %32, i64 0, i32 17
  %34 = load i8, ptr %33, align 1, !tbaa !132
  %35 = and i8 %34, -17
  store i8 %35, ptr %33, align 1, !tbaa !132
  %36 = getelementptr inbounds %struct.xpvio, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39, !prof !134

39:                                               ; preds = %31
  %40 = load ptr, ptr %26, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.gp, ptr %40, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !135
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %16, ptr %42
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = getelementptr inbounds %struct.xpvgv, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 517, ptr noundef nonnull @.str.15, ptr noundef %47) #17
  br label %48

48:                                               ; preds = %39, %31
  %49 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !74
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !134

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %29, i32 noundef 113) #17
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %54, %53 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58, !prof !134

58:                                               ; preds = %55
  %59 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 18), align 16, !tbaa !66
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.16, i32 noundef 0) #17
  store ptr %62, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 18), align 16, !tbaa !66
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %58 ]
  %65 = ptrtoint ptr %2 to i64
  %66 = ptrtoint ptr %15 to i64
  %67 = sub i64 %65, %66
  %68 = lshr exact i64 %67, 3
  %69 = trunc i64 %68 to i32
  %70 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %64, ptr noundef %8, ptr noundef nonnull %29, ptr noundef nonnull %56, i32 noundef 10, i32 noundef %69)
  br label %71

71:                                               ; preds = %55, %63
  %72 = phi ptr [ %70, %63 ], [ undef, %55 ]
  br i1 %57, label %73, label %139, !prof !134

73:                                               ; preds = %71, %25
  %74 = icmp ult ptr %15, %2
  br i1 %74, label %75, label %77, !prof !134

75:                                               ; preds = %73
  %76 = getelementptr inbounds ptr, ptr %8, i64 2
  br label %85

77:                                               ; preds = %73
  %78 = load ptr, ptr %26, align 8, !tbaa !76
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = tail call ptr @Perl_gv_add_by_type(ptr noundef %16, i32 noundef 0) #17
  %83 = getelementptr inbounds %struct.gv, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !76
  br label %85

85:                                               ; preds = %81, %77, %75
  %86 = phi ptr [ %76, %75 ], [ %84, %81 ], [ %78, %77 ]
  %87 = phi ptr [ %76, %75 ], [ %15, %81 ], [ %15, %77 ]
  %88 = load ptr, ptr %86, align 8, !tbaa !66
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !74
  %91 = and i32 %90, 2098176
  %92 = icmp eq i32 %91, 1024
  br i1 %92, label %93, label %99, !prof !134

93:                                               ; preds = %85
  %94 = load ptr, ptr %88, align 8, !tbaa !86
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !87
  store i64 %96, ptr %1, align 8, !tbaa !105
  %97 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !76
  br label %101

99:                                               ; preds = %85
  %100 = call ptr @Perl_sv_2pv_flags(ptr noundef %88, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi ptr [ %98, %93 ], [ %100, %99 ]
  %103 = load i64, ptr %1, align 8, !tbaa !105
  %104 = getelementptr inbounds ptr, ptr %87, i64 1
  %105 = ptrtoint ptr %2 to i64
  %106 = ptrtoint ptr %87 to i64
  %107 = sub i64 %105, %106
  %108 = lshr exact i64 %107, 3
  %109 = trunc i64 %108 to i32
  %110 = call zeroext i1 @Perl_do_open6(ptr noundef %16, ptr noundef %102, i64 noundef %103, ptr noundef null, ptr noundef nonnull %104, i32 noundef %109) #17
  %111 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %112 = getelementptr inbounds ptr, ptr %111, i64 %7
  %113 = load i32, ptr @PL_forkprocess, align 4, !tbaa !91
  br i1 %110, label %114, label %122, !prof !134

114:                                              ; preds = %101
  %115 = sext i32 %113 to i64
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef %115) #17
  %116 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !74
  %118 = and i32 %117, 4194304
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %135, label %120, !prof !134

120:                                              ; preds = %114
  %121 = call i32 @Perl_mg_set(ptr noundef %14) #17
  br label %135

122:                                              ; preds = %101
  %123 = icmp eq i32 %113, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %122
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef 0) #17
  %125 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !74
  %127 = and i32 %126, 4194304
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = call i32 @Perl_mg_set(ptr noundef %14) #17
  br label %135

131:                                              ; preds = %122
  %132 = getelementptr inbounds ptr, ptr %112, i64 1
  store ptr @PL_sv_undef, ptr %132, align 8, !tbaa !66
  store ptr %132, ptr @PL_stack_sp, align 8, !tbaa !66
  %133 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %134 = load ptr, ptr %133, align 8, !tbaa !92
  br label %139

135:                                              ; preds = %129, %124, %120, %114
  %136 = getelementptr inbounds ptr, ptr %112, i64 1
  store ptr %14, ptr %136, align 8, !tbaa !66
  store ptr %136, ptr @PL_stack_sp, align 8, !tbaa !66
  %137 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %138 = load ptr, ptr %137, align 8, !tbaa !92
  br label %139

139:                                              ; preds = %71, %135, %131, %23
  %140 = phi ptr [ %138, %135 ], [ %134, %131 ], [ %72, %71 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %140
}

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_do_open6(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_close() local_unnamed_addr #0 !prof !125 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !82
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !129

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds ptr, ptr %1, i64 -1
  %11 = select i1 %9, ptr @PL_defoutgv, ptr %1, !prof !129
  br label %12

12:                                               ; preds = %7, %0
  %13 = phi ptr [ %1, %0 ], [ %10, %7 ]
  %14 = phi ptr [ @PL_defoutgv, %0 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  br i1 %6, label %16, label %24, !prof !129

16:                                               ; preds = %12
  %17 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %13 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call ptr @Perl_stack_grow(ptr noundef %13, ptr noundef %13, i64 noundef 1) #17
  br label %24

24:                                               ; preds = %22, %16, %12
  %25 = phi ptr [ %23, %22 ], [ %13, %16 ], [ %13, %12 ]
  %26 = icmp eq ptr %15, null
  br i1 %26, label %64, label %27, !prof !129

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !74
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -9
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %40, !prof !134

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !129

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  br label %40

40:                                               ; preds = %27, %33, %37
  %41 = phi ptr [ %39, %37 ], [ null, %33 ], [ null, %27 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43, !prof !129

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 8388608
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !134

48:                                               ; preds = %43
  %49 = tail call ptr @Perl_mg_find(ptr noundef nonnull %41, i32 noundef 113) #17
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %49, %48 ], [ null, %43 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53, !prof !134

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 30), align 16, !tbaa !66
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.17, i32 noundef 0) #17
  store ptr %57, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 30), align 16, !tbaa !66
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi ptr [ %57, %56 ], [ %54, %53 ]
  %60 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %59, ptr noundef %25, ptr noundef nonnull %41, ptr noundef nonnull %51, i32 noundef 2, i32 noundef 0)
  br label %61

61:                                               ; preds = %58, %50, %40
  %62 = phi ptr [ undef, %40 ], [ %60, %58 ], [ undef, %50 ]
  %63 = phi i1 [ true, %40 ], [ false, %58 ], [ %52, %50 ]
  br i1 %63, label %64, label %70, !prof !134

64:                                               ; preds = %61, %24
  %65 = tail call zeroext i1 @Perl_do_close(ptr noundef %15, i1 noundef zeroext true) #17
  %66 = select i1 %65, ptr @PL_sv_yes, ptr @PL_sv_no, !prof !134
  %67 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %66, ptr %67, align 8, !tbaa !66
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !66
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %69 = load ptr, ptr %68, align 8, !tbaa !92
  br label %70

70:                                               ; preds = %61, %64
  %71 = phi ptr [ %69, %64 ], [ %62, %61 ]
  ret ptr %71
}

declare zeroext i1 @Perl_do_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_pipe_op() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.18) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_fileno() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @PL_sv_undef, ptr %13, align 8, !tbaa !66
  store ptr %13, ptr @PL_stack_sp, align 8, !tbaa !66
  %14 = load ptr, ptr %3, align 8, !tbaa !92
  br label %81

15:                                               ; preds = %0
  %16 = getelementptr inbounds ptr, ptr %1, i64 -1
  %17 = load ptr, ptr %1, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -9
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  br label %32

32:                                               ; preds = %19, %15, %25, %29
  %33 = phi ptr [ %31, %29 ], [ null, %25 ], [ null, %15 ], [ null, %19 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = and i32 %37, 8388608
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 113) #17
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %41, %40 ], [ null, %35 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 29), align 8, !tbaa !66
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.19, i32 noundef 0) #17
  store ptr %49, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 29), align 8, !tbaa !66
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ %46, %45 ]
  %52 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %51, ptr noundef nonnull %16, ptr noundef nonnull %33, ptr noundef nonnull %43, i32 noundef 2, i32 noundef 0)
  br label %81

53:                                               ; preds = %42
  %54 = load ptr, ptr %33, align 8, !tbaa !130
  %55 = getelementptr inbounds %struct.xpvio, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = tail call ptr @__errno_location() #18
  store i32 95, ptr %59, align 4, !tbaa !91
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !66
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !66
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %61 = load ptr, ptr %60, align 8, !tbaa !92
  br label %81

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.io, ptr %33, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !76
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %32, %62
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !66
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !66
  %67 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  br label %81

69:                                               ; preds = %62
  %70 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %64) #17
  %71 = sext i32 %70 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %71) #17
  %72 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !74
  %74 = and i32 %73, 4194304
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %78

78:                                               ; preds = %69, %76
  store ptr %7, ptr %1, align 8, !tbaa !66
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !66
  %79 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %80 = load ptr, ptr %79, align 8, !tbaa !92
  br label %81

81:                                               ; preds = %78, %66, %58, %50, %12
  %82 = phi ptr [ %14, %12 ], [ %52, %50 ], [ %61, %58 ], [ %80, %78 ], [ %68, %66 ]
  ret ptr %82
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_umask() local_unnamed_addr #0 !prof !136 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !82
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7, !prof !137

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %9, label %28, label %11, !prof !138

11:                                               ; preds = %7
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !74
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20, !prof !139

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !76
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %8, i32 noundef 2) #17
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = and i64 %23, 448
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26, !prof !139

26:                                               ; preds = %22
  %27 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.20) #17
  br label %42

28:                                               ; preds = %7, %22, %0
  %29 = phi ptr [ %10, %22 ], [ %1, %0 ], [ %10, %7 ]
  %30 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %29 to i64
  %33 = sub i64 %31, %32
  %34 = icmp slt i64 %33, 8
  br i1 %34, label %35, label %37, !prof !140

35:                                               ; preds = %28
  %36 = tail call ptr @Perl_stack_grow(ptr noundef %29, ptr noundef %29, i64 noundef 1) #17
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ %29, %28 ]
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr @PL_sv_undef, ptr %39, align 8, !tbaa !66
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !66
  %40 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi ptr [ %27, %26 ], [ %41, %37 ]
  ret ptr %43
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_binmode() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !82
  %6 = and i8 %5, 15
  switch i8 %6, label %10 [
    i8 0, label %7
    i8 1, label %13
  ]

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr @PL_sv_undef, ptr %8, align 8, !tbaa !66
  store ptr %8, ptr @PL_stack_sp, align 8, !tbaa !66
  %9 = load ptr, ptr %3, align 8, !tbaa !92
  br label %117

10:                                               ; preds = %0
  %11 = getelementptr inbounds ptr, ptr %2, i64 -1
  %12 = load ptr, ptr %2, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %0, %10
  %14 = phi ptr [ %12, %10 ], [ null, %0 ]
  %15 = phi ptr [ %11, %10 ], [ %2, %0 ]
  %16 = getelementptr inbounds ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %15, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = and i32 %21, 255
  %23 = add nsw i32 %22, -9
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  br label %32

32:                                               ; preds = %19, %13, %25, %29
  %33 = phi ptr [ %31, %29 ], [ null, %25 ], [ null, %13 ], [ null, %19 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = and i32 %37, 8388608
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 113) #17
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %41, %40 ], [ null, %35 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 28), align 16, !tbaa !66
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.21, i32 noundef 0) #17
  store ptr %49, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 28), align 16, !tbaa !66
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ %46, %45 ]
  %52 = icmp ne ptr %14, null
  %53 = zext i1 %52 to i32
  %54 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %51, ptr noundef nonnull %16, ptr noundef nonnull %33, ptr noundef nonnull %43, i32 noundef 6, i32 noundef %53, ptr noundef %14)
  br label %55

55:                                               ; preds = %42, %50
  %56 = phi ptr [ %54, %50 ], [ undef, %42 ]
  br i1 %44, label %57, label %117

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.io, ptr %33, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %32, %57
  tail call void @Perl_report_evil_fh(ptr noundef %17) #17
  %62 = tail call ptr @__errno_location() #18
  store i32 9, ptr %62, align 4, !tbaa !91
  store ptr @PL_sv_undef, ptr %15, align 8, !tbaa !66
  store ptr %15, ptr @PL_stack_sp, align 8, !tbaa !66
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %64 = load ptr, ptr %63, align 8, !tbaa !92
  br label %117

65:                                               ; preds = %57
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  store i64 0, ptr %1, align 8, !tbaa !105
  %66 = icmp eq ptr %14, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !74
  %70 = and i32 %69, 2098176
  %71 = icmp eq i32 %70, 1024
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load ptr, ptr %14, align 8, !tbaa !86
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !87
  store i64 %75, ptr %1, align 8, !tbaa !105
  %76 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !76
  br label %80

78:                                               ; preds = %67
  %79 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %80

80:                                               ; preds = %72, %78, %65
  %81 = phi ptr [ null, %65 ], [ %77, %72 ], [ %79, %78 ]
  %82 = load i64, ptr %1, align 8, !tbaa !105
  %83 = call i32 @Perl_mode_from_discipline(ptr noundef %81, i64 noundef %82) #17
  %84 = load ptr, ptr %33, align 8, !tbaa !130
  %85 = getelementptr inbounds %struct.xpvio, ptr %84, i64 0, i32 16
  %86 = load i8, ptr %85, align 8, !tbaa !141
  %87 = sext i8 %86 to i32
  %88 = call i32 @PerlIO_binmode(ptr noundef nonnull %59, i32 noundef %87, i32 noundef %83, ptr noundef %81) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load ptr, ptr %33, align 8, !tbaa !130
  %92 = getelementptr inbounds %struct.xpvio, ptr %91, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !142
  %94 = icmp eq ptr %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %58, align 8, !tbaa !76
  %97 = icmp eq ptr %93, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.xpvio, ptr %91, i64 0, i32 16
  %100 = load i8, ptr %99, align 8, !tbaa !141
  %101 = sext i8 %100 to i32
  %102 = call i32 @PerlIO_binmode(ptr noundef nonnull %93, i32 noundef %101, i32 noundef %83, ptr noundef %81) #17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  store ptr @PL_sv_undef, ptr %106, align 8, !tbaa !66
  br label %113

107:                                              ; preds = %98, %95, %90
  %108 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr @PL_sv_yes, ptr %109, align 8, !tbaa !66
  br label %113

110:                                              ; preds = %80
  %111 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  store ptr @PL_sv_undef, ptr %112, align 8, !tbaa !66
  br label %113

113:                                              ; preds = %110, %107, %104
  %114 = phi ptr [ %112, %110 ], [ %109, %107 ], [ %106, %104 ]
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !66
  %115 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %116 = load ptr, ptr %115, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %117

117:                                              ; preds = %55, %113, %61, %7
  %118 = phi ptr [ %9, %7 ], [ %116, %113 ], [ %64, %61 ], [ %56, %55 ]
  ret ptr %118
}

declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mode_from_discipline(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PerlIO_binmode(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_tie() local_unnamed_addr #0 !prof !143 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = load i32, ptr %3, align 4, !tbaa !91
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %70 [
    i8 12, label %13
    i8 11, label %24
    i8 9, label %34
    i8 10, label %34
  ], !prof !144

13:                                               ; preds = %0
  %14 = and i32 %11, 1073741824
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16, !prof !145

16:                                               ; preds = %13
  %17 = tail call ptr @Perl_hv_eiter_p(ptr noundef %9) #17
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %10, align 4, !tbaa !74
  %22 = and i32 %21, -1073741825
  store i32 %22, ptr %10, align 4, !tbaa !74
  tail call void @Perl_hv_free_ent(ptr noundef %9, ptr noundef nonnull %18) #17
  br label %23

23:                                               ; preds = %20, %16, %13
  tail call void @Perl_hv_eiter_set(ptr noundef %9, ptr noundef null) #17
  br label %70

24:                                               ; preds = %0
  %25 = and i32 %11, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = icmp sgt i32 %11, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24) #17
  br label %30

30:                                               ; preds = %29, %27
  tail call void @Perl_av_clear(ptr noundef %9) #17
  %31 = load i32, ptr %10, align 4, !tbaa !74
  %32 = and i32 %31, 1073741823
  %33 = or disjoint i32 %32, 1073741824
  store i32 %33, ptr %10, align 4, !tbaa !74
  br label %70

34:                                               ; preds = %0, %0
  %35 = and i32 %11, 49152
  %36 = icmp eq i32 %35, 32768
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = and i32 %11, 255
  %39 = add nsw i32 %38, -9
  %40 = icmp ult i32 %39, 2
  %41 = and i32 %11, 16777216
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = tail call ptr @Perl_newSV_type(i32 noundef 15) #17
  %52 = load ptr, ptr %45, align 8, !tbaa !76
  %53 = getelementptr inbounds %struct.gp, ptr %52, i64 0, i32 1
  store ptr %51, ptr %53, align 8, !tbaa !128
  br label %54

54:                                               ; preds = %50, %44
  %55 = load ptr, ptr %45, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !128
  br label %70

58:                                               ; preds = %37, %34
  %59 = and i32 %11, 255
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load ptr, ptr %9, align 8, !tbaa !86
  %63 = getelementptr inbounds %struct.xpvlv, ptr %62, i64 0, i32 9
  %64 = load i8, ptr %63, align 8, !tbaa !146
  %65 = icmp eq i8 %64, 121
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %9) #17
  %67 = load ptr, ptr %9, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct.xpvlv, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !148
  br label %70

70:                                               ; preds = %58, %0, %66, %61, %24, %30, %54, %23
  %71 = phi ptr [ @.str.25, %54 ], [ @.str.23, %24 ], [ @.str.23, %30 ], [ @.str.22, %23 ], [ @.str.26, %61 ], [ @.str.26, %66 ], [ @.str.26, %0 ], [ @.str.26, %58 ]
  %72 = phi i32 [ 113, %54 ], [ 80, %24 ], [ 80, %30 ], [ 80, %23 ], [ 113, %61 ], [ 113, %66 ], [ 113, %0 ], [ 113, %58 ]
  %73 = phi ptr [ %57, %54 ], [ %9, %24 ], [ %9, %30 ], [ %9, %23 ], [ %9, %61 ], [ %69, %66 ], [ %9, %0 ], [ %9, %58 ]
  %74 = getelementptr inbounds ptr, ptr %7, i64 2
  %75 = ptrtoint ptr %1 to i64
  %76 = ptrtoint ptr %8 to i64
  %77 = sub i64 %75, %76
  %78 = lshr exact i64 %77, 3
  %79 = trunc i64 %78 to i32
  %80 = load ptr, ptr %74, align 8, !tbaa !66
  %81 = tail call i32 @Perl_sv_isobject(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %158, label %83, !prof !145

83:                                               ; preds = %70
  tail call void @Perl_push_scope() #17
  %84 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.stackinfo, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !114
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #17
  %90 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %91 = getelementptr inbounds %struct.stackinfo, ptr %89, i64 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !116
  %92 = getelementptr inbounds %struct.stackinfo, ptr %90, i64 0, i32 3
  store ptr %89, ptr %92, align 8, !tbaa !114
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi ptr [ %86, %83 ], [ %89, %88 ]
  %95 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 6
  store i32 2, ptr %95, align 8, !tbaa !117
  %96 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 4
  store i32 -1, ptr %96, align 8, !tbaa !118
  %97 = load ptr, ptr %94, align 8, !tbaa !119
  %98 = load ptr, ptr %97, align 8, !tbaa !97
  %99 = getelementptr inbounds %struct.xpvav, ptr %98, i64 0, i32 2
  store i64 0, ptr %99, align 8, !tbaa !99
  %100 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %101 = ptrtoint ptr %100 to i64
  %102 = sub i64 %75, %101
  %103 = ashr exact i64 %102, 3
  %104 = load ptr, ptr @PL_curstack, align 8, !tbaa !66
  %105 = load ptr, ptr %104, align 8, !tbaa !97
  %106 = getelementptr inbounds %struct.xpvav, ptr %105, i64 0, i32 2
  store i64 %103, ptr %106, align 8, !tbaa !99
  %107 = getelementptr inbounds %struct.av, ptr %97, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  store ptr %108, ptr @PL_stack_base, align 8, !tbaa !66
  %109 = load ptr, ptr %94, align 8, !tbaa !119
  %110 = load ptr, ptr %109, align 8, !tbaa !97
  %111 = getelementptr inbounds %struct.xpvav, ptr %110, i64 0, i32 3
  %112 = load i64, ptr %111, align 8, !tbaa !120
  %113 = getelementptr inbounds ptr, ptr %108, i64 %112
  store ptr %113, ptr @PL_stack_max, align 8, !tbaa !66
  %114 = load ptr, ptr %94, align 8, !tbaa !119
  %115 = load ptr, ptr %114, align 8, !tbaa !97
  %116 = getelementptr inbounds %struct.xpvav, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !99
  %118 = getelementptr inbounds ptr, ptr %108, i64 %117
  store ptr %118, ptr @PL_stack_sp, align 8, !tbaa !66
  %119 = load ptr, ptr %94, align 8, !tbaa !119
  store ptr %119, ptr @PL_curstack, align 8, !tbaa !66
  store ptr %94, ptr @PL_curstackinfo, align 8, !tbaa !66
  %120 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %121 = getelementptr inbounds i32, ptr %120, i64 1
  store ptr %121, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %122 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %93
  %125 = tail call ptr @Perl_markstack_grow() #17
  br label %126

126:                                              ; preds = %93, %124
  %127 = phi ptr [ %125, %124 ], [ %121, %93 ]
  %128 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %129 = ptrtoint ptr %118 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = lshr exact i64 %131, 3
  %133 = trunc i64 %132 to i32
  store i32 %133, ptr %127, align 4, !tbaa !91
  %134 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %135 = ptrtoint ptr %134 to i64
  %136 = sub i64 %135, %129
  %137 = ashr exact i64 %136, 3
  %138 = shl i64 %77, 29
  %139 = ashr i64 %138, 32
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = tail call ptr @Perl_stack_grow(ptr noundef %118, ptr noundef %118, i64 noundef %139) #17
  br label %143

143:                                              ; preds = %126, %141
  %144 = phi ptr [ %142, %141 ], [ %118, %126 ]
  %145 = icmp eq i32 %79, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %143, %146
  %147 = phi ptr [ %153, %146 ], [ %144, %143 ]
  %148 = phi i32 [ %150, %146 ], [ %79, %143 ]
  %149 = phi ptr [ %151, %146 ], [ %74, %143 ]
  %150 = add i32 %148, -1
  %151 = getelementptr inbounds ptr, ptr %149, i64 1
  %152 = load ptr, ptr %149, align 8, !tbaa !66
  %153 = getelementptr inbounds ptr, ptr %147, i64 1
  store ptr %152, ptr %153, align 8, !tbaa !66
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %155, label %146, !llvm.loop !149

155:                                              ; preds = %146, %143
  %156 = phi ptr [ %144, %143 ], [ %153, %146 ]
  store ptr %156, ptr @PL_stack_sp, align 8, !tbaa !66
  %157 = tail call i32 @Perl_call_method(ptr noundef nonnull %71, i32 noundef 2) #17
  br label %258

158:                                              ; preds = %70
  %159 = load ptr, ptr %74, align 8, !tbaa !66
  %160 = tail call ptr @Perl_gv_stashsv(ptr noundef %159, i32 noundef 0) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162, !prof !150

162:                                              ; preds = %158
  %163 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %160, ptr noundef nonnull %71, i32 noundef 1) #17
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %179, !prof !150

165:                                              ; preds = %162, %158
  %166 = load ptr, ptr %74, align 8, !tbaa !66
  %167 = getelementptr inbounds %struct.sv, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = and i32 %168, 65280
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 255
  %172 = icmp eq i32 %171, 8
  %173 = or i1 %170, %172
  %174 = and i32 %168, 16777471
  %175 = icmp eq i32 %174, 16777226
  %176 = or i1 %175, %173
  %177 = select i1 %176, ptr %166, ptr @PL_sv_no
  %178 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.27, ptr noundef nonnull %71, ptr noundef %177) #17
  br label %313

179:                                              ; preds = %162
  tail call void @Perl_push_scope() #17
  %180 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %181 = getelementptr inbounds %struct.stackinfo, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !114
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %189, !prof !150

184:                                              ; preds = %179
  %185 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #17
  %186 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %187 = getelementptr inbounds %struct.stackinfo, ptr %185, i64 0, i32 2
  store ptr %186, ptr %187, align 8, !tbaa !116
  %188 = getelementptr inbounds %struct.stackinfo, ptr %186, i64 0, i32 3
  store ptr %185, ptr %188, align 8, !tbaa !114
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi ptr [ %182, %179 ], [ %185, %184 ]
  %191 = getelementptr inbounds %struct.stackinfo, ptr %190, i64 0, i32 6
  store i32 2, ptr %191, align 8, !tbaa !117
  %192 = getelementptr inbounds %struct.stackinfo, ptr %190, i64 0, i32 4
  store i32 -1, ptr %192, align 8, !tbaa !118
  %193 = load ptr, ptr %190, align 8, !tbaa !119
  %194 = load ptr, ptr %193, align 8, !tbaa !97
  %195 = getelementptr inbounds %struct.xpvav, ptr %194, i64 0, i32 2
  store i64 0, ptr %195, align 8, !tbaa !99
  %196 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %197 = ptrtoint ptr %196 to i64
  %198 = sub i64 %75, %197
  %199 = ashr exact i64 %198, 3
  %200 = load ptr, ptr @PL_curstack, align 8, !tbaa !66
  %201 = load ptr, ptr %200, align 8, !tbaa !97
  %202 = getelementptr inbounds %struct.xpvav, ptr %201, i64 0, i32 2
  store i64 %199, ptr %202, align 8, !tbaa !99
  %203 = getelementptr inbounds %struct.av, ptr %193, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !76
  store ptr %204, ptr @PL_stack_base, align 8, !tbaa !66
  %205 = load ptr, ptr %190, align 8, !tbaa !119
  %206 = load ptr, ptr %205, align 8, !tbaa !97
  %207 = getelementptr inbounds %struct.xpvav, ptr %206, i64 0, i32 3
  %208 = load i64, ptr %207, align 8, !tbaa !120
  %209 = getelementptr inbounds ptr, ptr %204, i64 %208
  store ptr %209, ptr @PL_stack_max, align 8, !tbaa !66
  %210 = load ptr, ptr %190, align 8, !tbaa !119
  %211 = load ptr, ptr %210, align 8, !tbaa !97
  %212 = getelementptr inbounds %struct.xpvav, ptr %211, i64 0, i32 2
  %213 = load i64, ptr %212, align 8, !tbaa !99
  %214 = getelementptr inbounds ptr, ptr %204, i64 %213
  store ptr %214, ptr @PL_stack_sp, align 8, !tbaa !66
  %215 = load ptr, ptr %190, align 8, !tbaa !119
  store ptr %215, ptr @PL_curstack, align 8, !tbaa !66
  store ptr %190, ptr @PL_curstackinfo, align 8, !tbaa !66
  %216 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %217 = getelementptr inbounds i32, ptr %216, i64 1
  store ptr %217, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %218 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %220, label %222, !prof !150

220:                                              ; preds = %189
  %221 = tail call ptr @Perl_markstack_grow() #17
  br label %222

222:                                              ; preds = %189, %220
  %223 = phi ptr [ %221, %220 ], [ %217, %189 ]
  %224 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %225 = ptrtoint ptr %214 to i64
  %226 = ptrtoint ptr %224 to i64
  %227 = sub i64 %225, %226
  %228 = lshr exact i64 %227, 3
  %229 = trunc i64 %228 to i32
  store i32 %229, ptr %223, align 4, !tbaa !91
  %230 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %231 = ptrtoint ptr %230 to i64
  %232 = sub i64 %231, %225
  %233 = ashr exact i64 %232, 3
  %234 = shl i64 %77, 29
  %235 = ashr i64 %234, 32
  %236 = icmp slt i64 %233, %235
  br i1 %236, label %237, label %239, !prof !150

237:                                              ; preds = %222
  %238 = tail call ptr @Perl_stack_grow(ptr noundef %214, ptr noundef %214, i64 noundef %235) #17
  br label %239

239:                                              ; preds = %222, %237
  %240 = phi ptr [ %238, %237 ], [ %214, %222 ]
  %241 = icmp eq i32 %79, 0
  br i1 %241, label %251, label %242, !prof !151

242:                                              ; preds = %239, %242
  %243 = phi ptr [ %249, %242 ], [ %240, %239 ]
  %244 = phi i32 [ %246, %242 ], [ %79, %239 ]
  %245 = phi ptr [ %247, %242 ], [ %74, %239 ]
  %246 = add i32 %244, -1
  %247 = getelementptr inbounds ptr, ptr %245, i64 1
  %248 = load ptr, ptr %245, align 8, !tbaa !66
  %249 = getelementptr inbounds ptr, ptr %243, i64 1
  store ptr %248, ptr %249, align 8, !tbaa !66
  %250 = icmp eq i32 %246, 0
  br i1 %250, label %251, label %242, !prof !152, !llvm.loop !153

251:                                              ; preds = %242, %239
  %252 = phi ptr [ %240, %239 ], [ %249, %242 ]
  store ptr %252, ptr @PL_stack_sp, align 8, !tbaa !66
  %253 = getelementptr inbounds %struct.gv, ptr %163, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !76
  %255 = getelementptr inbounds %struct.gp, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !113
  %257 = tail call i32 @Perl_call_sv(ptr noundef %256, i32 noundef 2) #17
  br label %258

258:                                              ; preds = %251, %155
  %259 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %260 = load ptr, ptr %259, align 8, !tbaa !66
  %261 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %262 = getelementptr inbounds %struct.stackinfo, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !116
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266, !prof !150

265:                                              ; preds = %258
  tail call void @Perl_croak_popstack() #17
  br label %266

266:                                              ; preds = %258, %265
  %267 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %268 = ptrtoint ptr %259 to i64
  %269 = ptrtoint ptr %267 to i64
  %270 = sub i64 %268, %269
  %271 = ashr exact i64 %270, 3
  %272 = load ptr, ptr @PL_curstack, align 8, !tbaa !66
  %273 = load ptr, ptr %272, align 8, !tbaa !97
  %274 = getelementptr inbounds %struct.xpvav, ptr %273, i64 0, i32 2
  store i64 %271, ptr %274, align 8, !tbaa !99
  %275 = load ptr, ptr %263, align 8, !tbaa !119
  %276 = getelementptr inbounds %struct.av, ptr %275, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !76
  store ptr %277, ptr @PL_stack_base, align 8, !tbaa !66
  %278 = load ptr, ptr %263, align 8, !tbaa !119
  %279 = load ptr, ptr %278, align 8, !tbaa !97
  %280 = getelementptr inbounds %struct.xpvav, ptr %279, i64 0, i32 3
  %281 = load i64, ptr %280, align 8, !tbaa !120
  %282 = getelementptr inbounds ptr, ptr %277, i64 %281
  store ptr %282, ptr @PL_stack_max, align 8, !tbaa !66
  %283 = load ptr, ptr %263, align 8, !tbaa !119
  %284 = load ptr, ptr %283, align 8, !tbaa !97
  %285 = getelementptr inbounds %struct.xpvav, ptr %284, i64 0, i32 2
  %286 = load i64, ptr %285, align 8, !tbaa !99
  %287 = getelementptr inbounds ptr, ptr %277, i64 %286
  store ptr %287, ptr @PL_stack_sp, align 8, !tbaa !66
  %288 = load ptr, ptr %263, align 8, !tbaa !119
  store ptr %288, ptr @PL_curstack, align 8, !tbaa !66
  store ptr %263, ptr @PL_curstackinfo, align 8, !tbaa !66
  %289 = tail call i32 @Perl_sv_isobject(ptr noundef %260) #17
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %307, label %291, !prof !150

291:                                              ; preds = %266
  %292 = tail call i32 @Perl_sv_unmagic(ptr noundef %73, i32 noundef %72) #17
  %293 = getelementptr inbounds %struct.sv, ptr %260, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !76
  %295 = icmp eq ptr %73, %294
  br i1 %295, label %296, label %303, !prof !150

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !74
  %299 = and i32 %298, 255
  %300 = add nsw i32 %299, -11
  %301 = icmp ult i32 %300, 2
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28) #17
  br label %303

303:                                              ; preds = %296, %302, %291
  %304 = load ptr, ptr %293, align 8, !tbaa !76
  %305 = icmp eq ptr %304, %73
  %306 = select i1 %305, ptr null, ptr %260, !prof !150
  tail call void @Perl_sv_magic(ptr noundef %73, ptr noundef %306, i32 noundef %72, ptr noundef null, i32 noundef 0) #17
  br label %307

307:                                              ; preds = %303, %266
  tail call void @Perl_pop_scope() #17
  %308 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %309 = getelementptr inbounds ptr, ptr %308, i64 %6
  %310 = getelementptr inbounds ptr, ptr %309, i64 1
  store ptr %260, ptr %310, align 8, !tbaa !66
  store ptr %310, ptr @PL_stack_sp, align 8, !tbaa !66
  %311 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %312 = load ptr, ptr %311, align 8, !tbaa !92
  br label %313

313:                                              ; preds = %307, %165
  %314 = phi ptr [ %312, %307 ], [ %178, %165 ]
  ret ptr %314
}

declare ptr @Perl_hv_eiter_p(ptr noundef) local_unnamed_addr #2

declare void @Perl_hv_free_ent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_vivify_defelem(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_untie() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -11
  %8 = icmp ult i32 %7, 2
  %9 = select i1 %8, i8 80, i8 113
  %10 = add nsw i32 %6, -9
  %11 = icmp ult i32 %10, 2
  %12 = and i32 %5, 16826368
  %13 = icmp eq i32 %12, 32768
  %14 = and i1 %13, %11
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.gp, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store ptr @PL_sv_yes, ptr %1, align 8, !tbaa !66
  br label %128

22:                                               ; preds = %15, %0
  %23 = phi ptr [ %19, %15 ], [ %3, %0 ]
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.xpvlv, ptr %29, i64 0, i32 9
  %31 = load i8, ptr %30, align 8, !tbaa !146
  %32 = icmp eq i8 %31, 121
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_defelem_target(ptr noundef nonnull %23, ptr noundef null) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store ptr @PL_sv_undef, ptr %1, align 8, !tbaa !66
  br label %128

37:                                               ; preds = %33, %28, %22
  %38 = phi ptr [ %34, %33 ], [ %23, %28 ], [ %23, %22 ]
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !74
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = zext nneg i8 %9 to i32
  %45 = tail call ptr @Perl_mg_find(ptr noundef %38, i32 noundef %44) #17
  br label %46

46:                                               ; preds = %37, %43
  %47 = phi ptr [ %45, %43 ], [ null, %37 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %123, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.magic, ptr %47, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = tail call ptr @Perl_newRV(ptr noundef %38) #17
  %55 = tail call ptr @Perl_sv_2mortal(ptr noundef %54) #17
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi ptr [ %55, %53 ], [ %51, %49 ]
  %58 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !76
  %60 = icmp eq ptr %59, null
  br i1 %60, label %123, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %59, align 8, !tbaa !86
  %63 = load ptr, ptr %62, align 8, !tbaa !93
  %64 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %63, ptr noundef nonnull @.str.29, i32 noundef 0) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %116, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !126
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %116

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  %76 = icmp eq ptr %75, null
  br i1 %76, label %116, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %79 = getelementptr inbounds i32, ptr %78, i64 1
  store ptr %79, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %80 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = tail call ptr @Perl_markstack_grow() #17
  br label %84

84:                                               ; preds = %77, %82
  %85 = phi ptr [ %83, %82 ], [ %79, %77 ]
  %86 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %87 = ptrtoint ptr %2 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = lshr exact i64 %89, 3
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %85, align 4, !tbaa !91
  %92 = load ptr, ptr %50, align 8, !tbaa !121
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = tail call ptr @Perl_newRV(ptr noundef nonnull %64) #17
  %96 = tail call ptr @Perl_sv_2mortal(ptr noundef %95) #17
  br label %97

97:                                               ; preds = %84, %94
  %98 = phi ptr [ %96, %94 ], [ %92, %84 ]
  store ptr %98, ptr %1, align 8, !tbaa !66
  %99 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %1 to i64
  %102 = sub i64 %100, %101
  %103 = icmp slt i64 %102, 8
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef 1) #17
  br label %106

106:                                              ; preds = %97, %104
  %107 = phi ptr [ %105, %104 ], [ %1, %97 ]
  %108 = tail call ptr @Perl_sv_newmortal() #17
  %109 = getelementptr inbounds ptr, ptr %107, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !66
  %110 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !90
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  tail call void @Perl_sv_setiv(ptr noundef %108, i64 noundef %113) #17
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !66
  tail call void @Perl_push_scope() #17
  %114 = tail call i32 @Perl_call_sv(ptr noundef nonnull %75, i32 noundef 1) #17
  tail call void @Perl_pop_scope() #17
  %115 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  br label %123

116:                                              ; preds = %61, %66, %71
  %117 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !90
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = zext i32 %118 to i64
  %122 = add nsw i64 %121, -1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 43, ptr noundef nonnull @.str.30, i64 noundef %122) #17
  br label %123

123:                                              ; preds = %56, %116, %120, %106, %46
  %124 = phi ptr [ %2, %46 ], [ %2, %56 ], [ %115, %106 ], [ %2, %120 ], [ %2, %116 ]
  %125 = zext nneg i8 %9 to i32
  %126 = tail call i32 @Perl_sv_unmagic(ptr noundef %38, i32 noundef %125) #17
  %127 = getelementptr inbounds ptr, ptr %124, i64 1
  store ptr @PL_sv_yes, ptr %127, align 8, !tbaa !66
  br label %128

128:                                              ; preds = %123, %36, %21
  %129 = phi ptr [ %127, %123 ], [ %1, %36 ], [ %1, %21 ]
  store ptr %129, ptr @PL_stack_sp, align 8, !tbaa !66
  %130 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %131 = load ptr, ptr %130, align 8, !tbaa !92
  ret ptr %131
}

declare ptr @Perl_defelem_target(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_tied() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr %1, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, 2
  %8 = select i1 %7, i32 80, i32 113
  %9 = add nsw i32 %5, -9
  %10 = icmp ult i32 %9, 2
  %11 = and i32 %4, 16826368
  %12 = icmp eq i32 %11, 32768
  %13 = and i1 %12, %10
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %14, %0
  %21 = phi ptr [ %18, %14 ], [ %2, %0 ]
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !86
  %28 = getelementptr inbounds %struct.xpvlv, ptr %27, i64 0, i32 9
  %29 = load i8, ptr %28, align 8, !tbaa !146
  %30 = icmp eq i8 %29, 121
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_defelem_target(ptr noundef nonnull %21, ptr noundef null) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %31, %26, %20
  %35 = phi ptr [ %32, %31 ], [ %21, %26 ], [ %21, %20 ]
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = and i32 %37, 8388608
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_mg_find(ptr noundef %35, i32 noundef %8) #17
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi ptr [ %41, %40 ], [ null, %34 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.magic, ptr %43, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = tail call ptr @Perl_newRV(ptr noundef %35) #17
  %51 = tail call ptr @Perl_sv_2mortal(ptr noundef %50) #17
  br label %52

52:                                               ; preds = %42, %14, %31, %49, %45
  %53 = phi ptr [ %51, %49 ], [ %47, %45 ], [ @PL_sv_undef, %31 ], [ @PL_sv_undef, %14 ], [ @PL_sv_undef, %42 ]
  store ptr %53, ptr %1, align 8, !tbaa !66
  %54 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  ret ptr %55
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_dbmopen() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %1, i64 -2
  %5 = load ptr, ptr %2, align 8, !tbaa !66
  %6 = getelementptr inbounds ptr, ptr %1, i64 -3
  %7 = load ptr, ptr %4, align 8, !tbaa !66
  %8 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.31, i64 noundef 11, i32 noundef 524288) #17
  %9 = tail call ptr @Perl_gv_stashsv(ptr noundef %8, i32 noundef 0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %9, ptr noundef nonnull @.str.22, i32 noundef 1) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !66
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.32) #17
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %16 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %9, ptr noundef nonnull @.str.22, i32 noundef 1) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %21

18:                                               ; preds = %0
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !66
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.32) #17
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #17
  br label %124

21:                                               ; preds = %14, %11
  %22 = phi ptr [ %12, %11 ], [ %16, %14 ]
  %23 = phi ptr [ %6, %11 ], [ %15, %14 ]
  tail call void @Perl_push_scope() #17
  %24 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %26 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call ptr @Perl_markstack_grow() #17
  br label %30

30:                                               ; preds = %21, %28
  %31 = phi ptr [ %29, %28 ], [ %25, %21 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %33 = ptrtoint ptr %23 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 3
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %31, align 4, !tbaa !91
  %38 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %33
  %41 = icmp slt i64 %40, 40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = tail call ptr @Perl_stack_grow(ptr noundef %23, ptr noundef %23, i64 noundef 5) #17
  br label %44

44:                                               ; preds = %30, %42
  %45 = phi ptr [ %43, %42 ], [ %23, %30 ]
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %8, ptr %46, align 8, !tbaa !66
  %47 = getelementptr inbounds ptr, ptr %45, i64 2
  store ptr %5, ptr %47, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !74
  %50 = and i32 %49, 2097408
  %51 = icmp eq i32 %50, 256
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load ptr, ptr %3, align 8, !tbaa !86
  %54 = getelementptr inbounds %struct.xpviv, ptr %53, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !76
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %63, label %60

57:                                               ; preds = %44
  %58 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %3, i32 noundef 2) #17
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %52
  %61 = tail call ptr @Perl_sv_newmortal() #17
  %62 = getelementptr inbounds ptr, ptr %45, i64 3
  store ptr %61, ptr %62, align 8, !tbaa !66
  tail call void @Perl_sv_setuv(ptr noundef %61, i64 noundef 66) #17
  br label %76

63:                                               ; preds = %57, %52
  %64 = tail call ptr @Perl_sv_newmortal() #17
  %65 = getelementptr inbounds ptr, ptr %45, i64 3
  store ptr %64, ptr %65, align 8, !tbaa !66
  tail call void @Perl_sv_setuv(ptr noundef %64, i64 noundef 2) #17
  %66 = load i32, ptr %48, align 4, !tbaa !74
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
  store ptr %77, ptr %78, align 8, !tbaa !66
  store ptr %78, ptr @PL_stack_sp, align 8, !tbaa !66
  %79 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !76
  %81 = getelementptr inbounds %struct.gp, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !113
  %83 = tail call i32 @Perl_call_sv(ptr noundef %82, i32 noundef 2) #17
  %84 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %85 = load ptr, ptr %84, align 8, !tbaa !66
  %86 = tail call i32 @Perl_sv_isobject(ptr noundef %85) #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %76
  %89 = getelementptr inbounds ptr, ptr %84, i64 -1
  %90 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %91 = getelementptr inbounds i32, ptr %90, i64 1
  store ptr %91, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %92 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !66
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = tail call ptr @Perl_markstack_grow() #17
  br label %96

96:                                               ; preds = %88, %94
  %97 = phi ptr [ %95, %94 ], [ %91, %88 ]
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %99 = ptrtoint ptr %89 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = lshr exact i64 %101, 3
  %103 = trunc i64 %102 to i32
  store i32 %103, ptr %97, align 4, !tbaa !91
  store ptr %8, ptr %84, align 8, !tbaa !66
  %104 = getelementptr inbounds ptr, ptr %84, i64 1
  store ptr %5, ptr %104, align 8, !tbaa !66
  %105 = tail call ptr @Perl_sv_newmortal() #17
  %106 = getelementptr inbounds ptr, ptr %84, i64 2
  store ptr %105, ptr %106, align 8, !tbaa !66
  tail call void @Perl_sv_setuv(ptr noundef %105, i64 noundef 0) #17
  %107 = getelementptr inbounds ptr, ptr %84, i64 3
  store ptr %77, ptr %107, align 8, !tbaa !66
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !66
  %108 = load ptr, ptr %79, align 8, !tbaa !76
  %109 = getelementptr inbounds %struct.gp, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !113
  %111 = tail call i32 @Perl_call_sv(ptr noundef %110, i32 noundef 2) #17
  %112 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  br label %113

113:                                              ; preds = %96, %76
  %114 = phi ptr [ %84, %76 ], [ %112, %96 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !66
  %116 = tail call i32 @Perl_sv_isobject(ptr noundef %115) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = tail call i32 @Perl_sv_unmagic(ptr noundef %7, i32 noundef 80) #17
  %120 = load ptr, ptr %114, align 8, !tbaa !66
  tail call void @Perl_sv_magic(ptr noundef %7, ptr noundef %120, i32 noundef 80, ptr noundef null, i32 noundef 0) #17
  br label %121

121:                                              ; preds = %118, %113
  tail call void @Perl_pop_scope() #17
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !66
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %123 = load ptr, ptr %122, align 8, !tbaa !92
  br label %124

124:                                              ; preds = %121, %19
  %125 = phi ptr [ %123, %121 ], [ %20, %19 ]
  ret ptr %125
}

declare void @Perl_require_pv(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sselect() local_unnamed_addr #0 !prof !65 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca [4 x ptr], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %10 = getelementptr inbounds ptr, ptr %3, i64 -4
  br label %11

11:                                               ; preds = %0, %68
  %12 = phi i64 [ 1, %0 ], [ %70, %68 ]
  %13 = phi i32 [ 0, %0 ], [ %69, %68 ]
  %14 = getelementptr inbounds ptr, ptr %10, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call i32 @Perl_mg_get(ptr noundef %15) #17
  br label %22

22:                                               ; preds = %11, %20
  %23 = load i32, ptr %16, align 4, !tbaa !74
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %23, 255
  %27 = icmp eq i32 %26, 8
  %28 = or i1 %25, %27
  %29 = and i32 %23, 16777471
  %30 = icmp eq i32 %29, 16777226
  %31 = or i1 %30, %28
  br i1 %31, label %32, label %68

32:                                               ; preds = %22
  %33 = and i32 %23, 134283264
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = and i32 %23, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %15, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !87
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %35
  tail call void @Perl_croak_no_modify() #17
  br label %48

44:                                               ; preds = %32
  %45 = and i32 %23, 268435456
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @Perl_sv_force_normal_flags(ptr noundef %15, i32 noundef 0) #17
  br label %48

48:                                               ; preds = %44, %47, %38, %43
  %49 = load i32, ptr %16, align 4, !tbaa !74
  %50 = and i32 %49, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = and i32 %49, 16384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.34) #17
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, ptr %16, align 4, !tbaa !74
  %58 = and i32 %57, 430018304
  %59 = icmp eq i32 %58, 1024
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %15, ptr noundef null, i32 noundef 0) #17
  br label %62

62:                                               ; preds = %56, %60, %48
  %63 = load ptr, ptr %15, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !87
  %66 = trunc i64 %65 to i32
  %67 = tail call i32 @llvm.smax.i32(i32 %13, i32 %66)
  br label %68

68:                                               ; preds = %22, %62
  %69 = phi i32 [ %67, %62 ], [ %13, %22 ]
  %70 = add nuw nsw i64 %12, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %11, !llvm.loop !154

72:                                               ; preds = %68
  %73 = and i32 %69, -128
  %74 = add nuw i32 %73, 128
  %75 = load ptr, ptr %3, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !74
  %78 = and i32 %77, 2097152
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = tail call i32 @Perl_mg_get(ptr noundef %75) #17
  br label %82

82:                                               ; preds = %72, %80
  %83 = load i32, ptr %76, align 4, !tbaa !74
  %84 = and i32 %83, 65280
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 255
  %87 = icmp eq i32 %86, 8
  %88 = or i1 %85, %87
  %89 = and i32 %83, 16777471
  %90 = icmp eq i32 %89, 16777226
  %91 = or i1 %90, %88
  br i1 %91, label %92, label %111

92:                                               ; preds = %82
  %93 = and i32 %83, 512
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %75, align 8, !tbaa !86
  %97 = getelementptr inbounds %struct.xpvnv, ptr %96, i64 0, i32 5
  %98 = load double, ptr %97, align 8, !tbaa !76
  br label %101

99:                                               ; preds = %92
  %100 = tail call double @Perl_sv_2nv_flags(ptr noundef %75, i32 noundef 0) #17
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi double [ %98, %95 ], [ %100, %99 ]
  %103 = fcmp olt double %102, 0.000000e+00
  %104 = select i1 %103, double 0.000000e+00, double %102
  %105 = fptosi double %104 to i64
  store i64 %105, ptr %1, align 8, !tbaa !155
  %106 = sitofp i64 %105 to double
  %107 = fsub double %104, %106
  %108 = fmul double %107, 1.000000e+06
  %109 = fptosi double %108 to i64
  %110 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  store i64 %109, ptr %110, align 8, !tbaa !157
  br label %111

111:                                              ; preds = %82, %101
  %112 = phi ptr [ %1, %101 ], [ null, %82 ]
  %113 = sext i32 %74 to i64
  %114 = or i32 %69, 127
  br label %115

115:                                              ; preds = %111, %158
  %116 = phi i64 [ 1, %111 ], [ %161, %158 ]
  %117 = getelementptr inbounds ptr, ptr %10, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !66
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !74
  %121 = and i32 %120, 65280
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %120, 255
  %124 = icmp eq i32 %123, 8
  %125 = or i1 %122, %124
  %126 = and i32 %120, 16777471
  %127 = icmp eq i32 %126, 16777226
  %128 = or i1 %127, %125
  br i1 %128, label %129, label %158

129:                                              ; preds = %115
  %130 = load ptr, ptr %118, align 8, !tbaa !86
  %131 = getelementptr inbounds %struct.xpv, ptr %130, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !87
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.xpv, ptr %130, i64 0, i32 3
  %136 = load i64, ptr %135, align 8, !tbaa !76
  %137 = trunc i64 %136 to i32
  %138 = icmp sgt i32 %74, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %118, i64 noundef %113) #17
  br label %141

141:                                              ; preds = %139, %134
  %142 = load ptr, ptr %118, align 8, !tbaa !86
  %143 = getelementptr inbounds %struct.xpv, ptr %142, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !87
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 3
  %147 = icmp sgt i32 %74, %145
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load ptr, ptr %146, align 8, !tbaa !76
  %150 = shl i64 %144, 32
  %151 = ashr exact i64 %150, 32
  %152 = getelementptr i8, ptr %149, i64 %151
  %153 = sub i32 %114, %145
  %154 = zext i32 %153 to i64
  %155 = add nuw nsw i64 %154, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %152, i8 0, i64 %155, i1 false), !tbaa !76
  br label %156

156:                                              ; preds = %148, %141
  %157 = load ptr, ptr %146, align 8, !tbaa !76
  br label %158

158:                                              ; preds = %129, %115, %156
  %159 = phi ptr [ %157, %156 ], [ null, %115 ], [ null, %129 ]
  %160 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %116
  store ptr %159, ptr %160, align 8, !tbaa !66
  %161 = add nuw nsw i64 %116, 1
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %115, !llvm.loop !158

163:                                              ; preds = %158
  %164 = shl nsw i32 %69, 3
  %165 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !66
  %167 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %168 = load ptr, ptr %167, align 16, !tbaa !66
  %169 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 3
  %170 = load ptr, ptr %169, align 8, !tbaa !66
  %171 = call i32 @select(i32 noundef %164, ptr noundef %166, ptr noundef %168, ptr noundef %170, ptr noundef %112) #17
  br label %172

172:                                              ; preds = %163, %186
  %173 = phi i64 [ 1, %163 ], [ %187, %186 ]
  %174 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !66
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds ptr, ptr %10, i64 %173
  %179 = load ptr, ptr %178, align 8, !tbaa !66
  %180 = getelementptr inbounds %struct.sv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !74
  %182 = and i32 %181, 4194304
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %177
  %185 = call i32 @Perl_mg_set(ptr noundef %179) #17
  br label %186

186:                                              ; preds = %172, %177, %184
  %187 = add nuw nsw i64 %173, 1
  %188 = icmp eq i64 %187, 4
  br i1 %188, label %189, label %172, !llvm.loop !159

189:                                              ; preds = %186
  %190 = sext i32 %171 to i64
  call void @Perl_sv_setiv(ptr noundef %9, i64 noundef %190) #17
  %191 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %192 = load i32, ptr %191, align 4, !tbaa !74
  %193 = and i32 %192, 4194304
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = call i32 @Perl_mg_set(ptr noundef %9) #17
  br label %197

197:                                              ; preds = %189, %195
  %198 = getelementptr inbounds ptr, ptr %3, i64 -3
  store ptr %9, ptr %198, align 8, !tbaa !66
  %199 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %200 = getelementptr inbounds %struct.op, ptr %199, i64 0, i32 5
  %201 = load i8, ptr %200, align 2, !tbaa !77
  %202 = and i8 %201, 3
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %197
  %205 = zext nneg i8 %202 to i32
  br label %208

206:                                              ; preds = %197
  %207 = call i32 @Perl_block_gimme() #17
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = icmp eq i32 %209, 3
  %211 = icmp ne ptr %112, null
  %212 = and i1 %211, %210
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load i64, ptr %1, align 8, !tbaa !155
  %215 = sitofp i64 %214 to double
  %216 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !157
  %218 = sitofp i64 %217 to double
  %219 = fdiv double %218, 1.000000e+06
  %220 = fadd double %219, %215
  %221 = call ptr @Perl_sv_newmortal() #17
  %222 = getelementptr inbounds ptr, ptr %3, i64 -2
  store ptr %221, ptr %222, align 8, !tbaa !66
  call void @Perl_sv_setnv(ptr noundef %221, double noundef %220) #17
  br label %223

223:                                              ; preds = %213, %208
  %224 = phi ptr [ %222, %213 ], [ %198, %208 ]
  store ptr %224, ptr @PL_stack_sp, align 8, !tbaa !66
  %225 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %226 = load ptr, ptr %225, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret ptr %226
}

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_setdefout(ptr noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !90
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !90
  %5 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !134

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8, !tbaa !90
  br label %14

13:                                               ; preds = %7
  tail call void @Perl_sv_free2(ptr noundef nonnull %5, i32 noundef %9) #17
  br label %14

14:                                               ; preds = %1, %11, %13
  store ptr %0, ptr @PL_defoutgv, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_select() local_unnamed_addr #6 !prof !160 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11, !prof !161

11:                                               ; preds = %0
  %12 = getelementptr inbounds ptr, ptr %1, i64 -1
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  br label %14

14:                                               ; preds = %0, %11
  %15 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %16 = phi ptr [ %13, %11 ], [ null, %0 ]
  %17 = load ptr, ptr @PL_defoutgv, align 8
  %18 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = and i32 %19, 49152
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %31, !prof !162

22:                                               ; preds = %14
  %23 = and i32 %19, 255
  %24 = add nsw i32 %23, -9
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %31, !prof !162

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  br label %31

31:                                               ; preds = %22, %14, %26
  %32 = phi ptr [ %30, %26 ], [ null, %14 ], [ null, %22 ]
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %17, ptr %32, !prof !161
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !126
  %37 = and i32 %36, 49152
  %38 = icmp eq i32 %37, 32768
  br i1 %38, label %39, label %47, !prof !162

39:                                               ; preds = %31
  %40 = and i32 %36, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %47, !prof !162

43:                                               ; preds = %39
  %44 = load ptr, ptr %34, align 8, !tbaa !110
  %45 = getelementptr inbounds %struct.xpvgv, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  br label %47

47:                                               ; preds = %39, %31, %43
  %48 = phi ptr [ %46, %43 ], [ null, %31 ], [ null, %39 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50, !prof !161

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !95
  %53 = and i32 %52, 33554432
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %85, label %55, !prof !161

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load ptr, ptr %48, align 8, !tbaa !163
  %59 = getelementptr inbounds %struct.xpvhv, ptr %58, i64 0, i32 3
  %60 = load i64, ptr %59, align 8, !tbaa !164
  %61 = getelementptr ptr, ptr %57, i64 %60
  %62 = getelementptr ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65, !prof !161

65:                                               ; preds = %55
  %66 = getelementptr i8, ptr %61, i64 36
  %67 = load i32, ptr %66, align 4, !tbaa !166
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %85, label %69, !prof !161

69:                                               ; preds = %65
  %70 = load ptr, ptr %34, align 8, !tbaa !110
  %71 = getelementptr inbounds %struct.xpvgv, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.hek, ptr %72, i64 0, i32 2
  %74 = getelementptr inbounds %struct.hek, ptr %72, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !168
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !76
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = sub nsw i32 0, %75
  %83 = select i1 %81, i32 %75, i32 %82, !prof !162
  %84 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %48, ptr noundef nonnull %73, i32 noundef %83, i32 noundef 32, ptr noundef null, i32 noundef 0) #17
  br label %85

85:                                               ; preds = %47, %65, %55, %50, %69
  %86 = phi ptr [ %84, %69 ], [ null, %50 ], [ null, %55 ], [ null, %65 ], [ null, %47 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %110, label %88, !prof !161

88:                                               ; preds = %85
  %89 = load ptr, ptr %86, align 8, !tbaa !66
  %90 = icmp eq ptr %89, %34
  br i1 %90, label %91, label %110, !prof !162

91:                                               ; preds = %88
  %92 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  tail call void @Perl_gv_efullname4(ptr noundef %7, ptr noundef %92, ptr noundef null, i1 noundef zeroext true) #17
  %93 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !74
  %95 = and i32 %94, 4194304
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97, !prof !162

97:                                               ; preds = %91
  %98 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %99

99:                                               ; preds = %91, %97
  %100 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %101 = ptrtoint ptr %100 to i64
  %102 = ptrtoint ptr %15 to i64
  %103 = sub i64 %101, %102
  %104 = icmp slt i64 %103, 8
  br i1 %104, label %105, label %107, !prof !161

105:                                              ; preds = %99
  %106 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #17
  br label %107

107:                                              ; preds = %99, %105
  %108 = phi ptr [ %106, %105 ], [ %15, %99 ]
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %7, ptr %109, align 8, !tbaa !66
  br label %123

110:                                              ; preds = %88, %85
  %111 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %15 to i64
  %114 = sub i64 %112, %113
  %115 = icmp slt i64 %114, 8
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #17
  br label %118

118:                                              ; preds = %110, %116
  %119 = phi ptr [ %117, %116 ], [ %15, %110 ]
  %120 = tail call ptr @Perl_newRV(ptr noundef %34) #17
  %121 = tail call ptr @Perl_sv_2mortal(ptr noundef %120) #17
  %122 = getelementptr inbounds ptr, ptr %119, i64 1
  store ptr %121, ptr %122, align 8, !tbaa !66
  br label %123

123:                                              ; preds = %118, %107
  %124 = phi ptr [ %109, %107 ], [ %122, %118 ]
  %125 = icmp eq ptr %16, null
  br i1 %125, label %156, label %126, !prof !161

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !74
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -9
  %131 = icmp ult i32 %130, 2
  br i1 %131, label %132, label %140, !prof !162

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !76
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136, !prof !161

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.gp, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !128
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142, !prof !161

140:                                              ; preds = %126, %132, %136
  %141 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %16, i32 noundef 15) #17
  br label %142

142:                                              ; preds = %140, %136
  %143 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !90
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !90
  %146 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148, !prof !161

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.sv, ptr %146, i64 0, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !90
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %154, !prof !162

152:                                              ; preds = %148
  %153 = add i32 %150, -1
  store i32 %153, ptr %149, align 8, !tbaa !90
  br label %155

154:                                              ; preds = %148
  tail call void @Perl_sv_free2(ptr noundef nonnull %146, i32 noundef %150) #17
  br label %155

155:                                              ; preds = %142, %152, %154
  store ptr %16, ptr @PL_defoutgv, align 8, !tbaa !66
  br label %156

156:                                              ; preds = %155, %123
  store ptr %124, ptr @PL_stack_sp, align 8, !tbaa !66
  %157 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %158 = load ptr, ptr %157, align 8, !tbaa !92
  ret ptr %158
}

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_getc() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds ptr, ptr %1, i64 -1
  %16 = select i1 %14, ptr @PL_stdingv, ptr %1
  br label %17

17:                                               ; preds = %12, %0
  %18 = phi ptr [ %1, %0 ], [ %15, %12 ]
  %19 = phi ptr [ @PL_stdingv, %0 ], [ %16, %12 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !74
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -9
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gp, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  br label %35

35:                                               ; preds = %22, %17, %28, %32
  %36 = phi ptr [ %34, %32 ], [ null, %28 ], [ null, %17 ], [ null, %22 ]
  br i1 %11, label %37, label %45

37:                                               ; preds = %35
  %38 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %18 to i64
  %41 = sub i64 %39, %40
  %42 = icmp slt i64 %41, 8
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = tail call ptr @Perl_stack_grow(ptr noundef %18, ptr noundef %18, i64 noundef 1) #17
  br label %45

45:                                               ; preds = %43, %37, %35
  %46 = phi ptr [ %44, %43 ], [ %18, %37 ], [ %18, %35 ]
  %47 = icmp eq ptr %36, null
  br i1 %47, label %96, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !74
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %36, i32 noundef 113) #17
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %54, %53 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %93, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.op, ptr %59, i64 0, i32 5
  %61 = load i8, ptr %60, align 2, !tbaa !77
  %62 = and i8 %61, 3
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = zext nneg i8 %62 to i32
  br label %68

66:                                               ; preds = %58
  %67 = tail call i32 @Perl_block_gimme() #17
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 24), align 16, !tbaa !66
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.35, i32 noundef 0) #17
  store ptr %73, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 24), align 16, !tbaa !66
  br label %74

74:                                               ; preds = %68, %72
  %75 = phi ptr [ %73, %72 ], [ %70, %68 ]
  %76 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %75, ptr noundef %46, ptr noundef nonnull %36, ptr noundef nonnull %56, i32 noundef %69, i32 noundef 0)
  %77 = icmp eq i32 %69, 2
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %80 = load ptr, ptr %79, align 8, !tbaa !66
  %81 = icmp eq ptr %7, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  tail call void @Perl_sv_setsv_flags(ptr noundef %7, ptr noundef %80, i32 noundef 1554) #17
  %83 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !74
  %85 = and i32 %84, 4194304
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %89

89:                                               ; preds = %78, %82, %87, %74
  %90 = phi ptr [ %79, %87 ], [ %79, %82 ], [ %79, %78 ], [ %46, %74 ]
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %92 = load ptr, ptr %91, align 8, !tbaa !92
  br label %93

93:                                               ; preds = %55, %89
  %94 = phi ptr [ %90, %89 ], [ %46, %55 ]
  %95 = phi ptr [ %92, %89 ], [ undef, %55 ]
  br i1 %57, label %96, label %187

96:                                               ; preds = %93, %45
  %97 = phi ptr [ %94, %93 ], [ %46, %45 ]
  br i1 %21, label %100, label %98

98:                                               ; preds = %96
  %99 = tail call zeroext i1 @Perl_do_eof(ptr noundef nonnull %20) #17
  br i1 %99, label %100, label %114

100:                                              ; preds = %98, %96
  br i1 %47, label %110, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.io, ptr %36, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !76
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load ptr, ptr %36, align 8, !tbaa !130
  %107 = getelementptr inbounds %struct.xpvio, ptr %106, i64 0, i32 16
  %108 = load i8, ptr %107, align 8, !tbaa !141
  %109 = icmp eq i8 %108, 62
  br i1 %109, label %111, label %110

110:                                              ; preds = %105, %100
  tail call void @Perl_report_evil_fh(ptr noundef %20) #17
  br label %111

111:                                              ; preds = %110, %105, %101
  %112 = tail call ptr @__errno_location() #18
  store i32 9, ptr %112, align 4, !tbaa !91
  %113 = getelementptr inbounds ptr, ptr %97, i64 1
  store ptr @PL_sv_undef, ptr %113, align 8, !tbaa !66
  br label %183

114:                                              ; preds = %98
  store i8 1, ptr @PL_tainted, align 1, !tbaa !78
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef nonnull @.str.36, i64 noundef 1) #17
  %115 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = getelementptr inbounds %struct.gp, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !128
  %119 = getelementptr inbounds %struct.io, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  %121 = tail call i32 @PerlIO_getc(ptr noundef %120) #17
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !76
  store i8 %122, ptr %124, align 1, !tbaa !76
  %125 = load ptr, ptr %115, align 8, !tbaa !76
  %126 = getelementptr inbounds %struct.gp, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !128
  %128 = getelementptr inbounds %struct.io, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !76
  %130 = tail call i32 @PerlIO_isutf8(ptr noundef %129) #17
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %170, label %132

132:                                              ; preds = %114
  %133 = load ptr, ptr %123, align 8, !tbaa !76
  %134 = load i8, ptr %133, align 1, !tbaa !76
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !76
  %138 = zext i8 %137 to i64
  %139 = icmp ugt i8 %137, 1
  br i1 %139, label %140, label %166

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !74
  %143 = and i32 %142, 268435456
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load ptr, ptr %7, align 8, !tbaa !86
  %147 = getelementptr inbounds %struct.xpv, ptr %146, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !76
  %149 = icmp ugt i64 %148, %138
  br i1 %149, label %153, label %150

150:                                              ; preds = %145, %140
  %151 = add nuw nsw i64 %138, 1
  %152 = tail call ptr @Perl_sv_grow(ptr noundef %7, i64 noundef %151) #17
  br label %153

153:                                              ; preds = %145, %150
  %154 = load ptr, ptr %115, align 8, !tbaa !76
  %155 = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !128
  %157 = getelementptr inbounds %struct.io, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !76
  %159 = load ptr, ptr %123, align 8, !tbaa !76
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  %161 = add nsw i64 %138, -1
  %162 = tail call i64 @Perl_PerlIO_read(ptr noundef %158, ptr noundef nonnull %160, i64 noundef %161) #17
  %163 = add i64 %162, 1
  %164 = load ptr, ptr %7, align 8, !tbaa !86
  %165 = getelementptr inbounds %struct.xpv, ptr %164, i64 0, i32 2
  store i64 %163, ptr %165, align 8, !tbaa !87
  br label %166

166:                                              ; preds = %153, %132
  %167 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = or i32 %168, 536870912
  store i32 %169, ptr %167, align 4, !tbaa !74
  br label %174

170:                                              ; preds = %114
  %171 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !74
  %173 = and i32 %172, -536870913
  store i32 %173, ptr %171, align 4, !tbaa !74
  br label %174

174:                                              ; preds = %170, %166
  %175 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !74
  %177 = and i32 %176, 4194304
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %181

181:                                              ; preds = %174, %179
  %182 = getelementptr inbounds ptr, ptr %97, i64 1
  store ptr %7, ptr %182, align 8, !tbaa !66
  br label %183

183:                                              ; preds = %111, %181
  %184 = phi ptr [ %182, %181 ], [ %113, %111 ]
  store ptr %184, ptr @PL_stack_sp, align 8, !tbaa !66
  %185 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  br label %187

187:                                              ; preds = %183, %93
  %188 = phi ptr [ %95, %93 ], [ %186, %183 ]
  ret ptr %188
}

declare zeroext i1 @Perl_do_eof(ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_enterwrite() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !82
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %7 ]
  %17 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  br label %24

18:                                               ; preds = %0
  %19 = getelementptr inbounds ptr, ptr %1, i64 -1
  %20 = load ptr, ptr %1, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr @PL_defoutgv, align 8
  %23 = select i1 %21, ptr %22, ptr %20
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi ptr [ %16, %15 ], [ %19, %18 ]
  %26 = phi ptr [ %17, %15 ], [ %23, %18 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !74
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !128
  br label %41

41:                                               ; preds = %28, %24, %34, %38
  %42 = phi ptr [ %40, %38 ], [ null, %34 ], [ null, %24 ], [ null, %28 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr @PL_sv_no, ptr %45, align 8, !tbaa !66
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !66
  %46 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  br label %69

48:                                               ; preds = %41
  %49 = load ptr, ptr %42, align 8, !tbaa !130
  %50 = getelementptr inbounds %struct.xpvio, ptr %49, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !170
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %26, ptr %51
  %54 = getelementptr inbounds %struct.gv, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !171
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = tail call ptr @Perl_sv_newmortal() #17
  tail call void @Perl_gv_efullname4(ptr noundef %60, ptr noundef %53, ptr noundef null, i1 noundef zeroext false) #17
  %61 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37, ptr noundef %60) #17
  br label %69

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.xpvio, ptr %49, i64 0, i32 17
  %64 = load i8, ptr %63, align 1, !tbaa !132
  %65 = and i8 %64, -9
  store i8 %65, ptr %63, align 1, !tbaa !132
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !66
  %66 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = tail call fastcc ptr @S_doform(ptr noundef nonnull %57, ptr noundef %26, ptr noundef %67)
  br label %69

69:                                               ; preds = %62, %59, %44
  %70 = phi ptr [ %68, %62 ], [ %61, %59 ], [ %47, %44 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_doform(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !65 {
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !77
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call i32 @Perl_block_gimme() #17
  %11 = trunc i32 %10 to i8
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ %7, %3 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !172
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !174
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @Perl_cv_clone(ptr noundef nonnull %0) #17
  %21 = tail call ptr @Perl_sv_2mortal(ptr noundef %20) #17
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ %0, %12 ]
  tail call void @Perl_push_scope() #17
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #17
  %24 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !105
  store i64 %24, ptr @PL_tmps_floor, align 8, !tbaa !105
  %25 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !118
  %28 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !176
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = add nsw i32 %27, 1
  store i32 %32, ptr %26, align 8, !tbaa !118
  br label %37

33:                                               ; preds = %22
  %34 = tail call i32 @Perl_cxinc() #17
  %35 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %36 = getelementptr inbounds %struct.stackinfo, ptr %35, i64 0, i32 4
  store i32 %34, ptr %36, align 8, !tbaa !118
  br label %37

37:                                               ; preds = %33, %31
  %38 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !177
  %41 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !118
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.context, ptr %40, i64 %43
  store i8 9, ptr %44, align 8, !tbaa !76
  %45 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 3
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !76
  %53 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !76
  %55 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %56 = load ptr, ptr @PL_markstack, align 8, !tbaa !66
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = lshr exact i64 %59, 2
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 5
  store i32 %61, ptr %62, align 8, !tbaa !76
  %63 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !91
  %64 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 6
  store i32 %63, ptr %64, align 4, !tbaa !76
  %65 = load ptr, ptr @PL_curpm, align 8, !tbaa !66
  %66 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 7
  store ptr %65, ptr %66, align 8, !tbaa !76
  %67 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 1
  store i8 %13, ptr %67, align 1, !tbaa !76
  %68 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 8
  %69 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 8, i32 0, i32 1
  store ptr %23, ptr %69, align 8, !tbaa !76
  %70 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 8, i32 0, i32 2
  store ptr %1, ptr %70, align 8, !tbaa !76
  store ptr %2, ptr %68, align 8, !tbaa !76
  %71 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 8, i32 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 2
  store i16 0, ptr %73, align 2, !tbaa !76
  %74 = load ptr, ptr %23, align 8, !tbaa !172
  %75 = getelementptr inbounds %struct.xpvcv, ptr %74, i64 0, i32 13
  %76 = load i32, ptr %75, align 4, !tbaa !91
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %37
  %79 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !90
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !90
  br label %82

82:                                               ; preds = %78, %37
  %83 = load i32, ptr %75, align 4, !tbaa !91
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %75, align 4, !tbaa !91
  %85 = load ptr, ptr %72, align 8, !tbaa !76
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !90
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8, !tbaa !90
  br label %91

91:                                               ; preds = %82, %87
  %92 = load i32, ptr %75, align 4, !tbaa !91
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.xpvcv, ptr %74, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !76
  tail call void @Perl_pad_push(ptr noundef %96, i32 noundef %92) #17
  br label %97

97:                                               ; preds = %94, %91
  %98 = load ptr, ptr @PL_comppad, align 8, !tbaa !66
  tail call void @Perl_save_pushptr(ptr noundef %98, i32 noundef 7) #17
  %99 = load ptr, ptr %23, align 8, !tbaa !172
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !76
  %102 = getelementptr inbounds %struct.padlist, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !178
  %104 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 13
  %105 = load i32, ptr %104, align 4, !tbaa !91
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %103, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !66
  store ptr %108, ptr @PL_comppad, align 8, !tbaa !66
  %109 = getelementptr inbounds %struct.av, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  store ptr %110, ptr @PL_curpad, align 8, !tbaa !66
  %111 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !90
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !90
  %114 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %97
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !90
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = add i32 %118, -1
  store i32 %121, ptr %117, align 8, !tbaa !90
  br label %123

122:                                              ; preds = %116
  tail call void @Perl_sv_free2(ptr noundef nonnull %114, i32 noundef %118) #17
  br label %123

123:                                              ; preds = %97, %120, %122
  store ptr %1, ptr @PL_defoutgv, align 8, !tbaa !66
  %124 = load ptr, ptr %23, align 8, !tbaa !172
  %125 = getelementptr inbounds %struct.xpvcv, ptr %124, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !76
  ret ptr %126
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_leavewrite() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !118
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.context, ptr %3, i64 %6, i32 0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = icmp eq ptr %12, null
  br i1 %13, label %190, label %14

14:                                               ; preds = %0
  %15 = load ptr, ptr %12, align 8, !tbaa !130
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = icmp eq ptr %17, null
  br i1 %18, label %190, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !180
  %22 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = icmp sge i64 %21, %25
  %27 = load ptr, ptr @PL_toptarget, align 8
  %28 = icmp eq ptr %22, %27
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %190, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !181
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %98

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !182
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !183
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 8, !tbaa !110
  %44 = getelementptr inbounds %struct.xpvgv, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.hek, ptr %45, i64 0, i32 2
  %47 = tail call ptr @Perl_savepv(ptr noundef nonnull %46) #17
  %48 = load ptr, ptr %12, align 8, !tbaa !130
  %49 = getelementptr inbounds %struct.xpvio, ptr %48, i64 0, i32 12
  store ptr %47, ptr %49, align 8, !tbaa !183
  br label %50

50:                                               ; preds = %42, %38
  %51 = load ptr, ptr %8, align 8, !tbaa !110
  %52 = getelementptr inbounds %struct.xpvgv, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  %54 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.38, ptr noundef %53) #17
  %55 = tail call ptr @Perl_sv_2mortal(ptr noundef %54) #17
  %56 = tail call ptr @Perl_gv_fetchsv(ptr noundef %55, i32 noundef 0, i32 noundef 14) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.gv, ptr %56, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.gp, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !171
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %50
  %65 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.39, i64 noundef 3, i32 noundef 128, i32 noundef 14) #17
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %58
  %68 = tail call ptr @Perl_savesvpv(ptr noundef %55) #17
  br label %71

69:                                               ; preds = %64
  %70 = tail call ptr @Perl_savepvn(ptr noundef nonnull @.str.39, i32 noundef 3) #17
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = load ptr, ptr %12, align 8, !tbaa !130
  %74 = getelementptr inbounds %struct.xpvio, ptr %73, i64 0, i32 10
  store ptr %72, ptr %74, align 8, !tbaa !182
  br label %75

75:                                               ; preds = %71, %34
  %76 = load ptr, ptr %12, align 8, !tbaa !130
  %77 = getelementptr inbounds %struct.xpvio, ptr %76, i64 0, i32 10
  %78 = load ptr, ptr %77, align 8, !tbaa !182
  %79 = tail call ptr @Perl_gv_fetchpv(ptr noundef %78, i32 noundef 0, i32 noundef 14) #17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.gv, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.gp, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !171
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %75
  %88 = load ptr, ptr %12, align 8, !tbaa !130
  %89 = getelementptr inbounds %struct.xpvio, ptr %88, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !184
  %91 = getelementptr inbounds %struct.xpvio, ptr %88, i64 0, i32 9
  store i64 %90, ptr %91, align 8, !tbaa !180
  br label %95

92:                                               ; preds = %81
  %93 = load ptr, ptr %12, align 8, !tbaa !130
  %94 = getelementptr inbounds %struct.xpvio, ptr %93, i64 0, i32 11
  store ptr %79, ptr %94, align 8, !tbaa !181
  br label %95

95:                                               ; preds = %87, %92
  %96 = phi i1 [ true, %92 ], [ false, %87 ]
  %97 = phi i32 [ 0, %92 ], [ 2, %87 ]
  br i1 %96, label %98, label %186

98:                                               ; preds = %95, %30
  %99 = load ptr, ptr %12, align 8, !tbaa !130
  %100 = getelementptr inbounds %struct.xpvio, ptr %99, i64 0, i32 17
  %101 = load i8, ptr %100, align 1, !tbaa !132
  %102 = and i8 %101, 8
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %145, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.xpvio, ptr %99, i64 0, i32 9
  %106 = load i64, ptr %105, align 8, !tbaa !180
  %107 = trunc i64 %106 to i32
  %108 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %109 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  %111 = icmp sgt i32 %107, 0
  br i1 %111, label %116, label %143

112:                                              ; preds = %116
  %113 = getelementptr inbounds i8, ptr %119, i64 1
  %114 = add nsw i32 %117, -1
  %115 = icmp sgt i32 %117, 1
  br i1 %115, label %116, label %121, !llvm.loop !185

116:                                              ; preds = %104, %112
  %117 = phi i32 [ %114, %112 ], [ %107, %104 ]
  %118 = phi ptr [ %113, %112 ], [ %110, %104 ]
  %119 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %118, i32 noundef 10) #19
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %112

121:                                              ; preds = %116, %112
  %122 = phi ptr [ null, %116 ], [ %113, %112 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %143, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %108, align 8, !tbaa !86
  %126 = getelementptr inbounds %struct.xpv, ptr %125, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !87
  %128 = ptrtoint ptr %122 to i64
  %129 = ptrtoint ptr %110 to i64
  %130 = sub i64 %128, %129
  store i64 %130, ptr %126, align 8, !tbaa !87
  %131 = tail call zeroext i1 @Perl_do_print(ptr noundef nonnull %108, ptr noundef nonnull %17) #17
  %132 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  store i64 %127, ptr %134, align 8, !tbaa !87
  tail call void @Perl_sv_chop(ptr noundef nonnull %132, ptr noundef nonnull %122) #17
  %135 = load ptr, ptr %12, align 8, !tbaa !130
  %136 = getelementptr inbounds %struct.xpvio, ptr %135, i64 0, i32 9
  %137 = load i64, ptr %136, align 8, !tbaa !180
  %138 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %139 = load ptr, ptr %138, align 8, !tbaa !86
  %140 = getelementptr inbounds %struct.xpviv, ptr %139, i64 0, i32 4
  %141 = load i64, ptr %140, align 8, !tbaa !76
  %142 = sub nsw i64 %141, %137
  store i64 %142, ptr %140, align 8, !tbaa !76
  br label %143

143:                                              ; preds = %121, %124, %104
  %144 = phi i32 [ 2, %104 ], [ 0, %124 ], [ 0, %121 ]
  br i1 %111, label %145, label %186

145:                                              ; preds = %143, %98
  %146 = load ptr, ptr %12, align 8, !tbaa !130
  %147 = getelementptr inbounds %struct.xpvio, ptr %146, i64 0, i32 9
  %148 = load i64, ptr %147, align 8, !tbaa !180
  %149 = icmp sgt i64 %148, -1
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.xpvio, ptr %146, i64 0, i32 7
  %152 = load i64, ptr %151, align 8, !tbaa !186
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 1, i32 noundef 1, i32 noundef 3) #17
  %156 = getelementptr inbounds %struct.gv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !76
  %158 = load ptr, ptr %157, align 8, !tbaa !106
  %159 = tail call zeroext i1 @Perl_do_print(ptr noundef %158, ptr noundef nonnull %17) #17
  br label %160

160:                                              ; preds = %154, %150, %145
  %161 = load ptr, ptr %12, align 8, !tbaa !130
  %162 = getelementptr inbounds %struct.xpvio, ptr %161, i64 0, i32 8
  %163 = load i64, ptr %162, align 8, !tbaa !184
  %164 = getelementptr inbounds %struct.xpvio, ptr %161, i64 0, i32 9
  store i64 %163, ptr %164, align 8, !tbaa !180
  %165 = getelementptr inbounds %struct.xpvio, ptr %161, i64 0, i32 7
  %166 = load i64, ptr %165, align 8, !tbaa !186
  %167 = add nsw i64 %166, 1
  store i64 %167, ptr %165, align 8, !tbaa !186
  %168 = load ptr, ptr @PL_toptarget, align 8, !tbaa !66
  store ptr %168, ptr @PL_formtarget, align 8, !tbaa !66
  %169 = load ptr, ptr %12, align 8, !tbaa !130
  %170 = getelementptr inbounds %struct.xpvio, ptr %169, i64 0, i32 17
  %171 = load i8, ptr %170, align 1, !tbaa !132
  %172 = or i8 %171, 8
  store i8 %172, ptr %170, align 1, !tbaa !132
  %173 = getelementptr inbounds %struct.xpvio, ptr %169, i64 0, i32 11
  %174 = load ptr, ptr %173, align 8, !tbaa !181
  %175 = getelementptr inbounds %struct.gv, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  %177 = getelementptr inbounds %struct.gp, ptr %176, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !171
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %160
  %181 = tail call ptr @Perl_sv_newmortal() #17
  tail call void @Perl_gv_efullname4(ptr noundef %181, ptr noundef %174, ptr noundef null, i1 noundef zeroext false) #17
  %182 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41, ptr noundef %181) #17
  br label %186

183:                                              ; preds = %160
  %184 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %185 = tail call fastcc ptr @S_doform(ptr noundef nonnull %178, ptr noundef %8, ptr noundef %184)
  br label %186

186:                                              ; preds = %143, %95, %183, %180
  %187 = phi i32 [ 1, %183 ], [ 1, %180 ], [ %97, %95 ], [ %144, %143 ]
  %188 = phi ptr [ %185, %183 ], [ %182, %180 ], [ undef, %95 ], [ undef, %143 ]
  %189 = icmp eq i32 %187, 2
  br i1 %189, label %190, label %318

190:                                              ; preds = %19, %0, %14, %186
  %191 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !66
  %192 = getelementptr inbounds %struct.stackinfo, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !177
  %194 = getelementptr inbounds %struct.stackinfo, ptr %191, i64 0, i32 4
  %195 = load i32, ptr %194, align 8, !tbaa !118
  %196 = add nsw i32 %195, -1
  store i32 %196, ptr %194, align 8, !tbaa !118
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds %struct.context, ptr %193, i64 %197
  %199 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %200 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !76
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %199, i64 %202
  %204 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 4
  %205 = load ptr, ptr %204, align 8, !tbaa !76
  store ptr %205, ptr @PL_curcop, align 8, !tbaa !66
  %206 = load ptr, ptr @PL_markstack, align 8, !tbaa !66
  %207 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 5
  %208 = load i32, ptr %207, align 8, !tbaa !76
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, ptr %206, i64 %209
  store ptr %210, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %211 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 6
  %212 = load i32, ptr %211, align 4, !tbaa !76
  store i32 %212, ptr @PL_scopestack_ix, align 4, !tbaa !91
  %213 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 7
  %214 = load ptr, ptr %213, align 8, !tbaa !76
  store ptr %214, ptr @PL_curpm, align 8, !tbaa !66
  %215 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 8
  %216 = load ptr, ptr %215, align 8, !tbaa !76
  %217 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 2
  %218 = load i16, ptr %217, align 2, !tbaa !76
  %219 = and i16 %218, 256
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %221, label %269

221:                                              ; preds = %190
  %222 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 8, i32 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !76
  %224 = getelementptr inbounds %struct.block, ptr %198, i64 0, i32 8, i32 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !76
  %226 = or disjoint i16 %218, 256
  store i16 %226, ptr %217, align 2, !tbaa !76
  %227 = getelementptr inbounds %struct.sv, ptr %225, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !90
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 8, !tbaa !90
  %230 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !66
  %231 = icmp eq ptr %230, null
  br i1 %231, label %239, label %232

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.sv, ptr %230, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !90
  %235 = icmp ugt i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = add i32 %234, -1
  store i32 %237, ptr %233, align 8, !tbaa !90
  br label %239

238:                                              ; preds = %232
  tail call void @Perl_sv_free2(ptr noundef nonnull %230, i32 noundef %234) #17
  br label %239

239:                                              ; preds = %221, %236, %238
  store ptr %225, ptr @PL_defoutgv, align 8, !tbaa !66
  %240 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !91
  %241 = load ptr, ptr @PL_scopestack, align 8, !tbaa !66
  %242 = load i32, ptr %211, align 4, !tbaa !76
  %243 = sext i32 %242 to i64
  %244 = getelementptr i32, ptr %241, i64 %243
  %245 = getelementptr i32, ptr %244, i64 -1
  %246 = load i32, ptr %245, align 4, !tbaa !91
  %247 = icmp sgt i32 %240, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  tail call void @Perl_leave_scope(i32 noundef %246) #17
  br label %249

249:                                              ; preds = %248, %239
  %250 = load ptr, ptr %223, align 8, !tbaa !172
  %251 = getelementptr inbounds %struct.xpvcv, ptr %250, i64 0, i32 13
  %252 = load i32, ptr %251, align 4, !tbaa !91
  %253 = add nsw i32 %252, -1
  store i32 %253, ptr %251, align 4, !tbaa !91
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %249
  %256 = load ptr, ptr %222, align 8, !tbaa !76
  %257 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !90
  %259 = icmp ugt i32 %258, 1
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = add i32 %258, -1
  store i32 %261, ptr %257, align 8, !tbaa !90
  br label %263

262:                                              ; preds = %255
  tail call void @Perl_sv_free2(ptr noundef %256, i32 noundef %258) #17
  br label %263

263:                                              ; preds = %262, %260, %249
  %264 = load i32, ptr %227, align 8, !tbaa !90
  %265 = icmp ugt i32 %264, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = add i32 %264, -1
  store i32 %267, ptr %227, align 8, !tbaa !90
  br label %269

268:                                              ; preds = %263
  tail call void @Perl_sv_free2(ptr noundef %225, i32 noundef %264) #17
  br label %269

269:                                              ; preds = %268, %266, %190
  tail call void @Perl_pop_scope() #17
  br i1 %13, label %280, label %270

270:                                              ; preds = %269
  %271 = load ptr, ptr %12, align 8, !tbaa !130
  %272 = getelementptr inbounds %struct.xpvio, ptr %271, i64 0, i32 5
  %273 = load ptr, ptr %272, align 8, !tbaa !142
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.io, ptr %12, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !76
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  tail call void @Perl_report_wrongway_fh(ptr noundef %8, i8 noundef signext 60) #17
  br label %281

280:                                              ; preds = %269, %275
  tail call void @Perl_report_evil_fh(ptr noundef %8) #17
  br label %281

281:                                              ; preds = %280, %279
  %282 = getelementptr inbounds ptr, ptr %203, i64 1
  store ptr @PL_sv_no, ptr %282, align 8, !tbaa !66
  br label %315

283:                                              ; preds = %270
  %284 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %285 = load ptr, ptr %284, align 8, !tbaa !86
  %286 = getelementptr inbounds %struct.xpviv, ptr %285, i64 0, i32 4
  %287 = load i64, ptr %286, align 8, !tbaa !76
  %288 = getelementptr inbounds %struct.xpvio, ptr %271, i64 0, i32 9
  %289 = load i64, ptr %288, align 8, !tbaa !180
  %290 = sub nsw i64 %289, %287
  store i64 %290, ptr %288, align 8, !tbaa !180
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 5, ptr noundef nonnull @.str.42) #17
  br label %293

293:                                              ; preds = %292, %283
  %294 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %295 = tail call zeroext i1 @Perl_do_print(ptr noundef %294, ptr noundef nonnull %273) #17
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds ptr, ptr %203, i64 1
  store ptr @PL_sv_no, ptr %297, align 8, !tbaa !66
  br label %315

298:                                              ; preds = %293
  %299 = load ptr, ptr @PL_formtarget, align 8, !tbaa !66
  %300 = load ptr, ptr %299, align 8, !tbaa !86
  %301 = getelementptr inbounds %struct.xpviv, ptr %300, i64 0, i32 4
  store i64 0, ptr %301, align 8, !tbaa !76
  %302 = load ptr, ptr %299, align 8, !tbaa !86
  %303 = getelementptr inbounds %struct.xpv, ptr %302, i64 0, i32 2
  store i64 0, ptr %303, align 8, !tbaa !87
  %304 = getelementptr inbounds %struct.sv, ptr %299, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !76
  store i8 0, ptr %305, align 1, !tbaa !76
  %306 = load ptr, ptr %12, align 8, !tbaa !130
  %307 = getelementptr inbounds %struct.xpvio, ptr %306, i64 0, i32 17
  %308 = load i8, ptr %307, align 1, !tbaa !132
  %309 = and i8 %308, 4
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %298
  %312 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %273) #17
  br label %313

313:                                              ; preds = %311, %298
  %314 = getelementptr inbounds ptr, ptr %203, i64 1
  store ptr @PL_sv_yes, ptr %314, align 8, !tbaa !66
  br label %315

315:                                              ; preds = %296, %313, %281
  %316 = phi ptr [ %314, %313 ], [ %297, %296 ], [ %282, %281 ]
  %317 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !66
  store ptr %317, ptr @PL_formtarget, align 8, !tbaa !66
  store ptr %316, ptr @PL_stack_sp, align 8, !tbaa !66
  br label %318

318:                                              ; preds = %186, %315
  %319 = phi ptr [ %216, %315 ], [ %188, %186 ]
  ret ptr %319
}

declare ptr @Perl_savepv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_savesvpv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_prtf() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = load i32, ptr %3, align 4, !tbaa !91
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !77
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  %14 = select i1 %12, ptr %7, ptr %13
  %15 = select i1 %12, ptr @PL_defoutgv, ptr %13
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !74
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -9
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !128
  br label %31

31:                                               ; preds = %18, %0, %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ], [ null, %0 ], [ null, %18 ]
  %33 = icmp eq ptr %14, %1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %1 to i64
  %38 = sub i64 %36, %37
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi ptr [ %41, %40 ], [ %1, %34 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  store ptr @PL_sv_no, ptr %44, align 8, !tbaa !66
  br label %45

45:                                               ; preds = %42, %31
  %46 = phi ptr [ %44, %42 ], [ %1, %31 ]
  %47 = icmp eq ptr %32, null
  br i1 %47, label %105, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !74
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %32, i32 noundef 113) #17
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %54, %53 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %101, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %60 = getelementptr inbounds ptr, ptr %59, i64 %6
  %61 = icmp eq ptr %14, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %46 to i64
  %66 = sub i64 %64, %65
  %67 = icmp slt i64 %66, 8
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = ptrtoint ptr %14 to i64
  %70 = ptrtoint ptr %59 to i64
  %71 = sub i64 %69, %70
  %72 = tail call ptr @Perl_stack_grow(ptr noundef %46, ptr noundef %46, i64 noundef 1) #17
  %73 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %74 = getelementptr inbounds i8, ptr %73, i64 %71
  br label %75

75:                                               ; preds = %62, %68
  %76 = phi ptr [ %74, %68 ], [ %14, %62 ]
  %77 = phi ptr [ %72, %68 ], [ %46, %62 ]
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  %79 = getelementptr inbounds ptr, ptr %76, i64 2
  %80 = ptrtoint ptr %77 to i64
  %81 = ptrtoint ptr %78 to i64
  %82 = sub i64 %80, %81
  %83 = add i64 %82, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %79, ptr nonnull align 1 %78, i64 %83, i1 false)
  %84 = getelementptr inbounds ptr, ptr %77, i64 1
  br label %85

85:                                               ; preds = %75, %58
  %86 = phi ptr [ %78, %75 ], [ %14, %58 ]
  %87 = phi ptr [ %84, %75 ], [ %46, %58 ]
  %88 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 21), align 8, !tbaa !66
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.43, i32 noundef 0) #17
  store ptr %91, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 21), align 8, !tbaa !66
  br label %92

92:                                               ; preds = %85, %90
  %93 = phi ptr [ %91, %90 ], [ %88, %85 ]
  %94 = getelementptr inbounds ptr, ptr %86, i64 -1
  %95 = ptrtoint ptr %87 to i64
  %96 = ptrtoint ptr %86 to i64
  %97 = sub i64 %95, %96
  %98 = lshr exact i64 %97, 3
  %99 = trunc i64 %98 to i32
  %100 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %93, ptr noundef nonnull %94, ptr noundef nonnull %32, ptr noundef nonnull %56, i32 noundef 10, i32 noundef %99)
  br label %101

101:                                              ; preds = %55, %92
  %102 = phi ptr [ %86, %92 ], [ %14, %55 ]
  %103 = phi ptr [ %87, %92 ], [ %46, %55 ]
  %104 = phi ptr [ %100, %92 ], [ undef, %55 ]
  br i1 %57, label %105, label %154

105:                                              ; preds = %101, %45
  %106 = phi ptr [ %102, %101 ], [ %14, %45 ]
  %107 = phi ptr [ %103, %101 ], [ %46, %45 ]
  br i1 %47, label %108, label %109

108:                                              ; preds = %105
  tail call void @Perl_report_evil_fh(ptr noundef %16) #17
  br label %144

109:                                              ; preds = %105
  %110 = load ptr, ptr %32, align 8, !tbaa !130
  %111 = getelementptr inbounds %struct.xpvio, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !142
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.io, ptr %32, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @Perl_report_wrongway_fh(ptr noundef %16, i8 noundef signext 60) #17
  br label %144

119:                                              ; preds = %114
  %120 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 6) #17
  br i1 %120, label %121, label %144

121:                                              ; preds = %119
  tail call void @Perl_report_evil_fh(ptr noundef %16) #17
  br label %144

122:                                              ; preds = %109
  %123 = tail call ptr @Perl_sv_newmortal() #17
  %124 = ptrtoint ptr %107 to i64
  %125 = ptrtoint ptr %106 to i64
  %126 = sub i64 %124, %125
  %127 = lshr exact i64 %126, 3
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds ptr, ptr %106, i64 1
  tail call void @Perl_do_sprintf(ptr noundef %123, i32 noundef %128, ptr noundef nonnull %129) #17
  %130 = tail call zeroext i1 @Perl_do_print(ptr noundef %123, ptr noundef nonnull %112) #17
  br i1 %130, label %131, label %146

131:                                              ; preds = %122
  %132 = load ptr, ptr %32, align 8, !tbaa !130
  %133 = getelementptr inbounds %struct.xpvio, ptr %132, i64 0, i32 17
  %134 = load i8, ptr %133, align 1, !tbaa !132
  %135 = and i8 %134, 4
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %112) #17
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %131
  %141 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %142 = getelementptr inbounds ptr, ptr %141, i64 %6
  %143 = getelementptr inbounds ptr, ptr %142, i64 1
  store ptr @PL_sv_yes, ptr %143, align 8, !tbaa !66
  br label %150

144:                                              ; preds = %118, %121, %119, %108
  %145 = tail call ptr @__errno_location() #18
  store i32 9, ptr %145, align 4, !tbaa !91
  br label %146

146:                                              ; preds = %144, %122, %137
  %147 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %148 = getelementptr inbounds ptr, ptr %147, i64 %6
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  store ptr @PL_sv_undef, ptr %149, align 8, !tbaa !66
  br label %150

150:                                              ; preds = %140, %146
  %151 = phi ptr [ %149, %146 ], [ %143, %140 ]
  store ptr %151, ptr @PL_stack_sp, align 8, !tbaa !66
  %152 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %153 = load ptr, ptr %152, align 8, !tbaa !92
  br label %154

154:                                              ; preds = %150, %101
  %155 = phi ptr [ %104, %101 ], [ %153, %150 ]
  ret ptr %155
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_do_sprintf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sysopen() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !82
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %2, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %10, label %23, label %12

12:                                               ; preds = %8
  store ptr %9, ptr @PL_Sv, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = and i32 %14, 2097408
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !76
  br label %23

21:                                               ; preds = %12
  %22 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %9, i32 noundef 2) #17
  br label %23

23:                                               ; preds = %8, %0, %17, %21
  %24 = phi ptr [ %11, %17 ], [ %11, %21 ], [ %2, %0 ], [ %11, %8 ]
  %25 = phi i64 [ %20, %17 ], [ %22, %21 ], [ 438, %0 ], [ 438, %8 ]
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds ptr, ptr %24, i64 -1
  %28 = load ptr, ptr %24, align 8, !tbaa !66
  store ptr %28, ptr @PL_Sv, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !74
  %31 = and i32 %30, 2097408
  %32 = icmp eq i32 %31, 256
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load ptr, ptr %28, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.xpviv, ptr %34, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !76
  br label %39

37:                                               ; preds = %23
  %38 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %28, i32 noundef 2) #17
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i64 [ %36, %33 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds ptr, ptr %24, i64 -2
  %43 = load ptr, ptr %27, align 8, !tbaa !66
  %44 = load ptr, ptr %42, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %45 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load ptr, ptr %43, align 8, !tbaa !86
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !87
  store i64 %52, ptr %1, align 8, !tbaa !105
  %53 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  br label %57

55:                                               ; preds = %39
  %56 = call ptr @Perl_sv_2pv_flags(ptr noundef %43, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %54, %49 ], [ %56, %55 ]
  %59 = load i64, ptr %1, align 8, !tbaa !105
  %60 = call zeroext i1 @Perl_do_open_raw(ptr noundef %44, ptr noundef %58, i64 noundef %59, i32 noundef %41, i32 noundef %26) #17
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = getelementptr inbounds %struct.gp, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !128
  %66 = load ptr, ptr %65, align 8, !tbaa !130
  %67 = getelementptr inbounds %struct.xpvio, ptr %66, i64 0, i32 4
  store i64 0, ptr %67, align 8, !tbaa !76
  br label %68

68:                                               ; preds = %57, %61
  %69 = phi ptr [ @PL_sv_yes, %61 ], [ @PL_sv_undef, %57 ]
  store ptr %69, ptr %42, align 8, !tbaa !66
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !66
  %70 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %71
}

declare zeroext i1 @Perl_do_open_raw(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sysread() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %6 = load i32, ptr %4, align 4, !tbaa !91
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = icmp eq i16 %19, 234
  br i1 %20, label %25, label %21

21:                                               ; preds = %0
  %22 = icmp eq i16 %19, 242
  %23 = icmp ne ptr %16, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %27, label %68

25:                                               ; preds = %0
  %26 = icmp eq ptr %16, null
  br i1 %26, label %455, label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !74
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -9
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  br label %40

40:                                               ; preds = %27, %33, %37
  %41 = phi ptr [ %39, %37 ], [ null, %33 ], [ null, %27 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 8388608
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call ptr @Perl_mg_find(ptr noundef nonnull %41, i32 noundef 113) #17
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %49, %48 ], [ null, %43 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 22), align 16, !tbaa !66
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.44, i32 noundef 0) #17
  store ptr %57, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 22), align 16, !tbaa !66
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi ptr [ %57, %56 ], [ %54, %53 ]
  %60 = ptrtoint ptr %2 to i64
  %61 = ptrtoint ptr %15 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 3
  %64 = trunc i64 %63 to i32
  %65 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %59, ptr noundef %8, ptr noundef nonnull %41, ptr noundef nonnull %51, i32 noundef 10, i32 noundef %64)
  br label %66

66:                                               ; preds = %50, %58
  %67 = phi ptr [ %65, %58 ], [ undef, %50 ]
  br i1 %52, label %68, label %461

68:                                               ; preds = %40, %66, %21
  %69 = icmp eq ptr %16, null
  br i1 %69, label %455, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds ptr, ptr %8, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !66
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !74
  %75 = and i32 %74, 65280
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %74, 255
  %78 = icmp eq i32 %77, 8
  %79 = or i1 %76, %78
  %80 = and i32 %74, 16777471
  %81 = icmp eq i32 %80, 16777226
  %82 = or i1 %81, %79
  br i1 %82, label %84, label %83

83:                                               ; preds = %70
  tail call void @Perl_sv_setpvn(ptr noundef %72, ptr noundef nonnull @.str.4, i64 noundef 0) #17
  br label %84

84:                                               ; preds = %83, %70
  %85 = getelementptr inbounds ptr, ptr %8, i64 3
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  store ptr %86, ptr @PL_Sv, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !74
  %89 = and i32 %88, 2097408
  %90 = icmp eq i32 %89, 256
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load ptr, ptr %86, align 8, !tbaa !86
  %93 = getelementptr inbounds %struct.xpviv, ptr %92, i64 0, i32 4
  %94 = load i64, ptr %93, align 8, !tbaa !76
  br label %97

95:                                               ; preds = %84
  %96 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %86, i32 noundef 2) #17
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i64 [ %94, %91 ], [ %96, %95 ]
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.45) #17
  br label %461

102:                                              ; preds = %97
  %103 = tail call ptr @__errno_location() #18
  store i32 0, ptr %103, align 4, !tbaa !91
  %104 = icmp ult ptr %85, %2
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = getelementptr inbounds ptr, ptr %8, i64 4
  %107 = load ptr, ptr %106, align 8, !tbaa !66
  store ptr %107, ptr @PL_Sv, align 8, !tbaa !66
  %108 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !74
  %110 = and i32 %109, 2097408
  %111 = icmp eq i32 %110, 256
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load ptr, ptr %107, align 8, !tbaa !86
  %114 = getelementptr inbounds %struct.xpviv, ptr %113, i64 0, i32 4
  %115 = load i64, ptr %114, align 8, !tbaa !76
  br label %118

116:                                              ; preds = %105
  %117 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %107, i32 noundef 2) #17
  br label %118

118:                                              ; preds = %116, %112, %102
  %119 = phi i64 [ %115, %112 ], [ %117, %116 ], [ 0, %102 ]
  %120 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !74
  %122 = and i32 %121, 255
  %123 = add nsw i32 %122, -9
  %124 = icmp ult i32 %123, 2
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !76
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.gp, ptr %127, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !128
  br label %132

132:                                              ; preds = %118, %125, %129
  %133 = phi ptr [ %131, %129 ], [ null, %125 ], [ null, %118 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.io, ptr %133, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %132
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %16) #17
  store i32 9, ptr %103, align 4, !tbaa !91
  br label %455

140:                                              ; preds = %135
  %141 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %137) #17
  %142 = load ptr, ptr %136, align 8, !tbaa !76
  %143 = tail call i32 @PerlIO_isutf8(ptr noundef %142) #17
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %147 = getelementptr inbounds %struct.cop, ptr %146, i64 0, i32 10
  %148 = load i32, ptr %147, align 8, !tbaa !187
  %149 = and i32 %148, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load i32, ptr %73, align 4, !tbaa !74
  %153 = and i32 %152, 966889216
  %154 = icmp eq i32 %153, 536871936
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load ptr, ptr %72, align 8, !tbaa !86
  %157 = getelementptr inbounds %struct.xpv, ptr %156, i64 0, i32 2
  %158 = load i64, ptr %157, align 8, !tbaa !87
  store i64 %158, ptr %1, align 8, !tbaa !105
  %159 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !76
  br label %163

161:                                              ; preds = %151
  %162 = call ptr @Perl_sv_pvutf8n_force(ptr noundef %72, ptr noundef nonnull %1) #17
  br label %163

163:                                              ; preds = %161, %155
  %164 = phi ptr [ %160, %155 ], [ %162, %161 ]
  %165 = load i32, ptr %73, align 4, !tbaa !74
  %166 = or i32 %165, 536870912
  store i32 %166, ptr %73, align 4, !tbaa !74
  br label %190

167:                                              ; preds = %145, %140
  %168 = load i32, ptr %73, align 4, !tbaa !74
  %169 = and i32 %168, 430018304
  %170 = icmp eq i32 %169, 1024
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load ptr, ptr %72, align 8, !tbaa !86
  %173 = getelementptr inbounds %struct.xpv, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !87
  store i64 %174, ptr %1, align 8, !tbaa !105
  %175 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  br label %179

177:                                              ; preds = %167
  %178 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %72, ptr noundef nonnull %1, i32 noundef 2) #17
  br label %179

179:                                              ; preds = %177, %171
  %180 = phi ptr [ %176, %171 ], [ %178, %177 ]
  %181 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %182 = getelementptr inbounds %struct.cop, ptr %181, i64 0, i32 10
  %183 = load i32, ptr %182, align 8, !tbaa !187
  %184 = and i32 %183, 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, ptr %73, align 4, !tbaa !74
  %188 = and i32 %187, 536870912
  %189 = icmp eq i32 %188, 0
  br label %190

190:                                              ; preds = %179, %186, %163
  %191 = phi ptr [ %164, %163 ], [ %180, %186 ], [ %180, %179 ]
  %192 = phi i1 [ true, %163 ], [ %189, %186 ], [ true, %179 ]
  %193 = load i32, ptr %73, align 4, !tbaa !74
  %194 = and i32 %193, 536870912
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %190
  %197 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %198 = getelementptr inbounds %struct.cop, ptr %197, i64 0, i32 10
  %199 = load i32, ptr %198, align 8, !tbaa !187
  %200 = and i32 %199, 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef %72) #17
  store i64 %203, ptr %1, align 8, !tbaa !105
  br label %204

204:                                              ; preds = %202, %196, %190
  %205 = icmp slt i64 %119, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %204
  %207 = sub nsw i64 0, %119
  %208 = load i64, ptr %1, align 8, !tbaa !105
  %209 = icmp slt i64 %208, %207
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #17
  br label %461

212:                                              ; preds = %206
  %213 = add i64 %208, %119
  br label %214

214:                                              ; preds = %212, %204
  %215 = phi i64 [ %213, %212 ], [ %119, %204 ]
  %216 = load i32, ptr %73, align 4, !tbaa !74
  %217 = and i32 %216, 536870912
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %240, label %219

219:                                              ; preds = %214
  %220 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %221 = getelementptr inbounds %struct.cop, ptr %220, i64 0, i32 10
  %222 = load i32, ptr %221, align 8, !tbaa !187
  %223 = and i32 %222, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %219
  %226 = load i64, ptr %1, align 8, !tbaa !105
  %227 = icmp slt i64 %215, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %72, align 8, !tbaa !86
  %230 = getelementptr inbounds %struct.xpv, ptr %229, i64 0, i32 2
  %231 = load i64, ptr %230, align 8, !tbaa !87
  %232 = sub i64 %215, %226
  %233 = add i64 %232, %231
  br label %240

234:                                              ; preds = %225
  %235 = trunc i64 %215 to i32
  %236 = call ptr @Perl_utf8_hop(ptr noundef %191, i32 noundef %235) #17
  %237 = ptrtoint ptr %236 to i64
  %238 = ptrtoint ptr %191 to i64
  %239 = sub i64 %237, %238
  br label %240

240:                                              ; preds = %228, %234, %219, %214
  %241 = phi i64 [ %215, %219 ], [ %233, %228 ], [ %239, %234 ], [ %215, %214 ]
  %242 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %243 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %244 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  br label %245

245:                                              ; preds = %414, %240
  %246 = phi i64 [ %98, %240 ], [ %416, %414 ]
  %247 = phi i64 [ 0, %240 ], [ %415, %414 ]
  %248 = phi i64 [ %241, %240 ], [ %418, %414 ]
  %249 = phi i8 [ 1, %240 ], [ %419, %414 ]
  %250 = phi i64 [ 0, %240 ], [ %420, %414 ]
  %251 = phi i64 [ 0, %240 ], [ %421, %414 ]
  %252 = load ptr, ptr %136, align 8, !tbaa !76
  %253 = call i32 @Perl_PerlIO_fileno(ptr noundef %252) #17
  %254 = load ptr, ptr %72, align 8, !tbaa !86
  %255 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !87
  %257 = load i32, ptr %73, align 4, !tbaa !74
  %258 = and i32 %257, 268435456
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %245
  %261 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 3
  %262 = load i64, ptr %261, align 8, !tbaa !76
  %263 = add i64 %246, 1
  %264 = add i64 %263, %248
  %265 = icmp ult i64 %262, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260, %245
  %267 = add i64 %246, 1
  %268 = add i64 %267, %248
  %269 = call ptr @Perl_sv_grow(ptr noundef nonnull %72, i64 noundef %268) #17
  br label %272

270:                                              ; preds = %260
  %271 = load ptr, ptr %242, align 8, !tbaa !76
  br label %272

272:                                              ; preds = %270, %266
  %273 = phi ptr [ %269, %266 ], [ %271, %270 ]
  %274 = icmp sgt i64 %248, 0
  %275 = icmp sgt i64 %248, %256
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = getelementptr inbounds i8, ptr %273, i64 %256
  %279 = sub i64 %248, %256
  call void @llvm.memset.p0.i64(ptr align 1 %278, i8 0, i64 %279, i1 false)
  br label %280

280:                                              ; preds = %277, %272
  br i1 %192, label %281, label %283

281:                                              ; preds = %280
  %282 = getelementptr inbounds i8, ptr %273, i64 %248
  br label %308

283:                                              ; preds = %280
  %284 = load ptr, ptr %72, align 8, !tbaa !86
  %285 = getelementptr inbounds %struct.xpv, ptr %284, i64 0, i32 2
  store i64 %248, ptr %285, align 8, !tbaa !87
  %286 = call ptr @Perl_sv_newmortal() #17
  %287 = getelementptr inbounds %struct.sv, ptr %286, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !74
  %289 = and i32 %288, 255
  %290 = icmp ugt i32 %289, 2
  br i1 %290, label %292, label %291

291:                                              ; preds = %283
  call void @Perl_sv_upgrade(ptr noundef %286, i32 noundef 3) #17
  br label %292

292:                                              ; preds = %291, %283
  %293 = load i32, ptr %287, align 4, !tbaa !74
  %294 = and i32 %293, 268435456
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = load ptr, ptr %286, align 8, !tbaa !86
  %298 = getelementptr inbounds %struct.xpv, ptr %297, i64 0, i32 3
  %299 = load i64, ptr %298, align 8, !tbaa !76
  %300 = add nsw i64 %246, 1
  %301 = icmp ult i64 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %296, %292
  %303 = add nsw i64 %246, 1
  %304 = call ptr @Perl_sv_grow(ptr noundef %286, i64 noundef %303) #17
  br label %308

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.sv, ptr %286, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !76
  br label %308

308:                                              ; preds = %302, %305, %281
  %309 = phi ptr [ %282, %281 ], [ %304, %302 ], [ %307, %305 ]
  %310 = phi ptr [ %72, %281 ], [ %286, %302 ], [ %286, %305 ]
  %311 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %312 = getelementptr inbounds %struct.op, ptr %311, i64 0, i32 4
  %313 = load i16, ptr %312, align 8
  %314 = and i16 %313, 511
  %315 = icmp eq i16 %314, 242
  br i1 %315, label %316, label %321

316:                                              ; preds = %308
  %317 = icmp slt i32 %253, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %316
  store i32 9, ptr %103, align 4, !tbaa !91
  br label %330

319:                                              ; preds = %316
  %320 = call i64 @read(i32 noundef %253, ptr noundef %309, i64 noundef %246) #17
  br label %330

321:                                              ; preds = %308
  %322 = load ptr, ptr %136, align 8, !tbaa !76
  %323 = call i64 @Perl_PerlIO_read(ptr noundef %322, ptr noundef %309, i64 noundef %246) #17
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %321
  %326 = load ptr, ptr %136, align 8, !tbaa !76
  %327 = call i32 @Perl_PerlIO_error(ptr noundef %326) #17
  %328 = icmp ne i32 %327, 0
  %329 = sext i1 %328 to i64
  br label %330

330:                                              ; preds = %325, %321, %318, %319
  %331 = phi i64 [ -1, %318 ], [ %320, %319 ], [ %323, %321 ], [ %329, %325 ]
  %332 = icmp slt i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %330
  %334 = load ptr, ptr %133, align 8, !tbaa !130
  %335 = getelementptr inbounds %struct.xpvio, ptr %334, i64 0, i32 16
  %336 = load i8, ptr %335, align 8, !tbaa !141
  %337 = icmp eq i8 %336, 62
  br i1 %337, label %338, label %455

338:                                              ; preds = %333
  call void @Perl_report_wrongway_fh(ptr noundef nonnull %16, i8 noundef signext 62) #17
  br label %455

339:                                              ; preds = %330
  %340 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !76
  %342 = ptrtoint ptr %309 to i64
  %343 = ptrtoint ptr %341 to i64
  %344 = sub i64 %342, %343
  %345 = add nsw i64 %344, %331
  %346 = load ptr, ptr %310, align 8, !tbaa !86
  %347 = getelementptr inbounds %struct.xpv, ptr %346, i64 0, i32 2
  store i64 %345, ptr %347, align 8, !tbaa !87
  %348 = load ptr, ptr %340, align 8, !tbaa !76
  %349 = getelementptr inbounds i8, ptr %348, i64 %345
  store i8 0, ptr %349, align 1, !tbaa !76
  %350 = getelementptr inbounds %struct.sv, ptr %310, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !74
  %352 = and i32 %351, 1610547455
  %353 = or disjoint i32 %352, 17408
  store i32 %353, ptr %350, align 4, !tbaa !74
  br i1 %144, label %423, label %354

354:                                              ; preds = %339
  %355 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %356 = getelementptr inbounds %struct.cop, ptr %355, i64 0, i32 10
  %357 = load i32, ptr %356, align 8, !tbaa !187
  %358 = and i32 %357, 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %423

360:                                              ; preds = %354
  %361 = getelementptr inbounds i8, ptr %309, i64 %331
  %362 = icmp eq i64 %331, 0
  br i1 %362, label %397, label %363

363:                                              ; preds = %360, %393
  %364 = phi i64 [ %379, %393 ], [ %251, %360 ]
  %365 = phi i64 [ 0, %393 ], [ %250, %360 ]
  %366 = phi i8 [ 1, %393 ], [ %249, %360 ]
  %367 = phi i64 [ %394, %393 ], [ %247, %360 ]
  %368 = phi ptr [ %395, %393 ], [ %309, %360 ]
  %369 = and i8 %366, 1
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %363
  %372 = load i8, ptr %368, align 1, !tbaa !76
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !76
  %376 = zext i8 %375 to i64
  br label %377

377:                                              ; preds = %371, %363
  %378 = phi i64 [ 0, %371 ], [ %365, %363 ]
  %379 = phi i64 [ %376, %371 ], [ %364, %363 ]
  %380 = sub i64 0, %378
  %381 = getelementptr inbounds i8, ptr %368, i64 %380
  %382 = getelementptr inbounds i8, ptr %381, i64 %379
  %383 = icmp ugt ptr %382, %361
  br i1 %383, label %384, label %393

384:                                              ; preds = %377
  %385 = ptrtoint ptr %361 to i64
  %386 = ptrtoint ptr %368 to i64
  %387 = sub i64 %386, %385
  %388 = add i64 %387, %379
  %389 = load ptr, ptr %244, align 8, !tbaa !76
  %390 = ptrtoint ptr %389 to i64
  %391 = sub i64 %385, %390
  %392 = add i64 %378, %331
  br label %414

393:                                              ; preds = %377
  %394 = add i64 %367, 1
  %395 = getelementptr inbounds i8, ptr %368, i64 %379
  %396 = icmp ult ptr %395, %361
  br i1 %396, label %363, label %397, !llvm.loop !188

397:                                              ; preds = %393, %360
  %398 = phi i64 [ %247, %360 ], [ %394, %393 ]
  %399 = phi i8 [ %249, %360 ], [ 1, %393 ]
  %400 = phi i64 [ %250, %360 ], [ 0, %393 ]
  %401 = phi i64 [ %251, %360 ], [ %379, %393 ]
  %402 = icmp ult i64 %398, %98
  %403 = icmp eq i64 %331, %246
  %404 = select i1 %402, i1 %403, i1 false
  br i1 %404, label %405, label %411

405:                                              ; preds = %397
  %406 = sub nsw i64 %98, %398
  %407 = load ptr, ptr %243, align 8, !tbaa !76
  %408 = ptrtoint ptr %361 to i64
  %409 = ptrtoint ptr %407 to i64
  %410 = sub i64 %408, %409
  br label %414

411:                                              ; preds = %397
  %412 = load i32, ptr %73, align 4, !tbaa !74
  %413 = or i32 %412, 536870912
  store i32 %413, ptr %73, align 4, !tbaa !74
  br label %414

414:                                              ; preds = %411, %405, %384
  %415 = phi i64 [ %367, %384 ], [ %398, %405 ], [ %398, %411 ]
  %416 = phi i64 [ %388, %384 ], [ %406, %405 ], [ %246, %411 ]
  %417 = phi i64 [ %331, %384 ], [ %331, %405 ], [ %398, %411 ]
  %418 = phi i64 [ %391, %384 ], [ %410, %405 ], [ %248, %411 ]
  %419 = phi i8 [ 0, %384 ], [ %399, %405 ], [ %399, %411 ]
  %420 = phi i64 [ %392, %384 ], [ %400, %405 ], [ %400, %411 ]
  %421 = phi i64 [ %379, %384 ], [ %401, %405 ], [ %401, %411 ]
  %422 = phi i1 [ false, %384 ], [ false, %405 ], [ true, %411 ]
  br i1 %422, label %425, label %245

423:                                              ; preds = %354, %339
  br i1 %192, label %425, label %424

424:                                              ; preds = %423
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %72, ptr noundef nonnull %310, i32 noundef 0) #17
  br label %425

425:                                              ; preds = %414, %424, %423
  %426 = phi i64 [ %331, %424 ], [ %331, %423 ], [ %417, %414 ]
  %427 = load i32, ptr %73, align 4, !tbaa !74
  %428 = and i32 %427, 4194304
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %425
  %431 = call i32 @Perl_mg_set(ptr noundef nonnull %72) #17
  br label %432

432:                                              ; preds = %425, %430
  %433 = load ptr, ptr %133, align 8, !tbaa !130
  %434 = getelementptr inbounds %struct.xpvio, ptr %433, i64 0, i32 17
  %435 = load i8, ptr %434, align 1, !tbaa !132
  %436 = and i8 %435, 16
  %437 = icmp ne i8 %436, 0
  %438 = load i8, ptr @PL_tainting, align 1, !range !80
  %439 = icmp eq i8 %438, 0
  %440 = select i1 %437, i1 true, i1 %439
  br i1 %440, label %442, label %441

441:                                              ; preds = %432
  call void @Perl_sv_magic(ptr noundef nonnull %72, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #17
  br label %442

442:                                              ; preds = %441, %432
  %443 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %444 = getelementptr inbounds ptr, ptr %443, i64 %7
  call void @Perl_sv_setiv(ptr noundef %14, i64 noundef %426) #17
  %445 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !74
  %447 = and i32 %446, 4194304
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %442
  %450 = call i32 @Perl_mg_set(ptr noundef %14) #17
  br label %451

451:                                              ; preds = %442, %449
  %452 = getelementptr inbounds ptr, ptr %444, i64 1
  store ptr %14, ptr %452, align 8, !tbaa !66
  store ptr %452, ptr @PL_stack_sp, align 8, !tbaa !66
  %453 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %454 = load ptr, ptr %453, align 8, !tbaa !92
  br label %461

455:                                              ; preds = %25, %333, %338, %68, %139
  %456 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %457 = getelementptr inbounds ptr, ptr %456, i64 %7
  %458 = getelementptr inbounds ptr, ptr %457, i64 1
  store ptr @PL_sv_undef, ptr %458, align 8, !tbaa !66
  store ptr %458, ptr @PL_stack_sp, align 8, !tbaa !66
  %459 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %460 = load ptr, ptr %459, align 8, !tbaa !92
  br label %461

461:                                              ; preds = %66, %455, %451, %210, %100
  %462 = phi ptr [ %101, %100 ], [ %211, %210 ], [ %460, %455 ], [ %454, %451 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %462
}

declare ptr @Perl_sv_pvutf8n_force(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_syswrite() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %9 = getelementptr inbounds i32, ptr %8, i64 -1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %10 = load i32, ptr %8, align 4, !tbaa !91
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %19 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 511
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  %22 = getelementptr inbounds ptr, ptr %12, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %0
  %26 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -9
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gp, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !128
  br label %38

38:                                               ; preds = %25, %0, %31, %35
  %39 = phi ptr [ %37, %35 ], [ null, %31 ], [ null, %0 ], [ null, %25 ]
  %40 = icmp eq i16 %21, 243
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %87

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 8388608
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call ptr @Perl_mg_find(ptr noundef nonnull %39, i32 noundef 113) #17
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %49, %48 ], [ null, %43 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %84, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds ptr, ptr %6, i64 -1
  %55 = icmp eq ptr %22, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load ptr, ptr %6, align 8, !tbaa !66
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %6 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 1) #17
  br label %65

65:                                               ; preds = %56, %63
  %66 = phi ptr [ %64, %63 ], [ %6, %56 ]
  %67 = tail call ptr @Perl_sv_newmortal() #17
  %68 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %67, ptr %68, align 8, !tbaa !66
  %69 = tail call i64 @Perl_sv_len(ptr noundef %57) #17
  tail call void @Perl_sv_setiv(ptr noundef %67, i64 noundef %69) #17
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !66
  br label %70

70:                                               ; preds = %65, %53
  %71 = phi ptr [ %68, %65 ], [ %6, %53 ]
  %72 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 19), align 8, !tbaa !66
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.47, i32 noundef 0) #17
  store ptr %75, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 19), align 8, !tbaa !66
  br label %76

76:                                               ; preds = %70, %74
  %77 = phi ptr [ %75, %74 ], [ %72, %70 ]
  %78 = ptrtoint ptr %71 to i64
  %79 = ptrtoint ptr %22 to i64
  %80 = sub i64 %78, %79
  %81 = lshr exact i64 %80, 3
  %82 = trunc i64 %81 to i32
  %83 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %77, ptr noundef %12, ptr noundef nonnull %39, ptr noundef nonnull %51, i32 noundef 10, i32 noundef %82)
  br label %84

84:                                               ; preds = %50, %76
  %85 = phi ptr [ %71, %76 ], [ %6, %50 ]
  %86 = phi ptr [ %83, %76 ], [ undef, %50 ]
  br i1 %52, label %87, label %347

87:                                               ; preds = %84, %38
  %88 = phi ptr [ %85, %84 ], [ %6, %38 ]
  %89 = phi ptr [ %86, %84 ], [ undef, %38 ]
  br i1 %24, label %338, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds ptr, ptr %12, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = tail call ptr @__errno_location() #18
  store i32 0, ptr %93, align 4, !tbaa !91
  br i1 %41, label %94, label %105

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.io, ptr %39, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !76
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %39, align 8, !tbaa !130
  %100 = getelementptr inbounds %struct.xpvio, ptr %99, i64 0, i32 16
  %101 = load i8, ptr %100, align 8, !tbaa !141
  %102 = icmp eq i8 %101, 60
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  br i1 %97, label %105, label %104

104:                                              ; preds = %103
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %23, i8 noundef signext 60) #17
  br label %337

105:                                              ; preds = %94, %90, %103
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %23) #17
  br label %337

106:                                              ; preds = %98
  %107 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %96) #17
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %337, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !74
  %112 = and i32 %111, 2098176
  %113 = icmp eq i32 %112, 1024
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load ptr, ptr %92, align 8, !tbaa !86
  %116 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !87
  store i64 %117, ptr %1, align 8, !tbaa !105
  %118 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  br label %122

120:                                              ; preds = %109
  %121 = call ptr @Perl_sv_2pv_flags(ptr noundef %92, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi ptr [ %119, %114 ], [ %121, %120 ]
  %124 = load i64, ptr %1, align 8, !tbaa !105
  %125 = load i32, ptr %110, align 4, !tbaa !74
  %126 = and i32 %125, 536870912
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr @PL_curcop, align 8, !tbaa !66
  %130 = getelementptr inbounds %struct.cop, ptr %129, i64 0, i32 10
  %131 = load i32, ptr %130, align 8, !tbaa !187
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %128, %122
  %135 = phi i1 [ false, %122 ], [ %133, %128 ]
  %136 = zext i1 %135 to i8
  store i8 %136, ptr %2, align 1, !tbaa !78
  %137 = load ptr, ptr %95, align 8, !tbaa !76
  %138 = call i32 @PerlIO_isutf8(ptr noundef %137) #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i32, ptr %110, align 4, !tbaa !74
  %142 = and i32 %141, 536870912
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %140
  %145 = call ptr @Perl_bytes_to_utf8(ptr noundef %123, ptr noundef nonnull %1) #17
  store i8 1, ptr %2, align 1, !tbaa !78
  br label %173

146:                                              ; preds = %134
  %147 = load i8, ptr %2, align 1, !tbaa !78, !range !80, !noundef !81
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %173, label %149

149:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %150 = load i64, ptr %1, align 8, !tbaa !105
  store i64 %150, ptr %3, align 8, !tbaa !105
  %151 = call ptr @Perl_bytes_from_utf8(ptr noundef %123, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %152 = load i8, ptr %2, align 1, !tbaa !78, !range !80, !noundef !81
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i64, ptr %3, align 8, !tbaa !105
  store i64 %155, ptr %1, align 8, !tbaa !105
  br label %170

156:                                              ; preds = %149
  %157 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %158 = getelementptr inbounds %struct.op, ptr %157, i64 0, i32 4
  %159 = load i16, ptr %158, align 8
  %160 = and i16 %159, 511
  %161 = icmp eq i16 %160, 380
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call ptr @Perl_custom_op_get_field(ptr noundef %157, i32 noundef 2) #17
  br label %168

164:                                              ; preds = %156
  %165 = zext nneg i16 %160 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !66
  br label %168

168:                                              ; preds = %164, %162
  %169 = phi ptr [ %163, %162 ], [ %167, %164 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, ptr noundef %169) #17
  br label %170

170:                                              ; preds = %168, %154
  %171 = phi ptr [ null, %168 ], [ %151, %154 ]
  %172 = phi ptr [ %123, %168 ], [ %151, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %173

173:                                              ; preds = %146, %170, %140, %144
  %174 = phi ptr [ null, %140 ], [ %145, %144 ], [ %171, %170 ], [ null, %146 ]
  %175 = phi ptr [ %123, %140 ], [ %145, %144 ], [ %172, %170 ], [ %123, %146 ]
  %176 = load i8, ptr %2, align 1, !tbaa !78, !range !80, !noundef !81
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %207, label %178

178:                                              ; preds = %173
  %179 = icmp eq ptr %174, null
  br i1 %179, label %180, label %209

180:                                              ; preds = %178
  %181 = load i32, ptr %110, align 4, !tbaa !74
  %182 = and i32 %181, 2097152
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = and i32 %181, 2048
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %205, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !76
  %190 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !74
  %192 = and i32 %191, 1048576
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %187
  %195 = load ptr, ptr %189, align 8, !tbaa !86
  %196 = load ptr, ptr %195, align 8, !tbaa !93
  %197 = getelementptr inbounds %struct.hv, ptr %196, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !95
  %199 = and i32 %198, 268435456
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %194, %180
  %202 = load i64, ptr %1, align 8, !tbaa !105
  %203 = getelementptr inbounds i8, ptr %175, i64 %202
  %204 = call i64 @Perl_utf8_length(ptr noundef %175, ptr noundef %203) #17
  br label %209

205:                                              ; preds = %194, %187, %184
  %206 = call i64 @Perl_sv_len_utf8(ptr noundef %92) #17
  br label %209

207:                                              ; preds = %173
  %208 = load i64, ptr %1, align 8, !tbaa !105
  br label %209

209:                                              ; preds = %201, %205, %178, %207
  %210 = phi i64 [ %208, %207 ], [ %124, %178 ], [ %204, %201 ], [ %206, %205 ]
  %211 = icmp ult ptr %91, %88
  br i1 %211, label %212, label %230

212:                                              ; preds = %209
  %213 = getelementptr inbounds ptr, ptr %12, i64 3
  %214 = load ptr, ptr %213, align 8, !tbaa !66
  store ptr %214, ptr @PL_Sv, align 8, !tbaa !66
  %215 = getelementptr inbounds %struct.sv, ptr %214, i64 0, i32 2
  %216 = load i32, ptr %215, align 4, !tbaa !74
  %217 = and i32 %216, 2097408
  %218 = icmp eq i32 %217, 256
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load ptr, ptr %214, align 8, !tbaa !86
  %221 = getelementptr inbounds %struct.xpviv, ptr %220, i64 0, i32 4
  %222 = load i64, ptr %221, align 8, !tbaa !76
  br label %225

223:                                              ; preds = %212
  %224 = call i64 @Perl_sv_2iv_flags(ptr noundef %214, i32 noundef 2) #17
  br label %225

225:                                              ; preds = %223, %219
  %226 = phi i64 [ %222, %219 ], [ %224, %223 ]
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  call void @Perl_safesysfree(ptr noundef %174) #17
  %229 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.45) #17
  br label %312

230:                                              ; preds = %209, %225
  %231 = phi ptr [ %213, %225 ], [ %91, %209 ]
  %232 = phi i64 [ %226, %225 ], [ %210, %209 ]
  %233 = icmp ult ptr %231, %88
  br i1 %233, label %234, label %261

234:                                              ; preds = %230
  %235 = getelementptr inbounds ptr, ptr %231, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !66
  store ptr %236, ptr @PL_Sv, align 8, !tbaa !66
  %237 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !74
  %239 = and i32 %238, 2097408
  %240 = icmp eq i32 %239, 256
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load ptr, ptr %236, align 8, !tbaa !86
  %243 = getelementptr inbounds %struct.xpviv, ptr %242, i64 0, i32 4
  %244 = load i64, ptr %243, align 8, !tbaa !76
  br label %247

245:                                              ; preds = %234
  %246 = call i64 @Perl_sv_2iv_flags(ptr noundef %236, i32 noundef 2) #17
  br label %247

247:                                              ; preds = %245, %241
  %248 = phi i64 [ %244, %241 ], [ %246, %245 ]
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = sub nsw i64 0, %248
  %252 = icmp slt i64 %210, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  call void @Perl_safesysfree(ptr noundef %174) #17
  %254 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #17
  br label %312

255:                                              ; preds = %250
  %256 = add i64 %248, %210
  br label %261

257:                                              ; preds = %247
  %258 = icmp sgt i64 %248, %210
  br i1 %258, label %259, label %261

259:                                              ; preds = %257
  call void @Perl_safesysfree(ptr noundef %174) #17
  %260 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #17
  br label %312

261:                                              ; preds = %230, %255, %257
  %262 = phi i64 [ %256, %255 ], [ %248, %257 ], [ 0, %230 ]
  %263 = sub i64 %210, %262
  %264 = call i64 @llvm.umin.i64(i64 %232, i64 %263)
  %265 = load i8, ptr %2, align 1, !tbaa !78, !range !80, !noundef !81
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %306, label %267

267:                                              ; preds = %261
  %268 = icmp eq ptr %174, null
  br i1 %268, label %269, label %290

269:                                              ; preds = %267
  %270 = load i32, ptr %110, align 4, !tbaa !74
  %271 = and i32 %270, 2097152
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %290

273:                                              ; preds = %269
  %274 = and i32 %270, 2048
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %298, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !76
  %279 = getelementptr inbounds %struct.sv, ptr %278, i64 0, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !74
  %281 = and i32 %280, 1048576
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %276
  %284 = load ptr, ptr %278, align 8, !tbaa !86
  %285 = load ptr, ptr %284, align 8, !tbaa !93
  %286 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !95
  %288 = and i32 %287, 268435456
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %283, %269, %267
  %291 = trunc i64 %262 to i32
  %292 = call ptr @Perl_utf8_hop(ptr noundef %175, i32 noundef %291) #17
  %293 = trunc i64 %264 to i32
  %294 = call ptr @Perl_utf8_hop(ptr noundef %292, i32 noundef %293) #17
  %295 = ptrtoint ptr %294 to i64
  %296 = ptrtoint ptr %292 to i64
  %297 = sub i64 %295, %296
  br label %308

298:                                              ; preds = %283, %276, %273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %299 = trunc i64 %262 to i32
  store i32 %299, ptr %4, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %300 = trunc i64 %264 to i32
  store i32 %300, ptr %5, align 4, !tbaa !91
  call void @Perl_sv_pos_u2b(ptr noundef %92, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %301 = load i32, ptr %4, align 4, !tbaa !91
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %175, i64 %302
  %304 = load i32, ptr %5, align 4, !tbaa !91
  %305 = sext i32 %304 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %308

306:                                              ; preds = %261
  %307 = getelementptr inbounds i8, ptr %175, i64 %262
  br label %308

308:                                              ; preds = %290, %298, %306
  %309 = phi ptr [ %292, %290 ], [ %303, %298 ], [ %307, %306 ]
  %310 = phi i64 [ %297, %290 ], [ %305, %298 ], [ %264, %306 ]
  %311 = call i64 @write(i32 noundef %107, ptr noundef %309, i64 noundef %310) #17
  br label %312

312:                                              ; preds = %308, %259, %253, %228
  %313 = phi i64 [ undef, %253 ], [ %311, %308 ], [ undef, %259 ], [ undef, %228 ]
  %314 = phi ptr [ %175, %253 ], [ %309, %308 ], [ %175, %259 ], [ %175, %228 ]
  %315 = phi i1 [ false, %253 ], [ true, %308 ], [ false, %259 ], [ false, %228 ]
  %316 = phi ptr [ %254, %253 ], [ %89, %308 ], [ %260, %259 ], [ %229, %228 ]
  br i1 %315, label %317, label %347

317:                                              ; preds = %312
  %318 = icmp slt i64 %313, 0
  br i1 %318, label %338, label %319

319:                                              ; preds = %317
  %320 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %321 = getelementptr inbounds ptr, ptr %320, i64 %11
  %322 = load i8, ptr %2, align 1, !tbaa !78, !range !80, !noundef !81
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %319
  %325 = getelementptr inbounds i8, ptr %314, i64 %313
  %326 = call i64 @Perl_utf8_length(ptr noundef %314, ptr noundef %325) #17
  br label %327

327:                                              ; preds = %324, %319
  %328 = phi i64 [ %326, %324 ], [ %313, %319 ]
  call void @Perl_safesysfree(ptr noundef %174) #17
  call void @Perl_sv_setiv(ptr noundef %18, i64 noundef %328) #17
  %329 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %330 = load i32, ptr %329, align 4, !tbaa !74
  %331 = and i32 %330, 4194304
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %327
  %334 = call i32 @Perl_mg_set(ptr noundef %18) #17
  br label %335

335:                                              ; preds = %327, %333
  %336 = getelementptr inbounds ptr, ptr %321, i64 1
  store ptr %18, ptr %336, align 8, !tbaa !66
  br label %343

337:                                              ; preds = %106, %104, %105
  store i32 9, ptr %93, align 4, !tbaa !91
  br label %338

338:                                              ; preds = %337, %317, %87
  %339 = phi ptr [ %174, %317 ], [ null, %87 ], [ null, %337 ]
  call void @Perl_safesysfree(ptr noundef %339) #17
  %340 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %341 = getelementptr inbounds ptr, ptr %340, i64 %11
  %342 = getelementptr inbounds ptr, ptr %341, i64 1
  store ptr @PL_sv_undef, ptr %342, align 8, !tbaa !66
  br label %343

343:                                              ; preds = %335, %338
  %344 = phi ptr [ %342, %338 ], [ %336, %335 ]
  store ptr %344, ptr @PL_stack_sp, align 8, !tbaa !66
  %345 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %346 = load ptr, ptr %345, align 8, !tbaa !92
  br label %347

347:                                              ; preds = %343, %84, %312
  %348 = phi ptr [ %316, %312 ], [ %86, %84 ], [ %346, %343 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %348
}

declare i64 @Perl_sv_len(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_pos_u2b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_eof() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !82
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  %9 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %9, ptr @PL_last_in_gv, align 8, !tbaa !66
  br label %43

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %1, %10 ]
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 2, !tbaa !77
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %41, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @PL_argvgv, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !126
  %28 = and i32 %27, 49152
  %29 = icmp eq i32 %28, 32768
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = and i32 %27, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !135
  br label %39

39:                                               ; preds = %30, %24, %34
  %40 = phi ptr [ %38, %34 ], [ null, %24 ], [ null, %30 ]
  store ptr %40, ptr @PL_last_in_gv, align 8, !tbaa !66
  br label %43

41:                                               ; preds = %18
  %42 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !66
  br label %43

43:                                               ; preds = %39, %41, %7
  %44 = phi ptr [ %9, %7 ], [ %40, %39 ], [ %42, %41 ]
  %45 = phi i64 [ 1, %7 ], [ 2, %39 ], [ 0, %41 ]
  %46 = phi ptr [ %8, %7 ], [ %19, %39 ], [ %19, %41 ]
  %47 = icmp eq ptr %44, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr @PL_sv_no, ptr %49, align 8, !tbaa !66
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !66
  %50 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  br label %169

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -9
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gp, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !128
  br label %65

65:                                               ; preds = %52, %58, %62
  %66 = phi ptr [ %64, %62 ], [ null, %58 ], [ null, %52 ]
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !74
  %71 = and i32 %70, 8388608
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call ptr @Perl_mg_find(ptr noundef nonnull %66, i32 noundef 113) #17
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi ptr [ %74, %73 ], [ null, %68 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 27), align 8, !tbaa !66
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.49, i32 noundef 0) #17
  store ptr %82, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 27), align 8, !tbaa !66
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %82, %81 ], [ %79, %78 ]
  %85 = tail call ptr @Perl_newSVuv(i64 noundef %45) #17
  %86 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %84, ptr noundef %46, ptr noundef nonnull %66, ptr noundef nonnull %76, i32 noundef 2, i32 noundef 1, ptr noundef %85)
  br label %169

87:                                               ; preds = %75, %65
  %88 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %89 = getelementptr inbounds %struct.op, ptr %88, i64 0, i32 6
  %90 = load i8, ptr %89, align 1, !tbaa !82
  %91 = and i8 %90, 15
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %163

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.op, ptr %88, i64 0, i32 5
  %95 = load i8, ptr %94, align 2, !tbaa !77
  %96 = icmp slt i8 %95, 0
  %97 = and i1 %67, %96
  br i1 %97, label %98, label %163

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.io, ptr %66, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !76
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %163

102:                                              ; preds = %98
  %103 = load ptr, ptr %66, align 8, !tbaa !130
  %104 = getelementptr inbounds %struct.xpvio, ptr %103, i64 0, i32 17
  %105 = load i8, ptr %104, align 1, !tbaa !132
  %106 = and i8 %105, 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %156, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !189
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %44, i32 noundef 11) #17
  %116 = getelementptr inbounds %struct.gv, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !76
  %118 = getelementptr inbounds %struct.gp, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !189
  br label %120

120:                                              ; preds = %108, %114
  %121 = phi ptr [ %119, %114 ], [ %112, %108 ]
  %122 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !74
  %124 = and i32 %123, 8388608
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = tail call i32 @Perl_mg_size(ptr noundef %121) #17
  %128 = sext i32 %127 to i64
  br label %133

129:                                              ; preds = %120
  %130 = load ptr, ptr %121, align 8, !tbaa !97
  %131 = getelementptr inbounds %struct.xpvav, ptr %130, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !99
  br label %133

133:                                              ; preds = %126, %129
  %134 = phi i64 [ %128, %126 ], [ %132, %129 ]
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = load ptr, ptr %66, align 8, !tbaa !130
  %138 = getelementptr inbounds %struct.xpvio, ptr %137, i64 0, i32 4
  store i64 0, ptr %138, align 8, !tbaa !76
  %139 = load ptr, ptr %66, align 8, !tbaa !130
  %140 = getelementptr inbounds %struct.xpvio, ptr %139, i64 0, i32 17
  %141 = load i8, ptr %140, align 1, !tbaa !132
  %142 = and i8 %141, -3
  store i8 %142, ptr %140, align 1, !tbaa !132
  %143 = tail call zeroext i1 @Perl_do_open6(ptr noundef nonnull %44, ptr noundef nonnull @.str.50, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  %144 = load ptr, ptr %109, align 8, !tbaa !76
  %145 = load ptr, ptr %144, align 8, !tbaa !66
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %136
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %145, ptr noundef nonnull @.str.50, i64 noundef 1) #17
  %148 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !74
  %150 = and i32 %149, 4194304
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %147
  %153 = tail call i32 @Perl_mg_set(ptr noundef nonnull %145) #17
  br label %163

154:                                              ; preds = %136
  %155 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.50, i64 noundef 1) #17
  store ptr %155, ptr %144, align 8, !tbaa !66
  br label %163

156:                                              ; preds = %133, %102
  %157 = tail call ptr @Perl_nextargv(ptr noundef nonnull %44, i1 noundef zeroext false) #17
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr @PL_sv_yes, ptr %160, align 8, !tbaa !66
  store ptr %160, ptr @PL_stack_sp, align 8, !tbaa !66
  %161 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %162 = load ptr, ptr %161, align 8, !tbaa !92
  br label %169

163:                                              ; preds = %154, %147, %152, %98, %156, %93, %87
  %164 = tail call zeroext i1 @Perl_do_eof(ptr noundef nonnull %44) #17
  %165 = select i1 %164, ptr @PL_sv_yes, ptr @PL_sv_no
  %166 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr %165, ptr %166, align 8, !tbaa !66
  store ptr %166, ptr @PL_stack_sp, align 8, !tbaa !66
  %167 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %168 = load ptr, ptr %167, align 8, !tbaa !92
  br label %169

169:                                              ; preds = %163, %159, %83, %48
  %170 = phi ptr [ %86, %83 ], [ %168, %163 ], [ %162, %159 ], [ %51, %48 ]
  ret ptr %170
}

declare ptr @Perl_nextargv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_tell() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  store ptr %13, ptr @PL_last_in_gv, align 8, !tbaa !66
  br label %26

17:                                               ; preds = %12, %0
  %18 = phi ptr [ %1, %0 ], [ %15, %12 ]
  %19 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @Perl_stack_grow(ptr noundef %18, ptr noundef %18, i64 noundef 1) #17
  br label %26

26:                                               ; preds = %24, %17, %16
  %27 = phi ptr [ %15, %16 ], [ %25, %24 ], [ %18, %17 ]
  %28 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -9
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gv, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.gp, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !128
  br label %43

43:                                               ; preds = %30, %26, %36, %40
  %44 = phi ptr [ %42, %40 ], [ null, %36 ], [ null, %26 ], [ null, %30 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !74
  %49 = and i32 %48, 8388608
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @Perl_mg_find(ptr noundef nonnull %44, i32 noundef 113) #17
  br label %53

53:                                               ; preds = %46, %51
  %54 = phi ptr [ %52, %51 ], [ null, %46 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 26), align 16, !tbaa !66
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.51, i32 noundef 0) #17
  store ptr %60, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 26), align 16, !tbaa !66
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %57, %56 ]
  %63 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %62, ptr noundef %27, ptr noundef nonnull %44, ptr noundef nonnull %54, i32 noundef 2, i32 noundef 0)
  br label %64

64:                                               ; preds = %53, %61
  %65 = phi ptr [ %63, %61 ], [ undef, %53 ]
  br i1 %55, label %77, label %89

66:                                               ; preds = %43
  br i1 %29, label %67, label %77

67:                                               ; preds = %66
  %68 = tail call ptr @__errno_location() #18
  %69 = load i32, ptr %68, align 4, !tbaa !91
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 9, ptr %68, align 4, !tbaa !91
  br label %72

72:                                               ; preds = %67, %71
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef -1) #17
  %73 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !74
  %75 = and i32 %74, 4194304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %83

77:                                               ; preds = %64, %66
  %78 = tail call i64 @Perl_do_tell(ptr noundef %28) #17
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %78) #17
  %79 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !74
  %81 = and i32 %80, 4194304
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77, %72
  %84 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %85

85:                                               ; preds = %83, %77, %72
  %86 = getelementptr inbounds ptr, ptr %27, i64 1
  store ptr %7, ptr %86, align 8, !tbaa !66
  store ptr %86, ptr @PL_stack_sp, align 8, !tbaa !66
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %88 = load ptr, ptr %87, align 8, !tbaa !92
  br label %89

89:                                               ; preds = %85, %64
  %90 = phi ptr [ %65, %64 ], [ %88, %85 ]
  ret ptr %90
}

declare i64 @Perl_do_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sysseek() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !76
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %3, i32 noundef 2) #17
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds ptr, ptr %1, i64 -2
  %18 = load ptr, ptr %2, align 8, !tbaa !66
  store ptr %18, ptr @PL_Sv, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !74
  %21 = and i32 %20, 2097408
  %22 = icmp eq i32 %21, 256
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load ptr, ptr %18, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct.xpviv, ptr %24, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !76
  br label %29

27:                                               ; preds = %14
  %28 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %18, i32 noundef 2) #17
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i64 [ %26, %23 ], [ %28, %27 ]
  %31 = getelementptr inbounds ptr, ptr %1, i64 -3
  %32 = load ptr, ptr %17, align 8, !tbaa !66
  store ptr %32, ptr @PL_last_in_gv, align 8, !tbaa !66
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !74
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -9
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !128
  br label %47

47:                                               ; preds = %34, %29, %40, %44
  %48 = phi ptr [ %46, %44 ], [ null, %40 ], [ null, %29 ], [ null, %34 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !74
  %53 = and i32 %52, 8388608
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @Perl_mg_find(ptr noundef nonnull %48, i32 noundef 113) #17
  br label %57

57:                                               ; preds = %50, %55
  %58 = phi ptr [ %56, %55 ], [ null, %50 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @Perl_newSViv(i64 noundef %30) #17
  %62 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 25), align 8, !tbaa !66
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.52, i32 noundef 0) #17
  store ptr %65, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 25), align 8, !tbaa !66
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi ptr [ %65, %64 ], [ %62, %60 ]
  %68 = shl i64 %15, 32
  %69 = ashr exact i64 %68, 32
  %70 = tail call ptr @Perl_newSViv(i64 noundef %69) #17
  %71 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %67, ptr noundef nonnull %31, ptr noundef nonnull %48, ptr noundef nonnull %58, i32 noundef 2, i32 noundef 2, ptr noundef %61, ptr noundef %70)
  br label %72

72:                                               ; preds = %57, %66
  %73 = phi ptr [ %71, %66 ], [ undef, %57 ]
  br i1 %59, label %74, label %99

74:                                               ; preds = %72, %47
  %75 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.op, ptr %75, i64 0, i32 4
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 511
  %79 = icmp eq i16 %78, 246
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = tail call zeroext i1 @Perl_do_seek(ptr noundef %32, i64 noundef %30, i32 noundef %16) #17
  %82 = select i1 %81, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %95

83:                                               ; preds = %74
  %84 = tail call i64 @Perl_do_sysseek(ptr noundef %32, i64 noundef %30, i32 noundef %16) #17
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = icmp eq i64 %84, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = tail call ptr @Perl_newSViv(i64 noundef %84) #17
  br label %92

90:                                               ; preds = %86
  %91 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @zero_but_true, i64 noundef 10) #17
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi ptr [ %89, %88 ], [ %91, %90 ]
  %94 = tail call ptr @Perl_sv_2mortal(ptr noundef %93) #17
  br label %95

95:                                               ; preds = %83, %92, %80
  %96 = phi ptr [ %94, %92 ], [ %82, %80 ], [ @PL_sv_undef, %83 ]
  store ptr %96, ptr %17, align 8, !tbaa !66
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !66
  %97 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %98 = load ptr, ptr %97, align 8, !tbaa !92
  br label %99

99:                                               ; preds = %72, %95
  %100 = phi ptr [ %98, %95 ], [ %73, %72 ]
  ret ptr %100
}

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_do_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_do_sysseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_truncate() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !76
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %3, i32 noundef 2) #17
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = tail call ptr @__errno_location() #18
  store i32 0, ptr %16, align 4, !tbaa !91
  %17 = load ptr, ptr %2, align 8, !tbaa !66
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !77
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = tail call ptr @Perl_gv_fetchsv(ptr noundef %17, i32 noundef 0, i32 noundef 15) #17
  br label %68

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !74
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @Perl_mg_get(ptr noundef %17) #17
  br label %31

31:                                               ; preds = %24, %29
  %32 = load i32, ptr %25, align 4, !tbaa !74
  %33 = and i32 %32, 49152
  %34 = icmp eq i32 %33, 32768
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = and i32 %32, 255
  %37 = add nsw i32 %36, -9
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %65, label %39

39:                                               ; preds = %35, %31
  %40 = and i32 %32, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = and i32 %46, 255
  %48 = icmp ult i32 %47, 11
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = and i32 %46, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @Perl_mg_get(ptr noundef %44) #17
  br label %54

54:                                               ; preds = %49, %52
  %55 = load ptr, ptr %43, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !74
  %58 = and i32 %57, 49152
  %59 = icmp eq i32 %58, 32768
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = and i32 %57, 255
  %62 = add nsw i32 %61, -9
  %63 = icmp ult i32 %62, 2
  %64 = select i1 %63, ptr %55, ptr null
  br label %65

65:                                               ; preds = %60, %35, %54, %42, %39
  %66 = phi ptr [ null, %54 ], [ null, %42 ], [ null, %39 ], [ %17, %35 ], [ %64, %60 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %103, label %68

68:                                               ; preds = %22, %65
  %69 = phi ptr [ %23, %22 ], [ %66, %65 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !74
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -9
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.gv, ptr %69, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.gp, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !128
  br label %84

84:                                               ; preds = %71, %68, %77, %81
  %85 = phi ptr [ %83, %81 ], [ null, %77 ], [ null, %68 ], [ null, %71 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %132, label %87

87:                                               ; preds = %107, %84
  %88 = phi ptr [ %85, %84 ], [ %109, %107 ]
  %89 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.53) #17
  br label %92

92:                                               ; preds = %87, %91
  %93 = getelementptr inbounds %struct.io, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = icmp eq ptr %94, null
  br i1 %95, label %132, label %96

96:                                               ; preds = %92
  %97 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %94) #17
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 9, ptr %16, align 4, !tbaa !91
  br label %132

100:                                              ; preds = %96
  %101 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %94) #17
  %102 = tail call i32 @ftruncate64(i32 noundef %97, i64 noundef %15) #17
  br label %129

103:                                              ; preds = %65
  %104 = load i32, ptr %25, align 4, !tbaa !74
  %105 = and i32 %104, 2048
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !76
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !74
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, 15
  br i1 %113, label %87, label %114

114:                                              ; preds = %107, %103
  %115 = and i32 %104, 2098176
  %116 = icmp eq i32 %115, 1024
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  br label %122

120:                                              ; preds = %114
  %121 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef null, i32 noundef 32) #17
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi ptr [ %119, %117 ], [ %121, %120 ]
  %124 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.53) #17
  br label %127

127:                                              ; preds = %122, %126
  %128 = tail call i32 @truncate64(ptr noundef %123, i64 noundef %15) #17
  br label %129

129:                                              ; preds = %100, %127
  %130 = phi i32 [ %128, %127 ], [ %102, %100 ]
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %136, label %132

132:                                              ; preds = %84, %99, %92, %129
  %133 = load i32, ptr %16, align 4, !tbaa !91
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 9, ptr %16, align 4, !tbaa !91
  br label %136

136:                                              ; preds = %132, %135, %129
  %137 = phi ptr [ @PL_sv_yes, %129 ], [ @PL_sv_undef, %135 ], [ @PL_sv_undef, %132 ]
  store ptr %137, ptr %2, align 8, !tbaa !66
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !66
  %138 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %139 = load ptr, ptr %138, align 8, !tbaa !92
  ret ptr %139
}

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @truncate64(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ioctl() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  %11 = getelementptr inbounds ptr, ptr %2, i64 -2
  %12 = load ptr, ptr %9, align 8, !tbaa !66
  store ptr %12, ptr @PL_Sv, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = and i32 %14, -2145386240
  %16 = icmp eq i32 %15, -2147483392
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load ptr, ptr %12, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.xpvuv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !76
  br label %23

21:                                               ; preds = %0
  %22 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %12, i32 noundef 2) #17
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %20, %17 ], [ %22, %21 ]
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %11, align 8, !tbaa !66
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !74
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -9
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !128
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %28, %23, %34, %38
  %43 = tail call ptr @Perl_gv_add_by_type(ptr noundef %26, i32 noundef 15) #17
  %44 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  br label %48

48:                                               ; preds = %38, %42
  %49 = phi ptr [ %47, %42 ], [ %40, %38 ]
  %50 = getelementptr inbounds %struct.io, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  tail call void @Perl_report_evil_fh(ptr noundef %26) #17
  %54 = tail call ptr @__errno_location() #18
  store i32 9, ptr %54, align 4, !tbaa !91
  store ptr @PL_sv_undef, ptr %11, align 8, !tbaa !66
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !66
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  br label %181

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !74
  %60 = and i32 %59, 1024
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %59, 768
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %66 = and i32 %59, 430018304
  %67 = icmp eq i32 %66, 1024
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load ptr, ptr %10, align 8, !tbaa !86
  %70 = getelementptr inbounds %struct.xpv, ptr %69, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !87
  store i64 %71, ptr %1, align 8, !tbaa !105
  %72 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  br label %76

74:                                               ; preds = %65
  %75 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %10, ptr noundef nonnull %1, i32 noundef 2) #17
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi ptr [ %73, %68 ], [ %75, %74 ]
  %78 = lshr i32 %25, 16
  %79 = and i32 %78, 16383
  %80 = call i32 @llvm.umax.i32(i32 %79, i32 256)
  %81 = zext nneg i32 %80 to i64
  %82 = load i64, ptr %1, align 8, !tbaa !105
  %83 = icmp ult i64 %82, %81
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = add nuw nsw i64 %81, 1
  %86 = call ptr @Perl_sv_grow(ptr noundef %10, i64 noundef %85) #17
  %87 = load ptr, ptr %10, align 8, !tbaa !86
  %88 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  store i64 %81, ptr %88, align 8, !tbaa !87
  br label %89

89:                                               ; preds = %84, %76
  %90 = phi ptr [ %86, %84 ], [ %77, %76 ]
  %91 = load ptr, ptr %10, align 8, !tbaa !86
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !87
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  store i8 17, ptr %94, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %107

95:                                               ; preds = %57
  %96 = and i32 %59, 2097408
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load ptr, ptr %10, align 8, !tbaa !86
  %100 = getelementptr inbounds %struct.xpviv, ptr %99, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !76
  br label %104

102:                                              ; preds = %95
  %103 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %10, i32 noundef 2) #17
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i64 [ %101, %98 ], [ %103, %102 ]
  %106 = inttoptr i64 %105 to ptr
  br label %107

107:                                              ; preds = %104, %89
  %108 = phi ptr [ %90, %89 ], [ %106, %104 ]
  %109 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %110 = getelementptr inbounds %struct.op, ptr %109, i64 0, i32 4
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 511
  %113 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  %116 = zext nneg i16 %112 to i64
  %117 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !66
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %118) #17
  br label %119

119:                                              ; preds = %107, %115
  %120 = icmp eq i16 %112, 249
  %121 = load ptr, ptr %50, align 8, !tbaa !76
  %122 = call i32 @Perl_PerlIO_fileno(ptr noundef %121) #17
  br i1 %120, label %123, label %126

123:                                              ; preds = %119
  %124 = and i64 %24, 4294967295
  %125 = call i32 (i32, i64, ...) @ioctl(i32 noundef %122, i64 noundef %124, ptr noundef %108) #17
  br label %128

126:                                              ; preds = %119
  %127 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %122, i32 noundef %25, ptr noundef %108) #17
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i32 [ %125, %123 ], [ %127, %126 ]
  %130 = sext i32 %129 to i64
  %131 = load i32, ptr %58, align 4, !tbaa !74
  %132 = and i32 %131, 1024
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %162, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %10, align 8, !tbaa !86
  %136 = getelementptr inbounds %struct.xpv, ptr %135, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !87
  %138 = getelementptr inbounds i8, ptr %108, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !76
  %140 = icmp eq i8 %139, 17
  br i1 %140, label %156, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %143 = getelementptr inbounds %struct.op, ptr %142, i64 0, i32 4
  %144 = load i16, ptr %143, align 8
  %145 = and i16 %144, 511
  %146 = icmp eq i16 %145, 380
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call ptr @Perl_custom_op_get_field(ptr noundef %142, i32 noundef 1) #17
  br label %153

149:                                              ; preds = %141
  %150 = zext nneg i16 %145 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !66
  br label %153

153:                                              ; preds = %149, %147
  %154 = phi ptr [ %148, %147 ], [ %152, %149 ]
  %155 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.54, ptr noundef %154) #17
  br label %181

156:                                              ; preds = %134
  store i8 0, ptr %138, align 1, !tbaa !76
  %157 = load i32, ptr %58, align 4, !tbaa !74
  %158 = and i32 %157, 4194304
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 @Perl_mg_set(ptr noundef nonnull %10) #17
  br label %162

162:                                              ; preds = %160, %156, %128
  switch i32 %129, label %166 [
    i32 -1, label %163
    i32 0, label %171
  ]

163:                                              ; preds = %162
  store ptr @PL_sv_undef, ptr %11, align 8, !tbaa !66
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !66
  %164 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %165 = load ptr, ptr %164, align 8, !tbaa !92
  br label %181

166:                                              ; preds = %162
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %130) #17
  %167 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !74
  %169 = and i32 %168, 4194304
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %176

171:                                              ; preds = %162
  call void @Perl_sv_setpvn(ptr noundef %8, ptr noundef nonnull @zero_but_true, i64 noundef 10) #17
  %172 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !74
  %174 = and i32 %173, 4194304
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171, %166
  %177 = call i32 @Perl_mg_set(ptr noundef %8) #17
  br label %178

178:                                              ; preds = %176, %171, %166
  store ptr %8, ptr %11, align 8, !tbaa !66
  store ptr %11, ptr @PL_stack_sp, align 8, !tbaa !66
  %179 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %180 = load ptr, ptr %179, align 8, !tbaa !92
  br label %181

181:                                              ; preds = %178, %163, %153, %53
  %182 = phi ptr [ %155, %153 ], [ %165, %163 ], [ %180, %178 ], [ %56, %53 ]
  ret ptr %182
}

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #10

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_flock() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.55) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sockpair() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef nonnull @.str.56) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_stat() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !77
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  br label %56

10:                                               ; preds = %0
  %11 = getelementptr inbounds ptr, ptr %1, i64 -1
  %12 = load ptr, ptr %1, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @Perl_mg_get(ptr noundef %12) #17
  br label %19

19:                                               ; preds = %10, %17
  %20 = load i32, ptr %13, align 4, !tbaa !74
  %21 = and i32 %20, 49152
  %22 = icmp eq i32 %21, 32768
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = and i32 %20, 255
  %25 = add nsw i32 %24, -9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %53, label %27

27:                                               ; preds = %23, %19
  %28 = and i32 %20, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !74
  %35 = and i32 %34, 255
  %36 = icmp ult i32 %35, 11
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = and i32 %34, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @Perl_mg_get(ptr noundef %32) #17
  br label %42

42:                                               ; preds = %37, %40
  %43 = load ptr, ptr %31, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 49152
  %47 = icmp eq i32 %46, 32768
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = and i32 %45, 255
  %50 = add nsw i32 %49, -9
  %51 = icmp ult i32 %50, 2
  %52 = select i1 %51, ptr %43, ptr null
  br label %53

53:                                               ; preds = %48, %23, %42, %30, %27
  %54 = phi ptr [ null, %42 ], [ null, %30 ], [ null, %27 ], [ %12, %23 ], [ %52, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %156, label %56

56:                                               ; preds = %7, %53
  %57 = phi ptr [ %9, %7 ], [ %54, %53 ]
  %58 = phi ptr [ %1, %7 ], [ %11, %53 ]
  %59 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.op, ptr %59, i64 0, i32 4
  %61 = load i16, ptr %60, align 8
  %62 = and i16 %61, 511
  %63 = icmp eq i16 %62, 264
  br i1 %63, label %64, label %92

64:                                               ; preds = %56
  %65 = load ptr, ptr @PL_defgv, align 8, !tbaa !66
  %66 = icmp eq ptr %57, %65
  br i1 %66, label %88, label %67

67:                                               ; preds = %64, %220
  %68 = phi i32 [ 13, %64 ], [ %221, %220 ]
  %69 = phi ptr [ null, %64 ], [ %222, %220 ]
  %70 = phi ptr [ %57, %64 ], [ null, %220 ]
  %71 = phi ptr [ %58, %64 ], [ %11, %220 ]
  %72 = icmp eq ptr %70, null
  %73 = select i1 %72, ptr @.str.4, ptr @.str.36
  br i1 %72, label %86, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.gv, ptr %70, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !135
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %70, ptr %78
  %81 = load ptr, ptr %80, align 8, !tbaa !110
  %82 = getelementptr inbounds %struct.xpvgv, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = tail call ptr @Perl_newSVhek(ptr noundef %83) #17
  %85 = tail call ptr @Perl_sv_2mortal(ptr noundef %84) #17
  br label %86

86:                                               ; preds = %67, %74
  %87 = phi ptr [ %85, %74 ], [ @PL_sv_no, %67 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 5, ptr noundef nonnull @.str.57, ptr noundef nonnull %73, ptr noundef %87) #17
  br label %92

88:                                               ; preds = %64
  %89 = load i16, ptr @PL_laststype, align 2, !tbaa !190
  %90 = icmp eq i16 %89, 264
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.58) #17
  br label %92

92:                                               ; preds = %86, %91, %88, %56
  %93 = phi i32 [ %68, %86 ], [ 13, %91 ], [ 13, %88 ], [ 13, %56 ]
  %94 = phi ptr [ %69, %86 ], [ null, %91 ], [ null, %88 ], [ null, %56 ]
  %95 = phi ptr [ %70, %86 ], [ %57, %91 ], [ %57, %88 ], [ %57, %56 ]
  %96 = phi ptr [ %71, %86 ], [ %58, %91 ], [ %58, %88 ], [ %58, %56 ]
  %97 = load ptr, ptr @PL_defgv, align 8, !tbaa !66
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %150, label %99

99:                                               ; preds = %92, %220
  %100 = phi i32 [ %93, %92 ], [ %221, %220 ]
  %101 = phi ptr [ %94, %92 ], [ %222, %220 ]
  %102 = phi ptr [ %95, %92 ], [ null, %220 ]
  %103 = phi ptr [ %96, %92 ], [ %11, %220 ]
  store i16 265, ptr @PL_laststype, align 2, !tbaa !190
  %104 = icmp eq ptr %102, null
  %105 = select i1 %104, ptr %101, ptr %102
  store ptr %105, ptr @PL_statgv, align 8, !tbaa !66
  %106 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  tail call void @Perl_sv_setpvn(ptr noundef %106, ptr noundef nonnull @.str.4, i64 noundef 0) #17
  br i1 %104, label %120, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !74
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -9
  %112 = icmp ult i32 %111, 2
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.gv, ptr %102, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !76
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.gp, ptr %115, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !128
  br label %120

120:                                              ; preds = %107, %117, %113, %99
  %121 = phi ptr [ %101, %99 ], [ %119, %117 ], [ null, %113 ], [ null, %107 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %143, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.io, ptr %121, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !76
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %125) #17
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !91
  %131 = tail call ptr @__errno_location() #18
  store i32 9, ptr %131, align 4, !tbaa !91
  br label %144

132:                                              ; preds = %127
  %133 = tail call i32 @fstat64(i32 noundef %128, ptr noundef nonnull @PL_statcache) #17
  store i32 %133, ptr @PL_laststatval, align 4, !tbaa !91
  br label %144

134:                                              ; preds = %123
  %135 = load ptr, ptr %121, align 8, !tbaa !130
  %136 = getelementptr inbounds %struct.xpvio, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = tail call i32 @Perl_my_dirfd(ptr noundef nonnull %137) #17
  %141 = tail call i32 @fstat64(i32 noundef %140, ptr noundef nonnull @PL_statcache) #17
  store i32 %141, ptr @PL_laststatval, align 4, !tbaa !91
  br label %144

142:                                              ; preds = %134
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !91
  br label %144

143:                                              ; preds = %120
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !91
  br label %144

144:                                              ; preds = %130, %132, %142, %139, %143
  %145 = phi i1 [ true, %139 ], [ false, %142 ], [ false, %143 ], [ true, %132 ], [ false, %130 ]
  %146 = load i32, ptr @PL_laststatval, align 4, !tbaa !91
  %147 = icmp sgt i32 %146, -1
  %148 = or i1 %145, %147
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  tail call void @Perl_report_evil_fh(ptr noundef %102) #17
  br label %150

150:                                              ; preds = %144, %149, %92
  %151 = phi i32 [ %100, %149 ], [ %100, %144 ], [ %93, %92 ]
  %152 = phi ptr [ %103, %149 ], [ %103, %144 ], [ %96, %92 ]
  %153 = load i32, ptr @PL_laststatval, align 4, !tbaa !91
  %154 = icmp slt i32 %153, 0
  %155 = select i1 %154, i32 0, i32 %151
  br label %224

156:                                              ; preds = %53
  %157 = load i32, ptr %13, align 4, !tbaa !74
  %158 = and i32 %157, 2048
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !76
  %163 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !74
  %165 = and i32 %164, 255
  %166 = icmp eq i32 %165, 15
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %169 = getelementptr inbounds %struct.op, ptr %168, i64 0, i32 4
  %170 = load i16, ptr %169, align 8
  %171 = and i16 %170, 511
  %172 = icmp eq i16 %171, 264
  %173 = select i1 %172, i32 2, i32 3
  br label %220

174:                                              ; preds = %156, %160
  %175 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  tail call void @Perl_sv_untaint(ptr noundef %178) #17
  br label %179

179:                                              ; preds = %174, %177
  %180 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  %181 = load i32, ptr %13, align 4, !tbaa !74
  %182 = and i32 %181, 2098176
  %183 = icmp eq i32 %182, 1024
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !76
  br label %189

187:                                              ; preds = %179
  %188 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %12, ptr noundef null, i32 noundef 32) #17
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi ptr [ %186, %184 ], [ %188, %187 ]
  tail call void @Perl_sv_setpv(ptr noundef %180, ptr noundef %190) #17
  store ptr null, ptr @PL_statgv, align 8, !tbaa !66
  %191 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %192 = getelementptr inbounds %struct.op, ptr %191, i64 0, i32 4
  %193 = load i16, ptr %192, align 8
  %194 = and i16 %193, 511
  store i16 %194, ptr @PL_laststype, align 2, !tbaa !190
  %195 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  %196 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !74
  %198 = and i32 %197, 2098176
  %199 = icmp eq i32 %198, 1024
  br i1 %199, label %200, label %203

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !76
  br label %205

203:                                              ; preds = %189
  %204 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %195, ptr noundef null, i32 noundef 34) #17
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi ptr [ %202, %200 ], [ %204, %203 ]
  %207 = tail call i32 @stat64(ptr noundef %206, ptr noundef nonnull @PL_statcache) #17
  store i32 %207, ptr @PL_laststatval, align 4, !tbaa !91
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #17
  br i1 %210, label %211, label %220

211:                                              ; preds = %209
  %212 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %206) #19
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = getelementptr i8, ptr %206, i64 %212
  %216 = getelementptr i8, ptr %215, i64 -1
  %217 = load i8, ptr %216, align 1, !tbaa !76
  %218 = icmp eq i8 %217, 10
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.59) #17
  br label %220

220:                                              ; preds = %211, %205, %219, %214, %209, %167
  %221 = phi i32 [ 13, %167 ], [ 13, %205 ], [ 0, %219 ], [ 0, %214 ], [ 0, %209 ], [ 0, %211 ]
  %222 = phi ptr [ %162, %167 ], [ null, %205 ], [ null, %219 ], [ null, %214 ], [ null, %209 ], [ null, %211 ]
  %223 = phi i32 [ %173, %167 ], [ 0, %205 ], [ 0, %219 ], [ 0, %214 ], [ 0, %209 ], [ 0, %211 ]
  switch i32 %223, label %315 [
    i32 0, label %224
    i32 2, label %67
    i32 3, label %99
  ]

224:                                              ; preds = %150, %220
  %225 = phi i32 [ %221, %220 ], [ %155, %150 ]
  %226 = phi ptr [ %11, %220 ], [ %152, %150 ]
  %227 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %228 = getelementptr inbounds %struct.op, ptr %227, i64 0, i32 5
  %229 = load i8, ptr %228, align 2, !tbaa !77
  %230 = and i8 %229, 3
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %224
  %233 = zext nneg i8 %230 to i32
  br label %236

234:                                              ; preds = %224
  %235 = tail call i32 @Perl_block_gimme() #17
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  switch i32 %237, label %238 [
    i32 3, label %251
    i32 1, label %311
  ]

238:                                              ; preds = %236
  %239 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %240 = ptrtoint ptr %239 to i64
  %241 = ptrtoint ptr %226 to i64
  %242 = sub i64 %240, %241
  %243 = icmp slt i64 %242, 8
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = tail call ptr @Perl_stack_grow(ptr noundef %226, ptr noundef %226, i64 noundef 1) #17
  br label %246

246:                                              ; preds = %238, %244
  %247 = phi ptr [ %245, %244 ], [ %226, %238 ]
  %248 = icmp eq i32 %225, 0
  %249 = select i1 %248, ptr @PL_sv_no, ptr @PL_sv_yes
  %250 = getelementptr inbounds ptr, ptr %247, i64 1
  store ptr %249, ptr %250, align 8, !tbaa !66
  br label %311

251:                                              ; preds = %236
  %252 = icmp eq i32 %225, 0
  br i1 %252, label %311, label %253

253:                                              ; preds = %251
  %254 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %255 = ptrtoint ptr %254 to i64
  %256 = ptrtoint ptr %226 to i64
  %257 = sub i64 %255, %256
  %258 = ashr exact i64 %257, 3
  %259 = zext nneg i32 %225 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = tail call ptr @Perl_stack_grow(ptr noundef %226, ptr noundef %226, i64 noundef %259) #17
  br label %263

263:                                              ; preds = %261, %253
  %264 = phi ptr [ %262, %261 ], [ %226, %253 ]
  %265 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !105
  %266 = add nsw i64 %265, %259
  %267 = load i64, ptr @PL_tmps_max, align 8, !tbaa !105
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %271, label %269

269:                                              ; preds = %263
  %270 = tail call i64 @Perl_tmps_grow_p(i64 noundef %266) #17
  br label %271

271:                                              ; preds = %263, %269
  %272 = tail call ptr @Perl_sv_newmortal() #17
  %273 = getelementptr inbounds ptr, ptr %264, i64 1
  store ptr %272, ptr %273, align 8, !tbaa !66
  %274 = load i64, ptr @PL_statcache, align 8, !tbaa !191
  tail call void @Perl_sv_setiv(ptr noundef %272, i64 noundef %274) #17
  %275 = tail call ptr @Perl_sv_newmortal() #17
  %276 = getelementptr inbounds ptr, ptr %264, i64 2
  store ptr %275, ptr %276, align 8, !tbaa !66
  %277 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 1), align 8, !tbaa !194
  tail call void @Perl_sv_setiv(ptr noundef %275, i64 noundef %277) #17
  %278 = tail call ptr @Perl_sv_newmortal() #17
  %279 = getelementptr inbounds ptr, ptr %264, i64 3
  store ptr %278, ptr %279, align 8, !tbaa !66
  %280 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %281 = zext i32 %280 to i64
  tail call void @Perl_sv_setuv(ptr noundef %278, i64 noundef %281) #17
  %282 = tail call ptr @Perl_sv_newmortal() #17
  %283 = getelementptr inbounds ptr, ptr %264, i64 4
  store ptr %282, ptr %283, align 8, !tbaa !66
  %284 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 2), align 8, !tbaa !196
  tail call void @Perl_sv_setuv(ptr noundef %282, i64 noundef %284) #17
  %285 = tail call ptr @Perl_sv_newmortal() #17
  %286 = getelementptr inbounds ptr, ptr %264, i64 5
  store ptr %285, ptr %286, align 8, !tbaa !66
  %287 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !197
  %288 = zext i32 %287 to i64
  tail call void @Perl_sv_setuv(ptr noundef %285, i64 noundef %288) #17
  %289 = tail call ptr @Perl_sv_newmortal() #17
  %290 = getelementptr inbounds ptr, ptr %264, i64 6
  store ptr %289, ptr %290, align 8, !tbaa !66
  %291 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 5), align 8, !tbaa !198
  %292 = zext i32 %291 to i64
  tail call void @Perl_sv_setuv(ptr noundef %289, i64 noundef %292) #17
  %293 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #17
  %294 = getelementptr inbounds ptr, ptr %264, i64 7
  store ptr %293, ptr %294, align 8, !tbaa !66
  %295 = tail call ptr @Perl_sv_newmortal() #17
  %296 = getelementptr inbounds ptr, ptr %264, i64 8
  store ptr %295, ptr %296, align 8, !tbaa !66
  %297 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !199
  tail call void @Perl_sv_setiv(ptr noundef %295, i64 noundef %297) #17
  %298 = tail call ptr @Perl_sv_newmortal() #17
  %299 = getelementptr inbounds ptr, ptr %264, i64 9
  store ptr %298, ptr %299, align 8, !tbaa !66
  %300 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 11), align 8, !tbaa !200
  tail call void @Perl_sv_setiv(ptr noundef %298, i64 noundef %300) #17
  %301 = tail call ptr @Perl_sv_newmortal() #17
  %302 = getelementptr inbounds ptr, ptr %264, i64 10
  store ptr %301, ptr %302, align 8, !tbaa !66
  %303 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 12), align 8, !tbaa !201
  tail call void @Perl_sv_setiv(ptr noundef %301, i64 noundef %303) #17
  %304 = tail call ptr @Perl_sv_newmortal() #17
  %305 = getelementptr inbounds ptr, ptr %264, i64 11
  store ptr %304, ptr %305, align 8, !tbaa !66
  %306 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 13), align 8, !tbaa !202
  tail call void @Perl_sv_setiv(ptr noundef %304, i64 noundef %306) #17
  %307 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #17
  %308 = getelementptr inbounds ptr, ptr %264, i64 12
  store ptr %307, ptr %308, align 8, !tbaa !66
  %309 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.4, i64 noundef 0, i32 noundef 524288) #17
  %310 = getelementptr inbounds ptr, ptr %264, i64 13
  store ptr %309, ptr %310, align 8, !tbaa !66
  br label %311

311:                                              ; preds = %251, %271, %246, %236
  %312 = phi ptr [ %250, %246 ], [ %226, %236 ], [ %310, %271 ], [ %226, %251 ]
  store ptr %312, ptr @PL_stack_sp, align 8, !tbaa !66
  %313 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %314 = load ptr, ptr %313, align 8, !tbaa !92
  ret ptr %314

315:                                              ; preds = %220
  unreachable
}

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

declare i32 @Perl_my_dirfd(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ftrread() local_unnamed_addr #0 !prof !125 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
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
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !74
  %16 = and i32 %15, 2099200
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18, !prof !134

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !77
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %11)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23, %18, %0
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 511
  switch i16 %30, label %36 [
    i16 271, label %35
    i16 267, label %31
    i16 268, label %32
    i16 270, label %33
    i16 269, label %34
  ], !prof !203

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  br label %36

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %33, %26, %35, %34, %32, %31
  %37 = phi i32 [ 64, %35 ], [ 64, %32 ], [ 128, %31 ], [ 256, %26 ], [ 128, %33 ], [ 256, %34 ]
  %38 = phi i1 [ true, %35 ], [ false, %32 ], [ false, %31 ], [ false, %26 ], [ true, %33 ], [ true, %34 ]
  %39 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #17
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43, !prof !129

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %49

43:                                               ; preds = %36
  %44 = tail call zeroext i1 @Perl_cando(i32 noundef %37, i1 noundef zeroext %38, ptr noundef nonnull @PL_statcache) #17
  br i1 %44, label %45, label %47, !prof !134

45:                                               ; preds = %43
  %46 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %49

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %49

49:                                               ; preds = %23, %47, %45, %41
  %50 = phi ptr [ %42, %41 ], [ %46, %45 ], [ %48, %47 ], [ %24, %23 ]
  ret ptr %50
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_try_amagic_ftest(i8 noundef signext %0) unnamed_addr #0 !prof !65 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !82
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_mg_get(ptr noundef %4) #17
  br label %17

17:                                               ; preds = %15, %10, %1
  %18 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %100, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !74
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %24, align 8, !tbaa !86
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds %struct.hv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !95
  %34 = and i32 %33, 268435456
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %100, label %36

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  store i8 %0, ptr %2, align 1, !tbaa !76
  %37 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %2, i64 noundef 1, i32 noundef 524288) #17
  %38 = call ptr @Perl_amagic_call(ptr noundef %4, ptr noundef %37, i32 noundef 73, i32 noundef 8) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %98, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 2) #17
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
  %60 = load ptr, ptr %38, align 8, !tbaa !86
  %61 = icmp eq ptr %60, null
  br i1 %61, label %96, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !87
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %94, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  %71 = load i8, ptr %70, align 1, !tbaa !76
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
  %80 = load ptr, ptr %38, align 8, !tbaa !86
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !76
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79, %76
  %85 = and i32 %42, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %38, align 8, !tbaa !86
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !76
  %91 = fcmp une double %90, 0.000000e+00
  br i1 %91, label %94, label %96

92:                                               ; preds = %73
  %93 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %38, i32 noundef 0) #17
  br i1 %93, label %94, label %96

94:                                               ; preds = %68, %92, %87, %79, %62, %45
  %95 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull %38)
  br label %98

96:                                               ; preds = %92, %87, %47, %84, %68, %66, %59, %45
  %97 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull %38)
  br label %98

98:                                               ; preds = %94, %96, %36
  %99 = phi ptr [ null, %36 ], [ %95, %94 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  br label %100

100:                                              ; preds = %17, %22, %29, %98
  %101 = phi ptr [ %99, %98 ], [ null, %29 ], [ null, %22 ], [ null, %17 ]
  ret ptr %101
}

declare i32 @Perl_my_stat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_ft_return_false(ptr noundef %0) unnamed_addr #0 !prof !204 !PGOFuncName !205 {
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !77
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9, !prof !139

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %4 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 1) #17
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi ptr [ %16, %15 ], [ %4, %9 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  br label %20

20:                                               ; preds = %1, %17
  %21 = phi ptr [ %19, %17 ], [ %4, %1 ]
  store ptr %0, ptr %21, align 8, !tbaa !66
  store ptr %21, ptr @PL_stack_sp, align 8, !tbaa !66
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !82
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %46, label %27, !prof !139

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
  %36 = load i8, ptr %35, align 1, !tbaa !82
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 8, !tbaa !92
  %41 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, 511
  %44 = add nsw i16 %43, -266
  %45 = icmp ult i16 %44, 27
  br i1 %45, label %33, label %46, !llvm.loop !206

46:                                               ; preds = %33, %39, %27, %20
  %47 = phi ptr [ %3, %20 ], [ %3, %27 ], [ %40, %39 ], [ %34, %33 ]
  ret ptr %47
}

declare zeroext i1 @Perl_cando(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_ft_return_true(ptr noundef %0) unnamed_addr #0 !prof !125 !PGOFuncName !207 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !77
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8, !prof !134

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #17
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %15, %14 ], [ %2, %8 ]
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !82
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.svop, ptr %18, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi ptr [ %25, %23 ], [ %0, %16 ]
  %28 = getelementptr inbounds ptr, ptr %17, i64 1
  store ptr %27, ptr %28, align 8, !tbaa !66
  br label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %31 = load i8, ptr %30, align 1, !tbaa !82
  %32 = and i8 %31, 8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35, !prof !134

34:                                               ; preds = %29
  store ptr %0, ptr %2, align 8, !tbaa !66
  br label %35

35:                                               ; preds = %29, %34, %26
  %36 = phi ptr [ %28, %26 ], [ %2, %29 ], [ %2, %34 ]
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !66
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  ret ptr %38
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ftis() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
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
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !74
  %16 = and i32 %15, 2099200
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %20 = load i8, ptr %19, align 2, !tbaa !77
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %11)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %126

26:                                               ; preds = %23, %18, %0
  %27 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %126

31:                                               ; preds = %26
  %32 = icmp eq i16 %4, 272
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %126

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.op, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !70
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  switch i16 %4, label %65 [
    i16 273, label %42
    i16 274, label %44
    i16 275, label %51
    i16 276, label %58
  ]

42:                                               ; preds = %35
  %43 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !199
  tail call void @Perl_sv_setiv(ptr noundef %41, i64 noundef %43) #17
  br label %65

44:                                               ; preds = %35
  %45 = load i64, ptr @PL_basetime, align 8, !tbaa !105
  %46 = sitofp i64 %45 to double
  %47 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 12), align 8, !tbaa !201
  %48 = sitofp i64 %47 to double
  %49 = fsub double %46, %48
  %50 = fdiv double %49, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %50) #17
  br label %65

51:                                               ; preds = %35
  %52 = load i64, ptr @PL_basetime, align 8, !tbaa !105
  %53 = sitofp i64 %52 to double
  %54 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 11), align 8, !tbaa !200
  %55 = sitofp i64 %54 to double
  %56 = fsub double %53, %55
  %57 = fdiv double %56, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %57) #17
  br label %65

58:                                               ; preds = %35
  %59 = load i64, ptr @PL_basetime, align 8, !tbaa !105
  %60 = sitofp i64 %59 to double
  %61 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 13), align 8, !tbaa !202
  %62 = sitofp i64 %61 to double
  %63 = fsub double %60, %62
  %64 = fdiv double %63, 8.640000e+04
  tail call void @Perl_sv_setnv(ptr noundef %41, double noundef %64) #17
  br label %65

65:                                               ; preds = %42, %44, %51, %58, %35
  %66 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !74
  %68 = and i32 %67, 4194304
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @Perl_mg_set(ptr noundef %41) #17
  br label %72

72:                                               ; preds = %65, %70
  %73 = icmp eq ptr %41, null
  br i1 %73, label %124, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr %66, align 4, !tbaa !74
  %76 = and i32 %75, 65280
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %75, 255
  %79 = icmp eq i32 %78, 8
  %80 = or i1 %77, %79
  %81 = and i32 %75, 16777471
  %82 = icmp eq i32 %81, 16777226
  %83 = or i1 %82, %80
  br i1 %83, label %84, label %124

84:                                               ; preds = %74
  %85 = and i32 %75, 1024
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %41, align 8, !tbaa !86
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.xpv, ptr %88, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !87
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %122, label %94

94:                                               ; preds = %90
  %95 = icmp eq i64 %92, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !76
  %99 = load i8, ptr %98, align 1, !tbaa !76
  %100 = icmp eq i8 %99, 48
  br i1 %100, label %124, label %122

101:                                              ; preds = %84
  %102 = and i32 %75, 768
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %101
  %105 = and i32 %75, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %41, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.xpviv, ptr %108, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !76
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107, %104
  %113 = and i32 %75, 512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %41, align 8, !tbaa !86
  %117 = getelementptr inbounds %struct.xpvnv, ptr %116, i64 0, i32 5
  %118 = load double, ptr %117, align 8, !tbaa !76
  %119 = fcmp une double %118, 0.000000e+00
  br i1 %119, label %122, label %124

120:                                              ; preds = %101
  %121 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %41, i32 noundef 0) #17
  br i1 %121, label %122, label %124

122:                                              ; preds = %96, %120, %115, %107, %90
  %123 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull %41)
  br label %126

124:                                              ; preds = %115, %74, %72, %120, %112, %96, %94, %87
  %125 = tail call fastcc ptr @S_ft_return_false(ptr noundef %41)
  br label %126

126:                                              ; preds = %122, %124, %23, %33, %29
  %127 = phi ptr [ %30, %29 ], [ %34, %33 ], [ %24, %23 ], [ %123, %122 ], [ %125, %124 ]
  ret ptr %127
}

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ftrowned() local_unnamed_addr #0 !prof !204 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
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
  %13 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = and i32 %16, 2099200
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19, !prof !139

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !77
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %12)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %110

27:                                               ; preds = %24, %19, %11
  %28 = tail call i32 @Perl_my_stat_flags(i32 noundef 0) #17
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32, !prof !139

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %110

32:                                               ; preds = %27
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !66
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
  %38 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !197
  %39 = tail call i32 @getuid() #17
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

43:                                               ; preds = %32
  %44 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 4), align 4, !tbaa !197
  %45 = tail call i32 @geteuid() #17
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

49:                                               ; preds = %32
  %50 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 8), align 8, !tbaa !199
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

54:                                               ; preds = %32
  %55 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %56 = and i32 %55, 61440
  %57 = icmp eq i32 %56, 49152
  br i1 %57, label %58, label %108

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

60:                                               ; preds = %32
  %61 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %62 = and i32 %61, 61440
  %63 = icmp eq i32 %62, 8192
  br i1 %63, label %64, label %108

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

66:                                               ; preds = %32
  %67 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %68 = and i32 %67, 61440
  %69 = icmp eq i32 %68, 24576
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

72:                                               ; preds = %32
  %73 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %74 = and i32 %73, 61440
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

78:                                               ; preds = %32
  %79 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %80 = and i32 %79, 61440
  %81 = icmp eq i32 %80, 16384
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

84:                                               ; preds = %32
  %85 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 4096
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

90:                                               ; preds = %32
  %91 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %92 = and i32 %91, 2048
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

96:                                               ; preds = %32
  %97 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %98 = and i32 %97, 1024
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

102:                                              ; preds = %32
  %103 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %110

108:                                              ; preds = %102, %96, %90, %84, %78, %72, %66, %60, %54, %49, %43, %37, %32
  %109 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %110

110:                                              ; preds = %24, %108, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %47, %41, %30
  %111 = phi ptr [ %31, %30 ], [ %109, %108 ], [ %107, %106 ], [ %101, %100 ], [ %95, %94 ], [ %89, %88 ], [ %83, %82 ], [ %77, %76 ], [ %71, %70 ], [ %65, %64 ], [ %59, %58 ], [ %53, %52 ], [ %48, %47 ], [ %42, %41 ], [ %25, %24 ]
  ret ptr %111
}

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ftlink() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr %1, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = and i32 %4, 2099200
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !77
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext 108)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13, %7, %0
  %17 = tail call i32 @Perl_my_lstat_flags(i32 noundef 0) #17
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %29

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 40960
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %29

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %29

29:                                               ; preds = %13, %27, %25, %19
  %30 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %28, %27 ], [ %14, %13 ]
  ret ptr %30
}

declare i32 @Perl_my_lstat_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_fttty() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = and i32 %6, 2099200
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !77
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext 116)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %140

18:                                               ; preds = %15, %9, %0
  %19 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.op, ptr %19, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !77
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.svop, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  br label %85

27:                                               ; preds = %18
  %28 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !74
  %32 = and i32 %31, 49152
  %33 = icmp eq i32 %32, 32768
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = and i32 %31, 255
  %36 = add nsw i32 %35, -9
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %64, label %38

38:                                               ; preds = %34, %27
  %39 = and i32 %31, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = and i32 %45, 255
  %47 = icmp ult i32 %46, 11
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = and i32 %45, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @Perl_mg_get(ptr noundef %43) #17
  br label %53

53:                                               ; preds = %48, %51
  %54 = load ptr, ptr %42, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = and i32 %56, 49152
  %58 = icmp eq i32 %57, 32768
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = and i32 %56, 255
  %61 = add nsw i32 %60, -9
  %62 = icmp ult i32 %61, 2
  %63 = select i1 %62, ptr %54, ptr null
  br label %64

64:                                               ; preds = %59, %34, %53, %41, %38
  %65 = phi ptr [ null, %53 ], [ null, %41 ], [ null, %38 ], [ %29, %34 ], [ %63, %59 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32, ptr %30, align 4, !tbaa !74
  %69 = and i32 %68, 2098176
  %70 = icmp eq i32 %69, 1024
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load ptr, ptr %29, align 8, !tbaa !86
  %73 = getelementptr inbounds %struct.xpv, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !87
  store i64 %74, ptr %1, align 8, !tbaa !105
  %75 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  br label %79

77:                                               ; preds = %67
  %78 = call ptr @Perl_sv_2pv_flags(ptr noundef %29, ptr noundef nonnull %1, i32 noundef 0) #17
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi ptr [ %76, %71 ], [ %78, %77 ]
  %81 = load i64, ptr %1, align 8, !tbaa !105
  %82 = load i32, ptr %30, align 4, !tbaa !74
  %83 = and i32 %82, 536870912
  %84 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %80, i64 noundef %81, i32 noundef %83, i32 noundef 15) #17
  br label %85

85:                                               ; preds = %64, %79, %24
  %86 = phi ptr [ %26, %24 ], [ %65, %64 ], [ %84, %79 ]
  %87 = phi ptr [ null, %24 ], [ null, %64 ], [ %80, %79 ]
  %88 = icmp eq ptr %86, null
  br i1 %88, label %109, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !74
  %92 = and i32 %91, 255
  %93 = add nsw i32 %92, -9
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.gv, ptr %86, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !76
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.gp, ptr %97, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !128
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.io, ptr %101, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !76
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %105) #17
  br label %127

109:                                              ; preds = %89, %85, %95, %103, %99
  %110 = icmp eq ptr %87, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %109
  %112 = load i8, ptr %87, align 1, !tbaa !76
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !91
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %87, ptr noundef nonnull %2, ptr noundef null) #17
  %120 = load i64, ptr %2, align 8
  %121 = icmp ult i64 %120, 2147483648
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = trunc i64 %120 to i32
  br label %127

125:                                              ; preds = %111, %118, %109
  %126 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %140

127:                                              ; preds = %123, %107
  %128 = phi i32 [ %108, %107 ], [ %124, %123 ]
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = tail call ptr @__errno_location() #18
  store i32 9, ptr %131, align 4, !tbaa !91
  %132 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %140

133:                                              ; preds = %127
  %134 = call i32 @isatty(i32 noundef %128) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %140

138:                                              ; preds = %133
  %139 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %140

140:                                              ; preds = %15, %138, %136, %130, %125
  %141 = phi ptr [ %132, %130 ], [ %137, %136 ], [ %139, %138 ], [ %126, %125 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %141
}

declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_fttext() local_unnamed_addr #0 !prof !65 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #17
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = and i32 %6, 2099200
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !77
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  %19 = icmp eq i16 %18, 291
  %20 = select i1 %19, i8 84, i8 66
  %21 = tail call fastcc ptr @S_try_amagic_ftest(i8 noundef signext %20)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %323

23:                                               ; preds = %15, %9, %0
  %24 = phi ptr [ %21, %15 ], [ undef, %9 ], [ undef, %0 ]
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 5
  %27 = load i8, ptr %26, align 2, !tbaa !77
  %28 = and i8 %27, 16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.svop, ptr %25, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  br label %77

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !82
  %36 = and i8 %35, 20
  %37 = icmp eq i8 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load ptr, ptr @PL_defgv, align 8, !tbaa !66
  br label %77

40:                                               ; preds = %33
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = and i32 %44, 49152
  %46 = icmp eq i32 %45, 32768
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = and i32 %44, 255
  %49 = add nsw i32 %48, -9
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %77, label %51

51:                                               ; preds = %47, %40
  %52 = and i32 %44, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !74
  %59 = and i32 %58, 255
  %60 = icmp ult i32 %59, 11
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = and i32 %58, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @Perl_mg_get(ptr noundef %56) #17
  br label %66

66:                                               ; preds = %61, %64
  %67 = load ptr, ptr %55, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !74
  %70 = and i32 %69, 49152
  %71 = icmp eq i32 %70, 32768
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = and i32 %69, 255
  %74 = add nsw i32 %73, -9
  %75 = icmp ult i32 %74, 2
  %76 = select i1 %75, ptr %67, ptr null
  br label %77

77:                                               ; preds = %72, %47, %51, %54, %66, %38, %30
  %78 = phi ptr [ null, %30 ], [ null, %38 ], [ %42, %47 ], [ %42, %66 ], [ %42, %54 ], [ %42, %51 ], [ %42, %72 ]
  %79 = phi ptr [ %32, %30 ], [ %39, %38 ], [ %42, %47 ], [ null, %66 ], [ null, %54 ], [ null, %51 ], [ %76, %72 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %181, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @PL_defgv, align 8, !tbaa !66
  %83 = icmp eq ptr %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load ptr, ptr @PL_statgv, align 8, !tbaa !66
  %86 = icmp eq ptr %85, null
  br i1 %86, label %194, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !91
  %90 = trunc i32 %89 to i8
  switch i8 %90, label %98 [
    i8 15, label %116
    i8 9, label %91
    i8 10, label %91
  ]

91:                                               ; preds = %87, %87
  %92 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !76
  %94 = icmp eq ptr %93, null
  br i1 %94, label %116, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.gp, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !128
  br label %116

98:                                               ; preds = %87
  br label %116

99:                                               ; preds = %81
  store ptr %79, ptr @PL_statgv, align 8, !tbaa !66
  %100 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  tail call void @Perl_sv_setpvn(ptr noundef %100, ptr noundef nonnull @.str.4, i64 noundef 0) #17
  %101 = load ptr, ptr @PL_statgv, align 8, !tbaa !66
  %102 = icmp eq ptr %101, null
  br i1 %102, label %116, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !74
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -9
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.gv, ptr %101, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !76
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !128
  br label %116

116:                                              ; preds = %91, %103, %113, %109, %99, %95, %98, %87
  %117 = phi ptr [ %97, %95 ], [ %85, %87 ], [ null, %98 ], [ %115, %113 ], [ null, %109 ], [ null, %99 ], [ null, %103 ], [ null, %91 ]
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !91
  store i16 265, ptr @PL_laststype, align 2, !tbaa !190
  %118 = icmp eq ptr %117, null
  br i1 %118, label %178, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.io, ptr %117, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = icmp eq ptr %121, null
  br i1 %122, label %178, label %123

123:                                              ; preds = %119
  %124 = tail call i32 @PerlIO_has_base(ptr noundef nonnull %121) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.60) #17
  br label %173

128:                                              ; preds = %123
  %129 = load ptr, ptr %120, align 8, !tbaa !76
  %130 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %129) #17
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = tail call ptr @__errno_location() #18
  store i32 9, ptr %133, align 4, !tbaa !91
  %134 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %173

135:                                              ; preds = %128
  %136 = tail call i32 @fstat64(i32 noundef %130, ptr noundef nonnull @PL_statcache) #17
  store i32 %136, ptr @PL_laststatval, align 4, !tbaa !91
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %173

140:                                              ; preds = %135
  %141 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %142 = and i32 %141, 61440
  %143 = icmp eq i32 %142, 16384
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %146 = getelementptr inbounds %struct.op, ptr %145, i64 0, i32 4
  %147 = load i16, ptr %146, align 8
  %148 = and i16 %147, 511
  %149 = icmp eq i16 %148, 291
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %173

152:                                              ; preds = %144
  %153 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %173

154:                                              ; preds = %140
  %155 = load ptr, ptr %120, align 8, !tbaa !76
  %156 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %155) #17
  %157 = icmp slt i64 %156, 1
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load ptr, ptr %120, align 8, !tbaa !76
  %160 = tail call i32 @PerlIO_getc(ptr noundef %159) #17
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %120, align 8, !tbaa !76
  %164 = tail call i32 @PerlIO_ungetc(ptr noundef %163, i32 noundef %160) #17
  br label %167

165:                                              ; preds = %158
  %166 = tail call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %173

167:                                              ; preds = %162, %154
  %168 = load ptr, ptr %120, align 8, !tbaa !76
  %169 = tail call i64 @Perl_PerlIO_get_bufsiz(ptr noundef %168) #17
  %170 = load ptr, ptr %120, align 8, !tbaa !76
  %171 = tail call ptr @Perl_PerlIO_get_base(ptr noundef %170) #17
  %172 = tail call i64 @llvm.smin.i64(i64 %169, i64 512)
  br label %173

173:                                              ; preds = %167, %165, %152, %150, %138, %132, %126
  %174 = phi ptr [ undef, %132 ], [ undef, %138 ], [ undef, %150 ], [ undef, %152 ], [ %171, %167 ], [ undef, %165 ], [ undef, %126 ]
  %175 = phi i1 [ false, %132 ], [ false, %138 ], [ false, %150 ], [ false, %152 ], [ true, %167 ], [ false, %165 ], [ false, %126 ]
  %176 = phi i64 [ undef, %132 ], [ undef, %138 ], [ undef, %150 ], [ undef, %152 ], [ %172, %167 ], [ undef, %165 ], [ undef, %126 ]
  %177 = phi ptr [ %134, %132 ], [ %139, %138 ], [ %151, %150 ], [ %153, %152 ], [ %24, %167 ], [ %166, %165 ], [ %127, %126 ]
  br i1 %175, label %248, label %323

178:                                              ; preds = %119, %116
  %179 = tail call ptr @__errno_location() #18
  store i32 9, ptr %179, align 4, !tbaa !91
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %79) #17
  store i32 9, ptr %179, align 4, !tbaa !91
  %180 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %323

181:                                              ; preds = %77
  %182 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  %183 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !74
  %185 = and i32 %184, 2098176
  %186 = icmp eq i32 %185, 1024
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !76
  br label %192

190:                                              ; preds = %181
  %191 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %78, ptr noundef null, i32 noundef 32) #17
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi ptr [ %189, %187 ], [ %191, %190 ]
  tail call void @Perl_sv_setpv(ptr noundef %182, ptr noundef %193) #17
  br label %194

194:                                              ; preds = %84, %192
  %195 = load ptr, ptr @PL_statname, align 8, !tbaa !66
  %196 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !76
  store ptr null, ptr @PL_statgv, align 8, !tbaa !66
  %198 = tail call ptr @PerlIO_open(ptr noundef %197, ptr noundef nonnull @.str) #17
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %215

200:                                              ; preds = %194
  br i1 %80, label %201, label %202

201:                                              ; preds = %200
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !91
  store i16 265, ptr @PL_laststype, align 2, !tbaa !190
  br label %202

202:                                              ; preds = %201, %200
  %203 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #17
  br i1 %203, label %204, label %213

204:                                              ; preds = %202
  %205 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %197) #19
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %204
  %208 = getelementptr i8, ptr %197, i64 %205
  %209 = getelementptr i8, ptr %208, i64 -1
  %210 = load i8, ptr %209, align 1, !tbaa !76
  %211 = icmp eq i8 %210, 10
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.61) #17
  br label %213

213:                                              ; preds = %204, %212, %207, %202
  %214 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %323

215:                                              ; preds = %194
  store i16 265, ptr @PL_laststype, align 2, !tbaa !190
  %216 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %198) #17
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %198) #17
  %220 = tail call ptr @__errno_location() #18
  store i32 9, ptr %220, align 4, !tbaa !91
  %221 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %323

222:                                              ; preds = %215
  %223 = tail call i32 @fstat64(i32 noundef %216, ptr noundef nonnull @PL_statcache) #17
  store i32 %223, ptr @PL_laststatval, align 4, !tbaa !91
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %198) #17
  %227 = tail call ptr @__errno_location() #18
  store i32 9, ptr %227, align 4, !tbaa !91
  %228 = tail call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_undef)
  br label %323

229:                                              ; preds = %222
  %230 = tail call i32 @PerlIO_binmode(ptr noundef nonnull %198, i32 noundef 60, i32 noundef 0, ptr noundef null) #17
  %231 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %198, ptr noundef nonnull %1, i64 noundef 512) #17
  %232 = call i32 @Perl_PerlIO_close(ptr noundef nonnull %198) #17
  %233 = icmp slt i64 %231, 1
  br i1 %233, label %234, label %248

234:                                              ; preds = %229
  %235 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statcache, i64 0, i32 3), align 8, !tbaa !195
  %236 = and i32 %235, 61440
  %237 = icmp eq i32 %236, 16384
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %240 = getelementptr inbounds %struct.op, ptr %239, i64 0, i32 4
  %241 = load i16, ptr %240, align 8
  %242 = and i16 %241, 511
  %243 = icmp eq i16 %242, 291
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %323

246:                                              ; preds = %238, %234
  %247 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %323

248:                                              ; preds = %229, %173
  %249 = phi ptr [ %174, %173 ], [ %1, %229 ]
  %250 = phi i64 [ %176, %173 ], [ %231, %229 ]
  %251 = phi ptr [ %177, %173 ], [ %24, %229 ]
  %252 = call zeroext i1 @Perl_is_invariant_string(ptr noundef %249, i64 noundef %250) #17
  br i1 %252, label %278, label %253

253:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %254 = call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %249, i64 noundef %250, ptr noundef nonnull %2, ptr noundef null) #17
  br i1 %254, label %265, label %255

255:                                              ; preds = %253
  %256 = load ptr, ptr %2, align 8, !tbaa !66
  %257 = load i8, ptr %256, align 1, !tbaa !76
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !76
  %261 = zext i8 %260 to i64
  %262 = getelementptr inbounds i8, ptr %256, i64 %261
  %263 = getelementptr inbounds i8, ptr %249, i64 %250
  %264 = icmp ugt ptr %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %255, %253
  %266 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %267 = getelementptr inbounds %struct.op, ptr %266, i64 0, i32 4
  %268 = load i16, ptr %267, align 8
  %269 = and i16 %268, 511
  %270 = icmp eq i16 %269, 291
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %275

273:                                              ; preds = %265
  %274 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %275

275:                                              ; preds = %255, %273, %271
  %276 = phi i1 [ false, %271 ], [ false, %273 ], [ true, %255 ]
  %277 = phi ptr [ %272, %271 ], [ %274, %273 ], [ %251, %255 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br i1 %276, label %278, label %323

278:                                              ; preds = %275, %248
  %279 = icmp sgt i64 %250, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %278, %303
  %281 = phi i64 [ %305, %303 ], [ 0, %278 ]
  %282 = phi i32 [ %304, %303 ], [ 0, %278 ]
  %283 = phi ptr [ %306, %303 ], [ %249, %278 ]
  %284 = load i8, ptr %283, align 1, !tbaa !76
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = trunc i64 %250 to i32
  %288 = add i32 %282, %287
  br label %308

289:                                              ; preds = %280
  %290 = zext i8 %284 to i64
  %291 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !91
  %293 = and i32 %292, 16448
  %294 = icmp eq i32 %293, 16448
  br i1 %294, label %303, label %295

295:                                              ; preds = %289
  %296 = and i32 %292, 17408
  %297 = icmp ne i32 %296, 17408
  %298 = icmp eq i8 %284, 11
  %299 = or i1 %298, %297
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  switch i8 %284, label %301 [
    i8 8, label %303
    i8 27, label %303
  ]

301:                                              ; preds = %300
  %302 = add nsw i32 %282, 1
  br label %303

303:                                              ; preds = %300, %300, %295, %289, %301
  %304 = phi i32 [ %282, %289 ], [ %302, %301 ], [ %282, %295 ], [ %282, %300 ], [ %282, %300 ]
  %305 = add nuw nsw i64 %281, 1
  %306 = getelementptr inbounds i8, ptr %283, i64 1
  %307 = icmp eq i64 %305, %250
  br i1 %307, label %308, label %280, !llvm.loop !208

308:                                              ; preds = %303, %278, %286
  %309 = phi i32 [ %288, %286 ], [ 0, %278 ], [ %304, %303 ]
  %310 = mul nsw i32 %309, 3
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %250, %311
  %313 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %314 = getelementptr inbounds %struct.op, ptr %313, i64 0, i32 4
  %315 = load i16, ptr %314, align 8
  %316 = and i16 %315, 511
  %317 = icmp ne i16 %316, 291
  %318 = xor i1 %312, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %308
  %320 = call fastcc ptr @S_ft_return_false(ptr noundef nonnull @PL_sv_no)
  br label %323

321:                                              ; preds = %308
  %322 = call fastcc ptr @S_ft_return_true(ptr noundef nonnull @PL_sv_yes)
  br label %323

323:                                              ; preds = %275, %15, %173, %321, %319, %246, %244, %225, %218, %213, %178
  %324 = phi ptr [ %320, %319 ], [ %322, %321 ], [ %177, %173 ], [ %180, %178 ], [ %221, %218 ], [ %228, %225 ], [ %245, %244 ], [ %247, %246 ], [ %214, %213 ], [ %21, %15 ], [ %277, %275 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #17
  ret ptr %324
}

declare i32 @PerlIO_has_base(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_get_bufsiz(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_PerlIO_get_base(ptr noundef) local_unnamed_addr #2

declare ptr @PerlIO_open(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_is_invariant_string(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_chdir() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %74

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %1, i64 -1
  %14 = load ptr, ptr %1, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !77
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @Perl_gv_fetchsv(ptr noundef %14, i32 noundef 0, i32 noundef 15) #17
  %20 = icmp eq ptr %19, null
  br label %74

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @Perl_mg_get(ptr noundef %14) #17
  br label %28

28:                                               ; preds = %21, %26
  %29 = load i32, ptr %22, align 4, !tbaa !74
  %30 = and i32 %29, 49152
  %31 = icmp eq i32 %30, 32768
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = and i32 %29, 255
  %34 = add nsw i32 %33, -9
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %62, label %36

36:                                               ; preds = %32, %28
  %37 = and i32 %29, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = and i32 %43, 255
  %45 = icmp ult i32 %44, 11
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = and i32 %43, 2097152
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @Perl_mg_get(ptr noundef %41) #17
  br label %51

51:                                               ; preds = %46, %49
  %52 = load ptr, ptr %40, align 8, !tbaa !76
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = and i32 %54, 49152
  %56 = icmp eq i32 %55, 32768
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = and i32 %54, 255
  %59 = add nsw i32 %58, -9
  %60 = icmp ult i32 %59, 2
  %61 = select i1 %60, ptr %52, ptr null
  br label %62

62:                                               ; preds = %57, %32, %51, %39, %36
  %63 = phi ptr [ null, %51 ], [ null, %39 ], [ null, %36 ], [ %14, %32 ], [ %61, %57 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, ptr %22, align 4, !tbaa !74
  %67 = and i32 %66, 2098176
  %68 = icmp eq i32 %67, 1024
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  br label %74

72:                                               ; preds = %65
  %73 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %14, ptr noundef null, i32 noundef 32) #17
  br label %74

74:                                               ; preds = %18, %62, %72, %69, %0
  %75 = phi ptr [ null, %0 ], [ null, %18 ], [ null, %62 ], [ %71, %69 ], [ %73, %72 ]
  %76 = phi i1 [ true, %0 ], [ %20, %18 ], [ false, %62 ], [ true, %69 ], [ true, %72 ]
  %77 = phi ptr [ %1, %0 ], [ %13, %18 ], [ %13, %62 ], [ %13, %69 ], [ %13, %72 ]
  br i1 %76, label %78, label %142

78:                                               ; preds = %74
  %79 = icmp eq ptr %75, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = load i8, ptr %75, align 1, !tbaa !76
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %142

83:                                               ; preds = %80, %78
  %84 = load ptr, ptr @PL_envgv, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !76
  %87 = getelementptr inbounds %struct.gp, ptr %86, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !209
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = tail call ptr @Perl_gv_add_by_type(ptr noundef %84, i32 noundef 12) #17
  %92 = getelementptr inbounds %struct.gv, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct.gp, ptr %93, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !209
  br label %96

96:                                               ; preds = %83, %90
  %97 = phi ptr [ %95, %90 ], [ %88, %83 ]
  %98 = tail call ptr @Perl_hv_common(ptr noundef %97, ptr noundef null, ptr noundef nonnull @.str.62, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #17
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = tail call ptr @Perl_hv_common(ptr noundef %97, ptr noundef null, ptr noundef nonnull @.str.63, i64 noundef 6, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #17
  %102 = icmp eq ptr %101, null
  br i1 %102, label %122, label %103

103:                                              ; preds = %100, %96
  %104 = phi ptr [ %98, %96 ], [ %101, %100 ]
  %105 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %106 = getelementptr inbounds %struct.op, ptr %105, i64 0, i32 6
  %107 = load i8, ptr %106, align 1, !tbaa !82
  %108 = and i8 %107, 15
  %109 = icmp eq i8 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.64) #17
  br label %111

111:                                              ; preds = %110, %103
  %112 = load ptr, ptr %104, align 8, !tbaa !66
  %113 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !74
  %115 = and i32 %114, 2098176
  %116 = icmp eq i32 %115, 1024
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !76
  br label %137

120:                                              ; preds = %111
  %121 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %112, ptr noundef null, i32 noundef 34) #17
  br label %137

122:                                              ; preds = %100
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef 0) #17
  %123 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !74
  %125 = and i32 %124, 4194304
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %129

129:                                              ; preds = %122, %127
  %130 = getelementptr inbounds ptr, ptr %77, i64 1
  store ptr %7, ptr %130, align 8, !tbaa !66
  %131 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.65) #17
  br label %134

134:                                              ; preds = %129, %133
  store ptr %130, ptr @PL_stack_sp, align 8, !tbaa !66
  %135 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %136 = load ptr, ptr %135, align 8, !tbaa !92
  br label %137

137:                                              ; preds = %117, %120, %134
  %138 = phi ptr [ %75, %134 ], [ %119, %117 ], [ %121, %120 ]
  %139 = phi ptr [ %130, %134 ], [ %77, %117 ], [ %77, %120 ]
  %140 = phi ptr [ %136, %134 ], [ undef, %117 ], [ undef, %120 ]
  %141 = phi i1 [ false, %134 ], [ true, %117 ], [ true, %120 ]
  br i1 %141, label %142, label %165

142:                                              ; preds = %137, %80, %74
  %143 = phi ptr [ %75, %74 ], [ %75, %80 ], [ %138, %137 ]
  %144 = phi ptr [ %77, %74 ], [ %77, %80 ], [ %139, %137 ]
  %145 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.65) #17
  br label %148

148:                                              ; preds = %142, %147
  br i1 %76, label %151, label %149

149:                                              ; preds = %148
  %150 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.66) #17
  br label %165

151:                                              ; preds = %148
  %152 = tail call i32 @chdir(ptr noundef %143) #17
  %153 = icmp sgt i32 %152, -1
  %154 = zext i1 %153 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %154) #17
  %155 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !74
  %157 = and i32 %156, 4194304
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %151
  %160 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %161

161:                                              ; preds = %151, %159
  %162 = getelementptr inbounds ptr, ptr %144, i64 1
  store ptr %7, ptr %162, align 8, !tbaa !66
  store ptr %162, ptr @PL_stack_sp, align 8, !tbaa !66
  %163 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %164 = load ptr, ptr %163, align 8, !tbaa !92
  br label %165

165:                                              ; preds = %137, %161, %149
  %166 = phi ptr [ %150, %149 ], [ %164, %161 ], [ %140, %137 ]
  ret ptr %166
}

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_chown() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = load i32, ptr %3, align 4, !tbaa !91
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 511
  %17 = zext nneg i16 %16 to i32
  %18 = tail call i32 @Perl_apply(i32 noundef %17, ptr noundef %7, ptr noundef %1) #17
  %19 = sext i32 %18 to i64
  tail call void @Perl_sv_setiv(ptr noundef %13, i64 noundef %19) #17
  %20 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = and i32 %21, 4194304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %0
  %25 = tail call i32 @Perl_mg_set(ptr noundef %13) #17
  br label %26

26:                                               ; preds = %0, %24
  %27 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %28 = ptrtoint ptr %27 to i64
  %29 = ptrtoint ptr %7 to i64
  %30 = sub i64 %28, %29
  %31 = icmp slt i64 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call ptr @Perl_stack_grow(ptr noundef %7, ptr noundef %7, i64 noundef 1) #17
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi ptr [ %33, %32 ], [ %7, %26 ]
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  store ptr %13, ptr %36, align 8, !tbaa !66
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !66
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  ret ptr %38
}

declare i32 @Perl_apply(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_chroot() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.67) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_rename() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  %9 = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %9, ptr @PL_Sv, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  br label %19

17:                                               ; preds = %0
  %18 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %9, ptr noundef null, i32 noundef 34) #17
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  br label %31

29:                                               ; preds = %19
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef null, i32 noundef 34) #17
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ]
  %33 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.68) #17
  br label %36

36:                                               ; preds = %31, %35
  %37 = tail call i32 @stat64(ptr noundef %32, ptr noundef nonnull @PL_statbuf) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = tail call i32 @Perl_same_dirent(ptr noundef %20, ptr noundef %32) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = tail call i32 @geteuid() #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = tail call i32 @stat64(ptr noundef %20, ptr noundef nonnull @PL_statbuf) #17
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !195
  %50 = and i32 %49, 61440
  %51 = icmp eq i32 %50, 16384
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %45, %42
  %53 = tail call i32 @unlink(ptr noundef %20) #17
  br label %54

54:                                               ; preds = %52, %48
  %55 = tail call i32 @link(ptr noundef %32, ptr noundef %20) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call i32 @unlink(ptr noundef %32) #17
  br label %59

59:                                               ; preds = %39, %36, %54, %57
  %60 = phi i32 [ %37, %36 ], [ %55, %54 ], [ %58, %57 ], [ 1, %39 ]
  %61 = icmp sgt i32 %60, -1
  %62 = zext i1 %61 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %62) #17
  %63 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !74
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %69

69:                                               ; preds = %59, %67
  store ptr %7, ptr %8, align 8, !tbaa !66
  store ptr %8, ptr @PL_stack_sp, align 8, !tbaa !66
  %70 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  ret ptr %71
}

declare i32 @Perl_same_dirent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_link() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_readlink() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  store ptr @PL_sv_undef, ptr %10, align 8, !tbaa !66
  store ptr %10, ptr @PL_stack_sp, align 8, !tbaa !66
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_mkdir() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %9 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !82
  %11 = and i8 %10, 14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %0
  %14 = load ptr, ptr %2, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %15, label %28, label %17

17:                                               ; preds = %13
  store ptr %14, ptr @PL_Sv, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = and i32 %19, 2097408
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr %14, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !76
  br label %28

26:                                               ; preds = %17
  %27 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %14, i32 noundef 2) #17
  br label %28

28:                                               ; preds = %13, %0, %22, %26
  %29 = phi ptr [ %16, %22 ], [ %16, %26 ], [ %2, %0 ], [ %16, %13 ]
  %30 = phi i64 [ %25, %22 ], [ %27, %26 ], [ 511, %0 ], [ 511, %13 ]
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %29, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !74
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load ptr, ptr %32, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !87
  store i64 %40, ptr %1, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  br label %45

43:                                               ; preds = %28
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef %32, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %47 = load i64, ptr %1, align 8, !tbaa !105
  %48 = icmp ugt i64 %47, 1
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = add i64 %47, -1
  %51 = getelementptr inbounds i8, ptr %46, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !76
  %53 = icmp eq i8 %52, 47
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i64, ptr %1, align 8, !tbaa !105
  br label %56

56:                                               ; preds = %54, %60
  %57 = phi i64 [ %55, %54 ], [ %58, %60 ]
  %58 = add i64 %57, -1
  store i64 %58, ptr %1, align 8, !tbaa !105
  %59 = icmp ugt i64 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = add i64 %57, -2
  %62 = getelementptr inbounds i8, ptr %46, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !76
  %64 = icmp eq i8 %63, 47
  br i1 %64, label %56, label %65, !llvm.loop !210

65:                                               ; preds = %60, %56
  %66 = trunc i64 %58 to i32
  %67 = call ptr @Perl_savepvn(ptr noundef %46, i32 noundef %66) #17
  br label %68

68:                                               ; preds = %65, %49, %45
  %69 = phi ptr [ %67, %65 ], [ %46, %49 ], [ %46, %45 ]
  %70 = phi i1 [ true, %65 ], [ false, %49 ], [ false, %45 ]
  %71 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.69) #17
  br label %74

74:                                               ; preds = %73, %68
  %75 = call i32 @mkdir(ptr noundef %69, i32 noundef %31) #17
  %76 = icmp sgt i32 %75, -1
  %77 = zext i1 %76 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %77) #17
  %78 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !74
  %80 = and i32 %79, 4194304
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = call i32 @Perl_mg_set(ptr noundef %8) #17
  br label %84

84:                                               ; preds = %74, %82
  store ptr %8, ptr %29, align 8, !tbaa !66
  br i1 %70, label %85, label %86

85:                                               ; preds = %84
  call void @Perl_safesysfree(ptr noundef %69) #17
  br label %86

86:                                               ; preds = %85, %84
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !66
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %88 = load ptr, ptr %87, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %88
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_rmdir() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %9 = load ptr, ptr %2, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load ptr, ptr %9, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.xpv, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !87
  store i64 %17, ptr %1, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  br label %22

20:                                               ; preds = %0
  %21 = call ptr @Perl_sv_2pv_flags(ptr noundef %9, ptr noundef nonnull %1, i32 noundef 34) #17
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %19, %14 ], [ %21, %20 ]
  %24 = load i64, ptr %1, align 8, !tbaa !105
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = add i64 %24, -1
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !76
  %30 = icmp eq i8 %29, 47
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i64, ptr %1, align 8, !tbaa !105
  br label %33

33:                                               ; preds = %31, %37
  %34 = phi i64 [ %32, %31 ], [ %35, %37 ]
  %35 = add i64 %34, -1
  store i64 %35, ptr %1, align 8, !tbaa !105
  %36 = icmp ugt i64 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = add i64 %34, -2
  %39 = getelementptr inbounds i8, ptr %23, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !76
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %33, label %42, !llvm.loop !211

42:                                               ; preds = %37, %33
  %43 = trunc i64 %35 to i32
  %44 = call ptr @Perl_savepvn(ptr noundef %23, i32 noundef %43) #17
  br label %45

45:                                               ; preds = %42, %26, %22
  %46 = phi ptr [ %44, %42 ], [ %23, %26 ], [ %23, %22 ]
  %47 = phi i1 [ true, %42 ], [ false, %26 ], [ false, %22 ]
  %48 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.70) #17
  br label %51

51:                                               ; preds = %50, %45
  %52 = call i32 @rmdir(ptr noundef %46) #17
  %53 = icmp sgt i32 %52, -1
  %54 = zext i1 %53 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %54) #17
  %55 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = and i32 %56, 4194304
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = call i32 @Perl_mg_set(ptr noundef %8) #17
  br label %61

61:                                               ; preds = %51, %59
  store ptr %8, ptr %2, align 8, !tbaa !66
  br i1 %47, label %62, label %63

62:                                               ; preds = %61
  call void @Perl_safesysfree(ptr noundef %46) #17
  br label %63

63:                                               ; preds = %62, %61
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !66
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %65 = load ptr, ptr %64, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %65
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_open_dir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.71) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_readdir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.72) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_telldir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.73) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_seekdir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.74) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_rewinddir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.75) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_closedir() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_dir_func, ptr noundef nonnull @.str.76) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_fork() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %15

15:                                               ; preds = %0, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %0 ]
  %17 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #17
  %18 = tail call i32 @Perl_my_fork() #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  store i32 0, ptr @PL_sig_pending, align 4, !tbaa !91
  %21 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %21, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %24, i8 0, i64 60, i1 false), !tbaa !91
  br label %25

25:                                               ; preds = %23, %20, %15
  %26 = icmp slt i32 %18, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr @PL_sv_undef, ptr %28, align 8, !tbaa !66
  br label %39

29:                                               ; preds = %25
  %30 = zext nneg i32 %18 to i64
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %30) #17
  %31 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = and i32 %32, 4194304
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %37

37:                                               ; preds = %29, %35
  %38 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr %7, ptr %38, align 8, !tbaa !66
  br label %39

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %38, %37 ], [ %28, %27 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !66
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  ret ptr %42
}

declare i32 @Perl_my_fork() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_wait() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  %9 = load i32, ptr @PL_signals, align 4, !tbaa !91
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = call i32 @Perl_wait4pid(i32 noundef -1, ptr noundef nonnull %1, i32 noundef 0) #17
  %13 = icmp eq i32 %12, -1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %28

15:                                               ; preds = %0
  %16 = tail call ptr @__errno_location() #18
  br label %17

17:                                               ; preds = %15, %25
  %18 = load i32, ptr %16, align 4, !tbaa !91
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, ptr @PL_sig_pending, align 4, !tbaa !91
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @PL_signalhook, align 8, !tbaa !66
  call void %24() #17
  br label %25

25:                                               ; preds = %20, %23
  %26 = call i32 @Perl_wait4pid(i32 noundef -1, ptr noundef nonnull %1, i32 noundef 0) #17
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %17, label %28, !llvm.loop !212

28:                                               ; preds = %17, %25, %0
  %29 = phi i32 [ %12, %0 ], [ %26, %25 ], [ -1, %17 ]
  %30 = icmp sgt i32 %29, 0
  %31 = load i32, ptr %1, align 4
  %32 = select i1 %30, i32 %31, i32 -1
  store i32 %32, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = and i32 %32, 127
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %32, 65280
  %38 = select i1 %36, i32 %37, i32 0
  %39 = shl nuw nsw i32 %35, 24
  %40 = add nuw i32 %39, 16777216
  %41 = icmp sgt i32 %40, 33554431
  %42 = select i1 %41, i32 %35, i32 0
  %43 = or disjoint i32 %42, %38
  br label %44

44:                                               ; preds = %28, %34
  %45 = phi i32 [ %43, %34 ], [ -1, %28 ]
  store i32 %45, ptr @PL_statusvalue, align 4, !tbaa !91
  %46 = sext i32 %29 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %46) #17
  %47 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !74
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = call i32 @Perl_mg_set(ptr noundef %8) #17
  br label %53

53:                                               ; preds = %44, %51
  %54 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %2 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #17
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi ptr [ %60, %59 ], [ %2, %53 ]
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  store ptr %8, ptr %63, align 8, !tbaa !66
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !66
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %65 = load ptr, ptr %64, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret ptr %65
}

declare i32 @Perl_wait4pid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_waitpid() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  store ptr %10, ptr @PL_Sv, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = and i32 %12, 2097408
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load ptr, ptr %10, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.xpviv, ptr %16, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !76
  br label %21

19:                                               ; preds = %0
  %20 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %10, i32 noundef 2) #17
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %18, %15 ], [ %20, %19 ]
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %9, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !74
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load ptr, ptr %24, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.xpviv, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !76
  br label %35

33:                                               ; preds = %21
  %34 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %24, i32 noundef 2) #17
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %32, %29 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  %38 = load i32, ptr @PL_signals, align 4, !tbaa !91
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = call i32 @Perl_wait4pid(i32 noundef %37, ptr noundef nonnull %1, i32 noundef %23) #17
  %42 = icmp eq i32 %41, -1
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = tail call ptr @__errno_location() #18
  br label %46

46:                                               ; preds = %44, %54
  %47 = load i32, ptr %45, align 4, !tbaa !91
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, ptr @PL_sig_pending, align 4, !tbaa !91
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @PL_signalhook, align 8, !tbaa !66
  call void %53() #17
  br label %54

54:                                               ; preds = %49, %52
  %55 = call i32 @Perl_wait4pid(i32 noundef %37, ptr noundef nonnull %1, i32 noundef %23) #17
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %46, label %57, !llvm.loop !213

57:                                               ; preds = %46, %54, %35
  %58 = phi i32 [ %41, %35 ], [ %55, %54 ], [ -1, %46 ]
  %59 = icmp sgt i32 %58, 0
  %60 = load i32, ptr %1, align 4
  %61 = select i1 %59, i32 %60, i32 -1
  store i32 %61, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = and i32 %61, 127
  %65 = icmp eq i32 %64, 0
  %66 = and i32 %61, 65280
  %67 = select i1 %65, i32 %66, i32 0
  %68 = shl nuw nsw i32 %64, 24
  %69 = add nuw i32 %68, 16777216
  %70 = icmp sgt i32 %69, 33554431
  %71 = select i1 %70, i32 %64, i32 0
  %72 = or disjoint i32 %71, %67
  br label %73

73:                                               ; preds = %57, %63
  %74 = phi i32 [ %72, %63 ], [ -1, %57 ]
  store i32 %74, ptr @PL_statusvalue, align 4, !tbaa !91
  %75 = sext i32 %58 to i64
  call void @Perl_sv_setiv(ptr noundef %8, i64 noundef %75) #17
  %76 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !74
  %78 = and i32 %77, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = call i32 @Perl_mg_set(ptr noundef %8) #17
  br label %82

82:                                               ; preds = %73, %80
  store ptr %8, ptr %9, align 8, !tbaa !66
  store ptr %9, ptr @PL_stack_sp, align 8, !tbaa !66
  %83 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret ptr %84
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_system() local_unnamed_addr #0 !prof !65 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %5 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %8 = load i32, ptr %6, align 4, !tbaa !91
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.op, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %0
  tail call void @Perl_taint_env() #17
  br label %20

20:                                               ; preds = %32, %19
  %21 = phi ptr [ %10, %19 ], [ %22, %32 ]
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = icmp ugt ptr %22, %4
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = and i32 %27, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %25, ptr noundef null, i32 noundef 34) #17
  br label %32

32:                                               ; preds = %24, %30
  %33 = load i8, ptr @PL_tainted, align 1, !tbaa !78, !range !80, !noundef !81
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %20, label %35, !llvm.loop !214

35:                                               ; preds = %32, %20
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %37 = getelementptr inbounds ptr, ptr %36, i64 %9
  %38 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.77) #17
  br label %41

41:                                               ; preds = %40, %35, %0
  %42 = phi ptr [ %37, %40 ], [ %37, %35 ], [ %10, %0 ]
  %43 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %44 = call i32 @pipe(ptr noundef nonnull %1) #17
  %45 = icmp sgt i32 %44, -1
  %46 = zext i1 %45 to i32
  %47 = call i32 @Perl_my_fork() #17
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %87

49:                                               ; preds = %41
  %50 = tail call ptr @__errno_location() #18
  br label %51

51:                                               ; preds = %49, %83
  %52 = load i32, ptr %50, align 4, !tbaa !91
  %53 = icmp eq i32 %52, 11
  br i1 %53, label %83, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %56 = getelementptr inbounds ptr, ptr %55, i64 %9
  call void @Perl_sv_setiv(ptr noundef %16, i64 noundef -1) #17
  %57 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !74
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = call i32 @Perl_mg_set(ptr noundef %16) #17
  br label %63

63:                                               ; preds = %54, %61
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %56 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call ptr @Perl_stack_grow(ptr noundef %56, ptr noundef %56, i64 noundef 1) #17
  br label %71

71:                                               ; preds = %63, %69
  %72 = phi ptr [ %70, %69 ], [ %56, %63 ]
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %16, ptr %73, align 8, !tbaa !66
  br i1 %45, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, ptr %1, align 4, !tbaa !91
  %76 = call i32 @close(i32 noundef %75) #17
  %77 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !91
  %79 = call i32 @close(i32 noundef %78) #17
  br label %80

80:                                               ; preds = %74, %71
  store ptr %73, ptr @PL_stack_sp, align 8, !tbaa !66
  %81 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %82 = load ptr, ptr %81, align 8, !tbaa !92
  br label %221

83:                                               ; preds = %51
  %84 = call i32 @sleep(i32 noundef 5) #17
  %85 = call i32 @Perl_my_fork() #17
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %51, label %87, !llvm.loop !215

87:                                               ; preds = %83, %41
  %88 = phi i32 [ %47, %41 ], [ %85, %83 ]
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %170

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  br i1 %45, label %91, label %95

91:                                               ; preds = %90
  %92 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !91
  %94 = call i32 @close(i32 noundef %93) #17
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %99
  %97 = call i32 @Perl_wait4pid(i32 noundef %88, ptr noundef nonnull %2, i32 noundef 0) #17
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = tail call ptr @__errno_location() #18
  %101 = load i32, ptr %100, align 4, !tbaa !91
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %96, label %103, !llvm.loop !216

103:                                              ; preds = %99, %96
  %104 = load i32, ptr %2, align 4
  %105 = select i1 %98, i32 -1, i32 %104
  store i32 %105, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
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

117:                                              ; preds = %103, %107
  %118 = phi i32 [ %116, %107 ], [ -1, %103 ]
  store i32 %118, ptr @PL_statusvalue, align 4, !tbaa !91
  call void @Perl_do_execfree() #17
  %119 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %120 = getelementptr inbounds ptr, ptr %119, i64 %9
  br i1 %45, label %121, label %146

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  br label %126

122:                                              ; preds = %126
  %123 = trunc i64 %132 to i32
  %124 = add i32 %127, %123
  %125 = icmp ult i32 %124, 4
  br i1 %125, label %126, label %134, !llvm.loop !217

126:                                              ; preds = %121, %122
  %127 = phi i32 [ 0, %121 ], [ %124, %122 ]
  %128 = zext nneg i32 %127 to i64
  %129 = load i32, ptr %1, align 4, !tbaa !91
  %130 = getelementptr inbounds i8, ptr %3, i64 %128
  %131 = sub nuw nsw i64 4, %128
  %132 = call i64 @read(i32 noundef %129, ptr noundef nonnull %130, i64 noundef %131) #17
  %133 = icmp slt i64 %132, 1
  br i1 %133, label %134, label %122

134:                                              ; preds = %126, %122
  %135 = phi i32 [ %127, %126 ], [ %124, %122 ]
  %136 = load i32, ptr %1, align 4, !tbaa !91
  %137 = call i32 @close(i32 noundef %136) #17
  switch i32 %135, label %138 [
    i32 0, label %143
    i32 4, label %140
  ]

138:                                              ; preds = %134
  %139 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.78, i32 noundef %135) #17
  br label %143

140:                                              ; preds = %134
  %141 = load i32, ptr %3, align 4, !tbaa !91
  %142 = tail call ptr @__errno_location() #18
  store i32 %141, ptr %142, align 4, !tbaa !91
  store i32 -1, ptr @PL_statusvalue_posix, align 4, !tbaa !91
  store i32 -1, ptr @PL_statusvalue, align 4, !tbaa !91
  br label %143

143:                                              ; preds = %140, %134, %138
  %144 = phi i1 [ false, %138 ], [ true, %134 ], [ true, %140 ]
  %145 = phi ptr [ %139, %138 ], [ undef, %134 ], [ undef, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br i1 %144, label %146, label %168

146:                                              ; preds = %117, %143
  %147 = load i32, ptr @PL_statusvalue, align 4, !tbaa !91
  %148 = sext i32 %147 to i64
  call void @Perl_sv_setiv(ptr noundef %16, i64 noundef %148) #17
  %149 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !74
  %151 = and i32 %150, 4194304
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %146
  %154 = call i32 @Perl_mg_set(ptr noundef %16) #17
  br label %155

155:                                              ; preds = %146, %153
  %156 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %157 = ptrtoint ptr %156 to i64
  %158 = ptrtoint ptr %120 to i64
  %159 = sub i64 %157, %158
  %160 = icmp slt i64 %159, 8
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = call ptr @Perl_stack_grow(ptr noundef %120, ptr noundef %120, i64 noundef 1) #17
  br label %163

163:                                              ; preds = %155, %161
  %164 = phi ptr [ %162, %161 ], [ %120, %155 ]
  %165 = getelementptr inbounds ptr, ptr %164, i64 1
  store ptr %16, ptr %165, align 8, !tbaa !66
  store ptr %165, ptr @PL_stack_sp, align 8, !tbaa !66
  %166 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %167 = load ptr, ptr %166, align 8, !tbaa !92
  br label %168

168:                                              ; preds = %143, %163
  %169 = phi ptr [ %167, %163 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %221

170:                                              ; preds = %87
  br i1 %45, label %171, label %182

171:                                              ; preds = %170
  %172 = load i32, ptr %1, align 4, !tbaa !91
  %173 = call i32 @close(i32 noundef %172) #17
  %174 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %175 = load i32, ptr %174, align 4, !tbaa !91
  %176 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %175, i32 noundef 2, i32 noundef 1) #17
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr @PL_sv_undef, ptr %179, align 8, !tbaa !66
  store ptr %179, ptr @PL_stack_sp, align 8, !tbaa !66
  %180 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %181 = load ptr, ptr %180, align 8, !tbaa !92
  br label %221

182:                                              ; preds = %171, %170
  %183 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %184 = getelementptr inbounds %struct.op, ptr %183, i64 0, i32 5
  %185 = load i8, ptr %184, align 2, !tbaa !77
  %186 = and i8 %185, 64
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds ptr, ptr %42, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !66
  %191 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %192 = load i32, ptr %191, align 4, !tbaa !91
  %193 = call zeroext i1 @Perl_do_aexec5(ptr noundef %190, ptr noundef nonnull %189, ptr noundef %4, i32 noundef %192, i32 noundef %46) #17
  br label %220

194:                                              ; preds = %182
  %195 = ptrtoint ptr %4 to i64
  %196 = ptrtoint ptr %42 to i64
  %197 = sub i64 %195, %196
  %198 = icmp eq i64 %197, 8
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %201 = load i32, ptr %200, align 4, !tbaa !91
  %202 = call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef %42, ptr noundef %4, i32 noundef %201, i32 noundef %46) #17
  br label %220

203:                                              ; preds = %194
  %204 = load ptr, ptr %4, align 8, !tbaa !66
  %205 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %204, i32 noundef 1538) #17
  store ptr %205, ptr @PL_Sv, align 8, !tbaa !66
  %206 = getelementptr inbounds %struct.sv, ptr %205, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !74
  %208 = and i32 %207, 2098176
  %209 = icmp eq i32 %208, 1024
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.sv, ptr %205, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !76
  br label %215

213:                                              ; preds = %203
  %214 = call ptr @Perl_sv_2pv_flags(ptr noundef %205, ptr noundef null, i32 noundef 2) #17
  br label %215

215:                                              ; preds = %213, %210
  %216 = phi ptr [ %212, %210 ], [ %214, %213 ]
  %217 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %218 = load i32, ptr %217, align 4, !tbaa !91
  %219 = call zeroext i1 @Perl_do_exec3(ptr noundef %216, i32 noundef %218, i32 noundef %46) #17
  br label %220

220:                                              ; preds = %199, %215, %188
  call void @_exit(i32 noundef -1) #20
  unreachable

221:                                              ; preds = %178, %168, %80
  %222 = phi ptr [ %82, %80 ], [ %169, %168 ], [ %181, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %222
}

declare void @Perl_taint_env() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

declare void @Perl_do_execfree() local_unnamed_addr #2

declare zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_do_exec3(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_exec() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !66
  %5 = load i32, ptr %3, align 4, !tbaa !91
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %0
  tail call void @Perl_taint_env() #17
  br label %17

17:                                               ; preds = %29, %16
  %18 = phi ptr [ %7, %16 ], [ %19, %29 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = icmp ugt ptr %19, %1
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !74
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %22, ptr noundef null, i32 noundef 34) #17
  br label %29

29:                                               ; preds = %21, %27
  %30 = load i8, ptr @PL_tainted, align 1, !tbaa !78, !range !80, !noundef !81
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %17, label %32, !llvm.loop !218

32:                                               ; preds = %29, %17
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %34 = getelementptr inbounds ptr, ptr %33, i64 %6
  %35 = load i8, ptr @PL_tainting, align 1, !tbaa !78, !range !80, !noundef !81
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.79) #17
  br label %38

38:                                               ; preds = %37, %32, %0
  %39 = phi ptr [ %34, %37 ], [ %34, %32 ], [ %7, %0 ]
  %40 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #17
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 5
  %43 = load i8, ptr %42, align 2, !tbaa !77
  %44 = and i8 %43, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds ptr, ptr %39, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !66
  %49 = tail call zeroext i1 @Perl_do_aexec5(ptr noundef %48, ptr noundef nonnull %47, ptr noundef %1, i32 noundef 0, i32 noundef 0) #17
  br label %72

50:                                               ; preds = %38
  %51 = ptrtoint ptr %1 to i64
  %52 = ptrtoint ptr %39 to i64
  %53 = sub i64 %51, %52
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef %39, ptr noundef %1, i32 noundef 0, i32 noundef 0) #17
  br label %72

57:                                               ; preds = %50
  %58 = load ptr, ptr %1, align 8, !tbaa !66
  %59 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %58, i32 noundef 1538) #17
  store ptr %59, ptr @PL_Sv, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !74
  %62 = and i32 %61, 2098176
  %63 = icmp eq i32 %62, 1024
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  br label %69

67:                                               ; preds = %57
  %68 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %59, ptr noundef null, i32 noundef 2) #17
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %66, %64 ], [ %68, %67 ]
  %71 = tail call zeroext i1 @Perl_do_exec3(ptr noundef %70, i32 noundef 0, i32 noundef 0) #17
  br label %72

72:                                               ; preds = %55, %69, %46
  %73 = phi i1 [ %49, %46 ], [ %56, %55 ], [ %71, %69 ]
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !66
  %75 = getelementptr inbounds ptr, ptr %74, i64 %6
  %76 = zext i1 %73 to i64
  tail call void @Perl_sv_setiv(ptr noundef %13, i64 noundef %76) #17
  %77 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !74
  %79 = and i32 %78, 4194304
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = tail call i32 @Perl_mg_set(ptr noundef %13) #17
  br label %83

83:                                               ; preds = %72, %81
  %84 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %85 = ptrtoint ptr %84 to i64
  %86 = ptrtoint ptr %75 to i64
  %87 = sub i64 %85, %86
  %88 = icmp slt i64 %87, 8
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = tail call ptr @Perl_stack_grow(ptr noundef %75, ptr noundef %75, i64 noundef 1) #17
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi ptr [ %90, %89 ], [ %75, %83 ]
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  store ptr %13, ptr %93, align 8, !tbaa !66
  store ptr %93, ptr @PL_stack_sp, align 8, !tbaa !66
  %94 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %95 = load ptr, ptr %94, align 8, !tbaa !92
  ret ptr %95
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_getppid() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.80) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_getpgrp() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.81) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_setpgrp() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.82) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_getpriority() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.83) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_setpriority() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.84) #17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_time() local_unnamed_addr #6 !prof !219 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call i64 @time(ptr noundef null) #17
  tail call void @Perl_sv_setiv(ptr noundef %7, i64 noundef %8) #17
  %9 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !220

13:                                               ; preds = %0
  %14 = tail call i32 @Perl_mg_set(ptr noundef %7) #17
  br label %15

15:                                               ; preds = %0, %13
  %16 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, 8
  br i1 %20, label %21, label %23, !prof !221

21:                                               ; preds = %15
  %22 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ %1, %15 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %7, ptr %25, align 8, !tbaa !66
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !66
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  ret ptr %27
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_tms() local_unnamed_addr #0 !prof !136 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.85) #17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_gmtime() local_unnamed_addr #6 !prof !222 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TM64, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TM64, align 4
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  %10 = icmp eq i16 %9, 324
  %11 = select i1 %10, ptr @.str.86, ptr @.str.87, !prof !223
  %12 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !82
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16, !prof !224

16:                                               ; preds = %0
  %17 = load ptr, ptr %5, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds ptr, ptr %5, i64 -1
  br i1 %18, label %20, label %23, !prof !225

20:                                               ; preds = %16, %0
  %21 = phi ptr [ %5, %0 ], [ %19, %16 ]
  %22 = call i64 @time(ptr noundef nonnull %3) #17
  br label %43

23:                                               ; preds = %16
  store ptr %17, ptr @PL_Sv, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = and i32 %25, 2097664
  %27 = icmp eq i32 %26, 512
  br i1 %27, label %28, label %32, !prof !225

28:                                               ; preds = %23
  %29 = load ptr, ptr %17, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.xpvnv, ptr %29, i64 0, i32 5
  %31 = load double, ptr %30, align 8, !tbaa !76
  br label %34

32:                                               ; preds = %23
  %33 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %17, i32 noundef 2) #17
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi double [ %31, %28 ], [ %33, %32 ]
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fcmp uno double %36, 0.000000e+00
  %38 = fptosi double %36 to i64
  store i64 %38, ptr %3, align 8, !tbaa !105
  %39 = sitofp i64 %38 to double
  %40 = fcmp une double %36, %39
  %41 = select i1 %37, i1 true, i1 %40, !prof !225
  br i1 %41, label %42, label %43, !prof !225

42:                                               ; preds = %34
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.107, ptr noundef nonnull %11, double noundef %36) #17
  br i1 %37, label %292, label %43

43:                                               ; preds = %42, %34, %20
  %44 = phi ptr [ %21, %20 ], [ %19, %34 ], [ %19, %42 ]
  %45 = load i64, ptr %3, align 8, !tbaa !105
  %46 = sitofp i64 %45 to double
  %47 = fcmp olt double %46, 0xC36E18574F2E3538
  br i1 %47, label %48, label %49, !prof !226

48:                                               ; preds = %43
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.108, ptr noundef nonnull %11, i64 noundef %45) #17
  br label %292

49:                                               ; preds = %43
  %50 = fcmp ogt double %46, 0x436E1853B0D11638
  br i1 %50, label %51, label %52, !prof !226

51:                                               ; preds = %49
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.107, ptr noundef nonnull %11, i64 noundef %45) #17
  br label %292

52:                                               ; preds = %49
  %53 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.op, ptr %53, i64 0, i32 4
  %55 = load i16, ptr %54, align 8
  %56 = and i16 %55, 511
  %57 = icmp eq i16 %56, 324
  br i1 %57, label %58, label %290, !prof !223

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #17
  %59 = icmp eq i64 %45, 0
  br i1 %59, label %60, label %99, !prof !227

60:                                               ; preds = %58
  store i64 %45, ptr %1, align 8, !tbaa !105
  %61 = call ptr @localtime(ptr noundef nonnull %1) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %61, align 8
  %65 = getelementptr inbounds i8, ptr %61, i64 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds i8, ptr %61, i64 8
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds i8, ptr %61, i64 12
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds i8, ptr %61, i64 16
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds i8, ptr %61, i64 20
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds i8, ptr %61, i64 24
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds i8, ptr %61, i64 28
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds i8, ptr %61, i64 32
  %80 = load i32, ptr %79, align 8
  br label %81

81:                                               ; preds = %60, %63
  %82 = phi i32 [ %64, %63 ], [ 0, %60 ]
  %83 = phi i32 [ %66, %63 ], [ 0, %60 ]
  %84 = phi i32 [ %68, %63 ], [ 0, %60 ]
  %85 = phi i32 [ %70, %63 ], [ 0, %60 ]
  %86 = phi i32 [ %72, %63 ], [ 0, %60 ]
  %87 = phi i32 [ %74, %63 ], [ 0, %60 ]
  %88 = phi i32 [ %76, %63 ], [ 0, %60 ]
  %89 = phi i32 [ %78, %63 ], [ 0, %60 ]
  %90 = phi i32 [ %80, %63 ], [ 0, %60 ]
  store i32 %82, ptr %4, align 4, !tbaa !228
  %91 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 1
  store i32 %83, ptr %91, align 4, !tbaa !230
  %92 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 2
  store i32 %84, ptr %92, align 4, !tbaa !231
  %93 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 3
  store i32 %85, ptr %93, align 4, !tbaa !232
  %94 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 4
  store i32 %86, ptr %94, align 4, !tbaa !233
  %95 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 5
  store i32 %87, ptr %95, align 4, !tbaa !234
  %96 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 6
  store i32 %88, ptr %96, align 4, !tbaa !235
  %97 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 7
  store i32 %89, ptr %97, align 4, !tbaa !236
  %98 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 8
  store i32 %90, ptr %98, align 4, !tbaa !237
  br label %295

99:                                               ; preds = %58
  %100 = call fastcc ptr @S_gmtime64_r(ptr noundef nonnull %3, ptr noundef nonnull %2)
  %101 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, -138
  %104 = icmp ult i32 %103, -68
  br i1 %104, label %105, label %143, !prof !227

105:                                              ; preds = %99
  %106 = add nsw i32 %102, 1900
  %107 = srem i32 %106, 100
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = srem i32 %106, 400
  %111 = icmp eq i32 %110, 0
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i1 [ true, %105 ], [ %111, %109 ]
  %114 = add nsw i32 %102, 1899
  %115 = srem i32 %114, 100
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = srem i32 %114, 400
  %119 = icmp eq i32 %118, 0
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i1 [ true, %112 ], [ %119, %117 ]
  %122 = icmp sgt i32 %102, 100
  %123 = select i1 %122, i32 -2001, i32 -2000
  %124 = add nsw i32 %123, %106
  %125 = sdiv i32 %124, -400
  %126 = sdiv i32 %124, 100
  %127 = add nsw i32 %125, %126
  %128 = shl nsw i32 %127, 4
  %129 = add nsw i32 %128, %106
  %130 = add nsw i32 %129, 11
  %131 = select i1 %113, i32 %129, i32 %130
  %132 = add nsw i32 %131, 17
  %133 = select i1 %121, i32 %131, i32 %132
  %134 = srem i32 %133, 28
  %135 = icmp slt i32 %134, 0
  %136 = add nsw i32 %134, 28
  %137 = select i1 %135, i32 %136, i32 %134
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds [28 x i16], ptr @safe_years, i64 0, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !190
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %141, -1900
  store i32 %142, ptr %101, align 4, !tbaa !234
  br label %143

143:                                              ; preds = %120, %99
  %144 = load i32, ptr %101, align 4, !tbaa !234
  %145 = icmp sgt i32 %144, 70
  br i1 %145, label %146, label %167, !prof !238

146:                                              ; preds = %143, %158
  %147 = phi i32 [ %165, %158 ], [ 70, %143 ]
  %148 = phi i32 [ %164, %158 ], [ 0, %143 ]
  %149 = add nuw nsw i32 %147, 1900
  %150 = urem i32 %149, 400
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152, !prof !239

152:                                              ; preds = %146
  %153 = and i32 %147, 3
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158, !prof !240

155:                                              ; preds = %152
  %156 = urem i32 %149, 100
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %155, %152, %146
  %159 = phi i1 [ true, %146 ], [ false, %152 ], [ %157, %155 ]
  %160 = zext i1 %159 to i64
  %161 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !190
  %163 = sext i16 %162 to i32
  %164 = add nsw i32 %148, %163
  %165 = add nuw nsw i32 %147, 1
  %166 = icmp eq i32 %165, %144
  br i1 %166, label %190, label %146, !prof !239, !llvm.loop !241

167:                                              ; preds = %143
  %168 = icmp eq i32 %144, 70
  br i1 %168, label %190, label %169

169:                                              ; preds = %167, %181
  %170 = phi i32 [ %187, %181 ], [ 0, %167 ]
  %171 = phi i32 [ %188, %181 ], [ 69, %167 ]
  %172 = add nsw i32 %171, 1900
  %173 = srem i32 %172, 400
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = and i32 %171, 3
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = srem i32 %172, 100
  %180 = icmp ne i32 %179, 0
  br label %181

181:                                              ; preds = %169, %178, %175
  %182 = phi i1 [ false, %175 ], [ %180, %178 ], [ true, %169 ]
  %183 = zext i1 %182 to i64
  %184 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !190
  %186 = sext i16 %185 to i32
  %187 = sub nsw i32 %170, %186
  %188 = add nsw i32 %171, -1
  %189 = icmp sgt i32 %171, %144
  br i1 %189, label %169, label %190, !llvm.loop !242

190:                                              ; preds = %181, %158, %167
  %191 = phi i32 [ 0, %167 ], [ %164, %158 ], [ %187, %181 ]
  %192 = add nsw i32 %144, 1900
  %193 = srem i32 %192, 400
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %202, label %195, !prof !227

195:                                              ; preds = %190
  %196 = and i32 %144, 3
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202, !prof !227

198:                                              ; preds = %195
  %199 = srem i32 %192, 100
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  br label %202

202:                                              ; preds = %198, %195, %190
  %203 = phi i64 [ 1, %190 ], [ 0, %195 ], [ %201, %198 ]
  %204 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 4
  %205 = load i32, ptr %204, align 4, !tbaa !233
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x [12 x i16]], ptr @julian_days_by_month, i64 0, i64 %203, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !190
  %209 = sext i16 %208 to i32
  %210 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !232
  %212 = add i32 %191, -1
  %213 = add i32 %212, %209
  %214 = add i32 %213, %211
  %215 = sext i32 %214 to i64
  %216 = mul nsw i64 %215, 86400
  %217 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !231
  %219 = mul i32 %218, 3600
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %216, %220
  %222 = getelementptr inbounds %struct.TM64, ptr %2, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !230
  %224 = mul nsw i32 %223, 60
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %221, %225
  %227 = load i32, ptr %2, align 4, !tbaa !228
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %226, %228
  store i64 %229, ptr %1, align 8, !tbaa !105
  %230 = call ptr @localtime(ptr noundef nonnull %1) #17
  %231 = icmp eq ptr %230, null
  br i1 %231, label %250, label %232, !prof !227

232:                                              ; preds = %202
  %233 = load i32, ptr %230, align 8
  %234 = getelementptr inbounds i8, ptr %230, i64 4
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds i8, ptr %230, i64 8
  %237 = load i32, ptr %236, align 8
  %238 = getelementptr inbounds i8, ptr %230, i64 12
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds i8, ptr %230, i64 16
  %241 = load i32, ptr %240, align 8
  %242 = getelementptr inbounds i8, ptr %230, i64 20
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds i8, ptr %230, i64 24
  %245 = load i32, ptr %244, align 8
  %246 = getelementptr inbounds i8, ptr %230, i64 28
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds i8, ptr %230, i64 32
  %249 = load i32, ptr %248, align 8
  br label %250

250:                                              ; preds = %202, %232
  %251 = phi i32 [ %233, %232 ], [ 0, %202 ]
  %252 = phi i32 [ %235, %232 ], [ 0, %202 ]
  %253 = phi i32 [ %237, %232 ], [ 0, %202 ]
  %254 = phi i32 [ %239, %232 ], [ 0, %202 ]
  %255 = phi i32 [ %241, %232 ], [ 0, %202 ]
  %256 = phi i32 [ %243, %232 ], [ 0, %202 ]
  %257 = phi i32 [ %245, %232 ], [ 0, %202 ]
  %258 = phi i32 [ %247, %232 ], [ 0, %202 ]
  %259 = phi i32 [ %249, %232 ], [ 0, %202 ]
  br i1 %231, label %289, label %260, !prof !227

260:                                              ; preds = %250
  store i32 %251, ptr %4, align 4, !tbaa !228
  %261 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 1
  store i32 %252, ptr %261, align 4, !tbaa !230
  %262 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 2
  store i32 %253, ptr %262, align 4, !tbaa !231
  %263 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 3
  store i32 %254, ptr %263, align 4, !tbaa !232
  %264 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 4
  store i32 %255, ptr %264, align 4, !tbaa !233
  %265 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 5
  store i32 %256, ptr %265, align 4, !tbaa !234
  %266 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 6
  store i32 %257, ptr %266, align 4, !tbaa !235
  %267 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 7
  store i32 %258, ptr %267, align 4, !tbaa !236
  %268 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 8
  store i32 %259, ptr %268, align 4, !tbaa !237
  store i32 %102, ptr %265, align 4, !tbaa !234
  %269 = load i32, ptr %204, align 4, !tbaa !233
  %270 = sub nsw i32 %255, %269
  switch i32 %270, label %275 [
    i32 11, label %272
    i32 -11, label %271
  ], !prof !243

271:                                              ; preds = %260
  br label %272

272:                                              ; preds = %260, %271
  %273 = phi i32 [ 1, %271 ], [ -1, %260 ]
  %274 = add nsw i32 %102, %273
  store i32 %274, ptr %265, align 4, !tbaa !234
  br label %275

275:                                              ; preds = %272, %260
  %276 = load i32, ptr %265, align 4, !tbaa !234
  %277 = add nsw i32 %276, 1900
  %278 = srem i32 %277, 400
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %295, label %280, !prof !227

280:                                              ; preds = %275
  %281 = and i32 %276, 3
  %282 = icmp ne i32 %281, 0
  %283 = srem i32 %277, 100
  %284 = icmp eq i32 %283, 0
  %285 = or i1 %282, %284
  %286 = icmp eq i32 %258, 365
  %287 = select i1 %285, i1 %286, i1 false, !prof !238
  br i1 %287, label %288, label %295, !prof !227

288:                                              ; preds = %280
  store i32 364, ptr %267, align 4, !tbaa !236
  br label %295

289:                                              ; preds = %250
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %292

290:                                              ; preds = %52
  %291 = call fastcc ptr @S_gmtime64_r(ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %296

292:                                              ; preds = %48, %51, %289, %42
  %293 = phi ptr [ %44, %289 ], [ %19, %42 ], [ %44, %51 ], [ %44, %48 ]
  %294 = load i64, ptr %3, align 8, !tbaa !105
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.109, ptr noundef nonnull %11, i64 noundef %294) #17
  br label %296

295:                                              ; preds = %280, %288, %275, %81
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %296

296:                                              ; preds = %295, %290, %292
  %297 = phi i1 [ true, %292 ], [ false, %290 ], [ false, %295 ]
  %298 = phi ptr [ %293, %292 ], [ %44, %290 ], [ %44, %295 ]
  %299 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %300 = getelementptr inbounds %struct.op, ptr %299, i64 0, i32 5
  %301 = load i8, ptr %300, align 2, !tbaa !77
  %302 = and i8 %301, 3
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %306, label %304, !prof !226

304:                                              ; preds = %296
  %305 = zext nneg i8 %302 to i32
  br label %308

306:                                              ; preds = %296
  %307 = call i32 @Perl_block_gimme() #17
  br label %308

308:                                              ; preds = %306, %304
  %309 = phi i32 [ %305, %304 ], [ %307, %306 ]
  %310 = icmp eq i32 %309, 3
  br i1 %310, label %352, label %311, !prof !244

311:                                              ; preds = %308
  %312 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %313 = ptrtoint ptr %312 to i64
  %314 = ptrtoint ptr %298 to i64
  %315 = sub i64 %313, %314
  %316 = icmp slt i64 %315, 8
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = call ptr @Perl_stack_grow(ptr noundef %298, ptr noundef %298, i64 noundef 1) #17
  br label %319

319:                                              ; preds = %311, %317
  %320 = phi ptr [ %318, %317 ], [ %298, %311 ]
  br i1 %297, label %321, label %323

321:                                              ; preds = %319
  %322 = getelementptr inbounds ptr, ptr %320, i64 1
  store ptr @PL_sv_undef, ptr %322, align 8, !tbaa !66
  br label %414

323:                                              ; preds = %319
  %324 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %325 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %326 = getelementptr inbounds %struct.op, ptr %325, i64 0, i32 3
  %327 = load i64, ptr %326, align 8, !tbaa !70
  %328 = getelementptr inbounds ptr, ptr %324, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !66
  %330 = getelementptr inbounds ptr, ptr %320, i64 1
  store ptr %329, ptr %330, align 8, !tbaa !66
  %331 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 6
  %332 = load i32, ptr %331, align 4, !tbaa !235
  %333 = sext i32 %332 to i64
  %334 = shl i64 %333, 2
  %335 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_pp_gmtime, i64 %334)
  %336 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 4
  %337 = load i32, ptr %336, align 4, !tbaa !233
  %338 = sext i32 %337 to i64
  %339 = shl i64 %338, 2
  %340 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_pp_gmtime.115, i64 %339)
  %341 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 3
  %342 = load i32, ptr %341, align 4, !tbaa !232
  %343 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !231
  %345 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !230
  %347 = load i32, ptr %4, align 4, !tbaa !228
  %348 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 5
  %349 = load i32, ptr %348, align 4, !tbaa !234
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, 1900
  call void (ptr, ptr, ...) @Perl_sv_setpvf_mg(ptr noundef %329, ptr noundef nonnull @.str.110, ptr noundef %335, ptr noundef %340, i32 noundef %342, i32 noundef %344, i32 noundef %346, i32 noundef %347, i64 noundef %351) #17
  br label %414

352:                                              ; preds = %308
  br i1 %297, label %414, label %353, !prof !226

353:                                              ; preds = %352
  %354 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %355 = ptrtoint ptr %354 to i64
  %356 = ptrtoint ptr %298 to i64
  %357 = sub i64 %355, %356
  %358 = icmp slt i64 %357, 72
  br i1 %358, label %359, label %361, !prof !226

359:                                              ; preds = %353
  %360 = call ptr @Perl_stack_grow(ptr noundef %298, ptr noundef %298, i64 noundef 9) #17
  br label %361

361:                                              ; preds = %359, %353
  %362 = phi ptr [ %360, %359 ], [ %298, %353 ]
  %363 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !105
  %364 = add nsw i64 %363, 9
  %365 = load i64, ptr @PL_tmps_max, align 8, !tbaa !105
  %366 = icmp slt i64 %364, %365
  br i1 %366, label %369, label %367, !prof !244

367:                                              ; preds = %361
  %368 = call i64 @Perl_tmps_grow_p(i64 noundef %364) #17
  br label %369

369:                                              ; preds = %361, %367
  %370 = call ptr @Perl_sv_newmortal() #17
  %371 = getelementptr inbounds ptr, ptr %362, i64 1
  store ptr %370, ptr %371, align 8, !tbaa !66
  %372 = load i32, ptr %4, align 4, !tbaa !228
  %373 = sext i32 %372 to i64
  call void @Perl_sv_setiv(ptr noundef %370, i64 noundef %373) #17
  %374 = call ptr @Perl_sv_newmortal() #17
  %375 = getelementptr inbounds ptr, ptr %362, i64 2
  store ptr %374, ptr %375, align 8, !tbaa !66
  %376 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 1
  %377 = load i32, ptr %376, align 4, !tbaa !230
  %378 = sext i32 %377 to i64
  call void @Perl_sv_setiv(ptr noundef %374, i64 noundef %378) #17
  %379 = call ptr @Perl_sv_newmortal() #17
  %380 = getelementptr inbounds ptr, ptr %362, i64 3
  store ptr %379, ptr %380, align 8, !tbaa !66
  %381 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 2
  %382 = load i32, ptr %381, align 4, !tbaa !231
  %383 = sext i32 %382 to i64
  call void @Perl_sv_setiv(ptr noundef %379, i64 noundef %383) #17
  %384 = call ptr @Perl_sv_newmortal() #17
  %385 = getelementptr inbounds ptr, ptr %362, i64 4
  store ptr %384, ptr %385, align 8, !tbaa !66
  %386 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 3
  %387 = load i32, ptr %386, align 4, !tbaa !232
  %388 = sext i32 %387 to i64
  call void @Perl_sv_setiv(ptr noundef %384, i64 noundef %388) #17
  %389 = call ptr @Perl_sv_newmortal() #17
  %390 = getelementptr inbounds ptr, ptr %362, i64 5
  store ptr %389, ptr %390, align 8, !tbaa !66
  %391 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 4
  %392 = load i32, ptr %391, align 4, !tbaa !233
  %393 = sext i32 %392 to i64
  call void @Perl_sv_setiv(ptr noundef %389, i64 noundef %393) #17
  %394 = call ptr @Perl_sv_newmortal() #17
  %395 = getelementptr inbounds ptr, ptr %362, i64 6
  store ptr %394, ptr %395, align 8, !tbaa !66
  %396 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 5
  %397 = load i32, ptr %396, align 4, !tbaa !234
  %398 = sitofp i32 %397 to double
  call void @Perl_sv_setnv(ptr noundef %394, double noundef %398) #17
  %399 = call ptr @Perl_sv_newmortal() #17
  %400 = getelementptr inbounds ptr, ptr %362, i64 7
  store ptr %399, ptr %400, align 8, !tbaa !66
  %401 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 6
  %402 = load i32, ptr %401, align 4, !tbaa !235
  %403 = sext i32 %402 to i64
  call void @Perl_sv_setiv(ptr noundef %399, i64 noundef %403) #17
  %404 = call ptr @Perl_sv_newmortal() #17
  %405 = getelementptr inbounds ptr, ptr %362, i64 8
  store ptr %404, ptr %405, align 8, !tbaa !66
  %406 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 7
  %407 = load i32, ptr %406, align 4, !tbaa !236
  %408 = sext i32 %407 to i64
  call void @Perl_sv_setiv(ptr noundef %404, i64 noundef %408) #17
  %409 = call ptr @Perl_sv_newmortal() #17
  %410 = getelementptr inbounds ptr, ptr %362, i64 9
  store ptr %409, ptr %410, align 8, !tbaa !66
  %411 = getelementptr inbounds %struct.TM64, ptr %4, i64 0, i32 8
  %412 = load i32, ptr %411, align 4, !tbaa !237
  %413 = sext i32 %412 to i64
  call void @Perl_sv_setiv(ptr noundef %409, i64 noundef %413) #17
  br label %414

414:                                              ; preds = %323, %369, %352, %321
  %415 = phi ptr [ %322, %321 ], [ %298, %352 ], [ %330, %323 ], [ %410, %369 ]
  store ptr %415, ptr @PL_stack_sp, align 8, !tbaa !66
  %416 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %417 = load ptr, ptr %416, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %417
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_gmtime64_r(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) unnamed_addr #14 !prof !222 !PGOFuncName !245 {
  %3 = load i64, ptr %0, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 8
  store i32 0, ptr %4, align 4, !tbaa !237
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
  %23 = select i1 %21, i64 %22, i64 %20, !prof !246
  %24 = select i1 %21, i32 108, i32 70, !prof !246
  %25 = icmp sgt i64 %23, -1
  br i1 %25, label %26, label %99, !prof !244

26:                                               ; preds = %2
  %27 = udiv i64 %23, 146097
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30, !prof !244

30:                                               ; preds = %26
  %31 = and i64 %27, 4294967295
  %32 = mul nsw i64 %31, -146097
  %33 = add nsw i64 %32, %23
  %34 = mul nsw i32 %28, 400
  %35 = add nsw i32 %34, %24
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i64 [ %33, %30 ], [ %23, %26 ]
  %38 = phi i32 [ %35, %30 ], [ %24, %26 ]
  %39 = add nsw i32 %38, 1900
  %40 = srem i32 %39, 400
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42, !prof !226

42:                                               ; preds = %36
  %43 = and i32 %38, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49, !prof !246

45:                                               ; preds = %42
  %46 = srem i32 %39, 100
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %42, %45, %36
  %50 = phi i32 [ 1, %36 ], [ 0, %42 ], [ %48, %45 ]
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !190
  %54 = sext i16 %53 to i64
  %55 = icmp slt i64 %37, %54
  br i1 %55, label %58, label %67, !prof !224

56:                                               ; preds = %82
  %57 = zext i1 %83 to i32
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %50, %49 ], [ %57, %56 ]
  %60 = phi i64 [ %37, %49 ], [ %71, %56 ]
  %61 = phi i32 [ %38, %49 ], [ %72, %56 ]
  %62 = phi i64 [ %51, %49 ], [ %84, %56 ]
  %63 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %62, i64 0
  %64 = load i8, ptr %63, align 4, !tbaa !76
  %65 = sext i8 %64 to i64
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %187, label %89, !prof !224

67:                                               ; preds = %49, %82
  %68 = phi i64 [ %87, %82 ], [ %54, %49 ]
  %69 = phi i32 [ %72, %82 ], [ %38, %49 ]
  %70 = phi i64 [ %71, %82 ], [ %37, %49 ]
  %71 = sub nsw i64 %70, %68
  %72 = add nsw i32 %69, 1
  %73 = add nsw i32 %69, 1901
  %74 = srem i32 %73, 400
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !247

76:                                               ; preds = %67
  %77 = and i32 %73, 3
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82, !prof !248

79:                                               ; preds = %76
  %80 = srem i32 %73, 100
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %76, %79, %67
  %83 = phi i1 [ true, %67 ], [ false, %76 ], [ %81, %79 ]
  %84 = zext i1 %83 to i64
  %85 = getelementptr inbounds [2 x i16], ptr @length_of_year, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !190
  %87 = sext i16 %86 to i64
  %88 = icmp slt i64 %71, %87
  br i1 %88, label %56, label %67, !prof !249, !llvm.loop !250

89:                                               ; preds = %58, %89
  %90 = phi i64 [ %94, %89 ], [ 0, %58 ]
  %91 = phi i64 [ %97, %89 ], [ %65, %58 ]
  %92 = phi i64 [ %93, %89 ], [ %60, %58 ]
  %93 = sub nsw i64 %92, %91
  %94 = add nuw nsw i64 %90, 1
  %95 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %62, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !76
  %97 = sext i8 %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %185, label %89, !prof !251, !llvm.loop !252

99:                                               ; preds = %2
  %100 = add nsw i32 %24, -1
  %101 = sdiv i64 %23, 146097
  %102 = trunc i64 %101 to i32
  %103 = add nsw i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = sext i32 %103 to i64
  %107 = mul nsw i64 %106, -146097
  %108 = add nsw i64 %107, %23
  %109 = mul nsw i32 %103, 400
  %110 = add nsw i32 %109, %100
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i64 [ %108, %105 ], [ %23, %99 ]
  %113 = phi i32 [ %110, %105 ], [ %100, %99 ]
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
  %128 = load i16, ptr %127, align 2, !tbaa !190
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
  %140 = load i8, ptr %139, align 1, !tbaa !76
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
  %163 = load i16, ptr %162, align 2, !tbaa !190
  %164 = sext i16 %163 to i64
  %165 = sub nsw i64 0, %164
  %166 = icmp slt i64 %148, %165
  br i1 %166, label %144, label %132, !llvm.loop !253

167:                                              ; preds = %134, %167
  %168 = phi i64 [ %172, %167 ], [ 11, %134 ]
  %169 = phi i64 [ %175, %167 ], [ %141, %134 ]
  %170 = phi i64 [ %171, %167 ], [ %136, %134 ]
  %171 = add nsw i64 %169, %170
  %172 = add nsw i64 %168, -1
  %173 = getelementptr inbounds [2 x [12 x i8]], ptr @days_in_month, i64 0, i64 %138, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !76
  %175 = sext i8 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = icmp slt i64 %171, %176
  br i1 %177, label %167, label %178, !llvm.loop !254

178:                                              ; preds = %167
  %179 = trunc i64 %172 to i32
  br label %180

180:                                              ; preds = %178, %134
  %181 = phi i32 [ 11, %134 ], [ %179, %178 ]
  %182 = phi i64 [ %136, %134 ], [ %171, %178 ]
  %183 = phi i64 [ %141, %134 ], [ %175, %178 ]
  %184 = add nsw i64 %183, %182
  br label %187

185:                                              ; preds = %89
  %186 = trunc i64 %94 to i32
  br label %187

187:                                              ; preds = %185, %58, %180
  %188 = phi i32 [ %181, %180 ], [ 0, %58 ], [ %186, %185 ]
  %189 = phi i32 [ %135, %180 ], [ %59, %58 ], [ %59, %185 ]
  %190 = phi i64 [ %184, %180 ], [ %60, %58 ], [ %93, %185 ]
  %191 = phi i32 [ %137, %180 ], [ %61, %58 ], [ %61, %185 ]
  %192 = add nsw i64 %20, 4
  %193 = srem i64 %192, 7
  %194 = trunc i64 %193 to i32
  %195 = icmp slt i32 %194, 0
  %196 = add nsw i32 %194, 7
  %197 = select i1 %195, i32 %196, i32 %194, !prof !226
  %198 = icmp slt i32 %17, 0
  %199 = add nsw i32 %17, 24
  %200 = select i1 %198, i32 %199, i32 %17, !prof !226
  %201 = icmp slt i32 %15, 0
  %202 = add nsw i32 %15, 60
  %203 = select i1 %201, i32 %202, i32 %15, !prof !226
  %204 = icmp slt i32 %6, 0
  %205 = add nsw i32 %6, 60
  %206 = select i1 %204, i32 %205, i32 %6, !prof !226
  %207 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 5
  store i32 %191, ptr %207, align 4, !tbaa !234
  %208 = trunc i64 %190 to i32
  %209 = add nsw i32 %208, 1
  %210 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 3
  store i32 %209, ptr %210, align 4, !tbaa !232
  %211 = zext nneg i32 %189 to i64
  %212 = sext i32 %188 to i64
  %213 = getelementptr inbounds [2 x [12 x i16]], ptr @julian_days_by_month, i64 0, i64 %211, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !190
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %215, %208
  %217 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 7
  store i32 %216, ptr %217, align 4, !tbaa !236
  store i32 %206, ptr %1, align 4, !tbaa !228
  %218 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 1
  store i32 %203, ptr %218, align 4, !tbaa !230
  %219 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 2
  store i32 %200, ptr %219, align 4, !tbaa !231
  %220 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 4
  store i32 %188, ptr %220, align 4, !tbaa !233
  %221 = getelementptr inbounds %struct.TM64, ptr %1, i64 0, i32 6
  store i32 %197, ptr %221, align 4, !tbaa !235
  ret ptr %1
}

declare void @Perl_sv_setpvf_mg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_alarm() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.111) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_sleep() local_unnamed_addr #0 !prof !65 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %4 = load ptr, ptr @PL_curpad, align 8, !tbaa !66
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %10 = call i64 @time(ptr noundef nonnull %1) #17
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !82
  %14 = and i8 %13, 15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %0
  %17 = load ptr, ptr %3, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds ptr, ptr %3, i64 -1
  br i1 %18, label %34, label %20

20:                                               ; preds = %16
  store ptr %17, ptr @PL_Sv, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !74
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load ptr, ptr %17, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !76
  br label %31

29:                                               ; preds = %20
  %30 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %17, i32 noundef 2) #17
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i64 [ %28, %25 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %0, %16, %31
  %35 = phi i32 [ %33, %31 ], [ 2147450879, %16 ], [ 2147450879, %0 ]
  %36 = phi ptr [ %19, %31 ], [ %19, %16 ], [ %3, %0 ]
  %37 = call i32 @sleep(i32 noundef %35) #17
  %38 = call i64 @time(ptr noundef nonnull %2) #17
  %39 = load i64, ptr %2, align 8, !tbaa !105
  %40 = load i64, ptr %1, align 8, !tbaa !105
  %41 = sub nsw i64 %39, %40
  call void @Perl_sv_setiv(ptr noundef %9, i64 noundef %41) #17
  %42 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !74
  %44 = and i32 %43, 4194304
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = call i32 @Perl_mg_set(ptr noundef %9) #17
  br label %48

48:                                               ; preds = %34, %46
  %49 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %36 to i64
  %52 = sub i64 %50, %51
  %53 = icmp slt i64 %52, 8
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call ptr @Perl_stack_grow(ptr noundef %36, ptr noundef %36, i64 noundef 1) #17
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi ptr [ %55, %54 ], [ %36, %48 ]
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  store ptr %9, ptr %58, align 8, !tbaa !66
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !66
  %59 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret ptr %60
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_shmwrite() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.112) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_semget() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.112) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_semctl() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.112) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ghostent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_gnetent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_gprotoent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_gservent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_shostent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr %1, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = and i32 %4, 2097408
  %6 = icmp eq i32 %5, 256
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %2, i32 noundef 2) #17
  br label %9

9:                                                ; preds = %0, %7
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 511
  switch i16 %13, label %23 [
    i16 358, label %14
    i16 360, label %17
    i16 361, label %20
  ]

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 358), align 8, !tbaa !66
  %16 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %15) #17
  br label %26

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 360), align 8, !tbaa !66
  %19 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %18) #17
  br label %26

20:                                               ; preds = %9
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 361), align 8, !tbaa !66
  %22 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %21) #17
  br label %26

23:                                               ; preds = %9
  store ptr @PL_sv_yes, ptr %1, align 8, !tbaa !66
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !66
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  br label %26

26:                                               ; preds = %23, %20, %17, %14
  %27 = phi ptr [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ehostent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !66
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !66
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
  %7 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 362), align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %7) #17
  br label %43

9:                                                ; preds = %0
  %10 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 363), align 8, !tbaa !66
  %11 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %10) #17
  br label %43

12:                                               ; preds = %0
  %13 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 364), align 8, !tbaa !66
  %14 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %13) #17
  br label %43

15:                                               ; preds = %0
  %16 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 365), align 8, !tbaa !66
  %17 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_sock_func, ptr noundef %16) #17
  br label %43

18:                                               ; preds = %0
  %19 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 374), align 8, !tbaa !66
  %20 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %19) #17
  br label %43

21:                                               ; preds = %0
  %22 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 375), align 8, !tbaa !66
  %23 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %22) #17
  br label %43

24:                                               ; preds = %0
  %25 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 369), align 8, !tbaa !66
  %26 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %25) #17
  br label %43

27:                                               ; preds = %0
  %28 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_op_desc, i64 0, i64 370), align 8, !tbaa !66
  %29 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %28) #17
  br label %43

30:                                               ; preds = %0
  %31 = load ptr, ptr @PL_stack_max, align 8, !tbaa !66
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %1 to i64
  %34 = sub i64 %32, %33
  %35 = icmp slt i64 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #17
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %37, %36 ], [ %1, %30 ]
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  store ptr @PL_sv_yes, ptr %40, align 8, !tbaa !66
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !66
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  br label %43

43:                                               ; preds = %38, %27, %24, %21, %18, %15, %12, %9, %6
  %44 = phi ptr [ %42, %38 ], [ %29, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ]
  ret ptr %44
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_gpwent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_ggrent() local_unnamed_addr #0 !prof !65 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !66
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_getlogin() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.113) #17
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_syscall() local_unnamed_addr #0 !prof !65 {
  %1 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.114) #17
  ret ptr %1
}

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_cv_clone(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_cxinc() local_unnamed_addr #2

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #16

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!64}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @Perl_pp_open, ptr @Perl_do_open6, i64 1}
!36 = !{ptr @Perl_pp_open, ptr @Perl_sv_setiv, i64 1}
!37 = !{ptr @Perl_pp_close, ptr @Perl_do_close, i64 1}
!38 = !{ptr @Perl_pp_tie, ptr @Perl_hv_eiter_set, i64 2}
!39 = !{ptr @Perl_pp_tie, ptr @Perl_sv_isobject, i64 4}
!40 = !{ptr @Perl_pp_tie, ptr @Perl_gv_stashsv, i64 2}
!41 = !{ptr @Perl_pp_tie, ptr @Perl_gv_fetchmethod_autoload, i64 2}
!42 = !{ptr @Perl_pp_tie, ptr @Perl_push_scope, i64 2}
!43 = !{ptr @Perl_pp_tie, ptr @Perl_call_sv, i64 2}
!44 = !{ptr @Perl_pp_tie, ptr @Perl_sv_unmagic, i64 2}
!45 = !{ptr @Perl_pp_tie, ptr @Perl_sv_magic, i64 2}
!46 = !{ptr @Perl_pp_tie, ptr @Perl_pop_scope, i64 2}
!47 = !{ptr @Perl_pp_select, ptr @Perl_hv_common_key_len, i64 80}
!48 = !{ptr @Perl_pp_select, ptr @Perl_gv_efullname4, i64 80}
!49 = !{ptr @Perl_pp_ftrread, ptr @Perl_my_stat_flags, i64 1}
!50 = !{ptr @Perl_pp_ftrread, ptr @Perl_cando, i64 1}
!51 = !{ptr @Perl_pp_ftrread, ptr @S_ft_return_true, i64 1}
!52 = !{ptr @Perl_pp_ftrowned, ptr @Perl_my_stat_flags, i64 16}
!53 = !{ptr @Perl_pp_ftrowned, ptr @S_ft_return_false, i64 16}
!54 = !{ptr @Perl_pp_time, ptr @time, i64 15823}
!55 = !{ptr @Perl_pp_time, ptr @Perl_sv_setiv, i64 15823}
!56 = !{ptr @Perl_pp_tms, ptr @Perl_die, i64 32}
!57 = !{ptr @Perl_pp_gmtime, ptr @time, i64 1}
!58 = !{ptr @Perl_pp_gmtime, ptr @Perl_sv_2nv_flags, i64 33364}
!59 = !{ptr @Perl_pp_gmtime, ptr @S_gmtime64_r, i64 33365}
!60 = !{ptr @Perl_pp_gmtime, ptr @localtime, i64 1772}
!61 = !{ptr @Perl_pp_gmtime, ptr @Perl_sv_newmortal, i64 300285}
!62 = !{ptr @Perl_pp_gmtime, ptr @Perl_sv_setiv, i64 266920}
!63 = !{ptr @Perl_pp_gmtime, ptr @Perl_sv_setnv, i64 33365}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !72, i64 24}
!71 = !{!"op", !67, i64 0, !67, i64 8, !67, i64 16, !72, i64 24, !73, i64 32, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !68, i64 34, !68, i64 35}
!72 = !{!"long", !68, i64 0}
!73 = !{!"int", !68, i64 0}
!74 = !{!75, !73, i64 12}
!75 = !{!"sv", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!76 = !{!68, !68, i64 0}
!77 = !{!71, !68, i64 34}
!78 = !{!79, !79, i64 0}
!79 = !{!"_Bool", !68, i64 0}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!71, !68, i64 35}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!75, !67, i64 0}
!87 = !{!88, !72, i64 16}
!88 = !{!"xpv", !67, i64 0, !68, i64 8, !72, i64 16, !68, i64 24}
!89 = distinct !{!89, !84, !85}
!90 = !{!75, !73, i64 8}
!91 = !{!73, !73, i64 0}
!92 = !{!71, !67, i64 0}
!93 = !{!94, !67, i64 0}
!94 = !{!"xpvmg", !67, i64 0, !68, i64 8, !72, i64 16, !68, i64 24, !68, i64 32, !68, i64 40}
!95 = !{!96, !73, i64 12}
!96 = !{!"hv", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!97 = !{!98, !67, i64 0}
!98 = !{!"av", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!99 = !{!100, !72, i64 16}
!100 = !{!"xpvav", !67, i64 0, !68, i64 8, !72, i64 16, !72, i64 24, !67, i64 32}
!101 = distinct !{!101, !84, !85}
!102 = distinct !{!102, !84, !85}
!103 = !{!104, !67, i64 40}
!104 = !{!"svop", !67, i64 0, !67, i64 8, !67, i64 16, !72, i64 24, !73, i64 32, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !68, i64 34, !68, i64 35, !67, i64 40}
!105 = !{!72, !72, i64 0}
!106 = !{!107, !67, i64 0}
!107 = !{!"gp", !67, i64 0, !67, i64 8, !67, i64 16, !73, i64 24, !73, i64 28, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !73, i64 64, !73, i64 67, !67, i64 72}
!108 = !{!109, !67, i64 48}
!109 = !{!"cop", !67, i64 0, !67, i64 8, !67, i64 16, !72, i64 24, !73, i64 32, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !73, i64 33, !68, i64 34, !68, i64 35, !73, i64 36, !67, i64 40, !67, i64 48, !73, i64 56, !73, i64 60, !67, i64 64, !67, i64 72}
!110 = !{!111, !67, i64 0}
!111 = !{!"gv", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!112 = !{!109, !73, i64 36}
!113 = !{!107, !67, i64 16}
!114 = !{!115, !67, i64 24}
!115 = !{!"stackinfo", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !73, i64 32, !73, i64 36, !73, i64 40, !73, i64 44}
!116 = !{!115, !67, i64 16}
!117 = !{!115, !73, i64 40}
!118 = !{!115, !73, i64 32}
!119 = !{!115, !67, i64 0}
!120 = !{!100, !72, i64 24}
!121 = !{!122, !67, i64 32}
!122 = !{!"magic", !67, i64 0, !67, i64 8, !123, i64 16, !68, i64 18, !68, i64 19, !72, i64 24, !67, i64 32, !67, i64 40}
!123 = !{!"short", !68, i64 0}
!124 = distinct !{!124, !84, !85}
!125 = !{!"function_entry_count", i64 1}
!126 = !{!111, !73, i64 12}
!127 = !{!"branch_weights", i32 0, i32 1, i32 0}
!128 = !{!107, !67, i64 8}
!129 = !{!"branch_weights", i32 0, i32 1}
!130 = !{!131, !67, i64 0}
!131 = !{!"io", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!132 = !{!133, !68, i64 129}
!133 = !{!"xpvio", !67, i64 0, !68, i64 8, !72, i64 16, !68, i64 24, !68, i64 32, !67, i64 40, !68, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !68, i64 128, !68, i64 129}
!134 = !{!"branch_weights", i32 1, i32 0}
!135 = !{!107, !67, i64 56}
!136 = !{!"function_entry_count", i64 32}
!137 = !{!"branch_weights", i32 16, i32 16}
!138 = !{!"branch_weights", i32 0, i32 16}
!139 = !{!"branch_weights", i32 16, i32 0}
!140 = !{!"branch_weights", i32 0, i32 32}
!141 = !{!133, !68, i64 128}
!142 = !{!133, !67, i64 40}
!143 = !{!"function_entry_count", i64 2}
!144 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0, i32 0}
!145 = !{!"branch_weights", i32 2, i32 0}
!146 = !{!147, !68, i64 72}
!147 = !{!"xpvlv", !67, i64 0, !68, i64 8, !72, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !72, i64 56, !67, i64 64, !68, i64 72, !68, i64 73}
!148 = !{!147, !67, i64 64}
!149 = distinct !{!149, !84, !85}
!150 = !{!"branch_weights", i32 0, i32 2}
!151 = !{!"branch_weights", i32 1, i32 127}
!152 = !{!"branch_weights", i32 127, i32 65}
!153 = distinct !{!153, !84, !85}
!154 = distinct !{!154, !84, !85}
!155 = !{!156, !72, i64 0}
!156 = !{!"timeval", !72, i64 0, !72, i64 8}
!157 = !{!156, !72, i64 8}
!158 = distinct !{!158, !84, !85}
!159 = distinct !{!159, !84, !85}
!160 = !{!"function_entry_count", i64 80}
!161 = !{!"branch_weights", i32 0, i32 80}
!162 = !{!"branch_weights", i32 80, i32 0}
!163 = !{!96, !67, i64 0}
!164 = !{!165, !72, i64 24}
!165 = !{!"xpvhv", !67, i64 0, !68, i64 8, !72, i64 16, !72, i64 24}
!166 = !{!167, !73, i64 28}
!167 = !{!"xpvhv_aux", !68, i64 0, !67, i64 8, !67, i64 16, !73, i64 24, !73, i64 28, !67, i64 32, !73, i64 40, !73, i64 44, !73, i64 48, !73, i64 52}
!168 = !{!169, !73, i64 4}
!169 = !{!"hek", !73, i64 0, !73, i64 4, !68, i64 8}
!170 = !{!133, !67, i64 104}
!171 = !{!107, !67, i64 48}
!172 = !{!173, !67, i64 0}
!173 = !{!"cv", !67, i64 0, !73, i64 8, !73, i64 12, !68, i64 16}
!174 = !{!175, !73, i64 92}
!175 = !{!"xpvcv", !67, i64 0, !68, i64 8, !72, i64 16, !68, i64 24, !67, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !67, i64 64, !68, i64 72, !67, i64 80, !73, i64 88, !73, i64 92, !73, i64 96}
!176 = !{!115, !73, i64 36}
!177 = !{!115, !67, i64 8}
!178 = !{!179, !67, i64 8}
!179 = !{!"padlist", !72, i64 0, !67, i64 8, !73, i64 16, !73, i64 20}
!180 = !{!133, !72, i64 72}
!181 = !{!133, !67, i64 88}
!182 = !{!133, !67, i64 80}
!183 = !{!133, !67, i64 96}
!184 = !{!133, !72, i64 64}
!185 = distinct !{!185, !84, !85}
!186 = !{!133, !72, i64 56}
!187 = !{!109, !73, i64 56}
!188 = distinct !{!188, !84, !85}
!189 = !{!107, !67, i64 40}
!190 = !{!123, !123, i64 0}
!191 = !{!192, !72, i64 0}
!192 = !{!"stat", !72, i64 0, !72, i64 8, !72, i64 16, !73, i64 24, !73, i64 28, !73, i64 32, !73, i64 36, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !193, i64 72, !193, i64 88, !193, i64 104, !68, i64 120}
!193 = !{!"timespec", !72, i64 0, !72, i64 8}
!194 = !{!192, !72, i64 8}
!195 = !{!192, !73, i64 24}
!196 = !{!192, !72, i64 16}
!197 = !{!192, !73, i64 28}
!198 = !{!192, !73, i64 32}
!199 = !{!192, !72, i64 48}
!200 = !{!192, !72, i64 72}
!201 = !{!192, !72, i64 88}
!202 = !{!192, !72, i64 104}
!203 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!204 = !{!"function_entry_count", i64 16}
!205 = !{!"pp_sys.c;S_ft_return_false"}
!206 = distinct !{!206, !84, !85}
!207 = !{!"pp_sys.c;S_ft_return_true"}
!208 = distinct !{!208, !84, !85}
!209 = !{!107, !67, i64 32}
!210 = distinct !{!210, !84, !85}
!211 = distinct !{!211, !84, !85}
!212 = distinct !{!212, !84, !85}
!213 = distinct !{!213, !84, !85}
!214 = distinct !{!214, !84, !85}
!215 = distinct !{!215, !84, !85}
!216 = distinct !{!216, !84, !85}
!217 = distinct !{!217, !84, !85}
!218 = distinct !{!218, !84, !85}
!219 = !{!"function_entry_count", i64 15823}
!220 = !{!"branch_weights", i32 15823, i32 0}
!221 = !{!"branch_weights", i32 0, i32 15823}
!222 = !{!"function_entry_count", i64 33365}
!223 = !{!"branch_weights", i32 1772, i32 31593}
!224 = !{!"branch_weights", i32 1, i32 33364}
!225 = !{!"branch_weights", i32 0, i32 33364}
!226 = !{!"branch_weights", i32 0, i32 33365}
!227 = !{!"branch_weights", i32 0, i32 1772}
!228 = !{!229, !73, i64 0}
!229 = !{!"TM64", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20, !73, i64 24, !73, i64 28, !73, i64 32}
!230 = !{!229, !73, i64 4}
!231 = !{!229, !73, i64 8}
!232 = !{!229, !73, i64 12}
!233 = !{!229, !73, i64 16}
!234 = !{!229, !73, i64 20}
!235 = !{!229, !73, i64 24}
!236 = !{!229, !73, i64 28}
!237 = !{!229, !73, i64 32}
!238 = !{!"branch_weights", i32 1772, i32 0}
!239 = !{!"branch_weights", i32 1772, i32 95688}
!240 = !{!"branch_weights", i32 23036, i32 72652}
!241 = distinct !{!241, !84, !85}
!242 = distinct !{!242, !84, !85}
!243 = !{!"branch_weights", i32 1772, i32 0, i32 0}
!244 = !{!"branch_weights", i32 33365, i32 0}
!245 = !{!"pp_sys.c;S_gmtime64_r"}
!246 = !{!"branch_weights", i32 15832, i32 17533}
!247 = !{!"branch_weights", i32 0, i32 753082}
!248 = !{!"branch_weights", i32 186020, i32 567062}
!249 = !{!"branch_weights", i32 33364, i32 719718}
!250 = distinct !{!250, !84, !85}
!251 = !{!"branch_weights", i32 33364, i32 75470}
!252 = distinct !{!252, !84, !85}
!253 = distinct !{!253, !84, !85}
!254 = distinct !{!254, !84, !85}
