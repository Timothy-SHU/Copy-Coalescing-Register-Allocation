; ModuleID = 'mg.c'
source_filename = "mg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.magic_state = type { ptr, i32, i32, i8 }
%union.any = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu, %union.anon.5, i64, ptr, i8, i8 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%struct.he = type { ptr, ptr, %union.anon.16 }
%union.anon.16 = type { ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.6, %union.anon.7, ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.24 }
%union.anon.24 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.8, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.8 = type { i64 }
%struct.regexp_paren_pair = type { i64, i64, i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, ptr, %union.anon.11, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu, %union._xnvu }
%union.anon.13 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.ufuncs = type { ptr, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.av = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu, %union._xnvu }
%union.anon.15 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu }
%union.anon.17 = type { i64 }
%struct.cv = type { ptr, i32, i32, %union.anon.18 }
%union.anon.18 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.19, ptr, %union.anon.20, %union.anon.21, %union.anon.22, ptr, %union.anon.23, ptr, i32, i32, i32 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { ptr }
%union.anon.22 = type { ptr }
%union.anon.23 = type { ptr }

@PL_localizing = external local_unnamed_addr global i8, align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@PL_magic_data = external local_unnamed_addr constant [256 x i8], align 16
@.str = private unnamed_addr constant [27 x i8] c"Size magic not implemented\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_curpm = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"open<\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"open>\00", align 1
@PL_encoding = external local_unnamed_addr global ptr, align 8
@PL_lex_encoding = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@PL_bodytarget = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_minus_c = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"HILD_ERROR_NATIVE\00", align 1
@PL_statusvalue_posix = external local_unnamed_addr global i32, align 4
@PL_debug = external global i32, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"_NCODING\00", align 1
@PL_maxsysfd = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"LOBAL_PHASE\00", align 1
@PL_phase_names = external local_unnamed_addr constant [0 x ptr], align 8
@PL_phase = external local_unnamed_addr global i32, align 4
@PL_compiling = external global %struct.cop, align 8
@PL_inplace = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"AST_FH\00", align 1
@PL_last_in_gv = external global ptr, align 8
@PL_osname = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"PEN\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_in_eval = external local_unnamed_addr global i8, align 1
@PL_basetime = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"AINT\00", align 1
@PL_taint_warn = external local_unnamed_addr global i8, align 1
@PL_unsafe = external local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"NICODE\00", align 1
@PL_unicode = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"TF8LOCALE\00", align 1
@PL_utf8locale = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"TF8CACHE\00", align 1
@PL_utf8cache = external local_unnamed_addr global i8, align 1
@PL_dowarn = external local_unnamed_addr global i8, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"warnings::Bits\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"UUUUUUUUUUUUUUUUU\00", align 1
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@PL_defoutgv = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"_TOP\00", align 1
@PL_ors_sv = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [21 x i8] c"Wide character in %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_psig_ptr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@PL_signals = external local_unnamed_addr global i32, align 4
@PL_sighandlerp = external local_unnamed_addr global ptr, align 8
@PL_psig_pend = external local_unnamed_addr global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [48 x i8] c"Maximal count of pending signals (%lu) exceeded\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"__DIE__\00", align 1
@PL_diehook = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"__WARN__\00", align 1
@PL_warnhook = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [17 x i8] c"No such hook: %s\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"No such signal: SIG%s\00", align 1
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_psig_name = external local_unnamed_addr global ptr, align 8
@PL_csighandlerp = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_delaymagic = external local_unnamed_addr global i16, align 2
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_stderrgv = external global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"FETCHSIZE\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"FETCHSIZE returned a negative value\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"NEXTKEY\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"FIRSTKEY\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.43 = private unnamed_addr constant [41 x i8] c"panic: magic_setdbline len=%ld, ptr='%s'\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Attempt to set length of freed array\00", align 1
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"substr outside of string\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Attempt to use reference as lvalue in substr\00", align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_no_helem_sv = external constant [0 x i8], align 1
@PL_no_aelem = external constant [0 x i8], align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Assigned value is not a reference\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c" SCALAR\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"n ARRAY\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c" HASH\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" CODE\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Assigned value is not a%s reference\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"encoding::\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"Setting ${^ENCODING} is deprecated\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"assigning to $^O\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@PL_DBsingle = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [84 x i8] c"Setting $/ to a reference to %s as a form of slurp is deprecated, treating as undef\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"a negative integer\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [44 x i8] c"Setting $/ to a%s %s reference is forbidden\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"Assigning non-zero to $[ is no longer possible\00", align 1
@PL_delaymagic_uid = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [26 x i8] c"setruid() not implemented\00", align 1
@PL_delaymagic_euid = external local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [26 x i8] c"seteuid() not implemented\00", align 1
@PL_delaymagic_gid = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [26 x i8] c"setrgid() not implemented\00", align 1
@PL_delaymagic_egid = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [26 x i8] c"setegid() not implemented\00", align 1
@PL_chopset = external local_unnamed_addr global ptr, align 8
@PL_origalen = external local_unnamed_addr global i32, align 4
@PL_origargv = external local_unnamed_addr global ptr, align 8
@PL_origargc = external local_unnamed_addr global i32, align 4
@PL_sig_name = external constant [0 x ptr], align 8
@PL_sig_num = external local_unnamed_addr constant [0 x i32], align 4
@.str.67 = private unnamed_addr constant [5 x i8] c"CHLD\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"CLD\00", align 1
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_Xpv = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [51 x i8] c"Signal SIG%s received, but no signal handler set.\0A\00", align 1
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@.str.70 = private unnamed_addr constant [34 x i8] c"SIG%s handler \22%2p\22 not defined.\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"SIG%s handler \22__ANON__\22 not defined.\0A\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@PL_DBcontrol = external local_unnamed_addr global [3 x i64], align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_mg_magical(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !107 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = and i32 %3, -14680065
  store i32 %4, ptr %2, align 4, !tbaa !108
  %5 = load ptr, ptr %0, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.xpvmg, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9, !prof !116

9:                                                ; preds = %1, %39
  %10 = phi ptr [ %40, %39 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14, !prof !121

14:                                               ; preds = %9
  %15 = load ptr, ptr %12, align 8, !tbaa !122
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !124

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 4
  %19 = load i8, ptr %18, align 1, !tbaa !125
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25, !prof !126

22:                                               ; preds = %17
  %23 = load i32, ptr %2, align 4, !tbaa !108
  %24 = or i32 %23, 2097152
  store i32 %24, ptr %2, align 4, !tbaa !108
  br label %25

25:                                               ; preds = %22, %17, %14
  %26 = getelementptr inbounds %struct.mgvtbl, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29, !prof !128

29:                                               ; preds = %25
  %30 = load i32, ptr %2, align 4, !tbaa !108
  %31 = or i32 %30, 4194304
  store i32 %31, ptr %2, align 4, !tbaa !108
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.mgvtbl, ptr %12, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !129
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !130

36:                                               ; preds = %32
  %37 = load i32, ptr %2, align 4, !tbaa !108
  %38 = or i32 %37, 8388608
  store i32 %38, ptr %2, align 4, !tbaa !108
  br label %39

39:                                               ; preds = %9, %32, %36
  %40 = load ptr, ptr %10, align 8, !tbaa !131
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %9, !prof !132, !llvm.loop !133

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4, !tbaa !108
  %44 = and i32 %43, 6291456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48, !prof !136

46:                                               ; preds = %42
  %47 = or i32 %43, 8388608
  store i32 %47, ptr %2, align 4, !tbaa !108
  br label %48

48:                                               ; preds = %42, %46, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @Perl_mg_get(ptr noundef %0) local_unnamed_addr #2 !prof !137 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #27
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %19, !prof !138

5:                                                ; preds = %1
  %6 = load ptr, ptr @PL_defgv, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !142

11:                                               ; preds = %5
  %12 = tail call ptr @Perl_gv_add_by_type(ptr noundef %6, i32 noundef 0) #27
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi ptr [ %14, %11 ], [ %8, %5 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %215, label %19, !prof !142

19:                                               ; preds = %15, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.xpvmg, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  br label %23

23:                                               ; preds = %150, %19
  %24 = phi i8 [ 0, %19 ], [ %151, %150 ]
  %25 = phi ptr [ %22, %19 ], [ %152, %150 ]
  %26 = phi ptr [ %22, %19 ], [ %153, %150 ]
  %27 = phi ptr [ %22, %19 ], [ %154, %150 ]
  %28 = phi ptr [ %22, %19 ], [ %155, %150 ]
  %29 = phi i8 [ 0, %19 ], [ %157, %150 ]
  %30 = icmp eq ptr %28, null
  br i1 %30, label %158, label %31, !prof !143

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = load ptr, ptr %28, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 4
  %36 = load i8, ptr %35, align 1, !tbaa !125
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  %39 = icmp ne ptr %33, null
  %40 = select i1 %38, i1 %39, i1 false, !prof !144
  br i1 %40, label %41, label %114, !prof !144

41:                                               ; preds = %31
  %42 = load ptr, ptr %33, align 8, !tbaa !122
  %43 = icmp eq ptr %42, null
  br i1 %43, label %114, label %44, !prof !145

44:                                               ; preds = %41
  %45 = and i8 %29, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %71, !prof !144

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 3
  %49 = load i8, ptr %48, align 2, !tbaa !146
  %50 = icmp eq i8 %49, 116
  br i1 %50, label %71, label %51, !prof !145

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !147
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57, !prof !148

55:                                               ; preds = %51
  %56 = add i32 %53, 1
  store i32 %56, ptr %52, align 8, !tbaa !147
  br label %57

57:                                               ; preds = %51, %55
  %58 = sext i32 %2 to i64
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_restore_magic, ptr noundef %59) #27
  %61 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %62 = getelementptr inbounds i8, ptr %61, i64 %58
  store ptr %0, ptr %62, align 8, !tbaa !149
  %63 = load i32, ptr %60, align 4, !tbaa !108
  %64 = and i32 %63, 148963328
  %65 = getelementptr inbounds %struct.magic_state, ptr %62, i64 0, i32 2
  store i32 %64, ptr %65, align 4, !tbaa !152
  %66 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %67 = getelementptr inbounds %struct.magic_state, ptr %62, i64 0, i32 1
  store i32 %66, ptr %67, align 8, !tbaa !154
  %68 = getelementptr inbounds %struct.magic_state, ptr %62, i64 0, i32 3
  %69 = zext i1 %54 to i8
  store i8 %69, ptr %68, align 8, !tbaa !155
  %70 = and i32 %63, -148963329
  store i32 %70, ptr %60, align 4, !tbaa !108
  br label %71

71:                                               ; preds = %57, %47, %44
  %72 = phi i8 [ %29, %44 ], [ 1, %57 ], [ %29, %47 ]
  %73 = load ptr, ptr %33, align 8, !tbaa !122
  %74 = icmp eq ptr %73, @Perl_magic_get
  br i1 %74, label %75, label %77, !prof !156

75:                                               ; preds = %71
  %76 = tail call i32 @Perl_magic_get(ptr noundef nonnull %0, ptr noundef nonnull %28) #27
  br label %98

77:                                               ; preds = %71
  %78 = icmp eq ptr %73, @Perl_magic_getpack
  br i1 %78, label %79, label %96, !prof !157

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 3
  %81 = load i8, ptr %80, align 2, !tbaa !146
  %82 = icmp eq i8 %81, 112
  br i1 %82, label %83, label %86, !prof !158

83:                                               ; preds = %79
  %84 = load i8, ptr %35, align 1, !tbaa !125
  %85 = or i8 %84, 4
  store i8 %85, ptr %35, align 1, !tbaa !125
  br label %86

86:                                               ; preds = %83, %79
  %87 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !139
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91, !prof !159

89:                                               ; preds = %86
  %90 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.33, i32 noundef 0) #27
  store ptr %90, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !139
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi ptr [ %90, %89 ], [ %87, %86 ]
  %93 = tail call fastcc ptr @S_magic_methcall1(ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef %92, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95, !prof !160

95:                                               ; preds = %91
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef nonnull %93, i32 noundef 1538) #27
  br label %98

96:                                               ; preds = %77
  %97 = tail call i32 %73(ptr noundef nonnull %0, ptr noundef nonnull %28) #27, !prof !161
  br label %98

98:                                               ; preds = %96, %91, %95, %75
  %99 = load ptr, ptr %0, align 8, !tbaa !114
  %100 = getelementptr inbounds %struct.xpvmg, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = icmp eq ptr %101, null
  br i1 %102, label %136, label %103, !prof !145

103:                                              ; preds = %98
  %104 = load i8, ptr %35, align 1, !tbaa !125
  %105 = and i8 %104, 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %120, label %107, !prof !162

107:                                              ; preds = %103
  %108 = sext i32 %2 to i64
  %109 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %110 = getelementptr inbounds i8, ptr %109, i64 %108
  %111 = getelementptr inbounds %struct.magic_state, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !152
  %113 = and i32 %112, -14680065
  store i32 %113, ptr %111, align 4, !tbaa !152
  br label %120

114:                                              ; preds = %41, %31
  %115 = icmp eq ptr %33, getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 28)
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !163
  tail call void @Perl_safesysfree(ptr noundef %118) #27
  store ptr null, ptr %117, align 8, !tbaa !163
  %119 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 5
  store i64 -1, ptr %119, align 8, !tbaa !164
  br label %120

120:                                              ; preds = %114, %116, %103, %107
  %121 = phi i8 [ %72, %107 ], [ %72, %103 ], [ %29, %116 ], [ %29, %114 ]
  %122 = and i8 %24, 1
  %123 = icmp ne i8 %122, 0
  %124 = icmp eq ptr %34, %26
  %125 = select i1 %123, i1 %124, i1 false, !prof !145
  %126 = select i1 %125, i8 0, i8 %24, !prof !145
  %127 = select i1 %125, ptr %25, ptr %26, !prof !145
  %128 = select i1 %125, ptr %27, ptr %34, !prof !145
  %129 = and i8 %126, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %150, !prof !144

131:                                              ; preds = %120
  %132 = load ptr, ptr %0, align 8, !tbaa !114
  %133 = getelementptr inbounds %struct.xpvmg, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = icmp eq ptr %134, %127
  br i1 %135, label %150, label %136, !prof !144

136:                                              ; preds = %131, %98
  %137 = phi i8 [ %24, %98 ], [ 1, %131 ]
  %138 = phi ptr [ %25, %98 ], [ %134, %131 ]
  %139 = phi ptr [ %26, %98 ], [ %127, %131 ]
  %140 = phi ptr [ %27, %98 ], [ %128, %131 ]
  %141 = phi ptr [ %28, %98 ], [ %134, %131 ]
  %142 = phi i1 [ false, %98 ], [ true, %131 ]
  %143 = phi i8 [ %72, %98 ], [ %121, %131 ]
  %144 = sext i32 %2 to i64
  %145 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  %147 = getelementptr inbounds %struct.magic_state, ptr %146, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !152
  %149 = and i32 %148, -14680065
  store i32 %149, ptr %147, align 4, !tbaa !152
  br label %150

150:                                              ; preds = %136, %120, %131
  %151 = phi i8 [ %126, %120 ], [ %126, %131 ], [ %137, %136 ]
  %152 = phi ptr [ %25, %120 ], [ %134, %131 ], [ %138, %136 ]
  %153 = phi ptr [ %127, %120 ], [ %127, %131 ], [ %139, %136 ]
  %154 = phi ptr [ %27, %120 ], [ %27, %131 ], [ %140, %136 ]
  %155 = phi ptr [ %128, %120 ], [ %128, %131 ], [ %141, %136 ]
  %156 = phi i1 [ true, %120 ], [ true, %131 ], [ %142, %136 ]
  %157 = phi i8 [ %121, %120 ], [ %121, %131 ], [ %143, %136 ]
  br i1 %156, label %23, label %158, !prof !144

158:                                              ; preds = %150, %23
  %159 = phi i8 [ %29, %23 ], [ %157, %150 ]
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %215, label %162, !prof !145

162:                                              ; preds = %158
  %163 = sext i32 %2 to i64
  %164 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %165 = getelementptr inbounds i8, ptr %164, i64 %163
  %166 = load ptr, ptr %165, align 8, !tbaa !149
  %167 = icmp eq ptr %166, null
  br i1 %167, label %215, label %168, !prof !165

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.sv, ptr %166, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !108
  %171 = and i32 %170, 255
  %172 = icmp ugt i32 %171, 6
  br i1 %172, label %173, label %186, !prof !148

173:                                              ; preds = %168
  %174 = load ptr, ptr %166, align 8, !tbaa !114
  %175 = getelementptr inbounds %struct.xpvmg, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !115
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178, !prof !166

178:                                              ; preds = %173
  %179 = and i32 %170, -524289
  store i32 %179, ptr %169, align 4, !tbaa !108
  %180 = getelementptr inbounds %struct.magic_state, ptr %165, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !152
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183, !prof !167

183:                                              ; preds = %178
  %184 = or i32 %181, %179
  store i32 %184, ptr %169, align 4, !tbaa !108
  br label %186

185:                                              ; preds = %178
  tail call void @Perl_mg_magical(ptr noundef nonnull %166)
  br label %186

186:                                              ; preds = %185, %183, %173, %168
  %187 = getelementptr inbounds %struct.magic_state, ptr %165, i64 0, i32 3
  %188 = load i8, ptr %187, align 8, !tbaa !155, !range !168, !noundef !169
  %189 = icmp eq i8 %188, 0
  store ptr null, ptr %165, align 8, !tbaa !149
  %190 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %191 = getelementptr inbounds %struct.magic_state, ptr %165, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !154
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %204, !prof !170

194:                                              ; preds = %186
  %195 = add nsw i32 %190, -3
  store i32 %195, ptr @PL_savestack_ix, align 4, !tbaa !153
  %196 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %197 = add nsw i32 %190, -4
  store i32 %197, ptr @PL_savestack_ix, align 4, !tbaa !153
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %union.any, ptr %196, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !115
  %201 = lshr i64 %200, 6
  %202 = trunc i64 %201 to i32
  %203 = sub i32 %197, %202
  store i32 %203, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %204

204:                                              ; preds = %194, %186
  br i1 %189, label %215, label %205, !prof !171

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.sv, ptr %166, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !147
  switch i32 %207, label %212 [
    i32 1, label %208
    i32 0, label %214
  ], !prof !172

208:                                              ; preds = %205
  %209 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %166) #27
  %210 = load i32, ptr %169, align 4, !tbaa !108
  %211 = and i32 %210, -524289
  store i32 %211, ptr %169, align 4, !tbaa !108
  br label %215

212:                                              ; preds = %205
  %213 = add i32 %207, -1
  store i32 %213, ptr %206, align 8, !tbaa !147
  br label %215

214:                                              ; preds = %205
  tail call void @Perl_sv_free2(ptr noundef nonnull %166, i32 noundef %207) #27
  br label %215

215:                                              ; preds = %214, %212, %208, %204, %162, %158, %15
  ret i32 0
}

declare i32 @Perl_save_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @S_save_magic_flags(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !173 !PGOFuncName !174 {
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !147
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9, !prof !148

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  store i32 %8, ptr %4, align 8, !tbaa !147
  br label %9

9:                                                ; preds = %7, %3
  %10 = sext i32 %0 to i64
  %11 = inttoptr i64 %10 to ptr
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_restore_magic, ptr noundef %11) #27
  %12 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %13 = getelementptr inbounds i8, ptr %12, i64 %10
  store ptr %1, ptr %13, align 8, !tbaa !149
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !108
  %16 = and i32 %15, 148963328
  %17 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !152
  %18 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %19 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !154
  %20 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 3
  %21 = zext i1 %6 to i8
  store i8 %21, ptr %20, align 8, !tbaa !155
  %22 = and i32 %2, -134283265
  %23 = xor i32 %22, -134283265
  %24 = and i32 %23, %15
  store i32 %24, ptr %14, align 4, !tbaa !108
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setutf8(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  tail call void @Perl_safesysfree(ptr noundef %4) #27
  store ptr null, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  store i64 -1, ptr %5, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @S_restore_magic(ptr noundef %0) #2 !prof !175 !PGOFuncName !176 {
  %2 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %3 = ptrtoint ptr %0 to i64
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7, !prof !165

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = and i32 %9, 255
  %11 = icmp ugt i32 %10, 6
  br i1 %11, label %12, label %25, !prof !148

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.xpvmg, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !166

17:                                               ; preds = %12
  %18 = and i32 %9, -524289
  store i32 %18, ptr %8, align 4, !tbaa !108
  %19 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !167

22:                                               ; preds = %17
  %23 = or i32 %20, %18
  store i32 %23, ptr %8, align 4, !tbaa !108
  br label %25

24:                                               ; preds = %17
  tail call void @Perl_mg_magical(ptr noundef nonnull %5)
  br label %25

25:                                               ; preds = %22, %24, %12, %7
  %26 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !155, !range !168, !noundef !169
  %28 = icmp eq i8 %27, 0
  store ptr null, ptr %4, align 8, !tbaa !149
  %29 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %30 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !154
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %43, !prof !170

33:                                               ; preds = %25
  %34 = add nsw i32 %29, -3
  store i32 %34, ptr @PL_savestack_ix, align 4, !tbaa !153
  %35 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %36 = add nsw i32 %29, -4
  store i32 %36, ptr @PL_savestack_ix, align 4, !tbaa !153
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %union.any, ptr %35, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !115
  %40 = lshr i64 %39, 6
  %41 = trunc i64 %40 to i32
  %42 = sub i32 %36, %41
  store i32 %42, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %43

43:                                               ; preds = %33, %25
  br i1 %28, label %54, label %44, !prof !171

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !147
  switch i32 %46, label %51 [
    i32 1, label %47
    i32 0, label %53
  ], !prof !172

47:                                               ; preds = %44
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %5) #27
  %49 = load i32, ptr %8, align 4, !tbaa !108
  %50 = and i32 %49, -524289
  store i32 %50, ptr %8, align 4, !tbaa !108
  br label %54

51:                                               ; preds = %44
  %52 = add i32 %46, -1
  store i32 %52, ptr %45, align 8, !tbaa !147
  br label %54

53:                                               ; preds = %44
  tail call void @Perl_sv_free2(ptr noundef nonnull %5, i32 noundef %46) #27
  br label %54

54:                                               ; preds = %53, %51, %43, %47, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_mg_set(ptr noundef %0) local_unnamed_addr #5 !prof !177 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #27
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %5, label %19, !prof !178

5:                                                ; preds = %1
  %6 = load ptr, ptr @PL_defgv, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !142

11:                                               ; preds = %5
  %12 = tail call ptr @Perl_gv_add_by_type(ptr noundef %6, i32 noundef 0) #27
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi ptr [ %14, %11 ], [ %8, %5 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %133, label %19, !prof !142

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !147
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25, !prof !148

23:                                               ; preds = %19
  %24 = add i32 %21, 1
  store i32 %24, ptr %20, align 8, !tbaa !147
  br label %25

25:                                               ; preds = %19, %23
  %26 = sext i32 %2 to i64
  %27 = inttoptr i64 %26 to ptr
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_restore_magic, ptr noundef %27) #27
  %28 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %29 = getelementptr inbounds i8, ptr %28, i64 %26
  store ptr %0, ptr %29, align 8, !tbaa !149
  %30 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !108
  %32 = and i32 %31, 148963328
  %33 = getelementptr inbounds %struct.magic_state, ptr %29, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !152
  %34 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %35 = getelementptr inbounds %struct.magic_state, ptr %29, i64 0, i32 1
  store i32 %34, ptr %35, align 8, !tbaa !154
  %36 = getelementptr inbounds %struct.magic_state, ptr %29, i64 0, i32 3
  %37 = zext i1 %22 to i8
  store i8 %37, ptr %36, align 8, !tbaa !155
  %38 = and i32 %31, -140574721
  store i32 %38, ptr %30, align 4, !tbaa !108
  %39 = load ptr, ptr %0, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.xpvmg, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43, !prof !179

43:                                               ; preds = %25, %79
  %44 = phi ptr [ %47, %79 ], [ %41, %25 ]
  %45 = getelementptr inbounds %struct.magic, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !117
  %47 = load ptr, ptr %44, align 8, !tbaa !131
  %48 = getelementptr inbounds %struct.magic, ptr %44, i64 0, i32 4
  %49 = load i8, ptr %48, align 1, !tbaa !125
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52, !prof !180

52:                                               ; preds = %43
  %53 = and i8 %49, -5
  store i8 %53, ptr %48, align 1, !tbaa !125
  %54 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %55 = getelementptr inbounds i8, ptr %54, i64 %26
  %56 = getelementptr inbounds %struct.magic_state, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !152
  %58 = and i32 %57, -14680065
  store i32 %58, ptr %56, align 4, !tbaa !152
  br label %59

59:                                               ; preds = %52, %43
  %60 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %71, !prof !178

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.magic, ptr %44, i64 0, i32 3
  %64 = load i8, ptr %63, align 2, !tbaa !146
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [256 x i8], ptr @PL_magic_data, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !115
  %68 = icmp slt i8 %67, 0
  %69 = icmp eq ptr %46, null
  %70 = select i1 %68, i1 true, i1 %69, !prof !142
  br i1 %70, label %79, label %73, !prof !142

71:                                               ; preds = %59
  %72 = icmp eq ptr %46, null
  br i1 %72, label %79, label %73, !prof !181

73:                                               ; preds = %62, %71
  %74 = getelementptr inbounds %struct.mgvtbl, ptr %46, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !127
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77, !prof !182

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef nonnull %0, ptr noundef nonnull %44) #27, !prof !183
  br label %79

79:                                               ; preds = %73, %71, %77, %62
  %80 = icmp eq ptr %47, null
  br i1 %80, label %81, label %43, !prof !184, !llvm.loop !185

81:                                               ; preds = %79, %25
  %82 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %83 = getelementptr inbounds i8, ptr %82, i64 %26
  %84 = load ptr, ptr %83, align 8, !tbaa !149
  %85 = icmp eq ptr %84, null
  br i1 %85, label %133, label %86, !prof !165

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !108
  %89 = and i32 %88, 255
  %90 = icmp ugt i32 %89, 6
  br i1 %90, label %91, label %104, !prof !148

91:                                               ; preds = %86
  %92 = load ptr, ptr %84, align 8, !tbaa !114
  %93 = getelementptr inbounds %struct.xpvmg, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !115
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96, !prof !166

96:                                               ; preds = %91
  %97 = and i32 %88, -524289
  store i32 %97, ptr %87, align 4, !tbaa !108
  %98 = getelementptr inbounds %struct.magic_state, ptr %83, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !152
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101, !prof !167

101:                                              ; preds = %96
  %102 = or i32 %99, %97
  store i32 %102, ptr %87, align 4, !tbaa !108
  br label %104

103:                                              ; preds = %96
  tail call void @Perl_mg_magical(ptr noundef nonnull %84)
  br label %104

104:                                              ; preds = %103, %101, %91, %86
  %105 = getelementptr inbounds %struct.magic_state, ptr %83, i64 0, i32 3
  %106 = load i8, ptr %105, align 8, !tbaa !155, !range !168, !noundef !169
  %107 = icmp eq i8 %106, 0
  store ptr null, ptr %83, align 8, !tbaa !149
  %108 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %109 = getelementptr inbounds %struct.magic_state, ptr %83, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !154
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %122, !prof !170

112:                                              ; preds = %104
  %113 = add nsw i32 %108, -3
  store i32 %113, ptr @PL_savestack_ix, align 4, !tbaa !153
  %114 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %115 = add nsw i32 %108, -4
  store i32 %115, ptr @PL_savestack_ix, align 4, !tbaa !153
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %union.any, ptr %114, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !115
  %119 = lshr i64 %118, 6
  %120 = trunc i64 %119 to i32
  %121 = sub i32 %115, %120
  store i32 %121, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %122

122:                                              ; preds = %112, %104
  br i1 %107, label %133, label %123, !prof !171

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !147
  switch i32 %125, label %130 [
    i32 1, label %126
    i32 0, label %132
  ], !prof !172

126:                                              ; preds = %123
  %127 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %84) #27
  %128 = load i32, ptr %87, align 4, !tbaa !108
  %129 = and i32 %128, -524289
  store i32 %129, ptr %87, align 4, !tbaa !108
  br label %133

130:                                              ; preds = %123
  %131 = add i32 %125, -1
  store i32 %131, ptr %124, align 8, !tbaa !147
  br label %133

132:                                              ; preds = %123
  tail call void @Perl_sv_free2(ptr noundef nonnull %84, i32 noundef %125) #27
  br label %133

133:                                              ; preds = %132, %130, %126, %122, %81, %15
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_mg_length(ptr noundef %0) local_unnamed_addr #4 !prof !173 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvmg, ptr %3, i64 0, i32 1
  br label %5

5:                                                ; preds = %27, %1
  %6 = phi ptr [ %4, %1 ], [ %8, %27 ]
  %7 = phi i32 [ undef, %1 ], [ %28, %27 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mgvtbl, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #27
  tail call fastcc void @S_save_magic_flags(i32 noundef %19, ptr noundef nonnull %0, i32 noundef 14680064)
  %20 = load ptr, ptr %15, align 8, !tbaa !186
  %21 = tail call i32 %20(ptr noundef nonnull %0, ptr noundef nonnull %8) #27
  %22 = zext i32 %21 to i64
  store i64 %22, ptr %2, align 8, !tbaa !187
  %23 = sext i32 %19 to i64
  %24 = inttoptr i64 %23 to ptr
  tail call void @S_restore_magic(ptr noundef %24)
  %25 = load i64, ptr %2, align 8, !tbaa !187
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %10, %14, %18
  %28 = phi i32 [ %26, %18 ], [ %7, %14 ], [ %7, %10 ]
  %29 = phi i1 [ false, %18 ], [ true, %14 ], [ true, %10 ]
  br i1 %29, label %5, label %44, !llvm.loop !188

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !108
  %33 = and i32 %32, 2098176
  %34 = icmp eq i32 %33, 1024
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 8, !tbaa !114
  %37 = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !189
  store i64 %38, ptr %2, align 8, !tbaa !187
  br label %41

39:                                               ; preds = %30
  %40 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #27
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, ptr %2, align 8, !tbaa !187
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %27, %41
  %45 = phi i32 [ %43, %41 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %45
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_mg_size(ptr noundef %0) local_unnamed_addr #4 !prof !175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  br label %4

4:                                                ; preds = %23, %1
  %5 = phi ptr [ %3, %1 ], [ %7, %23 ]
  %6 = phi i32 [ undef, %1 ], [ %24, %23 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9, !prof !191

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13, !prof !192

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mgvtbl, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !186
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !193

17:                                               ; preds = %13
  %18 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #27
  tail call fastcc void @S_save_magic_flags(i32 noundef %18, ptr noundef nonnull %0, i32 noundef 14680064)
  %19 = load ptr, ptr %14, align 8, !tbaa !186
  %20 = tail call i32 %19(ptr noundef nonnull %0, ptr noundef nonnull %7) #27
  %21 = sext i32 %18 to i64
  %22 = inttoptr i64 %21 to ptr
  tail call void @S_restore_magic(ptr noundef %22)
  br label %23

23:                                               ; preds = %9, %13, %17
  %24 = phi i32 [ %20, %17 ], [ %6, %13 ], [ %6, %9 ]
  %25 = phi i1 [ false, %17 ], [ true, %13 ], [ true, %9 ]
  br i1 %25, label %4, label %37, !prof !193, !llvm.loop !194

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !108
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %31, label %36, !prof !193

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !195
  %33 = getelementptr inbounds %struct.xpvav, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !197
  %35 = trunc i64 %34 to i32
  br label %37

36:                                               ; preds = %26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str) #27
  br label %37

37:                                               ; preds = %23, %36, %31
  %38 = phi i32 [ %35, %31 ], [ 0, %36 ], [ %24, %23 ]
  ret i32 %38
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_mg_clear(ptr noundef %0) local_unnamed_addr #5 !prof !199 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #27
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !147
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8, !prof !148

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  store i32 %7, ptr %3, align 8, !tbaa !147
  br label %8

8:                                                ; preds = %1, %6
  %9 = sext i32 %2 to i64
  %10 = inttoptr i64 %9 to ptr
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_restore_magic, ptr noundef %10) #27
  %11 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %12 = getelementptr inbounds i8, ptr %11, i64 %9
  store ptr %0, ptr %12, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !108
  %15 = and i32 %14, 148963328
  %16 = getelementptr inbounds %struct.magic_state, ptr %12, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !152
  %17 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %18 = getelementptr inbounds %struct.magic_state, ptr %12, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !154
  %19 = getelementptr inbounds %struct.magic_state, ptr %12, i64 0, i32 3
  %20 = zext i1 %5 to i8
  store i8 %20, ptr %19, align 8, !tbaa !155
  %21 = and i32 %14, -148963329
  store i32 %21, ptr %13, align 4, !tbaa !108
  %22 = load ptr, ptr %0, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.xpvmg, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26, !prof !200

26:                                               ; preds = %8, %38
  %27 = phi ptr [ %30, %38 ], [ %24, %8 ]
  %28 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = load ptr, ptr %27, align 8, !tbaa !131
  %31 = icmp eq ptr %29, null
  br i1 %31, label %38, label %32, !prof !201

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mgvtbl, ptr %29, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !129
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !201

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef nonnull %0, ptr noundef nonnull %27) #27, !prof !202
  br label %38

38:                                               ; preds = %36, %32, %26
  %39 = icmp eq ptr %30, null
  br i1 %39, label %40, label %26, !prof !203, !llvm.loop !204

40:                                               ; preds = %38, %8
  %41 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %42 = getelementptr inbounds i8, ptr %41, i64 %9
  %43 = load ptr, ptr %42, align 8, !tbaa !149
  %44 = icmp eq ptr %43, null
  br i1 %44, label %92, label %45, !prof !165

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !108
  %48 = and i32 %47, 255
  %49 = icmp ugt i32 %48, 6
  br i1 %49, label %50, label %63, !prof !148

50:                                               ; preds = %45
  %51 = load ptr, ptr %43, align 8, !tbaa !114
  %52 = getelementptr inbounds %struct.xpvmg, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55, !prof !166

55:                                               ; preds = %50
  %56 = and i32 %47, -524289
  store i32 %56, ptr %46, align 4, !tbaa !108
  %57 = getelementptr inbounds %struct.magic_state, ptr %42, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !167

60:                                               ; preds = %55
  %61 = or i32 %58, %56
  store i32 %61, ptr %46, align 4, !tbaa !108
  br label %63

62:                                               ; preds = %55
  tail call void @Perl_mg_magical(ptr noundef nonnull %43)
  br label %63

63:                                               ; preds = %62, %60, %50, %45
  %64 = getelementptr inbounds %struct.magic_state, ptr %42, i64 0, i32 3
  %65 = load i8, ptr %64, align 8, !tbaa !155, !range !168, !noundef !169
  %66 = icmp eq i8 %65, 0
  store ptr null, ptr %42, align 8, !tbaa !149
  %67 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %68 = getelementptr inbounds %struct.magic_state, ptr %42, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !154
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %81, !prof !170

71:                                               ; preds = %63
  %72 = add nsw i32 %67, -3
  store i32 %72, ptr @PL_savestack_ix, align 4, !tbaa !153
  %73 = load ptr, ptr @PL_savestack, align 8, !tbaa !139
  %74 = add nsw i32 %67, -4
  store i32 %74, ptr @PL_savestack_ix, align 4, !tbaa !153
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %union.any, ptr %73, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !115
  %78 = lshr i64 %77, 6
  %79 = trunc i64 %78 to i32
  %80 = sub i32 %74, %79
  store i32 %80, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %81

81:                                               ; preds = %71, %63
  br i1 %66, label %92, label %82, !prof !171

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !147
  switch i32 %84, label %89 [
    i32 1, label %85
    i32 0, label %91
  ], !prof !172

85:                                               ; preds = %82
  %86 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %43) #27
  %87 = load i32, ptr %46, align 4, !tbaa !108
  %88 = and i32 %87, -524289
  store i32 %88, ptr %46, align 4, !tbaa !108
  br label %92

89:                                               ; preds = %82
  %90 = add i32 %84, -1
  store i32 %90, ptr %83, align 8, !tbaa !147
  br label %92

91:                                               ; preds = %82
  tail call void @Perl_sv_free2(ptr noundef nonnull %43, i32 noundef %84) #27
  br label %92

92:                                               ; preds = %40, %81, %85, %89, %91
  ret i32 0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_mg_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !205 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4, !prof !206

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.xpvmg, ptr %5, i64 0, i32 1
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !207

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.magic, ptr %9, i64 0, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !146
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7, !prof !208, !llvm.loop !209

16:                                               ; preds = %7, %11, %2
  %17 = phi ptr [ null, %2 ], [ %9, %11 ], [ null, %7 ]
  ret ptr %17
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_mg_findext(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #7 !prof !173 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.xpvmg, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5, %20
  %11 = phi ptr [ %21, %20 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !146
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %10
  %21 = load ptr, ptr %11, align 8, !tbaa !115
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !209

23:                                               ; preds = %16, %20, %5, %3
  %24 = phi ptr [ null, %3 ], [ null, %5 ], [ null, %20 ], [ %11, %16 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mg_find_mglob(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !210 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %15, !prof !211

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.xpvlv, ptr %7, i64 0, i32 9
  %9 = load i8, ptr %8, align 8, !tbaa !212
  %10 = icmp eq i8 %9, 121
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %0)
  %12 = load ptr, ptr %0, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.xpvlv, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !214
  br label %15

15:                                               ; preds = %11, %6, %1
  %16 = phi ptr [ %14, %11 ], [ %0, %6 ], [ %0, %1 ]
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = and i32 %18, 255
  %20 = icmp ugt i32 %19, 6
  br i1 %20, label %21, label %34, !prof !215

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.xpvmg, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !prof !216

26:                                               ; preds = %21, %30
  %27 = phi ptr [ %28, %30 ], [ %23, %21 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !217

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 3
  %32 = load i8, ptr %31, align 2, !tbaa !146
  %33 = icmp eq i8 %32, 103
  br i1 %33, label %34, label %26, !prof !218, !llvm.loop !209

34:                                               ; preds = %26, %30, %15, %21
  %35 = phi ptr [ null, %21 ], [ null, %15 ], [ %28, %30 ], [ %28, %26 ]
  ret ptr %35
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_vivify_defelem(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !173 {
  %2 = load ptr, ptr %0, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !219
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %115, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !146
  %15 = icmp eq i8 %14, 121
  br i1 %15, label %16, label %8, !llvm.loop !209

16:                                               ; preds = %12, %8
  %17 = phi ptr [ null, %8 ], [ %10, %12 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %115, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.magic, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !220
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !214
  %26 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef nonnull %21, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %30, %28 ], [ null, %23 ]
  %33 = icmp eq ptr %32, null
  %34 = icmp eq ptr %32, @PL_sv_undef
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %31
  %37 = load ptr, ptr %20, align 8, !tbaa !220
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %37) #27
  br label %79

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 6
  %40 = load i64, ptr %39, align 8, !tbaa !115
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_aelem, i64 noundef %40) #27
  br label %79

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !214
  %46 = and i64 %4, 2147483648
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !108
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @Perl_mg_size(ptr noundef %45)
  %55 = sext i32 %54 to i64
  br label %60

56:                                               ; preds = %48
  %57 = load ptr, ptr %45, align 8, !tbaa !195
  %58 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !197
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i64 [ %55, %53 ], [ %59, %56 ]
  %62 = icmp sgt i64 %40, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 8, !tbaa !114
  %65 = getelementptr inbounds %struct.xpvlv, ptr %64, i64 0, i32 8
  store ptr null, ptr %65, align 8, !tbaa !214
  br label %79

66:                                               ; preds = %60, %43
  %67 = load ptr, ptr %0, align 8, !tbaa !114
  %68 = getelementptr inbounds %struct.xpvlv, ptr %67, i64 0, i32 6
  %69 = load i64, ptr %68, align 8, !tbaa !115
  %70 = tail call ptr @Perl_av_fetch(ptr noundef %45, i64 noundef %69, i32 noundef 1) #27
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %70, align 8, !tbaa !139
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %66
  %76 = load ptr, ptr %0, align 8, !tbaa !114
  %77 = getelementptr inbounds %struct.xpvlv, ptr %76, i64 0, i32 6
  %78 = load i64, ptr %77, align 8, !tbaa !115
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_aelem, i64 noundef %78) #27
  br label %79

79:                                               ; preds = %63, %75, %72, %36, %31, %42
  %80 = phi ptr [ null, %42 ], [ %32, %31 ], [ %32, %36 ], [ null, %63 ], [ %73, %72 ], [ null, %75 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !147
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !147
  br label %86

86:                                               ; preds = %82, %79
  %87 = load ptr, ptr %0, align 8, !tbaa !114
  %88 = getelementptr inbounds %struct.xpvlv, ptr %87, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !214
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !147
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = add i32 %93, -1
  store i32 %96, ptr %92, align 8, !tbaa !147
  br label %98

97:                                               ; preds = %91
  tail call void @Perl_sv_free2(ptr noundef nonnull %89, i32 noundef %93) #27
  br label %98

98:                                               ; preds = %86, %95, %97
  %99 = load ptr, ptr %0, align 8, !tbaa !114
  %100 = getelementptr inbounds %struct.xpvlv, ptr %99, i64 0, i32 8
  store ptr %80, ptr %100, align 8, !tbaa !214
  %101 = getelementptr inbounds %struct.xpvlv, ptr %99, i64 0, i32 7
  store i64 0, ptr %101, align 8, !tbaa !219
  %102 = load ptr, ptr %20, align 8, !tbaa !220
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !147
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = add i32 %106, -1
  store i32 %109, ptr %105, align 8, !tbaa !147
  br label %111

110:                                              ; preds = %104
  tail call void @Perl_sv_free2(ptr noundef nonnull %102, i32 noundef %106) #27
  br label %111

111:                                              ; preds = %98, %108, %110
  store ptr null, ptr %20, align 8, !tbaa !220
  %112 = getelementptr inbounds %struct.magic, ptr %17, i64 0, i32 4
  %113 = load i8, ptr %112, align 1, !tbaa !125
  %114 = and i8 %113, -3
  store i8 %114, ptr %112, align 1, !tbaa !125
  br label %115

115:                                              ; preds = %1, %16, %111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !221 {
  %5 = load ptr, ptr %0, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.xpvmg, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9, !prof !222

9:                                                ; preds = %4, %55
  %10 = phi ptr [ %57, %55 ], [ %7, %4 ]
  %11 = phi i32 [ %56, %55 ], [ 0, %4 ]
  %12 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !125
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16, !prof !223

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.mgvtbl, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  %24 = add nsw i32 %23, %11
  br label %55

25:                                               ; preds = %16, %9
  %26 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %27 = load i8, ptr %26, align 2, !tbaa !146
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !153
  %31 = and i32 %30, 16400
  %32 = icmp eq i32 %31, 16400
  %33 = icmp ne i8 %27, 85
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %55, !prof !223

35:                                               ; preds = %25
  switch i8 %27, label %47 [
    i8 80, label %36
    i8 68, label %43
  ], !prof !225

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !220
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %50, !prof !226

40:                                               ; preds = %36
  %41 = tail call ptr @Perl_newRV(ptr noundef nonnull %0) #27
  %42 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #27
  br label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !220
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35, %43
  %48 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !220
  br label %50

50:                                               ; preds = %43, %36, %47, %40
  %51 = phi ptr [ %42, %40 ], [ %49, %47 ], [ %38, %36 ], [ %0, %43 ]
  %52 = add i8 %27, 32
  %53 = zext i8 %52 to i32
  tail call void @Perl_sv_magic(ptr noundef %1, ptr noundef %51, i32 noundef %53, ptr noundef %2, i32 noundef %3) #27
  %54 = add nsw i32 %11, 1
  br label %55

55:                                               ; preds = %25, %50, %22
  %56 = phi i32 [ %24, %22 ], [ %54, %50 ], [ %11, %25 ]
  %57 = load ptr, ptr %10, align 8, !tbaa !115
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %9, !prof !227, !llvm.loop !228

59:                                               ; preds = %55, %4
  %60 = phi i32 [ 0, %4 ], [ %56, %55 ]
  ret i32 %60
}

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mg_localize(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 !prof !229 {
  %4 = load ptr, ptr @PL_defgv, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.gv, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !142

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_gv_add_by_type(ptr noundef %4, i32 noundef 0) #27
  %11 = getelementptr inbounds %struct.gv, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi ptr [ %12, %9 ], [ %6, %3 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %85, label %17, !prof !142

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22, !prof !230

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %22, %61
  %26 = phi ptr [ %20, %22 ], [ %62, %61 ]
  %27 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !146
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], ptr @PL_magic_data, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !115
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %35, label %61, !prof !231

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 4
  %37 = load i8, ptr %36, align 1, !tbaa !125
  %38 = and i8 %37, 32
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40, !prof !231

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mgvtbl, ptr %28, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !232
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef %1, ptr noundef nonnull %26) #27
  br label %56

46:                                               ; preds = %40, %35
  %47 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !220
  %49 = sext i8 %30 to i32
  %50 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !163
  %52 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !164
  %54 = trunc i64 %53 to i32
  %55 = tail call ptr @Perl_sv_magicext(ptr noundef %1, ptr noundef %48, i32 noundef %49, ptr noundef %28, ptr noundef %51, i32 noundef %54) #27
  br label %56

56:                                               ; preds = %46, %44
  %57 = load i32, ptr %23, align 4, !tbaa !108
  %58 = and i32 %57, 134283264
  %59 = load i32, ptr %24, align 4, !tbaa !108
  %60 = or i32 %59, %58
  store i32 %60, ptr %24, align 4, !tbaa !108
  br label %61

61:                                               ; preds = %25, %56
  %62 = load ptr, ptr %26, align 8, !tbaa !115
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %25, !prof !233, !llvm.loop !234

64:                                               ; preds = %61, %17
  %65 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !108
  %67 = and i32 %66, 255
  %68 = icmp ugt i32 %67, 6
  br i1 %68, label %69, label %85, !prof !231

69:                                               ; preds = %64
  %70 = load ptr, ptr %1, align 8, !tbaa !114
  %71 = getelementptr inbounds %struct.xpvmg, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !115
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %74, !prof !142

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !108
  %77 = and i32 %76, 14680064
  %78 = or i32 %77, %66
  store i32 %78, ptr %65, align 4, !tbaa !108
  br i1 %2, label %79, label %85, !prof !231

79:                                               ; preds = %74
  store i8 1, ptr @PL_localizing, align 1, !tbaa !115
  %80 = and i32 %78, 4194304
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !142

82:                                               ; preds = %79
  %83 = tail call i32 @Perl_mg_set(ptr noundef nonnull %1)
  br label %84

84:                                               ; preds = %79, %82
  store i8 0, ptr @PL_localizing, align 1, !tbaa !115
  br label %85

85:                                               ; preds = %64, %69, %84, %74, %13
  ret void
}

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_mg_free(ptr noundef %0) local_unnamed_addr #5 !prof !235 {
  %2 = load ptr, ptr %0, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !236

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  tail call fastcc void @S_mg_free_struct(ptr noundef nonnull %0, ptr noundef nonnull %7)
  %9 = load ptr, ptr %0, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.xpvmg, ptr %9, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !115
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %6, !prof !237, !llvm.loop !238

12:                                               ; preds = %6, %1
  %13 = load ptr, ptr %0, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.xpvmg, ptr %13, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !108
  %17 = and i32 %16, -14680065
  store i32 %17, ptr %15, align 4, !tbaa !108
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_mg_free_struct(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !239 !PGOFuncName !240 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !241

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mgvtbl, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !242
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !243

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #27
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16, !prof !244

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !146
  %19 = icmp eq i8 %18, 103
  br i1 %19, label %36, label %20, !prof !245

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !164
  %23 = icmp sgt i64 %22, 0
  %24 = icmp eq i8 %18, 119
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %27, !prof !246

26:                                               ; preds = %20
  tail call void @Perl_safesysfree(ptr noundef nonnull %14) #27
  br label %36

27:                                               ; preds = %20
  %28 = icmp eq i64 %22, -2
  br i1 %28, label %29, label %36, !prof !247

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !147
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %35, !prof !248

33:                                               ; preds = %29
  %34 = add i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !147
  br label %36

35:                                               ; preds = %29
  tail call void @Perl_sv_free2(ptr noundef nonnull %14, i32 noundef %31) #27
  br label %36

36:                                               ; preds = %35, %33, %26, %27, %16, %12
  %37 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %38 = load i8, ptr %37, align 1, !tbaa !125
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41, !prof !249

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !220
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45, !prof !250

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !147
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51, !prof !251

49:                                               ; preds = %45
  %50 = add i32 %47, -1
  store i32 %50, ptr %46, align 8, !tbaa !147
  br label %52

51:                                               ; preds = %45
  tail call void @Perl_sv_free2(ptr noundef nonnull %43, i32 noundef %47) #27
  br label %52

52:                                               ; preds = %51, %49, %41, %36
  tail call void @Perl_safesysfree(ptr noundef %1) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_mg_free_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvmg, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2, %25
  %8 = phi ptr [ %10, %25 ], [ %5, %2 ]
  %9 = phi ptr [ %26, %25 ], [ null, %2 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 3
  %12 = load i8, ptr %11, align 2, !tbaa !146
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = icmp eq ptr %9, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  store ptr %10, ptr %9, align 8, !tbaa !131
  %18 = load ptr, ptr %0, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  store ptr %20, ptr %8, align 8, !tbaa !131
  store ptr %8, ptr %19, align 8, !tbaa !115
  br label %21

21:                                               ; preds = %17, %15
  %22 = load ptr, ptr %8, align 8, !tbaa !131
  tail call fastcc void @S_mg_free_struct(ptr noundef nonnull %0, ptr noundef nonnull %8)
  %23 = load ptr, ptr %0, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.xpvmg, ptr %23, i64 0, i32 1
  store ptr %22, ptr %24, align 8, !tbaa !115
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi ptr [ %9, %21 ], [ %8, %7 ]
  %27 = icmp eq ptr %10, null
  br i1 %27, label %28, label %7, !llvm.loop !252

28:                                               ; preds = %25, %2
  tail call void @Perl_mg_magical(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_magic_regdata_cnt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !173 {
  %3 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !253
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !220
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.p5rx, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  br i1 %12, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.regexp, ptr %14, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !255
  br label %40

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.regexp, ptr %14, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !257
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.regexp, ptr %14, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !258
  %25 = zext nneg i32 %20 to i64
  br label %26

26:                                               ; preds = %22, %35
  %27 = phi i64 [ %25, %22 ], [ %36, %35 ]
  %28 = getelementptr inbounds %struct.regexp_paren_pair, ptr %24, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !259
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.regexp_paren_pair, ptr %24, i64 %27, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !261
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %26, %31
  %36 = add nsw i64 %27, -1
  %37 = icmp sgt i64 %27, 0
  br i1 %37, label %26, label %40, !llvm.loop !262

38:                                               ; preds = %31
  %39 = trunc i64 %27 to i32
  br label %40

40:                                               ; preds = %38, %35, %18, %5, %15
  %41 = phi i32 [ %17, %15 ], [ undef, %5 ], [ %20, %18 ], [ %39, %38 ], [ -1, %35 ]
  br i1 %8, label %42, label %43

42:                                               ; preds = %40, %2
  br label %43

43:                                               ; preds = %40, %42
  %44 = phi i32 [ %41, %40 ], [ -1, %42 ]
  ret i32 %44
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_regdatum_get(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !253
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !164
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.p5rx, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 12
  %18 = load i32, ptr %17, align 8, !tbaa !255
  %19 = icmp slt i32 %18, %12
  br i1 %19, label %56, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !258
  %23 = and i64 %11, 4294967295
  %24 = getelementptr inbounds %struct.regexp_paren_pair, ptr %22, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !259
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %56, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.regexp_paren_pair, ptr %22, i64 %23, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !261
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %56, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !220
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, i64 %25, i64 %29
  %36 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !263
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !264
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 22
  %46 = load i64, ptr %45, align 8, !tbaa !265
  %47 = getelementptr inbounds %struct.regexp, ptr %16, i64 0, i32 21
  %48 = load i64, ptr %47, align 8, !tbaa !266
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8, ptr %42, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 %35
  %52 = tail call i64 @Perl_utf8_length(ptr noundef nonnull %42, ptr noundef nonnull %51) #27
  %53 = add i64 %52, %46
  br label %54

54:                                               ; preds = %40, %44, %31
  %55 = phi i64 [ %35, %31 ], [ %53, %44 ], [ %35, %40 ]
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %55) #27
  br label %57

56:                                               ; preds = %27, %20, %14, %5, %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #27
  br label %57

57:                                               ; preds = %9, %54, %56
  ret i32 0
}

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_regdatum_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  tail call void @Perl_croak_no_modify() #27
  ret i32 0
}

declare void @Perl_croak_no_modify() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_emulate_cop_io(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !267
  %5 = and i32 %4, 786432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %1, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %27

8:                                                ; preds = %2
  tail call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef 0) #27
  %9 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !108
  %11 = and i32 %10, -536870913
  store i32 %11, ptr %9, align 4, !tbaa !108
  %12 = load i32, ptr %3, align 8, !tbaa !267
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !269
  %18 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %17, ptr noundef nonnull @.str.2, i64 noundef 5, i32 noundef 0, i32 noundef 0) #27
  tail call void @Perl_sv_catsv_flags(ptr noundef %1, ptr noundef %18, i32 noundef 2) #27
  br label %19

19:                                               ; preds = %15, %8
  tail call void @Perl_sv_catpvn_flags(ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 2) #27
  %20 = load i32, ptr %3, align 8, !tbaa !267
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !269
  %26 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %25, ptr noundef nonnull @.str.4, i64 noundef 5, i32 noundef 0, i32 noundef 0) #27
  tail call void @Perl_sv_catsv_flags(ptr noundef %1, ptr noundef %26, i32 noundef 2) #27
  br label %27

27:                                               ; preds = %19, %23, %7
  ret void
}

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl__get_encoding() local_unnamed_addr #4 !prof !173 {
  %1 = load ptr, ptr @PL_encoding, align 8, !tbaa !139
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !139
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.cop, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !269
  %10 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %9, ptr noundef nonnull @.str.5, i64 noundef 8, i32 noundef 0, i32 noundef 0) #27
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %10, @PL_sv_placeholder
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !108
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = and i32 %16, 2097408
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !115
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %22
  %31 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !139
  br label %32

32:                                               ; preds = %27, %6, %14, %22, %3, %0, %30
  %33 = phi ptr [ %31, %30 ], [ %1, %0 ], [ null, %3 ], [ null, %22 ], [ null, %14 ], [ null, %6 ], [ null, %27 ]
  ret ptr %33
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @Perl_magic_get(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !270 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %27, !prof !271

7:                                                ; preds = %2
  %8 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10, !prof !272

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !164
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.pmop, ptr %8, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !253
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !273

17:                                               ; preds = %340, %326, %10
  %18 = phi ptr [ %338, %340 ], [ %324, %326 ], [ %15, %10 ]
  %19 = phi i32 [ %344, %340 ], [ %330, %326 ], [ %13, %10 ]
  %20 = getelementptr inbounds %struct.p5rx, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.regexp, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  %24 = getelementptr inbounds %struct.regexp_engine, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !275
  tail call void %25(ptr noundef nonnull %18, i32 noundef %19, ptr noundef %0) #27, !prof !277
  br label %550

26:                                               ; preds = %10, %7
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %550

27:                                               ; preds = %2
  %28 = load i8, ptr %5, align 1, !tbaa !115
  %29 = load i8, ptr %4, align 1, !tbaa !115
  switch i8 %29, label %550 [
    i8 1, label %30
    i8 3, label %56
    i8 4, label %67
    i8 5, label %71
    i8 33, label %82
    i8 6, label %133
    i8 7, label %136
    i8 8, label %145
    i8 9, label %148
    i8 12, label %150
    i8 15, label %218
    i8 16, label %229
    i8 19, label %232
    i8 20, label %254
    i8 21, label %273
    i8 23, label %291
    i8 43, label %319
    i8 14, label %333
    i8 46, label %347
    i8 63, label %368
    i8 94, label %371
    i8 126, label %395
    i8 61, label %420
    i8 45, label %441
    i8 37, label %462
    i8 41, label %547
    i8 40, label %544
    i8 91, label %483
    i8 124, label %484
    i8 92, label %508
    i8 36, label %513
    i8 60, label %538
    i8 62, label %541
  ], !prof !278

30:                                               ; preds = %27
  %31 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !139
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !108
  %34 = and i32 %33, 65280
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %33, 255
  %37 = icmp eq i32 %36, 8
  %38 = or i1 %35, %37
  %39 = and i32 %33, 16777471
  %40 = icmp eq i32 %39, 16777226
  %41 = or i1 %40, %38
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef %31, i32 noundef 2) #27
  br label %44

43:                                               ; preds = %30
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %44

44:                                               ; preds = %43, %42
  %45 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !139
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !108
  %48 = and i32 %47, 14680064
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %550, label %50

50:                                               ; preds = %44
  %51 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %45) #27
  %52 = load i8, ptr @PL_tainting, align 1, !range !168
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %550

55:                                               ; preds = %50
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #27
  br label %550

56:                                               ; preds = %27
  %57 = icmp eq i8 %28, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i8, ptr @PL_minus_c, align 1, !tbaa !279, !range !168, !noundef !169
  %60 = zext nneg i8 %59 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %60) #27
  br label %550

61:                                               ; preds = %56
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(18) @.str.6) #28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %550

64:                                               ; preds = %61
  %65 = load i32, ptr @PL_statusvalue_posix, align 4, !tbaa !153
  %66 = sext i32 %65 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %66) #27
  br label %550

67:                                               ; preds = %27
  %68 = load volatile i32, ptr @PL_debug, align 4, !tbaa !153
  %69 = and i32 %68, 134213631
  %70 = zext nneg i32 %69 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %70) #27
  br label %550

71:                                               ; preds = %27
  %72 = icmp eq i8 %28, 0
  br i1 %72, label %82, label %73, !prof !193

73:                                               ; preds = %71
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.7) #28
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = tail call ptr @Perl__get_encoding()
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %77, i32 noundef 1538) #27
  br label %550

78:                                               ; preds = %73
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.8) #28
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %550

81:                                               ; preds = %78
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #27
  br label %550

82:                                               ; preds = %71, %27
  %83 = tail call ptr @__errno_location() #29
  %84 = load i32, ptr %83, align 4, !tbaa !153
  %85 = sitofp i32 %84 to double
  tail call void @Perl_sv_setnv(ptr noundef %0, double noundef %85) #27
  %86 = load i32, ptr %83, align 4, !tbaa !153
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89, !prof !191

88:                                               ; preds = %82
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 0) #27
  br label %102

89:                                               ; preds = %82
  %90 = tail call ptr @Perl_my_strerror(i32 noundef %86) #27
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %90) #27
  %91 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !108
  %93 = and i32 %92, 65280
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 255
  %96 = icmp eq i32 %95, 8
  %97 = or i1 %94, %96
  %98 = and i32 %92, 16777471
  %99 = icmp eq i32 %98, 16777226
  %100 = or i1 %99, %97
  br i1 %100, label %101, label %102, !prof !193

101:                                              ; preds = %89
  tail call fastcc void @S_fixup_errno_string(ptr noundef %0)
  br label %102

102:                                              ; preds = %89, %101, %88
  store i32 %84, ptr %83, align 4, !tbaa !153
  %103 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !108
  %105 = and i32 %104, 1024
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %130, label %107, !prof !280

107:                                              ; preds = %102
  %108 = load ptr, ptr %0, align 8, !tbaa !114
  %109 = getelementptr inbounds %struct.xpv, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !189
  %111 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !115
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = icmp eq i64 %110, 0
  br i1 %114, label %127, label %115, !prof !281

115:                                              ; preds = %107, %124
  %116 = phi i64 [ %125, %124 ], [ %110, %107 ]
  %117 = getelementptr i8, ptr %113, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !115
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !153
  %122 = and i32 %121, 17408
  %123 = icmp eq i32 %122, 17408
  br i1 %123, label %124, label %127, !prof !192

124:                                              ; preds = %115
  %125 = add i64 %116, -1
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %115, !prof !282, !llvm.loop !283

127:                                              ; preds = %124, %115, %107
  %128 = phi i64 [ %110, %107 ], [ 0, %124 ], [ %116, %115 ]
  store i64 %128, ptr %109, align 8, !tbaa !189
  %129 = getelementptr inbounds i8, ptr %112, i64 %128
  store i8 0, ptr %129, align 1, !tbaa !115
  br label %130

130:                                              ; preds = %127, %102
  %131 = load i32, ptr %103, align 4, !tbaa !108
  %132 = or i32 %131, 8704
  store i32 %132, ptr %103, align 4, !tbaa !108
  br label %550

133:                                              ; preds = %27
  %134 = load i32, ptr @PL_maxsysfd, align 4, !tbaa !153
  %135 = sext i32 %134 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %135) #27
  br label %550

136:                                              ; preds = %27
  %137 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(12) @.str.9) #28
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %550

139:                                              ; preds = %136
  %140 = load i32, ptr @PL_phase, align 4, !tbaa !153
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x ptr], ptr @PL_phase_names, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !139
  %144 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143) #28
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %143, i64 noundef %144) #27
  br label %550

145:                                              ; preds = %27
  %146 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %147 = zext i32 %146 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %147) #27
  br label %550

148:                                              ; preds = %27
  %149 = load ptr, ptr @PL_inplace, align 8, !tbaa !139
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %149) #27
  br label %550

150:                                              ; preds = %27
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.10) #28
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %550

153:                                              ; preds = %150
  %154 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %155 = icmp eq ptr %154, null
  br i1 %155, label %217, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !108
  %159 = and i32 %158, 427886592
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  tail call void @Perl_sv_force_normal_flags(ptr noundef %0, i32 noundef 4) #27
  br label %162

162:                                              ; preds = %156, %161
  %163 = load i32, ptr %157, align 4, !tbaa !108
  %164 = and i32 %163, 255
  %165 = icmp ugt i32 %164, 2
  %166 = icmp eq i32 %164, 1
  %167 = or i1 %165, %166
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 1) #27
  br label %201

169:                                              ; preds = %162
  br i1 %165, label %170, label %201

170:                                              ; preds = %169
  %171 = load ptr, ptr %0, align 8, !tbaa !114
  %172 = getelementptr inbounds %struct.xpv, ptr %171, i64 0, i32 3
  %173 = load i64, ptr %172, align 8, !tbaa !115
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %196, label %175

175:                                              ; preds = %170
  %176 = and i32 %163, 33554432
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !115
  %181 = getelementptr inbounds i8, ptr %180, i64 -1
  %182 = load i8, ptr %181, align 1, !tbaa !115
  %183 = zext i8 %182 to i64
  %184 = icmp eq i8 %182, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = getelementptr inbounds i8, ptr %180, i64 -9
  %187 = load i64, ptr %186, align 1
  br label %188

188:                                              ; preds = %185, %178
  %189 = phi i64 [ %183, %178 ], [ %187, %185 ]
  %190 = sub i64 0, %189
  %191 = getelementptr inbounds i8, ptr %180, i64 %190
  store ptr %191, ptr %179, align 8, !tbaa !115
  %192 = and i32 %163, -33554433
  store i32 %192, ptr %157, align 4, !tbaa !108
  br label %193

193:                                              ; preds = %175, %188
  %194 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !115
  tail call void @Perl_safesysfree(ptr noundef %195) #27
  br label %196

196:                                              ; preds = %170, %193
  %197 = load ptr, ptr %0, align 8, !tbaa !114
  %198 = getelementptr inbounds %struct.xpv, ptr %197, i64 0, i32 3
  store i64 0, ptr %198, align 8, !tbaa !115
  %199 = load ptr, ptr %0, align 8, !tbaa !114
  %200 = getelementptr inbounds %struct.xpv, ptr %199, i64 0, i32 2
  store i64 0, ptr %200, align 8, !tbaa !189
  br label %201

201:                                              ; preds = %169, %196, %168
  %202 = load i32, ptr %157, align 4, !tbaa !108
  %203 = and i32 %202, 1610547455
  store i32 %203, ptr %157, align 4, !tbaa !108
  %204 = and i32 %202, 33554432
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = tail call i32 @Perl_sv_backoff(ptr noundef %0) #27
  br label %208

208:                                              ; preds = %206, %201
  %209 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %210 = getelementptr inbounds %struct.gv, ptr %209, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !284
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 8, !tbaa !284
  %213 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  store ptr %209, ptr %213, align 8, !tbaa !115
  %214 = load i32, ptr %157, align 4, !tbaa !108
  %215 = or i32 %214, 2048
  store i32 %215, ptr %157, align 4, !tbaa !108
  %216 = tail call ptr @Perl_sv_rvweaken(ptr noundef %0) #27
  br label %550

217:                                              ; preds = %153
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1536) #27
  br label %550

218:                                              ; preds = %27
  %219 = icmp eq i8 %28, 0
  br i1 %219, label %220, label %225, !prof !286

220:                                              ; preds = %218
  %221 = load ptr, ptr @PL_osname, align 8, !tbaa !139
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %221) #27
  %222 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %550, label %224, !prof !286

224:                                              ; preds = %220
  tail call void @Perl_sv_untaint(ptr noundef %0) #27
  br label %550

225:                                              ; preds = %218
  %226 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.11) #28
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %550

228:                                              ; preds = %225
  tail call void @Perl_emulate_cop_io(ptr noundef nonnull @PL_compiling, ptr noundef %0)
  br label %550

229:                                              ; preds = %27
  %230 = load i32, ptr @PL_perldb, align 4, !tbaa !153
  %231 = zext i32 %230 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %231) #27
  br label %550

232:                                              ; preds = %27
  %233 = load ptr, ptr @PL_parser, align 8, !tbaa !139
  %234 = icmp eq ptr %233, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.yy_parser, ptr %233, i64 0, i32 43
  %237 = load i8, ptr %236, align 2, !tbaa !287
  %238 = icmp eq i8 %237, 11
  br i1 %238, label %247, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !108
  %242 = and i32 %241, 1610547455
  store i32 %242, ptr %240, align 4, !tbaa !108
  %243 = and i32 %241, 33554432
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %550, label %245

245:                                              ; preds = %239
  %246 = tail call i32 @Perl_sv_backoff(ptr noundef %0) #27
  br label %550

247:                                              ; preds = %235, %232
  %248 = load i8, ptr @PL_in_eval, align 1, !tbaa !115
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = and i8 %248, -9
  %252 = zext i8 %251 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %252) #27
  br label %550

253:                                              ; preds = %247
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef 0) #27
  br label %550

254:                                              ; preds = %27
  %255 = icmp eq i8 %28, 0
  br i1 %255, label %256, label %258, !prof !192

256:                                              ; preds = %254
  %257 = load i64, ptr @PL_basetime, align 8, !tbaa !187
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %257) #27
  br label %550

258:                                              ; preds = %254
  %259 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.12) #28
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %550, !prof !193

261:                                              ; preds = %258
  %262 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %271, label %264, !prof !193

264:                                              ; preds = %261
  %265 = load i8, ptr @PL_taint_warn, align 1, !tbaa !279, !range !168, !noundef !169
  %266 = icmp ne i8 %265, 0
  %267 = load i8, ptr @PL_unsafe, align 1, !range !168
  %268 = icmp ne i8 %267, 0
  %269 = select i1 %266, i1 true, i1 %268
  %270 = select i1 %269, i64 -1, i64 1
  br label %271

271:                                              ; preds = %261, %264
  %272 = phi i64 [ %270, %264 ], [ 0, %261 ]
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %272) #27
  br label %550

273:                                              ; preds = %27
  %274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.13) #28
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, ptr @PL_unicode, align 4, !tbaa !153
  %278 = zext i32 %277 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %278) #27
  br label %550

279:                                              ; preds = %273
  %280 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(10) @.str.14) #28
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i8, ptr @PL_utf8locale, align 1, !tbaa !279, !range !168, !noundef !169
  %284 = zext nneg i8 %283 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %284) #27
  br label %550

285:                                              ; preds = %279
  %286 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.15) #28
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %550

288:                                              ; preds = %285
  %289 = load i8, ptr @PL_utf8cache, align 1, !tbaa !115
  %290 = sext i8 %289 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %290) #27
  br label %550

291:                                              ; preds = %27
  %292 = icmp eq i8 %28, 0
  br i1 %292, label %293, label %297, !prof !290

293:                                              ; preds = %291
  %294 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %295 = and i8 %294, 1
  %296 = zext nneg i8 %295 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %296) #27
  br label %550

297:                                              ; preds = %291
  %298 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(12) @.str.16) #28
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %550, !prof !291

300:                                              ; preds = %297
  %301 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  %302 = ptrtoint ptr %301 to i64
  switch i64 %302, label %316 [
    i64 16, label %303
    i64 0, label %304
    i64 8, label %305
  ], !prof !293

303:                                              ; preds = %300
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef 17) #27
  br label %550

304:                                              ; preds = %300
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %550

305:                                              ; preds = %300
  %306 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.18, i32 noundef 0) #27
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308, !prof !294

308:                                              ; preds = %305
  %309 = tail call ptr @Perl_hv_common(ptr noundef nonnull %306, ptr noundef null, ptr noundef nonnull @.str.19, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #27
  br label %310

310:                                              ; preds = %305, %308
  %311 = phi ptr [ %309, %308 ], [ null, %305 ]
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313, !prof !294

313:                                              ; preds = %310
  %314 = load ptr, ptr %311, align 8, !tbaa !139
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef %314, i32 noundef 2) #27
  br label %550

315:                                              ; preds = %310
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef 17) #27
  br label %550

316:                                              ; preds = %300
  %317 = getelementptr inbounds i64, ptr %301, i64 1
  %318 = load i64, ptr %301, align 8, !tbaa !187
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull %317, i64 noundef %318) #27
  br label %550

319:                                              ; preds = %27
  %320 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %321 = icmp eq ptr %320, null
  br i1 %321, label %332, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.pmop, ptr %320, i64 0, i32 9
  %324 = load ptr, ptr %323, align 8, !tbaa !253
  %325 = icmp eq ptr %324, null
  br i1 %325, label %332, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.p5rx, ptr %324, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !115
  %329 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 15
  %330 = load i32, ptr %329, align 8, !tbaa !257
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %17

332:                                              ; preds = %326, %322, %319
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %550

333:                                              ; preds = %27
  %334 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %335 = icmp eq ptr %334, null
  br i1 %335, label %346, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.pmop, ptr %334, i64 0, i32 9
  %338 = load ptr, ptr %337, align 8, !tbaa !253
  %339 = icmp eq ptr %338, null
  br i1 %339, label %346, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.p5rx, ptr %338, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !115
  %343 = getelementptr inbounds %struct.regexp, ptr %342, i64 0, i32 16
  %344 = load i32, ptr %343, align 4, !tbaa !295
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %17

346:                                              ; preds = %340, %336, %333
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %550

347:                                              ; preds = %27
  %348 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %349 = icmp eq ptr %348, null
  br i1 %349, label %550, label %350, !prof !192

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.sv, ptr %348, i64 0, i32 2
  %352 = load i32, ptr %351, align 4, !tbaa !108
  %353 = and i32 %352, 255
  %354 = add nsw i32 %353, -9
  %355 = icmp ult i32 %354, 2
  br i1 %355, label %356, label %550, !prof !193

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.gv, ptr %348, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !115
  %359 = icmp eq ptr %358, null
  br i1 %359, label %550, label %360, !prof !192

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !296
  %363 = icmp eq ptr %362, null
  br i1 %363, label %550, label %364, !prof !192

364:                                              ; preds = %360
  %365 = load ptr, ptr %362, align 8, !tbaa !297
  %366 = getelementptr inbounds %struct.xpvio, ptr %365, i64 0, i32 4
  %367 = load i64, ptr %366, align 8, !tbaa !115
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %367) #27
  br label %550

368:                                              ; preds = %27
  %369 = load i32, ptr @PL_statusvalue, align 4, !tbaa !153
  %370 = sext i32 %369 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %370) #27
  br label %550

371:                                              ; preds = %27
  %372 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %373 = getelementptr inbounds %struct.gv, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !115
  %375 = getelementptr inbounds %struct.gp, ptr %374, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !296
  %377 = icmp eq ptr %376, null
  br i1 %377, label %382, label %378

378:                                              ; preds = %371
  %379 = load ptr, ptr %376, align 8, !tbaa !297
  %380 = getelementptr inbounds %struct.xpvio, ptr %379, i64 0, i32 10
  %381 = load ptr, ptr %380, align 8, !tbaa !299
  br label %382

382:                                              ; preds = %378, %371
  %383 = phi ptr [ %381, %378 ], [ null, %371 ]
  %384 = icmp eq ptr %383, null
  br i1 %384, label %386, label %385

385:                                              ; preds = %382
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %383) #27
  br label %550

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.gp, ptr %374, i64 0, i32 8
  %388 = load ptr, ptr %387, align 8, !tbaa !301
  %389 = icmp eq ptr %388, null
  %390 = select i1 %389, ptr %372, ptr %388
  %391 = load ptr, ptr %390, align 8, !tbaa !302
  %392 = getelementptr inbounds %struct.xpvgv, ptr %391, i64 0, i32 4
  %393 = load ptr, ptr %392, align 8, !tbaa !115
  %394 = getelementptr inbounds %struct.hek, ptr %393, i64 0, i32 2
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %394) #27
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 4, i32 noundef 2) #27
  br label %550

395:                                              ; preds = %27
  %396 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %397 = getelementptr inbounds %struct.gv, ptr %396, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !115
  %399 = getelementptr inbounds %struct.gp, ptr %398, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !296
  %401 = icmp eq ptr %400, null
  br i1 %401, label %406, label %402

402:                                              ; preds = %395
  %403 = load ptr, ptr %400, align 8, !tbaa !297
  %404 = getelementptr inbounds %struct.xpvio, ptr %403, i64 0, i32 12
  %405 = load ptr, ptr %404, align 8, !tbaa !303
  br label %406

406:                                              ; preds = %402, %395
  %407 = phi ptr [ %405, %402 ], [ null, %395 ]
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %418

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.gp, ptr %398, i64 0, i32 8
  %411 = load ptr, ptr %410, align 8, !tbaa !301
  %412 = icmp eq ptr %411, null
  %413 = select i1 %412, ptr %396, ptr %411
  %414 = load ptr, ptr %413, align 8, !tbaa !302
  %415 = getelementptr inbounds %struct.xpvgv, ptr %414, i64 0, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !115
  %417 = getelementptr inbounds %struct.hek, ptr %416, i64 0, i32 2
  br label %418

418:                                              ; preds = %409, %406
  %419 = phi ptr [ %407, %406 ], [ %417, %409 ]
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %419) #27
  br label %550

420:                                              ; preds = %27
  %421 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %422 = icmp eq ptr %421, null
  br i1 %422, label %550, label %423

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.sv, ptr %421, i64 0, i32 2
  %425 = load i32, ptr %424, align 4, !tbaa !108
  %426 = and i32 %425, 255
  %427 = add nsw i32 %426, -9
  %428 = icmp ult i32 %427, 2
  br i1 %428, label %429, label %550

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.gv, ptr %421, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !115
  %432 = icmp eq ptr %431, null
  br i1 %432, label %550, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.gp, ptr %431, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !296
  %436 = icmp eq ptr %435, null
  br i1 %436, label %550, label %437

437:                                              ; preds = %433
  %438 = load ptr, ptr %435, align 8, !tbaa !297
  %439 = getelementptr inbounds %struct.xpvio, ptr %438, i64 0, i32 8
  %440 = load i64, ptr %439, align 8, !tbaa !304
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %440) #27
  br label %550

441:                                              ; preds = %27
  %442 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %443 = icmp eq ptr %442, null
  br i1 %443, label %550, label %444

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.sv, ptr %442, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !108
  %447 = and i32 %446, 255
  %448 = add nsw i32 %447, -9
  %449 = icmp ult i32 %448, 2
  br i1 %449, label %450, label %550

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.gv, ptr %442, i64 0, i32 3
  %452 = load ptr, ptr %451, align 8, !tbaa !115
  %453 = icmp eq ptr %452, null
  br i1 %453, label %550, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.gp, ptr %452, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !296
  %457 = icmp eq ptr %456, null
  br i1 %457, label %550, label %458

458:                                              ; preds = %454
  %459 = load ptr, ptr %456, align 8, !tbaa !297
  %460 = getelementptr inbounds %struct.xpvio, ptr %459, i64 0, i32 9
  %461 = load i64, ptr %460, align 8, !tbaa !305
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %461) #27
  br label %550

462:                                              ; preds = %27
  %463 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %464 = icmp eq ptr %463, null
  br i1 %464, label %550, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.sv, ptr %463, i64 0, i32 2
  %467 = load i32, ptr %466, align 4, !tbaa !108
  %468 = and i32 %467, 255
  %469 = add nsw i32 %468, -9
  %470 = icmp ult i32 %469, 2
  br i1 %470, label %471, label %550

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.gv, ptr %463, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !115
  %474 = icmp eq ptr %473, null
  br i1 %474, label %550, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.gp, ptr %473, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !296
  %478 = icmp eq ptr %477, null
  br i1 %478, label %550, label %479

479:                                              ; preds = %475
  %480 = load ptr, ptr %477, align 8, !tbaa !297
  %481 = getelementptr inbounds %struct.xpvio, ptr %480, i64 0, i32 7
  %482 = load i64, ptr %481, align 8, !tbaa !306
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %482) #27
  br label %550

483:                                              ; preds = %27
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef 0) #27
  br label %550

484:                                              ; preds = %27
  %485 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %486 = icmp eq ptr %485, null
  br i1 %486, label %550, label %487

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.sv, ptr %485, i64 0, i32 2
  %489 = load i32, ptr %488, align 4, !tbaa !108
  %490 = and i32 %489, 255
  %491 = add nsw i32 %490, -9
  %492 = icmp ult i32 %491, 2
  br i1 %492, label %493, label %550

493:                                              ; preds = %487
  %494 = getelementptr inbounds %struct.gv, ptr %485, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !115
  %496 = icmp eq ptr %495, null
  br i1 %496, label %550, label %497

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.gp, ptr %495, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !296
  %500 = icmp eq ptr %499, null
  br i1 %500, label %550, label %501

501:                                              ; preds = %497
  %502 = load ptr, ptr %499, align 8, !tbaa !297
  %503 = getelementptr inbounds %struct.xpvio, ptr %502, i64 0, i32 17
  %504 = load i8, ptr %503, align 1, !tbaa !307
  %505 = lshr i8 %504, 2
  %506 = and i8 %505, 1
  %507 = zext nneg i8 %506 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %507) #27
  br label %550

508:                                              ; preds = %27
  %509 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !139
  %510 = icmp eq ptr %509, null
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef nonnull %509, i32 noundef 2) #27
  br label %550

512:                                              ; preds = %508
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %550

513:                                              ; preds = %27
  %514 = tail call i32 @getpid() #27
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !220
  %518 = getelementptr inbounds %struct.sv, ptr %517, i64 0, i32 2
  %519 = load i32, ptr %518, align 4, !tbaa !108
  %520 = and i32 %519, 255
  %521 = icmp eq i32 %520, 9
  br i1 %521, label %534, label %522, !prof !308

522:                                              ; preds = %513
  %523 = and i32 %519, 2097408
  %524 = icmp eq i32 %523, 256
  br i1 %524, label %525, label %529

525:                                              ; preds = %522
  %526 = load ptr, ptr %517, align 8, !tbaa !114
  %527 = getelementptr inbounds %struct.xpviv, ptr %526, i64 0, i32 4
  %528 = load i64, ptr %527, align 8, !tbaa !115
  br label %531

529:                                              ; preds = %522
  %530 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %517, i32 noundef 2) #27
  br label %531

531:                                              ; preds = %529, %525
  %532 = phi i64 [ %528, %525 ], [ %530, %529 ]
  %533 = icmp eq i64 %532, %515
  br i1 %533, label %550, label %534

534:                                              ; preds = %531, %513
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %515) #27
  %535 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %550, label %537, !prof !308

537:                                              ; preds = %534
  tail call void @Perl_sv_untaint(ptr noundef %0) #27
  br label %550

538:                                              ; preds = %27
  %539 = tail call i32 @getuid() #27
  %540 = zext i32 %539 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %540) #27
  br label %550

541:                                              ; preds = %27
  %542 = tail call i32 @geteuid() #27
  %543 = zext i32 %542 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %543) #27
  br label %550

544:                                              ; preds = %27
  %545 = tail call i32 @getgid() #27
  %546 = zext i32 %545 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %546) #27
  br label %550

547:                                              ; preds = %27
  %548 = tail call i32 @getegid() #27
  %549 = zext i32 %548 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %549) #27
  br label %550

550:                                              ; preds = %487, %465, %444, %423, %350, %67, %130, %133, %145, %148, %229, %304, %332, %346, %368, %418, %483, %538, %541, %27, %55, %50, %44, %61, %64, %58, %78, %81, %76, %139, %136, %208, %217, %150, %225, %228, %224, %220, %250, %253, %258, %271, %256, %282, %288, %285, %276, %297, %316, %303, %293, %347, %356, %364, %360, %386, %385, %420, %429, %437, %433, %441, %450, %458, %454, %462, %471, %479, %475, %484, %493, %501, %497, %512, %511, %547, %544, %245, %239, %315, %313, %537, %534, %531, %17, %26
  ret i32 0
}

declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #3

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Perl_my_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_fixup_errno_string(ptr noundef %0) unnamed_addr #4 !prof !175 !PGOFuncName !309 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !192

6:                                                ; preds = %1
  tail call void @Perl_sv_catpv(ptr noundef %0, ptr noundef nonnull @.str.72) #27
  br label %28

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.cop, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !267
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28, !prof !193

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !189
  %17 = tail call zeroext i1 @Perl_is_invariant_string(ptr noundef nonnull %3, i64 noundef %16) #27
  br i1 %17, label %28, label %18, !prof !193

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8, !tbaa !115
  %20 = load ptr, ptr %0, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !189
  %23 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %19, i64 noundef %22) #27
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !108
  %27 = or i32 %26, 536870912
  store i32 %27, ptr %25, align 4, !tbaa !108
  br label %28

28:                                               ; preds = %7, %13, %18, %24, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #3

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getuvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !310
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !312
  %12 = tail call i32 %7(i64 noundef %11, ptr noundef %0) #27
  br label %13

13:                                               ; preds = %9, %6, %2
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setenv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 !prof !173 {
  %3 = alloca i64, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !164
  store i64 %8, ptr %3, align 8, !tbaa !187
  %9 = and i64 %8, 4294967295
  %10 = icmp eq i64 %9, 4294967294
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !163
  br i1 %10, label %13, label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !108
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 8, !tbaa !114
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !189
  store i64 %21, ptr %3, align 8, !tbaa !187
  %22 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  br label %26

24:                                               ; preds = %13
  %25 = call ptr @Perl_sv_2pv_flags(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %26

26:                                               ; preds = %2, %18, %24
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ], [ %12, %2 ]
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !108
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 @Perl_mg_get(ptr noundef %0)
  br label %34

34:                                               ; preds = %26, %32
  %35 = load i32, ptr %28, align 4, !tbaa !108
  %36 = and i32 %35, 65280
  %37 = icmp ne i32 %36, 0
  %38 = and i32 %35, 255
  %39 = icmp eq i32 %38, 8
  %40 = or i1 %37, %39
  %41 = and i32 %35, 16777471
  %42 = icmp eq i32 %41, 16777226
  %43 = or i1 %42, %40
  br i1 %43, label %44, label %63

44:                                               ; preds = %34
  %45 = and i32 %35, 430018304
  %46 = icmp eq i32 %45, 1024
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef null, i32 noundef 0) #27
  br label %49

49:                                               ; preds = %44, %47
  %50 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %0, i1 noundef zeroext true) #27
  %51 = load i32, ptr %28, align 4, !tbaa !108
  %52 = and i32 %51, 536870912
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #27
  %55 = load i32, ptr %28, align 4, !tbaa !108
  %56 = and i32 %55, -536870913
  store i32 %56, ptr %28, align 4, !tbaa !108
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !115
  %60 = load ptr, ptr %0, align 8, !tbaa !114
  %61 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !189
  br label %63

63:                                               ; preds = %34, %57
  %64 = phi ptr [ %59, %57 ], [ @.str.1, %34 ]
  %65 = phi i64 [ %62, %57 ], [ 0, %34 ]
  call void @Perl_my_setenv(ptr noundef %27, ptr noundef %64) #27
  %66 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %106, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %70 = load i8, ptr %69, align 1, !tbaa !125
  %71 = and i8 %70, -2
  store i8 %71, ptr %69, align 1, !tbaa !125
  %72 = icmp ne ptr %64, null
  %73 = load i64, ptr %3, align 8
  %74 = icmp eq i64 %73, 4
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %106

76:                                               ; preds = %68
  %77 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.24) #28
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %64, i64 %65
  %81 = icmp sgt i64 %65, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, ptr %4, i64 256
  %84 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  br label %85

85:                                               ; preds = %82, %104
  %86 = phi ptr [ %64, %82 ], [ %88, %104 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %87 = call ptr @Perl_delimcpy(ptr noundef nonnull %4, ptr noundef nonnull %83, ptr noundef nonnull %86, ptr noundef nonnull %80, i32 noundef 58, ptr noundef nonnull %6) #27
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  %89 = load i32, ptr %6, align 4, !tbaa !153
  %90 = icmp sgt i32 %89, 255
  %91 = load i8, ptr %4, align 16
  %92 = icmp ne i8 %91, 47
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %85
  %95 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, ptr %84, align 8, !tbaa !313
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %85
  %102 = load i8, ptr %69, align 1, !tbaa !125
  %103 = or i8 %102, 1
  store i8 %103, ptr %69, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #27
  br label %106

104:                                              ; preds = %94, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #27
  %105 = icmp ult ptr %88, %80
  br i1 %105, label %85, label %106, !llvm.loop !316

106:                                              ; preds = %104, %79, %101, %63, %76, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @Perl_my_setenv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Perl_delimcpy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_clearenv(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !164
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 4294967294
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  br i1 %6, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !108
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  br label %19

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %8, ptr noundef null, i32 noundef 34) #27
  br label %19

19:                                               ; preds = %2, %14, %17
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ], [ %8, %2 ]
  tail call void @Perl_my_setenv(ptr noundef %20, ptr noundef null) #27
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_set_all_env(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = alloca i32, align 4
  %4 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  tail call void @Perl_my_clearenv() #27
  %7 = tail call i32 @Perl_hv_iterinit(ptr noundef %0) #27
  %8 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %24
  %11 = phi ptr [ %26, %24 ], [ %8, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %12 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %11, ptr noundef nonnull %3) #27
  %13 = call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %11) #27
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !108
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  %18 = call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %11) #27
  br i1 %17, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  br label %24

22:                                               ; preds = %10
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef %18, ptr noundef null, i32 noundef 34) #27
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %21, %19 ], [ %23, %22 ]
  call void @Perl_my_setenv(ptr noundef %12, ptr noundef %25) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  %26 = call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !317

28:                                               ; preds = %24, %6, %2
  ret i32 0
}

declare void @Perl_my_clearenv() local_unnamed_addr #3

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_hv_iterkey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_clear_all_env(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  tail call void @Perl_my_clearenv() #27
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 !prof !318 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !319
  %6 = sext i16 %5 to i32
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %8, label %33, !prof !191

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !164
  store i64 %10, ptr %3, align 8, !tbaa !187
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 4294967294
  %13 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  br i1 %12, label %15, label %28, !prof !193

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !108
  %18 = and i32 %17, 2098176
  %19 = icmp eq i32 %18, 1024
  br i1 %19, label %20, label %26, !prof !193

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 8, !tbaa !114
  %22 = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !189
  store i64 %23, ptr %3, align 8, !tbaa !187
  %24 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  br label %28

26:                                               ; preds = %15
  %27 = call ptr @Perl_sv_2pv_flags(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %28

28:                                               ; preds = %8, %20, %26
  %29 = phi ptr [ %25, %20 ], [ %27, %26 ], [ %14, %8 ]
  %30 = load i64, ptr %3, align 8, !tbaa !187
  %31 = call i32 @Perl_whichsig_pvn(ptr noundef %29, i64 noundef %30)
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %4, align 8, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i32 [ %6, %2 ], [ %31, %28 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57, !prof !280

36:                                               ; preds = %33
  %37 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %40, i32 noundef 1538) #27
  br label %57

43:                                               ; preds = %36
  %44 = call ptr @Perl_rsignal_state(i32 noundef %34) #27
  %45 = icmp eq ptr %44, inttoptr (i64 1 to ptr)
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef 6) #27
  br label %48

47:                                               ; preds = %43
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #27
  br label %48

48:                                               ; preds = %47, %46
  %49 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !147
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !147
  %52 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %53 = getelementptr inbounds ptr, ptr %52, i64 %38
  store ptr %0, ptr %53, align 8, !tbaa !139
  %54 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !108
  %56 = and i32 %55, -524289
  store i32 %56, ptr %54, align 4, !tbaa !108
  br label %57

57:                                               ; preds = %42, %48, %33
  ret i32 0
}

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_whichsig_pvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 !prof !175 {
  %3 = load ptr, ptr @PL_sig_name, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !281

5:                                                ; preds = %2, %19
  %6 = phi ptr [ %21, %19 ], [ %3, %2 ]
  %7 = phi ptr [ %20, %19 ], [ @PL_sig_name, %2 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %10, label %19, !prof !320

10:                                               ; preds = %5
  %11 = tail call i32 @bcmp(ptr %0, ptr nonnull %6, i64 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = ptrtoint ptr %7 to i64
  %15 = sub i64 %14, ptrtoint (ptr @PL_sig_name to i64)
  %16 = ashr exact i64 %15, 3
  %17 = getelementptr inbounds [0 x i32], ptr @PL_sig_num, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !153
  br label %33

19:                                               ; preds = %5, %10
  %20 = getelementptr inbounds ptr, ptr %7, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !prof !321, !llvm.loop !322

23:                                               ; preds = %19, %2
  switch i64 %1, label %32 [
    i64 4, label %24
    i64 3, label %29
  ], !prof !323

24:                                               ; preds = %23
  %25 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.67, i64 4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = icmp eq i64 %1, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %27
  %30 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.68, i64 3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %27, %23
  br label %33

33:                                               ; preds = %29, %24, %32, %13
  %34 = phi i32 [ %18, %13 ], [ -1, %32 ], [ 17, %24 ], [ 17, %29 ]
  ret i32 %34
}

declare ptr @Perl_rsignal_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_magic_clearsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !324 {
  %3 = tail call i32 @Perl_magic_setsig(ptr noundef null, ptr noundef %1)
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !146
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef %6) #27
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_setsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !325 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !164
  store i64 %5, ptr %3, align 8, !tbaa !187
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967294
  %8 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !163
  br i1 %7, label %10, label %23, !prof !326

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !108
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %21, !prof !326

15:                                               ; preds = %10
  %16 = load ptr, ptr %9, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !189
  store i64 %18, ptr %3, align 8, !tbaa !187
  %19 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %23

23:                                               ; preds = %2, %15, %21
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ], [ %9, %2 ]
  %25 = load i8, ptr %24, align 1, !tbaa !115
  %26 = icmp eq i8 %25, 95
  br i1 %26, label %27, label %57, !prof !326

27:                                               ; preds = %23
  %28 = load i64, ptr %3, align 8, !tbaa !187
  switch i64 %28, label %42 [
    i64 7, label %29
    i64 8, label %34
  ], !prof !327

29:                                               ; preds = %27
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %24, ptr noundef nonnull dereferenceable(7) @.str.27, i64 7)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32, !prof !328

32:                                               ; preds = %29
  %33 = icmp eq i64 %28, 8
  br i1 %33, label %34, label %42, !prof !329

34:                                               ; preds = %27, %32
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %24, ptr noundef nonnull dereferenceable(8) @.str.28, i64 8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42, !prof !329

37:                                               ; preds = %34
  %38 = icmp ne ptr %0, null
  %39 = load ptr, ptr @PL_warnhook, align 8
  %40 = icmp ne ptr %39, @PL_sv_placeholder
  %41 = select i1 %38, i1 true, i1 %40, !prof !330
  br i1 %41, label %48, label %42, !prof !329

42:                                               ; preds = %37, %27, %34, %32
  %43 = icmp eq ptr %0, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = call ptr @Perl_sv_newmortal() #27
  %46 = load i64, ptr %3, align 8, !tbaa !187
  %47 = call ptr @Perl_pv_pretty(ptr noundef %45, ptr noundef nonnull %24, i64 noundef %46, i64 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) #27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.29, ptr noundef %47) #27
  br label %48

48:                                               ; preds = %29, %37, %44, %42
  %49 = phi i1 [ true, %44 ], [ true, %42 ], [ false, %37 ], [ false, %29 ]
  %50 = phi ptr [ null, %44 ], [ null, %42 ], [ @PL_warnhook, %37 ], [ @PL_diehook, %29 ]
  br i1 %49, label %125, label %51, !prof !331

51:                                               ; preds = %48
  %52 = load ptr, ptr %50, align 8, !tbaa !139
  %53 = icmp eq ptr %52, null
  br i1 %53, label %125, label %54, !prof !332

54:                                               ; preds = %51
  %55 = icmp eq ptr %52, @PL_sv_placeholder
  %56 = select i1 %55, ptr null, ptr %52, !prof !333
  store ptr null, ptr %50, align 8, !tbaa !139
  br label %125

57:                                               ; preds = %23
  %58 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !319
  %60 = sext i16 %59 to i32
  %61 = icmp eq i16 %59, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, ptr %3, align 8, !tbaa !187
  %64 = call i32 @Perl_whichsig_pvn(ptr noundef nonnull %24, i64 noundef %63)
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %58, align 8, !tbaa !319
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i32 [ %60, %57 ], [ %64, %62 ]
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = icmp eq ptr %0, null
  br i1 %70, label %222, label %71

71:                                               ; preds = %69
  %72 = call ptr @Perl_sv_newmortal() #27
  %73 = load i64, ptr %3, align 8, !tbaa !187
  %74 = call ptr @Perl_pv_pretty(ptr noundef %72, ptr noundef nonnull %24, i64 noundef %73, i64 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) #27
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.30, ptr noundef %74) #27
  br label %222

75:                                               ; preds = %66
  %76 = load i32, ptr @PL_sig_pending, align 4, !tbaa !153
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @PL_signalhook, align 8, !tbaa !139
  call void %79() #27
  br label %80

80:                                               ; preds = %75, %78
  %81 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %82 = zext nneg i32 %67 to i64
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !139
  %85 = icmp eq ptr %0, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !147
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !147
  store ptr %0, ptr %83, align 8, !tbaa !139
  %90 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !108
  %92 = and i32 %91, -524289
  store i32 %92, ptr %90, align 4, !tbaa !108
  %93 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %94 = getelementptr inbounds ptr, ptr %93, i64 %82
  %95 = load ptr, ptr %94, align 8, !tbaa !139
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %125

97:                                               ; preds = %86
  %98 = load i64, ptr %3, align 8, !tbaa !187
  %99 = call ptr @Perl_newSVpvn(ptr noundef nonnull %24, i64 noundef %98) #27
  %100 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %101 = getelementptr inbounds ptr, ptr %100, i64 %82
  store ptr %99, ptr %101, align 8, !tbaa !139
  %102 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %103 = getelementptr inbounds ptr, ptr %102, i64 %82
  %104 = load ptr, ptr %103, align 8, !tbaa !139
  %105 = getelementptr inbounds %struct.sv, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !108
  %107 = or i32 %106, 134283264
  store i32 %107, ptr %105, align 4, !tbaa !108
  br label %125

108:                                              ; preds = %80
  %109 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %110 = getelementptr inbounds ptr, ptr %109, i64 %82
  %111 = load ptr, ptr %110, align 8, !tbaa !139
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !147
  %116 = icmp ugt i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = add i32 %115, -1
  store i32 %118, ptr %114, align 8, !tbaa !147
  br label %120

119:                                              ; preds = %113
  call void @Perl_sv_free2(ptr noundef nonnull %111, i32 noundef %115) #27
  br label %120

120:                                              ; preds = %108, %117, %119
  %121 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %122 = getelementptr inbounds ptr, ptr %121, i64 %82
  store ptr null, ptr %122, align 8, !tbaa !139
  %123 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %124 = getelementptr inbounds ptr, ptr %123, i64 %82
  store ptr null, ptr %124, align 8, !tbaa !139
  br label %125

125:                                              ; preds = %120, %97, %86, %48, %51, %54
  %126 = phi i32 [ 0, %54 ], [ 0, %51 ], [ 0, %48 ], [ %67, %86 ], [ %67, %97 ], [ %67, %120 ]
  %127 = phi ptr [ %50, %54 ], [ %50, %51 ], [ null, %48 ], [ null, %86 ], [ null, %97 ], [ null, %120 ]
  %128 = phi ptr [ %56, %54 ], [ null, %51 ], [ null, %48 ], [ %84, %86 ], [ %84, %97 ], [ %84, %120 ]
  %129 = icmp eq ptr %0, null
  br i1 %129, label %174, label %130, !prof !332

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !108
  %133 = and i32 %132, 49152
  %134 = icmp eq i32 %133, 32768
  br i1 %134, label %135, label %142, !prof !333

135:                                              ; preds = %130
  %136 = and i32 %132, 255
  %137 = add nsw i32 %136, -11
  %138 = icmp ult i32 %137, -2
  %139 = and i32 %132, 2048
  %140 = icmp eq i32 %139, 0
  %141 = and i1 %140, %138
  br i1 %141, label %154, label %145, !prof !334

142:                                              ; preds = %130
  %143 = and i32 %132, 2048
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %154, label %145, !prof !333

145:                                              ; preds = %135, %142
  %146 = icmp eq i32 %126, 0
  br i1 %146, label %150, label %147, !prof !335

147:                                              ; preds = %145
  %148 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !139
  %149 = call ptr @Perl_rsignal(i32 noundef %126, ptr noundef %148) #27
  br label %213

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !147
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 8, !tbaa !147
  store ptr %0, ptr %127, align 8, !tbaa !139
  br label %213

154:                                              ; preds = %135, %142
  %155 = and i32 %132, 63232
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %132, 255
  %158 = icmp eq i32 %157, 8
  %159 = or i1 %156, %158
  %160 = and i32 %132, 16777471
  %161 = icmp eq i32 %160, 16777226
  %162 = or i1 %161, %159
  br i1 %162, label %163, label %174

163:                                              ; preds = %154
  %164 = and i32 %132, 430016256
  %165 = icmp eq i32 %164, 1024
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load ptr, ptr %0, align 8, !tbaa !114
  %168 = getelementptr inbounds %struct.xpv, ptr %167, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !189
  store i64 %169, ptr %3, align 8, !tbaa !187
  %170 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !115
  br label %174

172:                                              ; preds = %163
  %173 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #27
  br label %174

174:                                              ; preds = %154, %125, %166, %172
  %175 = phi ptr [ %171, %166 ], [ %173, %172 ], [ %24, %125 ], [ %24, %154 ]
  %176 = phi ptr [ %0, %166 ], [ %0, %172 ], [ null, %125 ], [ null, %154 ]
  %177 = icmp ne ptr %176, null
  %178 = load i64, ptr %3, align 8
  %179 = icmp eq i64 %178, 6
  %180 = select i1 %177, i1 %179, i1 false, !prof !336
  br i1 %180, label %181, label %188, !prof !336

181:                                              ; preds = %174
  %182 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %175, ptr noundef nonnull dereferenceable(6) @.str.25, i64 6)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = icmp eq i32 %126, 0
  br i1 %185, label %213, label %186

186:                                              ; preds = %184
  %187 = call ptr @Perl_rsignal(i32 noundef %126, ptr noundef nonnull inttoptr (i64 1 to ptr)) #27
  br label %213

188:                                              ; preds = %181, %174
  br i1 %177, label %189, label %193, !prof !336

189:                                              ; preds = %188
  switch i64 %178, label %197 [
    i64 7, label %190
    i64 0, label %193
  ]

190:                                              ; preds = %189
  %191 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %175, ptr noundef nonnull dereferenceable(7) @.str.31, i64 7)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190, %189, %188
  %194 = icmp eq i32 %126, 0
  br i1 %194, label %213, label %195, !prof !337

195:                                              ; preds = %193
  %196 = call ptr @Perl_rsignal(i32 noundef %126, ptr noundef null) #27
  br label %213

197:                                              ; preds = %189, %190
  %198 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %175, i32 noundef 58) #28
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %175, i32 noundef 39) #28
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  call void @Perl_sv_insert_flags(ptr noundef nonnull %176, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.32, i64 noundef 6, i32 noundef 2) #27
  br label %204

204:                                              ; preds = %203, %200, %197
  %205 = icmp eq i32 %126, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %204
  %207 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !139
  %208 = call ptr @Perl_rsignal(i32 noundef %126, ptr noundef %207) #27
  br label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !147
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 8, !tbaa !147
  store ptr %176, ptr %127, align 8, !tbaa !139
  br label %213

213:                                              ; preds = %186, %184, %206, %209, %193, %195, %147, %150
  %214 = icmp eq ptr %128, null
  br i1 %214, label %222, label %215, !prof !332

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !147
  %218 = icmp ugt i32 %217, 1
  br i1 %218, label %219, label %221, !prof !335

219:                                              ; preds = %215
  %220 = add i32 %217, -1
  store i32 %220, ptr %216, align 8, !tbaa !147
  br label %222

221:                                              ; preds = %215
  call void @Perl_sv_free2(ptr noundef nonnull %128, i32 noundef %217) #27
  br label %222

222:                                              ; preds = %221, %219, %213, %69, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_csighandler(i32 noundef %0) local_unnamed_addr #4 !prof !173 {
  switch i32 %0, label %2 [
    i32 11, label %6
    i32 7, label %6
    i32 4, label %6
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr @PL_signals, align 4, !tbaa !153
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1, %1, %1, %2
  %7 = load ptr, ptr @PL_sighandlerp, align 8, !tbaa !139
  tail call void %7(i32 noundef %0) #27
  br label %20

8:                                                ; preds = %2
  %9 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !153
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !153
  %16 = load i32, ptr @PL_sig_pending, align 4, !tbaa !153
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @PL_sig_pending, align 4, !tbaa !153
  %18 = icmp sgt i32 %16, 118
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.26, i64 noundef 120) #27
  br label %20

20:                                               ; preds = %11, %19, %8, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_despatch_signals() local_unnamed_addr #4 !prof !173 {
  store i32 0, ptr @PL_sig_pending, align 4, !tbaa !153
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 1, %0 ], [ %13, %12 ]
  %3 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !139
  %4 = getelementptr inbounds i32, ptr %3, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !153
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @__errno_location() #29
  %9 = load i32, ptr %8, align 4, !tbaa !153
  store i32 0, ptr %4, align 4, !tbaa !153
  %10 = load ptr, ptr @PL_sighandlerp, align 8, !tbaa !139
  %11 = trunc i64 %2 to i32
  tail call void %10(i32 noundef %11) #27
  store i32 %9, ptr %8, align 4, !tbaa !153
  br label %12

12:                                               ; preds = %1, %7
  %13 = add nuw nsw i64 %2, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %1, !llvm.loop !338

15:                                               ; preds = %12
  ret void
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare ptr @Perl_pv_pretty(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_rsignal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setisa(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !339 {
  %3 = load i16, ptr @PL_delaymagic, align 2, !tbaa !340
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6, !prof !341

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 2, !tbaa !146
  %9 = icmp eq i8 %8, 105
  br i1 %9, label %12, label %10, !prof !342

10:                                               ; preds = %6, %2
  %11 = tail call i32 @Perl_magic_clearisa(ptr noundef null, ptr noundef %1)
  br label %12

12:                                               ; preds = %6, %10
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_clearisa(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !343 {
  %3 = load i32, ptr @PL_phase, align 4, !tbaa !153
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %101, label %5, !prof !344

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7, !prof !345

7:                                                ; preds = %5
  tail call void @Perl_av_clear(ptr noundef nonnull %0) #27
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !220
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !108
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 9
  %15 = and i32 %12, 4194304
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %28, label %18, !prof !345

18:                                               ; preds = %8
  %19 = icmp ne ptr %10, null
  tail call void @llvm.assume(i1 %19)
  %20 = load ptr, ptr %10, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.xpvmg, ptr %20, i64 0, i32 1
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %21, %18 ], [ %24, %22 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !115, !nonnull !169, !noundef !169
  %25 = getelementptr inbounds %struct.magic, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 2, !tbaa !146
  %27 = icmp eq i8 %26, 73
  br i1 %27, label %28, label %22, !llvm.loop !209

28:                                               ; preds = %22, %8
  %29 = phi ptr [ %1, %8 ], [ %24, %22 ]
  %30 = getelementptr inbounds %struct.magic, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !220
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !108
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 11
  %36 = load ptr, ptr %31, align 8, !tbaa !139
  br i1 %35, label %37, label %77, !prof !344

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !197
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %101, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.av, ptr %31, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  br label %45

45:                                               ; preds = %42, %74
  %46 = phi i32 [ %75, %74 ], [ %40, %42 ]
  %47 = phi ptr [ %48, %74 ], [ %44, %42 ]
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %47, align 8, !tbaa !139
  %50 = load ptr, ptr %49, align 8, !tbaa !302
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.hv, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !346
  %57 = and i32 %56, 33554432
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.hv, ptr %52, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = load ptr, ptr %52, align 8, !tbaa !348
  %63 = getelementptr inbounds %struct.xpvhv, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !349
  %65 = getelementptr ptr, ptr %61, i64 %64
  %66 = getelementptr ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = getelementptr i8, ptr %65, i64 36
  %71 = load i32, ptr %70, align 4, !tbaa !351
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %52) #27
  br label %74

74:                                               ; preds = %54, %59, %69, %73, %45
  %75 = add nsw i32 %46, -1
  %76 = icmp eq i32 %46, 0
  br i1 %76, label %101, label %45, !llvm.loop !353

77:                                               ; preds = %28
  %78 = getelementptr inbounds %struct.xpvgv, ptr %36, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !115
  %80 = icmp eq ptr %79, null
  br i1 %80, label %101, label %81, !prof !344

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.hv, ptr %79, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !346
  %84 = and i32 %83, 33554432
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86, !prof !344

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.hv, ptr %79, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !115
  %89 = load ptr, ptr %79, align 8, !tbaa !348
  %90 = getelementptr inbounds %struct.xpvhv, ptr %89, i64 0, i32 3
  %91 = load i64, ptr %90, align 8, !tbaa !349
  %92 = getelementptr ptr, ptr %88, i64 %91
  %93 = getelementptr ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !115
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96, !prof !344

96:                                               ; preds = %86
  %97 = getelementptr i8, ptr %92, i64 36
  %98 = load i32, ptr %97, align 4, !tbaa !351
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %101, label %100, !prof !344

100:                                              ; preds = %96
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %79) #27
  br label %101

101:                                              ; preds = %74, %37, %77, %100, %96, %86, %81, %2
  ret i32 0
}

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #3

declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getnkeys(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %5) #27
  %9 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !108
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %5, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.xpvmg, ptr %14, i64 0, i32 1
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %15, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.magic, ptr %18, i64 0, i32 3
  %22 = load i8, ptr %21, align 2, !tbaa !146
  %23 = icmp eq i8 %22, 80
  br i1 %23, label %24, label %16, !llvm.loop !209

24:                                               ; preds = %20
  br i1 %19, label %25, label %39

25:                                               ; preds = %16, %7, %24
  %26 = load ptr, ptr %5, align 8, !tbaa !348
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !354
  %29 = getelementptr inbounds %struct.xpvmg, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %5) #27
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %25, %32
  %36 = phi i64 [ %34, %32 ], [ 0, %25 ]
  %37 = sub i64 %28, %36
  %38 = trunc i64 %37 to i32
  br label %44

39:                                               ; preds = %24, %39
  %40 = phi i32 [ %43, %39 ], [ 0, %24 ]
  %41 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %5, i32 noundef 0) #27
  %42 = icmp eq ptr %41, null
  %43 = add nuw nsw i32 %40, 1
  br i1 %42, label %44, label %39, !llvm.loop !355

44:                                               ; preds = %39, %35, %2
  %45 = phi i32 [ %38, %35 ], [ 0, %2 ], [ %40, %39 ]
  %46 = sext i32 %45 to i64
  tail call void @Perl_sv_setiv(ptr noundef nonnull %0, i64 noundef %46) #27
  ret i32 0
}

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setnkeys(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = and i32 %9, 2097408
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xpviv, ptr %3, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !115
  br label %17

15:                                               ; preds = %7
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i64 [ %14, %12 ], [ %16, %15 ]
  tail call void @Perl_hv_ksplit(ptr noundef nonnull %5, i64 noundef %18) #27
  br label %19

19:                                               ; preds = %17, %2
  ret i32 0
}

declare void @Perl_hv_ksplit(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_magic_methcall(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #5 !prof !356 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !139
  tail call void @Perl_push_scope() #27
  %8 = and i32 %3, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !357

10:                                               ; preds = %5
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #27
  %11 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !187
  store i64 %11, ptr @PL_tmps_floor, align 8, !tbaa !187
  tail call void @Perl_save_re_context() #27
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_stderrgv) #27
  store ptr null, ptr @PL_stderrgv, align 8, !tbaa !139
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !358
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22, !prof !160

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #27
  %19 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %20 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !360
  %21 = getelementptr inbounds %struct.stackinfo, ptr %19, i64 0, i32 3
  store ptr %18, ptr %21, align 8, !tbaa !358
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %15, %12 ], [ %18, %17 ]
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 6
  store i32 2, ptr %24, align 8, !tbaa !361
  %25 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  store i32 -1, ptr %25, align 8, !tbaa !362
  %26 = load ptr, ptr %23, align 8, !tbaa !363
  %27 = load ptr, ptr %26, align 8, !tbaa !195
  %28 = getelementptr inbounds %struct.xpvav, ptr %27, i64 0, i32 2
  store i64 0, ptr %28, align 8, !tbaa !197
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %30 = ptrtoint ptr %7 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = load ptr, ptr @PL_curstack, align 8, !tbaa !139
  %35 = load ptr, ptr %34, align 8, !tbaa !195
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 2
  store i64 %33, ptr %36, align 8, !tbaa !197
  %37 = getelementptr inbounds %struct.av, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  store ptr %38, ptr @PL_stack_base, align 8, !tbaa !139
  %39 = load ptr, ptr %23, align 8, !tbaa !363
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = getelementptr inbounds %struct.xpvav, ptr %40, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !364
  %43 = getelementptr inbounds ptr, ptr %38, i64 %42
  store ptr %43, ptr @PL_stack_max, align 8, !tbaa !139
  %44 = load ptr, ptr %23, align 8, !tbaa !363
  %45 = load ptr, ptr %44, align 8, !tbaa !195
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !197
  %48 = getelementptr inbounds ptr, ptr %38, i64 %47
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !139
  %49 = load ptr, ptr %23, align 8, !tbaa !363
  store ptr %49, ptr @PL_curstack, align 8, !tbaa !139
  store ptr %23, ptr @PL_curstackinfo, align 8, !tbaa !139
  %50 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !139
  %51 = getelementptr inbounds i32, ptr %50, i64 1
  store ptr %51, ptr @PL_markstack_ptr, align 8, !tbaa !139
  %52 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !139
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %56, !prof !160

54:                                               ; preds = %22
  %55 = tail call ptr @Perl_markstack_grow() #27
  br label %56

56:                                               ; preds = %22, %54
  %57 = phi ptr [ %55, %54 ], [ %51, %22 ]
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %59 = ptrtoint ptr %48 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = lshr exact i64 %61, 3
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %57, align 4, !tbaa !153
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !139
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %59
  %67 = ashr exact i64 %66, 3
  %68 = add i32 %4, 1
  %69 = zext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %73, !prof !160

71:                                               ; preds = %56
  %72 = tail call ptr @Perl_stack_grow(ptr noundef %48, ptr noundef %48, i64 noundef %69) #27
  br label %73

73:                                               ; preds = %56, %71
  %74 = phi ptr [ %72, %71 ], [ %48, %56 ]
  %75 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !220
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81, !prof !160

78:                                               ; preds = %73
  %79 = tail call ptr @Perl_newRV(ptr noundef %0) #27
  %80 = tail call ptr @Perl_sv_2mortal(ptr noundef %79) #27
  br label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %80, %78 ], [ %76, %73 ]
  %83 = getelementptr inbounds ptr, ptr %74, i64 1
  store ptr %82, ptr %83, align 8, !tbaa !139
  %84 = and i32 %3, 512
  %85 = icmp eq i32 %84, 0
  %86 = icmp eq i32 %4, 0
  br i1 %85, label %94, label %87, !prof !357

87:                                               ; preds = %81
  br i1 %86, label %120, label %88

88:                                               ; preds = %87, %88
  %89 = phi i32 [ %91, %88 ], [ %4, %87 ]
  %90 = phi ptr [ %92, %88 ], [ %83, %87 ]
  %91 = add i32 %89, -1
  %92 = getelementptr inbounds ptr, ptr %90, i64 1
  store ptr @PL_sv_undef, ptr %92, align 8, !tbaa !139
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %120, label %88, !llvm.loop !365

94:                                               ; preds = %81
  br i1 %86, label %120, label %95, !prof !366

95:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.va_start(ptr nonnull %6)
  %96 = load i32, ptr %6, align 16
  br label %97

97:                                               ; preds = %112, %95
  %98 = phi i32 [ %96, %95 ], [ %113, %112 ]
  %99 = phi ptr [ %83, %95 ], [ %116, %112 ]
  %100 = phi i32 [ %4, %95 ], [ %117, %112 ]
  %101 = icmp ult i32 %98, 41
  br i1 %101, label %102, label %108, !prof !367

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %104 = load ptr, ptr %103, align 16
  %105 = zext nneg i32 %98 to i64
  %106 = getelementptr i8, ptr %104, i64 %105
  %107 = add nuw nsw i32 %98, 8
  store i32 %107, ptr %6, align 16
  br label %112

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr i8, ptr %110, i64 8
  store ptr %111, ptr %109, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = phi i32 [ %107, %102 ], [ %98, %108 ]
  %114 = phi ptr [ %106, %102 ], [ %110, %108 ]
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds ptr, ptr %99, i64 1
  store ptr %115, ptr %116, align 8, !tbaa !139
  %117 = add i32 %100, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %97, !prof !367, !llvm.loop !368

119:                                              ; preds = %112
  call void @llvm.va_end(ptr %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  br label %120

120:                                              ; preds = %88, %87, %94, %119
  %121 = phi ptr [ %116, %119 ], [ %83, %94 ], [ %83, %87 ], [ %92, %88 ]
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !139
  %122 = and i32 %3, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !357

124:                                              ; preds = %120
  %125 = call i32 @Perl_call_sv(ptr noundef %2, i32 noundef 4102) #27
  br label %133

126:                                              ; preds = %120
  %127 = call i32 @Perl_call_sv(ptr noundef %2, i32 noundef 4098) #27
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129, !prof !160

129:                                              ; preds = %126
  %130 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !139
  %131 = getelementptr inbounds ptr, ptr %130, i64 -1
  store ptr %131, ptr @PL_stack_sp, align 8, !tbaa !139
  %132 = load ptr, ptr %130, align 8, !tbaa !139
  br label %133

133:                                              ; preds = %124, %129, %126
  %134 = phi ptr [ null, %124 ], [ %132, %129 ], [ null, %126 ]
  %135 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !139
  %136 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %137 = getelementptr inbounds %struct.stackinfo, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !360
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !160

140:                                              ; preds = %133
  call void @Perl_croak_popstack() #27
  br label %141

141:                                              ; preds = %133, %140
  %142 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %143 = ptrtoint ptr %135 to i64
  %144 = ptrtoint ptr %142 to i64
  %145 = sub i64 %143, %144
  %146 = ashr exact i64 %145, 3
  %147 = load ptr, ptr @PL_curstack, align 8, !tbaa !139
  %148 = load ptr, ptr %147, align 8, !tbaa !195
  %149 = getelementptr inbounds %struct.xpvav, ptr %148, i64 0, i32 2
  store i64 %146, ptr %149, align 8, !tbaa !197
  %150 = load ptr, ptr %138, align 8, !tbaa !363
  %151 = getelementptr inbounds %struct.av, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !115
  store ptr %152, ptr @PL_stack_base, align 8, !tbaa !139
  %153 = load ptr, ptr %138, align 8, !tbaa !363
  %154 = load ptr, ptr %153, align 8, !tbaa !195
  %155 = getelementptr inbounds %struct.xpvav, ptr %154, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !364
  %157 = getelementptr inbounds ptr, ptr %152, i64 %156
  store ptr %157, ptr @PL_stack_max, align 8, !tbaa !139
  %158 = load ptr, ptr %138, align 8, !tbaa !363
  %159 = load ptr, ptr %158, align 8, !tbaa !195
  %160 = getelementptr inbounds %struct.xpvav, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !197
  %162 = getelementptr inbounds ptr, ptr %152, i64 %161
  store ptr %162, ptr @PL_stack_sp, align 8, !tbaa !139
  %163 = load ptr, ptr %138, align 8, !tbaa !363
  store ptr %163, ptr @PL_curstack, align 8, !tbaa !139
  store ptr %138, ptr @PL_curstackinfo, align 8, !tbaa !139
  br i1 %9, label %169, label %164, !prof !357

164:                                              ; preds = %141
  %165 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !187
  %166 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !187
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  call void @Perl_free_tmps() #27
  br label %169

169:                                              ; preds = %164, %168, %141
  call void @Perl_pop_scope() #27
  ret ptr %134
}

declare void @Perl_push_scope() local_unnamed_addr #3

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #3

declare void @Perl_save_re_context() local_unnamed_addr #3

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_markstack_grow() local_unnamed_addr #3

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_croak_popstack() local_unnamed_addr #3

declare void @Perl_free_tmps() local_unnamed_addr #3

declare void @Perl_pop_scope() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_getpack(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !146
  %5 = icmp eq i8 %4, 112
  br i1 %5, label %6, label %10, !prof !158

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !125
  %9 = or i8 %8, 4
  store i8 %9, ptr %7, align 1, !tbaa !125
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !159

13:                                               ; preds = %10
  %14 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.33, i32 noundef 0) #27
  store ptr %14, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !139
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %14, %13 ], [ %11, %10 ]
  %17 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %16, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !160

19:                                               ; preds = %15
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 1538) #27
  br label %20

20:                                               ; preds = %15, %19
  ret i32 0
}

declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.xpvmg, ptr %8, i64 0, i32 1
  br label %10

10:                                               ; preds = %14, %7
  %11 = phi ptr [ %9, %7 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !146
  %17 = icmp eq i8 %16, 116
  br i1 %17, label %18, label %10, !llvm.loop !209

18:                                               ; preds = %14, %10, %5
  %19 = phi ptr [ null, %5 ], [ null, %10 ], [ %12, %14 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.magic, ptr %19, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !164
  %24 = and i64 %23, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %0, i32 noundef 1538) #27
  %28 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @Perl_sv_magic(ptr noundef %27, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #27
  br label %31

31:                                               ; preds = %2, %18, %21, %30, %26
  %32 = phi ptr [ %27, %30 ], [ %27, %26 ], [ %0, %21 ], [ %0, %18 ], [ %0, %2 ]
  %33 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 6), align 16, !tbaa !139
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.34, i32 noundef 0) #27
  store ptr %36, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 6), align 16, !tbaa !139
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %39 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %38, i32 noundef 4, i32 noundef 2, ptr noundef %32)
  ret i32 0
}

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #5 !prof !356 !PGOFuncName !369 {
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !prof !366

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !164
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %14, label %16, !prof !226

14:                                               ; preds = %10
  %15 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %8, i64 noundef %12, i32 noundef 524288) #27
  br label %28

16:                                               ; preds = %10
  %17 = icmp eq i64 %12, -2
  %18 = select i1 %17, ptr %8, ptr null, !prof !367
  br label %28

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !146
  %22 = icmp eq i8 %21, 112
  br i1 %22, label %23, label %28, !prof !370

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !164
  %26 = tail call ptr @Perl_newSViv(i64 noundef %25) #27
  %27 = tail call ptr @Perl_sv_2mortal(ptr noundef %26) #27
  br label %28

28:                                               ; preds = %16, %19, %23, %14
  %29 = phi ptr [ %15, %14 ], [ %26, %23 ], [ null, %19 ], [ %18, %16 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34, !prof !366

31:                                               ; preds = %28
  %32 = add nsw i32 %4, -1
  %33 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %32, ptr noundef %5)
  br label %36

34:                                               ; preds = %28
  %35 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %29, ptr noundef %5)
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %35, %34 ], [ %33, %31 ]
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_clearpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !146
  %5 = icmp eq i8 %4, 113
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 31), align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.35, i32 noundef 0) #27
  store ptr %10, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 31), align 8, !tbaa !139
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %13 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %12, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 1538) #27
  br label %16

16:                                               ; preds = %15, %11, %2
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_magic_sizepack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 5), align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.36, i32 noundef 0) #27
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 5), align 8, !tbaa !139
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !108
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %9, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !115
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %9, i32 noundef 2) #27
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, -1
  %26 = icmp ugt i32 %24, -2147483648
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37) #27
  br label %28

28:                                               ; preds = %22, %27, %7
  %29 = phi i32 [ %25, %27 ], [ %25, %22 ], [ 0, %7 ]
  ret i32 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_wipepack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 32), align 16, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.38, i32 noundef 0) #27
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 32), align 16, !tbaa !139
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef 4, i32 noundef 0)
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_nextpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 !prof !173 {
  %4 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %5, 255
  %9 = icmp eq i32 %8, 8
  %10 = or i1 %7, %9
  %11 = and i32 %5, 16777471
  %12 = icmp eq i32 %11, 16777226
  %13 = or i1 %12, %10
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 16), align 16, !tbaa !139
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.39, i32 noundef 0) #27
  store ptr %18, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 16), align 16, !tbaa !139
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef 0, i32 noundef 1, ptr noundef %2)
  br label %30

22:                                               ; preds = %3
  %23 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 15), align 8, !tbaa !139
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.40, i32 noundef 0) #27
  store ptr %26, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 15), align 8, !tbaa !139
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %29 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %28, i32 noundef 0, i32 noundef 0)
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi ptr [ %21, %19 ], [ %29, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @Perl_sv_setsv_flags(ptr noundef %2, ptr noundef nonnull %31, i32 noundef 1538) #27
  br label %34

34:                                               ; preds = %33, %30
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_existspack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 8), align 16, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.41, i32 noundef 0) #27
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 8), align 16, !tbaa !139
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 1538) #27
  br label %12

12:                                               ; preds = %7, %11
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_magic_scalarpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_newRV(ptr noundef %0) #27
  %8 = tail call ptr @Perl_sv_2mortal(ptr noundef %7) #27
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = load ptr, ptr %13, align 8, !tbaa !371
  %15 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 0) #27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !346
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = load ptr, ptr %0, align 8, !tbaa !348
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !349
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !373
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %17, %22
  %33 = tail call ptr @Perl_sv_newmortal() #27
  %34 = tail call i32 @Perl_magic_nextpack(ptr noundef %0, ptr noundef %1, ptr noundef %33)
  tail call void @Perl_hv_eiter_set(ptr noundef %0, ptr noundef null) #27
  %35 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !108
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = select i1 %41, i1 true, i1 %43
  %45 = select i1 %44, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %56

46:                                               ; preds = %9
  %47 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 17), align 8, !tbaa !139
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.42, i32 noundef 0) #27
  store ptr %50, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 17), align 8, !tbaa !139
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ %47, %46 ]
  %53 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %52, i32 noundef 0, i32 noundef 0)
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @PL_sv_undef, ptr %53
  br label %56

56:                                               ; preds = %32, %22, %51
  %57 = phi ptr [ %55, %51 ], [ %45, %32 ], [ @PL_sv_yes, %22 ]
  ret ptr %57
}

declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setdbline(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !164
  %5 = icmp eq i64 %4, -2
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, i64 noundef %4, ptr noundef %8) #27
  br label %9

9:                                                ; preds = %2, %6
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !220
  %12 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  %14 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %13, i32 noundef 2) #27
  %15 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %14, i32 noundef 0) #27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %15, align 8, !tbaa !139
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !108
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %93, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !114
  %25 = getelementptr inbounds %struct.xpviv, ptr %24, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !115
  %27 = inttoptr i64 %26 to ptr
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %93, label %29

29:                                               ; preds = %23
  %30 = icmp eq ptr %0, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !108
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %0, i32 noundef 2) #27
  br i1 %37, label %85, label %89

38:                                               ; preds = %31
  %39 = and i32 %33, 65280
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %33, 255
  %42 = icmp eq i32 %41, 8
  %43 = or i1 %40, %42
  %44 = and i32 %33, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %45, %43
  br i1 %46, label %47, label %89

47:                                               ; preds = %38
  %48 = and i32 %33, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8, !tbaa !114
  %52 = icmp eq ptr %51, null
  br i1 %52, label %89, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !189
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %85, label %57

57:                                               ; preds = %53
  %58 = icmp eq i64 %55, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = load i8, ptr %61, align 1, !tbaa !115
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %89, label %85

64:                                               ; preds = %47
  %65 = and i32 %33, 768
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %64
  %68 = and i32 %33, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 8, !tbaa !114
  %72 = getelementptr inbounds %struct.xpviv, ptr %71, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !115
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70, %67
  %76 = and i32 %33, 512
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %0, align 8, !tbaa !114
  %80 = getelementptr inbounds %struct.xpvnv, ptr %79, i64 0, i32 5
  %81 = load double, ptr %80, align 8, !tbaa !115
  %82 = fcmp une double %81, 0.000000e+00
  br i1 %82, label %85, label %89

83:                                               ; preds = %64
  %84 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %0, i32 noundef 0) #27
  br i1 %84, label %85, label %89

85:                                               ; preds = %59, %83, %78, %70, %53, %36
  %86 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %87 = load i8, ptr %86, align 2, !tbaa !374
  %88 = or i8 %87, -128
  store i8 %88, ptr %86, align 2, !tbaa !374
  br label %93

89:                                               ; preds = %83, %78, %38, %29, %75, %59, %57, %50, %36
  %90 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %91 = load i8, ptr %90, align 2, !tbaa !374
  %92 = and i8 %91, 127
  store i8 %92, ptr %90, align 2, !tbaa !374
  br label %93

93:                                               ; preds = %23, %89, %85, %17, %9
  ret i32 0
}

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getarylen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @Perl_mg_size(ptr noundef nonnull %4)
  %13 = sext i32 %12 to i64
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %4, align 8, !tbaa !195
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !197
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i64 [ %13, %11 ], [ %17, %14 ]
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %19) #27
  br label %21

20:                                               ; preds = %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #27
  br label %21

21:                                               ; preds = %20, %18
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setarylen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !115
  br label %17

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  tail call void @Perl_av_fill(ptr noundef nonnull %4, i64 noundef %18) #27
  br label %20

19:                                               ; preds = %2
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.44) #27
  br label %20

20:                                               ; preds = %19, %17
  ret i32 0
}

declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_cleararylen_p(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i64 0, ptr %4, align 8, !tbaa !187
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_freearylen_p(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !prof !173 {
  %3 = load i8, ptr @PL_in_clean_all, align 1, !tbaa !279, !range !168, !noundef !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !220
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.xpvmg, ptr %10, i64 0, i32 1
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !146
  %19 = icmp eq i8 %18, 35
  br i1 %19, label %20, label %12, !llvm.loop !209

20:                                               ; preds = %16, %12, %5
  %21 = phi ptr [ null, %5 ], [ null, %12 ], [ %14, %16 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.magic, ptr %21, i64 0, i32 6
  store ptr null, ptr %24, align 8, !tbaa !220
  br label %25

25:                                               ; preds = %20, %23, %2
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getpos(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = tail call ptr @Perl_mg_find_mglob(ptr noundef %5)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !164
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !125
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !108
  %20 = and i32 %19, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct.cop, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !267
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i64 @Perl_sv_pos_b2u_flags(ptr noundef %5, i64 noundef %10, i32 noundef 34) #27
  br label %30

30:                                               ; preds = %28, %22, %17, %12
  %31 = phi i64 [ %10, %22 ], [ %29, %28 ], [ %10, %17 ], [ %10, %12 ]
  tail call void @Perl_sv_setuv(ptr noundef nonnull %0, i64 noundef %31) #27
  br label %33

32:                                               ; preds = %8, %2
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1538) #27
  br label %33

33:                                               ; preds = %32, %30
  ret i32 0
}

declare i64 @Perl_sv_pos_b2u_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setpos(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = alloca i64, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.xpvlv, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = tail call ptr @Perl_mg_find_mglob(ptr noundef %6)
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !108
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %8, label %19, label %22

19:                                               ; preds = %2
  br i1 %18, label %20, label %106

20:                                               ; preds = %19
  %21 = tail call ptr @Perl_sv_magicext_mglob(ptr noundef %6) #27
  br label %25

22:                                               ; preds = %2
  br i1 %18, label %25, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 5
  store i64 -1, ptr %24, align 8, !tbaa !164
  br label %106

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %7, %22 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !108
  %29 = and i32 %28, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !189
  store i64 %34, ptr %3, align 8, !tbaa !187
  %35 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !115
  br label %39

37:                                               ; preds = %25
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %36, %31 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = and i32 %42, 2097408
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !114
  %47 = getelementptr inbounds %struct.xpviv, ptr %46, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !115
  br label %51

49:                                               ; preds = %39
  %50 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i64 [ %48, %45 ], [ %50, %49 ]
  %53 = load i32, ptr %27, align 4, !tbaa !108
  %54 = and i32 %53, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %58 = getelementptr inbounds %struct.cop, ptr %57, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !267
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = and i32 %53, 2097152
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = and i32 %53, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !115
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !108
  %73 = and i32 %72, 1048576
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %70, align 8, !tbaa !114
  %77 = load ptr, ptr %76, align 8, !tbaa !371
  %78 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !346
  %80 = and i32 %79, 268435456
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75, %62
  %83 = load i64, ptr %3, align 8, !tbaa !187
  %84 = getelementptr inbounds i8, ptr %40, i64 %83
  %85 = call i64 @Perl_utf8_length(ptr noundef %40, ptr noundef %84) #27
  br label %88

86:                                               ; preds = %75, %68, %65
  %87 = call i64 @Perl_sv_len_utf8(ptr noundef %6) #27
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i64 [ %85, %82 ], [ %87, %86 ]
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i64 %89, ptr %3, align 8, !tbaa !187
  br label %92

92:                                               ; preds = %88, %91, %56, %51
  %93 = icmp slt i64 %52, 0
  %94 = load i64, ptr %3, align 8, !tbaa !187
  br i1 %93, label %95, label %98

95:                                               ; preds = %92
  %96 = add i64 %94, %52
  %97 = call i64 @llvm.smax.i64(i64 %96, i64 0)
  br label %100

98:                                               ; preds = %92
  %99 = call i64 @llvm.smin.i64(i64 %52, i64 %94)
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i64 [ %97, %95 ], [ %99, %98 ]
  %102 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 5
  store i64 %101, ptr %102, align 8, !tbaa !164
  %103 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 4
  %104 = load i8, ptr %103, align 1, !tbaa !125
  %105 = and i8 %104, -66
  store i8 %105, ptr %103, align 1, !tbaa !125
  br label %106

106:                                              ; preds = %19, %100, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #3

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getsubstr(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %6 = load ptr, ptr %0, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.xpvlv, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !108
  %11 = and i32 %10, 2098176
  %12 = icmp eq i32 %11, 1024
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !189
  store i64 %16, ptr %3, align 8, !tbaa !187
  %17 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  br label %21

19:                                               ; preds = %2
  %20 = call ptr @Perl_sv_2pv_flags(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %18, %13 ], [ %20, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %23 = load ptr, ptr %0, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.xpvlv, ptr %23, i64 0, i32 6
  %25 = load i64, ptr %24, align 8, !tbaa !115
  store i64 %25, ptr %4, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %26 = getelementptr inbounds %struct.xpvlv, ptr %23, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !219
  store i64 %27, ptr %5, align 8, !tbaa !187
  %28 = getelementptr inbounds %struct.xpvlv, ptr %23, i64 0, i32 10
  %29 = load i8, ptr %28, align 1, !tbaa !376
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, 2
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr %9, align 4, !tbaa !108
  %36 = and i32 %35, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %21
  %39 = and i32 %35, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = and i32 %35, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !108
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %46, align 8, !tbaa !114
  %53 = load ptr, ptr %52, align 8, !tbaa !371
  %54 = getelementptr inbounds %struct.hv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !346
  %56 = and i32 %55, 268435456
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51, %38
  %59 = load i64, ptr %3, align 8, !tbaa !187
  %60 = getelementptr inbounds i8, ptr %22, i64 %59
  %61 = call i64 @Perl_utf8_length(ptr noundef %22, ptr noundef %60) #27
  br label %66

62:                                               ; preds = %51, %44, %41
  %63 = call i64 @Perl_sv_len_utf8(ptr noundef %8) #27
  br label %66

64:                                               ; preds = %21
  %65 = load i64, ptr %3, align 8, !tbaa !187
  br label %66

66:                                               ; preds = %58, %62, %64
  %67 = phi i64 [ %65, %64 ], [ %61, %58 ], [ %63, %62 ]
  %68 = load i64, ptr %4, align 8
  %69 = sub nsw i64 0, %68
  %70 = select i1 %32, i64 %68, i64 %69
  %71 = load i64, ptr %5, align 8
  %72 = sub nsw i64 0, %71
  %73 = select i1 %34, i64 %71, i64 %72
  %74 = call zeroext i1 @Perl_translate_substr_offsets(i64 noundef %67, i64 noundef %70, i1 noundef zeroext %32, i64 noundef %73, i1 noundef zeroext %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 27, ptr noundef nonnull @.str.45) #27
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1536) #27
  br label %127

76:                                               ; preds = %66
  %77 = load i32, ptr %9, align 4, !tbaa !108
  %78 = and i32 %77, 536870912
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %76
  %81 = load i64, ptr %4, align 8, !tbaa !187
  %82 = and i32 %77, 2097152
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = and i32 %77, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !115
  %90 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !108
  %92 = and i32 %91, 1048576
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %89, align 8, !tbaa !114
  %96 = load ptr, ptr %95, align 8, !tbaa !371
  %97 = getelementptr inbounds %struct.hv, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !346
  %99 = and i32 %98, 268435456
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %94, %80
  %102 = trunc i64 %81 to i32
  %103 = call ptr @Perl_utf8_hop(ptr noundef %22, i32 noundef %102) #27
  %104 = load i64, ptr %5, align 8, !tbaa !187
  %105 = trunc i64 %104 to i32
  %106 = call ptr @Perl_utf8_hop(ptr noundef %103, i32 noundef %105) #27
  %107 = ptrtoint ptr %106 to i64
  %108 = ptrtoint ptr %103 to i64
  %109 = sub i64 %107, %108
  store i64 %109, ptr %5, align 8, !tbaa !187
  %110 = ptrtoint ptr %22 to i64
  %111 = sub i64 %108, %110
  br label %114

112:                                              ; preds = %94, %87, %84
  %113 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef %8, i64 noundef %81, ptr noundef nonnull %5, i32 noundef 32) #27
  br label %114

114:                                              ; preds = %101, %112
  %115 = phi i64 [ %111, %101 ], [ %113, %112 ]
  store i64 %115, ptr %4, align 8, !tbaa !187
  br label %116

116:                                              ; preds = %114, %76
  %117 = load i64, ptr %4, align 8, !tbaa !187
  %118 = getelementptr inbounds i8, ptr %22, i64 %117
  %119 = load i64, ptr %5, align 8, !tbaa !187
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef %118, i64 noundef %119) #27
  %120 = load i32, ptr %9, align 4, !tbaa !108
  %121 = and i32 %120, 536870912
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !108
  %126 = or i32 %125, 536870912
  store i32 %126, ptr %124, align 4, !tbaa !108
  br label %127

127:                                              ; preds = %116, %123, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare zeroext i1 @Perl_translate_substr_offsets(i64 noundef, i64 noundef, i1 noundef zeroext, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setsubstr(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !189
  store i64 %14, ptr %3, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  br label %19

17:                                               ; preds = %2
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 34) #27
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !114
  %22 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %24 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 6
  %25 = load i64, ptr %24, align 8, !tbaa !115
  store i64 %25, ptr %5, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %26 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !219
  store i64 %27, ptr %6, align 8, !tbaa !187
  %28 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 10
  %29 = load i8, ptr %28, align 1, !tbaa !376
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %30, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !108
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %19
  %40 = call i32 @Perl_mg_get(ptr noundef %23)
  br label %41

41:                                               ; preds = %19, %39
  %42 = load i32, ptr %35, align 4, !tbaa !108
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 27, ptr noundef nonnull @.str.46) #27
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr %35, align 4, !tbaa !108
  %48 = and i32 %47, 430018304
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load ptr, ptr %23, align 8, !tbaa !114
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !189
  store i64 %53, ptr %4, align 8, !tbaa !187
  br label %56

54:                                               ; preds = %46
  %55 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 0) #27
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, ptr %35, align 4, !tbaa !108
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef %23) #27
  store i64 %61, ptr %4, align 8, !tbaa !187
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i64, ptr %4, align 8, !tbaa !187
  %64 = load i64, ptr %5, align 8
  %65 = sub nsw i64 0, %64
  %66 = select i1 %32, i64 %64, i64 %65
  %67 = load i64, ptr %6, align 8
  %68 = sub nsw i64 0, %67
  %69 = select i1 %34, i64 %67, i64 %68
  %70 = call zeroext i1 @Perl_translate_substr_offsets(i64 noundef %63, i64 noundef %66, i1 noundef zeroext %32, i64 noundef %69, i1 noundef zeroext %34, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #27
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i64, ptr %6, align 8, !tbaa !187
  %74 = load i32, ptr %7, align 4, !tbaa !108
  %75 = and i32 %74, 536870912
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %119, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %79 = getelementptr inbounds %struct.cop, ptr %78, i64 0, i32 10
  %80 = load i32, ptr %79, align 8, !tbaa !267
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %77
  %84 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %23, i32 noundef 0, i64 noundef 0) #27
  %85 = load i64, ptr %5, align 8, !tbaa !187
  %86 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef %23, i64 noundef %85, ptr noundef nonnull %6, i32 noundef 32) #27
  store i64 %86, ptr %5, align 8, !tbaa !187
  %87 = load i64, ptr %6, align 8, !tbaa !187
  %88 = load i64, ptr %3, align 8, !tbaa !187
  call void @Perl_sv_insert_flags(ptr noundef %23, i64 noundef %86, i64 noundef %87, ptr noundef %20, i64 noundef %88, i32 noundef 0) #27
  %89 = load i32, ptr %7, align 4, !tbaa !108
  %90 = and i32 %89, 2097152
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = and i32 %89, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !115
  %98 = getelementptr inbounds %struct.sv, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !108
  %100 = and i32 %99, 1048576
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %97, align 8, !tbaa !114
  %104 = load ptr, ptr %103, align 8, !tbaa !371
  %105 = getelementptr inbounds %struct.hv, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !346
  %107 = and i32 %106, 268435456
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102, %83
  %110 = load i64, ptr %3, align 8, !tbaa !187
  %111 = getelementptr inbounds i8, ptr %20, i64 %110
  %112 = call i64 @Perl_utf8_length(ptr noundef %20, ptr noundef %111) #27
  br label %115

113:                                              ; preds = %102, %95, %92
  %114 = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %0) #27
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i64 [ %112, %109 ], [ %114, %113 ]
  %117 = load i32, ptr %35, align 4, !tbaa !108
  %118 = or i32 %117, 536870912
  store i32 %118, ptr %35, align 4, !tbaa !108
  br label %134

119:                                              ; preds = %77, %72
  %120 = load i32, ptr %35, align 4, !tbaa !108
  %121 = and i32 %120, 536870912
  %122 = icmp eq i32 %121, 0
  %123 = load i64, ptr %5, align 8, !tbaa !187
  br i1 %122, label %131, label %124

124:                                              ; preds = %119
  %125 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef %23, i64 noundef %123, ptr noundef nonnull %6, i32 noundef 32) #27
  store i64 %125, ptr %5, align 8, !tbaa !187
  %126 = load i64, ptr %3, align 8, !tbaa !187
  %127 = call ptr @Perl_bytes_to_utf8(ptr noundef %20, ptr noundef nonnull %3) #27
  %128 = load i64, ptr %5, align 8, !tbaa !187
  %129 = load i64, ptr %6, align 8, !tbaa !187
  %130 = load i64, ptr %3, align 8, !tbaa !187
  call void @Perl_sv_insert_flags(ptr noundef %23, i64 noundef %128, i64 noundef %129, ptr noundef %127, i64 noundef %130, i32 noundef 0) #27
  call void @Perl_safesysfree(ptr noundef %127) #27
  br label %134

131:                                              ; preds = %119
  %132 = load i64, ptr %3, align 8, !tbaa !187
  call void @Perl_sv_insert_flags(ptr noundef %23, i64 noundef %123, i64 noundef %73, ptr noundef %20, i64 noundef %132, i32 noundef 0) #27
  %133 = load i64, ptr %3, align 8, !tbaa !187
  br label %134

134:                                              ; preds = %124, %131, %115
  %135 = phi i64 [ %126, %124 ], [ %133, %131 ], [ %116, %115 ]
  br i1 %34, label %136, label %139

136:                                              ; preds = %134
  %137 = load ptr, ptr %0, align 8, !tbaa !114
  %138 = getelementptr inbounds %struct.xpvlv, ptr %137, i64 0, i32 7
  store i64 %135, ptr %138, align 8, !tbaa !219
  br label %139

139:                                              ; preds = %136, %134
  br i1 %32, label %146, label %140

140:                                              ; preds = %139
  %141 = sub i64 %135, %73
  %142 = load ptr, ptr %0, align 8, !tbaa !114
  %143 = getelementptr inbounds %struct.xpvlv, ptr %142, i64 0, i32 6
  %144 = load i64, ptr %143, align 8, !tbaa !115
  %145 = add i64 %141, %144
  store i64 %145, ptr %143, align 8, !tbaa !115
  br label %146

146:                                              ; preds = %140, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #3

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_gettaint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 !prof !173 {
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !164
  %8 = and i64 %7, 1
  %9 = icmp ne i64 %8, 0
  %10 = load ptr, ptr @PL_curcop, align 8
  %11 = icmp ne ptr %10, @PL_compiling
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i8 1, ptr @PL_tainted, align 1, !tbaa !279
  br label %14

14:                                               ; preds = %2, %5, %13
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_settaint(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #18 !prof !173 {
  %3 = load i8, ptr @PL_tainted, align 1, !tbaa !279, !range !168, !noundef !169
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !164
  %6 = and i64 %5, -2
  %7 = zext nneg i8 %3 to i64
  %8 = or disjoint i64 %6, %7
  store i64 %8, ptr %4, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getvec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !219
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @Perl_do_vecget(ptr noundef %5, i64 noundef %7, i32 noundef %10) #27
  tail call void @Perl_sv_setuv(ptr noundef nonnull %0, i64 noundef %11) #27
  ret i32 0
}

declare i64 @Perl_do_vecget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_setvec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 !prof !377 {
  tail call void @Perl_do_vecset(ptr noundef %0) #27
  ret i32 0
}

declare void @Perl_do_vecset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_defelem_target(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 !prof !378 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %17, !prof !379

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.xpvmg, ptr %7, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 3
  %15 = load i8, ptr %14, align 2, !tbaa !146
  %16 = icmp eq i8 %15, 121
  br i1 %16, label %17, label %9, !llvm.loop !209

17:                                               ; preds = %13, %9, %4, %2
  %18 = phi ptr [ %1, %2 ], [ null, %4 ], [ null, %9 ], [ %11, %13 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !114
  %20 = getelementptr inbounds %struct.xpvlv, ptr %19, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !219
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %112, label %23, !prof !379

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.magic, ptr %18, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27, !prof !379

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xpvlv, ptr %19, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !214
  %30 = tail call ptr @Perl_hv_common(ptr noundef %29, ptr noundef nonnull %25, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %75, label %32, !prof !380

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.he, ptr %30, i64 0, i32 2
  br label %72

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.xpvlv, ptr %19, i64 0, i32 6
  %36 = load i64, ptr %35, align 8, !tbaa !115
  %37 = icmp sgt i64 %36, -1
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xpvlv, ptr %19, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !214
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = and i32 %42, 8388608
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = tail call i32 @Perl_mg_size(ptr noundef %40)
  %47 = sext i32 %46 to i64
  br label %52

48:                                               ; preds = %38
  %49 = load ptr, ptr %40, align 8, !tbaa !195
  %50 = getelementptr inbounds %struct.xpvav, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !197
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = icmp sgt i64 %36, %53
  br i1 %54, label %75, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %41, align 4, !tbaa !381
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 8, !tbaa !114
  %61 = getelementptr inbounds %struct.xpvlv, ptr %60, i64 0, i32 6
  %62 = load i64, ptr %61, align 8, !tbaa !115
  %63 = tail call ptr @Perl_av_fetch(ptr noundef %40, i64 noundef %62, i32 noundef 0) #27
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %72

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.av, ptr %40, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = load ptr, ptr %0, align 8, !tbaa !114
  %69 = getelementptr inbounds %struct.xpvlv, ptr %68, i64 0, i32 6
  %70 = load i64, ptr %69, align 8, !tbaa !115
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  br label %72

72:                                               ; preds = %59, %32, %65
  %73 = phi ptr [ %71, %65 ], [ %33, %32 ], [ %63, %59 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !115
  br label %75

75:                                               ; preds = %72, %52, %59, %27, %34
  %76 = phi ptr [ null, %34 ], [ null, %27 ], [ null, %52 ], [ null, %59 ], [ %74, %72 ]
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %76, @PL_sv_undef
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %115, !prof !379

80:                                               ; preds = %75
  %81 = load ptr, ptr %0, align 8, !tbaa !114
  %82 = getelementptr inbounds %struct.xpvlv, ptr %81, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !214
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !147
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = add i32 %87, -1
  store i32 %90, ptr %86, align 8, !tbaa !147
  br label %92

91:                                               ; preds = %85
  tail call void @Perl_sv_free2(ptr noundef nonnull %83, i32 noundef %87) #27
  br label %92

92:                                               ; preds = %80, %89, %91
  %93 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !147
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !147
  %96 = load ptr, ptr %0, align 8, !tbaa !114
  %97 = getelementptr inbounds %struct.xpvlv, ptr %96, i64 0, i32 8
  store ptr %76, ptr %97, align 8, !tbaa !214
  %98 = getelementptr inbounds %struct.xpvlv, ptr %96, i64 0, i32 7
  store i64 0, ptr %98, align 8, !tbaa !219
  %99 = load ptr, ptr %24, align 8, !tbaa !220
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !147
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = add i32 %103, -1
  store i32 %106, ptr %102, align 8, !tbaa !147
  br label %108

107:                                              ; preds = %101
  tail call void @Perl_sv_free2(ptr noundef nonnull %99, i32 noundef %103) #27
  br label %108

108:                                              ; preds = %92, %105, %107
  store ptr null, ptr %24, align 8, !tbaa !220
  %109 = getelementptr inbounds %struct.magic, ptr %18, i64 0, i32 4
  %110 = load i8, ptr %109, align 1, !tbaa !125
  %111 = and i8 %110, -3
  store i8 %111, ptr %109, align 1, !tbaa !125
  br label %115

112:                                              ; preds = %17
  %113 = getelementptr inbounds %struct.xpvlv, ptr %19, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !214
  br label %115

115:                                              ; preds = %75, %108, %112
  %116 = phi ptr [ %114, %112 ], [ %76, %108 ], [ %76, %75 ]
  ret ptr %116
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_getdefelem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !378 {
  %3 = tail call ptr @Perl_defelem_target(ptr noundef %0, ptr noundef %1)
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %3, i32 noundef 1538) #27
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setdefelem(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !219
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.xpvlv, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !214
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %11, ptr noundef nonnull %0, i32 noundef 1538) #27
  %14 = load ptr, ptr %0, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.xpvlv, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !214
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @Perl_mg_set(ptr noundef %16)
  br label %23

23:                                               ; preds = %13, %21, %8
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_killbackrefs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !382 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  tail call void @Perl_sv_kill_backrefs(ptr noundef %0, ptr noundef %4) #27
  ret i32 0
}

declare void @Perl_sv_kill_backrefs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @Perl_magic_setmglob(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #19 !prof !383 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  store i64 -1, ptr %3, align 8, !tbaa !164
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setuvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !384
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !312
  %13 = tail call i32 %8(i64 noundef %12, ptr noundef %0) #27
  br label %14

14:                                               ; preds = %10, %6, %2
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_magic_setregexp(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !146
  %5 = icmp eq i8 %4, 66
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = and i32 %8, 1073741823
  store i32 %9, ptr %7, align 4, !tbaa !108
  br label %10

10:                                               ; preds = %6, %2
  %11 = sext i8 %4 to i32
  %12 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef %11) #27
  ret i32 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setlvref(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #27
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !319
  %11 = lshr i16 %10, 4
  %12 = and i16 %11, 3
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !108
  %17 = and i32 %16, 255
  switch i16 %12, label %30 [
    i16 0, label %18
    i16 1, label %21
    i16 2, label %24
    i16 3, label %27
  ]

18:                                               ; preds = %8
  %19 = icmp ult i32 %17, 11
  %20 = select i1 %19, ptr null, ptr @.str.48
  br label %31

21:                                               ; preds = %8
  %22 = icmp eq i32 %17, 11
  %23 = select i1 %22, ptr null, ptr @.str.49
  br label %31

24:                                               ; preds = %8
  %25 = icmp eq i32 %17, 12
  %26 = select i1 %25, ptr null, ptr @.str.50
  br label %31

27:                                               ; preds = %8
  %28 = icmp eq i32 %17, 13
  %29 = select i1 %28, ptr null, ptr @.str.51
  br label %31

30:                                               ; preds = %8
  unreachable

31:                                               ; preds = %27, %24, %21, %18
  %32 = phi i1 [ %19, %18 ], [ %22, %21 ], [ %25, %24 ], [ %28, %27 ]
  %33 = phi ptr [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ]
  br i1 %32, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52, ptr noundef %33) #27
  br label %35

35:                                               ; preds = %34, %31
  %36 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !220
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !108
  %42 = trunc i32 %41 to i8
  br label %43

43:                                               ; preds = %35, %39
  %44 = phi i8 [ %42, %39 ], [ 0, %35 ]
  switch i8 %44, label %104 [
    i8 0, label %45
    i8 9, label %64
    i8 11, label %72
    i8 12, label %94
  ]

45:                                               ; preds = %43
  %46 = load ptr, ptr @PL_curpad, align 8, !tbaa !139
  %47 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %48 = load i64, ptr %47, align 8, !tbaa !164
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !139
  %51 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !147
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !147
  store ptr %52, ptr %49, align 8, !tbaa !139
  %56 = icmp eq ptr %50, null
  br i1 %56, label %104, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !147
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = add i32 %59, -1
  store i32 %62, ptr %58, align 8, !tbaa !147
  br label %104

63:                                               ; preds = %57
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %59) #27
  br label %104

64:                                               ; preds = %43
  tail call void @Perl_gv_setref(ptr noundef %37, ptr noundef %0) #27
  %65 = load ptr, ptr %36, align 8, !tbaa !220
  %66 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !108
  %68 = and i32 %67, 4194304
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %104, label %70

70:                                               ; preds = %64
  %71 = tail call i32 @Perl_mg_set(ptr noundef %65)
  br label %104

72:                                               ; preds = %43
  %73 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !163
  %75 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !108
  %77 = and i32 %76, 2097408
  %78 = icmp eq i32 %77, 256
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load ptr, ptr %74, align 8, !tbaa !114
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !115
  br label %85

83:                                               ; preds = %72
  %84 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %74, i32 noundef 2) #27
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i64 [ %82, %79 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !115
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !147
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !147
  %92 = load ptr, ptr %87, align 8, !tbaa !115
  %93 = tail call ptr @Perl_av_store(ptr noundef %37, i64 noundef %86, ptr noundef %92) #27
  br label %104

94:                                               ; preds = %43
  %95 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !163
  %97 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !115
  %99 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !147
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !147
  %102 = load ptr, ptr %97, align 8, !tbaa !115
  %103 = tail call ptr @Perl_hv_common(ptr noundef %37, ptr noundef %96, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %102, i32 noundef 0) #27
  br label %104

104:                                              ; preds = %63, %61, %45, %70, %64, %94, %43, %85
  %105 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %106 = load i8, ptr %105, align 1, !tbaa !125
  %107 = icmp sgt i8 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef 92) #27
  br label %110

110:                                              ; preds = %104, %108
  ret i32 0
}

declare void @Perl_gv_setref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_set(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !385 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %33, !prof !386

10:                                               ; preds = %2
  %11 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !164
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !253
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %278, %13
  %21 = phi ptr [ %276, %278 ], [ %18, %13 ]
  %22 = phi i32 [ %282, %278 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.p5rx, ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = getelementptr inbounds %struct.regexp, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !274
  %27 = getelementptr inbounds %struct.regexp_engine, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !387
  tail call void %28(ptr noundef nonnull %21, i32 noundef %22, ptr noundef %0) #27
  br label %1093

29:                                               ; preds = %278, %271, %274, %10, %13
  %30 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %1093

32:                                               ; preds = %29
  tail call void @Perl_croak_no_modify() #27
  br label %1093

33:                                               ; preds = %2
  %34 = load i8, ptr %8, align 1, !tbaa !115
  switch i8 %34, label %1093 [
    i8 1, label %35
    i8 3, label %104
    i8 4, label %119
    i8 5, label %134
    i8 6, label %227
    i8 8, label %241
    i8 9, label %255
    i8 14, label %271
    i8 15, label %284
    i8 16, label %367
    i8 20, label %386
    i8 21, label %399
    i8 23, label %406
    i8 46, label %532
    i8 94, label %585
    i8 126, label %610
    i8 61, label %635
    i8 45, label %655
    i8 37, label %683
    i8 124, label %703
    i8 47, label %755
    i8 92, label %813
    i8 91, label %837
    i8 63, label %852
    i8 33, label %869
    i8 60, label %893
    i8 62, label %917
    i8 40, label %941
    i8 41, label %965
    i8 58, label %989
    i8 36, label %1004
    i8 48, label %1034
  ], !prof !388

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !108
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %37, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  %46 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !139
  br i1 %45, label %47, label %48

47:                                               ; preds = %35
  tail call void @Perl_sv_copypv_flags(ptr noundef %46, ptr noundef %0, i32 noundef 2) #27
  br label %56

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !108
  %51 = and i32 %50, 1610547455
  store i32 %51, ptr %49, align 4, !tbaa !108
  %52 = and i32 %50, 33554432
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @Perl_sv_backoff(ptr noundef %46) #27
  br label %56

56:                                               ; preds = %48, %54, %47
  %57 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !139
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = getelementptr inbounds %struct.xpviv, ptr %58, i64 0, i32 4
  store i64 0, ptr %59, align 8, !tbaa !115
  %60 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !108
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !115
  %67 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %66, i32 noundef 10) #28
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %64, %69
  %70 = phi ptr [ %76, %69 ], [ %67, %64 ]
  %71 = load ptr, ptr %57, align 8, !tbaa !114
  %72 = getelementptr inbounds %struct.xpviv, ptr %71, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !115
  %74 = add nsw i64 %73, 1
  store i64 %74, ptr %72, align 8, !tbaa !115
  %75 = getelementptr inbounds i8, ptr %70, i64 1
  %76 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %75, i32 noundef 10) #28
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %69, !llvm.loop !389

78:                                               ; preds = %69, %64, %56
  %79 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %1093, label %81

81:                                               ; preds = %78
  %82 = icmp eq ptr %0, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %0, align 8, !tbaa !114
  %85 = getelementptr inbounds %struct.xpvmg, ptr %84, i64 0, i32 1
  br label %86

86:                                               ; preds = %90, %83
  %87 = phi ptr [ %85, %83 ], [ %88, %90 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !115
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.magic, ptr %88, i64 0, i32 3
  %92 = load i8, ptr %91, align 2, !tbaa !146
  %93 = icmp eq i8 %92, 116
  br i1 %93, label %94, label %86, !llvm.loop !209

94:                                               ; preds = %90, %86, %81
  %95 = phi ptr [ null, %81 ], [ null, %86 ], [ %88, %90 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.magic, ptr %95, i64 0, i32 5
  %99 = load i64, ptr %98, align 8, !tbaa !164
  %100 = and i64 %99, 1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  tail call void @Perl_sv_magic(ptr noundef nonnull %57, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #27
  br label %1093

103:                                              ; preds = %97, %94
  tail call void @Perl_sv_untaint(ptr noundef nonnull %57) #27
  br label %1093

104:                                              ; preds = %33
  %105 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !108
  %107 = and i32 %106, 2097408
  %108 = icmp eq i32 %107, 256
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 8, !tbaa !114
  %111 = getelementptr inbounds %struct.xpviv, ptr %110, i64 0, i32 4
  %112 = load i64, ptr %111, align 8, !tbaa !115
  br label %115

113:                                              ; preds = %104
  %114 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i64 [ %112, %109 ], [ %114, %113 ]
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i8
  store i8 %118, ptr @PL_minus_c, align 1, !tbaa !279
  br label %1093

119:                                              ; preds = %33
  %120 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !108
  %122 = and i32 %121, 2097408
  %123 = icmp eq i32 %122, 256
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load ptr, ptr %0, align 8, !tbaa !114
  %126 = getelementptr inbounds %struct.xpviv, ptr %125, i64 0, i32 4
  %127 = load i64, ptr %126, align 8, !tbaa !115
  br label %130

128:                                              ; preds = %119
  %129 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i64 [ %127, %124 ], [ %129, %128 ]
  %132 = trunc i64 %131 to i32
  %133 = or i32 %132, -2147483648
  store volatile i32 %133, ptr @PL_debug, align 4, !tbaa !153
  br label %1093

134:                                              ; preds = %33
  %135 = getelementptr inbounds i8, ptr %8, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !115
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %153, !prof !390

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !108
  %141 = and i32 %140, 2097408
  %142 = icmp eq i32 %141, 256
  br i1 %142, label %143, label %147, !prof !280

143:                                              ; preds = %138
  %144 = load ptr, ptr %0, align 8, !tbaa !114
  %145 = getelementptr inbounds %struct.xpviv, ptr %144, i64 0, i32 4
  %146 = load i64, ptr %145, align 8, !tbaa !115
  br label %149

147:                                              ; preds = %138
  %148 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %149

149:                                              ; preds = %147, %143
  %150 = phi i64 [ %146, %143 ], [ %148, %147 ]
  %151 = trunc i64 %150 to i32
  %152 = tail call ptr @__errno_location() #29
  store i32 %151, ptr %152, align 4, !tbaa !153
  br label %1093

153:                                              ; preds = %134
  %154 = icmp eq i8 %136, 95
  br i1 %154, label %155, label %162

155:                                              ; preds = %153
  %156 = load ptr, ptr @PL_curcop, align 8, !tbaa !139
  %157 = getelementptr inbounds %struct.cop, ptr %156, i64 0, i32 8
  %158 = load ptr, ptr %157, align 8, !tbaa !391
  %159 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.53, i32 noundef 0) #27
  %160 = icmp eq ptr %158, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %155
  tail call void @Perl_croak_no_modify() #27
  br label %162

162:                                              ; preds = %155, %161, %153
  %163 = phi i64 [ 1, %153 ], [ 2, %161 ], [ 2, %155 ]
  %164 = load ptr, ptr %7, align 8, !tbaa !163
  %165 = getelementptr inbounds i8, ptr %164, i64 %163
  %166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(8) @.str.7) #28
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %1093

168:                                              ; preds = %162
  br i1 %154, label %169, label %196

169:                                              ; preds = %168
  %170 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !139
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.sv, ptr %170, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !147
  %175 = icmp ugt i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = add i32 %174, -1
  store i32 %177, ptr %173, align 8, !tbaa !147
  br label %179

178:                                              ; preds = %172
  tail call void @Perl_sv_free2(ptr noundef nonnull %170, i32 noundef %174) #27
  br label %179

179:                                              ; preds = %169, %176, %178
  %180 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !108
  %182 = and i32 %181, 65280
  %183 = icmp ne i32 %182, 0
  %184 = and i32 %181, 255
  %185 = icmp eq i32 %184, 8
  %186 = or i1 %183, %185
  %187 = and i32 %181, 16777471
  %188 = icmp eq i32 %187, 16777226
  %189 = or i1 %188, %186
  %190 = and i32 %181, 2097152
  %191 = icmp ne i32 %190, 0
  %192 = or i1 %191, %189
  br i1 %192, label %193, label %195

193:                                              ; preds = %179
  %194 = tail call ptr @Perl_newSVsv(ptr noundef %0) #27
  store ptr %194, ptr @PL_lex_encoding, align 8, !tbaa !139
  br label %1093

195:                                              ; preds = %179
  store ptr null, ptr @PL_lex_encoding, align 8, !tbaa !139
  br label %1093

196:                                              ; preds = %168
  %197 = load ptr, ptr @PL_encoding, align 8, !tbaa !139
  %198 = icmp eq ptr %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !147
  %202 = icmp ugt i32 %201, 1
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = add i32 %201, -1
  store i32 %204, ptr %200, align 8, !tbaa !147
  br label %206

205:                                              ; preds = %199
  tail call void @Perl_sv_free2(ptr noundef nonnull %197, i32 noundef %201) #27
  br label %206

206:                                              ; preds = %196, %203, %205
  %207 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !108
  %209 = and i32 %208, 65280
  %210 = icmp ne i32 %209, 0
  %211 = and i32 %208, 255
  %212 = icmp eq i32 %211, 8
  %213 = or i1 %210, %212
  %214 = and i32 %208, 16777471
  %215 = icmp eq i32 %214, 16777226
  %216 = or i1 %215, %213
  %217 = and i32 %208, 2097152
  %218 = icmp ne i32 %217, 0
  %219 = or i1 %218, %216
  br i1 %219, label %220, label %226

220:                                              ; preds = %206
  %221 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  %222 = icmp eq i8 %221, 2
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.54) #27
  br label %224

224:                                              ; preds = %223, %220
  %225 = tail call ptr @Perl_newSVsv(ptr noundef %0) #27
  store ptr %225, ptr @PL_encoding, align 8, !tbaa !139
  br label %1093

226:                                              ; preds = %206
  store ptr null, ptr @PL_encoding, align 8, !tbaa !139
  br label %1093

227:                                              ; preds = %33
  %228 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !108
  %230 = and i32 %229, 2097408
  %231 = icmp eq i32 %230, 256
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load ptr, ptr %0, align 8, !tbaa !114
  %234 = getelementptr inbounds %struct.xpviv, ptr %233, i64 0, i32 4
  %235 = load i64, ptr %234, align 8, !tbaa !115
  br label %238

236:                                              ; preds = %227
  %237 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi i64 [ %235, %232 ], [ %237, %236 ]
  %240 = trunc i64 %239 to i32
  store i32 %240, ptr @PL_maxsysfd, align 4, !tbaa !153
  br label %1093

241:                                              ; preds = %33
  %242 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %243 = load i32, ptr %242, align 4, !tbaa !108
  %244 = and i32 %243, 2097408
  %245 = icmp eq i32 %244, 256
  br i1 %245, label %246, label %250, !prof !392

246:                                              ; preds = %241
  %247 = load ptr, ptr %0, align 8, !tbaa !114
  %248 = getelementptr inbounds %struct.xpviv, ptr %247, i64 0, i32 4
  %249 = load i64, ptr %248, align 8, !tbaa !115
  br label %252

250:                                              ; preds = %241
  %251 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %252

252:                                              ; preds = %250, %246
  %253 = phi i64 [ %249, %246 ], [ %251, %250 ]
  %254 = trunc i64 %253 to i32
  store i32 %254, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  br label %1093

255:                                              ; preds = %33
  %256 = load ptr, ptr @PL_inplace, align 8, !tbaa !139
  tail call void @Perl_safesysfree(ptr noundef %256) #27
  %257 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %258 = load i32, ptr %257, align 4, !tbaa !108
  %259 = and i32 %258, 65280
  %260 = icmp ne i32 %259, 0
  %261 = and i32 %258, 255
  %262 = icmp eq i32 %261, 8
  %263 = or i1 %260, %262
  %264 = and i32 %258, 16777471
  %265 = icmp eq i32 %264, 16777226
  %266 = or i1 %265, %263
  br i1 %266, label %267, label %269

267:                                              ; preds = %255
  %268 = tail call ptr @Perl_savesvpv(ptr noundef %0) #27
  br label %269

269:                                              ; preds = %255, %267
  %270 = phi ptr [ %268, %267 ], [ null, %255 ]
  store ptr %270, ptr @PL_inplace, align 8, !tbaa !139
  br label %1093

271:                                              ; preds = %33
  %272 = load ptr, ptr @PL_curpm, align 8, !tbaa !139
  %273 = icmp eq ptr %272, null
  br i1 %273, label %29, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.pmop, ptr %272, i64 0, i32 9
  %276 = load ptr, ptr %275, align 8, !tbaa !253
  %277 = icmp eq ptr %276, null
  br i1 %277, label %29, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.p5rx, ptr %276, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !115
  %281 = getelementptr inbounds %struct.regexp, ptr %280, i64 0, i32 16
  %282 = load i32, ptr %281, align 4, !tbaa !295
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %29, label %20

284:                                              ; preds = %33
  %285 = getelementptr inbounds i8, ptr %8, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !115
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  %289 = load ptr, ptr @PL_osname, align 8, !tbaa !139
  tail call void @Perl_safesysfree(ptr noundef %289) #27
  store ptr null, ptr @PL_osname, align 8, !tbaa !139
  %290 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !108
  %292 = and i32 %291, 65280
  %293 = icmp ne i32 %292, 0
  %294 = and i32 %291, 255
  %295 = icmp eq i32 %294, 8
  %296 = or i1 %293, %295
  %297 = and i32 %291, 16777471
  %298 = icmp eq i32 %297, 16777226
  %299 = or i1 %298, %296
  br i1 %299, label %300, label %1093

300:                                              ; preds = %288
  %301 = load i8, ptr @PL_tainting, align 1, !tbaa !279, !range !168, !noundef !169
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.55) #27
  br label %304

304:                                              ; preds = %300, %303
  %305 = tail call ptr @Perl_savesvpv(ptr noundef %0) #27
  store ptr %305, ptr @PL_osname, align 8, !tbaa !139
  br label %1093

306:                                              ; preds = %284
  %307 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.56) #28
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %1093

309:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %310 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %311 = load i32, ptr %310, align 4, !tbaa !108
  %312 = and i32 %311, 2098176
  %313 = icmp eq i32 %312, 1024
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load ptr, ptr %0, align 8, !tbaa !114
  %316 = getelementptr inbounds %struct.xpv, ptr %315, i64 0, i32 2
  %317 = load i64, ptr %316, align 8, !tbaa !189
  store i64 %317, ptr %4, align 8, !tbaa !187
  %318 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !115
  br label %322

320:                                              ; preds = %309
  %321 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2) #27
  br label %322

322:                                              ; preds = %320, %314
  %323 = phi ptr [ %319, %314 ], [ %321, %320 ]
  %324 = load i64, ptr %4, align 8, !tbaa !187
  %325 = call ptr @memchr(ptr noundef %323, i32 noundef 0, i64 noundef %324) #28
  %326 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %327 = or i32 %326, 786432
  store i32 %327, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %328 = icmp eq ptr %325, null
  br i1 %328, label %339, label %329

329:                                              ; preds = %322
  %330 = getelementptr inbounds i8, ptr %325, i64 1
  %331 = getelementptr inbounds i8, ptr %323, i64 %324
  %332 = ptrtoint ptr %331 to i64
  %333 = ptrtoint ptr %325 to i64
  %334 = xor i64 %333, -1
  %335 = add i64 %334, %332
  %336 = load i32, ptr %310, align 4, !tbaa !108
  %337 = and i32 %336, 536870912
  %338 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %330, i64 noundef %335, i32 noundef %337) #27
  br label %343

339:                                              ; preds = %322
  %340 = load i32, ptr %310, align 4, !tbaa !108
  %341 = and i32 %340, 536870912
  %342 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.1, i64 noundef 0, i32 noundef %341) #27
  br label %343

343:                                              ; preds = %339, %329
  %344 = phi ptr [ %338, %329 ], [ %342, %339 ]
  %345 = load ptr, ptr @PL_hintgv, align 8, !tbaa !139
  %346 = getelementptr inbounds %struct.gv, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !115
  %348 = getelementptr inbounds %struct.gp, ptr %347, i64 0, i32 5
  %349 = load ptr, ptr %348, align 8, !tbaa !393
  %350 = call ptr @Perl_hv_common(ptr noundef %349, ptr noundef null, ptr noundef nonnull @.str.4, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %344, i32 noundef 0) #27
  %351 = call i32 @Perl_mg_set(ptr noundef %344)
  %352 = ptrtoint ptr %325 to i64
  %353 = ptrtoint ptr %323 to i64
  %354 = sub i64 %352, %353
  %355 = load i64, ptr %4, align 8
  %356 = select i1 %328, i64 %355, i64 %354
  %357 = load i32, ptr %310, align 4, !tbaa !108
  %358 = and i32 %357, 536870912
  %359 = call ptr @Perl_newSVpvn_flags(ptr noundef %323, i64 noundef %356, i32 noundef %358) #27
  %360 = load ptr, ptr @PL_hintgv, align 8, !tbaa !139
  %361 = getelementptr inbounds %struct.gv, ptr %360, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !115
  %363 = getelementptr inbounds %struct.gp, ptr %362, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !393
  %365 = call ptr @Perl_hv_common(ptr noundef %364, ptr noundef null, ptr noundef nonnull @.str.2, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %359, i32 noundef 0) #27
  %366 = call i32 @Perl_mg_set(ptr noundef %359)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %1093

367:                                              ; preds = %33
  %368 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %369 = load i32, ptr %368, align 4, !tbaa !108
  %370 = and i32 %369, 2097408
  %371 = icmp eq i32 %370, 256
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load ptr, ptr %0, align 8, !tbaa !114
  %374 = getelementptr inbounds %struct.xpviv, ptr %373, i64 0, i32 4
  %375 = load i64, ptr %374, align 8, !tbaa !115
  br label %378

376:                                              ; preds = %367
  %377 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %378

378:                                              ; preds = %376, %372
  %379 = phi i64 [ %375, %372 ], [ %377, %376 ]
  %380 = trunc i64 %379 to i32
  store i32 %380, ptr @PL_perldb, align 4, !tbaa !153
  %381 = icmp eq i32 %380, 0
  %382 = load ptr, ptr @PL_DBsingle, align 8
  %383 = icmp ne ptr %382, null
  %384 = select i1 %381, i1 true, i1 %383
  br i1 %384, label %1093, label %385

385:                                              ; preds = %378
  tail call void @Perl_init_debugger() #27
  br label %1093

386:                                              ; preds = %33
  %387 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !108
  %389 = and i32 %388, 2097408
  %390 = icmp eq i32 %389, 256
  br i1 %390, label %391, label %395

391:                                              ; preds = %386
  %392 = load ptr, ptr %0, align 8, !tbaa !114
  %393 = getelementptr inbounds %struct.xpviv, ptr %392, i64 0, i32 4
  %394 = load i64, ptr %393, align 8, !tbaa !115
  br label %397

395:                                              ; preds = %386
  %396 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %397

397:                                              ; preds = %395, %391
  %398 = phi i64 [ %394, %391 ], [ %396, %395 ]
  store i64 %398, ptr @PL_basetime, align 8, !tbaa !187
  br label %1093

399:                                              ; preds = %33
  %400 = getelementptr inbounds i8, ptr %8, i64 1
  %401 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %400, ptr noundef nonnull dereferenceable(9) @.str.15) #28
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %1093

403:                                              ; preds = %399
  %404 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  %405 = trunc i64 %404 to i8
  store i8 %405, ptr @PL_utf8cache, align 1, !tbaa !115
  br label %1093

406:                                              ; preds = %33
  %407 = getelementptr inbounds i8, ptr %8, i64 1
  %408 = load i8, ptr %407, align 1, !tbaa !115
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %410, label %433, !prof !394

410:                                              ; preds = %406
  %411 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %412 = and i8 %411, 6
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %1093

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %416 = load i32, ptr %415, align 4, !tbaa !108
  %417 = and i32 %416, 2097408
  %418 = icmp eq i32 %417, 256
  br i1 %418, label %419, label %423

419:                                              ; preds = %414
  %420 = load ptr, ptr %0, align 8, !tbaa !114
  %421 = getelementptr inbounds %struct.xpviv, ptr %420, i64 0, i32 4
  %422 = load i64, ptr %421, align 8, !tbaa !115
  br label %425

423:                                              ; preds = %414
  %424 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %425

425:                                              ; preds = %423, %419
  %426 = phi i64 [ %422, %419 ], [ %424, %423 ]
  %427 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %428 = and i8 %427, -2
  %429 = and i64 %426, 4294967295
  %430 = icmp ne i64 %429, 0
  %431 = zext i1 %430 to i8
  %432 = or disjoint i8 %428, %431
  store i8 %432, ptr @PL_dowarn, align 1, !tbaa !115
  br label %1093

433:                                              ; preds = %406
  %434 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %407, ptr noundef nonnull dereferenceable(12) @.str.16) #28
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %1093, !prof !395

436:                                              ; preds = %433
  %437 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %438 = and i8 %437, 6
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %440, label %1093, !prof !395

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %442 = load i32, ptr %441, align 4, !tbaa !108
  %443 = and i32 %442, 1024
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446, !prof !394

445:                                              ; preds = %440
  store ptr null, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  br label %1093

446:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %447 = and i32 %442, 2098176
  %448 = icmp eq i32 %447, 1024
  br i1 %448, label %449, label %455, !prof !395

449:                                              ; preds = %446
  %450 = load ptr, ptr %0, align 8, !tbaa !114
  %451 = getelementptr inbounds %struct.xpv, ptr %450, i64 0, i32 2
  %452 = load i64, ptr %451, align 8, !tbaa !189
  store i64 %452, ptr %5, align 8, !tbaa !187
  %453 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %454 = load ptr, ptr %453, align 8, !tbaa !115
  br label %457

455:                                              ; preds = %446
  %456 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 34) #27
  br label %457

457:                                              ; preds = %455, %449
  %458 = phi ptr [ %454, %449 ], [ %456, %455 ]
  %459 = load i64, ptr %5, align 8, !tbaa !187
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %476, label %461, !prof !396

461:                                              ; preds = %457, %461
  %462 = phi i64 [ %471, %461 ], [ 0, %457 ]
  %463 = phi i32 [ %468, %461 ], [ 0, %457 ]
  %464 = phi i32 [ %470, %461 ], [ 0, %457 ]
  %465 = getelementptr inbounds i8, ptr %458, i64 %462
  %466 = load i8, ptr %465, align 1, !tbaa !115
  %467 = sext i8 %466 to i32
  %468 = or i32 %463, %467
  %469 = and i32 %467, 170
  %470 = or i32 %469, %464
  %471 = add nuw i64 %462, 1
  %472 = icmp eq i64 %471, %459
  br i1 %472, label %473, label %461, !prof !397, !llvm.loop !398

473:                                              ; preds = %461
  %474 = icmp eq i32 %468, 0
  %475 = icmp ne i32 %470, 0
  br label %476

476:                                              ; preds = %473, %457
  %477 = phi i1 [ false, %457 ], [ %475, %473 ]
  %478 = phi i1 [ true, %457 ], [ %474, %473 ]
  br i1 %478, label %479, label %484, !prof !394

479:                                              ; preds = %476
  %480 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %481 = ptrtoint ptr %480 to i64
  switch i64 %481, label %482 [
    i64 16, label %483
    i64 8, label %483
    i64 0, label %483
  ]

482:                                              ; preds = %479
  call void @free(ptr noundef %480) #27
  br label %483

483:                                              ; preds = %479, %479, %479, %482
  store ptr inttoptr (i64 16 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  br label %531

484:                                              ; preds = %476
  %485 = load i32, ptr %441, align 4, !tbaa !108
  %486 = and i32 %485, 2098176
  %487 = icmp eq i32 %486, 1024
  br i1 %487, label %488, label %491, !prof !395

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %490 = load ptr, ptr %489, align 8, !tbaa !115
  br label %493

491:                                              ; preds = %484
  %492 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 34) #27
  br label %493

493:                                              ; preds = %491, %488
  %494 = phi ptr [ %490, %488 ], [ %492, %491 ]
  %495 = load i8, ptr %494, align 1, !tbaa !115
  %496 = and i8 %495, 1
  %497 = icmp eq i8 %496, 0
  %498 = select i1 %497, i1 true, i1 %477, !prof !399
  br i1 %498, label %506, label %499, !prof !399

499:                                              ; preds = %493
  %500 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %501 = ptrtoint ptr %500 to i64
  switch i64 %501, label %502 [
    i64 16, label %503
    i64 8, label %503
    i64 0, label %503
  ], !prof !400

502:                                              ; preds = %499
  call void @free(ptr noundef %500) #27
  br label %503

503:                                              ; preds = %499, %499, %499, %502
  store ptr inttoptr (i64 8 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  %504 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %505 = or i8 %504, 8
  store i8 %505, ptr @PL_dowarn, align 1, !tbaa !115
  br label %531

506:                                              ; preds = %493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %507 = load i32, ptr %441, align 4, !tbaa !108
  %508 = and i32 %507, 2098176
  %509 = icmp eq i32 %508, 1024
  br i1 %509, label %510, label %516, !prof !401

510:                                              ; preds = %506
  %511 = load ptr, ptr %0, align 8, !tbaa !114
  %512 = getelementptr inbounds %struct.xpv, ptr %511, i64 0, i32 2
  %513 = load i64, ptr %512, align 8, !tbaa !189
  store i64 %513, ptr %6, align 8, !tbaa !187
  %514 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8, !tbaa !115
  br label %518

516:                                              ; preds = %506
  %517 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 34) #27
  br label %518

518:                                              ; preds = %516, %510
  %519 = phi ptr [ %515, %510 ], [ %517, %516 ]
  %520 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  %521 = load i64, ptr %6, align 8, !tbaa !187
  %522 = call ptr @Perl_new_warnings_bitfield(ptr noundef %520, ptr noundef %519, i64 noundef %521) #27
  store ptr %522, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !292
  %523 = getelementptr inbounds i8, ptr %522, i64 11
  %524 = load i8, ptr %523, align 1, !tbaa !115
  %525 = and i8 %524, 16
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %530, label %527, !prof !402

527:                                              ; preds = %518
  %528 = load i8, ptr @PL_dowarn, align 1, !tbaa !115
  %529 = or i8 %528, 8
  store i8 %529, ptr @PL_dowarn, align 1, !tbaa !115
  br label %530

530:                                              ; preds = %527, %518
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %531

531:                                              ; preds = %503, %530, %483
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %1093

532:                                              ; preds = %33
  %533 = load i8, ptr @PL_localizing, align 1, !tbaa !115
  switch i8 %533, label %1093 [
    i8 0, label %535
    i8 1, label %534
  ], !prof !403

534:                                              ; preds = %532
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_last_in_gv) #27
  br label %1093

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %537 = load i32, ptr %536, align 4, !tbaa !108
  %538 = and i32 %537, 65280
  %539 = icmp ne i32 %538, 0
  %540 = and i32 %537, 255
  %541 = icmp eq i32 %540, 8
  %542 = or i1 %539, %541
  br i1 %542, label %549, label %543

543:                                              ; preds = %535
  %544 = and i32 %537, 16777471
  %545 = icmp eq i32 %544, 16777226
  %546 = load ptr, ptr @PL_last_in_gv, align 8
  %547 = icmp ne ptr %546, null
  %548 = select i1 %545, i1 %547, i1 false
  br i1 %548, label %552, label %1093

549:                                              ; preds = %535
  %550 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %551 = icmp eq ptr %550, null
  br i1 %551, label %1093, label %552

552:                                              ; preds = %543, %549
  %553 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %554 = getelementptr inbounds %struct.sv, ptr %553, i64 0, i32 2
  %555 = load i32, ptr %554, align 4, !tbaa !108
  %556 = and i32 %555, 255
  %557 = add nsw i32 %556, -9
  %558 = icmp ult i32 %557, 2
  br i1 %558, label %559, label %1093

559:                                              ; preds = %552
  %560 = getelementptr inbounds %struct.gv, ptr %553, i64 0, i32 3
  %561 = load ptr, ptr %560, align 8, !tbaa !115
  %562 = icmp eq ptr %561, null
  br i1 %562, label %1093, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.gp, ptr %561, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !296
  %566 = icmp eq ptr %565, null
  br i1 %566, label %1093, label %567

567:                                              ; preds = %563
  %568 = and i32 %537, 2097408
  %569 = icmp eq i32 %568, 256
  br i1 %569, label %570, label %574

570:                                              ; preds = %567
  %571 = load ptr, ptr %0, align 8, !tbaa !114
  %572 = getelementptr inbounds %struct.xpviv, ptr %571, i64 0, i32 4
  %573 = load i64, ptr %572, align 8, !tbaa !115
  br label %576

574:                                              ; preds = %567
  %575 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %576

576:                                              ; preds = %574, %570
  %577 = phi i64 [ %573, %570 ], [ %575, %574 ]
  %578 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !139
  %579 = getelementptr inbounds %struct.gv, ptr %578, i64 0, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !115
  %581 = getelementptr inbounds %struct.gp, ptr %580, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !296
  %583 = load ptr, ptr %582, align 8, !tbaa !297
  %584 = getelementptr inbounds %struct.xpvio, ptr %583, i64 0, i32 4
  store i64 %577, ptr %584, align 8, !tbaa !115
  br label %1093

585:                                              ; preds = %33
  %586 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %587 = getelementptr inbounds %struct.gv, ptr %586, i64 0, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !115
  %589 = getelementptr inbounds %struct.gp, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !296
  %591 = load ptr, ptr %590, align 8, !tbaa !297
  %592 = getelementptr inbounds %struct.xpvio, ptr %591, i64 0, i32 10
  %593 = load ptr, ptr %592, align 8, !tbaa !299
  tail call void @Perl_safesysfree(ptr noundef %593) #27
  %594 = tail call ptr @Perl_savesvpv(ptr noundef %0) #27
  %595 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %596 = getelementptr inbounds %struct.gv, ptr %595, i64 0, i32 3
  %597 = load ptr, ptr %596, align 8, !tbaa !115
  %598 = getelementptr inbounds %struct.gp, ptr %597, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !296
  %600 = load ptr, ptr %599, align 8, !tbaa !297
  %601 = getelementptr inbounds %struct.xpvio, ptr %600, i64 0, i32 10
  store ptr %594, ptr %601, align 8, !tbaa !299
  %602 = tail call ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef 1, i32 noundef 15) #27
  %603 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %604 = getelementptr inbounds %struct.gv, ptr %603, i64 0, i32 3
  %605 = load ptr, ptr %604, align 8, !tbaa !115
  %606 = getelementptr inbounds %struct.gp, ptr %605, i64 0, i32 1
  %607 = load ptr, ptr %606, align 8, !tbaa !296
  %608 = load ptr, ptr %607, align 8, !tbaa !297
  %609 = getelementptr inbounds %struct.xpvio, ptr %608, i64 0, i32 11
  store ptr %602, ptr %609, align 8, !tbaa !404
  br label %1093

610:                                              ; preds = %33
  %611 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %612 = getelementptr inbounds %struct.gv, ptr %611, i64 0, i32 3
  %613 = load ptr, ptr %612, align 8, !tbaa !115
  %614 = getelementptr inbounds %struct.gp, ptr %613, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !296
  %616 = load ptr, ptr %615, align 8, !tbaa !297
  %617 = getelementptr inbounds %struct.xpvio, ptr %616, i64 0, i32 12
  %618 = load ptr, ptr %617, align 8, !tbaa !303
  tail call void @Perl_safesysfree(ptr noundef %618) #27
  %619 = tail call ptr @Perl_savesvpv(ptr noundef %0) #27
  %620 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %621 = getelementptr inbounds %struct.gv, ptr %620, i64 0, i32 3
  %622 = load ptr, ptr %621, align 8, !tbaa !115
  %623 = getelementptr inbounds %struct.gp, ptr %622, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !296
  %625 = load ptr, ptr %624, align 8, !tbaa !297
  %626 = getelementptr inbounds %struct.xpvio, ptr %625, i64 0, i32 12
  store ptr %619, ptr %626, align 8, !tbaa !303
  %627 = tail call ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef 1, i32 noundef 15) #27
  %628 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %629 = getelementptr inbounds %struct.gv, ptr %628, i64 0, i32 3
  %630 = load ptr, ptr %629, align 8, !tbaa !115
  %631 = getelementptr inbounds %struct.gp, ptr %630, i64 0, i32 1
  %632 = load ptr, ptr %631, align 8, !tbaa !296
  %633 = load ptr, ptr %632, align 8, !tbaa !297
  %634 = getelementptr inbounds %struct.xpvio, ptr %633, i64 0, i32 13
  store ptr %627, ptr %634, align 8, !tbaa !405
  br label %1093

635:                                              ; preds = %33
  %636 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %637 = load i32, ptr %636, align 4, !tbaa !108
  %638 = and i32 %637, 2097408
  %639 = icmp eq i32 %638, 256
  br i1 %639, label %640, label %644

640:                                              ; preds = %635
  %641 = load ptr, ptr %0, align 8, !tbaa !114
  %642 = getelementptr inbounds %struct.xpviv, ptr %641, i64 0, i32 4
  %643 = load i64, ptr %642, align 8, !tbaa !115
  br label %646

644:                                              ; preds = %635
  %645 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %646

646:                                              ; preds = %644, %640
  %647 = phi i64 [ %643, %640 ], [ %645, %644 ]
  %648 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %649 = getelementptr inbounds %struct.gv, ptr %648, i64 0, i32 3
  %650 = load ptr, ptr %649, align 8, !tbaa !115
  %651 = getelementptr inbounds %struct.gp, ptr %650, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !296
  %653 = load ptr, ptr %652, align 8, !tbaa !297
  %654 = getelementptr inbounds %struct.xpvio, ptr %653, i64 0, i32 8
  store i64 %647, ptr %654, align 8, !tbaa !304
  br label %1093

655:                                              ; preds = %33
  %656 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %657 = load i32, ptr %656, align 4, !tbaa !108
  %658 = and i32 %657, 2097408
  %659 = icmp eq i32 %658, 256
  br i1 %659, label %660, label %664

660:                                              ; preds = %655
  %661 = load ptr, ptr %0, align 8, !tbaa !114
  %662 = getelementptr inbounds %struct.xpviv, ptr %661, i64 0, i32 4
  %663 = load i64, ptr %662, align 8, !tbaa !115
  br label %666

664:                                              ; preds = %655
  %665 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %666

666:                                              ; preds = %664, %660
  %667 = phi i64 [ %663, %660 ], [ %665, %664 ]
  %668 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %669 = getelementptr inbounds %struct.gv, ptr %668, i64 0, i32 3
  %670 = load ptr, ptr %669, align 8, !tbaa !115
  %671 = getelementptr inbounds %struct.gp, ptr %670, i64 0, i32 1
  %672 = load ptr, ptr %671, align 8, !tbaa !296
  %673 = load ptr, ptr %672, align 8, !tbaa !297
  %674 = getelementptr inbounds %struct.xpvio, ptr %673, i64 0, i32 9
  store i64 %667, ptr %674, align 8, !tbaa !305
  %675 = load ptr, ptr %669, align 8, !tbaa !115
  %676 = getelementptr inbounds %struct.gp, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !296
  %678 = load ptr, ptr %677, align 8, !tbaa !297
  %679 = getelementptr inbounds %struct.xpvio, ptr %678, i64 0, i32 9
  %680 = load i64, ptr %679, align 8, !tbaa !305
  %681 = icmp slt i64 %680, 0
  br i1 %681, label %682, label %1093

682:                                              ; preds = %666
  store i64 0, ptr %679, align 8, !tbaa !305
  br label %1093

683:                                              ; preds = %33
  %684 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %685 = load i32, ptr %684, align 4, !tbaa !108
  %686 = and i32 %685, 2097408
  %687 = icmp eq i32 %686, 256
  br i1 %687, label %688, label %692

688:                                              ; preds = %683
  %689 = load ptr, ptr %0, align 8, !tbaa !114
  %690 = getelementptr inbounds %struct.xpviv, ptr %689, i64 0, i32 4
  %691 = load i64, ptr %690, align 8, !tbaa !115
  br label %694

692:                                              ; preds = %683
  %693 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %694

694:                                              ; preds = %692, %688
  %695 = phi i64 [ %691, %688 ], [ %693, %692 ]
  %696 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %697 = getelementptr inbounds %struct.gv, ptr %696, i64 0, i32 3
  %698 = load ptr, ptr %697, align 8, !tbaa !115
  %699 = getelementptr inbounds %struct.gp, ptr %698, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !296
  %701 = load ptr, ptr %700, align 8, !tbaa !297
  %702 = getelementptr inbounds %struct.xpvio, ptr %701, i64 0, i32 7
  store i64 %695, ptr %702, align 8, !tbaa !306
  br label %1093

703:                                              ; preds = %33
  %704 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !139
  %705 = icmp eq ptr %704, null
  br i1 %705, label %719, label %706, !prof !406

706:                                              ; preds = %703
  %707 = getelementptr inbounds %struct.sv, ptr %704, i64 0, i32 2
  %708 = load i32, ptr %707, align 4, !tbaa !108
  %709 = and i32 %708, 255
  %710 = add nsw i32 %709, -9
  %711 = icmp ult i32 %710, 2
  br i1 %711, label %712, label %719, !prof !407

712:                                              ; preds = %706
  %713 = getelementptr inbounds %struct.gv, ptr %704, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !115
  %715 = icmp eq ptr %714, null
  br i1 %715, label %719, label %716, !prof !406

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.gp, ptr %714, i64 0, i32 1
  %718 = load ptr, ptr %717, align 8, !tbaa !296
  br label %719

719:                                              ; preds = %706, %703, %712, %716
  %720 = phi ptr [ %718, %716 ], [ null, %712 ], [ null, %703 ], [ null, %706 ]
  %721 = icmp eq ptr %720, null
  br i1 %721, label %1093, label %722, !prof !406

722:                                              ; preds = %719
  %723 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %724 = load i32, ptr %723, align 4, !tbaa !108
  %725 = and i32 %724, 2097408
  %726 = icmp eq i32 %725, 256
  br i1 %726, label %727, label %731, !prof !407

727:                                              ; preds = %722
  %728 = load ptr, ptr %0, align 8, !tbaa !114
  %729 = getelementptr inbounds %struct.xpviv, ptr %728, i64 0, i32 4
  %730 = load i64, ptr %729, align 8, !tbaa !115
  br label %733

731:                                              ; preds = %722
  %732 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %733

733:                                              ; preds = %731, %727
  %734 = phi i64 [ %730, %727 ], [ %732, %731 ]
  %735 = icmp eq i64 %734, 0
  %736 = load ptr, ptr %720, align 8, !tbaa !297
  %737 = getelementptr inbounds %struct.xpvio, ptr %736, i64 0, i32 17
  %738 = load i8, ptr %737, align 1, !tbaa !307
  br i1 %735, label %739, label %741, !prof !406

739:                                              ; preds = %733
  %740 = and i8 %738, -5
  store i8 %740, ptr %737, align 1, !tbaa !307
  br label %1093

741:                                              ; preds = %733
  %742 = and i8 %738, 4
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %744, label %1093, !prof !408

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.xpvio, ptr %736, i64 0, i32 5
  %746 = load ptr, ptr %745, align 8, !tbaa !409
  %747 = icmp eq ptr %746, null
  br i1 %747, label %750, label %748, !prof !280

748:                                              ; preds = %744
  %749 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %746) #27
  br label %750

750:                                              ; preds = %748, %744
  %751 = load ptr, ptr %720, align 8, !tbaa !297
  %752 = getelementptr inbounds %struct.xpvio, ptr %751, i64 0, i32 17
  %753 = load i8, ptr %752, align 1, !tbaa !307
  %754 = or i8 %753, 4
  store i8 %754, ptr %752, align 1, !tbaa !307
  br label %1093

755:                                              ; preds = %33
  %756 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %757 = load i32, ptr %756, align 4, !tbaa !108
  %758 = and i32 %757, 2048
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %800, label %760, !prof !410

760:                                              ; preds = %755
  %761 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %762 = load ptr, ptr %761, align 8, !tbaa !115
  %763 = tail call ptr @Perl_sv_reftype(ptr noundef %762, i32 noundef 0) #27
  %764 = load i8, ptr %763, align 1, !tbaa !115
  switch i8 %764, label %795 [
    i8 83, label %765
    i8 76, label %765
  ]

765:                                              ; preds = %760, %760
  %766 = getelementptr inbounds %struct.sv, ptr %762, i64 0, i32 2
  %767 = load i32, ptr %766, align 4, !tbaa !108
  %768 = and i32 %767, 2097408
  %769 = icmp eq i32 %768, 256
  br i1 %769, label %770, label %774

770:                                              ; preds = %765
  %771 = load ptr, ptr %762, align 8, !tbaa !114
  %772 = getelementptr inbounds %struct.xpviv, ptr %771, i64 0, i32 4
  %773 = load i64, ptr %772, align 8, !tbaa !115
  br label %776

774:                                              ; preds = %765
  %775 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %762, i32 noundef 2) #27
  br label %776

776:                                              ; preds = %774, %770
  %777 = phi i64 [ %773, %770 ], [ %775, %774 ]
  %778 = icmp slt i64 %777, 1
  br i1 %778, label %779, label %800

779:                                              ; preds = %776
  %780 = load ptr, ptr %761, align 8, !tbaa !115
  %781 = getelementptr inbounds %struct.sv, ptr %780, i64 0, i32 2
  %782 = load i32, ptr %781, align 4, !tbaa !108
  %783 = and i32 %782, 2097408
  %784 = icmp eq i32 %783, 256
  br i1 %784, label %785, label %789

785:                                              ; preds = %779
  %786 = load ptr, ptr %780, align 8, !tbaa !114
  %787 = getelementptr inbounds %struct.xpviv, ptr %786, i64 0, i32 4
  %788 = load i64, ptr %787, align 8, !tbaa !115
  br label %791

789:                                              ; preds = %779
  %790 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %780, i32 noundef 2) #27
  br label %791

791:                                              ; preds = %789, %785
  %792 = phi i64 [ %788, %785 ], [ %790, %789 ]
  %793 = icmp slt i64 %792, 0
  %794 = select i1 %793, ptr @.str.58, ptr @.str.59
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.57, ptr noundef nonnull %794) #27
  br label %800

795:                                              ; preds = %760
  %796 = load ptr, ptr @PL_rs, align 8, !tbaa !139
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %796, i32 noundef 1538) #27
  %797 = load i8, ptr %763, align 1, !tbaa !115
  %798 = icmp eq i8 %797, 65
  %799 = select i1 %798, ptr @.str.61, ptr @.str.1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60, ptr noundef nonnull %799, ptr noundef nonnull %763) #27
  br label %800

800:                                              ; preds = %795, %791, %776, %755
  %801 = phi ptr [ %0, %755 ], [ %0, %795 ], [ @PL_sv_undef, %791 ], [ %0, %776 ]
  %802 = load ptr, ptr @PL_rs, align 8, !tbaa !139
  %803 = icmp eq ptr %802, null
  br i1 %803, label %811, label %804, !prof !411

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.sv, ptr %802, i64 0, i32 1
  %806 = load i32, ptr %805, align 8, !tbaa !147
  %807 = icmp ugt i32 %806, 1
  br i1 %807, label %808, label %810, !prof !411

808:                                              ; preds = %804
  %809 = add i32 %806, -1
  store i32 %809, ptr %805, align 8, !tbaa !147
  br label %811

810:                                              ; preds = %804
  tail call void @Perl_sv_free2(ptr noundef nonnull %802, i32 noundef %806) #27
  br label %811

811:                                              ; preds = %800, %808, %810
  %812 = tail call ptr @Perl_newSVsv(ptr noundef %801) #27
  store ptr %812, ptr @PL_rs, align 8, !tbaa !139
  br label %1093

813:                                              ; preds = %33
  %814 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !139
  %815 = icmp eq ptr %814, null
  br i1 %815, label %823, label %816

816:                                              ; preds = %813
  %817 = getelementptr inbounds %struct.sv, ptr %814, i64 0, i32 1
  %818 = load i32, ptr %817, align 8, !tbaa !147
  %819 = icmp ugt i32 %818, 1
  br i1 %819, label %820, label %822

820:                                              ; preds = %816
  %821 = add i32 %818, -1
  store i32 %821, ptr %817, align 8, !tbaa !147
  br label %823

822:                                              ; preds = %816
  tail call void @Perl_sv_free2(ptr noundef nonnull %814, i32 noundef %818) #27
  br label %823

823:                                              ; preds = %813, %820, %822
  %824 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %825 = load i32, ptr %824, align 4, !tbaa !108
  %826 = and i32 %825, 65280
  %827 = icmp ne i32 %826, 0
  %828 = and i32 %825, 255
  %829 = icmp eq i32 %828, 8
  %830 = or i1 %827, %829
  %831 = and i32 %825, 16777471
  %832 = icmp eq i32 %831, 16777226
  %833 = or i1 %832, %830
  br i1 %833, label %834, label %836

834:                                              ; preds = %823
  %835 = tail call ptr @Perl_newSVsv(ptr noundef %0) #27
  store ptr %835, ptr @PL_ors_sv, align 8, !tbaa !139
  br label %1093

836:                                              ; preds = %823
  store ptr null, ptr @PL_ors_sv, align 8, !tbaa !139
  br label %1093

837:                                              ; preds = %33
  %838 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %839 = load i32, ptr %838, align 4, !tbaa !108
  %840 = and i32 %839, 2097408
  %841 = icmp eq i32 %840, 256
  br i1 %841, label %842, label %846

842:                                              ; preds = %837
  %843 = load ptr, ptr %0, align 8, !tbaa !114
  %844 = getelementptr inbounds %struct.xpviv, ptr %843, i64 0, i32 4
  %845 = load i64, ptr %844, align 8, !tbaa !115
  br label %848

846:                                              ; preds = %837
  %847 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %848

848:                                              ; preds = %846, %842
  %849 = phi i64 [ %845, %842 ], [ %847, %846 ]
  %850 = icmp eq i64 %849, 0
  br i1 %850, label %1093, label %851

851:                                              ; preds = %848
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62) #27
  br label %1093

852:                                              ; preds = %33
  %853 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %854 = load i32, ptr %853, align 4, !tbaa !108
  %855 = and i32 %854, 2097408
  %856 = icmp eq i32 %855, 256
  br i1 %856, label %857, label %861, !prof !191

857:                                              ; preds = %852
  %858 = load ptr, ptr %0, align 8, !tbaa !114
  %859 = getelementptr inbounds %struct.xpviv, ptr %858, i64 0, i32 4
  %860 = load i64, ptr %859, align 8, !tbaa !115
  br label %863

861:                                              ; preds = %852
  %862 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %863

863:                                              ; preds = %861, %857
  %864 = phi i64 [ %860, %857 ], [ %862, %861 ]
  %865 = trunc i64 %864 to i32
  store i32 %865, ptr @PL_statusvalue, align 4, !tbaa !153
  %866 = icmp eq i32 %865, -1
  br i1 %866, label %1093, label %867, !prof !280

867:                                              ; preds = %863
  %868 = and i32 %865, 65535
  store i32 %868, ptr @PL_statusvalue, align 4, !tbaa !153
  br label %1093

869:                                              ; preds = %33
  %870 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %871 = load i32, ptr %870, align 4, !tbaa !108
  %872 = and i32 %871, 256
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %878, label %874, !prof !390

874:                                              ; preds = %869
  %875 = load ptr, ptr %0, align 8, !tbaa !114
  %876 = getelementptr inbounds %struct.xpviv, ptr %875, i64 0, i32 4
  %877 = load i64, ptr %876, align 8, !tbaa !115
  br label %889

878:                                              ; preds = %869
  %879 = and i32 %871, 65024
  %880 = icmp ne i32 %879, 0
  %881 = and i32 %871, 255
  %882 = icmp eq i32 %881, 8
  %883 = or i1 %880, %882
  %884 = and i32 %871, 16777471
  %885 = icmp eq i32 %884, 16777226
  %886 = or i1 %885, %883
  br i1 %886, label %887, label %889, !prof !191

887:                                              ; preds = %878
  %888 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %889

889:                                              ; preds = %878, %887, %874
  %890 = phi i64 [ %877, %874 ], [ %888, %887 ], [ 0, %878 ]
  %891 = trunc i64 %890 to i32
  %892 = tail call ptr @__errno_location() #29
  store i32 %891, ptr %892, align 4, !tbaa !153
  br label %1093

893:                                              ; preds = %33
  %894 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %895 = load i32, ptr %894, align 4, !tbaa !108
  %896 = and i32 %895, -2145386240
  %897 = icmp eq i32 %896, -2147483392
  br i1 %897, label %898, label %902

898:                                              ; preds = %893
  %899 = load ptr, ptr %0, align 8, !tbaa !114
  %900 = getelementptr inbounds %struct.xpvuv, ptr %899, i64 0, i32 4
  %901 = load i64, ptr %900, align 8, !tbaa !115
  br label %904

902:                                              ; preds = %893
  %903 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %904

904:                                              ; preds = %902, %898
  %905 = phi i64 [ %901, %898 ], [ %903, %902 ]
  %906 = trunc i64 %905 to i32
  store i32 %906, ptr @PL_delaymagic_uid, align 4, !tbaa !153
  %907 = load i16, ptr @PL_delaymagic, align 2, !tbaa !340
  %908 = icmp eq i16 %907, 0
  br i1 %908, label %911, label %909

909:                                              ; preds = %904
  %910 = or i16 %907, 1
  store i16 %910, ptr @PL_delaymagic, align 2, !tbaa !340
  br label %1093

911:                                              ; preds = %904
  %912 = tail call i32 @geteuid() #27
  %913 = icmp eq i32 %912, %906
  br i1 %913, label %914, label %916

914:                                              ; preds = %911
  %915 = tail call i32 @setuid(i32 noundef %906) #27
  br label %1093

916:                                              ; preds = %911
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.63) #27
  br label %1093

917:                                              ; preds = %33
  %918 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %919 = load i32, ptr %918, align 4, !tbaa !108
  %920 = and i32 %919, -2145386240
  %921 = icmp eq i32 %920, -2147483392
  br i1 %921, label %922, label %926

922:                                              ; preds = %917
  %923 = load ptr, ptr %0, align 8, !tbaa !114
  %924 = getelementptr inbounds %struct.xpvuv, ptr %923, i64 0, i32 4
  %925 = load i64, ptr %924, align 8, !tbaa !115
  br label %928

926:                                              ; preds = %917
  %927 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %928

928:                                              ; preds = %926, %922
  %929 = phi i64 [ %925, %922 ], [ %927, %926 ]
  %930 = trunc i64 %929 to i32
  store i32 %930, ptr @PL_delaymagic_euid, align 4, !tbaa !153
  %931 = load i16, ptr @PL_delaymagic, align 2, !tbaa !340
  %932 = icmp eq i16 %931, 0
  br i1 %932, label %935, label %933

933:                                              ; preds = %928
  %934 = or i16 %931, 2
  store i16 %934, ptr @PL_delaymagic, align 2, !tbaa !340
  br label %1093

935:                                              ; preds = %928
  %936 = tail call i32 @getuid() #27
  %937 = icmp eq i32 %936, %930
  br i1 %937, label %938, label %940

938:                                              ; preds = %935
  %939 = tail call i32 @setuid(i32 noundef %930) #27
  br label %1093

940:                                              ; preds = %935
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #27
  br label %1093

941:                                              ; preds = %33
  %942 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %943 = load i32, ptr %942, align 4, !tbaa !108
  %944 = and i32 %943, -2145386240
  %945 = icmp eq i32 %944, -2147483392
  br i1 %945, label %946, label %950

946:                                              ; preds = %941
  %947 = load ptr, ptr %0, align 8, !tbaa !114
  %948 = getelementptr inbounds %struct.xpvuv, ptr %947, i64 0, i32 4
  %949 = load i64, ptr %948, align 8, !tbaa !115
  br label %952

950:                                              ; preds = %941
  %951 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %952

952:                                              ; preds = %950, %946
  %953 = phi i64 [ %949, %946 ], [ %951, %950 ]
  %954 = trunc i64 %953 to i32
  store i32 %954, ptr @PL_delaymagic_gid, align 4, !tbaa !153
  %955 = load i16, ptr @PL_delaymagic, align 2, !tbaa !340
  %956 = icmp eq i16 %955, 0
  br i1 %956, label %959, label %957

957:                                              ; preds = %952
  %958 = or i16 %955, 16
  store i16 %958, ptr @PL_delaymagic, align 2, !tbaa !340
  br label %1093

959:                                              ; preds = %952
  %960 = tail call i32 @getegid() #27
  %961 = icmp eq i32 %960, %954
  br i1 %961, label %962, label %964

962:                                              ; preds = %959
  %963 = tail call i32 @setgid(i32 noundef %954) #27
  br label %1093

964:                                              ; preds = %959
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #27
  br label %1093

965:                                              ; preds = %33
  %966 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %967 = load i32, ptr %966, align 4, !tbaa !108
  %968 = and i32 %967, -2145386240
  %969 = icmp eq i32 %968, -2147483392
  br i1 %969, label %970, label %974

970:                                              ; preds = %965
  %971 = load ptr, ptr %0, align 8, !tbaa !114
  %972 = getelementptr inbounds %struct.xpvuv, ptr %971, i64 0, i32 4
  %973 = load i64, ptr %972, align 8, !tbaa !115
  br label %976

974:                                              ; preds = %965
  %975 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #27
  br label %976

976:                                              ; preds = %974, %970
  %977 = phi i64 [ %973, %970 ], [ %975, %974 ]
  %978 = trunc i64 %977 to i32
  store i32 %978, ptr @PL_delaymagic_egid, align 4, !tbaa !153
  %979 = load i16, ptr @PL_delaymagic, align 2, !tbaa !340
  %980 = icmp eq i16 %979, 0
  br i1 %980, label %983, label %981

981:                                              ; preds = %976
  %982 = or i16 %979, 32
  store i16 %982, ptr @PL_delaymagic, align 2, !tbaa !340
  br label %1093

983:                                              ; preds = %976
  %984 = tail call i32 @getgid() #27
  %985 = icmp eq i32 %984, %978
  br i1 %985, label %986, label %988

986:                                              ; preds = %983
  %987 = tail call i32 @setgid(i32 noundef %978) #27
  br label %1093

988:                                              ; preds = %983
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66) #27
  br label %1093

989:                                              ; preds = %33
  %990 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %991 = load i32, ptr %990, align 4, !tbaa !108
  %992 = and i32 %991, 430018304
  %993 = icmp eq i32 %992, 1024
  br i1 %993, label %994, label %1000

994:                                              ; preds = %989
  %995 = load ptr, ptr %0, align 8, !tbaa !114
  %996 = getelementptr inbounds %struct.xpv, ptr %995, i64 0, i32 2
  %997 = load i64, ptr %996, align 8, !tbaa !189
  store i64 %997, ptr %3, align 8, !tbaa !187
  %998 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %999 = load ptr, ptr %998, align 8, !tbaa !115
  br label %1002

1000:                                             ; preds = %989
  %1001 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #27
  br label %1002

1002:                                             ; preds = %1000, %994
  %1003 = phi ptr [ %999, %994 ], [ %1001, %1000 ]
  store ptr %1003, ptr @PL_chopset, align 8, !tbaa !139
  br label %1093

1004:                                             ; preds = %33
  %1005 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %1006 = load ptr, ptr %1005, align 8, !tbaa !220
  %1007 = getelementptr inbounds %struct.sv, ptr %1006, i64 0, i32 2
  %1008 = load i32, ptr %1007, align 4, !tbaa !108
  %1009 = and i32 %1008, 255
  %1010 = icmp eq i32 %1009, 9
  br i1 %1010, label %1011, label %1031

1011:                                             ; preds = %1004
  %1012 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %1013 = load i8, ptr %1012, align 1, !tbaa !125
  %1014 = and i8 %1013, 2
  %1015 = icmp eq i8 %1014, 0
  %1016 = icmp eq ptr %1006, null
  %1017 = or i1 %1016, %1015
  br i1 %1017, label %1025, label %1018

1018:                                             ; preds = %1011
  %1019 = getelementptr inbounds %struct.sv, ptr %1006, i64 0, i32 1
  %1020 = load i32, ptr %1019, align 8, !tbaa !147
  %1021 = icmp ugt i32 %1020, 1
  br i1 %1021, label %1022, label %1024

1022:                                             ; preds = %1018
  %1023 = add i32 %1020, -1
  store i32 %1023, ptr %1019, align 8, !tbaa !147
  br label %1025

1024:                                             ; preds = %1018
  tail call void @Perl_sv_free2(ptr noundef nonnull %1006, i32 noundef %1020) #27
  br label %1025

1025:                                             ; preds = %1024, %1022, %1011
  %1026 = load i8, ptr %1012, align 1, !tbaa !125
  %1027 = or i8 %1026, 2
  store i8 %1027, ptr %1012, align 1, !tbaa !125
  %1028 = tail call i32 @getpid() #27
  %1029 = sext i32 %1028 to i64
  %1030 = tail call ptr @Perl_newSViv(i64 noundef %1029) #27
  store ptr %1030, ptr %1005, align 8, !tbaa !220
  br label %1093

1031:                                             ; preds = %1004
  %1032 = tail call i32 @getpid() #27
  %1033 = sext i32 %1032 to i64
  tail call void @Perl_sv_setiv(ptr noundef %1006, i64 noundef %1033) #27
  br label %1093

1034:                                             ; preds = %33
  %1035 = load i32, ptr @PL_origalen, align 4, !tbaa !153
  %1036 = icmp ugt i32 %1035, 1
  br i1 %1036, label %1037, label %1093

1037:                                             ; preds = %1034
  %1038 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %1039 = load i32, ptr %1038, align 4, !tbaa !108
  %1040 = and i32 %1039, 430018304
  %1041 = icmp eq i32 %1040, 1024
  br i1 %1041, label %1042, label %1048

1042:                                             ; preds = %1037
  %1043 = load ptr, ptr %0, align 8, !tbaa !114
  %1044 = getelementptr inbounds %struct.xpv, ptr %1043, i64 0, i32 2
  %1045 = load i64, ptr %1044, align 8, !tbaa !189
  store i64 %1045, ptr %3, align 8, !tbaa !187
  %1046 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8, !tbaa !115
  br label %1050

1048:                                             ; preds = %1037
  %1049 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #27
  br label %1050

1050:                                             ; preds = %1048, %1042
  %1051 = phi ptr [ %1047, %1042 ], [ %1049, %1048 ]
  %1052 = load i64, ptr %3, align 8, !tbaa !187
  %1053 = load i32, ptr @PL_origalen, align 4, !tbaa !153
  %1054 = zext i32 %1053 to i64
  %1055 = add nsw i64 %1054, -1
  %1056 = icmp ult i64 %1052, %1055
  %1057 = load ptr, ptr @PL_origargv, align 8, !tbaa !139
  %1058 = load ptr, ptr %1057, align 8, !tbaa !139
  br i1 %1056, label %1062, label %1059

1059:                                             ; preds = %1050
  %1060 = add i32 %1053, -1
  %1061 = zext i32 %1060 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1058, ptr align 1 %1051, i64 %1061, i1 false)
  br label %1076

1062:                                             ; preds = %1050
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1058, ptr align 1 %1051, i64 %1052, i1 false)
  %1063 = load ptr, ptr @PL_origargv, align 8, !tbaa !139
  %1064 = load ptr, ptr %1063, align 8, !tbaa !139
  %1065 = load i64, ptr %3, align 8, !tbaa !187
  %1066 = getelementptr inbounds i8, ptr %1064, i64 %1065
  store i8 0, ptr %1066, align 1, !tbaa !115
  %1067 = load ptr, ptr @PL_origargv, align 8, !tbaa !139
  %1068 = load ptr, ptr %1067, align 8, !tbaa !139
  %1069 = load i64, ptr %3, align 8, !tbaa !187
  %1070 = getelementptr inbounds i8, ptr %1068, i64 %1069
  %1071 = getelementptr inbounds i8, ptr %1070, i64 1
  %1072 = load i32, ptr @PL_origalen, align 4, !tbaa !153
  %1073 = zext i32 %1072 to i64
  %1074 = xor i64 %1069, -1
  %1075 = add i64 %1073, %1074
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %1071, i8 32, i64 %1075, i1 false)
  br label %1076

1076:                                             ; preds = %1062, %1059
  %1077 = load ptr, ptr @PL_origargv, align 8, !tbaa !139
  %1078 = load ptr, ptr %1077, align 8, !tbaa !139
  %1079 = load i32, ptr @PL_origalen, align 4, !tbaa !153
  %1080 = add i32 %1079, -1
  %1081 = zext i32 %1080 to i64
  %1082 = getelementptr inbounds i8, ptr %1078, i64 %1081
  store i8 0, ptr %1082, align 1, !tbaa !115
  %1083 = load i32, ptr @PL_origargc, align 4, !tbaa !153
  %1084 = icmp sgt i32 %1083, 1
  br i1 %1084, label %1085, label %1093

1085:                                             ; preds = %1076
  %1086 = zext nneg i32 %1083 to i64
  br label %1087

1087:                                             ; preds = %1085, %1087
  %1088 = phi i64 [ 1, %1085 ], [ %1091, %1087 ]
  %1089 = load ptr, ptr @PL_origargv, align 8, !tbaa !139
  %1090 = getelementptr inbounds ptr, ptr %1089, i64 %1088
  store ptr null, ptr %1090, align 8, !tbaa !139
  %1091 = add nuw nsw i64 %1088, 1
  %1092 = icmp eq i64 %1091, %1086
  br i1 %1092, label %1093, label %1087, !llvm.loop !412

1093:                                             ; preds = %1087, %1076, %549, %543, %552, %115, %130, %238, %252, %269, %397, %445, %585, %610, %646, %694, %811, %889, %1002, %33, %102, %103, %78, %149, %306, %343, %304, %385, %378, %403, %399, %433, %531, %436, %410, %425, %563, %576, %559, %534, %682, %666, %836, %834, %851, %848, %867, %863, %1031, %1025, %1034, %195, %193, %226, %224, %162, %288, %532, %739, %750, %741, %719, %914, %916, %909, %938, %940, %933, %962, %964, %957, %986, %988, %981, %20, %32, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_savesvpv(ptr noundef) local_unnamed_addr #3

declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_init_debugger() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

declare ptr @Perl_new_warnings_bitfield(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setuid(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @setgid(i32 noundef) local_unnamed_addr #11

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_whichsig_sv(ptr noundef %0) local_unnamed_addr #4 !prof !173 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !189
  store i64 %10, ptr %2, align 8, !tbaa !187
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  br label %15

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 34) #27
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load i64, ptr %2, align 8, !tbaa !187
  %18 = call i32 @Perl_whichsig_pvn(ptr noundef %16, i64 noundef %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %18
}

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_whichsig_pv(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !173 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %3 = tail call i32 @Perl_whichsig_pvn(ptr noundef %0, i64 noundef %2)
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sighandler(i32 noundef %0) local_unnamed_addr #4 !prof !173 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr null, ptr %2, align 8, !tbaa !139
  %5 = load ptr, ptr @PL_Sv, align 8, !tbaa !139
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !139
  %7 = load ptr, ptr @PL_Xpv, align 8, !tbaa !139
  %8 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %9 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !139
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !413
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !296
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %26, align 8, !tbaa !297
  %30 = getelementptr inbounds %struct.xpvio, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !409
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %22, %17, %14
  %34 = tail call ptr @Perl_PerlIO_stderr() #27
  br label %35

35:                                               ; preds = %28, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %37 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %38 = load ptr, ptr %37, align 8, !tbaa !139
  %39 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %36, ptr noundef nonnull @.str.69, ptr noundef %38) #27
  tail call void @exit(i32 noundef %0) #30
  unreachable

40:                                               ; preds = %1
  %41 = load i32, ptr @PL_signals, align 4, !tbaa !153
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %8, 15
  %46 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = add nsw i32 %8, 5
  store i32 %49, ptr @PL_savestack_ix, align 4, !tbaa !153
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_unwind_handler_stack, ptr noundef null) #27
  br label %50

50:                                               ; preds = %44, %48, %40
  %51 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !139
  %52 = getelementptr inbounds ptr, ptr %51, i64 %10
  %53 = load ptr, ptr %52, align 8, !tbaa !139
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !108
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !115
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cv, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !414
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %58, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %68 = load ptr, ptr %52, align 8, !tbaa !139
  %69 = call ptr @Perl_sv_2cv(ptr noundef %68, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi ptr [ %69, %67 ], [ %60, %62 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !416
  %75 = getelementptr inbounds %struct.xpvcv, ptr %74, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !115
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %140

78:                                               ; preds = %73, %70
  %79 = load ptr, ptr %2, align 8, !tbaa !139
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.gv, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !115
  %84 = getelementptr inbounds %struct.gp, ptr %83, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !301
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr %79, ptr %85
  br label %128

88:                                               ; preds = %78
  br i1 %72, label %133, label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %71, align 8, !tbaa !416
  %91 = getelementptr inbounds %struct.xpvcv, ptr %90, i64 0, i32 12
  %92 = load i32, ptr %91, align 4, !tbaa !417
  %93 = and i32 %92, 32768
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.xpvcv, ptr %90, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !115
  br i1 %94, label %97, label %133

97:                                               ; preds = %89
  %98 = icmp eq ptr %96, null
  br i1 %98, label %133, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.gv, ptr %96, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !301
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %71, align 8, !tbaa !416
  %106 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 12
  %107 = load i32, ptr %106, align 4, !tbaa !417
  %108 = and i32 %107, 32768
  %109 = icmp eq i32 %108, 0
  br i1 %104, label %122, label %110

110:                                              ; preds = %99
  br i1 %109, label %113, label %111

111:                                              ; preds = %110
  %112 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %71) #27
  br label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !115
  br label %116

116:                                              ; preds = %111, %113
  %117 = phi ptr [ %112, %111 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.gv, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !115
  %120 = getelementptr inbounds %struct.gp, ptr %119, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !301
  br label %128

122:                                              ; preds = %99
  br i1 %109, label %125, label %123

123:                                              ; preds = %122
  %124 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %71) #27
  br label %128

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.xpvcv, ptr %105, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !115
  br label %128

128:                                              ; preds = %116, %123, %125, %81
  %129 = phi ptr [ %87, %81 ], [ %121, %116 ], [ %124, %123 ], [ %127, %125 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !302
  %131 = getelementptr inbounds %struct.xpvgv, ptr %130, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !115
  br label %133

133:                                              ; preds = %128, %89, %88, %97
  %134 = phi ptr [ null, %97 ], [ null, %88 ], [ %96, %89 ], [ %132, %128 ]
  %135 = icmp eq ptr %134, null
  %136 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %137 = load ptr, ptr %136, align 8, !tbaa !139
  br i1 %135, label %139, label %138

138:                                              ; preds = %133
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.70, ptr noundef %137, ptr noundef nonnull %134) #27
  br label %338

139:                                              ; preds = %133
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.71, ptr noundef %137) #27
  br label %338

140:                                              ; preds = %73
  %141 = load ptr, ptr @PL_psig_name, align 8, !tbaa !139
  %142 = getelementptr inbounds ptr, ptr %141, i64 %10
  %143 = load ptr, ptr %142, align 8, !tbaa !139
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !147
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 8, !tbaa !147
  br label %153

149:                                              ; preds = %140
  %150 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %151 = load ptr, ptr %150, align 8, !tbaa !139
  %152 = call ptr @Perl_newSVpv(ptr noundef %151, i64 noundef 0) #27
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi ptr [ %143, %145 ], [ %152, %149 ]
  call void @Perl_save_pushptr(ptr noundef %154, i32 noundef 11) #27
  %155 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %156 = getelementptr inbounds %struct.stackinfo, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !358
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #27
  %161 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %162 = getelementptr inbounds %struct.stackinfo, ptr %160, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !360
  %163 = getelementptr inbounds %struct.stackinfo, ptr %161, i64 0, i32 3
  store ptr %160, ptr %163, align 8, !tbaa !358
  br label %164

164:                                              ; preds = %159, %153
  %165 = phi ptr [ %157, %153 ], [ %160, %159 ]
  %166 = getelementptr inbounds %struct.stackinfo, ptr %165, i64 0, i32 6
  store i32 4, ptr %166, align 8, !tbaa !361
  %167 = getelementptr inbounds %struct.stackinfo, ptr %165, i64 0, i32 4
  store i32 -1, ptr %167, align 8, !tbaa !362
  %168 = load ptr, ptr %165, align 8, !tbaa !363
  %169 = load ptr, ptr %168, align 8, !tbaa !195
  %170 = getelementptr inbounds %struct.xpvav, ptr %169, i64 0, i32 2
  store i64 0, ptr %170, align 8, !tbaa !197
  %171 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %172 = ptrtoint ptr %4 to i64
  %173 = ptrtoint ptr %171 to i64
  %174 = sub i64 %172, %173
  %175 = ashr exact i64 %174, 3
  %176 = load ptr, ptr @PL_curstack, align 8, !tbaa !139
  %177 = load ptr, ptr %176, align 8, !tbaa !195
  %178 = getelementptr inbounds %struct.xpvav, ptr %177, i64 0, i32 2
  store i64 %175, ptr %178, align 8, !tbaa !197
  %179 = getelementptr inbounds %struct.av, ptr %168, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !115
  store ptr %180, ptr @PL_stack_base, align 8, !tbaa !139
  %181 = load ptr, ptr %165, align 8, !tbaa !363
  %182 = load ptr, ptr %181, align 8, !tbaa !195
  %183 = getelementptr inbounds %struct.xpvav, ptr %182, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !364
  %185 = getelementptr inbounds ptr, ptr %180, i64 %184
  store ptr %185, ptr @PL_stack_max, align 8, !tbaa !139
  %186 = load ptr, ptr %165, align 8, !tbaa !363
  %187 = load ptr, ptr %186, align 8, !tbaa !195
  %188 = getelementptr inbounds %struct.xpvav, ptr %187, i64 0, i32 2
  %189 = load i64, ptr %188, align 8, !tbaa !197
  %190 = getelementptr inbounds ptr, ptr %180, i64 %189
  store ptr %190, ptr @PL_stack_sp, align 8, !tbaa !139
  %191 = load ptr, ptr %165, align 8, !tbaa !363
  store ptr %191, ptr @PL_curstack, align 8, !tbaa !139
  store ptr %165, ptr @PL_curstackinfo, align 8, !tbaa !139
  %192 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !139
  %193 = getelementptr inbounds i32, ptr %192, i64 1
  store ptr %193, ptr @PL_markstack_ptr, align 8, !tbaa !139
  %194 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !139
  %195 = icmp eq ptr %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %164
  %197 = call ptr @Perl_markstack_grow() #27
  br label %198

198:                                              ; preds = %164, %196
  %199 = phi ptr [ %197, %196 ], [ %193, %164 ]
  %200 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %201 = ptrtoint ptr %190 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = sub i64 %201, %202
  %204 = lshr exact i64 %203, 3
  %205 = trunc i64 %204 to i32
  store i32 %205, ptr %199, align 4, !tbaa !153
  %206 = getelementptr inbounds ptr, ptr %190, i64 1
  store ptr %154, ptr %206, align 8, !tbaa !139
  store ptr %206, ptr @PL_stack_sp, align 8, !tbaa !139
  %207 = load ptr, ptr @PL_errgv, align 8, !tbaa !139
  %208 = getelementptr inbounds %struct.gv, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !115
  %210 = load ptr, ptr %209, align 8, !tbaa !140
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %198
  %213 = call ptr @Perl_gv_add_by_type(ptr noundef %207, i32 noundef 0) #27
  %214 = getelementptr inbounds %struct.gv, ptr %213, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !115
  br label %216

216:                                              ; preds = %198, %212
  %217 = phi ptr [ %215, %212 ], [ %209, %198 ]
  %218 = load ptr, ptr %217, align 8, !tbaa !139
  %219 = call ptr @Perl_newSVsv(ptr noundef %218) #27
  %220 = call i32 @Perl_call_sv(ptr noundef nonnull %71, i32 noundef 12) #27
  %221 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !139
  %222 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !139
  %223 = getelementptr inbounds %struct.stackinfo, ptr %222, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !360
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  call void @Perl_croak_popstack() #27
  br label %227

227:                                              ; preds = %216, %226
  %228 = load ptr, ptr @PL_stack_base, align 8, !tbaa !139
  %229 = ptrtoint ptr %221 to i64
  %230 = ptrtoint ptr %228 to i64
  %231 = sub i64 %229, %230
  %232 = ashr exact i64 %231, 3
  %233 = load ptr, ptr @PL_curstack, align 8, !tbaa !139
  %234 = load ptr, ptr %233, align 8, !tbaa !195
  %235 = getelementptr inbounds %struct.xpvav, ptr %234, i64 0, i32 2
  store i64 %232, ptr %235, align 8, !tbaa !197
  %236 = load ptr, ptr %224, align 8, !tbaa !363
  %237 = getelementptr inbounds %struct.av, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !115
  store ptr %238, ptr @PL_stack_base, align 8, !tbaa !139
  %239 = load ptr, ptr %224, align 8, !tbaa !363
  %240 = load ptr, ptr %239, align 8, !tbaa !195
  %241 = getelementptr inbounds %struct.xpvav, ptr %240, i64 0, i32 3
  %242 = load i64, ptr %241, align 8, !tbaa !364
  %243 = getelementptr inbounds ptr, ptr %238, i64 %242
  store ptr %243, ptr @PL_stack_max, align 8, !tbaa !139
  %244 = load ptr, ptr %224, align 8, !tbaa !363
  %245 = load ptr, ptr %244, align 8, !tbaa !195
  %246 = getelementptr inbounds %struct.xpvav, ptr %245, i64 0, i32 2
  %247 = load i64, ptr %246, align 8, !tbaa !197
  %248 = getelementptr inbounds ptr, ptr %238, i64 %247
  store ptr %248, ptr @PL_stack_sp, align 8, !tbaa !139
  %249 = load ptr, ptr %224, align 8, !tbaa !363
  store ptr %249, ptr @PL_curstack, align 8, !tbaa !139
  store ptr %224, ptr @PL_curstackinfo, align 8, !tbaa !139
  %250 = load ptr, ptr @PL_errgv, align 8, !tbaa !139
  %251 = getelementptr inbounds %struct.gv, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !115
  %253 = load ptr, ptr %252, align 8, !tbaa !140
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %227
  %256 = call ptr @Perl_gv_add_by_type(ptr noundef %250, i32 noundef 0) #27
  %257 = getelementptr inbounds %struct.gv, ptr %256, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !115
  br label %259

259:                                              ; preds = %227, %255
  %260 = phi ptr [ %258, %255 ], [ %252, %227 ]
  %261 = load ptr, ptr %260, align 8, !tbaa !139
  %262 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 4, !tbaa !108
  %264 = and i32 %263, 2097152
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %259
  %267 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %261, i32 noundef 2) #27
  br i1 %267, label %315, label %329

268:                                              ; preds = %259
  %269 = and i32 %263, 65280
  %270 = icmp ne i32 %269, 0
  %271 = and i32 %263, 255
  %272 = icmp eq i32 %271, 8
  %273 = or i1 %270, %272
  %274 = and i32 %263, 16777471
  %275 = icmp eq i32 %274, 16777226
  %276 = or i1 %275, %273
  br i1 %276, label %277, label %329

277:                                              ; preds = %268
  %278 = and i32 %263, 1024
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %294, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %261, align 8, !tbaa !114
  %282 = icmp eq ptr %281, null
  br i1 %282, label %329, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.xpv, ptr %281, i64 0, i32 2
  %285 = load i64, ptr %284, align 8, !tbaa !189
  %286 = icmp ugt i64 %285, 1
  br i1 %286, label %315, label %287

287:                                              ; preds = %283
  %288 = icmp eq i64 %285, 0
  br i1 %288, label %329, label %289

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !115
  %292 = load i8, ptr %291, align 1, !tbaa !115
  %293 = icmp eq i8 %292, 48
  br i1 %293, label %329, label %315

294:                                              ; preds = %277
  %295 = and i32 %263, 768
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %313, label %297

297:                                              ; preds = %294
  %298 = and i32 %263, 256
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr %261, align 8, !tbaa !114
  %302 = getelementptr inbounds %struct.xpviv, ptr %301, i64 0, i32 4
  %303 = load i64, ptr %302, align 8, !tbaa !115
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %300, %297
  %306 = and i32 %263, 512
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %329, label %308

308:                                              ; preds = %305
  %309 = load ptr, ptr %261, align 8, !tbaa !114
  %310 = getelementptr inbounds %struct.xpvnv, ptr %309, i64 0, i32 5
  %311 = load double, ptr %310, align 8, !tbaa !115
  %312 = fcmp une double %311, 0.000000e+00
  br i1 %312, label %315, label %329

313:                                              ; preds = %294
  %314 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %261, i32 noundef 0) #27
  br i1 %314, label %315, label %329

315:                                              ; preds = %289, %313, %308, %300, %283, %266
  %316 = icmp eq ptr %219, null
  br i1 %316, label %324, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 1
  %319 = load i32, ptr %318, align 8, !tbaa !147
  %320 = icmp ugt i32 %319, 1
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = add i32 %319, -1
  store i32 %322, ptr %318, align 8, !tbaa !147
  br label %324

323:                                              ; preds = %317
  call void @Perl_sv_free2(ptr noundef nonnull %219, i32 noundef %319) #27
  br label %324

324:                                              ; preds = %315, %321, %323
  %325 = call ptr @Perl_rsignal(i32 noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #27
  %326 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !139
  %327 = call ptr @Perl_rsignal(i32 noundef %0, ptr noundef %326) #27
  %328 = call ptr @Perl_die_sv(ptr noundef %261) #27
  br label %338

329:                                              ; preds = %313, %308, %268, %305, %289, %287, %280, %266
  call void @Perl_sv_setsv_flags(ptr noundef %261, ptr noundef %219, i32 noundef 1538) #27
  %330 = icmp eq ptr %219, null
  br i1 %330, label %338, label %331

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 1
  %333 = load i32, ptr %332, align 8, !tbaa !147
  %334 = icmp ugt i32 %333, 1
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = add i32 %333, -1
  store i32 %336, ptr %332, align 8, !tbaa !147
  br label %338

337:                                              ; preds = %331
  call void @Perl_sv_free2(ptr noundef nonnull %219, i32 noundef %333) #27
  br label %338

338:                                              ; preds = %337, %335, %329, %324, %138, %139
  %339 = phi i1 [ true, %139 ], [ true, %138 ], [ false, %324 ], [ false, %329 ], [ false, %335 ], [ false, %337 ]
  %340 = phi ptr [ null, %139 ], [ null, %138 ], [ %154, %324 ], [ %154, %329 ], [ %154, %335 ], [ %154, %337 ]
  store i32 %8, ptr @PL_savestack_ix, align 4, !tbaa !153
  br i1 %339, label %348, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.sv, ptr %340, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !147
  %344 = icmp ugt i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = add i32 %343, -1
  store i32 %346, ptr %342, align 8, !tbaa !147
  br label %348

347:                                              ; preds = %341
  call void @Perl_sv_free2(ptr noundef %340, i32 noundef %343) #27
  br label %348

348:                                              ; preds = %347, %345, %338
  store ptr %6, ptr @PL_op, align 8, !tbaa !139
  store ptr %5, ptr @PL_Sv, align 8, !tbaa !139
  store ptr %7, ptr @PL_Xpv, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #22

declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @S_unwind_handler_stack(ptr nocapture readnone %0) #23 !prof !173 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = add nsw i32 %2, -5
  store i32 %3, ptr @PL_savestack_ix, align 4, !tbaa !153
  ret void
}

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_die_sv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_sethint(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !318 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !164
  %5 = icmp eq i64 %4, -2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  br i1 %5, label %10, label %8, !prof !390

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %7, i64 noundef %4, i32 noundef 524288) #27
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %2 ]
  %12 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %13 = or i32 %12, 131072
  store i32 %13, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %14 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  %15 = tail call ptr @Perl_refcounted_he_new_sv(ptr noundef %14, ptr noundef %11, i32 noundef 0, ptr noundef %0, i32 noundef 0) #27
  store ptr %15, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  ret i32 0
}

declare ptr @Perl_refcounted_he_new_sv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_clearhint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !318 {
  %3 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %4 = or i32 %3, 131072
  store i32 %4, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !164
  %7 = icmp eq i64 %6, -2
  %8 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  br i1 %7, label %11, label %13, !prof !390

11:                                               ; preds = %2
  %12 = tail call ptr @Perl_refcounted_he_new_sv(ptr noundef %8, ptr noundef %10, i32 noundef 0, ptr noundef null, i32 noundef 0) #27
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %8, ptr noundef %10, i64 noundef %6, i32 noundef 0, ptr noundef null, i32 noundef 0) #27
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  store ptr %16, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  ret i32 0
}

declare ptr @Perl_refcounted_he_new_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_magic_clearhints(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 !prof !419 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  tail call void @Perl_refcounted_he_free(ptr noundef %3) #27
  store ptr null, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !269
  ret i32 0
}

declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_copycallchecker(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #4 !prof !173 {
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !146
  %8 = sext i8 %7 to i32
  tail call void @Perl_sv_magic(ptr noundef %2, ptr noundef nonnull @PL_sv_undef, i32 noundef %8, ptr noundef null, i32 noundef 0) #27
  %9 = load i8, ptr %6, align 2, !tbaa !146
  %10 = icmp eq ptr %2, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.xpvmg, ptr %12, i64 0, i32 1
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.magic, ptr %16, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !146
  %21 = icmp eq i8 %20, %9
  br i1 %21, label %22, label %14, !llvm.loop !209

22:                                               ; preds = %18, %14, %5
  %23 = phi ptr [ null, %5 ], [ null, %14 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.magic, ptr %23, i64 0, i32 4
  %25 = load i8, ptr %24, align 1, !tbaa !125
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.magic, ptr %23, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !220
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !147
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = add i32 %34, -1
  store i32 %37, ptr %33, align 8, !tbaa !147
  br label %39

38:                                               ; preds = %32
  tail call void @Perl_sv_free2(ptr noundef nonnull %30, i32 noundef %34) #27
  br label %39

39:                                               ; preds = %38, %36, %28, %22
  %40 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !163
  %42 = getelementptr inbounds %struct.magic, ptr %23, i64 0, i32 7
  store ptr %41, ptr %42, align 8, !tbaa !163
  %43 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !220
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !147
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !147
  br label %50

50:                                               ; preds = %39, %46
  %51 = getelementptr inbounds %struct.magic, ptr %23, i64 0, i32 6
  store ptr %44, ptr %51, align 8, !tbaa !220
  %52 = load i8, ptr %24, align 1, !tbaa !125
  %53 = or i8 %52, 2
  store i8 %53, ptr %24, align 1, !tbaa !125
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_setdebugvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !115
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 0) #27
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !319
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds [3 x i64], ptr @PL_DBcontrol, i64 0, i64 %17
  store i64 %14, ptr %18, align 8, !tbaa !187
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_getdebugvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !173 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !319
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds [3 x i64], ptr @PL_DBcontrol, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !187
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %7) #27
  ret i32 0
}

declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_is_invariant_string(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!106}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!35 = !{ptr @Perl_mg_get, ptr @Perl_save_alloc, i64 2341595}
!36 = !{ptr @Perl_mg_get, ptr @Perl_save_destructor_x, i64 2341595}
!37 = !{ptr @Perl_mg_get, ptr @Perl_magic_get, i64 1818105}
!38 = !{ptr @Perl_mg_get, ptr @Perl_newSVpv_share, i64 1}
!39 = !{ptr @Perl_mg_get, ptr @S_magic_methcall1, i64 517918}
!40 = !{ptr @Perl_mg_get, ptr @Perl_sv_setsv_flags, i64 517918}
!41 = !{ptr @Perl_mg_get, ptr @Perl_magic_getdefelem, i64 5570}
!42 = !{ptr @Perl_mg_get, ptr @Perl_mg_magical, i64 7}
!43 = !{ptr @Perl_mg_set, ptr @Perl_save_alloc, i64 956240}
!44 = !{ptr @Perl_mg_set, ptr @Perl_save_destructor_x, i64 956240}
!45 = !{ptr @Perl_mg_set, ptr @Perl_magic_setmglob, i64 922517}
!46 = !{ptr @Perl_mg_set, ptr @Perl_magic_set, i64 19347}
!47 = !{ptr @Perl_mg_set, ptr @Perl_magic_setsig, i64 14106}
!48 = !{ptr @Perl_mg_set, ptr @Perl_mg_magical, i64 3}
!49 = !{ptr @Perl_mg_clear, ptr @Perl_save_alloc, i64 14172}
!50 = !{ptr @Perl_mg_clear, ptr @Perl_save_destructor_x, i64 14172}
!51 = !{ptr @Perl_mg_clear, ptr @Perl_magic_clearsig, i64 14107}
!52 = !{ptr @Perl_mg_clear, ptr @Perl_magic_clearhints, i64 63}
!53 = !{ptr @Perl_mg_clear, ptr @Perl_magic_clearhint, i64 2}
!54 = !{ptr @Perl_mg_copy, ptr @Perl_sv_magic, i64 14200}
!55 = !{ptr @Perl_mg_localize, ptr @Perl_sv_magicext, i64 6404}
!56 = !{ptr @Perl_mg_localize, ptr @Perl_mg_set, i64 6404}
!57 = !{ptr @Perl_mg_free, ptr @S_mg_free_struct, i64 288036}
!58 = !{ptr @S_mg_free_struct, ptr @Perl_safesysfree, i64 294500}
!59 = !{ptr @S_mg_free_struct, ptr @Perl_sv_free2, i64 5593}
!60 = !{ptr @Perl_magic_get, ptr @Perl_sv_setsv_flags, i64 5158}
!61 = !{ptr @Perl_magic_get, ptr @__errno_location, i64 2}
!62 = !{ptr @Perl_magic_get, ptr @Perl_sv_setnv, i64 2}
!63 = !{ptr @Perl_magic_get, ptr @Perl_sv_setpvn, i64 3}
!64 = !{ptr @Perl_magic_get, ptr @Perl_my_strerror, i64 1}
!65 = !{ptr @Perl_magic_get, ptr @Perl_sv_setpv, i64 50}
!66 = !{ptr @Perl_magic_get, ptr @S_fixup_errno_string, i64 1}
!67 = !{ptr @Perl_magic_get, ptr @Perl_sv_setiv, i64 97}
!68 = !{ptr @Perl_magic_get, ptr @strcmp, i64 17}
!69 = !{ptr @Perl_magic_get, ptr @Perl_get_hv, i64 4}
!70 = !{ptr @Perl_magic_get, ptr @Perl_hv_common, i64 4}
!71 = !{ptr @Perl_magic_get, ptr @Perl_sv_copypv_flags, i64 4}
!72 = !{ptr @Perl_magic_get, ptr @getpid, i64 4}
!73 = !{ptr @Perl_magic_get, ptr @getuid, i64 1}
!74 = !{ptr @Perl_magic_get, ptr @Perl_sv_setuv, i64 4}
!75 = !{ptr @Perl_magic_get, ptr @geteuid, i64 1}
!76 = !{ptr @Perl_magic_get, ptr @getgid, i64 1}
!77 = !{ptr @Perl_magic_get, ptr @getegid, i64 1}
!78 = !{ptr @S_fixup_errno_string, ptr @Perl_is_invariant_string, i64 1}
!79 = !{ptr @Perl_magic_getsig, ptr @Perl_whichsig_pvn, i64 1}
!80 = !{ptr @Perl_whichsig_pvn, ptr @strlen, i64 16}
!81 = !{ptr @Perl_magic_clearsig, ptr @Perl_magic_setsig, i64 14107}
!82 = !{ptr @Perl_magic_clearsig, ptr @Perl_sv_unmagic, i64 14107}
!83 = !{ptr @Perl_magic_setsig, ptr @bcmp, i64 28213}
!84 = !{ptr @Perl_magic_setisa, ptr @Perl_magic_clearisa, i64 25}
!85 = !{ptr @Perl_magic_clearisa, ptr @Perl_mro_isa_changed_in, i64 25}
!86 = !{ptr @Perl_magic_methcall, ptr @Perl_push_scope, i64 517918}
!87 = !{ptr @Perl_magic_methcall, ptr @Perl_call_sv, i64 517918}
!88 = !{ptr @Perl_magic_methcall, ptr @Perl_pop_scope, i64 517918}
!89 = !{ptr @S_magic_methcall1, ptr @Perl_magic_methcall, i64 517918}
!90 = !{ptr @Perl_magic_setvec, ptr @Perl_do_vecset, i64 223}
!91 = !{ptr @Perl_defelem_target, ptr @Perl_hv_common, i64 5570}
!92 = !{ptr @Perl_magic_getdefelem, ptr @Perl_defelem_target, i64 5570}
!93 = !{ptr @Perl_magic_getdefelem, ptr @Perl_sv_setsv_flags, i64 5570}
!94 = !{ptr @Perl_magic_killbackrefs, ptr @Perl_sv_kill_backrefs, i64 3}
!95 = !{ptr @Perl_magic_set, ptr @Perl_sv_2iv_flags, i64 4}
!96 = !{ptr @Perl_magic_set, ptr @__errno_location, i64 4}
!97 = !{ptr @Perl_magic_set, ptr @strcmp, i64 13}
!98 = !{ptr @Perl_magic_set, ptr @Perl_new_warnings_bitfield, i64 6}
!99 = !{ptr @Perl_magic_set, ptr @Perl_save_sptr, i64 1}
!100 = !{ptr @Perl_magic_set, ptr @Perl_PerlIO_flush, i64 2}
!101 = !{ptr @Perl_magic_set, ptr @Perl_sv_free2, i64 19200}
!102 = !{ptr @Perl_magic_set, ptr @Perl_newSVsv, i64 19200}
!103 = !{ptr @Perl_magic_sethint, ptr @Perl_refcounted_he_new_sv, i64 2}
!104 = !{ptr @Perl_magic_clearhint, ptr @Perl_refcounted_he_new_sv, i64 2}
!105 = !{ptr @Perl_magic_clearhints, ptr @Perl_refcounted_he_free, i64 63}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 591870}
!108 = !{!109, !113, i64 12}
!109 = !{!"sv", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!"int", !111, i64 0}
!114 = !{!109, !110, i64 0}
!115 = !{!111, !111, i64 0}
!116 = !{!"branch_weights", i32 0, i32 591870}
!117 = !{!118, !110, i64 8}
!118 = !{!"magic", !110, i64 0, !110, i64 8, !119, i64 16, !111, i64 18, !111, i64 19, !120, i64 24, !110, i64 32, !110, i64 40}
!119 = !{!"short", !111, i64 0}
!120 = !{!"long", !111, i64 0}
!121 = !{!"branch_weights", i32 3, i32 591867}
!122 = !{!123, !110, i64 0}
!123 = !{!"mgvtbl", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56}
!124 = !{!"branch_weights", i32 553284, i32 38583}
!125 = !{!118, !111, i64 19}
!126 = !{!"branch_weights", i32 38563, i32 20}
!127 = !{!123, !110, i64 8}
!128 = !{!"branch_weights", i32 950, i32 590917}
!129 = !{!123, !110, i64 24}
!130 = !{!"branch_weights", i32 577548, i32 14319}
!131 = !{!118, !110, i64 0}
!132 = !{!"branch_weights", i32 591870, i32 0}
!133 = distinct !{!133, !134, !135}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"llvm.loop.unroll.disable"}
!136 = !{!"branch_weights", i32 953, i32 590917}
!137 = !{!"function_entry_count", i64 2341595}
!138 = !{!"branch_weights", i32 6404, i32 2335191}
!139 = !{!110, !110, i64 0}
!140 = !{!141, !110, i64 0}
!141 = !{!"gp", !110, i64 0, !110, i64 8, !110, i64 16, !113, i64 24, !113, i64 28, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !113, i64 64, !113, i64 67, !110, i64 72}
!142 = !{!"branch_weights", i32 0, i32 6404}
!143 = !{!"branch_weights", i32 2341595, i32 2341595}
!144 = !{!"branch_weights", i32 2341595, i32 0}
!145 = !{!"branch_weights", i32 0, i32 2341595}
!146 = !{!118, !111, i64 18}
!147 = !{!109, !113, i64 8}
!148 = !{!"branch_weights", i32 3312007, i32 0}
!149 = !{!150, !110, i64 0}
!150 = !{!"magic_state", !110, i64 0, !113, i64 8, !113, i64 12, !151, i64 16}
!151 = !{!"_Bool", !111, i64 0}
!152 = !{!150, !113, i64 12}
!153 = !{!113, !113, i64 0}
!154 = !{!150, !113, i64 8}
!155 = !{!150, !151, i64 16}
!156 = !{!"branch_weights", i32 1818105, i32 523490}
!157 = !{!"branch_weights", i32 517918, i32 5572}
!158 = !{!"branch_weights", i32 10, i32 517908}
!159 = !{!"branch_weights", i32 1, i32 517917}
!160 = !{!"branch_weights", i32 0, i32 517918}
!161 = !{!"VP", i32 0, i64 5572, i64 6907466263476406219, i64 5570}
!162 = !{!"branch_weights", i32 2341585, i32 10}
!163 = !{!118, !110, i64 40}
!164 = !{!118, !120, i64 24}
!165 = !{!"branch_weights", i32 1, i32 3312007}
!166 = !{!"branch_weights", i32 14107, i32 3297900}
!167 = !{!"branch_weights", i32 10, i32 3297890}
!168 = !{i8 0, i8 2}
!169 = !{}
!170 = !{!"branch_weights", i32 3312006, i32 1}
!171 = !{!"branch_weights", i32 0, i32 3312007}
!172 = !{!"branch_weights", i32 -1616893476, i32 0, i32 0}
!173 = !{!"function_entry_count", i64 0}
!174 = !{!"mg.c;S_save_magic_flags"}
!175 = !{!"function_entry_count", i64 1}
!176 = !{!"mg.c;S_restore_magic"}
!177 = !{!"function_entry_count", i64 956240}
!178 = !{!"branch_weights", i32 6404, i32 949836}
!179 = !{!"branch_weights", i32 1, i32 956239}
!180 = !{!"branch_weights", i32 956240, i32 0}
!181 = !{!"branch_weights", i32 0, i32 949836}
!182 = !{!"branch_weights", i32 0, i32 956240}
!183 = !{!"VP", i32 0, i64 956240, i64 6670342013529070642, i64 922517, i64 6547857662161378920, i64 19347, i64 -2720251975568912274, i64 14106}
!184 = !{!"branch_weights", i32 956239, i32 1}
!185 = distinct !{!185, !134, !135}
!186 = !{!123, !110, i64 16}
!187 = !{!120, !120, i64 0}
!188 = distinct !{!188, !134, !135}
!189 = !{!190, !120, i64 16}
!190 = !{!"xpv", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24}
!191 = !{!"branch_weights", i32 1, i32 1}
!192 = !{!"branch_weights", i32 0, i32 1}
!193 = !{!"branch_weights", i32 1, i32 0}
!194 = distinct !{!194, !134, !135}
!195 = !{!196, !110, i64 0}
!196 = !{!"av", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!197 = !{!198, !120, i64 16}
!198 = !{!"xpvav", !110, i64 0, !111, i64 8, !120, i64 16, !120, i64 24, !110, i64 32}
!199 = !{!"function_entry_count", i64 14172}
!200 = !{!"branch_weights", i32 1, i32 14171}
!201 = !{!"branch_weights", i32 0, i32 14172}
!202 = !{!"VP", i32 0, i64 14172, i64 131942689209013761, i64 14107, i64 -3874586208214247951, i64 63, i64 -5464045741569431168, i64 2}
!203 = !{!"branch_weights", i32 14171, i32 1}
!204 = distinct !{!204, !134, !135}
!205 = !{!"function_entry_count", i64 5700719}
!206 = !{!"branch_weights", i32 0, i32 5700719}
!207 = !{!"branch_weights", i32 5043212, i32 5651628}
!208 = !{!"branch_weights", i32 657507, i32 4994121}
!209 = distinct !{!209, !134, !135}
!210 = !{!"function_entry_count", i64 1141490}
!211 = !{!"branch_weights", i32 0, i32 1141490}
!212 = !{!213, !111, i64 72}
!213 = !{!"xpvlv", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24, !111, i64 32, !111, i64 40, !111, i64 48, !120, i64 56, !110, i64 64, !111, i64 72, !111, i64 73}
!214 = !{!213, !110, i64 64}
!215 = !{!"branch_weights", i32 1135891, i32 5599}
!216 = !{!"branch_weights", i32 417120, i32 718771}
!217 = !{!"branch_weights", i32 0, i32 718771}
!218 = !{!"branch_weights", i32 718771, i32 0}
!219 = !{!213, !120, i64 56}
!220 = !{!118, !110, i64 32}
!221 = !{!"function_entry_count", i64 14200}
!222 = !{!"branch_weights", i32 1, i32 14199}
!223 = !{!"branch_weights", i32 14200, i32 0}
!224 = !{!123, !110, i64 40}
!225 = !{!"branch_weights", i32 14190, i32 10, i32 0}
!226 = !{!"branch_weights", i32 0, i32 10}
!227 = !{!"branch_weights", i32 14199, i32 1}
!228 = distinct !{!228, !134, !135}
!229 = !{!"function_entry_count", i64 6404}
!230 = !{!"branch_weights", i32 1, i32 6403}
!231 = !{!"branch_weights", i32 6404, i32 0}
!232 = !{!123, !110, i64 56}
!233 = !{!"branch_weights", i32 6403, i32 1}
!234 = distinct !{!234, !134, !135}
!235 = !{!"function_entry_count", i64 288039}
!236 = !{!"branch_weights", i32 3, i32 288036}
!237 = !{!"branch_weights", i32 288036, i32 0}
!238 = distinct !{!238, !134, !135}
!239 = !{!"function_entry_count", i64 288036}
!240 = !{!"mg.c;S_mg_free_struct"}
!241 = !{!"branch_weights", i32 1, i32 288035}
!242 = !{!123, !110, i64 32}
!243 = !{!"branch_weights", i32 288035, i32 0}
!244 = !{!"branch_weights", i32 281537, i32 6499}
!245 = !{!"branch_weights", i32 0, i32 6499}
!246 = !{!"branch_weights", i32 6464, i32 35}
!247 = !{!"branch_weights", i32 35, i32 0}
!248 = !{!"branch_weights", i32 12, i32 23}
!249 = !{!"branch_weights", i32 282456, i32 5580}
!250 = !{!"branch_weights", i32 0, i32 5580}
!251 = !{!"branch_weights", i32 10, i32 5570}
!252 = distinct !{!252, !134, !135}
!253 = !{!254, !110, i64 56}
!254 = !{!"pmop", !110, i64 0, !110, i64 8, !110, i64 16, !120, i64 24, !113, i64 32, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !111, i64 34, !111, i64 35, !110, i64 40, !110, i64 48, !110, i64 56, !113, i64 64, !111, i64 72, !111, i64 80, !110, i64 88}
!255 = !{!256, !113, i64 96}
!256 = !{!"regexp", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !113, i64 56, !120, i64 64, !120, i64 72, !120, i64 80, !110, i64 88, !113, i64 96, !113, i64 100, !110, i64 104, !113, i64 112, !113, i64 116, !110, i64 120, !110, i64 128, !110, i64 136, !120, i64 144, !120, i64 152, !120, i64 160, !120, i64 168, !113, i64 176, !113, i64 176, !110, i64 184}
!257 = !{!256, !113, i64 112}
!258 = !{!256, !110, i64 120}
!259 = !{!260, !120, i64 0}
!260 = !{!"regexp_paren_pair", !120, i64 0, !120, i64 8, !120, i64 16}
!261 = !{!260, !120, i64 8}
!262 = distinct !{!262, !134, !135}
!263 = !{!256, !113, i64 56}
!264 = !{!256, !110, i64 128}
!265 = !{!256, !120, i64 160}
!266 = !{!256, !120, i64 152}
!267 = !{!268, !113, i64 56}
!268 = !{!"cop", !110, i64 0, !110, i64 8, !110, i64 16, !120, i64 24, !113, i64 32, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !111, i64 34, !111, i64 35, !113, i64 36, !110, i64 40, !110, i64 48, !113, i64 56, !113, i64 60, !110, i64 64, !110, i64 72}
!269 = !{!268, !110, i64 72}
!270 = !{!"function_entry_count", i64 1818105}
!271 = !{!"branch_weights", i32 1811536, i32 6569}
!272 = !{!"branch_weights", i32 5148, i32 1806388}
!273 = !{!"branch_weights", i32 0, i32 1806388}
!274 = !{!256, !110, i64 32}
!275 = !{!276, !110, i64 40}
!276 = !{!"regexp_engine", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !110, i64 80, !110, i64 88}
!277 = !{!"VP", i32 0, i64 1806388, i64 -436889164107355663, i64 1806388}
!278 = !{!"branch_weights", i32 6401, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 80, i32 0, i32 0, i32 49, i32 0, i32 0, i32 1, i32 0, i32 26, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1}
!279 = !{!151, !151, i64 0}
!280 = !{!"branch_weights", i32 0, i32 2}
!281 = !{!"branch_weights", i32 1, i32 127}
!282 = !{!"branch_weights", i32 127, i32 1}
!283 = distinct !{!283, !134, !135}
!284 = !{!285, !113, i64 8}
!285 = !{!"gv", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!286 = !{!"branch_weights", i32 49, i32 0}
!287 = !{!288, !111, i64 238}
!288 = !{!"yy_parser", !110, i64 0, !111, i64 8, !113, i64 16, !113, i64 20, !113, i64 24, !113, i64 28, !110, i64 32, !110, i64 40, !113, i64 48, !113, i64 52, !110, i64 56, !110, i64 64, !111, i64 72, !111, i64 73, !111, i64 74, !111, i64 75, !113, i64 76, !110, i64 80, !110, i64 88, !110, i64 96, !119, i64 104, !119, i64 106, !113, i64 108, !110, i64 112, !113, i64 120, !113, i64 124, !111, i64 128, !111, i64 129, !151, i64 130, !151, i64 131, !113, i64 132, !289, i64 136, !110, i64 160, !110, i64 168, !110, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !110, i64 208, !110, i64 216, !110, i64 224, !113, i64 232, !119, i64 236, !111, i64 238, !111, i64 239, !110, i64 240, !110, i64 248, !110, i64 256, !111, i64 264, !111, i64 272, !111, i64 312, !113, i64 332, !110, i64 336, !111, i64 344, !113, i64 600, !113, i64 604, !111, i64 608, !111, i64 609, !113, i64 610, !113, i64 610, !113, i64 610, !113, i64 610}
!289 = !{!"_sublex_info", !111, i64 0, !119, i64 2, !110, i64 8, !110, i64 16}
!290 = !{!"branch_weights", i32 10, i32 16}
!291 = !{!"branch_weights", i32 16, i32 0}
!292 = !{!268, !110, i64 64}
!293 = !{!"branch_weights", i32 2, i32 0, i32 10, i32 4}
!294 = !{!"branch_weights", i32 0, i32 4}
!295 = !{!256, !113, i64 116}
!296 = !{!141, !110, i64 8}
!297 = !{!298, !110, i64 0}
!298 = !{!"io", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!299 = !{!300, !110, i64 80}
!300 = !{!"xpvio", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24, !111, i64 32, !110, i64 40, !111, i64 48, !120, i64 56, !120, i64 64, !120, i64 72, !110, i64 80, !110, i64 88, !110, i64 96, !110, i64 104, !110, i64 112, !110, i64 120, !111, i64 128, !111, i64 129}
!301 = !{!141, !110, i64 56}
!302 = !{!285, !110, i64 0}
!303 = !{!300, !110, i64 96}
!304 = !{!300, !120, i64 64}
!305 = !{!300, !120, i64 72}
!306 = !{!300, !120, i64 56}
!307 = !{!300, !111, i64 129}
!308 = !{!"branch_weights", i32 4, i32 0}
!309 = !{!"mg.c;S_fixup_errno_string"}
!310 = !{!311, !110, i64 0}
!311 = !{!"ufuncs", !110, i64 0, !110, i64 8, !120, i64 16}
!312 = !{!311, !120, i64 16}
!313 = !{!314, !113, i64 24}
!314 = !{!"stat", !120, i64 0, !120, i64 8, !120, i64 16, !113, i64 24, !113, i64 28, !113, i64 32, !113, i64 36, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !315, i64 72, !315, i64 88, !315, i64 104, !111, i64 120}
!315 = !{!"timespec", !120, i64 0, !120, i64 8}
!316 = distinct !{!316, !134, !135}
!317 = distinct !{!317, !134, !135}
!318 = !{!"function_entry_count", i64 2}
!319 = !{!118, !119, i64 16}
!320 = !{!"branch_weights", i32 0, i32 16}
!321 = !{!"branch_weights", i32 127, i32 1921}
!322 = distinct !{!322, !134, !135}
!323 = !{!"branch_weights", i32 1, i32 0, i32 0}
!324 = !{!"function_entry_count", i64 14107}
!325 = !{!"function_entry_count", i64 28213}
!326 = !{!"branch_weights", i32 28213, i32 0}
!327 = !{!"branch_weights", i32 0, i32 2587132, i32 8464}
!328 = !{!"branch_weights", i32 28121, i32 0}
!329 = !{!"branch_weights", i32 92, i32 0}
!330 = !{!"branch_weights", i32 46, i32 46}
!331 = !{!"branch_weights", i32 0, i32 28213}
!332 = !{!"branch_weights", i32 14107, i32 14106}
!333 = !{!"branch_weights", i32 0, i32 14106}
!334 = !{!"branch_weights", i32 0, i32 28212}
!335 = !{!"branch_weights", i32 14106, i32 0}
!336 = !{!"branch_weights", i32 0, i32 14107}
!337 = !{!"branch_weights", i32 14107, i32 0}
!338 = distinct !{!338, !134, !135}
!339 = !{!"function_entry_count", i64 45}
!340 = !{!119, !119, i64 0}
!341 = !{!"branch_weights", i32 3, i32 42}
!342 = !{!"branch_weights", i32 20, i32 22}
!343 = !{!"function_entry_count", i64 25}
!344 = !{!"branch_weights", i32 0, i32 25}
!345 = !{!"branch_weights", i32 25, i32 0}
!346 = !{!347, !113, i64 12}
!347 = !{!"hv", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!348 = !{!347, !110, i64 0}
!349 = !{!350, !120, i64 24}
!350 = !{!"xpvhv", !110, i64 0, !111, i64 8, !120, i64 16, !120, i64 24}
!351 = !{!352, !113, i64 28}
!352 = !{!"xpvhv_aux", !111, i64 0, !110, i64 8, !110, i64 16, !113, i64 24, !113, i64 28, !110, i64 32, !113, i64 40, !113, i64 44, !113, i64 48, !113, i64 52}
!353 = distinct !{!353, !134, !135}
!354 = !{!350, !120, i64 16}
!355 = distinct !{!355, !134, !135}
!356 = !{!"function_entry_count", i64 517918}
!357 = !{!"branch_weights", i32 517918, i32 0}
!358 = !{!359, !110, i64 24}
!359 = !{!"stackinfo", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !113, i64 32, !113, i64 36, !113, i64 40, !113, i64 44}
!360 = !{!359, !110, i64 16}
!361 = !{!359, !113, i64 40}
!362 = !{!359, !113, i64 32}
!363 = !{!359, !110, i64 0}
!364 = !{!198, !120, i64 24}
!365 = distinct !{!365, !134, !135}
!366 = !{!"branch_weights", i32 517908, i32 10}
!367 = !{!"branch_weights", i32 10, i32 0}
!368 = distinct !{!368, !134, !135}
!369 = !{!"mg.c;S_magic_methcall1"}
!370 = !{!"branch_weights", i32 0, i32 517908}
!371 = !{!372, !110, i64 0}
!372 = !{!"xpvmg", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24, !111, i64 32, !111, i64 40}
!373 = !{!352, !110, i64 16}
!374 = !{!375, !111, i64 34}
!375 = !{!"op", !110, i64 0, !110, i64 8, !110, i64 16, !120, i64 24, !113, i64 32, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !113, i64 33, !111, i64 34, !111, i64 35}
!376 = !{!213, !111, i64 73}
!377 = !{!"function_entry_count", i64 223}
!378 = !{!"function_entry_count", i64 5570}
!379 = !{!"branch_weights", i32 0, i32 5570}
!380 = !{!"branch_weights", i32 5570, i32 0}
!381 = !{!196, !113, i64 12}
!382 = !{!"function_entry_count", i64 3}
!383 = !{!"function_entry_count", i64 922517}
!384 = !{!311, !110, i64 8}
!385 = !{!"function_entry_count", i64 19347}
!386 = !{!"branch_weights", i32 0, i32 19347}
!387 = !{!276, !110, i64 48}
!388 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 78, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 19200, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!389 = distinct !{!389, !134, !135}
!390 = !{!"branch_weights", i32 2, i32 0}
!391 = !{!268, !110, i64 40}
!392 = !{!"branch_weights", i32 78, i32 0}
!393 = !{!141, !110, i64 32}
!394 = !{!"branch_weights", i32 0, i32 13}
!395 = !{!"branch_weights", i32 13, i32 0}
!396 = !{!"branch_weights", i32 1, i32 207}
!397 = !{!"branch_weights", i32 207, i32 3473}
!398 = distinct !{!398, !134, !135}
!399 = !{!"branch_weights", i32 6, i32 7}
!400 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 6}
!401 = !{!"branch_weights", i32 6, i32 0}
!402 = !{!"branch_weights", i32 4, i32 2}
!403 = !{!"branch_weights", i32 1, i32 0, i32 1}
!404 = !{!300, !110, i64 88}
!405 = !{!300, !110, i64 104}
!406 = !{!"branch_weights", i32 0, i32 48}
!407 = !{!"branch_weights", i32 48, i32 0}
!408 = !{!"branch_weights", i32 2, i32 46}
!409 = !{!300, !110, i64 40}
!410 = !{!"branch_weights", i32 19200, i32 0}
!411 = !{!"branch_weights", i32 0, i32 19200}
!412 = distinct !{!412, !134, !135}
!413 = !{!285, !113, i64 12}
!414 = !{!415, !113, i64 12}
!415 = !{!"cv", !110, i64 0, !113, i64 8, !113, i64 12, !111, i64 16}
!416 = !{!415, !110, i64 0}
!417 = !{!418, !113, i64 92}
!418 = !{!"xpvcv", !110, i64 0, !111, i64 8, !120, i64 16, !111, i64 24, !110, i64 32, !111, i64 40, !111, i64 48, !111, i64 56, !110, i64 64, !111, i64 72, !110, i64 80, !113, i64 88, !113, i64 92, !113, i64 96}
!419 = !{!"function_entry_count", i64 63}
