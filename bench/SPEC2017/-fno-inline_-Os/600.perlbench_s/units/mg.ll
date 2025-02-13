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
%struct.he = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.6, %union.anon.7, ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.8, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.8 = type { i64 }
%struct.regexp_paren_pair = type { i64, i64, i64 }
%struct.p5rx = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, ptr, %union.anon.12, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, %union._xnvu }
%union.anon.14 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.ufuncs = type { ptr, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.av = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.15 }
%union.anon.15 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu }
%union.anon.16 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.cv = type { ptr, i32, i32, %union.anon.19 }
%union.anon.19 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.20, ptr, %union.anon.21, %union.anon.22, %union.anon.23, ptr, %union.anon.24, ptr, i32, i32, i32 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { ptr }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }

@PL_localizing = external local_unnamed_addr global i8, align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
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
@.str.22 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Wide character in %s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_psig_ptr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@PL_signals = external local_unnamed_addr global i32, align 4
@PL_sighandlerp = external local_unnamed_addr global ptr, align 8
@PL_psig_pend = external local_unnamed_addr global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [48 x i8] c"Maximal count of pending signals (%lu) exceeded\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"__DIE__\00", align 1
@PL_diehook = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"__WARN__\00", align 1
@PL_warnhook = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [17 x i8] c"No such hook: %s\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"No such signal: SIG%s\00", align 1
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_psig_name = external local_unnamed_addr global ptr, align 8
@PL_csighandlerp = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
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
@.str.34 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"FETCHSIZE\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"FETCHSIZE returned a negative value\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"NEXTKEY\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"FIRSTKEY\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.44 = private unnamed_addr constant [41 x i8] c"panic: magic_setdbline len=%ld, ptr='%s'\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"Attempt to set length of freed array\00", align 1
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"substr outside of string\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"Attempt to use reference as lvalue in substr\00", align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_no_helem_sv = external constant [0 x i8], align 1
@PL_no_aelem = external constant [0 x i8], align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"Assigned value is not a reference\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" SCALAR\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"n ARRAY\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" HASH\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" CODE\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"Assigned value is not a%s reference\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [11 x i8] c"encoding::\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"Setting ${^ENCODING} is deprecated\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"assigning to $^O\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@PL_DBsingle = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [84 x i8] c"Setting $/ to a reference to %s as a form of slurp is deprecated, treating as undef\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"a negative integer\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [44 x i8] c"Setting $/ to a%s %s reference is forbidden\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"Assigning non-zero to $[ is no longer possible\00", align 1
@PL_delaymagic_uid = external local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [26 x i8] c"setruid() not implemented\00", align 1
@PL_delaymagic_euid = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [26 x i8] c"seteuid() not implemented\00", align 1
@PL_delaymagic_gid = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [26 x i8] c"setrgid() not implemented\00", align 1
@PL_delaymagic_egid = external local_unnamed_addr global i32, align 4
@.str.67 = private unnamed_addr constant [26 x i8] c"setegid() not implemented\00", align 1
@PL_chopset = external local_unnamed_addr global ptr, align 8
@PL_origalen = external local_unnamed_addr global i32, align 4
@PL_origargv = external local_unnamed_addr global ptr, align 8
@PL_origargc = external local_unnamed_addr global i32, align 4
@PL_sig_name = external constant [0 x ptr], align 8
@PL_sig_num = external local_unnamed_addr constant [0 x i32], align 4
@.str.68 = private unnamed_addr constant [5 x i8] c"CHLD\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"CLD\00", align 1
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_Xpv = external local_unnamed_addr global ptr, align 8
@.str.70 = private unnamed_addr constant [51 x i8] c"Signal SIG%s received, but no signal handler set.\0A\00", align 1
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@.str.71 = private unnamed_addr constant [34 x i8] c"SIG%s handler \22%2p\22 not defined.\0A\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"SIG%s handler \22__ANON__\22 not defined.\0A\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@PL_DBcontrol = external local_unnamed_addr global [3 x i64], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_mg_magical(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !146 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = and i32 %3, -14680065
  store i32 %4, ptr %2, align 4, !tbaa !147
  %5 = load ptr, ptr %0, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.xpvmg, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9, !prof !155

9:                                                ; preds = %1, %39
  %10 = phi i32 [ %40, %39 ], [ %4, %1 ]
  %11 = phi ptr [ %41, %39 ], [ %7, %1 ]
  %12 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15, !prof !160

15:                                               ; preds = %9
  %16 = load ptr, ptr %13, align 8, !tbaa !161
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18, !prof !163

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 4
  %20 = load i8, ptr %19, align 1, !tbaa !164
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !165

23:                                               ; preds = %18
  %24 = or i32 %10, 2097152
  store i32 %24, ptr %2, align 4, !tbaa !147
  br label %25

25:                                               ; preds = %23, %18, %15
  %26 = phi i32 [ %24, %23 ], [ %10, %18 ], [ %10, %15 ]
  %27 = getelementptr inbounds %struct.mgvtbl, ptr %13, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !167

30:                                               ; preds = %25
  %31 = or i32 %26, 4194304
  store i32 %31, ptr %2, align 4, !tbaa !147
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i32 [ %31, %30 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.mgvtbl, ptr %13, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !169

37:                                               ; preds = %32
  %38 = or i32 %33, 8388608
  store i32 %38, ptr %2, align 4, !tbaa !147
  br label %39

39:                                               ; preds = %32, %37, %9
  %40 = phi i32 [ %33, %32 ], [ %38, %37 ], [ %10, %9 ]
  %41 = load ptr, ptr %11, align 8, !tbaa !170
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9, !prof !171, !llvm.loop !172

43:                                               ; preds = %39
  %44 = and i32 %40, 6291456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48, !prof !174

46:                                               ; preds = %43
  %47 = or i32 %40, 8388608
  store i32 %47, ptr %2, align 4, !tbaa !147
  br label %48

48:                                               ; preds = %43, %46, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_mg_get(ptr noundef %0) local_unnamed_addr #2 !prof !175 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #26
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %19, !prof !176

5:                                                ; preds = %1
  %6 = load ptr, ptr @PL_defgv, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16, !prof !178

11:                                               ; preds = %5
  %12 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %6, i32 noundef 0) #26
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %15, %11 ], [ %9, %5 ]
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %116, label %19, !prof !178

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.xpvmg, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !154
  %23 = icmp eq ptr %22, null
  br i1 %23, label %116, label %24, !prof !179

24:                                               ; preds = %19
  %25 = sext i32 %2 to i64
  br label %26

26:                                               ; preds = %24, %102
  %27 = phi i8 [ 0, %24 ], [ %83, %102 ]
  %28 = phi ptr [ %22, %24 ], [ %107, %102 ]
  %29 = phi ptr [ %22, %24 ], [ %106, %102 ]
  %30 = phi ptr [ %22, %24 ], [ %105, %102 ]
  %31 = phi ptr [ %22, %24 ], [ %104, %102 ]
  %32 = phi i8 [ 0, %24 ], [ %103, %102 ]
  %33 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !156
  %35 = load ptr, ptr %28, align 8, !tbaa !170
  %36 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 4
  %37 = load i8, ptr %36, align 1, !tbaa !164
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  %40 = icmp ne ptr %34, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %78, !prof !180

42:                                               ; preds = %26
  %43 = load ptr, ptr %34, align 8, !tbaa !161
  %44 = icmp eq ptr %43, null
  br i1 %44, label %78, label %45, !prof !181

45:                                               ; preds = %42
  %46 = and i8 %27, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !prof !182

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.magic, ptr %28, i64 0, i32 3
  %50 = load i8, ptr %49, align 2, !tbaa !183
  %51 = icmp eq i8 %50, 116
  br i1 %51, label %54, label %52, !prof !181

52:                                               ; preds = %48
  tail call fastcc void @S_save_magic_flags(i32 noundef %2, ptr noundef nonnull %0, i32 noundef 14680064) #27
  %53 = load ptr, ptr %34, align 8, !tbaa !161
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = phi ptr [ %43, %45 ], [ %53, %52 ], [ %43, %48 ]
  %56 = phi i8 [ %27, %45 ], [ 1, %52 ], [ %27, %48 ]
  %57 = tail call i32 %55(ptr noundef nonnull %0, ptr noundef nonnull %28) #26
  %58 = load ptr, ptr %0, align 8, !tbaa !153
  %59 = getelementptr inbounds %struct.xpvmg, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !154
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68, !prof !181

62:                                               ; preds = %54
  %63 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %64 = getelementptr inbounds i8, ptr %63, i64 %25
  %65 = getelementptr inbounds %struct.magic_state, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !184
  %67 = and i32 %66, -14680065
  store i32 %67, ptr %65, align 4, !tbaa !184
  br label %109

68:                                               ; preds = %54
  %69 = load i8, ptr %36, align 1, !tbaa !164
  %70 = and i8 %69, 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %82, label %72, !prof !187

72:                                               ; preds = %68
  %73 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %74 = getelementptr inbounds i8, ptr %73, i64 %25
  %75 = getelementptr inbounds %struct.magic_state, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !184
  %77 = and i32 %76, -14680065
  store i32 %77, ptr %75, align 4, !tbaa !184
  br label %82

78:                                               ; preds = %42, %26
  %79 = icmp eq ptr %34, getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 28)
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = tail call i32 @Perl_magic_setutf8(ptr nonnull poison, ptr noundef nonnull %28) #27
  br label %82

82:                                               ; preds = %78, %80, %68, %72
  %83 = phi i8 [ %56, %72 ], [ %56, %68 ], [ %27, %80 ], [ %27, %78 ]
  %84 = and i8 %32, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86, !prof !182

86:                                               ; preds = %82
  %87 = icmp eq ptr %35, %30
  br i1 %87, label %88, label %102

88:                                               ; preds = %82, %86
  %89 = phi ptr [ %29, %86 ], [ %35, %82 ]
  %90 = phi ptr [ %31, %86 ], [ %30, %82 ]
  %91 = phi i8 [ 0, %86 ], [ %32, %82 ]
  %92 = load ptr, ptr %0, align 8, !tbaa !153
  %93 = getelementptr inbounds %struct.xpvmg, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !154
  %95 = icmp eq ptr %94, %90
  br i1 %95, label %102, label %96, !prof !182

96:                                               ; preds = %88
  %97 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %98 = getelementptr inbounds i8, ptr %97, i64 %25
  %99 = getelementptr inbounds %struct.magic_state, ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !184
  %101 = and i32 %100, -14680065
  store i32 %101, ptr %99, align 4, !tbaa !184
  br label %102

102:                                              ; preds = %86, %88, %96
  %103 = phi i8 [ 1, %96 ], [ %91, %88 ], [ %32, %86 ]
  %104 = phi ptr [ %94, %96 ], [ %90, %88 ], [ %31, %86 ]
  %105 = phi ptr [ %90, %96 ], [ %90, %88 ], [ %30, %86 ]
  %106 = phi ptr [ %89, %96 ], [ %29, %88 ], [ %29, %86 ]
  %107 = phi ptr [ %94, %96 ], [ %89, %88 ], [ %35, %86 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %26, !prof !188

109:                                              ; preds = %102, %62
  %110 = phi i8 [ %56, %62 ], [ %83, %102 ]
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113, !prof !189

113:                                              ; preds = %109
  %114 = sext i32 %2 to i64
  %115 = inttoptr i64 %114 to ptr
  tail call void @S_restore_magic(ptr noundef %115) #27
  br label %116

116:                                              ; preds = %19, %109, %113, %16
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_save_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_save_magic_flags(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !190 !PGOFuncName !191 {
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !192
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9, !prof !193

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  store i32 %8, ptr %4, align 8, !tbaa !192
  br label %9

9:                                                ; preds = %7, %3
  %10 = sext i32 %0 to i64
  %11 = inttoptr i64 %10 to ptr
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_restore_magic, ptr noundef %11) #26
  %12 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %13 = getelementptr inbounds i8, ptr %12, i64 %10
  store ptr %1, ptr %13, align 8, !tbaa !194
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = and i32 %15, 148963328
  %17 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !184
  %18 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !195
  %19 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.magic_state, ptr %13, i64 0, i32 3
  %21 = zext i1 %6 to i8
  store i8 %21, ptr %20, align 8, !tbaa !197
  %22 = and i32 %2, -134283265
  %23 = xor i32 %22, -134283265
  %24 = and i32 %23, %15
  store i32 %24, ptr %14, align 4, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setutf8(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  tail call void @Perl_safesysfree(ptr noundef %4) #26
  store ptr null, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  store i64 -1, ptr %5, align 8, !tbaa !200
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @S_restore_magic(ptr noundef %0) #2 !prof !201 !PGOFuncName !202 {
  %2 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %3 = ptrtoint ptr %0 to i64
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7, !prof !203

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !147
  %10 = and i32 %9, 255
  %11 = icmp ugt i32 %10, 6
  br i1 %11, label %12, label %25, !prof !193

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !153
  %14 = getelementptr inbounds %struct.xpvmg, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !204

17:                                               ; preds = %12
  %18 = and i32 %9, -524289
  store i32 %18, ptr %8, align 4, !tbaa !147
  %19 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !184
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !205

22:                                               ; preds = %17
  %23 = or i32 %20, %18
  store i32 %23, ptr %8, align 4, !tbaa !147
  br label %25

24:                                               ; preds = %17
  tail call void @Perl_mg_magical(ptr noundef nonnull %5) #27
  br label %25

25:                                               ; preds = %22, %24, %12, %7
  %26 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !197, !range !206, !noundef !207
  %28 = icmp eq i8 %27, 0
  store ptr null, ptr %4, align 8, !tbaa !194
  %29 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !195
  %30 = getelementptr inbounds %struct.magic_state, ptr %4, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !196
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %42, !prof !208

33:                                               ; preds = %25
  %34 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %35 = add nsw i32 %29, -4
  store i32 %35, ptr @PL_savestack_ix, align 4, !tbaa !195
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %union.any, ptr %34, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !154
  %39 = lshr i64 %38, 6
  %40 = trunc i64 %39 to i32
  %41 = sub i32 %35, %40
  store i32 %41, ptr @PL_savestack_ix, align 4, !tbaa !195
  br label %42

42:                                               ; preds = %33, %25
  br i1 %28, label %52, label %43, !prof !209

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !192
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51, !prof !209

47:                                               ; preds = %43
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %5) #26
  %49 = load i32, ptr %8, align 4, !tbaa !147
  %50 = and i32 %49, -524289
  store i32 %50, ptr %8, align 4, !tbaa !147
  br label %52

51:                                               ; preds = %43
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %5) #27
  br label %52

52:                                               ; preds = %42, %51, %47, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_save_destructor_x(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #2 !prof !190 !PGOFuncName !210 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !192
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !209

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !192
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #26
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_mg_set(ptr noundef %0) local_unnamed_addr #2 !prof !211 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #26
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %5, label %19, !prof !212

5:                                                ; preds = %1
  %6 = load ptr, ptr @PL_defgv, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16, !prof !178

11:                                               ; preds = %5
  %12 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %6, i32 noundef 0) #26
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %15, %11 ], [ %9, %5 ]
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %65, label %19, !prof !178

19:                                               ; preds = %16, %1
  tail call fastcc void @S_save_magic_flags(i32 noundef %2, ptr noundef %0, i32 noundef 6291456) #27
  %20 = load ptr, ptr %0, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.xpvmg, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !154
  %23 = icmp eq ptr %22, null
  %24 = sext i32 %2 to i64
  br i1 %23, label %63, label %25, !prof !213

25:                                               ; preds = %19, %61
  %26 = phi ptr [ %29, %61 ], [ %22, %19 ]
  %27 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = load ptr, ptr %26, align 8, !tbaa !170
  %30 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 4
  %31 = load i8, ptr %30, align 1, !tbaa !164
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34, !prof !214

34:                                               ; preds = %25
  %35 = and i8 %31, -5
  store i8 %35, ptr %30, align 1, !tbaa !164
  %36 = load ptr, ptr @PL_savestack, align 8, !tbaa !177
  %37 = getelementptr inbounds i8, ptr %36, i64 %24
  %38 = getelementptr inbounds %struct.magic_state, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !184
  %40 = and i32 %39, -14680065
  store i32 %40, ptr %38, align 4, !tbaa !184
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %44, label %53, !prof !212

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 3
  %46 = load i8, ptr %45, align 2, !tbaa !183
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], ptr @PL_magic_data, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !154
  %50 = icmp slt i8 %49, 0
  %51 = icmp eq ptr %28, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %61, label %55, !prof !215

53:                                               ; preds = %41
  %54 = icmp eq ptr %28, null
  br i1 %54, label %61, label %55, !prof !216

55:                                               ; preds = %44, %53
  %56 = getelementptr inbounds %struct.mgvtbl, ptr %28, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !166
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !216

59:                                               ; preds = %55
  %60 = tail call i32 %57(ptr noundef nonnull %0, ptr noundef nonnull %26) #26
  br label %61

61:                                               ; preds = %53, %55, %59, %44
  %62 = icmp eq ptr %29, null
  br i1 %62, label %63, label %25, !prof !217, !llvm.loop !218

63:                                               ; preds = %61, %19
  %64 = inttoptr i64 %24 to ptr
  tail call void @S_restore_magic(ptr noundef %64) #27
  br label %65

65:                                               ; preds = %16, %63
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_mg_length(ptr noundef %0) local_unnamed_addr #2 !prof !198 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvmg, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1, %24
  %8 = phi ptr [ %25, %24 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mgvtbl, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mgvtbl, ptr %10, i64 0, i32 2
  %18 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #26
  tail call fastcc void @S_save_magic_flags(i32 noundef %18, ptr noundef nonnull %0, i32 noundef 14680064) #27
  %19 = load ptr, ptr %17, align 8, !tbaa !219
  %20 = tail call i32 %19(ptr noundef nonnull %0, ptr noundef nonnull %8) #26
  %21 = zext i32 %20 to i64
  %22 = sext i32 %18 to i64
  %23 = inttoptr i64 %22 to ptr
  tail call void @S_restore_magic(ptr noundef %23) #27
  br label %38

24:                                               ; preds = %7, %12
  %25 = load ptr, ptr %8, align 8, !tbaa !154
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !220

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !147
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 1024
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !221
  br label %38

35:                                               ; preds = %27
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #26
  %37 = load i64, ptr %2, align 8, !tbaa !223
  br label %38

38:                                               ; preds = %32, %35, %16
  %39 = phi i64 [ %34, %32 ], [ %37, %35 ], [ %21, %16 ]
  %40 = trunc i64 %39 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret i32 %40
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_mg_size(ptr noundef %0) local_unnamed_addr #2 !prof !224 {
  %2 = load ptr, ptr %0, align 8, !tbaa !177
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6, !prof !225

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11, !prof !226

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mgvtbl, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !227

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mgvtbl, ptr %9, i64 0, i32 2
  %17 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #26
  tail call fastcc void @S_save_magic_flags(i32 noundef %17, ptr noundef nonnull %0, i32 noundef 14680064) #27
  %18 = load ptr, ptr %16, align 8, !tbaa !219
  %19 = tail call i32 %18(ptr noundef nonnull %0, ptr noundef nonnull %7) #26
  %20 = sext i32 %17 to i64
  %21 = inttoptr i64 %20 to ptr
  tail call void @S_restore_magic(ptr noundef %21) #27
  br label %35

22:                                               ; preds = %6, %11
  %23 = load ptr, ptr %7, align 8, !tbaa !154
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !prof !228, !llvm.loop !229

25:                                               ; preds = %22, %1
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !147
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 11
  br i1 %29, label %30, label %34, !prof !230

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.xpvav, ptr %2, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !231
  %33 = trunc i64 %32 to i32
  br label %35

34:                                               ; preds = %25
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str) #26
  br label %35

35:                                               ; preds = %15, %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ], [ %19, %15 ]
  ret i32 %36
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_mg_clear(ptr noundef %0) local_unnamed_addr #2 !prof !233 {
  %2 = tail call i32 @Perl_save_alloc(i32 noundef 24, i32 noundef 0) #26
  tail call fastcc void @S_save_magic_flags(i32 noundef %2, ptr noundef %0, i32 noundef 14680064) #27
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvmg, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !234

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %11, %19 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = load ptr, ptr %8, align 8, !tbaa !170
  %12 = icmp eq ptr %10, null
  br i1 %12, label %19, label %13, !prof !235

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mgvtbl, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !235

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef nonnull %0, ptr noundef nonnull %8) #26
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = icmp eq ptr %11, null
  br i1 %20, label %21, label %7, !prof !236, !llvm.loop !237

21:                                               ; preds = %19, %1
  %22 = sext i32 %2 to i64
  %23 = inttoptr i64 %22 to ptr
  tail call void @S_restore_magic(ptr noundef %23) #27
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_mg_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !238 {
  %3 = tail call fastcc ptr @S_mg_findext_flags(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0) #27
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @S_mg_findext_flags(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #4 !prof !239 !PGOFuncName !240 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %26, label %6, !prof !241

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.xpvmg, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !prof !242

11:                                               ; preds = %6, %23
  %12 = phi ptr [ %24, %23 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !183
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %23, !prof !243

17:                                               ; preds = %11
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %26, label %19, !prof !244

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %26, label %23

23:                                               ; preds = %11, %19
  %24 = load ptr, ptr %12, align 8, !tbaa !154
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !prof !245, !llvm.loop !246

26:                                               ; preds = %23, %17, %19, %6, %4
  %27 = phi ptr [ null, %4 ], [ null, %6 ], [ null, %23 ], [ %12, %17 ], [ %12, %19 ]
  ret ptr %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_mg_findext(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 !prof !198 {
  %4 = tail call fastcc ptr @S_mg_findext_flags(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1) #27
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_mg_find_mglob(ptr noundef %0) local_unnamed_addr #2 !prof !247 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %18, !prof !248

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.xpvlv, ptr %7, i64 0, i32 9
  %9 = load i8, ptr %8, align 8, !tbaa !249
  %10 = icmp eq i8 %9, 121
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %0) #27
  %12 = load ptr, ptr %0, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.xpvlv, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !251
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !147
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i32 [ %17, %11 ], [ %4, %1 ]
  %20 = phi ptr [ %14, %11 ], [ %0, %1 ]
  %21 = icmp ugt i32 %19, 6
  br i1 %21, label %22, label %30, !prof !252

22:                                               ; preds = %6, %18
  %23 = phi ptr [ %20, %18 ], [ %0, %6 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  %25 = getelementptr inbounds %struct.xpvmg, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !154
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !253

28:                                               ; preds = %22
  %29 = tail call fastcc ptr @S_mg_findext_flags(ptr noundef nonnull %23, i32 noundef 103, ptr noundef null, i32 noundef 0) #27
  br label %30

30:                                               ; preds = %18, %22, %28
  %31 = phi ptr [ %29, %28 ], [ null, %22 ], [ null, %18 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_vivify_defelem(ptr noundef %0) local_unnamed_addr #2 !prof !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !153
  %3 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !254
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 121) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !251
  %16 = tail call ptr @Perl_hv_common(ptr noundef %15, ptr noundef nonnull %11, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 8, !tbaa !255
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %19) #26
  br label %76

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.he, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !154
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %22, @PL_sv_undef
  %25 = or i1 %23, %24
  br i1 %25, label %69, label %71

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !154
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_aelem, i64 noundef %28) #26
  br label %76

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.xpvlv, ptr %2, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !251
  %34 = and i64 %4, 2147483648
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !147
  %39 = and i32 %38, 8388608
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @Perl_mg_size(ptr noundef nonnull %33) #27
  %43 = sext i32 %42 to i64
  %44 = load ptr, ptr %0, align 8, !tbaa !153
  br label %49

45:                                               ; preds = %36
  %46 = load ptr, ptr %33, align 8, !tbaa !256
  %47 = getelementptr inbounds %struct.xpvav, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !231
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %44, %41 ], [ %2, %45 ]
  %51 = phi i64 [ %43, %41 ], [ %48, %45 ]
  %52 = icmp sgt i64 %28, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.xpvlv, ptr %50, i64 0, i32 6
  %55 = load i64, ptr %54, align 8, !tbaa !154
  br label %58

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.xpvlv, ptr %50, i64 0, i32 8
  store ptr null, ptr %57, align 8, !tbaa !251
  br label %76

58:                                               ; preds = %53, %31
  %59 = phi i64 [ %55, %53 ], [ %28, %31 ]
  %60 = tail call ptr @Perl_av_fetch(ptr noundef %33, i64 noundef %59, i32 noundef 1) #26
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 8, !tbaa !177
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %58
  %66 = load ptr, ptr %0, align 8, !tbaa !153
  %67 = getelementptr inbounds %struct.xpvlv, ptr %66, i64 0, i32 6
  %68 = load i64, ptr %67, align 8, !tbaa !154
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_aelem, i64 noundef %68) #26
  br label %76

69:                                               ; preds = %20
  %70 = load ptr, ptr %10, align 8, !tbaa !255
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %70) #26
  br i1 %23, label %76, label %71

71:                                               ; preds = %62, %20, %69
  %72 = phi ptr [ %22, %69 ], [ %63, %62 ], [ %22, %20 ]
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !192
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8, !tbaa !192
  br label %76

76:                                               ; preds = %65, %56, %30, %18, %71, %69
  %77 = phi ptr [ %72, %71 ], [ null, %69 ], [ null, %18 ], [ null, %30 ], [ null, %56 ], [ null, %65 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !153
  %79 = getelementptr inbounds %struct.xpvlv, ptr %78, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !251
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %80) #27
  %81 = load ptr, ptr %0, align 8, !tbaa !153
  %82 = getelementptr inbounds %struct.xpvlv, ptr %81, i64 0, i32 8
  store ptr %77, ptr %82, align 8, !tbaa !251
  %83 = getelementptr inbounds %struct.xpvlv, ptr %81, i64 0, i32 7
  store i64 0, ptr %83, align 8, !tbaa !254
  %84 = load ptr, ptr %10, align 8, !tbaa !255
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %84) #27
  store ptr null, ptr %10, align 8, !tbaa !255
  %85 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 4
  %86 = load i8, ptr %85, align 1, !tbaa !164
  %87 = and i8 %86, -3
  store i8 %87, ptr %85, align 1, !tbaa !164
  br label %88

88:                                               ; preds = %1, %6, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !258 {
  %5 = load ptr, ptr %0, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.xpvmg, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9, !prof !259

9:                                                ; preds = %4, %51
  %10 = phi ptr [ %53, %51 ], [ %7, %4 ]
  %11 = phi i32 [ %52, %51 ], [ 0, %4 ]
  %12 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !164
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16, !prof !260

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds %struct.mgvtbl, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !261
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #26
  %24 = add nsw i32 %23, %11
  br label %51

25:                                               ; preds = %16, %9
  %26 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %27 = load i8, ptr %26, align 2, !tbaa !183
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !195
  %31 = and i32 %30, 16400
  %32 = icmp eq i32 %31, 16400
  %33 = icmp ne i8 %27, 85
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %51, !prof !262

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !255
  switch i8 %27, label %46 [
    i8 80, label %38
    i8 68, label %43
  ], !prof !263

38:                                               ; preds = %35
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %46, !prof !264

40:                                               ; preds = %38
  %41 = tail call ptr @Perl_newRV(ptr noundef nonnull %0) #26
  %42 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #26
  br label %46

43:                                               ; preds = %35
  %44 = icmp eq ptr %37, null
  %45 = select i1 %44, ptr null, ptr %0
  br label %46

46:                                               ; preds = %43, %35, %38, %40
  %47 = phi ptr [ %42, %40 ], [ %37, %38 ], [ %37, %35 ], [ %45, %43 ]
  %48 = add i8 %27, 32
  %49 = zext i8 %48 to i32
  tail call void @Perl_sv_magic(ptr noundef %1, ptr noundef %47, i32 noundef %49, ptr noundef %2, i32 noundef %3) #26
  %50 = add nsw i32 %11, 1
  br label %51

51:                                               ; preds = %25, %46, %22
  %52 = phi i32 [ %24, %22 ], [ %50, %46 ], [ %11, %25 ]
  %53 = load ptr, ptr %10, align 8, !tbaa !154
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %9, !prof !265, !llvm.loop !266

55:                                               ; preds = %51, %4
  %56 = phi i32 [ 0, %4 ], [ %52, %51 ]
  ret i32 %56
}

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mg_localize(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 !prof !267 {
  %4 = load ptr, ptr @PL_defgv, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.gv, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !178

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %4, i32 noundef 0) #26
  %11 = getelementptr inbounds %struct.gv, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %3 ]
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %85, label %17, !prof !178

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !153
  %19 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22, !prof !268

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %22, %61
  %26 = phi ptr [ %20, %22 ], [ %62, %61 ]
  %27 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 3
  %30 = load i8, ptr %29, align 2, !tbaa !183
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], ptr @PL_magic_data, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !154
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %35, label %61, !prof !269

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 4
  %37 = load i8, ptr %36, align 1, !tbaa !164
  %38 = and i8 %37, 32
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40, !prof !269

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mgvtbl, ptr %28, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !270
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef %1, ptr noundef nonnull %26) #26
  br label %56

46:                                               ; preds = %40, %35
  %47 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !255
  %49 = sext i8 %30 to i32
  %50 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !199
  %52 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !200
  %54 = trunc i64 %53 to i32
  %55 = tail call ptr @Perl_sv_magicext(ptr noundef %1, ptr noundef %48, i32 noundef %49, ptr noundef %28, ptr noundef %51, i32 noundef %54) #26
  br label %56

56:                                               ; preds = %46, %44
  %57 = load i32, ptr %23, align 4, !tbaa !147
  %58 = and i32 %57, 134283264
  %59 = load i32, ptr %24, align 4, !tbaa !147
  %60 = or i32 %59, %58
  store i32 %60, ptr %24, align 4, !tbaa !147
  br label %61

61:                                               ; preds = %25, %56
  %62 = load ptr, ptr %26, align 8, !tbaa !154
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %25, !prof !271, !llvm.loop !272

64:                                               ; preds = %61, %17
  %65 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !147
  %67 = and i32 %66, 255
  %68 = icmp ugt i32 %67, 6
  br i1 %68, label %69, label %85, !prof !269

69:                                               ; preds = %64
  %70 = load ptr, ptr %1, align 8, !tbaa !153
  %71 = getelementptr inbounds %struct.xpvmg, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !154
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %74, !prof !178

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !147
  %77 = and i32 %76, 14680064
  %78 = or i32 %77, %66
  store i32 %78, ptr %65, align 4, !tbaa !147
  br i1 %2, label %79, label %85, !prof !269

79:                                               ; preds = %74
  store i8 1, ptr @PL_localizing, align 1, !tbaa !154
  %80 = and i32 %78, 4194304
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !269

82:                                               ; preds = %79
  %83 = tail call i32 @Perl_mg_set(ptr noundef nonnull %1) #27
  br label %84

84:                                               ; preds = %79, %82
  store i8 0, ptr @PL_localizing, align 1, !tbaa !154
  br label %85

85:                                               ; preds = %64, %69, %84, %74, %14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_mg_free(ptr noundef %0) local_unnamed_addr #2 !prof !273 {
  %2 = load ptr, ptr %0, align 8, !tbaa !153
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !274

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  tail call fastcc void @S_mg_free_struct(ptr noundef nonnull %0, ptr noundef nonnull %7) #27
  %9 = load ptr, ptr %0, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.xpvmg, ptr %9, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !154
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %6, !prof !275, !llvm.loop !276

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !153
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %16 = getelementptr inbounds %struct.xpvmg, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !154
  %17 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !147
  %19 = and i32 %18, -14680065
  store i32 %19, ptr %17, align 4, !tbaa !147
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_mg_free_struct(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !277 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !279

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mgvtbl, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !280
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !281

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef nonnull %1) #26
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !282

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %18 = load i8, ptr %17, align 2, !tbaa !183
  %19 = icmp eq i8 %18, 103
  br i1 %19, label %30, label %20, !prof !283

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !200
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %26, label %24, !prof !284

24:                                               ; preds = %20
  %25 = icmp eq i8 %18, 119
  br i1 %25, label %26, label %27, !prof !285

26:                                               ; preds = %24, %20
  tail call void @Perl_safesysfree(ptr noundef nonnull %14) #26
  br label %30

27:                                               ; preds = %24
  %28 = icmp eq i64 %22, -2
  br i1 %28, label %29, label %30, !prof !286

29:                                               ; preds = %27
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %14) #27
  br label %30

30:                                               ; preds = %26, %29, %27, %16, %12
  %31 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %32 = load i8, ptr %31, align 1, !tbaa !164
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35, !prof !287

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !255
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %37) #27
  br label %38

38:                                               ; preds = %35, %30
  tail call void @Perl_safesysfree(ptr noundef nonnull %1) #26
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #2 !prof !288 !PGOFuncName !289 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !290

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !192
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !291

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !192
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #26
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mg_free_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvmg, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %10, %26 ], [ %5, %2 ]
  %9 = phi ptr [ %27, %26 ], [ null, %2 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 3
  %12 = load i8, ptr %11, align 2, !tbaa !183
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = icmp eq ptr %9, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  store ptr %10, ptr %9, align 8, !tbaa !170
  %18 = load ptr, ptr %0, align 8, !tbaa !153
  %19 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  store ptr %20, ptr %8, align 8, !tbaa !170
  store ptr %8, ptr %19, align 8, !tbaa !154
  %21 = load ptr, ptr %8, align 8, !tbaa !170
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi ptr [ %21, %17 ], [ %10, %15 ]
  tail call fastcc void @S_mg_free_struct(ptr noundef nonnull %0, ptr noundef nonnull %8) #27
  %24 = load ptr, ptr %0, align 8, !tbaa !153
  %25 = getelementptr inbounds %struct.xpvmg, ptr %24, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !154
  br label %26

26:                                               ; preds = %22, %7
  %27 = phi ptr [ %9, %22 ], [ %8, %7 ]
  %28 = icmp eq ptr %10, null
  br i1 %28, label %29, label %7, !llvm.loop !292

29:                                               ; preds = %26, %2
  tail call void @Perl_mg_magical(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_magic_regdata_cnt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !198 {
  %3 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = icmp eq ptr %11, null
  %13 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %7) #27
  br i1 %12, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.regexp, ptr %13, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !295
  br label %39

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.regexp, ptr %13, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !297
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.regexp, ptr %13, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !298
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %34
  %26 = phi i64 [ %24, %21 ], [ %35, %34 ]
  %27 = getelementptr inbounds %struct.regexp_paren_pair, ptr %23, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !299
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.regexp_paren_pair, ptr %23, i64 %26, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !301
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %30
  %35 = add nsw i64 %26, -1
  %36 = icmp sgt i64 %26, 0
  br i1 %36, label %25, label %39, !llvm.loop !302

37:                                               ; preds = %30
  %38 = trunc i64 %26 to i32
  br label %39

39:                                               ; preds = %34, %37, %2, %5, %17, %14
  %40 = phi i32 [ %16, %14 ], [ %19, %17 ], [ -1, %5 ], [ -1, %2 ], [ %38, %37 ], [ -1, %34 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !303 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_regdatum_get(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !200
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %7) #27
  %16 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !295
  %18 = icmp slt i32 %17, %12
  br i1 %18, label %55, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !298
  %22 = and i64 %11, 4294967295
  %23 = getelementptr inbounds %struct.regexp_paren_pair, ptr %21, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !299
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %55, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.regexp_paren_pair, ptr %21, i64 %22, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !301
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !255
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, i64 %24, i64 %28
  %35 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !305
  %37 = and i32 %36, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !306
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 22
  %45 = load i64, ptr %44, align 8, !tbaa !307
  %46 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 21
  %47 = load i64, ptr %46, align 8, !tbaa !308
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, ptr %41, i64 %48
  %50 = getelementptr inbounds i8, ptr %49, i64 %34
  %51 = tail call i64 @Perl_utf8_length(ptr noundef nonnull %41, ptr noundef nonnull %50) #26
  %52 = add i64 %51, %45
  br label %53

53:                                               ; preds = %39, %43, %30
  %54 = phi i64 [ %34, %30 ], [ %52, %43 ], [ %34, %39 ]
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %54) #26
  br label %56

55:                                               ; preds = %5, %14, %19, %26, %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #26
  br label %56

56:                                               ; preds = %9, %53, %55
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_regdatum_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  tail call void @Perl_croak_no_modify() #26
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_emulate_cop_io(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !309
  %5 = and i32 %4, 786432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %1, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %27

8:                                                ; preds = %2
  tail call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef 0) #26
  %9 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !147
  %11 = and i32 %10, -536870913
  store i32 %11, ptr %9, align 4, !tbaa !147
  %12 = load i32, ptr %3, align 8, !tbaa !309
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !311
  %18 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %17, ptr noundef nonnull @.str.2, i64 noundef 5, i32 noundef 0, i32 noundef 0) #26
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %1, ptr noundef %18, i32 noundef 2) #26
  br label %19

19:                                               ; preds = %15, %8
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 2) #26
  %20 = load i32, ptr %3, align 8, !tbaa !309
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !311
  %26 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %25, ptr noundef nonnull @.str.4, i64 noundef 5, i32 noundef 0, i32 noundef 0) #26
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %1, ptr noundef %26, i32 noundef 2) #26
  br label %27

27:                                               ; preds = %19, %23, %7
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl__get_encoding() local_unnamed_addr #2 !prof !198 {
  %1 = load ptr, ptr @PL_encoding, align 8, !tbaa !177
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !177
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %8 = getelementptr inbounds %struct.cop, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !311
  %10 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %9, ptr noundef nonnull @.str.5, i64 noundef 8, i32 noundef 0, i32 noundef 0) #26
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %10, @PL_sv_placeholder
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !147
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = and i32 %16, 2097408
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8, !tbaa !153
  %24 = getelementptr inbounds %struct.xpviv, ptr %23, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !154
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #26
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %22
  %31 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !177
  br label %32

32:                                               ; preds = %6, %14, %22, %27, %3, %0, %30
  %33 = phi ptr [ %31, %30 ], [ %1, %0 ], [ null, %3 ], [ null, %27 ], [ null, %22 ], [ null, %14 ], [ null, %6 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_get(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !312 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %26, !prof !313

7:                                                ; preds = %2
  %8 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10, !prof !314

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !200
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.pmop, ptr %8, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !315

17:                                               ; preds = %339, %326, %10
  %18 = phi ptr [ %337, %339 ], [ %324, %326 ], [ %15, %10 ]
  %19 = phi i32 [ %342, %339 ], [ %329, %326 ], [ %13, %10 ]
  %20 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %18) #27
  %21 = getelementptr inbounds %struct.regexp, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !316
  %23 = getelementptr inbounds %struct.regexp_engine, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !317
  tail call void %24(ptr noundef nonnull %18, i32 noundef %19, ptr noundef %0) #26
  br label %544

25:                                               ; preds = %10, %7
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %544

26:                                               ; preds = %2
  %27 = load i8, ptr %5, align 1, !tbaa !154
  %28 = load i8, ptr %4, align 1, !tbaa !154
  switch i8 %28, label %544 [
    i8 1, label %29
    i8 3, label %55
    i8 4, label %66
    i8 5, label %70
    i8 33, label %81
    i8 6, label %133
    i8 7, label %136
    i8 8, label %145
    i8 9, label %148
    i8 12, label %150
    i8 15, label %220
    i8 16, label %231
    i8 19, label %234
    i8 20, label %256
    i8 21, label %275
    i8 23, label %293
    i8 43, label %319
    i8 14, label %332
    i8 46, label %345
    i8 63, label %366
    i8 94, label %369
    i8 126, label %391
    i8 61, label %414
    i8 45, label %435
    i8 37, label %456
    i8 41, label %541
    i8 40, label %538
    i8 91, label %477
    i8 124, label %478
    i8 92, label %502
    i8 36, label %507
    i8 60, label %532
    i8 62, label %535
  ], !prof !319

29:                                               ; preds = %26
  %30 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !177
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !147
  %33 = and i32 %32, 65280
  %34 = icmp ne i32 %33, 0
  %35 = and i32 %32, 255
  %36 = icmp eq i32 %35, 8
  %37 = or i1 %34, %36
  %38 = and i32 %32, 16777471
  %39 = icmp eq i32 %38, 16777226
  %40 = or i1 %39, %37
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 2) #26
  br label %43

42:                                               ; preds = %29
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %43

43:                                               ; preds = %42, %41
  %44 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !177
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !147
  %47 = and i32 %46, 14680064
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %544, label %49

49:                                               ; preds = %43
  %50 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %44) #26
  %51 = load i8, ptr @PL_tainting, align 1, !range !206
  %52 = icmp ne i8 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %544

54:                                               ; preds = %49
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #26
  br label %544

55:                                               ; preds = %26
  %56 = icmp eq i8 %27, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8, ptr @PL_minus_c, align 1, !tbaa !320, !range !206, !noundef !207
  %59 = zext nneg i8 %58 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %59) #26
  br label %544

60:                                               ; preds = %55
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(18) @.str.6) #29
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %544

63:                                               ; preds = %60
  %64 = load i32, ptr @PL_statusvalue_posix, align 4, !tbaa !195
  %65 = sext i32 %64 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %65) #26
  br label %544

66:                                               ; preds = %26
  %67 = load volatile i32, ptr @PL_debug, align 4, !tbaa !195
  %68 = and i32 %67, 134213631
  %69 = zext nneg i32 %68 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %69) #26
  br label %544

70:                                               ; preds = %26
  %71 = icmp eq i8 %27, 0
  br i1 %71, label %81, label %72, !prof !227

72:                                               ; preds = %70
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.7) #29
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call ptr @Perl__get_encoding() #27
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %76, i32 noundef 1538) #26
  br label %544

77:                                               ; preds = %72
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.8) #29
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %544

80:                                               ; preds = %77
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #26
  br label %544

81:                                               ; preds = %70, %26
  %82 = tail call ptr @__errno_location() #30
  %83 = load i32, ptr %82, align 4, !tbaa !195
  %84 = sitofp i32 %83 to double
  tail call void @Perl_sv_setnv(ptr noundef %0, double noundef %84) #26
  %85 = load i32, ptr %82, align 4, !tbaa !195
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88, !prof !230

87:                                               ; preds = %81
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 0) #26
  br label %101

88:                                               ; preds = %81
  %89 = tail call ptr @Perl_my_strerror(i32 noundef %85) #26
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %89) #26
  %90 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !147
  %92 = and i32 %91, 65280
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 255
  %95 = icmp eq i32 %94, 8
  %96 = or i1 %93, %95
  %97 = and i32 %91, 16777471
  %98 = icmp eq i32 %97, 16777226
  %99 = or i1 %98, %96
  br i1 %99, label %100, label %101, !prof !321

100:                                              ; preds = %88
  tail call fastcc void @S_fixup_errno_string(ptr noundef nonnull %0) #27
  br label %101

101:                                              ; preds = %88, %100, %87
  store i32 %83, ptr %82, align 4, !tbaa !195
  %102 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !147
  %104 = and i32 %103, 1024
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %130, label %106, !prof !322

106:                                              ; preds = %101
  %107 = load ptr, ptr %0, align 8, !tbaa !153
  %108 = getelementptr inbounds %struct.xpv, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !221
  %110 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !154
  %112 = getelementptr i8, ptr %111, i64 -1
  %113 = icmp eq i64 %109, 0
  br i1 %113, label %126, label %114, !prof !225

114:                                              ; preds = %106, %123
  %115 = phi i64 [ %124, %123 ], [ %109, %106 ]
  %116 = getelementptr i8, ptr %112, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !154
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !195
  %121 = and i32 %120, 17408
  %122 = icmp eq i32 %121, 17408
  br i1 %122, label %123, label %126, !prof !322

123:                                              ; preds = %114
  %124 = add i64 %115, -1
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %114, !prof !228, !llvm.loop !323

126:                                              ; preds = %123, %114, %106
  %127 = phi i64 [ 0, %106 ], [ %115, %114 ], [ 0, %123 ]
  store i64 %127, ptr %108, align 8, !tbaa !221
  %128 = getelementptr inbounds i8, ptr %111, i64 %127
  store i8 0, ptr %128, align 1, !tbaa !154
  %129 = load i32, ptr %102, align 4, !tbaa !147
  br label %130

130:                                              ; preds = %126, %101
  %131 = phi i32 [ %129, %126 ], [ %103, %101 ]
  %132 = or i32 %131, 8704
  store i32 %132, ptr %102, align 4, !tbaa !147
  br label %544

133:                                              ; preds = %26
  %134 = load i32, ptr @PL_maxsysfd, align 4, !tbaa !195
  %135 = sext i32 %134 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %135) #26
  br label %544

136:                                              ; preds = %26
  %137 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(12) @.str.9) #29
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %544

139:                                              ; preds = %136
  %140 = load i32, ptr @PL_phase, align 4, !tbaa !195
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x ptr], ptr @PL_phase_names, i64 0, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !177
  %144 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143) #29
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %143, i64 noundef %144) #26
  br label %544

145:                                              ; preds = %26
  %146 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %147 = zext i32 %146 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %147) #26
  br label %544

148:                                              ; preds = %26
  %149 = load ptr, ptr @PL_inplace, align 8, !tbaa !177
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %149) #26
  br label %544

150:                                              ; preds = %26
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.10) #29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %544

153:                                              ; preds = %150
  %154 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !177
  %155 = icmp eq ptr %154, null
  br i1 %155, label %219, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !147
  %159 = and i32 %158, 427886592
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %0, i32 noundef 4) #26
  %162 = load i32, ptr %157, align 4, !tbaa !147
  br label %163

163:                                              ; preds = %156, %161
  %164 = phi i32 [ %158, %156 ], [ %162, %161 ]
  %165 = and i32 %164, 255
  %166 = icmp ugt i32 %165, 2
  %167 = icmp eq i32 %165, 1
  %168 = or i1 %166, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 1) #26
  br label %202

170:                                              ; preds = %163
  br i1 %166, label %171, label %202

171:                                              ; preds = %170
  %172 = load ptr, ptr %0, align 8, !tbaa !153
  %173 = getelementptr inbounds %struct.xpv, ptr %172, i64 0, i32 3
  %174 = load i64, ptr %173, align 8, !tbaa !154
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %171
  %177 = and i32 %164, 33554432
  %178 = icmp eq i32 %177, 0
  %179 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !154
  br i1 %178, label %194, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds i8, ptr %180, i64 -1
  %183 = load i8, ptr %182, align 1, !tbaa !154
  %184 = zext i8 %183 to i64
  %185 = icmp eq i8 %183, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = getelementptr inbounds i8, ptr %180, i64 -9
  %188 = load i64, ptr %187, align 1
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi i64 [ %184, %181 ], [ %188, %186 ]
  %191 = sub i64 0, %190
  %192 = getelementptr inbounds i8, ptr %180, i64 %191
  store ptr %192, ptr %179, align 8, !tbaa !154
  %193 = and i32 %164, -33554433
  store i32 %193, ptr %157, align 4, !tbaa !147
  br label %194

194:                                              ; preds = %176, %189
  %195 = phi ptr [ %192, %189 ], [ %180, %176 ]
  tail call void @Perl_safesysfree(ptr noundef %195) #26
  %196 = load ptr, ptr %0, align 8, !tbaa !153
  br label %197

197:                                              ; preds = %171, %194
  %198 = phi ptr [ %172, %171 ], [ %196, %194 ]
  %199 = getelementptr inbounds %struct.xpv, ptr %198, i64 0, i32 3
  store i64 0, ptr %199, align 8, !tbaa !154
  %200 = load ptr, ptr %0, align 8, !tbaa !153
  %201 = getelementptr inbounds %struct.xpv, ptr %200, i64 0, i32 2
  store i64 0, ptr %201, align 8, !tbaa !221
  br label %202

202:                                              ; preds = %170, %197, %169
  %203 = load i32, ptr %157, align 4, !tbaa !147
  %204 = and i32 %203, 1610547455
  store i32 %204, ptr %157, align 4, !tbaa !147
  %205 = and i32 %203, 33554432
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %0) #26
  %209 = load i32, ptr %157, align 4, !tbaa !147
  br label %210

210:                                              ; preds = %207, %202
  %211 = phi i32 [ %209, %207 ], [ %204, %202 ]
  %212 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !177
  %213 = getelementptr inbounds %struct.gv, ptr %212, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !324
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 8, !tbaa !324
  %216 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  store ptr %212, ptr %216, align 8, !tbaa !154
  %217 = or i32 %211, 2048
  store i32 %217, ptr %157, align 4, !tbaa !147
  %218 = tail call ptr @Perl_sv_rvweaken(ptr noundef nonnull %0) #26
  br label %544

219:                                              ; preds = %153
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1536) #26
  br label %544

220:                                              ; preds = %26
  %221 = icmp eq i8 %27, 0
  br i1 %221, label %222, label %227, !prof !326

222:                                              ; preds = %220
  %223 = load ptr, ptr @PL_osname, align 8, !tbaa !177
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef %223) #26
  %224 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %544, label %226, !prof !326

226:                                              ; preds = %222
  tail call void @Perl_sv_untaint(ptr noundef %0) #26
  br label %544

227:                                              ; preds = %220
  %228 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.11) #29
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %544

230:                                              ; preds = %227
  tail call void @Perl_emulate_cop_io(ptr noundef nonnull @PL_compiling, ptr noundef %0) #27
  br label %544

231:                                              ; preds = %26
  %232 = load i32, ptr @PL_perldb, align 4, !tbaa !195
  %233 = zext i32 %232 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %233) #26
  br label %544

234:                                              ; preds = %26
  %235 = load ptr, ptr @PL_parser, align 8, !tbaa !177
  %236 = icmp eq ptr %235, null
  br i1 %236, label %249, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.yy_parser, ptr %235, i64 0, i32 43
  %239 = load i8, ptr %238, align 2, !tbaa !327
  %240 = icmp eq i8 %239, 11
  br i1 %240, label %249, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %243 = load i32, ptr %242, align 4, !tbaa !147
  %244 = and i32 %243, 1610547455
  store i32 %244, ptr %242, align 4, !tbaa !147
  %245 = and i32 %243, 33554432
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %544, label %247

247:                                              ; preds = %241
  %248 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %0) #26
  br label %544

249:                                              ; preds = %237, %234
  %250 = load i8, ptr @PL_in_eval, align 1, !tbaa !154
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = and i8 %250, -9
  %254 = zext i8 %253 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %254) #26
  br label %544

255:                                              ; preds = %249
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef 0) #26
  br label %544

256:                                              ; preds = %26
  %257 = icmp eq i8 %27, 0
  br i1 %257, label %258, label %260, !prof !226

258:                                              ; preds = %256
  %259 = load i64, ptr @PL_basetime, align 8, !tbaa !223
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %259) #26
  br label %544

260:                                              ; preds = %256
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.12) #29
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %544, !prof !227

263:                                              ; preds = %260
  %264 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %273, label %266, !prof !227

266:                                              ; preds = %263
  %267 = load i8, ptr @PL_taint_warn, align 1, !tbaa !320, !range !206, !noundef !207
  %268 = icmp ne i8 %267, 0
  %269 = load i8, ptr @PL_unsafe, align 1, !range !206
  %270 = icmp ne i8 %269, 0
  %271 = select i1 %268, i1 true, i1 %270, !prof !227
  %272 = select i1 %271, i64 -1, i64 1
  br label %273

273:                                              ; preds = %263, %266
  %274 = phi i64 [ %272, %266 ], [ 0, %263 ]
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %274) #26
  br label %544

275:                                              ; preds = %26
  %276 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.13) #29
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, ptr @PL_unicode, align 4, !tbaa !195
  %280 = zext i32 %279 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %280) #26
  br label %544

281:                                              ; preds = %275
  %282 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(10) @.str.14) #29
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i8, ptr @PL_utf8locale, align 1, !tbaa !320, !range !206, !noundef !207
  %286 = zext nneg i8 %285 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %286) #26
  br label %544

287:                                              ; preds = %281
  %288 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.15) #29
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %544

290:                                              ; preds = %287
  %291 = load i8, ptr @PL_utf8cache, align 1, !tbaa !154
  %292 = sext i8 %291 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %292) #26
  br label %544

293:                                              ; preds = %26
  %294 = icmp eq i8 %27, 0
  br i1 %294, label %295, label %299, !prof !330

295:                                              ; preds = %293
  %296 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  %297 = and i8 %296, 1
  %298 = zext nneg i8 %297 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %298) #26
  br label %544

299:                                              ; preds = %293
  %300 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(12) @.str.16) #29
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %544, !prof !331

302:                                              ; preds = %299
  %303 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  %304 = ptrtoint ptr %303 to i64
  switch i64 %304, label %316 [
    i64 16, label %305
    i64 0, label %306
    i64 8, label %307
  ], !prof !333

305:                                              ; preds = %302
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef 17) #26
  br label %544

306:                                              ; preds = %302
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %544

307:                                              ; preds = %302
  %308 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.18, i32 noundef 0) #26
  %309 = icmp eq ptr %308, null
  br i1 %309, label %315, label %310, !prof !334

310:                                              ; preds = %307
  %311 = tail call ptr @Perl_hv_common(ptr noundef nonnull %308, ptr noundef null, ptr noundef nonnull @.str.19, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #26
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313, !prof !189

313:                                              ; preds = %310
  %314 = load ptr, ptr %311, align 8, !tbaa !177
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef %314, i32 noundef 2) #26
  br label %544

315:                                              ; preds = %307, %310
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef 17) #26
  br label %544

316:                                              ; preds = %302
  %317 = getelementptr inbounds i64, ptr %303, i64 1
  %318 = load i64, ptr %303, align 8, !tbaa !223
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull %317, i64 noundef %318) #26
  br label %544

319:                                              ; preds = %26
  %320 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %321 = icmp eq ptr %320, null
  br i1 %321, label %331, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.pmop, ptr %320, i64 0, i32 9
  %324 = load ptr, ptr %323, align 8, !tbaa !293
  %325 = icmp eq ptr %324, null
  br i1 %325, label %331, label %326

326:                                              ; preds = %322
  %327 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %324) #27
  %328 = getelementptr inbounds %struct.regexp, ptr %327, i64 0, i32 15
  %329 = load i32, ptr %328, align 8, !tbaa !297
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %17

331:                                              ; preds = %326, %322, %319
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %544

332:                                              ; preds = %26
  %333 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %334 = icmp eq ptr %333, null
  br i1 %334, label %344, label %335

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.pmop, ptr %333, i64 0, i32 9
  %337 = load ptr, ptr %336, align 8, !tbaa !293
  %338 = icmp eq ptr %337, null
  br i1 %338, label %344, label %339

339:                                              ; preds = %335
  %340 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %337) #27
  %341 = getelementptr inbounds %struct.regexp, ptr %340, i64 0, i32 16
  %342 = load i32, ptr %341, align 4, !tbaa !335
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %17

344:                                              ; preds = %339, %335, %332
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %544

345:                                              ; preds = %26
  %346 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !177
  %347 = icmp eq ptr %346, null
  br i1 %347, label %544, label %348, !prof !226

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.sv, ptr %346, i64 0, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !147
  %351 = and i32 %350, 255
  %352 = add nsw i32 %351, -9
  %353 = icmp ult i32 %352, 2
  br i1 %353, label %354, label %544, !prof !336

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.gv, ptr %346, i64 0, i32 3
  %356 = load ptr, ptr %355, align 8, !tbaa !154
  %357 = icmp eq ptr %356, null
  br i1 %357, label %544, label %358, !prof !227

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.gp, ptr %356, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !337
  %361 = icmp eq ptr %360, null
  br i1 %361, label %544, label %362, !prof !227

362:                                              ; preds = %358
  %363 = load ptr, ptr %360, align 8, !tbaa !339
  %364 = getelementptr inbounds %struct.xpvio, ptr %363, i64 0, i32 4
  %365 = load i64, ptr %364, align 8, !tbaa !154
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %365) #26
  br label %544

366:                                              ; preds = %26
  %367 = load i32, ptr @PL_statusvalue, align 4, !tbaa !195
  %368 = sext i32 %367 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %368) #26
  br label %544

369:                                              ; preds = %26
  %370 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %371 = getelementptr inbounds %struct.gv, ptr %370, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !154
  %373 = getelementptr inbounds %struct.gp, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !337
  %375 = icmp eq ptr %374, null
  br i1 %375, label %382, label %376

376:                                              ; preds = %369
  %377 = load ptr, ptr %374, align 8, !tbaa !339
  %378 = getelementptr inbounds %struct.xpvio, ptr %377, i64 0, i32 10
  %379 = load ptr, ptr %378, align 8, !tbaa !341
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %379) #26
  br label %544

382:                                              ; preds = %369, %376
  %383 = getelementptr inbounds %struct.gp, ptr %372, i64 0, i32 8
  %384 = load ptr, ptr %383, align 8, !tbaa !343
  %385 = icmp eq ptr %384, null
  %386 = select i1 %385, ptr %370, ptr %384
  %387 = load ptr, ptr %386, align 8, !tbaa !344
  %388 = getelementptr inbounds %struct.xpvgv, ptr %387, i64 0, i32 4
  %389 = load ptr, ptr %388, align 8, !tbaa !154
  %390 = getelementptr inbounds %struct.hek, ptr %389, i64 0, i32 2
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %390) #26
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 4, i32 noundef 2) #26
  br label %544

391:                                              ; preds = %26
  %392 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %393 = getelementptr inbounds %struct.gv, ptr %392, i64 0, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !154
  %395 = getelementptr inbounds %struct.gp, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !337
  %397 = icmp eq ptr %396, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %391
  %399 = load ptr, ptr %396, align 8, !tbaa !339
  %400 = getelementptr inbounds %struct.xpvio, ptr %399, i64 0, i32 12
  %401 = load ptr, ptr %400, align 8, !tbaa !345
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %412

403:                                              ; preds = %391, %398
  %404 = getelementptr inbounds %struct.gp, ptr %394, i64 0, i32 8
  %405 = load ptr, ptr %404, align 8, !tbaa !343
  %406 = icmp eq ptr %405, null
  %407 = select i1 %406, ptr %392, ptr %405
  %408 = load ptr, ptr %407, align 8, !tbaa !344
  %409 = getelementptr inbounds %struct.xpvgv, ptr %408, i64 0, i32 4
  %410 = load ptr, ptr %409, align 8, !tbaa !154
  %411 = getelementptr inbounds %struct.hek, ptr %410, i64 0, i32 2
  br label %412

412:                                              ; preds = %403, %398
  %413 = phi ptr [ %401, %398 ], [ %411, %403 ]
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %413) #26
  br label %544

414:                                              ; preds = %26
  %415 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %416 = icmp eq ptr %415, null
  br i1 %416, label %544, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !147
  %420 = and i32 %419, 255
  %421 = add nsw i32 %420, -9
  %422 = icmp ult i32 %421, 2
  br i1 %422, label %423, label %544

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.gv, ptr %415, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8, !tbaa !154
  %426 = icmp eq ptr %425, null
  br i1 %426, label %544, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.gp, ptr %425, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !337
  %430 = icmp eq ptr %429, null
  br i1 %430, label %544, label %431

431:                                              ; preds = %427
  %432 = load ptr, ptr %429, align 8, !tbaa !339
  %433 = getelementptr inbounds %struct.xpvio, ptr %432, i64 0, i32 8
  %434 = load i64, ptr %433, align 8, !tbaa !346
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %434) #26
  br label %544

435:                                              ; preds = %26
  %436 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %437 = icmp eq ptr %436, null
  br i1 %437, label %544, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.sv, ptr %436, i64 0, i32 2
  %440 = load i32, ptr %439, align 4, !tbaa !147
  %441 = and i32 %440, 255
  %442 = add nsw i32 %441, -9
  %443 = icmp ult i32 %442, 2
  br i1 %443, label %444, label %544

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.gv, ptr %436, i64 0, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !154
  %447 = icmp eq ptr %446, null
  br i1 %447, label %544, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.gp, ptr %446, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !337
  %451 = icmp eq ptr %450, null
  br i1 %451, label %544, label %452

452:                                              ; preds = %448
  %453 = load ptr, ptr %450, align 8, !tbaa !339
  %454 = getelementptr inbounds %struct.xpvio, ptr %453, i64 0, i32 9
  %455 = load i64, ptr %454, align 8, !tbaa !347
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %455) #26
  br label %544

456:                                              ; preds = %26
  %457 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %458 = icmp eq ptr %457, null
  br i1 %458, label %544, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.sv, ptr %457, i64 0, i32 2
  %461 = load i32, ptr %460, align 4, !tbaa !147
  %462 = and i32 %461, 255
  %463 = add nsw i32 %462, -9
  %464 = icmp ult i32 %463, 2
  br i1 %464, label %465, label %544

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.gv, ptr %457, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !154
  %468 = icmp eq ptr %467, null
  br i1 %468, label %544, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.gp, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !337
  %472 = icmp eq ptr %471, null
  br i1 %472, label %544, label %473

473:                                              ; preds = %469
  %474 = load ptr, ptr %471, align 8, !tbaa !339
  %475 = getelementptr inbounds %struct.xpvio, ptr %474, i64 0, i32 7
  %476 = load i64, ptr %475, align 8, !tbaa !348
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %476) #26
  br label %544

477:                                              ; preds = %26
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef 0) #26
  br label %544

478:                                              ; preds = %26
  %479 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %480 = icmp eq ptr %479, null
  br i1 %480, label %544, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.sv, ptr %479, i64 0, i32 2
  %483 = load i32, ptr %482, align 4, !tbaa !147
  %484 = and i32 %483, 255
  %485 = add nsw i32 %484, -9
  %486 = icmp ult i32 %485, 2
  br i1 %486, label %487, label %544

487:                                              ; preds = %481
  %488 = getelementptr inbounds %struct.gv, ptr %479, i64 0, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !154
  %490 = icmp eq ptr %489, null
  br i1 %490, label %544, label %491

491:                                              ; preds = %487
  %492 = getelementptr inbounds %struct.gp, ptr %489, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !337
  %494 = icmp eq ptr %493, null
  br i1 %494, label %544, label %495

495:                                              ; preds = %491
  %496 = load ptr, ptr %493, align 8, !tbaa !339
  %497 = getelementptr inbounds %struct.xpvio, ptr %496, i64 0, i32 17
  %498 = load i8, ptr %497, align 1, !tbaa !349
  %499 = lshr i8 %498, 2
  %500 = and i8 %499, 1
  %501 = zext nneg i8 %500 to i64
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %501) #26
  br label %544

502:                                              ; preds = %26
  %503 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !177
  %504 = icmp eq ptr %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %502
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef nonnull %503, i32 noundef 2) #26
  br label %544

506:                                              ; preds = %502
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %544

507:                                              ; preds = %26
  %508 = tail call i32 @getpid() #26
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %511 = load ptr, ptr %510, align 8, !tbaa !255
  %512 = getelementptr inbounds %struct.sv, ptr %511, i64 0, i32 2
  %513 = load i32, ptr %512, align 4, !tbaa !147
  %514 = and i32 %513, 255
  %515 = icmp eq i32 %514, 9
  br i1 %515, label %528, label %516, !prof !336

516:                                              ; preds = %507
  %517 = and i32 %513, 2097408
  %518 = icmp eq i32 %517, 256
  br i1 %518, label %519, label %523

519:                                              ; preds = %516
  %520 = load ptr, ptr %511, align 8, !tbaa !153
  %521 = getelementptr inbounds %struct.xpviv, ptr %520, i64 0, i32 4
  %522 = load i64, ptr %521, align 8, !tbaa !154
  br label %525

523:                                              ; preds = %516
  %524 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %511, i32 noundef 2) #26
  br label %525

525:                                              ; preds = %523, %519
  %526 = phi i64 [ %522, %519 ], [ %524, %523 ]
  %527 = icmp eq i64 %526, %509
  br i1 %527, label %544, label %528

528:                                              ; preds = %525, %507
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %509) #26
  %529 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %544, label %531, !prof !336

531:                                              ; preds = %528
  tail call void @Perl_sv_untaint(ptr noundef %0) #26
  br label %544

532:                                              ; preds = %26
  %533 = tail call i32 @getuid() #26
  %534 = zext i32 %533 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %534) #26
  br label %544

535:                                              ; preds = %26
  %536 = tail call i32 @geteuid() #26
  %537 = zext i32 %536 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %537) #26
  br label %544

538:                                              ; preds = %26
  %539 = tail call i32 @getgid() #26
  %540 = zext i32 %539 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %540) #26
  br label %544

541:                                              ; preds = %26
  %542 = tail call i32 @getegid() #26
  %543 = zext i32 %542 to i64
  tail call void @Perl_sv_setuv(ptr noundef %0, i64 noundef %543) #26
  br label %544

544:                                              ; preds = %481, %459, %438, %417, %348, %66, %130, %133, %145, %148, %231, %306, %331, %344, %366, %412, %477, %532, %535, %26, %54, %49, %43, %60, %63, %57, %77, %80, %75, %139, %136, %210, %219, %150, %227, %230, %226, %222, %252, %255, %260, %273, %258, %284, %290, %287, %278, %299, %316, %305, %295, %345, %354, %362, %358, %382, %381, %414, %423, %431, %427, %435, %444, %452, %448, %456, %465, %473, %469, %478, %487, %495, %491, %506, %505, %541, %538, %247, %241, %315, %313, %531, %528, %525, %17, %25
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_my_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_fixup_errno_string(ptr noundef %0) unnamed_addr #2 !prof !224 !PGOFuncName !350 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !226

6:                                                ; preds = %1
  tail call void @Perl_sv_catpv(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #26
  br label %28

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.cop, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !309
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28, !prof !227

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !153
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !221
  %17 = tail call zeroext i1 @Perl_is_invariant_string(ptr noundef nonnull %3, i64 noundef %16) #26
  br i1 %17, label %28, label %18, !prof !227

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8, !tbaa !154
  %20 = load ptr, ptr %0, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !221
  %23 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %19, i64 noundef %22) #26
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !147
  %27 = or i32 %26, 536870912
  store i32 %27, ptr %25, align 4, !tbaa !147
  br label %28

28:                                               ; preds = %7, %13, %18, %24, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @getgid() local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @getegid() local_unnamed_addr #9

; Function Attrs: optsize
declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_is_invariant_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getuvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !351
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !353
  %12 = tail call i32 %7(i64 noundef %11, ptr noundef %0) #26
  br label %13

13:                                               ; preds = %9, %6, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setenv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i64, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !200
  store i64 %8, ptr %3, align 8, !tbaa !223
  %9 = and i64 %8, 4294967295
  %10 = icmp eq i64 %9, 4294967294
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  br i1 %10, label %13, label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !221
  store i64 %21, ptr %3, align 8, !tbaa !223
  %22 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !154
  br label %26

24:                                               ; preds = %13
  %25 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef 34) #26
  br label %26

26:                                               ; preds = %2, %18, %24
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ], [ %12, %2 ]
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !147
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = call i32 @Perl_mg_get(ptr noundef nonnull %0) #27
  %34 = load i32, ptr %28, align 4, !tbaa !147
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi i32 [ %29, %26 ], [ %34, %32 ]
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %45, label %64

45:                                               ; preds = %35
  %46 = and i32 %36, 430018304
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #26
  br label %50

50:                                               ; preds = %45, %48
  %51 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %0, i1 noundef zeroext true) #26
  %52 = load i32, ptr %28, align 4, !tbaa !147
  %53 = and i32 %52, 536870912
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #26
  %56 = load i32, ptr %28, align 4, !tbaa !147
  %57 = and i32 %56, -536870913
  store i32 %57, ptr %28, align 4, !tbaa !147
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !154
  %61 = load ptr, ptr %0, align 8, !tbaa !153
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !221
  br label %64

64:                                               ; preds = %35, %58
  %65 = phi ptr [ %60, %58 ], [ @.str.1, %35 ]
  %66 = phi i64 [ %63, %58 ], [ 0, %35 ]
  call void @Perl_my_setenv(ptr noundef %27, ptr noundef %65) #26
  %67 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %107, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %71 = load i8, ptr %70, align 1, !tbaa !164
  %72 = and i8 %71, -2
  store i8 %72, ptr %70, align 1, !tbaa !164
  %73 = icmp ne ptr %65, null
  %74 = load i64, ptr %3, align 8
  %75 = icmp eq i64 %74, 4
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %107

77:                                               ; preds = %69
  %78 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.25) #29
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %65, i64 %66
  %82 = icmp sgt i64 %66, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, ptr %4, i64 256
  %85 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  br label %86

86:                                               ; preds = %83, %105
  %87 = phi ptr [ %65, %83 ], [ %89, %105 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  %88 = call ptr @Perl_delimcpy(ptr noundef nonnull %4, ptr noundef nonnull %84, ptr noundef nonnull %87, ptr noundef nonnull %81, i32 noundef 58, ptr noundef nonnull %6) #26
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  %90 = load i32, ptr %6, align 4, !tbaa !195
  %91 = icmp sgt i32 %90, 255
  %92 = load i8, ptr %4, align 16
  %93 = icmp ne i8 %92, 47
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, ptr %85, align 8, !tbaa !354
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98, %86
  %103 = load i8, ptr %70, align 1, !tbaa !164
  %104 = or i8 %103, 1
  store i8 %104, ptr %70, align 1, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #28
  br label %107

105:                                              ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #28
  %106 = icmp ult ptr %89, %81
  br i1 %106, label %86, label %107, !llvm.loop !357

107:                                              ; preds = %105, %80, %102, %64, %77, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_my_setenv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_delimcpy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clearenv(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !200
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 4294967294
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  br i1 %6, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !147
  %12 = and i32 %11, 2098176
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  br label %19

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %8, ptr noundef null, i32 noundef 34) #26
  br label %19

19:                                               ; preds = %2, %14, %17
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ], [ %8, %2 ]
  tail call void @Perl_my_setenv(ptr noundef %20, ptr noundef null) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_set_all_env(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i32, align 4
  %4 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  tail call void @Perl_my_clearenv() #26
  %7 = tail call i32 @Perl_hv_iterinit(ptr noundef %0) #26
  %8 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %24
  %11 = phi ptr [ %26, %24 ], [ %8, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  %12 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %11, ptr noundef nonnull %3) #26
  %13 = call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %11) #26
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  %18 = call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %11) #26
  br i1 %17, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  br label %24

22:                                               ; preds = %10
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef %18, ptr noundef null, i32 noundef 34) #26
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %21, %19 ], [ %23, %22 ]
  call void @Perl_my_setenv(ptr noundef %12, ptr noundef %25) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  %26 = call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #26
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !358

28:                                               ; preds = %24, %6, %2
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_my_clearenv() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_iterkey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clear_all_env(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  tail call void @Perl_my_clearenv() #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !359 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !360
  %6 = sext i16 %5 to i32
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %8, label %34, !prof !230

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !200
  store i64 %10, ptr %3, align 8, !tbaa !223
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 4294967294
  %13 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  br i1 %12, label %15, label %29, !prof !227

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = and i32 %17, 2098176
  %19 = icmp eq i32 %18, 1024
  br i1 %19, label %20, label %26, !prof !227

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !221
  store i64 %23, ptr %3, align 8, !tbaa !223
  %24 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  br label %29

26:                                               ; preds = %15
  %27 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %14, ptr noundef nonnull %3, i32 noundef 34) #26
  %28 = load i64, ptr %3, align 8, !tbaa !223
  br label %29

29:                                               ; preds = %8, %20, %26
  %30 = phi i64 [ %23, %20 ], [ %28, %26 ], [ %10, %8 ]
  %31 = phi ptr [ %25, %20 ], [ %27, %26 ], [ %14, %8 ]
  %32 = call i32 @Perl_whichsig_pvn(ptr noundef %31, i64 noundef %30) #27
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %4, align 8, !tbaa !360
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %34

34:                                               ; preds = %29, %2
  %35 = phi i32 [ %6, %2 ], [ %32, %29 ]
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58, !prof !322

37:                                               ; preds = %34
  %38 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !177
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %41, i32 noundef 1538) #26
  br label %58

44:                                               ; preds = %37
  %45 = call ptr @Perl_rsignal_state(i32 noundef %35) #26
  %46 = icmp eq ptr %45, inttoptr (i64 1 to ptr)
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef 6) #26
  br label %49

48:                                               ; preds = %44
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #26
  br label %49

49:                                               ; preds = %48, %47
  %50 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !192
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !192
  %53 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %54 = getelementptr inbounds ptr, ptr %53, i64 %39
  store ptr %0, ptr %54, align 8, !tbaa !177
  %55 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !147
  %57 = and i32 %56, -524289
  store i32 %57, ptr %55, align 4, !tbaa !147
  br label %58

58:                                               ; preds = %43, %49, %34
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_whichsig_pvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !prof !224 {
  %3 = load ptr, ptr @PL_sig_name, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !225

5:                                                ; preds = %2, %19
  %6 = phi ptr [ %21, %19 ], [ %3, %2 ]
  %7 = phi ptr [ %20, %19 ], [ @PL_sig_name, %2 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #29
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %10, label %19, !prof !361

10:                                               ; preds = %5
  %11 = tail call i32 @bcmp(ptr %0, ptr nonnull %6, i64 %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = ptrtoint ptr %7 to i64
  %15 = sub i64 %14, ptrtoint (ptr @PL_sig_name to i64)
  %16 = ashr exact i64 %15, 3
  %17 = getelementptr inbounds [0 x i32], ptr @PL_sig_num, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !195
  br label %31

19:                                               ; preds = %5, %10
  %20 = getelementptr inbounds ptr, ptr %7, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !177
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !prof !362, !llvm.loop !363

23:                                               ; preds = %19, %2
  switch i64 %1, label %30 [
    i64 4, label %24
    i64 3, label %27
  ], !prof !364

24:                                               ; preds = %23
  %25 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.68, i64 4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %30

27:                                               ; preds = %23
  %28 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.69, i64 3)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %23, %27
  br label %31

31:                                               ; preds = %27, %24, %30, %13
  %32 = phi i32 [ %18, %13 ], [ -1, %30 ], [ 17, %24 ], [ 17, %27 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @Perl_rsignal_state(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_magic_clearsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !365 {
  %3 = tail call i32 @Perl_magic_setsig(ptr noundef null, ptr noundef %1) #27
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !183
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setsig(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !200
  store i64 %5, ptr %3, align 8, !tbaa !223
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967294
  %8 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  br i1 %7, label %10, label %23, !prof !366

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !147
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %21, !prof !366

15:                                               ; preds = %10
  %16 = load ptr, ptr %9, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !221
  store i64 %18, ptr %3, align 8, !tbaa !223
  %19 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 34) #26
  br label %23

23:                                               ; preds = %2, %15, %21
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ], [ %9, %2 ]
  %25 = load i8, ptr %24, align 1, !tbaa !154
  %26 = icmp eq i8 %25, 95
  br i1 %26, label %27, label %55, !prof !366

27:                                               ; preds = %23
  %28 = load i64, ptr %3, align 8, !tbaa !223
  switch i64 %28, label %40 [
    i64 7, label %29
    i64 8, label %32
  ], !prof !367

29:                                               ; preds = %27
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %24, ptr noundef nonnull dereferenceable(7) @.str.28, i64 7)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %40, !prof !368

32:                                               ; preds = %27
  %33 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %24, ptr noundef nonnull dereferenceable(8) @.str.29, i64 8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40, !prof !369

35:                                               ; preds = %32
  %36 = icmp ne ptr %0, null
  %37 = load ptr, ptr @PL_warnhook, align 8
  %38 = icmp ne ptr %37, @PL_sv_placeholder
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %48, label %202, !prof !370

40:                                               ; preds = %27, %29, %32
  %41 = icmp eq ptr %0, null
  br i1 %41, label %202, label %42, !prof !371

42:                                               ; preds = %40
  %43 = call ptr @Perl_sv_newmortal() #26
  %44 = load i64, ptr %3, align 8, !tbaa !223
  %45 = call ptr @Perl_pv_pretty(ptr noundef %43, ptr noundef nonnull %24, i64 noundef %44, i64 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) #26
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.30, ptr noundef %45) #26
  br label %117

46:                                               ; preds = %29
  %47 = load ptr, ptr @PL_diehook, align 8, !tbaa !177
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi ptr [ %47, %46 ], [ %37, %35 ]
  %50 = phi ptr [ @PL_diehook, %46 ], [ @PL_warnhook, %35 ]
  %51 = icmp eq ptr %49, null
  br i1 %51, label %114, label %52, !prof !372

52:                                               ; preds = %48
  %53 = icmp eq ptr %49, @PL_sv_placeholder
  %54 = select i1 %53, ptr null, ptr %49, !prof !373
  store ptr null, ptr %50, align 8, !tbaa !177
  br label %114

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !360
  %58 = sext i16 %57 to i32
  %59 = icmp eq i16 %57, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, ptr %3, align 8, !tbaa !223
  %62 = call i32 @Perl_whichsig_pvn(ptr noundef nonnull %24, i64 noundef %61) #27
  %63 = trunc i32 %62 to i16
  store i16 %63, ptr %56, align 8, !tbaa !360
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %58, %55 ], [ %62, %60 ]
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = icmp eq ptr %0, null
  br i1 %68, label %204, label %69

69:                                               ; preds = %67
  %70 = call ptr @Perl_sv_newmortal() #26
  %71 = load i64, ptr %3, align 8, !tbaa !223
  %72 = call ptr @Perl_pv_pretty(ptr noundef %70, ptr noundef nonnull %24, i64 noundef %71, i64 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) #26
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.31, ptr noundef %72) #26
  br label %204

73:                                               ; preds = %64
  %74 = load i32, ptr @PL_sig_pending, align 4, !tbaa !195
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr @PL_signalhook, align 8, !tbaa !177
  call void %77() #26
  br label %78

78:                                               ; preds = %73, %76
  %79 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %80 = zext nneg i32 %65 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !177
  %83 = icmp eq ptr %0, null
  br i1 %83, label %106, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !192
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !192
  store ptr %0, ptr %81, align 8, !tbaa !177
  %88 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !147
  %90 = and i32 %89, -524289
  store i32 %90, ptr %88, align 4, !tbaa !147
  %91 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %92 = getelementptr inbounds ptr, ptr %91, i64 %80
  %93 = load ptr, ptr %92, align 8, !tbaa !177
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %84
  %96 = load i64, ptr %3, align 8, !tbaa !223
  %97 = call ptr @Perl_newSVpvn(ptr noundef nonnull %24, i64 noundef %96) #26
  %98 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %99 = getelementptr inbounds ptr, ptr %98, i64 %80
  store ptr %97, ptr %99, align 8, !tbaa !177
  %100 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %101 = getelementptr inbounds ptr, ptr %100, i64 %80
  %102 = load ptr, ptr %101, align 8, !tbaa !177
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !147
  %105 = or i32 %104, 134283264
  store i32 %105, ptr %103, align 4, !tbaa !147
  br label %117

106:                                              ; preds = %78
  %107 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %108 = getelementptr inbounds ptr, ptr %107, i64 %80
  %109 = load ptr, ptr %108, align 8, !tbaa !177
  call fastcc void @S_SvREFCNT_dec(ptr noundef %109) #27
  %110 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %111 = getelementptr inbounds ptr, ptr %110, i64 %80
  store ptr null, ptr %111, align 8, !tbaa !177
  %112 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %113 = getelementptr inbounds ptr, ptr %112, i64 %80
  store ptr null, ptr %113, align 8, !tbaa !177
  br label %182

114:                                              ; preds = %48, %52
  %115 = phi ptr [ %54, %52 ], [ null, %48 ]
  %116 = icmp eq ptr %0, null
  br i1 %116, label %202, label %117, !prof !374

117:                                              ; preds = %42, %84, %95, %114
  %118 = phi ptr [ %115, %114 ], [ %82, %95 ], [ %82, %84 ], [ null, %42 ]
  %119 = phi ptr [ %50, %114 ], [ null, %95 ], [ null, %84 ], [ null, %42 ]
  %120 = phi i32 [ 0, %114 ], [ %65, %95 ], [ %65, %84 ], [ 0, %42 ]
  %121 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !147
  %123 = and i32 %122, 49152
  %124 = icmp eq i32 %123, 32768
  br i1 %124, label %125, label %132, !prof !373

125:                                              ; preds = %117
  %126 = and i32 %122, 255
  %127 = add nsw i32 %126, -11
  %128 = icmp ult i32 %127, -2
  %129 = and i32 %122, 2048
  %130 = icmp eq i32 %129, 0
  %131 = and i1 %130, %128
  br i1 %131, label %146, label %137, !prof !375

132:                                              ; preds = %117
  %133 = and i32 %122, 2048
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137, !prof !373

135:                                              ; preds = %132
  %136 = and i32 %122, 255
  br label %146

137:                                              ; preds = %125, %132
  %138 = icmp eq i32 %120, 0
  br i1 %138, label %142, label %139, !prof !376

139:                                              ; preds = %137
  %140 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !177
  %141 = call ptr @Perl_rsignal(i32 noundef %120, ptr noundef %140) #26
  br label %202

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !192
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !192
  store ptr %0, ptr %119, align 8, !tbaa !177
  br label %202

146:                                              ; preds = %135, %125
  %147 = phi i32 [ %136, %135 ], [ %126, %125 ]
  %148 = and i32 %122, 65280
  %149 = icmp ne i32 %148, 0
  %150 = icmp eq i32 %147, 8
  %151 = or i1 %149, %150
  %152 = and i32 %122, 16777471
  %153 = icmp eq i32 %152, 16777226
  %154 = or i1 %153, %151
  br i1 %154, label %155, label %180

155:                                              ; preds = %146
  %156 = and i32 %122, 430018304
  %157 = icmp eq i32 %156, 1024
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load ptr, ptr %0, align 8, !tbaa !153
  %160 = getelementptr inbounds %struct.xpv, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !221
  store i64 %161, ptr %3, align 8, !tbaa !223
  %162 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !154
  br label %167

164:                                              ; preds = %155
  %165 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #26
  %166 = load i64, ptr %3, align 8
  br label %167

167:                                              ; preds = %164, %158
  %168 = phi i64 [ %166, %164 ], [ %161, %158 ]
  %169 = phi ptr [ %165, %164 ], [ %163, %158 ]
  switch i64 %168, label %186 [
    i64 6, label %170
    i64 7, label %177
    i64 0, label %180
  ]

170:                                              ; preds = %167
  %171 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %169, ptr noundef nonnull dereferenceable(6) @.str.26, i64 6)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = icmp eq i32 %120, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %173
  %176 = call ptr @Perl_rsignal(i32 noundef %120, ptr noundef nonnull inttoptr (i64 1 to ptr)) #26
  br label %202

177:                                              ; preds = %167
  %178 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %169, ptr noundef nonnull dereferenceable(7) @.str.32, i64 7)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %167, %146, %177
  %181 = icmp eq i32 %120, 0
  br i1 %181, label %202, label %182, !prof !377

182:                                              ; preds = %106, %180
  %183 = phi ptr [ %82, %106 ], [ %118, %180 ]
  %184 = phi i32 [ %65, %106 ], [ %120, %180 ]
  %185 = call ptr @Perl_rsignal(i32 noundef %184, ptr noundef null) #26
  br label %202

186:                                              ; preds = %167, %170, %177
  %187 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %169, i32 noundef 58) #29
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %169, i32 noundef 39) #29
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @Perl_sv_insert_flags(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 6, i32 noundef 2) #26
  br label %193

193:                                              ; preds = %192, %189, %186
  %194 = icmp eq i32 %120, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !177
  %197 = call ptr @Perl_rsignal(i32 noundef %120, ptr noundef %196) #26
  br label %202

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %200 = load i32, ptr %199, align 8, !tbaa !192
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 8, !tbaa !192
  store ptr %0, ptr %119, align 8, !tbaa !177
  br label %202

202:                                              ; preds = %40, %35, %114, %175, %173, %195, %198, %180, %182, %139, %142
  %203 = phi ptr [ %118, %175 ], [ %118, %173 ], [ %118, %195 ], [ %118, %198 ], [ %118, %180 ], [ %183, %182 ], [ %118, %139 ], [ %118, %142 ], [ %115, %114 ], [ null, %35 ], [ null, %40 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef %203) #27
  br label %204

204:                                              ; preds = %67, %69, %202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_csighandler(i32 noundef %0) local_unnamed_addr #2 !prof !198 {
  switch i32 %0, label %2 [
    i32 11, label %6
    i32 7, label %6
    i32 4, label %6
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr @PL_signals, align 4, !tbaa !195
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1, %1, %1, %2
  %7 = load ptr, ptr @PL_sighandlerp, align 8, !tbaa !177
  tail call void %7(i32 noundef %0) #26
  br label %20

8:                                                ; preds = %2
  %9 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !195
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !195
  %16 = load i32, ptr @PL_sig_pending, align 4, !tbaa !195
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @PL_sig_pending, align 4, !tbaa !195
  %18 = icmp sgt i32 %16, 118
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, i64 noundef 120) #26
  br label %20

20:                                               ; preds = %11, %19, %8, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_despatch_signals() local_unnamed_addr #2 !prof !198 {
  store i32 0, ptr @PL_sig_pending, align 4, !tbaa !195
  %1 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !177
  br label %2

2:                                                ; preds = %0, %14
  %3 = phi ptr [ %1, %0 ], [ %15, %14 ]
  %4 = phi i64 [ 1, %0 ], [ %16, %14 ]
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !195
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__errno_location() #30
  %10 = load i32, ptr %9, align 4, !tbaa !195
  store i32 0, ptr %5, align 4, !tbaa !195
  %11 = load ptr, ptr @PL_sighandlerp, align 8, !tbaa !177
  %12 = trunc i64 %4 to i32
  tail call void %11(i32 noundef %12) #26
  store i32 %10, ptr %9, align 4, !tbaa !195
  %13 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !177
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi ptr [ %3, %2 ], [ %13, %8 ]
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %16, 16
  br i1 %17, label %18, label %2, !llvm.loop !378

18:                                               ; preds = %14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_pv_pretty(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_rsignal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setisa(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !379 {
  %3 = load i16, ptr @PL_delaymagic, align 2, !tbaa !380
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6, !prof !381

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 2, !tbaa !183
  %9 = icmp eq i8 %8, 105
  br i1 %9, label %12, label %10, !prof !382

10:                                               ; preds = %6, %2
  %11 = tail call i32 @Perl_magic_clearisa(ptr noundef null, ptr noundef %1) #27
  br label %12

12:                                               ; preds = %6, %10
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clearisa(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !383 {
  %3 = load i32, ptr @PL_phase, align 4, !tbaa !195
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %94, label %5, !prof !384

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7, !prof !385

7:                                                ; preds = %5
  tail call void @Perl_av_clear(ptr noundef nonnull %0) #26
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !255
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !147
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 9
  %15 = and i32 %12, 4194304
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %24, label %18, !prof !386

18:                                               ; preds = %8
  %19 = tail call ptr @Perl_mg_find(ptr noundef nonnull %10, i32 noundef 73) #27
  %20 = getelementptr inbounds %struct.magic, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !255
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !147
  br label %24

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %23, %18 ], [ %12, %8 ]
  %26 = phi ptr [ %21, %18 ], [ %10, %8 ]
  %27 = and i32 %25, 255
  %28 = icmp eq i32 %27, 11
  %29 = load ptr, ptr %26, align 8, !tbaa !177
  br i1 %28, label %30, label %70, !prof !384

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.xpvav, ptr %29, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !231
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %94, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.av, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  br label %38

38:                                               ; preds = %35, %67
  %39 = phi i32 [ %68, %67 ], [ %33, %35 ]
  %40 = phi ptr [ %41, %67 ], [ %37, %35 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %40, align 8, !tbaa !177
  %43 = load ptr, ptr %42, align 8, !tbaa !344
  %44 = getelementptr inbounds %struct.xpvgv, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !154
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !387
  %50 = and i32 %49, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !154
  %55 = load ptr, ptr %45, align 8, !tbaa !389
  %56 = getelementptr inbounds %struct.xpvhv, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !390
  %58 = getelementptr ptr, ptr %54, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !154
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %58, i64 36
  %64 = load i32, ptr %63, align 4, !tbaa !392
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %45) #26
  br label %67

67:                                               ; preds = %47, %52, %62, %66, %38
  %68 = add nsw i32 %39, -1
  %69 = icmp eq i32 %39, 0
  br i1 %69, label %94, label %38, !llvm.loop !394

70:                                               ; preds = %24
  %71 = getelementptr inbounds %struct.xpvgv, ptr %29, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !154
  %73 = icmp eq ptr %72, null
  br i1 %73, label %94, label %74, !prof !384

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hv, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !387
  %77 = and i32 %76, 33554432
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79, !prof !384

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.hv, ptr %72, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !154
  %82 = load ptr, ptr %72, align 8, !tbaa !389
  %83 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !390
  %85 = getelementptr ptr, ptr %81, i64 %84
  %86 = getelementptr ptr, ptr %85, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !154
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89, !prof !384

89:                                               ; preds = %79
  %90 = getelementptr i8, ptr %85, i64 36
  %91 = load i32, ptr %90, align 4, !tbaa !392
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %94, label %93, !prof !385

93:                                               ; preds = %89
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %72) #26
  br label %94

94:                                               ; preds = %67, %30, %70, %93, %89, %79, %74, %2
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getnkeys(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %5) #26
  %9 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !147
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @Perl_mg_find(ptr noundef nonnull %5, i32 noundef 80) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %7, %13
  %17 = load ptr, ptr %5, align 8, !tbaa !389
  %18 = getelementptr inbounds %struct.xpvhv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !395
  %20 = getelementptr inbounds %struct.xpvmg, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %5) #26
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi i64 [ %25, %23 ], [ 0, %16 ]
  %28 = sub i64 %19, %27
  %29 = trunc i64 %28 to i32
  br label %35

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %34, %30 ], [ 0, %13 ]
  %32 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %5, i32 noundef 0) #26
  %33 = icmp eq ptr %32, null
  %34 = add nuw nsw i32 %31, 1
  br i1 %33, label %35, label %30, !llvm.loop !396

35:                                               ; preds = %30, %26, %2
  %36 = phi i32 [ %29, %26 ], [ 0, %2 ], [ %31, %30 ]
  %37 = sext i32 %36 to i64
  tail call void @Perl_sv_setiv(ptr noundef nonnull %0, i64 noundef %37) #26
  ret i32 0
}

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setnkeys(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !147
  %10 = and i32 %9, 2097408
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xpviv, ptr %3, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !154
  br label %17

15:                                               ; preds = %7
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i64 [ %14, %12 ], [ %16, %15 ]
  tail call void @Perl_hv_ksplit(ptr noundef nonnull %5, i64 noundef %18) #26
  br label %19

19:                                               ; preds = %17, %2
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_hv_ksplit(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_magic_methcall(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #2 !prof !397 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !177
  tail call void @Perl_push_scope() #26
  %8 = and i32 %3, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !398

10:                                               ; preds = %5
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #26
  %11 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !223
  store i64 %11, ptr @PL_tmps_floor, align 8, !tbaa !223
  tail call void @Perl_save_re_context() #26
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_stderrgv) #26
  store ptr null, ptr @PL_stderrgv, align 8, !tbaa !177
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !399
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22, !prof !401

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #26
  %19 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %20 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !402
  %21 = getelementptr inbounds %struct.stackinfo, ptr %19, i64 0, i32 3
  store ptr %18, ptr %21, align 8, !tbaa !399
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %15, %12 ], [ %18, %17 ]
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 6
  store i32 2, ptr %24, align 8, !tbaa !403
  %25 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  store i32 -1, ptr %25, align 8, !tbaa !404
  %26 = load ptr, ptr %23, align 8, !tbaa !405
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = getelementptr inbounds %struct.xpvav, ptr %27, i64 0, i32 2
  store i64 0, ptr %28, align 8, !tbaa !231
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  %30 = ptrtoint ptr %7 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = load ptr, ptr @PL_curstack, align 8, !tbaa !177
  %35 = load ptr, ptr %34, align 8, !tbaa !256
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 2
  store i64 %33, ptr %36, align 8, !tbaa !231
  %37 = getelementptr inbounds %struct.av, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !154
  store ptr %38, ptr @PL_stack_base, align 8, !tbaa !177
  %39 = load ptr, ptr %23, align 8, !tbaa !405
  %40 = load ptr, ptr %39, align 8, !tbaa !256
  %41 = getelementptr inbounds %struct.xpvav, ptr %40, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !406
  %43 = getelementptr inbounds ptr, ptr %38, i64 %42
  store ptr %43, ptr @PL_stack_max, align 8, !tbaa !177
  %44 = load ptr, ptr %23, align 8, !tbaa !405
  %45 = load ptr, ptr %44, align 8, !tbaa !256
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !231
  %48 = getelementptr inbounds ptr, ptr %38, i64 %47
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !177
  %49 = load ptr, ptr %23, align 8, !tbaa !405
  store ptr %49, ptr @PL_curstack, align 8, !tbaa !177
  store ptr %23, ptr @PL_curstackinfo, align 8, !tbaa !177
  %50 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !177
  %51 = getelementptr inbounds i32, ptr %50, i64 1
  store ptr %51, ptr @PL_markstack_ptr, align 8, !tbaa !177
  %52 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !177
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58, !prof !401

54:                                               ; preds = %22
  %55 = tail call ptr @Perl_markstack_grow() #26
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  %57 = load ptr, ptr @PL_stack_max, align 8, !tbaa !177
  br label %58

58:                                               ; preds = %22, %54
  %59 = phi ptr [ %57, %54 ], [ %43, %22 ]
  %60 = phi ptr [ %56, %54 ], [ %38, %22 ]
  %61 = phi ptr [ %55, %54 ], [ %51, %22 ]
  %62 = ptrtoint ptr %48 to i64
  %63 = ptrtoint ptr %60 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 3
  %66 = trunc i64 %65 to i32
  store i32 %66, ptr %61, align 4, !tbaa !195
  %67 = ptrtoint ptr %59 to i64
  %68 = sub i64 %67, %62
  %69 = ashr exact i64 %68, 3
  %70 = add i32 %4, 1
  %71 = zext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %75, !prof !401

73:                                               ; preds = %58
  %74 = tail call ptr @Perl_stack_grow(ptr noundef %48, ptr noundef %48, i64 noundef %71) #26
  br label %75

75:                                               ; preds = %58, %73
  %76 = phi ptr [ %74, %73 ], [ %48, %58 ]
  %77 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !255
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83, !prof !401

80:                                               ; preds = %75
  %81 = tail call ptr @Perl_newRV(ptr noundef %0) #26
  %82 = tail call ptr @Perl_sv_2mortal(ptr noundef %81) #26
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %82, %80 ], [ %78, %75 ]
  %85 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !177
  %86 = and i32 %3, 512
  %87 = icmp eq i32 %86, 0
  %88 = icmp eq i32 %4, 0
  br i1 %87, label %96, label %89, !prof !398

89:                                               ; preds = %83
  br i1 %88, label %122, label %90

90:                                               ; preds = %89, %90
  %91 = phi i32 [ %93, %90 ], [ %4, %89 ]
  %92 = phi ptr [ %94, %90 ], [ %85, %89 ]
  %93 = add i32 %91, -1
  %94 = getelementptr inbounds ptr, ptr %92, i64 1
  store ptr @PL_sv_undef, ptr %94, align 8, !tbaa !177
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %122, label %90, !llvm.loop !407

96:                                               ; preds = %83
  br i1 %88, label %122, label %97, !prof !408

97:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #28
  call void @llvm.va_start(ptr nonnull %6)
  %98 = load i32, ptr %6, align 16
  br label %99

99:                                               ; preds = %114, %97
  %100 = phi i32 [ %98, %97 ], [ %115, %114 ]
  %101 = phi ptr [ %85, %97 ], [ %118, %114 ]
  %102 = phi i32 [ %4, %97 ], [ %119, %114 ]
  %103 = icmp ult i32 %100, 41
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %106 = load ptr, ptr %105, align 16
  %107 = zext nneg i32 %100 to i64
  %108 = getelementptr i8, ptr %106, i64 %107
  %109 = add nuw nsw i32 %100, 8
  store i32 %109, ptr %6, align 16
  br label %114

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr i8, ptr %112, i64 8
  store ptr %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %109, %104 ], [ %100, %110 ]
  %116 = phi ptr [ %108, %104 ], [ %112, %110 ]
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds ptr, ptr %101, i64 1
  store ptr %117, ptr %118, align 8, !tbaa !177
  %119 = add i32 %102, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %99, !prof !321, !llvm.loop !409

121:                                              ; preds = %114
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #28
  br label %122

122:                                              ; preds = %90, %89, %96, %121
  %123 = phi ptr [ %118, %121 ], [ %85, %96 ], [ %85, %89 ], [ %94, %90 ]
  store ptr %123, ptr @PL_stack_sp, align 8, !tbaa !177
  %124 = and i32 %3, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126, !prof !398

126:                                              ; preds = %122
  %127 = call i32 @Perl_call_sv(ptr noundef %2, i32 noundef 4102) #26
  %128 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !177
  br label %136

129:                                              ; preds = %122
  %130 = call i32 @Perl_call_sv(ptr noundef %2, i32 noundef 4098) #26
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !177
  br i1 %131, label %136, label %133, !prof !401

133:                                              ; preds = %129
  %134 = getelementptr inbounds ptr, ptr %132, i64 -1
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !177
  %135 = load ptr, ptr %132, align 8, !tbaa !177
  br label %136

136:                                              ; preds = %126, %133, %129
  %137 = phi ptr [ %128, %126 ], [ %134, %133 ], [ %132, %129 ]
  %138 = phi ptr [ null, %126 ], [ %135, %133 ], [ null, %129 ]
  %139 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %140 = getelementptr inbounds %struct.stackinfo, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !402
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144, !prof !401

143:                                              ; preds = %136
  call void @Perl_croak_popstack() #26
  br label %144

144:                                              ; preds = %136, %143
  %145 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  %146 = ptrtoint ptr %137 to i64
  %147 = ptrtoint ptr %145 to i64
  %148 = sub i64 %146, %147
  %149 = ashr exact i64 %148, 3
  %150 = load ptr, ptr @PL_curstack, align 8, !tbaa !177
  %151 = load ptr, ptr %150, align 8, !tbaa !256
  %152 = getelementptr inbounds %struct.xpvav, ptr %151, i64 0, i32 2
  store i64 %149, ptr %152, align 8, !tbaa !231
  %153 = load ptr, ptr %141, align 8, !tbaa !405
  %154 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !154
  store ptr %155, ptr @PL_stack_base, align 8, !tbaa !177
  %156 = load ptr, ptr %141, align 8, !tbaa !405
  %157 = load ptr, ptr %156, align 8, !tbaa !256
  %158 = getelementptr inbounds %struct.xpvav, ptr %157, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !406
  %160 = getelementptr inbounds ptr, ptr %155, i64 %159
  store ptr %160, ptr @PL_stack_max, align 8, !tbaa !177
  %161 = load ptr, ptr %141, align 8, !tbaa !405
  %162 = load ptr, ptr %161, align 8, !tbaa !256
  %163 = getelementptr inbounds %struct.xpvav, ptr %162, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !231
  %165 = getelementptr inbounds ptr, ptr %155, i64 %164
  store ptr %165, ptr @PL_stack_sp, align 8, !tbaa !177
  %166 = load ptr, ptr %141, align 8, !tbaa !405
  store ptr %166, ptr @PL_curstack, align 8, !tbaa !177
  store ptr %141, ptr @PL_curstackinfo, align 8, !tbaa !177
  br i1 %9, label %172, label %167, !prof !398

167:                                              ; preds = %144
  %168 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !223
  %169 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !223
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  call void @Perl_free_tmps() #26
  br label %172

172:                                              ; preds = %167, %171, %144
  call void @Perl_pop_scope() #26
  ret ptr %138
}

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_re_context() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getpack(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !397 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !183
  %5 = icmp eq i8 %4, 112
  br i1 %5, label %6, label %10, !prof !410

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !164
  %9 = or i8 %8, 4
  store i8 %9, ptr %7, align 1, !tbaa !164
  br label %10

10:                                               ; preds = %6, %2
  %11 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !177
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !411

13:                                               ; preds = %10
  %14 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.34, i32 noundef 0) #26
  store ptr %14, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 4), align 16, !tbaa !177
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %14, %13 ], [ %11, %10 ]
  tail call fastcc void @S_magic_methpack(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %16) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_magic_methpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #2 !prof !397 !PGOFuncName !412 {
  %4 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 1, ptr noundef null) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !401

6:                                                ; preds = %3
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1538) #26
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 !prof !397 !PGOFuncName !413 {
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !408

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !200
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %14, label %16, !prof !414

14:                                               ; preds = %10
  %15 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %8, i64 noundef %12, i32 noundef 524288) #26
  br label %27

16:                                               ; preds = %10
  %17 = icmp eq i64 %12, -2
  br i1 %17, label %33, label %30, !prof !321

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !183
  %21 = icmp eq i8 %20, 112
  br i1 %21, label %22, label %30, !prof !415

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %24 = load i64, ptr %23, align 8, !tbaa !200
  %25 = tail call ptr @Perl_newSViv(i64 noundef %24) #26
  %26 = tail call ptr @Perl_sv_2mortal(ptr noundef %25) #26
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi ptr [ %15, %14 ], [ %25, %22 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !416

30:                                               ; preds = %16, %18, %27
  %31 = add nsw i32 %4, -1
  %32 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %31, ptr noundef %5) #27
  br label %36

33:                                               ; preds = %16, %27
  %34 = phi ptr [ %28, %27 ], [ %8, %16 ]
  %35 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %34, ptr noundef %5) #27
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ %32, %30 ]
  ret ptr %37
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 116) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !200
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %0, i32 noundef 1538) #26
  %15 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @Perl_sv_magic(ptr noundef %14, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #26
  br label %18

18:                                               ; preds = %2, %5, %8, %17, %13
  %19 = phi ptr [ %14, %17 ], [ %14, %13 ], [ %0, %8 ], [ %0, %5 ], [ %0, %2 ]
  %20 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 6), align 16, !tbaa !177
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.35, i32 noundef 0) #26
  store ptr %23, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 6), align 16, !tbaa !177
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %25, i32 noundef 4, i32 noundef 2, ptr noundef %19) #27
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clearpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !183
  %5 = icmp eq i8 %4, 113
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 31), align 8, !tbaa !177
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.36, i32 noundef 0) #26
  store ptr %10, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 31), align 8, !tbaa !177
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  tail call fastcc void @S_magic_methpack(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %12) #27
  br label %13

13:                                               ; preds = %2, %11
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_magic_sizepack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 5), align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.37, i32 noundef 0) #26
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 5), align 8, !tbaa !177
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call fastcc ptr @S_magic_methcall1(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef null) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !147
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %9, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !154
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %9, i32 noundef 2) #26
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, -1
  %26 = icmp ugt i32 %24, -2147483648
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38) #26
  br label %28

28:                                               ; preds = %22, %27, %7
  %29 = phi i32 [ %25, %27 ], [ %25, %22 ], [ 0, %7 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_wipepack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 32), align 16, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.39, i32 noundef 0) #26
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 32), align 16, !tbaa !177
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef 4, i32 noundef 0) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_nextpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 !prof !198 {
  %4 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !147
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
  %15 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 16), align 16, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.40, i32 noundef 0) #26
  store ptr %18, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 16), align 16, !tbaa !177
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2) #27
  br label %30

22:                                               ; preds = %3
  %23 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 15), align 8, !tbaa !177
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.41, i32 noundef 0) #26
  store ptr %26, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 15), align 8, !tbaa !177
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %29 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef %1, ptr noundef %28, i32 noundef 0, i32 noundef 0) #27
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi ptr [ %21, %19 ], [ %29, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %2, ptr noundef nonnull %31, i32 noundef 1538) #26
  br label %34

34:                                               ; preds = %33, %30
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_existspack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 8), align 16, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.42, i32 noundef 0) #26
  store ptr %6, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 8), align 16, !tbaa !177
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call fastcc void @S_magic_methpack(ptr noundef %0, ptr noundef %1, ptr noundef %8) #27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_magic_scalarpack(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_newRV(ptr noundef %0) #26
  %8 = tail call ptr @Perl_sv_2mortal(ptr noundef %7) #26
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = load ptr, ptr %13, align 8, !tbaa !417
  %15 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %14, ptr noundef nonnull @.str.43, i32 noundef 0) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !387
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !154
  %25 = load ptr, ptr %0, align 8, !tbaa !389
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !390
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !419
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %17, %22
  %33 = tail call ptr @Perl_sv_newmortal() #26
  %34 = tail call i32 @Perl_magic_nextpack(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %33) #27
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %0, ptr noundef null) #26
  %35 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !147
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
  %47 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 17), align 8, !tbaa !177
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.43, i32 noundef 0) #26
  store ptr %50, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 17), align 8, !tbaa !177
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ %47, %46 ]
  %53 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %52, i32 noundef 0, i32 noundef 0) #27
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @PL_sv_undef, ptr %53
  br label %56

56:                                               ; preds = %32, %22, %51
  %57 = phi ptr [ %55, %51 ], [ %45, %32 ], [ @PL_sv_yes, %22 ]
  ret ptr %57
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setdbline(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !200
  %5 = icmp eq i64 %4, -2
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44, i64 noundef %4, ptr noundef %8) #26
  br label %9

9:                                                ; preds = %2, %6
  %10 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  %14 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %13, i32 noundef 2) #26
  %15 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %14, i32 noundef 0) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %15, align 8, !tbaa !177
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !147
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %93, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !153
  %25 = getelementptr inbounds %struct.xpviv, ptr %24, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !154
  %27 = inttoptr i64 %26 to ptr
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %93, label %29

29:                                               ; preds = %23
  %30 = icmp eq ptr %0, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !147
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %0, i32 noundef 2) #26
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
  %51 = load ptr, ptr %0, align 8, !tbaa !153
  %52 = icmp eq ptr %51, null
  br i1 %52, label %89, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !221
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %85, label %57

57:                                               ; preds = %53
  %58 = icmp eq i64 %55, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !154
  %62 = load i8, ptr %61, align 1, !tbaa !154
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
  %71 = load ptr, ptr %0, align 8, !tbaa !153
  %72 = getelementptr inbounds %struct.xpviv, ptr %71, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !154
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70, %67
  %76 = and i32 %33, 512
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %0, align 8, !tbaa !153
  %80 = getelementptr inbounds %struct.xpvnv, ptr %79, i64 0, i32 5
  %81 = load double, ptr %80, align 8, !tbaa !154
  %82 = fcmp une double %81, 0.000000e+00
  br i1 %82, label %85, label %89

83:                                               ; preds = %64
  %84 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %0, i32 noundef 0) #26
  br i1 %84, label %85, label %89

85:                                               ; preds = %83, %78, %70, %59, %53, %36
  %86 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %87 = load i8, ptr %86, align 2, !tbaa !420
  %88 = or i8 %87, -128
  store i8 %88, ptr %86, align 2, !tbaa !420
  br label %93

89:                                               ; preds = %78, %38, %29, %83, %75, %59, %57, %50, %36
  %90 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %91 = load i8, ptr %90, align 2, !tbaa !420
  %92 = and i8 %91, 127
  store i8 %92, ptr %90, align 2, !tbaa !420
  br label %93

93:                                               ; preds = %23, %89, %85, %17, %9
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getarylen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @Perl_mg_size(ptr noundef nonnull %4) #27
  %13 = sext i32 %12 to i64
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %4, align 8, !tbaa !256
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !231
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i64 [ %13, %11 ], [ %17, %14 ]
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %19) #26
  br label %21

20:                                               ; preds = %2
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef null, i32 noundef 1538) #26
  br label %21

21:                                               ; preds = %20, %18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setarylen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !154
  br label %17

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  tail call void @Perl_av_fill(ptr noundef nonnull %4, i64 noundef %18) #26
  br label %20

19:                                               ; preds = %2
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.45) #26
  br label %20

20:                                               ; preds = %19, %17
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_cleararylen_p(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i64 0, ptr %4, align 8, !tbaa !223
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_freearylen_p(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !198 {
  %3 = load i8, ptr @PL_in_clean_all, align 1, !tbaa !320, !range !206, !noundef !207
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = tail call ptr @Perl_mg_find(ptr noundef %7, i32 noundef 35) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.magic, ptr %8, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !255
  br label %12

12:                                               ; preds = %5, %10, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getpos(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = tail call ptr @Perl_mg_find_mglob(ptr noundef %5) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 5
  %10 = load i64, ptr %9, align 8, !tbaa !200
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !164
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !147
  %20 = and i32 %19, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %24 = getelementptr inbounds %struct.cop, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !309
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i64 @Perl_sv_pos_b2u_flags(ptr noundef nonnull %5, i64 noundef %10, i32 noundef 34) #26
  br label %30

30:                                               ; preds = %28, %22, %17, %12
  %31 = phi i64 [ %10, %22 ], [ %29, %28 ], [ %10, %17 ], [ %10, %12 ]
  tail call void @Perl_sv_setuv(ptr noundef nonnull %0, i64 noundef %31) #26
  br label %33

32:                                               ; preds = %8, %2
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1538) #26
  br label %33

33:                                               ; preds = %32, %30
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_sv_pos_b2u_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setpos(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i64, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.xpvlv, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %7 = tail call ptr @Perl_mg_find_mglob(ptr noundef %6) #27
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !147
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
  %21 = tail call ptr @Perl_sv_magicext_mglob(ptr noundef %6) #26
  br label %25

22:                                               ; preds = %2
  br i1 %18, label %25, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 5
  store i64 -1, ptr %24, align 8, !tbaa !200
  br label %106

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %7, %22 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !147
  %29 = and i32 %28, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8, !tbaa !153
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !221
  store i64 %34, ptr %3, align 8, !tbaa !223
  %35 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !154
  br label %39

37:                                               ; preds = %25
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 34) #26
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %36, %31 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !147
  %43 = and i32 %42, 2097408
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !153
  %47 = getelementptr inbounds %struct.xpviv, ptr %46, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !154
  br label %51

49:                                               ; preds = %39
  %50 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i64 [ %48, %45 ], [ %50, %49 ]
  %53 = load i32, ptr %27, align 4, !tbaa !147
  %54 = and i32 %53, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %58 = getelementptr inbounds %struct.cop, ptr %57, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !309
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
  %70 = load ptr, ptr %69, align 8, !tbaa !154
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !147
  %73 = and i32 %72, 1048576
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = load ptr, ptr %70, align 8, !tbaa !153
  %77 = load ptr, ptr %76, align 8, !tbaa !417
  %78 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !387
  %80 = and i32 %79, 268435456
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75, %62
  %83 = load i64, ptr %3, align 8, !tbaa !223
  %84 = getelementptr inbounds i8, ptr %40, i64 %83
  %85 = call i64 @Perl_utf8_length(ptr noundef %40, ptr noundef %84) #26
  br label %88

86:                                               ; preds = %75, %68, %65
  %87 = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %6) #26
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i64 [ %85, %82 ], [ %87, %86 ]
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i64 %89, ptr %3, align 8, !tbaa !223
  br label %92

92:                                               ; preds = %88, %91, %56, %51
  %93 = icmp slt i64 %52, 0
  %94 = load i64, ptr %3, align 8, !tbaa !223
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
  store i64 %101, ptr %102, align 8, !tbaa !200
  %103 = getelementptr inbounds %struct.magic, ptr %26, i64 0, i32 4
  %104 = load i8, ptr %103, align 1, !tbaa !164
  %105 = and i8 %104, -66
  store i8 %105, ptr %103, align 1, !tbaa !164
  br label %106

106:                                              ; preds = %19, %100, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getsubstr(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %6 = load ptr, ptr %0, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.xpvlv, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !147
  %11 = and i32 %10, 2098176
  %12 = icmp eq i32 %11, 1024
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !153
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !221
  store i64 %16, ptr %3, align 8, !tbaa !223
  %17 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !154
  br label %23

19:                                               ; preds = %2
  %20 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %8, ptr noundef nonnull %3, i32 noundef 34) #26
  %21 = load ptr, ptr %0, align 8, !tbaa !153
  %22 = load i32, ptr %9, align 4, !tbaa !147
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %10, %13 ], [ %22, %19 ]
  %25 = phi ptr [ %6, %13 ], [ %21, %19 ]
  %26 = phi ptr [ %18, %13 ], [ %20, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %27 = getelementptr inbounds %struct.xpvlv, ptr %25, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !154
  store i64 %28, ptr %4, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %29 = getelementptr inbounds %struct.xpvlv, ptr %25, i64 0, i32 7
  %30 = load i64, ptr %29, align 8, !tbaa !254
  store i64 %30, ptr %5, align 8, !tbaa !223
  %31 = getelementptr inbounds %struct.xpvlv, ptr %25, i64 0, i32 10
  %32 = load i8, ptr %31, align 1, !tbaa !422
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %33, 2
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %24, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %23
  %41 = and i32 %24, 2097152
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = and i32 %24, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !154
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !147
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %48, align 8, !tbaa !153
  %55 = load ptr, ptr %54, align 8, !tbaa !417
  %56 = getelementptr inbounds %struct.hv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !387
  %58 = and i32 %57, 268435456
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53, %40
  %61 = load i64, ptr %3, align 8, !tbaa !223
  %62 = getelementptr inbounds i8, ptr %26, i64 %61
  %63 = call i64 @Perl_utf8_length(ptr noundef %26, ptr noundef %62) #26
  %64 = load i64, ptr %4, align 8
  %65 = load i64, ptr %5, align 8
  br label %70

66:                                               ; preds = %53, %46, %43
  %67 = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %8) #26
  br label %70

68:                                               ; preds = %23
  %69 = load i64, ptr %3, align 8, !tbaa !223
  br label %70

70:                                               ; preds = %60, %66, %68
  %71 = phi i64 [ %30, %68 ], [ %65, %60 ], [ %30, %66 ]
  %72 = phi i64 [ %28, %68 ], [ %64, %60 ], [ %28, %66 ]
  %73 = phi i64 [ %69, %68 ], [ %63, %60 ], [ %67, %66 ]
  %74 = sub nsw i64 0, %72
  %75 = select i1 %35, i64 %72, i64 %74
  %76 = sub nsw i64 0, %71
  %77 = select i1 %37, i64 %71, i64 %76
  %78 = call zeroext i1 @Perl_translate_substr_offsets(i64 noundef %73, i64 noundef %75, i1 noundef zeroext %35, i64 noundef %77, i1 noundef zeroext %37, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 27, ptr noundef nonnull @.str.46) #26
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1536) #26
  br label %98

80:                                               ; preds = %70
  %81 = load i32, ptr %9, align 4, !tbaa !147
  %82 = and i32 %81, 536870912
  %83 = icmp eq i32 %82, 0
  %84 = load i64, ptr %4, align 8, !tbaa !223
  br i1 %83, label %87, label %85

85:                                               ; preds = %80
  %86 = call fastcc i64 @S_sv_or_pv_pos_u2b(ptr noundef nonnull %8, ptr noundef %26, i64 noundef %84, ptr noundef nonnull %5) #27
  store i64 %86, ptr %4, align 8, !tbaa !223
  br label %87

87:                                               ; preds = %85, %80
  %88 = phi i64 [ %86, %85 ], [ %84, %80 ]
  %89 = getelementptr inbounds i8, ptr %26, i64 %88
  %90 = load i64, ptr %5, align 8, !tbaa !223
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef %89, i64 noundef %90) #26
  %91 = load i32, ptr %9, align 4, !tbaa !147
  %92 = and i32 %91, 536870912
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !147
  %97 = or i32 %96, 536870912
  store i32 %97, ptr %95, align 4, !tbaa !147
  br label %98

98:                                               ; preds = %87, %94, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i1 @Perl_translate_substr_offsets(i64 noundef, i64 noundef, i1 noundef zeroext, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_sv_or_pv_pos_u2b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 !prof !198 !PGOFuncName !423 {
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !147
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = and i32 %6, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !147
  %17 = and i32 %16, 1048576
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %14, align 8, !tbaa !153
  %21 = load ptr, ptr %20, align 8, !tbaa !417
  %22 = getelementptr inbounds %struct.hv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !387
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %19, %4
  %27 = trunc i64 %2 to i32
  %28 = tail call ptr @Perl_utf8_hop(ptr noundef %1, i32 noundef %27) #26
  %29 = icmp eq ptr %3, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i64
  br label %39

32:                                               ; preds = %26
  %33 = load i64, ptr %3, align 8, !tbaa !223
  %34 = trunc i64 %33 to i32
  %35 = tail call ptr @Perl_utf8_hop(ptr noundef %28, i32 noundef %34) #26
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %28 to i64
  %38 = sub i64 %36, %37
  store i64 %38, ptr %3, align 8, !tbaa !223
  br label %39

39:                                               ; preds = %30, %32
  %40 = phi i64 [ %31, %30 ], [ %37, %32 ]
  %41 = ptrtoint ptr %1 to i64
  %42 = sub i64 %40, %41
  br label %45

43:                                               ; preds = %19, %12, %9
  %44 = tail call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %3, i32 noundef 32) #26
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  ret i64 %46
}

; Function Attrs: optsize
declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setsubstr(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !221
  store i64 %14, ptr %3, align 8, !tbaa !223
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  br label %20

17:                                               ; preds = %2
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 34) #26
  %19 = load ptr, ptr %0, align 8, !tbaa !153
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %12, %11 ], [ %19, %17 ]
  %22 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %23 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %25 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 6
  %26 = load i64, ptr %25, align 8, !tbaa !154
  store i64 %26, ptr %5, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  %27 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !254
  store i64 %28, ptr %6, align 8, !tbaa !223
  %29 = getelementptr inbounds %struct.xpvlv, ptr %21, i64 0, i32 10
  %30 = load i8, ptr %29, align 1, !tbaa !422
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %31, 2
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !147
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %20
  %41 = call i32 @Perl_mg_get(ptr noundef nonnull %24) #27
  %42 = load i32, ptr %36, align 4, !tbaa !147
  br label %43

43:                                               ; preds = %20, %40
  %44 = phi i32 [ %37, %20 ], [ %42, %40 ]
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 27, ptr noundef nonnull @.str.47) #26
  %48 = load i32, ptr %36, align 4, !tbaa !147
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ %44, %43 ]
  %51 = and i32 %50, 430018304
  %52 = icmp eq i32 %51, 1024
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load ptr, ptr %24, align 8, !tbaa !153
  %55 = getelementptr inbounds %struct.xpv, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !221
  store i64 %56, ptr %4, align 8, !tbaa !223
  br label %60

57:                                               ; preds = %49
  %58 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %24, ptr noundef nonnull %4, i32 noundef 0) #26
  %59 = load i32, ptr %36, align 4, !tbaa !147
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %59, %57 ], [ %50, %53 ]
  %62 = and i32 %61, 536870912
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, ptr %4, align 8, !tbaa !223
  br label %68

66:                                               ; preds = %60
  %67 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef nonnull %24) #26
  store i64 %67, ptr %4, align 8, !tbaa !223
  br label %68

68:                                               ; preds = %64, %66
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = sub nsw i64 0, %26
  %71 = select i1 %33, i64 %26, i64 %70
  %72 = sub nsw i64 0, %28
  %73 = select i1 %35, i64 %28, i64 %72
  %74 = call zeroext i1 @Perl_translate_substr_offsets(i64 noundef %69, i64 noundef %71, i1 noundef zeroext %33, i64 noundef %73, i1 noundef zeroext %35, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46) #26
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i64, ptr %6, align 8, !tbaa !223
  %78 = load i32, ptr %7, align 4, !tbaa !147
  %79 = and i32 %78, 536870912
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %123, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %83 = getelementptr inbounds %struct.cop, ptr %82, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !309
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %24, i32 noundef 0, i64 noundef 0) #26
  %89 = load i64, ptr %5, align 8, !tbaa !223
  %90 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %24, i64 noundef %89, ptr noundef nonnull %6, i32 noundef 32) #26
  store i64 %90, ptr %5, align 8, !tbaa !223
  %91 = load i64, ptr %6, align 8, !tbaa !223
  %92 = load i64, ptr %3, align 8, !tbaa !223
  call void @Perl_sv_insert_flags(ptr noundef nonnull %24, i64 noundef %90, i64 noundef %91, ptr noundef %22, i64 noundef %92, i32 noundef 0) #26
  %93 = load i32, ptr %7, align 4, !tbaa !147
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %87
  %97 = and i32 %93, 2048
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !154
  %102 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !147
  %104 = and i32 %103, 1048576
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr %101, align 8, !tbaa !153
  %108 = load ptr, ptr %107, align 8, !tbaa !417
  %109 = getelementptr inbounds %struct.hv, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !387
  %111 = and i32 %110, 268435456
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106, %87
  %114 = load i64, ptr %3, align 8, !tbaa !223
  %115 = getelementptr inbounds i8, ptr %22, i64 %114
  %116 = call i64 @Perl_utf8_length(ptr noundef %22, ptr noundef %115) #26
  br label %119

117:                                              ; preds = %106, %99, %96
  %118 = call i64 @Perl_sv_len_utf8(ptr noundef nonnull %0) #26
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i64 [ %116, %113 ], [ %118, %117 ]
  %121 = load i32, ptr %36, align 4, !tbaa !147
  %122 = or i32 %121, 536870912
  store i32 %122, ptr %36, align 4, !tbaa !147
  br label %138

123:                                              ; preds = %81, %76
  %124 = load i32, ptr %36, align 4, !tbaa !147
  %125 = and i32 %124, 536870912
  %126 = icmp eq i32 %125, 0
  %127 = load i64, ptr %5, align 8, !tbaa !223
  br i1 %126, label %135, label %128

128:                                              ; preds = %123
  %129 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %24, i64 noundef %127, ptr noundef nonnull %6, i32 noundef 32) #26
  store i64 %129, ptr %5, align 8, !tbaa !223
  %130 = load i64, ptr %3, align 8, !tbaa !223
  %131 = call ptr @Perl_bytes_to_utf8(ptr noundef %22, ptr noundef nonnull %3) #26
  %132 = load i64, ptr %5, align 8, !tbaa !223
  %133 = load i64, ptr %6, align 8, !tbaa !223
  %134 = load i64, ptr %3, align 8, !tbaa !223
  call void @Perl_sv_insert_flags(ptr noundef nonnull %24, i64 noundef %132, i64 noundef %133, ptr noundef %131, i64 noundef %134, i32 noundef 0) #26
  call void @Perl_safesysfree(ptr noundef %131) #26
  br label %138

135:                                              ; preds = %123
  %136 = load i64, ptr %3, align 8, !tbaa !223
  call void @Perl_sv_insert_flags(ptr noundef nonnull %24, i64 noundef %127, i64 noundef %77, ptr noundef %22, i64 noundef %136, i32 noundef 0) #26
  %137 = load i64, ptr %3, align 8, !tbaa !223
  br label %138

138:                                              ; preds = %128, %135, %119
  %139 = phi i64 [ %130, %128 ], [ %137, %135 ], [ %120, %119 ]
  br i1 %35, label %140, label %143

140:                                              ; preds = %138
  %141 = load ptr, ptr %0, align 8, !tbaa !153
  %142 = getelementptr inbounds %struct.xpvlv, ptr %141, i64 0, i32 7
  store i64 %139, ptr %142, align 8, !tbaa !254
  br label %143

143:                                              ; preds = %140, %138
  br i1 %33, label %150, label %144

144:                                              ; preds = %143
  %145 = sub i64 %139, %77
  %146 = load ptr, ptr %0, align 8, !tbaa !153
  %147 = getelementptr inbounds %struct.xpvlv, ptr %146, i64 0, i32 6
  %148 = load i64, ptr %147, align 8, !tbaa !154
  %149 = add i64 %145, %148
  store i64 %149, ptr %147, align 8, !tbaa !154
  br label %150

150:                                              ; preds = %144, %143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_gettaint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !198 {
  %3 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %7 = load i64, ptr %6, align 8, !tbaa !200
  %8 = and i64 %7, 1
  %9 = icmp ne i64 %8, 0
  %10 = load ptr, ptr @PL_curcop, align 8
  %11 = icmp ne ptr %10, @PL_compiling
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i8 1, ptr @PL_tainted, align 1, !tbaa !320
  br label %14

14:                                               ; preds = %2, %5, %13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_magic_settaint(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #16 !prof !198 {
  %3 = load i8, ptr @PL_tainted, align 1, !tbaa !320, !range !206, !noundef !207
  %4 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !200
  %6 = and i64 %5, -2
  %7 = zext nneg i8 %3 to i64
  %8 = or disjoint i64 %6, %7
  store i64 %8, ptr %4, align 8, !tbaa !200
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getvec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !254
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @Perl_do_vecget(ptr noundef %5, i64 noundef %7, i32 noundef %10) #26
  tail call void @Perl_sv_setuv(ptr noundef nonnull %0, i64 noundef %11) #26
  ret i32 0
}

; Function Attrs: optsize
declare i64 @Perl_do_vecget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setvec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !424 {
  tail call void @Perl_do_vecset(ptr noundef %0) #26
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_do_vecset(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_defelem_target(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !425 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6, !prof !426

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 121) #27
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %1, %2 ], [ %5, %4 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.xpvlv, ptr %8, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !254
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %81, label %12, !prof !426

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !255
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !426

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xpvlv, ptr %8, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !251
  %19 = tail call ptr @Perl_hv_common(ptr noundef %18, ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %84, label %21, !prof !427

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.he, ptr %19, i64 0, i32 2
  br label %61

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.xpvlv, ptr %8, i64 0, i32 6
  %25 = load i64, ptr %24, align 8, !tbaa !154
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %27, label %84

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xpvlv, ptr %8, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !251
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !147
  %32 = and i32 %31, 8388608
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @Perl_mg_size(ptr noundef nonnull %29) #27
  %36 = sext i32 %35 to i64
  br label %41

37:                                               ; preds = %27
  %38 = load ptr, ptr %29, align 8, !tbaa !256
  %39 = getelementptr inbounds %struct.xpvav, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !231
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i64 [ %36, %34 ], [ %40, %37 ]
  %43 = icmp sgt i64 %25, %42
  br i1 %43, label %84, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %30, align 4, !tbaa !428
  %46 = and i32 %45, 8388608
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 8, !tbaa !153
  %50 = getelementptr inbounds %struct.xpvlv, ptr %49, i64 0, i32 6
  %51 = load i64, ptr %50, align 8, !tbaa !154
  %52 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %29, i64 noundef %51, i32 noundef 0) #26
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %61

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !154
  %57 = load ptr, ptr %0, align 8, !tbaa !153
  %58 = getelementptr inbounds %struct.xpvlv, ptr %57, i64 0, i32 6
  %59 = load i64, ptr %58, align 8, !tbaa !154
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  br label %61

61:                                               ; preds = %48, %54, %21
  %62 = phi ptr [ %22, %21 ], [ %60, %54 ], [ %52, %48 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !154
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65, !prof !429

65:                                               ; preds = %61
  %66 = icmp eq ptr %63, @PL_sv_undef
  br i1 %66, label %84, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 8, !tbaa !153
  %69 = getelementptr inbounds %struct.xpvlv, ptr %68, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !251
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %70) #27
  %71 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !192
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !192
  %74 = load ptr, ptr %0, align 8, !tbaa !153
  %75 = getelementptr inbounds %struct.xpvlv, ptr %74, i64 0, i32 8
  store ptr %63, ptr %75, align 8, !tbaa !251
  %76 = getelementptr inbounds %struct.xpvlv, ptr %74, i64 0, i32 7
  store i64 0, ptr %76, align 8, !tbaa !254
  %77 = load ptr, ptr %13, align 8, !tbaa !255
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %77) #27
  store ptr null, ptr %13, align 8, !tbaa !255
  %78 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 4
  %79 = load i8, ptr %78, align 1, !tbaa !164
  %80 = and i8 %79, -3
  store i8 %80, ptr %78, align 1, !tbaa !164
  br label %84

81:                                               ; preds = %6
  %82 = getelementptr inbounds %struct.xpvlv, ptr %8, i64 0, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !251
  br label %84

84:                                               ; preds = %48, %41, %16, %23, %61, %65, %67, %81
  %85 = phi ptr [ %83, %81 ], [ %63, %67 ], [ @PL_sv_undef, %65 ], [ null, %61 ], [ null, %23 ], [ null, %16 ], [ null, %41 ], [ null, %48 ]
  ret ptr %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getdefelem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !425 {
  %3 = tail call ptr @Perl_defelem_target(ptr noundef %0, ptr noundef %1) #27
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %3, i32 noundef 1538) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setdefelem(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !198 {
  %3 = load ptr, ptr %0, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !254
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @Perl_vivify_defelem(ptr noundef nonnull %0) #27
  %8 = load ptr, ptr %0, align 8, !tbaa !153
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %struct.xpvlv, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !251
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %12, ptr noundef nonnull %0, i32 noundef 1538) #26
  %15 = load ptr, ptr %0, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.xpvlv, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !251
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !147
  %20 = and i32 %19, 4194304
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = tail call i32 @Perl_mg_set(ptr noundef nonnull %17) #27
  br label %24

24:                                               ; preds = %14, %22, %9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_killbackrefs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !430 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  tail call void @Perl_sv_kill_backrefs(ptr noundef %0, ptr noundef %4) #26
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_kill_backrefs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @Perl_magic_setmglob(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #17 !prof !431 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  store i64 -1, ptr %3, align 8, !tbaa !200
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setuvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !432
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ufuncs, ptr %4, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !353
  %13 = tail call i32 %8(i64 noundef %12, ptr noundef %0) #26
  br label %14

14:                                               ; preds = %10, %6, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_magic_setregexp(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 2, !tbaa !183
  %5 = icmp eq i8 %4, 66
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = and i32 %8, 1073741823
  store i32 %9, ptr %7, align 4, !tbaa !147
  br label %10

10:                                               ; preds = %6, %2
  %11 = sext i8 %4 to i32
  %12 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef %11) #26
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setlvref(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #26
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !360
  %11 = lshr i16 %10, 4
  %12 = and i16 %11, 3
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !147
  %17 = and i32 %16, 255
  switch i16 %12, label %24 [
    i16 0, label %18
    i16 1, label %20
    i16 2, label %22
    i16 3, label %25
  ]

18:                                               ; preds = %8
  %19 = icmp ult i32 %17, 11
  br i1 %19, label %29, label %27

20:                                               ; preds = %8
  %21 = icmp eq i32 %17, 11
  br i1 %21, label %29, label %27

22:                                               ; preds = %8
  %23 = icmp eq i32 %17, 12
  br i1 %23, label %29, label %27

24:                                               ; preds = %8
  unreachable

25:                                               ; preds = %8
  %26 = icmp eq i32 %17, 13
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %20, %18, %25
  %28 = phi ptr [ @.str.49, %18 ], [ @.str.52, %25 ], [ @.str.50, %20 ], [ @.str.51, %22 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53, ptr noundef nonnull %28) #26
  br label %29

29:                                               ; preds = %22, %20, %18, %27, %25
  %30 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !255
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !147
  %36 = trunc i32 %35 to i8
  switch i8 %36, label %89 [
    i8 0, label %37
    i8 9, label %49
    i8 11, label %57
    i8 12, label %79
  ]

37:                                               ; preds = %29, %33
  %38 = load ptr, ptr @PL_curpad, align 8, !tbaa !177
  %39 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !200
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !177
  %43 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !154
  %45 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %44) #27
  %46 = load ptr, ptr @PL_curpad, align 8, !tbaa !177
  %47 = load i64, ptr %39, align 8, !tbaa !200
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %44, ptr %48, align 8, !tbaa !177
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %42) #27
  br label %89

49:                                               ; preds = %33
  tail call void @Perl_gv_setref(ptr noundef nonnull %31, ptr noundef nonnull %0) #26
  %50 = load ptr, ptr %30, align 8, !tbaa !255
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !147
  %53 = and i32 %52, 4194304
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %49
  %56 = tail call i32 @Perl_mg_set(ptr noundef nonnull %50) #27
  br label %89

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !147
  %62 = and i32 %61, 2097408
  %63 = icmp eq i32 %62, 256
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load ptr, ptr %59, align 8, !tbaa !153
  %66 = getelementptr inbounds %struct.xpviv, ptr %65, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !154
  br label %70

68:                                               ; preds = %57
  %69 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %59, i32 noundef 2) #26
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i64 [ %67, %64 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !154
  %74 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !192
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !192
  %77 = load ptr, ptr %72, align 8, !tbaa !154
  %78 = tail call ptr @Perl_av_store(ptr noundef nonnull %31, i64 noundef %71, ptr noundef %77) #26
  br label %89

79:                                               ; preds = %33
  %80 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !199
  %82 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !154
  %84 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !192
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !192
  %87 = load ptr, ptr %82, align 8, !tbaa !154
  %88 = tail call ptr @Perl_hv_common(ptr noundef nonnull %31, ptr noundef %81, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %87, i32 noundef 0) #26
  br label %89

89:                                               ; preds = %55, %49, %79, %33, %70, %37
  %90 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %91 = load i8, ptr %90, align 1, !tbaa !164
  %92 = icmp sgt i8 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 92) #26
  br label %95

95:                                               ; preds = %89, %93
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc_NN(ptr noundef returned %0) unnamed_addr #18 !prof !198 !PGOFuncName !433 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !192
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !192
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_gv_setref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_set(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !434 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %7 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %32, !prof !435

10:                                               ; preds = %2
  %11 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !200
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !293
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %238, %13
  %21 = phi ptr [ %236, %238 ], [ %18, %13 ]
  %22 = phi i32 [ %241, %238 ], [ %16, %13 ]
  %23 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %21) #27
  %24 = getelementptr inbounds %struct.regexp, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !316
  %26 = getelementptr inbounds %struct.regexp_engine, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !436
  tail call void %27(ptr noundef nonnull %21, i32 noundef %22, ptr noundef %0) #26
  br label %1029

28:                                               ; preds = %231, %234, %238, %10, %13
  %29 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %1029

31:                                               ; preds = %28
  tail call void @Perl_croak_no_modify() #26
  br label %1029

32:                                               ; preds = %2
  %33 = load i8, ptr %8, align 1, !tbaa !154
  switch i8 %33, label %1029 [
    i8 1, label %34
    i8 3, label %90
    i8 4, label %105
    i8 5, label %120
    i8 6, label %187
    i8 8, label %201
    i8 9, label %215
    i8 14, label %231
    i8 15, label %243
    i8 16, label %327
    i8 20, label %346
    i8 21, label %359
    i8 23, label %366
    i8 46, label %492
    i8 94, label %546
    i8 126, label %571
    i8 61, label %596
    i8 45, label %616
    i8 37, label %644
    i8 124, label %664
    i8 47, label %717
    i8 92, label %766
    i8 91, label %781
    i8 63, label %796
    i8 33, label %813
    i8 60, label %837
    i8 62, label %861
    i8 40, label %885
    i8 41, label %909
    i8 58, label %933
    i8 36, label %945
    i8 48, label %968
  ], !prof !437

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !147
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  %45 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !177
  br i1 %44, label %46, label %47

46:                                               ; preds = %34
  tail call void @Perl_sv_copypv_flags(ptr noundef %45, ptr noundef nonnull %0, i32 noundef 2) #26
  br label %55

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !147
  %50 = and i32 %49, 1610547455
  store i32 %50, ptr %48, align 4, !tbaa !147
  %51 = and i32 %49, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %45) #26
  br label %55

55:                                               ; preds = %47, %53, %46
  %56 = load ptr, ptr @PL_bodytarget, align 8, !tbaa !177
  %57 = load ptr, ptr %56, align 8, !tbaa !153
  %58 = getelementptr inbounds %struct.xpviv, ptr %57, i64 0, i32 4
  store i64 0, ptr %58, align 8, !tbaa !154
  %59 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !147
  %61 = and i32 %60, 1024
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !154
  %66 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %65, i32 noundef 10) #29
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %75, %68 ], [ %66, %63 ]
  %70 = load ptr, ptr %56, align 8, !tbaa !153
  %71 = getelementptr inbounds %struct.xpviv, ptr %70, i64 0, i32 4
  %72 = load i64, ptr %71, align 8, !tbaa !154
  %73 = add nsw i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !154
  %74 = getelementptr inbounds i8, ptr %69, i64 1
  %75 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %74, i32 noundef 10) #29
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %68, !llvm.loop !438

77:                                               ; preds = %68, %63, %55
  %78 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %1029, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 116) #27
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.magic, ptr %81, i64 0, i32 5
  %85 = load i64, ptr %84, align 8, !tbaa !200
  %86 = and i64 %85, 1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void @Perl_sv_magic(ptr noundef nonnull %56, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #26
  br label %1029

89:                                               ; preds = %83, %80
  tail call void @Perl_sv_untaint(ptr noundef nonnull %56) #26
  br label %1029

90:                                               ; preds = %32
  %91 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !147
  %93 = and i32 %92, 2097408
  %94 = icmp eq i32 %93, 256
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load ptr, ptr %0, align 8, !tbaa !153
  %97 = getelementptr inbounds %struct.xpviv, ptr %96, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !154
  br label %101

99:                                               ; preds = %90
  %100 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi i64 [ %98, %95 ], [ %100, %99 ]
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i8
  store i8 %104, ptr @PL_minus_c, align 1, !tbaa !320
  br label %1029

105:                                              ; preds = %32
  %106 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !147
  %108 = and i32 %107, 2097408
  %109 = icmp eq i32 %108, 256
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load ptr, ptr %0, align 8, !tbaa !153
  %112 = getelementptr inbounds %struct.xpviv, ptr %111, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !154
  br label %116

114:                                              ; preds = %105
  %115 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i64 [ %113, %110 ], [ %115, %114 ]
  %118 = trunc i64 %117 to i32
  %119 = or i32 %118, -2147483648
  store volatile i32 %119, ptr @PL_debug, align 4, !tbaa !195
  br label %1029

120:                                              ; preds = %32
  %121 = getelementptr inbounds i8, ptr %8, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !154
  switch i8 %122, label %150 [
    i8 0, label %123
    i8 95, label %138
  ], !prof !439

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !147
  %126 = and i32 %125, 2097408
  %127 = icmp eq i32 %126, 256
  br i1 %127, label %128, label %132, !prof !322

128:                                              ; preds = %123
  %129 = load ptr, ptr %0, align 8, !tbaa !153
  %130 = getelementptr inbounds %struct.xpviv, ptr %129, i64 0, i32 4
  %131 = load i64, ptr %130, align 8, !tbaa !154
  br label %134

132:                                              ; preds = %123
  %133 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi i64 [ %131, %128 ], [ %133, %132 ]
  %136 = trunc i64 %135 to i32
  %137 = tail call ptr @__errno_location() #30
  store i32 %136, ptr %137, align 4, !tbaa !195
  br label %1029

138:                                              ; preds = %120
  %139 = load ptr, ptr @PL_curcop, align 8, !tbaa !177
  %140 = getelementptr inbounds %struct.cop, ptr %139, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !440
  %142 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.54, i32 noundef 0) #26
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  tail call void @Perl_croak_no_modify() #26
  br label %145

145:                                              ; preds = %138, %144
  %146 = load ptr, ptr %7, align 8, !tbaa !199
  %147 = getelementptr inbounds i8, ptr %146, i64 2
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(8) @.str.7) #29
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %1029

150:                                              ; preds = %120
  %151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(8) @.str.7) #29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %168, label %1029

153:                                              ; preds = %145
  %154 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !177
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %154) #27
  %155 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !147
  %157 = insertelement <4 x i32> poison, i32 %156, i64 0
  %158 = shufflevector <4 x i32> %157, <4 x i32> poison, <4 x i32> zeroinitializer
  %159 = and <4 x i32> %158, <i32 255, i32 65280, i32 16777471, i32 2097152>
  %160 = icmp eq <4 x i32> %159, <i32 8, i32 0, i32 16777226, i32 0>
  %161 = icmp ne <4 x i32> %159, <i32 8, i32 0, i32 16777226, i32 0>
  %162 = shufflevector <4 x i1> %160, <4 x i1> %161, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %163 = bitcast <4 x i1> %162 to i4
  %164 = icmp eq i4 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #26
  store ptr %166, ptr @PL_lex_encoding, align 8, !tbaa !177
  br label %1029

167:                                              ; preds = %153
  store ptr null, ptr @PL_lex_encoding, align 8, !tbaa !177
  br label %1029

168:                                              ; preds = %150
  %169 = load ptr, ptr @PL_encoding, align 8, !tbaa !177
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %169) #27
  %170 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !147
  %172 = insertelement <4 x i32> poison, i32 %171, i64 0
  %173 = shufflevector <4 x i32> %172, <4 x i32> poison, <4 x i32> zeroinitializer
  %174 = and <4 x i32> %173, <i32 255, i32 65280, i32 16777471, i32 2097152>
  %175 = icmp eq <4 x i32> %174, <i32 8, i32 0, i32 16777226, i32 0>
  %176 = icmp ne <4 x i32> %174, <i32 8, i32 0, i32 16777226, i32 0>
  %177 = shufflevector <4 x i1> %175, <4 x i1> %176, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %178 = bitcast <4 x i1> %177 to i4
  %179 = icmp eq i4 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %168
  %181 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  %182 = icmp eq i8 %181, 2
  br i1 %182, label %184, label %183

183:                                              ; preds = %180
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.55) #26
  br label %184

184:                                              ; preds = %183, %180
  %185 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #26
  store ptr %185, ptr @PL_encoding, align 8, !tbaa !177
  br label %1029

186:                                              ; preds = %168
  store ptr null, ptr @PL_encoding, align 8, !tbaa !177
  br label %1029

187:                                              ; preds = %32
  %188 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !147
  %190 = and i32 %189, 2097408
  %191 = icmp eq i32 %190, 256
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load ptr, ptr %0, align 8, !tbaa !153
  %194 = getelementptr inbounds %struct.xpviv, ptr %193, i64 0, i32 4
  %195 = load i64, ptr %194, align 8, !tbaa !154
  br label %198

196:                                              ; preds = %187
  %197 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i64 [ %195, %192 ], [ %197, %196 ]
  %200 = trunc i64 %199 to i32
  store i32 %200, ptr @PL_maxsysfd, align 4, !tbaa !195
  br label %1029

201:                                              ; preds = %32
  %202 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !147
  %204 = and i32 %203, 2097408
  %205 = icmp eq i32 %204, 256
  br i1 %205, label %206, label %210, !prof !441

206:                                              ; preds = %201
  %207 = load ptr, ptr %0, align 8, !tbaa !153
  %208 = getelementptr inbounds %struct.xpviv, ptr %207, i64 0, i32 4
  %209 = load i64, ptr %208, align 8, !tbaa !154
  br label %212

210:                                              ; preds = %201
  %211 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %212

212:                                              ; preds = %210, %206
  %213 = phi i64 [ %209, %206 ], [ %211, %210 ]
  %214 = trunc i64 %213 to i32
  store i32 %214, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  br label %1029

215:                                              ; preds = %32
  %216 = load ptr, ptr @PL_inplace, align 8, !tbaa !177
  tail call void @Perl_safesysfree(ptr noundef %216) #26
  %217 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !147
  %219 = and i32 %218, 65280
  %220 = icmp ne i32 %219, 0
  %221 = and i32 %218, 255
  %222 = icmp eq i32 %221, 8
  %223 = or i1 %220, %222
  %224 = and i32 %218, 16777471
  %225 = icmp eq i32 %224, 16777226
  %226 = or i1 %225, %223
  br i1 %226, label %227, label %229

227:                                              ; preds = %215
  %228 = tail call ptr @Perl_savesvpv(ptr noundef nonnull %0) #26
  br label %229

229:                                              ; preds = %215, %227
  %230 = phi ptr [ %228, %227 ], [ null, %215 ]
  store ptr %230, ptr @PL_inplace, align 8, !tbaa !177
  br label %1029

231:                                              ; preds = %32
  %232 = load ptr, ptr @PL_curpm, align 8, !tbaa !177
  %233 = icmp eq ptr %232, null
  br i1 %233, label %28, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.pmop, ptr %232, i64 0, i32 9
  %236 = load ptr, ptr %235, align 8, !tbaa !293
  %237 = icmp eq ptr %236, null
  br i1 %237, label %28, label %238

238:                                              ; preds = %234
  %239 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %236) #27
  %240 = getelementptr inbounds %struct.regexp, ptr %239, i64 0, i32 16
  %241 = load i32, ptr %240, align 4, !tbaa !335
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %28, label %20

243:                                              ; preds = %32
  %244 = getelementptr inbounds i8, ptr %8, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !154
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %243
  %248 = load ptr, ptr @PL_osname, align 8, !tbaa !177
  tail call void @Perl_safesysfree(ptr noundef %248) #26
  store ptr null, ptr @PL_osname, align 8, !tbaa !177
  %249 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %250 = load i32, ptr %249, align 4, !tbaa !147
  %251 = and i32 %250, 65280
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %250, 255
  %254 = icmp eq i32 %253, 8
  %255 = or i1 %252, %254
  %256 = and i32 %250, 16777471
  %257 = icmp eq i32 %256, 16777226
  %258 = or i1 %257, %255
  br i1 %258, label %259, label %1029

259:                                              ; preds = %247
  %260 = load i8, ptr @PL_tainting, align 1, !tbaa !320, !range !206, !noundef !207
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %259
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.56) #26
  br label %263

263:                                              ; preds = %259, %262
  %264 = tail call ptr @Perl_savesvpv(ptr noundef nonnull %0) #26
  store ptr %264, ptr @PL_osname, align 8, !tbaa !177
  br label %1029

265:                                              ; preds = %243
  %266 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.57) #29
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %1029

268:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %269 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %270 = load i32, ptr %269, align 4, !tbaa !147
  %271 = and i32 %270, 2098176
  %272 = icmp eq i32 %271, 1024
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = load ptr, ptr %0, align 8, !tbaa !153
  %275 = getelementptr inbounds %struct.xpv, ptr %274, i64 0, i32 2
  %276 = load i64, ptr %275, align 8, !tbaa !221
  store i64 %276, ptr %4, align 8, !tbaa !223
  %277 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !154
  br label %282

279:                                              ; preds = %268
  %280 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2) #26
  %281 = load i64, ptr %4, align 8, !tbaa !223
  br label %282

282:                                              ; preds = %279, %273
  %283 = phi i64 [ %276, %273 ], [ %281, %279 ]
  %284 = phi ptr [ %278, %273 ], [ %280, %279 ]
  %285 = call ptr @memchr(ptr noundef %284, i32 noundef 0, i64 noundef %283) #29
  %286 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %287 = or i32 %286, 786432
  store i32 %287, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %288 = icmp eq ptr %285, null
  br i1 %288, label %299, label %289

289:                                              ; preds = %282
  %290 = getelementptr inbounds i8, ptr %285, i64 1
  %291 = getelementptr inbounds i8, ptr %284, i64 %283
  %292 = ptrtoint ptr %291 to i64
  %293 = ptrtoint ptr %285 to i64
  %294 = xor i64 %293, -1
  %295 = add i64 %294, %292
  %296 = load i32, ptr %269, align 4, !tbaa !147
  %297 = and i32 %296, 536870912
  %298 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %290, i64 noundef %295, i32 noundef %297) #26
  br label %303

299:                                              ; preds = %282
  %300 = load i32, ptr %269, align 4, !tbaa !147
  %301 = and i32 %300, 536870912
  %302 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.1, i64 noundef 0, i32 noundef %301) #26
  br label %303

303:                                              ; preds = %299, %289
  %304 = phi i64 [ 0, %299 ], [ %293, %289 ]
  %305 = phi ptr [ %302, %299 ], [ %298, %289 ]
  %306 = load ptr, ptr @PL_hintgv, align 8, !tbaa !177
  %307 = getelementptr inbounds %struct.gv, ptr %306, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !154
  %309 = getelementptr inbounds %struct.gp, ptr %308, i64 0, i32 5
  %310 = load ptr, ptr %309, align 8, !tbaa !442
  %311 = call ptr @Perl_hv_common(ptr noundef %310, ptr noundef null, ptr noundef nonnull @.str.4, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %305, i32 noundef 0) #26
  %312 = call i32 @Perl_mg_set(ptr noundef %305) #27
  %313 = ptrtoint ptr %284 to i64
  %314 = sub i64 %304, %313
  %315 = load i64, ptr %4, align 8
  %316 = select i1 %288, i64 %315, i64 %314
  %317 = load i32, ptr %269, align 4, !tbaa !147
  %318 = and i32 %317, 536870912
  %319 = call ptr @Perl_newSVpvn_flags(ptr noundef %284, i64 noundef %316, i32 noundef %318) #26
  %320 = load ptr, ptr @PL_hintgv, align 8, !tbaa !177
  %321 = getelementptr inbounds %struct.gv, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !154
  %323 = getelementptr inbounds %struct.gp, ptr %322, i64 0, i32 5
  %324 = load ptr, ptr %323, align 8, !tbaa !442
  %325 = call ptr @Perl_hv_common(ptr noundef %324, ptr noundef null, ptr noundef nonnull @.str.2, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %319, i32 noundef 0) #26
  %326 = call i32 @Perl_mg_set(ptr noundef %319) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %1029

327:                                              ; preds = %32
  %328 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !147
  %330 = and i32 %329, 2097408
  %331 = icmp eq i32 %330, 256
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load ptr, ptr %0, align 8, !tbaa !153
  %334 = getelementptr inbounds %struct.xpviv, ptr %333, i64 0, i32 4
  %335 = load i64, ptr %334, align 8, !tbaa !154
  br label %338

336:                                              ; preds = %327
  %337 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %338

338:                                              ; preds = %336, %332
  %339 = phi i64 [ %335, %332 ], [ %337, %336 ]
  %340 = trunc i64 %339 to i32
  store i32 %340, ptr @PL_perldb, align 4, !tbaa !195
  %341 = icmp eq i32 %340, 0
  %342 = load ptr, ptr @PL_DBsingle, align 8
  %343 = icmp ne ptr %342, null
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %1029, label %345

345:                                              ; preds = %338
  tail call void @Perl_init_debugger() #26
  br label %1029

346:                                              ; preds = %32
  %347 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %348 = load i32, ptr %347, align 4, !tbaa !147
  %349 = and i32 %348, 2097408
  %350 = icmp eq i32 %349, 256
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = load ptr, ptr %0, align 8, !tbaa !153
  %353 = getelementptr inbounds %struct.xpviv, ptr %352, i64 0, i32 4
  %354 = load i64, ptr %353, align 8, !tbaa !154
  br label %357

355:                                              ; preds = %346
  %356 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %357

357:                                              ; preds = %355, %351
  %358 = phi i64 [ %354, %351 ], [ %356, %355 ]
  store i64 %358, ptr @PL_basetime, align 8, !tbaa !223
  br label %1029

359:                                              ; preds = %32
  %360 = getelementptr inbounds i8, ptr %8, i64 1
  %361 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %360, ptr noundef nonnull dereferenceable(9) @.str.15) #29
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %1029

363:                                              ; preds = %359
  %364 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #26
  %365 = trunc i64 %364 to i8
  store i8 %365, ptr @PL_utf8cache, align 1, !tbaa !154
  br label %1029

366:                                              ; preds = %32
  %367 = getelementptr inbounds i8, ptr %8, i64 1
  %368 = load i8, ptr %367, align 1, !tbaa !154
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %394, !prof !443

370:                                              ; preds = %366
  %371 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  %372 = and i8 %371, 6
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %1029

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %376 = load i32, ptr %375, align 4, !tbaa !147
  %377 = and i32 %376, 2097408
  %378 = icmp eq i32 %377, 256
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load ptr, ptr %0, align 8, !tbaa !153
  %381 = getelementptr inbounds %struct.xpviv, ptr %380, i64 0, i32 4
  %382 = load i64, ptr %381, align 8, !tbaa !154
  br label %386

383:                                              ; preds = %374
  %384 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  %385 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  br label %386

386:                                              ; preds = %383, %379
  %387 = phi i8 [ %371, %379 ], [ %385, %383 ]
  %388 = phi i64 [ %382, %379 ], [ %384, %383 ]
  %389 = and i8 %387, -2
  %390 = and i64 %388, 4294967295
  %391 = icmp ne i64 %390, 0
  %392 = zext i1 %391 to i8
  %393 = or disjoint i8 %389, %392
  store i8 %393, ptr @PL_dowarn, align 1, !tbaa !154
  br label %1029

394:                                              ; preds = %366
  %395 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %367, ptr noundef nonnull dereferenceable(12) @.str.16) #29
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %1029, !prof !444

397:                                              ; preds = %394
  %398 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  %399 = and i8 %398, 6
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %1029, !prof !444

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %403 = load i32, ptr %402, align 4, !tbaa !147
  %404 = and i32 %403, 1024
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %407, !prof !443

406:                                              ; preds = %401
  store ptr null, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  br label %1029

407:                                              ; preds = %401
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %408 = and i32 %403, 2098176
  %409 = icmp eq i32 %408, 1024
  br i1 %409, label %410, label %416, !prof !444

410:                                              ; preds = %407
  %411 = load ptr, ptr %0, align 8, !tbaa !153
  %412 = getelementptr inbounds %struct.xpv, ptr %411, i64 0, i32 2
  %413 = load i64, ptr %412, align 8, !tbaa !221
  store i64 %413, ptr %5, align 8, !tbaa !223
  %414 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !154
  br label %419

416:                                              ; preds = %407
  %417 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #26
  %418 = load i64, ptr %5, align 8, !tbaa !223
  br label %419

419:                                              ; preds = %416, %410
  %420 = phi i64 [ %413, %410 ], [ %418, %416 ]
  %421 = phi ptr [ %415, %410 ], [ %417, %416 ]
  %422 = icmp eq i64 %420, 0
  br i1 %422, label %438, label %423, !prof !445

423:                                              ; preds = %419, %423
  %424 = phi i64 [ %433, %423 ], [ 0, %419 ]
  %425 = phi i32 [ %430, %423 ], [ 0, %419 ]
  %426 = phi i32 [ %432, %423 ], [ 0, %419 ]
  %427 = getelementptr inbounds i8, ptr %421, i64 %424
  %428 = load i8, ptr %427, align 1, !tbaa !154
  %429 = sext i8 %428 to i32
  %430 = or i32 %425, %429
  %431 = and i32 %429, 170
  %432 = or i32 %431, %426
  %433 = add nuw i64 %424, 1
  %434 = icmp eq i64 %433, %420
  br i1 %434, label %435, label %423, !prof !446, !llvm.loop !447

435:                                              ; preds = %423
  %436 = icmp eq i32 %430, 0
  %437 = icmp ne i32 %432, 0
  br i1 %436, label %438, label %443, !prof !448

438:                                              ; preds = %419, %435
  %439 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %440 = ptrtoint ptr %439 to i64
  switch i64 %440, label %441 [
    i64 16, label %442
    i64 8, label %442
    i64 0, label %442
  ]

441:                                              ; preds = %438
  call void @free(ptr noundef %439) #26
  br label %442

442:                                              ; preds = %438, %438, %438, %441
  store ptr inttoptr (i64 16 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  br label %491

443:                                              ; preds = %435
  %444 = load i32, ptr %402, align 4, !tbaa !147
  %445 = and i32 %444, 2098176
  %446 = icmp eq i32 %445, 1024
  br i1 %446, label %447, label %450, !prof !444

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !154
  br label %452

450:                                              ; preds = %443
  %451 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 34) #26
  br label %452

452:                                              ; preds = %450, %447
  %453 = phi ptr [ %449, %447 ], [ %451, %450 ]
  %454 = load i8, ptr %453, align 1, !tbaa !154
  %455 = and i8 %454, 1
  %456 = icmp eq i8 %455, 0
  %457 = select i1 %456, i1 true, i1 %437
  br i1 %457, label %465, label %458, !prof !449

458:                                              ; preds = %452
  %459 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %460 = ptrtoint ptr %459 to i64
  switch i64 %460, label %461 [
    i64 16, label %462
    i64 8, label %462
    i64 0, label %462
  ]

461:                                              ; preds = %458
  call void @free(ptr noundef %459) #26
  br label %462

462:                                              ; preds = %458, %458, %458, %461
  store ptr inttoptr (i64 8 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  %463 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  %464 = or i8 %463, 8
  store i8 %464, ptr @PL_dowarn, align 1, !tbaa !154
  br label %491

465:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  %466 = load i32, ptr %402, align 4, !tbaa !147
  %467 = and i32 %466, 2098176
  %468 = icmp eq i32 %467, 1024
  br i1 %468, label %469, label %475, !prof !450

469:                                              ; preds = %465
  %470 = load ptr, ptr %0, align 8, !tbaa !153
  %471 = getelementptr inbounds %struct.xpv, ptr %470, i64 0, i32 2
  %472 = load i64, ptr %471, align 8, !tbaa !221
  store i64 %472, ptr %6, align 8, !tbaa !223
  %473 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !154
  br label %478

475:                                              ; preds = %465
  %476 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 34) #26
  %477 = load i64, ptr %6, align 8, !tbaa !223
  br label %478

478:                                              ; preds = %475, %469
  %479 = phi i64 [ %472, %469 ], [ %477, %475 ]
  %480 = phi ptr [ %474, %469 ], [ %476, %475 ]
  %481 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  %482 = call ptr @Perl_new_warnings_bitfield(ptr noundef %481, ptr noundef %480, i64 noundef %479) #26
  store ptr %482, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !332
  %483 = getelementptr inbounds i8, ptr %482, i64 11
  %484 = load i8, ptr %483, align 1, !tbaa !154
  %485 = and i8 %484, 16
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %490, label %487, !prof !451

487:                                              ; preds = %478
  %488 = load i8, ptr @PL_dowarn, align 1, !tbaa !154
  %489 = or i8 %488, 8
  store i8 %489, ptr @PL_dowarn, align 1, !tbaa !154
  br label %490

490:                                              ; preds = %487, %478
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  br label %491

491:                                              ; preds = %462, %490, %442
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  br label %1029

492:                                              ; preds = %32
  %493 = load i8, ptr @PL_localizing, align 1, !tbaa !154
  switch i8 %493, label %1029 [
    i8 0, label %495
    i8 1, label %494
  ], !prof !452

494:                                              ; preds = %492
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_last_in_gv) #26
  br label %1029

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %497 = load i32, ptr %496, align 4, !tbaa !147
  %498 = and i32 %497, 65280
  %499 = icmp ne i32 %498, 0
  %500 = and i32 %497, 255
  %501 = icmp eq i32 %500, 8
  %502 = or i1 %499, %501
  br i1 %502, label %509, label %503

503:                                              ; preds = %495
  %504 = and i32 %497, 16777471
  %505 = icmp eq i32 %504, 16777226
  %506 = load ptr, ptr @PL_last_in_gv, align 8
  %507 = icmp ne ptr %506, null
  %508 = select i1 %505, i1 %507, i1 false
  br i1 %508, label %512, label %1029

509:                                              ; preds = %495
  %510 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !177
  %511 = icmp eq ptr %510, null
  br i1 %511, label %1029, label %512

512:                                              ; preds = %503, %509
  %513 = phi ptr [ %506, %503 ], [ %510, %509 ]
  %514 = getelementptr inbounds %struct.sv, ptr %513, i64 0, i32 2
  %515 = load i32, ptr %514, align 4, !tbaa !147
  %516 = and i32 %515, 255
  %517 = add nsw i32 %516, -9
  %518 = icmp ult i32 %517, 2
  br i1 %518, label %519, label %1029

519:                                              ; preds = %512
  %520 = getelementptr inbounds %struct.gv, ptr %513, i64 0, i32 3
  %521 = load ptr, ptr %520, align 8, !tbaa !154
  %522 = icmp eq ptr %521, null
  br i1 %522, label %1029, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.gp, ptr %521, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !337
  %526 = icmp eq ptr %525, null
  br i1 %526, label %1029, label %527

527:                                              ; preds = %523
  %528 = and i32 %497, 2097408
  %529 = icmp eq i32 %528, 256
  br i1 %529, label %530, label %534

530:                                              ; preds = %527
  %531 = load ptr, ptr %0, align 8, !tbaa !153
  %532 = getelementptr inbounds %struct.xpviv, ptr %531, i64 0, i32 4
  %533 = load i64, ptr %532, align 8, !tbaa !154
  br label %541

534:                                              ; preds = %527
  %535 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  %536 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !177
  %537 = getelementptr inbounds %struct.gv, ptr %536, i64 0, i32 3
  %538 = load ptr, ptr %537, align 8, !tbaa !154
  %539 = getelementptr inbounds %struct.gp, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !337
  br label %541

541:                                              ; preds = %534, %530
  %542 = phi ptr [ %525, %530 ], [ %540, %534 ]
  %543 = phi i64 [ %533, %530 ], [ %535, %534 ]
  %544 = load ptr, ptr %542, align 8, !tbaa !339
  %545 = getelementptr inbounds %struct.xpvio, ptr %544, i64 0, i32 4
  store i64 %543, ptr %545, align 8, !tbaa !154
  br label %1029

546:                                              ; preds = %32
  %547 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %548 = getelementptr inbounds %struct.gv, ptr %547, i64 0, i32 3
  %549 = load ptr, ptr %548, align 8, !tbaa !154
  %550 = getelementptr inbounds %struct.gp, ptr %549, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !337
  %552 = load ptr, ptr %551, align 8, !tbaa !339
  %553 = getelementptr inbounds %struct.xpvio, ptr %552, i64 0, i32 10
  %554 = load ptr, ptr %553, align 8, !tbaa !341
  tail call void @Perl_safesysfree(ptr noundef %554) #26
  %555 = tail call ptr @Perl_savesvpv(ptr noundef %0) #26
  %556 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %557 = getelementptr inbounds %struct.gv, ptr %556, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !154
  %559 = getelementptr inbounds %struct.gp, ptr %558, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !337
  %561 = load ptr, ptr %560, align 8, !tbaa !339
  %562 = getelementptr inbounds %struct.xpvio, ptr %561, i64 0, i32 10
  store ptr %555, ptr %562, align 8, !tbaa !341
  %563 = tail call ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef 1, i32 noundef 15) #26
  %564 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %565 = getelementptr inbounds %struct.gv, ptr %564, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !154
  %567 = getelementptr inbounds %struct.gp, ptr %566, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !337
  %569 = load ptr, ptr %568, align 8, !tbaa !339
  %570 = getelementptr inbounds %struct.xpvio, ptr %569, i64 0, i32 11
  store ptr %563, ptr %570, align 8, !tbaa !453
  br label %1029

571:                                              ; preds = %32
  %572 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %573 = getelementptr inbounds %struct.gv, ptr %572, i64 0, i32 3
  %574 = load ptr, ptr %573, align 8, !tbaa !154
  %575 = getelementptr inbounds %struct.gp, ptr %574, i64 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !337
  %577 = load ptr, ptr %576, align 8, !tbaa !339
  %578 = getelementptr inbounds %struct.xpvio, ptr %577, i64 0, i32 12
  %579 = load ptr, ptr %578, align 8, !tbaa !345
  tail call void @Perl_safesysfree(ptr noundef %579) #26
  %580 = tail call ptr @Perl_savesvpv(ptr noundef %0) #26
  %581 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %582 = getelementptr inbounds %struct.gv, ptr %581, i64 0, i32 3
  %583 = load ptr, ptr %582, align 8, !tbaa !154
  %584 = getelementptr inbounds %struct.gp, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !337
  %586 = load ptr, ptr %585, align 8, !tbaa !339
  %587 = getelementptr inbounds %struct.xpvio, ptr %586, i64 0, i32 12
  store ptr %580, ptr %587, align 8, !tbaa !345
  %588 = tail call ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef 1, i32 noundef 15) #26
  %589 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %590 = getelementptr inbounds %struct.gv, ptr %589, i64 0, i32 3
  %591 = load ptr, ptr %590, align 8, !tbaa !154
  %592 = getelementptr inbounds %struct.gp, ptr %591, i64 0, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !337
  %594 = load ptr, ptr %593, align 8, !tbaa !339
  %595 = getelementptr inbounds %struct.xpvio, ptr %594, i64 0, i32 13
  store ptr %588, ptr %595, align 8, !tbaa !454
  br label %1029

596:                                              ; preds = %32
  %597 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %598 = load i32, ptr %597, align 4, !tbaa !147
  %599 = and i32 %598, 2097408
  %600 = icmp eq i32 %599, 256
  br i1 %600, label %601, label %605

601:                                              ; preds = %596
  %602 = load ptr, ptr %0, align 8, !tbaa !153
  %603 = getelementptr inbounds %struct.xpviv, ptr %602, i64 0, i32 4
  %604 = load i64, ptr %603, align 8, !tbaa !154
  br label %607

605:                                              ; preds = %596
  %606 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %607

607:                                              ; preds = %605, %601
  %608 = phi i64 [ %604, %601 ], [ %606, %605 ]
  %609 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %610 = getelementptr inbounds %struct.gv, ptr %609, i64 0, i32 3
  %611 = load ptr, ptr %610, align 8, !tbaa !154
  %612 = getelementptr inbounds %struct.gp, ptr %611, i64 0, i32 1
  %613 = load ptr, ptr %612, align 8, !tbaa !337
  %614 = load ptr, ptr %613, align 8, !tbaa !339
  %615 = getelementptr inbounds %struct.xpvio, ptr %614, i64 0, i32 8
  store i64 %608, ptr %615, align 8, !tbaa !346
  br label %1029

616:                                              ; preds = %32
  %617 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %618 = load i32, ptr %617, align 4, !tbaa !147
  %619 = and i32 %618, 2097408
  %620 = icmp eq i32 %619, 256
  br i1 %620, label %621, label %625

621:                                              ; preds = %616
  %622 = load ptr, ptr %0, align 8, !tbaa !153
  %623 = getelementptr inbounds %struct.xpviv, ptr %622, i64 0, i32 4
  %624 = load i64, ptr %623, align 8, !tbaa !154
  br label %627

625:                                              ; preds = %616
  %626 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %627

627:                                              ; preds = %625, %621
  %628 = phi i64 [ %624, %621 ], [ %626, %625 ]
  %629 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %630 = getelementptr inbounds %struct.gv, ptr %629, i64 0, i32 3
  %631 = load ptr, ptr %630, align 8, !tbaa !154
  %632 = getelementptr inbounds %struct.gp, ptr %631, i64 0, i32 1
  %633 = load ptr, ptr %632, align 8, !tbaa !337
  %634 = load ptr, ptr %633, align 8, !tbaa !339
  %635 = getelementptr inbounds %struct.xpvio, ptr %634, i64 0, i32 9
  store i64 %628, ptr %635, align 8, !tbaa !347
  %636 = load ptr, ptr %630, align 8, !tbaa !154
  %637 = getelementptr inbounds %struct.gp, ptr %636, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !337
  %639 = load ptr, ptr %638, align 8, !tbaa !339
  %640 = getelementptr inbounds %struct.xpvio, ptr %639, i64 0, i32 9
  %641 = load i64, ptr %640, align 8, !tbaa !347
  %642 = icmp slt i64 %641, 0
  br i1 %642, label %643, label %1029

643:                                              ; preds = %627
  store i64 0, ptr %640, align 8, !tbaa !347
  br label %1029

644:                                              ; preds = %32
  %645 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %646 = load i32, ptr %645, align 4, !tbaa !147
  %647 = and i32 %646, 2097408
  %648 = icmp eq i32 %647, 256
  br i1 %648, label %649, label %653

649:                                              ; preds = %644
  %650 = load ptr, ptr %0, align 8, !tbaa !153
  %651 = getelementptr inbounds %struct.xpviv, ptr %650, i64 0, i32 4
  %652 = load i64, ptr %651, align 8, !tbaa !154
  br label %655

653:                                              ; preds = %644
  %654 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %655

655:                                              ; preds = %653, %649
  %656 = phi i64 [ %652, %649 ], [ %654, %653 ]
  %657 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %658 = getelementptr inbounds %struct.gv, ptr %657, i64 0, i32 3
  %659 = load ptr, ptr %658, align 8, !tbaa !154
  %660 = getelementptr inbounds %struct.gp, ptr %659, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !337
  %662 = load ptr, ptr %661, align 8, !tbaa !339
  %663 = getelementptr inbounds %struct.xpvio, ptr %662, i64 0, i32 7
  store i64 %656, ptr %663, align 8, !tbaa !348
  br label %1029

664:                                              ; preds = %32
  %665 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !177
  %666 = icmp eq ptr %665, null
  br i1 %666, label %1029, label %667, !prof !455

667:                                              ; preds = %664
  %668 = getelementptr inbounds %struct.sv, ptr %665, i64 0, i32 2
  %669 = load i32, ptr %668, align 4, !tbaa !147
  %670 = and i32 %669, 255
  %671 = add nsw i32 %670, -9
  %672 = icmp ult i32 %671, 2
  br i1 %672, label %673, label %1029, !prof !456

673:                                              ; preds = %667
  %674 = getelementptr inbounds %struct.gv, ptr %665, i64 0, i32 3
  %675 = load ptr, ptr %674, align 8, !tbaa !154
  %676 = icmp eq ptr %675, null
  br i1 %676, label %1029, label %677, !prof !455

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.gp, ptr %675, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !337
  %680 = icmp eq ptr %679, null
  br i1 %680, label %1029, label %681, !prof !189

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %683 = load i32, ptr %682, align 4, !tbaa !147
  %684 = and i32 %683, 2097408
  %685 = icmp eq i32 %684, 256
  br i1 %685, label %686, label %690, !prof !457

686:                                              ; preds = %681
  %687 = load ptr, ptr %0, align 8, !tbaa !153
  %688 = getelementptr inbounds %struct.xpviv, ptr %687, i64 0, i32 4
  %689 = load i64, ptr %688, align 8, !tbaa !154
  br label %692

690:                                              ; preds = %681
  %691 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %692

692:                                              ; preds = %690, %686
  %693 = phi i64 [ %689, %686 ], [ %691, %690 ]
  %694 = icmp eq i64 %693, 0
  %695 = load ptr, ptr %679, align 8, !tbaa !339
  %696 = getelementptr inbounds %struct.xpvio, ptr %695, i64 0, i32 17
  %697 = load i8, ptr %696, align 1, !tbaa !349
  br i1 %694, label %698, label %700, !prof !455

698:                                              ; preds = %692
  %699 = and i8 %697, -5
  store i8 %699, ptr %696, align 1, !tbaa !349
  br label %1029

700:                                              ; preds = %692
  %701 = and i8 %697, 4
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %703, label %1029, !prof !458

703:                                              ; preds = %700
  %704 = getelementptr inbounds %struct.xpvio, ptr %695, i64 0, i32 5
  %705 = load ptr, ptr %704, align 8, !tbaa !459
  %706 = icmp eq ptr %705, null
  br i1 %706, label %712, label %707, !prof !322

707:                                              ; preds = %703
  %708 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %705) #26
  %709 = load ptr, ptr %679, align 8, !tbaa !339
  %710 = getelementptr inbounds %struct.xpvio, ptr %709, i64 0, i32 17
  %711 = load i8, ptr %710, align 1, !tbaa !349
  br label %712

712:                                              ; preds = %707, %703
  %713 = phi i8 [ %711, %707 ], [ %697, %703 ]
  %714 = phi ptr [ %709, %707 ], [ %695, %703 ]
  %715 = getelementptr inbounds %struct.xpvio, ptr %714, i64 0, i32 17
  %716 = or i8 %713, 4
  store i8 %716, ptr %715, align 1, !tbaa !349
  br label %1029

717:                                              ; preds = %32
  %718 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %719 = load i32, ptr %718, align 4, !tbaa !147
  %720 = and i32 %719, 2048
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %762, label %722, !prof !460

722:                                              ; preds = %717
  %723 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %724 = load ptr, ptr %723, align 8, !tbaa !154
  %725 = tail call ptr @Perl_sv_reftype(ptr noundef %724, i32 noundef 0) #26
  %726 = load i8, ptr %725, align 1, !tbaa !154
  switch i8 %726, label %757 [
    i8 83, label %727
    i8 76, label %727
  ]

727:                                              ; preds = %722, %722
  %728 = getelementptr inbounds %struct.sv, ptr %724, i64 0, i32 2
  %729 = load i32, ptr %728, align 4, !tbaa !147
  %730 = and i32 %729, 2097408
  %731 = icmp eq i32 %730, 256
  br i1 %731, label %732, label %736

732:                                              ; preds = %727
  %733 = load ptr, ptr %724, align 8, !tbaa !153
  %734 = getelementptr inbounds %struct.xpviv, ptr %733, i64 0, i32 4
  %735 = load i64, ptr %734, align 8, !tbaa !154
  br label %738

736:                                              ; preds = %727
  %737 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %724, i32 noundef 2) #26
  br label %738

738:                                              ; preds = %736, %732
  %739 = phi i64 [ %735, %732 ], [ %737, %736 ]
  %740 = icmp slt i64 %739, 1
  br i1 %740, label %741, label %762

741:                                              ; preds = %738
  %742 = load ptr, ptr %723, align 8, !tbaa !154
  %743 = getelementptr inbounds %struct.sv, ptr %742, i64 0, i32 2
  %744 = load i32, ptr %743, align 4, !tbaa !147
  %745 = and i32 %744, 2097408
  %746 = icmp eq i32 %745, 256
  br i1 %746, label %747, label %751

747:                                              ; preds = %741
  %748 = load ptr, ptr %742, align 8, !tbaa !153
  %749 = getelementptr inbounds %struct.xpviv, ptr %748, i64 0, i32 4
  %750 = load i64, ptr %749, align 8, !tbaa !154
  br label %753

751:                                              ; preds = %741
  %752 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %742, i32 noundef 2) #26
  br label %753

753:                                              ; preds = %751, %747
  %754 = phi i64 [ %750, %747 ], [ %752, %751 ]
  %755 = icmp slt i64 %754, 0
  %756 = select i1 %755, ptr @.str.59, ptr @.str.60
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef nonnull %756) #26
  br label %762

757:                                              ; preds = %722
  %758 = load ptr, ptr @PL_rs, align 8, !tbaa !177
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %0, ptr noundef %758, i32 noundef 1538) #26
  %759 = load i8, ptr %725, align 1, !tbaa !154
  %760 = icmp eq i8 %759, 65
  %761 = select i1 %760, ptr @.str.62, ptr @.str.1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61, ptr noundef nonnull %761, ptr noundef nonnull %725) #26
  br label %762

762:                                              ; preds = %757, %753, %738, %717
  %763 = phi ptr [ %0, %717 ], [ %0, %757 ], [ @PL_sv_undef, %753 ], [ %0, %738 ]
  %764 = load ptr, ptr @PL_rs, align 8, !tbaa !177
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %764) #27
  %765 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %763) #26
  store ptr %765, ptr @PL_rs, align 8, !tbaa !177
  br label %1029

766:                                              ; preds = %32
  %767 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !177
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %767) #27
  %768 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %769 = load i32, ptr %768, align 4, !tbaa !147
  %770 = and i32 %769, 65280
  %771 = icmp ne i32 %770, 0
  %772 = and i32 %769, 255
  %773 = icmp eq i32 %772, 8
  %774 = or i1 %771, %773
  %775 = and i32 %769, 16777471
  %776 = icmp eq i32 %775, 16777226
  %777 = or i1 %776, %774
  br i1 %777, label %778, label %780

778:                                              ; preds = %766
  %779 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #26
  store ptr %779, ptr @PL_ors_sv, align 8, !tbaa !177
  br label %1029

780:                                              ; preds = %766
  store ptr null, ptr @PL_ors_sv, align 8, !tbaa !177
  br label %1029

781:                                              ; preds = %32
  %782 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %783 = load i32, ptr %782, align 4, !tbaa !147
  %784 = and i32 %783, 2097408
  %785 = icmp eq i32 %784, 256
  br i1 %785, label %786, label %790

786:                                              ; preds = %781
  %787 = load ptr, ptr %0, align 8, !tbaa !153
  %788 = getelementptr inbounds %struct.xpviv, ptr %787, i64 0, i32 4
  %789 = load i64, ptr %788, align 8, !tbaa !154
  br label %792

790:                                              ; preds = %781
  %791 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %792

792:                                              ; preds = %790, %786
  %793 = phi i64 [ %789, %786 ], [ %791, %790 ]
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %1029, label %795

795:                                              ; preds = %792
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.63) #26
  br label %1029

796:                                              ; preds = %32
  %797 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %798 = load i32, ptr %797, align 4, !tbaa !147
  %799 = and i32 %798, 2097408
  %800 = icmp eq i32 %799, 256
  br i1 %800, label %801, label %805, !prof !230

801:                                              ; preds = %796
  %802 = load ptr, ptr %0, align 8, !tbaa !153
  %803 = getelementptr inbounds %struct.xpviv, ptr %802, i64 0, i32 4
  %804 = load i64, ptr %803, align 8, !tbaa !154
  br label %807

805:                                              ; preds = %796
  %806 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %807

807:                                              ; preds = %805, %801
  %808 = phi i64 [ %804, %801 ], [ %806, %805 ]
  %809 = trunc i64 %808 to i32
  store i32 %809, ptr @PL_statusvalue, align 4, !tbaa !195
  %810 = icmp eq i32 %809, -1
  br i1 %810, label %1029, label %811, !prof !322

811:                                              ; preds = %807
  %812 = and i32 %809, 65535
  store i32 %812, ptr @PL_statusvalue, align 4, !tbaa !195
  br label %1029

813:                                              ; preds = %32
  %814 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %815 = load i32, ptr %814, align 4, !tbaa !147
  %816 = and i32 %815, 256
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %822, label %818, !prof !461

818:                                              ; preds = %813
  %819 = load ptr, ptr %0, align 8, !tbaa !153
  %820 = getelementptr inbounds %struct.xpviv, ptr %819, i64 0, i32 4
  %821 = load i64, ptr %820, align 8, !tbaa !154
  br label %833

822:                                              ; preds = %813
  %823 = and i32 %815, 65024
  %824 = icmp ne i32 %823, 0
  %825 = and i32 %815, 255
  %826 = icmp eq i32 %825, 8
  %827 = or i1 %824, %826
  %828 = and i32 %815, 16777471
  %829 = icmp eq i32 %828, 16777226
  %830 = or i1 %829, %827
  br i1 %830, label %831, label %833, !prof !462

831:                                              ; preds = %822
  %832 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %833

833:                                              ; preds = %822, %831, %818
  %834 = phi i64 [ %821, %818 ], [ %832, %831 ], [ 0, %822 ]
  %835 = trunc i64 %834 to i32
  %836 = tail call ptr @__errno_location() #30
  store i32 %835, ptr %836, align 4, !tbaa !195
  br label %1029

837:                                              ; preds = %32
  %838 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %839 = load i32, ptr %838, align 4, !tbaa !147
  %840 = and i32 %839, -2145386240
  %841 = icmp eq i32 %840, -2147483392
  br i1 %841, label %842, label %846

842:                                              ; preds = %837
  %843 = load ptr, ptr %0, align 8, !tbaa !153
  %844 = getelementptr inbounds %struct.xpvuv, ptr %843, i64 0, i32 4
  %845 = load i64, ptr %844, align 8, !tbaa !154
  br label %848

846:                                              ; preds = %837
  %847 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %848

848:                                              ; preds = %846, %842
  %849 = phi i64 [ %845, %842 ], [ %847, %846 ]
  %850 = trunc i64 %849 to i32
  store i32 %850, ptr @PL_delaymagic_uid, align 4, !tbaa !195
  %851 = load i16, ptr @PL_delaymagic, align 2, !tbaa !380
  %852 = icmp eq i16 %851, 0
  br i1 %852, label %855, label %853

853:                                              ; preds = %848
  %854 = or i16 %851, 1
  store i16 %854, ptr @PL_delaymagic, align 2, !tbaa !380
  br label %1029

855:                                              ; preds = %848
  %856 = tail call i32 @geteuid() #26
  %857 = icmp eq i32 %856, %850
  br i1 %857, label %858, label %860

858:                                              ; preds = %855
  %859 = tail call i32 @setuid(i32 noundef %850) #26
  br label %1029

860:                                              ; preds = %855
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #26
  br label %1029

861:                                              ; preds = %32
  %862 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %863 = load i32, ptr %862, align 4, !tbaa !147
  %864 = and i32 %863, -2145386240
  %865 = icmp eq i32 %864, -2147483392
  br i1 %865, label %866, label %870

866:                                              ; preds = %861
  %867 = load ptr, ptr %0, align 8, !tbaa !153
  %868 = getelementptr inbounds %struct.xpvuv, ptr %867, i64 0, i32 4
  %869 = load i64, ptr %868, align 8, !tbaa !154
  br label %872

870:                                              ; preds = %861
  %871 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %872

872:                                              ; preds = %870, %866
  %873 = phi i64 [ %869, %866 ], [ %871, %870 ]
  %874 = trunc i64 %873 to i32
  store i32 %874, ptr @PL_delaymagic_euid, align 4, !tbaa !195
  %875 = load i16, ptr @PL_delaymagic, align 2, !tbaa !380
  %876 = icmp eq i16 %875, 0
  br i1 %876, label %879, label %877

877:                                              ; preds = %872
  %878 = or i16 %875, 2
  store i16 %878, ptr @PL_delaymagic, align 2, !tbaa !380
  br label %1029

879:                                              ; preds = %872
  %880 = tail call i32 @getuid() #26
  %881 = icmp eq i32 %880, %874
  br i1 %881, label %882, label %884

882:                                              ; preds = %879
  %883 = tail call i32 @setuid(i32 noundef %874) #26
  br label %1029

884:                                              ; preds = %879
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #26
  br label %1029

885:                                              ; preds = %32
  %886 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %887 = load i32, ptr %886, align 4, !tbaa !147
  %888 = and i32 %887, -2145386240
  %889 = icmp eq i32 %888, -2147483392
  br i1 %889, label %890, label %894

890:                                              ; preds = %885
  %891 = load ptr, ptr %0, align 8, !tbaa !153
  %892 = getelementptr inbounds %struct.xpvuv, ptr %891, i64 0, i32 4
  %893 = load i64, ptr %892, align 8, !tbaa !154
  br label %896

894:                                              ; preds = %885
  %895 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %896

896:                                              ; preds = %894, %890
  %897 = phi i64 [ %893, %890 ], [ %895, %894 ]
  %898 = trunc i64 %897 to i32
  store i32 %898, ptr @PL_delaymagic_gid, align 4, !tbaa !195
  %899 = load i16, ptr @PL_delaymagic, align 2, !tbaa !380
  %900 = icmp eq i16 %899, 0
  br i1 %900, label %903, label %901

901:                                              ; preds = %896
  %902 = or i16 %899, 16
  store i16 %902, ptr @PL_delaymagic, align 2, !tbaa !380
  br label %1029

903:                                              ; preds = %896
  %904 = tail call i32 @getegid() #26
  %905 = icmp eq i32 %904, %898
  br i1 %905, label %906, label %908

906:                                              ; preds = %903
  %907 = tail call i32 @setgid(i32 noundef %898) #26
  br label %1029

908:                                              ; preds = %903
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66) #26
  br label %1029

909:                                              ; preds = %32
  %910 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %911 = load i32, ptr %910, align 4, !tbaa !147
  %912 = and i32 %911, -2145386240
  %913 = icmp eq i32 %912, -2147483392
  br i1 %913, label %914, label %918

914:                                              ; preds = %909
  %915 = load ptr, ptr %0, align 8, !tbaa !153
  %916 = getelementptr inbounds %struct.xpvuv, ptr %915, i64 0, i32 4
  %917 = load i64, ptr %916, align 8, !tbaa !154
  br label %920

918:                                              ; preds = %909
  %919 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #26
  br label %920

920:                                              ; preds = %918, %914
  %921 = phi i64 [ %917, %914 ], [ %919, %918 ]
  %922 = trunc i64 %921 to i32
  store i32 %922, ptr @PL_delaymagic_egid, align 4, !tbaa !195
  %923 = load i16, ptr @PL_delaymagic, align 2, !tbaa !380
  %924 = icmp eq i16 %923, 0
  br i1 %924, label %927, label %925

925:                                              ; preds = %920
  %926 = or i16 %923, 32
  store i16 %926, ptr @PL_delaymagic, align 2, !tbaa !380
  br label %1029

927:                                              ; preds = %920
  %928 = tail call i32 @getgid() #26
  %929 = icmp eq i32 %928, %922
  br i1 %929, label %930, label %932

930:                                              ; preds = %927
  %931 = tail call i32 @setgid(i32 noundef %922) #26
  br label %1029

932:                                              ; preds = %927
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #26
  br label %1029

933:                                              ; preds = %32
  %934 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %935 = load i32, ptr %934, align 4, !tbaa !147
  %936 = and i32 %935, 430018304
  %937 = icmp eq i32 %936, 1024
  br i1 %937, label %938, label %941

938:                                              ; preds = %933
  %939 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %940 = load ptr, ptr %939, align 8, !tbaa !154
  br label %943

941:                                              ; preds = %933
  %942 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #26
  br label %943

943:                                              ; preds = %941, %938
  %944 = phi ptr [ %940, %938 ], [ %942, %941 ]
  store ptr %944, ptr @PL_chopset, align 8, !tbaa !177
  br label %1029

945:                                              ; preds = %32
  %946 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %947 = load ptr, ptr %946, align 8, !tbaa !255
  %948 = getelementptr inbounds %struct.sv, ptr %947, i64 0, i32 2
  %949 = load i32, ptr %948, align 4, !tbaa !147
  %950 = and i32 %949, 255
  %951 = icmp eq i32 %950, 9
  br i1 %951, label %952, label %965

952:                                              ; preds = %945
  %953 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 4
  %954 = load i8, ptr %953, align 1, !tbaa !164
  %955 = and i8 %954, 2
  %956 = icmp eq i8 %955, 0
  br i1 %956, label %959, label %957

957:                                              ; preds = %952
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %947) #27
  %958 = load i8, ptr %953, align 1, !tbaa !164
  br label %959

959:                                              ; preds = %957, %952
  %960 = phi i8 [ %958, %957 ], [ %954, %952 ]
  %961 = or i8 %960, 2
  store i8 %961, ptr %953, align 1, !tbaa !164
  %962 = tail call i32 @getpid() #26
  %963 = sext i32 %962 to i64
  %964 = tail call ptr @Perl_newSViv(i64 noundef %963) #26
  store ptr %964, ptr %946, align 8, !tbaa !255
  br label %1029

965:                                              ; preds = %945
  %966 = tail call i32 @getpid() #26
  %967 = sext i32 %966 to i64
  tail call void @Perl_sv_setiv(ptr noundef nonnull %947, i64 noundef %967) #26
  br label %1029

968:                                              ; preds = %32
  %969 = load i32, ptr @PL_origalen, align 4, !tbaa !195
  %970 = icmp ugt i32 %969, 1
  br i1 %970, label %971, label %1029

971:                                              ; preds = %968
  %972 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %973 = load i32, ptr %972, align 4, !tbaa !147
  %974 = and i32 %973, 430018304
  %975 = icmp eq i32 %974, 1024
  br i1 %975, label %976, label %982

976:                                              ; preds = %971
  %977 = load ptr, ptr %0, align 8, !tbaa !153
  %978 = getelementptr inbounds %struct.xpv, ptr %977, i64 0, i32 2
  %979 = load i64, ptr %978, align 8, !tbaa !221
  store i64 %979, ptr %3, align 8, !tbaa !223
  %980 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %981 = load ptr, ptr %980, align 8, !tbaa !154
  br label %986

982:                                              ; preds = %971
  %983 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #26
  %984 = load i64, ptr %3, align 8, !tbaa !223
  %985 = load i32, ptr @PL_origalen, align 4, !tbaa !195
  br label %986

986:                                              ; preds = %982, %976
  %987 = phi i32 [ %969, %976 ], [ %985, %982 ]
  %988 = phi i64 [ %979, %976 ], [ %984, %982 ]
  %989 = phi ptr [ %981, %976 ], [ %983, %982 ]
  %990 = zext i32 %987 to i64
  %991 = add nsw i64 %990, -1
  %992 = icmp ult i64 %988, %991
  %993 = load ptr, ptr @PL_origargv, align 8, !tbaa !177
  %994 = load ptr, ptr %993, align 8, !tbaa !177
  br i1 %992, label %998, label %995

995:                                              ; preds = %986
  %996 = add i32 %987, -1
  %997 = zext i32 %996 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %994, ptr align 1 %989, i64 %997, i1 false)
  br label %1012

998:                                              ; preds = %986
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %994, ptr align 1 %989, i64 %988, i1 false)
  %999 = load ptr, ptr @PL_origargv, align 8, !tbaa !177
  %1000 = load ptr, ptr %999, align 8, !tbaa !177
  %1001 = load i64, ptr %3, align 8, !tbaa !223
  %1002 = getelementptr inbounds i8, ptr %1000, i64 %1001
  store i8 0, ptr %1002, align 1, !tbaa !154
  %1003 = load ptr, ptr @PL_origargv, align 8, !tbaa !177
  %1004 = load ptr, ptr %1003, align 8, !tbaa !177
  %1005 = load i64, ptr %3, align 8, !tbaa !223
  %1006 = getelementptr inbounds i8, ptr %1004, i64 %1005
  %1007 = getelementptr inbounds i8, ptr %1006, i64 1
  %1008 = load i32, ptr @PL_origalen, align 4, !tbaa !195
  %1009 = zext i32 %1008 to i64
  %1010 = xor i64 %1005, -1
  %1011 = add i64 %1009, %1010
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %1007, i8 32, i64 %1011, i1 false)
  br label %1012

1012:                                             ; preds = %998, %995
  %1013 = load ptr, ptr @PL_origargv, align 8, !tbaa !177
  %1014 = load ptr, ptr %1013, align 8, !tbaa !177
  %1015 = load i32, ptr @PL_origalen, align 4, !tbaa !195
  %1016 = add i32 %1015, -1
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds i8, ptr %1014, i64 %1017
  store i8 0, ptr %1018, align 1, !tbaa !154
  %1019 = load i32, ptr @PL_origargc, align 4, !tbaa !195
  %1020 = icmp sgt i32 %1019, 1
  br i1 %1020, label %1021, label %1029

1021:                                             ; preds = %1012
  %1022 = zext nneg i32 %1019 to i64
  br label %1023

1023:                                             ; preds = %1021, %1023
  %1024 = phi i64 [ 1, %1021 ], [ %1027, %1023 ]
  %1025 = load ptr, ptr @PL_origargv, align 8, !tbaa !177
  %1026 = getelementptr inbounds ptr, ptr %1025, i64 %1024
  store ptr null, ptr %1026, align 8, !tbaa !177
  %1027 = add nuw nsw i64 %1024, 1
  %1028 = icmp eq i64 %1027, %1022
  br i1 %1028, label %1029, label %1023, !llvm.loop !463

1029:                                             ; preds = %1023, %1012, %667, %664, %673, %150, %512, %101, %116, %198, %212, %229, %357, %406, %546, %571, %607, %655, %762, %833, %943, %32, %88, %89, %77, %134, %265, %303, %263, %345, %338, %363, %359, %394, %491, %397, %370, %386, %503, %523, %541, %519, %509, %494, %643, %627, %780, %778, %795, %792, %811, %807, %965, %959, %968, %167, %165, %186, %184, %145, %247, %492, %698, %712, %700, %677, %858, %860, %853, %882, %884, %877, %906, %908, %901, %930, %932, %925, %20, %31, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_savesvpv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_init_debugger() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @Perl_new_warnings_bitfield(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @setuid(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @setgid(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_whichsig_sv(ptr noundef %0) local_unnamed_addr #2 !prof !198 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !221
  store i64 %10, ptr %2, align 8, !tbaa !223
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  br label %16

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #26
  %15 = load i64, ptr %2, align 8, !tbaa !223
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i64 [ %10, %7 ], [ %15, %13 ]
  %18 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %19 = call i32 @Perl_whichsig_pvn(ptr noundef %18, i64 noundef %17) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret i32 %19
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_whichsig_pv(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !198 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %3 = tail call i32 @Perl_whichsig_pvn(ptr noundef %0, i64 noundef %2) #27
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sighandler(i32 noundef %0) local_unnamed_addr #2 !prof !198 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !177
  %5 = load ptr, ptr @PL_Sv, align 8, !tbaa !177
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !177
  %7 = load ptr, ptr @PL_Xpv, align 8, !tbaa !177
  %8 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !195
  %9 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !464
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !154
  %25 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !337
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %26, align 8, !tbaa !339
  %30 = getelementptr inbounds %struct.xpvio, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !459
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %22, %17, %14
  %34 = tail call ptr @Perl_PerlIO_stderr() #26
  br label %35

35:                                               ; preds = %28, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %37 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %38 = load ptr, ptr %37, align 8, !tbaa !177
  %39 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %36, ptr noundef nonnull @.str.70, ptr noundef %38) #26
  tail call void @exit(i32 noundef %0) #31
  unreachable

40:                                               ; preds = %1
  %41 = load i32, ptr @PL_signals, align 4, !tbaa !195
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %8, 15
  %46 = load i32, ptr @PL_savestack_max, align 4, !tbaa !195
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = add nsw i32 %8, 5
  store i32 %49, ptr @PL_savestack_ix, align 4, !tbaa !195
  tail call void @Perl_save_destructor_x(ptr noundef nonnull @S_unwind_handler_stack, ptr noundef null) #26
  %50 = load ptr, ptr @PL_psig_ptr, align 8, !tbaa !177
  %51 = getelementptr inbounds ptr, ptr %50, i64 %10
  %52 = load ptr, ptr %51, align 8, !tbaa !177
  br label %53

53:                                               ; preds = %44, %48, %40
  %54 = phi ptr [ %12, %44 ], [ %52, %48 ], [ %12, %40 ]
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !147
  %57 = and i32 %56, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !154
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cv, ptr %61, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !465
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %71, label %68

68:                                               ; preds = %53, %59, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %69 = call ptr @Perl_sv_2cv(ptr noundef nonnull %54, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %63, %68
  %72 = phi ptr [ %69, %68 ], [ %61, %63 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !467
  %74 = getelementptr inbounds %struct.xpvcv, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !154
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %132

77:                                               ; preds = %68
  %78 = load ptr, ptr %2, align 8, !tbaa !177
  %79 = icmp eq ptr %78, null
  br i1 %79, label %129, label %83

80:                                               ; preds = %71
  %81 = load ptr, ptr %2, align 8, !tbaa !177
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %80, %77
  %84 = phi ptr [ %81, %80 ], [ %78, %77 ]
  %85 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !154
  %87 = getelementptr inbounds %struct.gp, ptr %86, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !343
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr %84, ptr %88
  %91 = load ptr, ptr %90, align 8, !tbaa !344
  %92 = getelementptr inbounds %struct.xpvgv, ptr %91, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !154
  br label %123

94:                                               ; preds = %80
  %95 = load ptr, ptr %72, align 8, !tbaa !467
  %96 = getelementptr inbounds %struct.xpvcv, ptr %95, i64 0, i32 12
  %97 = load i32, ptr %96, align 4, !tbaa !468
  %98 = and i32 %97, 32768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %72) #27
  br label %123

102:                                              ; preds = %94
  %103 = call fastcc ptr @S_CvGV(ptr noundef nonnull %72) #27
  %104 = icmp eq ptr %103, null
  br i1 %104, label %129, label %105

105:                                              ; preds = %102
  %106 = call fastcc ptr @S_CvGV(ptr noundef nonnull %72) #27
  %107 = getelementptr inbounds %struct.gv, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !154
  %109 = getelementptr inbounds %struct.gp, ptr %108, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !343
  %111 = icmp eq ptr %110, null
  %112 = call fastcc ptr @S_CvGV(ptr noundef nonnull %72) #27
  br i1 %111, label %118, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.gv, ptr %112, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !154
  %116 = getelementptr inbounds %struct.gp, ptr %115, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !343
  br label %118

118:                                              ; preds = %105, %113
  %119 = phi ptr [ %117, %113 ], [ %112, %105 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !344
  %121 = getelementptr inbounds %struct.xpvgv, ptr %120, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !154
  br label %123

123:                                              ; preds = %100, %118, %83
  %124 = phi ptr [ %93, %83 ], [ %101, %100 ], [ %122, %118 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %128 = load ptr, ptr %127, align 8, !tbaa !177
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.71, ptr noundef %128, ptr noundef nonnull %124) #26
  br label %312

129:                                              ; preds = %77, %102, %123
  %130 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %131 = load ptr, ptr %130, align 8, !tbaa !177
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 26, ptr noundef nonnull @.str.72, ptr noundef %131) #26
  br label %312

132:                                              ; preds = %71
  %133 = load ptr, ptr @PL_psig_name, align 8, !tbaa !177
  %134 = getelementptr inbounds ptr, ptr %133, i64 %10
  %135 = load ptr, ptr %134, align 8, !tbaa !177
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef nonnull %135) #27
  br label %143

139:                                              ; preds = %132
  %140 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %10
  %141 = load ptr, ptr %140, align 8, !tbaa !177
  %142 = call ptr @Perl_newSVpv(ptr noundef %141, i64 noundef 0) #26
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi ptr [ %135, %137 ], [ %142, %139 ]
  call void @Perl_save_pushptr(ptr noundef %144, i32 noundef 11) #26
  %145 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %146 = getelementptr inbounds %struct.stackinfo, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !399
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #26
  %151 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %152 = getelementptr inbounds %struct.stackinfo, ptr %150, i64 0, i32 2
  store ptr %151, ptr %152, align 8, !tbaa !402
  %153 = getelementptr inbounds %struct.stackinfo, ptr %151, i64 0, i32 3
  store ptr %150, ptr %153, align 8, !tbaa !399
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi ptr [ %147, %143 ], [ %150, %149 ]
  %156 = getelementptr inbounds %struct.stackinfo, ptr %155, i64 0, i32 6
  store i32 4, ptr %156, align 8, !tbaa !403
  %157 = getelementptr inbounds %struct.stackinfo, ptr %155, i64 0, i32 4
  store i32 -1, ptr %157, align 8, !tbaa !404
  %158 = load ptr, ptr %155, align 8, !tbaa !405
  %159 = load ptr, ptr %158, align 8, !tbaa !256
  %160 = getelementptr inbounds %struct.xpvav, ptr %159, i64 0, i32 2
  store i64 0, ptr %160, align 8, !tbaa !231
  %161 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  %162 = ptrtoint ptr %4 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = ashr exact i64 %164, 3
  %166 = load ptr, ptr @PL_curstack, align 8, !tbaa !177
  %167 = load ptr, ptr %166, align 8, !tbaa !256
  %168 = getelementptr inbounds %struct.xpvav, ptr %167, i64 0, i32 2
  store i64 %165, ptr %168, align 8, !tbaa !231
  %169 = getelementptr inbounds %struct.av, ptr %158, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !154
  store ptr %170, ptr @PL_stack_base, align 8, !tbaa !177
  %171 = load ptr, ptr %155, align 8, !tbaa !405
  %172 = load ptr, ptr %171, align 8, !tbaa !256
  %173 = getelementptr inbounds %struct.xpvav, ptr %172, i64 0, i32 3
  %174 = load i64, ptr %173, align 8, !tbaa !406
  %175 = getelementptr inbounds ptr, ptr %170, i64 %174
  store ptr %175, ptr @PL_stack_max, align 8, !tbaa !177
  %176 = load ptr, ptr %155, align 8, !tbaa !405
  %177 = load ptr, ptr %176, align 8, !tbaa !256
  %178 = getelementptr inbounds %struct.xpvav, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !231
  %180 = getelementptr inbounds ptr, ptr %170, i64 %179
  store ptr %180, ptr @PL_stack_sp, align 8, !tbaa !177
  %181 = load ptr, ptr %155, align 8, !tbaa !405
  store ptr %181, ptr @PL_curstack, align 8, !tbaa !177
  store ptr %155, ptr @PL_curstackinfo, align 8, !tbaa !177
  %182 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !177
  %183 = getelementptr inbounds i32, ptr %182, i64 1
  store ptr %183, ptr @PL_markstack_ptr, align 8, !tbaa !177
  %184 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !177
  %185 = icmp eq ptr %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %154
  %187 = call ptr @Perl_markstack_grow() #26
  %188 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  br label %189

189:                                              ; preds = %154, %186
  %190 = phi ptr [ %188, %186 ], [ %170, %154 ]
  %191 = phi ptr [ %187, %186 ], [ %183, %154 ]
  %192 = ptrtoint ptr %180 to i64
  %193 = ptrtoint ptr %190 to i64
  %194 = sub i64 %192, %193
  %195 = lshr exact i64 %194, 3
  %196 = trunc i64 %195 to i32
  store i32 %196, ptr %191, align 4, !tbaa !195
  %197 = getelementptr inbounds ptr, ptr %180, i64 1
  store ptr %144, ptr %197, align 8, !tbaa !177
  store ptr %197, ptr @PL_stack_sp, align 8, !tbaa !177
  %198 = load ptr, ptr @PL_errgv, align 8, !tbaa !177
  %199 = getelementptr inbounds %struct.gv, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !154
  %201 = load ptr, ptr %200, align 8, !tbaa !177
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %189
  %204 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %198, i32 noundef 0) #26
  %205 = getelementptr inbounds %struct.gv, ptr %204, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !154
  %207 = load ptr, ptr %206, align 8, !tbaa !177
  br label %208

208:                                              ; preds = %189, %203
  %209 = phi ptr [ %207, %203 ], [ %201, %189 ]
  %210 = call ptr @Perl_newSVsv(ptr noundef %209) #26
  %211 = call i32 @Perl_call_sv(ptr noundef nonnull %72, i32 noundef 12) #26
  %212 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !177
  %213 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !177
  %214 = getelementptr inbounds %struct.stackinfo, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !402
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  call void @Perl_croak_popstack() #26
  br label %218

218:                                              ; preds = %208, %217
  %219 = load ptr, ptr @PL_stack_base, align 8, !tbaa !177
  %220 = ptrtoint ptr %212 to i64
  %221 = ptrtoint ptr %219 to i64
  %222 = sub i64 %220, %221
  %223 = ashr exact i64 %222, 3
  %224 = load ptr, ptr @PL_curstack, align 8, !tbaa !177
  %225 = load ptr, ptr %224, align 8, !tbaa !256
  %226 = getelementptr inbounds %struct.xpvav, ptr %225, i64 0, i32 2
  store i64 %223, ptr %226, align 8, !tbaa !231
  %227 = load ptr, ptr %215, align 8, !tbaa !405
  %228 = getelementptr inbounds %struct.av, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !154
  store ptr %229, ptr @PL_stack_base, align 8, !tbaa !177
  %230 = load ptr, ptr %215, align 8, !tbaa !405
  %231 = load ptr, ptr %230, align 8, !tbaa !256
  %232 = getelementptr inbounds %struct.xpvav, ptr %231, i64 0, i32 3
  %233 = load i64, ptr %232, align 8, !tbaa !406
  %234 = getelementptr inbounds ptr, ptr %229, i64 %233
  store ptr %234, ptr @PL_stack_max, align 8, !tbaa !177
  %235 = load ptr, ptr %215, align 8, !tbaa !405
  %236 = load ptr, ptr %235, align 8, !tbaa !256
  %237 = getelementptr inbounds %struct.xpvav, ptr %236, i64 0, i32 2
  %238 = load i64, ptr %237, align 8, !tbaa !231
  %239 = getelementptr inbounds ptr, ptr %229, i64 %238
  store ptr %239, ptr @PL_stack_sp, align 8, !tbaa !177
  %240 = load ptr, ptr %215, align 8, !tbaa !405
  store ptr %240, ptr @PL_curstack, align 8, !tbaa !177
  store ptr %215, ptr @PL_curstackinfo, align 8, !tbaa !177
  %241 = load ptr, ptr @PL_errgv, align 8, !tbaa !177
  %242 = getelementptr inbounds %struct.gv, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !154
  %244 = load ptr, ptr %243, align 8, !tbaa !177
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %218
  %247 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %241, i32 noundef 0) #26
  %248 = getelementptr inbounds %struct.gv, ptr %247, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !154
  %250 = load ptr, ptr %249, align 8, !tbaa !177
  br label %251

251:                                              ; preds = %218, %246
  %252 = phi ptr [ %250, %246 ], [ %244, %218 ]
  %253 = getelementptr inbounds %struct.sv, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !147
  %255 = and i32 %254, 2097152
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %251
  %258 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %252, i32 noundef 2) #26
  br i1 %258, label %306, label %311

259:                                              ; preds = %251
  %260 = and i32 %254, 65280
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %254, 255
  %263 = icmp eq i32 %262, 8
  %264 = or i1 %261, %263
  %265 = and i32 %254, 16777471
  %266 = icmp eq i32 %265, 16777226
  %267 = or i1 %266, %264
  br i1 %267, label %268, label %311

268:                                              ; preds = %259
  %269 = and i32 %254, 1024
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %285, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %252, align 8, !tbaa !153
  %273 = icmp eq ptr %272, null
  br i1 %273, label %311, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.xpv, ptr %272, i64 0, i32 2
  %276 = load i64, ptr %275, align 8, !tbaa !221
  %277 = icmp ugt i64 %276, 1
  br i1 %277, label %306, label %278

278:                                              ; preds = %274
  %279 = icmp eq i64 %276, 0
  br i1 %279, label %311, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.sv, ptr %252, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !154
  %283 = load i8, ptr %282, align 1, !tbaa !154
  %284 = icmp eq i8 %283, 48
  br i1 %284, label %311, label %306

285:                                              ; preds = %268
  %286 = and i32 %254, 768
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %285
  %289 = and i32 %254, 256
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr %252, align 8, !tbaa !153
  %293 = getelementptr inbounds %struct.xpviv, ptr %292, i64 0, i32 4
  %294 = load i64, ptr %293, align 8, !tbaa !154
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %291, %288
  %297 = and i32 %254, 512
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %311, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr %252, align 8, !tbaa !153
  %301 = getelementptr inbounds %struct.xpvnv, ptr %300, i64 0, i32 5
  %302 = load double, ptr %301, align 8, !tbaa !154
  %303 = fcmp une double %302, 0.000000e+00
  br i1 %303, label %306, label %311

304:                                              ; preds = %285
  %305 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %252, i32 noundef 0) #26
  br i1 %305, label %306, label %311

306:                                              ; preds = %304, %299, %291, %280, %274, %257
  call fastcc void @S_SvREFCNT_dec(ptr noundef %210) #27
  %307 = call ptr @Perl_rsignal(i32 noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #26
  %308 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !177
  %309 = call ptr @Perl_rsignal(i32 noundef %0, ptr noundef %308) #26
  %310 = call ptr @Perl_die_sv(ptr noundef nonnull %252) #26
  br label %313

311:                                              ; preds = %299, %259, %304, %296, %280, %278, %271, %257
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %252, ptr noundef %210, i32 noundef 1538) #26
  call fastcc void @S_SvREFCNT_dec(ptr noundef %210) #27
  br label %313

312:                                              ; preds = %129, %126
  store i32 %8, ptr @PL_savestack_ix, align 4, !tbaa !195
  br label %314

313:                                              ; preds = %311, %306
  store i32 %8, ptr @PL_savestack_ix, align 4, !tbaa !195
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %144) #27
  br label %314

314:                                              ; preds = %312, %313
  store ptr %6, ptr @PL_op, align 8, !tbaa !177
  store ptr %5, ptr @PL_Sv, align 8, !tbaa !177
  store ptr %7, ptr @PL_Xpv, align 8, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @S_unwind_handler_stack(ptr nocapture readnone %0) #22 !prof !198 !PGOFuncName !470 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !195
  %3 = add nsw i32 %2, -5
  store i32 %3, ptr @PL_savestack_ix, align 4, !tbaa !195
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #23 !prof !198 !PGOFuncName !471 {
  %2 = load ptr, ptr %0, align 8, !tbaa !467
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !468
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #2 !prof !198 !PGOFuncName !472 {
  %2 = load ptr, ptr %0, align 8, !tbaa !467
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !468
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #26
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_die_sv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_sethint(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !359 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !200
  %5 = icmp eq i64 %4, -2
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  br i1 %5, label %10, label %8, !prof !461

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %7, i64 noundef %4, i32 noundef 524288) #26
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %2 ]
  %12 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %13 = or i32 %12, 131072
  store i32 %13, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %14 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  %15 = tail call ptr @Perl_refcounted_he_new_sv(ptr noundef %14, ptr noundef %11, i32 noundef 0, ptr noundef %0, i32 noundef 0) #26
  store ptr %15, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_new_sv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clearhint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !359 {
  %3 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %4 = or i32 %3, 131072
  store i32 %4, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !309
  %5 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !200
  %7 = icmp eq i64 %6, -2
  %8 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  %9 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  br i1 %7, label %11, label %13, !prof !461

11:                                               ; preds = %2
  %12 = tail call ptr @Perl_refcounted_he_new_sv(ptr noundef %8, ptr noundef %10, i32 noundef 0, ptr noundef null, i32 noundef 0) #26
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %8, ptr noundef %10, i64 noundef %6, i32 noundef 0, ptr noundef null, i32 noundef 0) #26
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  store ptr %16, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_new_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_clearhints(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 !prof !473 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  tail call void @Perl_refcounted_he_free(ptr noundef %3) #26
  store ptr null, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !311
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_copycallchecker(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #2 !prof !198 {
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !183
  %8 = sext i8 %7 to i32
  tail call void @Perl_sv_magic(ptr noundef %2, ptr noundef nonnull @PL_sv_undef, i32 noundef %8, ptr noundef null, i32 noundef 0) #26
  %9 = load i8, ptr %6, align 2, !tbaa !183
  %10 = sext i8 %9 to i32
  %11 = tail call ptr @Perl_mg_find(ptr noundef %2, i32 noundef %10) #27
  %12 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !164
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !255
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %18) #27
  br label %19

19:                                               ; preds = %16, %5
  %20 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !199
  %22 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 7
  store ptr %21, ptr %22, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !255
  %25 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %24) #27
  %26 = getelementptr inbounds %struct.magic, ptr %11, i64 0, i32 6
  store ptr %24, ptr %26, align 8, !tbaa !255
  %27 = load i8, ptr %12, align 1, !tbaa !164
  %28 = or i8 %27, 2
  store i8 %28, ptr %12, align 1, !tbaa !164
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #18 !prof !198 !PGOFuncName !474 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !192
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !192
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_setdebugvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !154
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %0, i32 noundef 0) #26
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %10, %7 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !360
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds [3 x i64], ptr @PL_DBcontrol, i64 0, i64 %17
  store i64 %14, ptr %18, align 8, !tbaa !223
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_getdebugvar(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !198 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !360
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds [3 x i64], ptr @PL_DBcontrol, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !223
  tail call void @Perl_sv_setiv(ptr noundef %0, i64 noundef %7) #26
  ret i32 0
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind optsize }
attributes #27 = { optsize }
attributes #28 = { nounwind }
attributes #29 = { nounwind optsize willreturn memory(read) }
attributes #30 = { nounwind optsize willreturn memory(none) }
attributes #31 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!145}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!36 = !{ptr @Perl_mg_get, ptr @Perl_save_alloc, i64 2341595}
!37 = !{ptr @Perl_mg_get, ptr @Perl_gv_add_by_type, i64 1}
!38 = !{ptr @Perl_mg_get, ptr @S_save_magic_flags, i64 2341589}
!39 = !{ptr @Perl_mg_get, ptr @Perl_magic_setutf8, i64 1}
!40 = !{ptr @Perl_mg_get, ptr @S_restore_magic, i64 2341593}
!41 = !{ptr @S_save_magic_flags, ptr @Perl_save_destructor_x, i64 3312007}
!42 = !{ptr @S_restore_magic, ptr @Perl_mg_magical, i64 11}
!43 = !{ptr @S_restore_magic, ptr @Perl_sv_2mortal, i64 1}
!44 = !{ptr @S_restore_magic, ptr @S_SvREFCNT_dec_NN, i64 3312004}
!45 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 3312006}
!46 = !{ptr @Perl_mg_set, ptr @Perl_save_alloc, i64 956240}
!47 = !{ptr @Perl_mg_set, ptr @Perl_gv_add_by_type, i64 1}
!48 = !{ptr @Perl_mg_set, ptr @S_save_magic_flags, i64 956239}
!49 = !{ptr @Perl_mg_set, ptr @S_restore_magic, i64 956239}
!50 = !{ptr @Perl_mg_clear, ptr @Perl_save_alloc, i64 14172}
!51 = !{ptr @Perl_mg_clear, ptr @S_save_magic_flags, i64 14172}
!52 = !{ptr @Perl_mg_clear, ptr @S_restore_magic, i64 14172}
!53 = !{ptr @Perl_mg_find, ptr @S_mg_findext_flags, i64 5700719}
!54 = !{ptr @Perl_mg_find_mglob, ptr @S_mg_findext_flags, i64 718770}
!55 = !{ptr @Perl_mg_copy, ptr @Perl_newRV, i64 11}
!56 = !{ptr @Perl_mg_copy, ptr @Perl_sv_2mortal, i64 11}
!57 = !{ptr @Perl_mg_copy, ptr @Perl_sv_magic, i64 14198}
!58 = !{ptr @Perl_mg_localize, ptr @Perl_gv_add_by_type, i64 1}
!59 = !{ptr @Perl_mg_localize, ptr @Perl_sv_magicext, i64 6401}
!60 = !{ptr @Perl_mg_localize, ptr @Perl_mg_set, i64 1}
!61 = !{ptr @Perl_mg_free, ptr @S_mg_free_struct, i64 288036}
!62 = !{ptr @S_mg_free_struct, ptr @Perl_safesysfree, i64 294500}
!63 = !{ptr @S_mg_free_struct, ptr @S_SvREFCNT_dec, i64 5615}
!64 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!65 = !{ptr @Perl_magic_get, ptr @S_ReANY, i64 1806386}
!66 = !{ptr @Perl_magic_get, ptr @Perl_sv_setsv_flags, i64 5161}
!67 = !{ptr @Perl_magic_get, ptr @Perl_sv_tainted, i64 1}
!68 = !{ptr @Perl_magic_get, ptr @strcmp, i64 24}
!69 = !{ptr @Perl_magic_get, ptr @Perl_sv_setiv, i64 105}
!70 = !{ptr @Perl_magic_get, ptr @__errno_location, i64 3}
!71 = !{ptr @Perl_magic_get, ptr @Perl_sv_setnv, i64 3}
!72 = !{ptr @Perl_magic_get, ptr @Perl_sv_setpvn, i64 6}
!73 = !{ptr @Perl_magic_get, ptr @Perl_my_strerror, i64 2}
!74 = !{ptr @Perl_magic_get, ptr @Perl_sv_setpv, i64 54}
!75 = !{ptr @Perl_magic_get, ptr @S_fixup_errno_string, i64 2}
!76 = !{ptr @Perl_magic_get, ptr @Perl_sv_untaint, i64 2}
!77 = !{ptr @Perl_magic_get, ptr @Perl_get_hv, i64 4}
!78 = !{ptr @Perl_magic_get, ptr @Perl_hv_common, i64 3}
!79 = !{ptr @Perl_magic_get, ptr @Perl_sv_copypv_flags, i64 4}
!80 = !{ptr @Perl_magic_get, ptr @Perl_sv_catpvn_flags, i64 1}
!81 = !{ptr @Perl_magic_get, ptr @getpid, i64 5}
!82 = !{ptr @Perl_magic_get, ptr @getuid, i64 2}
!83 = !{ptr @Perl_magic_get, ptr @Perl_sv_setuv, i64 8}
!84 = !{ptr @Perl_magic_get, ptr @geteuid, i64 2}
!85 = !{ptr @Perl_magic_get, ptr @getgid, i64 2}
!86 = !{ptr @Perl_magic_get, ptr @getegid, i64 2}
!87 = !{ptr @Perl_magic_getsig, ptr @Perl_whichsig_pvn, i64 1}
!88 = !{ptr @Perl_whichsig_pvn, ptr @strlen, i64 8}
!89 = !{ptr @Perl_magic_clearsig, ptr @Perl_magic_setsig, i64 14107}
!90 = !{ptr @Perl_magic_clearsig, ptr @Perl_sv_unmagic, i64 14107}
!91 = !{ptr @Perl_magic_setisa, ptr @Perl_magic_clearisa, i64 25}
!92 = !{ptr @Perl_magic_clearisa, ptr @Perl_av_clear, i64 1}
!93 = !{ptr @Perl_magic_clearisa, ptr @Perl_mro_isa_changed_in, i64 3}
!94 = !{ptr @Perl_magic_methcall, ptr @Perl_push_scope, i64 517918}
!95 = !{ptr @Perl_magic_methcall, ptr @Perl_save_strlen, i64 1}
!96 = !{ptr @Perl_magic_methcall, ptr @Perl_save_re_context, i64 1}
!97 = !{ptr @Perl_magic_methcall, ptr @Perl_save_sptr, i64 1}
!98 = !{ptr @Perl_magic_methcall, ptr @Perl_new_stackinfo, i64 1}
!99 = !{ptr @Perl_magic_methcall, ptr @Perl_markstack_grow, i64 1}
!100 = !{ptr @Perl_magic_methcall, ptr @Perl_stack_grow, i64 1}
!101 = !{ptr @Perl_magic_methcall, ptr @Perl_newRV, i64 1}
!102 = !{ptr @Perl_magic_methcall, ptr @Perl_sv_2mortal, i64 1}
!103 = !{ptr @Perl_magic_methcall, ptr @Perl_call_sv, i64 517918}
!104 = !{ptr @Perl_magic_methcall, ptr @Perl_croak_popstack, i64 1}
!105 = !{ptr @Perl_magic_methcall, ptr @Perl_pop_scope, i64 517918}
!106 = !{ptr @Perl_magic_getpack, ptr @Perl_newSVpv_share, i64 2}
!107 = !{ptr @Perl_magic_getpack, ptr @S_magic_methpack, i64 517918}
!108 = !{ptr @S_magic_methpack, ptr @S_magic_methcall1, i64 517918}
!109 = !{ptr @S_magic_methpack, ptr @Perl_sv_setsv_flags, i64 517917}
!110 = !{ptr @S_magic_methcall1, ptr @Perl_newSVpvn_flags, i64 1}
!111 = !{ptr @S_magic_methcall1, ptr @Perl_newSViv, i64 1}
!112 = !{ptr @S_magic_methcall1, ptr @Perl_sv_2mortal, i64 1}
!113 = !{ptr @S_magic_methcall1, ptr @Perl_magic_methcall, i64 517918}
!114 = !{ptr @Perl_magic_setvec, ptr @Perl_do_vecset, i64 223}
!115 = !{ptr @Perl_defelem_target, ptr @Perl_mg_find, i64 1}
!116 = !{ptr @Perl_defelem_target, ptr @Perl_hv_common, i64 5568}
!117 = !{ptr @Perl_defelem_target, ptr @S_SvREFCNT_dec, i64 2}
!118 = !{ptr @Perl_magic_getdefelem, ptr @Perl_defelem_target, i64 5570}
!119 = !{ptr @Perl_magic_getdefelem, ptr @Perl_sv_setsv_flags, i64 5570}
!120 = !{ptr @Perl_magic_killbackrefs, ptr @Perl_sv_kill_backrefs, i64 3}
!121 = !{ptr @Perl_magic_set, ptr @S_ReANY, i64 1}
!122 = !{ptr @Perl_magic_set, ptr @Perl_croak_no_modify, i64 1}
!123 = !{ptr @Perl_magic_set, ptr @strchr, i64 10}
!124 = !{ptr @Perl_magic_set, ptr @Perl_mg_find, i64 1}
!125 = !{ptr @Perl_magic_set, ptr @Perl_sv_2iv_flags, i64 7}
!126 = !{ptr @Perl_magic_set, ptr @__errno_location, i64 5}
!127 = !{ptr @Perl_magic_set, ptr @Perl_safesysfree, i64 3}
!128 = !{ptr @Perl_magic_set, ptr @strcmp, i64 15}
!129 = !{ptr @Perl_magic_set, ptr @Perl_sv_2pv_flags, i64 3}
!130 = !{ptr @Perl_magic_set, ptr @free, i64 1}
!131 = !{ptr @Perl_magic_set, ptr @Perl_new_warnings_bitfield, i64 5}
!132 = !{ptr @Perl_magic_set, ptr @Perl_save_sptr, i64 1}
!133 = !{ptr @Perl_magic_set, ptr @Perl_savesvpv, i64 2}
!134 = !{ptr @Perl_magic_set, ptr @Perl_gv_fetchsv, i64 2}
!135 = !{ptr @Perl_magic_set, ptr @Perl_PerlIO_flush, i64 2}
!136 = !{ptr @Perl_magic_set, ptr @Perl_sv_reftype, i64 1}
!137 = !{ptr @Perl_magic_set, ptr @S_SvREFCNT_dec, i64 19168}
!138 = !{ptr @Perl_magic_set, ptr @Perl_newSVsv, i64 19167}
!139 = !{ptr @Perl_magic_set, ptr @Perl_croak, i64 1}
!140 = !{ptr @Perl_magic_sethint, ptr @Perl_newSVpvn_flags, i64 1}
!141 = !{ptr @Perl_magic_sethint, ptr @Perl_refcounted_he_new_sv, i64 2}
!142 = !{ptr @Perl_magic_clearhint, ptr @Perl_refcounted_he_new_sv, i64 2}
!143 = !{ptr @Perl_magic_clearhint, ptr @Perl_refcounted_he_new_pvn, i64 1}
!144 = !{ptr @Perl_magic_clearhints, ptr @Perl_refcounted_he_free, i64 63}
!145 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!146 = !{!"function_entry_count", i64 591871}
!147 = !{!148, !152, i64 12}
!148 = !{!"sv", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!149 = !{!"any pointer", !150, i64 0}
!150 = !{!"omnipotent char", !151, i64 0}
!151 = !{!"Simple C/C++ TBAA"}
!152 = !{!"int", !150, i64 0}
!153 = !{!148, !149, i64 0}
!154 = !{!150, !150, i64 0}
!155 = !{!"branch_weights", i32 1, i32 591872}
!156 = !{!157, !149, i64 8}
!157 = !{!"magic", !149, i64 0, !149, i64 8, !158, i64 16, !150, i64 18, !150, i64 19, !159, i64 24, !149, i64 32, !149, i64 40}
!158 = !{!"short", !150, i64 0}
!159 = !{!"long", !150, i64 0}
!160 = !{!"branch_weights", i32 4, i32 591869}
!161 = !{!162, !149, i64 0}
!162 = !{!"mgvtbl", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56}
!163 = !{!"branch_weights", i32 553286, i32 38584}
!164 = !{!157, !150, i64 19}
!165 = !{!"branch_weights", i32 38564, i32 21}
!166 = !{!162, !149, i64 8}
!167 = !{!"branch_weights", i32 951, i32 590919}
!168 = !{!162, !149, i64 24}
!169 = !{!"branch_weights", i32 577549, i32 14321}
!170 = !{!157, !149, i64 0}
!171 = !{!"branch_weights", i32 591872, i32 1}
!172 = distinct !{!172, !173}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !{!"branch_weights", i32 954, i32 590919}
!175 = !{!"function_entry_count", i64 2341595}
!176 = !{!"branch_weights", i32 6405, i32 2335192}
!177 = !{!149, !149, i64 0}
!178 = !{!"branch_weights", i32 1, i32 6405}
!179 = !{!"branch_weights", i32 1, i32 2341595}
!180 = !{!"branch_weights", i32 -1617686131, i32 2286}
!181 = !{!"branch_weights", i32 1, i32 2341596}
!182 = !{!"branch_weights", i32 2341596, i32 1}
!183 = !{!157, !150, i64 18}
!184 = !{!185, !152, i64 12}
!185 = !{!"magic_state", !149, i64 0, !152, i64 8, !152, i64 12, !186, i64 16}
!186 = !{!"_Bool", !150, i64 0}
!187 = !{!"branch_weights", i32 2341586, i32 11}
!188 = !{!"branch_weights", i32 2341595, i32 1}
!189 = !{!"branch_weights", i32 0, i32 -2147483648}
!190 = !{!"function_entry_count", i64 3312007}
!191 = !{!"mg.c:S_save_magic_flags"}
!192 = !{!148, !152, i64 8}
!193 = !{!"branch_weights", i32 3312008, i32 1}
!194 = !{!185, !149, i64 0}
!195 = !{!152, !152, i64 0}
!196 = !{!185, !152, i64 8}
!197 = !{!185, !186, i64 16}
!198 = !{!"function_entry_count", i64 0}
!199 = !{!157, !149, i64 40}
!200 = !{!157, !159, i64 24}
!201 = !{!"function_entry_count", i64 3312008}
!202 = !{!"mg.c:S_restore_magic"}
!203 = !{!"branch_weights", i32 2, i32 3312008}
!204 = !{!"branch_weights", i32 14108, i32 3297901}
!205 = !{!"branch_weights", i32 11, i32 3297891}
!206 = !{i8 0, i8 2}
!207 = !{}
!208 = !{!"branch_weights", i32 3312007, i32 2}
!209 = !{!"branch_weights", i32 1, i32 3312008}
!210 = !{!"mg.c:S_SvREFCNT_dec_NN"}
!211 = !{!"function_entry_count", i64 956240}
!212 = !{!"branch_weights", i32 6405, i32 949837}
!213 = !{!"branch_weights", i32 1, i32 956240}
!214 = !{!"branch_weights", i32 956241, i32 1}
!215 = !{!"branch_weights", i32 481323, i32 -1232605494}
!216 = !{!"branch_weights", i32 1, i32 956241}
!217 = !{!"branch_weights", i32 956240, i32 1}
!218 = distinct !{!218, !173}
!219 = !{!162, !149, i64 16}
!220 = distinct !{!220, !173}
!221 = !{!222, !159, i64 16}
!222 = !{!"xpv", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24}
!223 = !{!159, !159, i64 0}
!224 = !{!"function_entry_count", i64 1}
!225 = !{!"branch_weights", i32 1, i32 127}
!226 = !{!"branch_weights", i32 1, i32 2}
!227 = !{!"branch_weights", i32 2, i32 1}
!228 = !{!"branch_weights", i32 127, i32 1}
!229 = distinct !{!229, !173}
!230 = !{!"branch_weights", i32 2, i32 2}
!231 = !{!232, !159, i64 16}
!232 = !{!"xpvav", !149, i64 0, !150, i64 8, !159, i64 16, !159, i64 24, !149, i64 32}
!233 = !{!"function_entry_count", i64 14172}
!234 = !{!"branch_weights", i32 1, i32 14172}
!235 = !{!"branch_weights", i32 1, i32 14173}
!236 = !{!"branch_weights", i32 14172, i32 1}
!237 = distinct !{!237, !173}
!238 = !{!"function_entry_count", i64 5700719}
!239 = !{!"function_entry_count", i64 6419490}
!240 = !{!"mg.c:S_mg_findext_flags"}
!241 = !{!"branch_weights", i32 1, i32 6419491}
!242 = !{!"branch_weights", i32 1, i32 5043212}
!243 = !{!"branch_weights", i32 1376279, i32 4994122}
!244 = !{!"branch_weights", i32 1376279, i32 1}
!245 = !{!"branch_weights", i32 5043212, i32 1327188}
!246 = distinct !{!246, !173}
!247 = !{!"function_entry_count", i64 1141490}
!248 = !{!"branch_weights", i32 1, i32 1141491}
!249 = !{!250, !150, i64 72}
!250 = !{!"xpvlv", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24, !150, i64 32, !150, i64 40, !150, i64 48, !159, i64 56, !149, i64 64, !150, i64 72, !150, i64 73}
!251 = !{!250, !149, i64 64}
!252 = !{!"branch_weights", i32 2136948389, i32 10535259}
!253 = !{!"branch_weights", i32 417121, i32 718772}
!254 = !{!250, !159, i64 56}
!255 = !{!157, !149, i64 32}
!256 = !{!257, !149, i64 0}
!257 = !{!"av", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!258 = !{!"function_entry_count", i64 14201}
!259 = !{!"branch_weights", i32 1, i32 14201}
!260 = !{!"branch_weights", i32 14202, i32 1}
!261 = !{!162, !149, i64 40}
!262 = !{!"branch_weights", i32 201696804, i32 28405}
!263 = !{!"branch_weights", i32 201554784, i32 156233, i32 14192}
!264 = !{!"branch_weights", i32 14192, i32 11}
!265 = !{!"branch_weights", i32 14201, i32 1}
!266 = distinct !{!266, !173}
!267 = !{!"function_entry_count", i64 6404}
!268 = !{!"branch_weights", i32 1, i32 6404}
!269 = !{!"branch_weights", i32 6405, i32 1}
!270 = !{!162, !149, i64 56}
!271 = !{!"branch_weights", i32 6404, i32 1}
!272 = distinct !{!272, !173}
!273 = !{!"function_entry_count", i64 288039}
!274 = !{!"branch_weights", i32 3, i32 288037}
!275 = !{!"branch_weights", i32 288037, i32 0}
!276 = distinct !{!276, !173}
!277 = !{!"function_entry_count", i64 288036}
!278 = !{!"mg.c:S_mg_free_struct"}
!279 = !{!"branch_weights", i32 2, i32 288036}
!280 = !{!162, !149, i64 32}
!281 = !{!"branch_weights", i32 288036, i32 1}
!282 = !{!"branch_weights", i32 281538, i32 6500}
!283 = !{!"branch_weights", i32 1, i32 6500}
!284 = !{!"branch_weights", i32 6465, i32 36}
!285 = !{!"branch_weights", i32 1, i32 36}
!286 = !{!"branch_weights", i32 36, i32 1}
!287 = !{!"branch_weights", i32 282457, i32 5581}
!288 = !{!"function_entry_count", i64 53028}
!289 = !{!"mg.c:S_SvREFCNT_dec"}
!290 = !{!"branch_weights", i32 53029, i32 1}
!291 = !{!"branch_weights", i32 1, i32 38922}
!292 = distinct !{!292, !173}
!293 = !{!294, !149, i64 56}
!294 = !{!"pmop", !149, i64 0, !149, i64 8, !149, i64 16, !159, i64 24, !152, i64 32, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !150, i64 34, !150, i64 35, !149, i64 40, !149, i64 48, !149, i64 56, !152, i64 64, !150, i64 72, !150, i64 80, !149, i64 88}
!295 = !{!296, !152, i64 96}
!296 = !{!"regexp", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !152, i64 56, !159, i64 64, !159, i64 72, !159, i64 80, !149, i64 88, !152, i64 96, !152, i64 100, !149, i64 104, !152, i64 112, !152, i64 116, !149, i64 120, !149, i64 128, !149, i64 136, !159, i64 144, !159, i64 152, !159, i64 160, !159, i64 168, !152, i64 176, !152, i64 176, !149, i64 184}
!297 = !{!296, !152, i64 112}
!298 = !{!296, !149, i64 120}
!299 = !{!300, !159, i64 0}
!300 = !{!"regexp_paren_pair", !159, i64 0, !159, i64 8, !159, i64 16}
!301 = !{!300, !159, i64 8}
!302 = distinct !{!302, !173}
!303 = !{!"function_entry_count", i64 1806388}
!304 = !{!"mg.c:S_ReANY"}
!305 = !{!296, !152, i64 56}
!306 = !{!296, !149, i64 128}
!307 = !{!296, !159, i64 160}
!308 = !{!296, !159, i64 152}
!309 = !{!310, !152, i64 56}
!310 = !{!"cop", !149, i64 0, !149, i64 8, !149, i64 16, !159, i64 24, !152, i64 32, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !150, i64 34, !150, i64 35, !152, i64 36, !149, i64 40, !149, i64 48, !152, i64 56, !152, i64 60, !149, i64 64, !149, i64 72}
!311 = !{!310, !149, i64 72}
!312 = !{!"function_entry_count", i64 1818105}
!313 = !{!"branch_weights", i32 1811537, i32 6570}
!314 = !{!"branch_weights", i32 5149, i32 1806389}
!315 = !{!"branch_weights", i32 1, i32 1806389}
!316 = !{!296, !149, i64 32}
!317 = !{!318, !149, i64 40}
!318 = !{!"regexp_engine", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88}
!319 = !{!"branch_weights", i32 6405, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 81, i32 1, i32 1, i32 50, i32 1, i32 1, i32 2, i32 1, i32 27, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2}
!320 = !{!186, !186, i64 0}
!321 = !{!"branch_weights", i32 11, i32 1}
!322 = !{!"branch_weights", i32 1, i32 3}
!323 = distinct !{!323, !173}
!324 = !{!325, !152, i64 8}
!325 = !{!"gv", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!326 = !{!"branch_weights", i32 50, i32 1}
!327 = !{!328, !150, i64 238}
!328 = !{!"yy_parser", !149, i64 0, !150, i64 8, !152, i64 16, !152, i64 20, !152, i64 24, !152, i64 28, !149, i64 32, !149, i64 40, !152, i64 48, !152, i64 52, !149, i64 56, !149, i64 64, !150, i64 72, !150, i64 73, !150, i64 74, !150, i64 75, !152, i64 76, !149, i64 80, !149, i64 88, !149, i64 96, !158, i64 104, !158, i64 106, !152, i64 108, !149, i64 112, !152, i64 120, !152, i64 124, !150, i64 128, !150, i64 129, !186, i64 130, !186, i64 131, !152, i64 132, !329, i64 136, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184, !149, i64 192, !149, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !152, i64 232, !158, i64 236, !150, i64 238, !150, i64 239, !149, i64 240, !149, i64 248, !149, i64 256, !150, i64 264, !150, i64 272, !150, i64 312, !152, i64 332, !149, i64 336, !150, i64 344, !152, i64 600, !152, i64 604, !150, i64 608, !150, i64 609, !152, i64 610, !152, i64 610, !152, i64 610, !152, i64 610}
!329 = !{!"_sublex_info", !150, i64 0, !158, i64 2, !149, i64 8, !149, i64 16}
!330 = !{!"branch_weights", i32 11, i32 17}
!331 = !{!"branch_weights", i32 17, i32 1}
!332 = !{!310, !149, i64 64}
!333 = !{!"branch_weights", i32 357, i32 144, i32 1496, i32 595}
!334 = !{!"branch_weights", i32 1, i32 5}
!335 = !{!296, !152, i64 116}
!336 = !{!"branch_weights", i32 5, i32 1}
!337 = !{!338, !149, i64 8}
!338 = !{!"gp", !149, i64 0, !149, i64 8, !149, i64 16, !152, i64 24, !152, i64 28, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !152, i64 64, !152, i64 67, !149, i64 72}
!339 = !{!340, !149, i64 0}
!340 = !{!"io", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!341 = !{!342, !149, i64 80}
!342 = !{!"xpvio", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24, !150, i64 32, !149, i64 40, !150, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !150, i64 128, !150, i64 129}
!343 = !{!338, !149, i64 56}
!344 = !{!325, !149, i64 0}
!345 = !{!342, !149, i64 96}
!346 = !{!342, !159, i64 64}
!347 = !{!342, !159, i64 72}
!348 = !{!342, !159, i64 56}
!349 = !{!342, !150, i64 129}
!350 = !{!"mg.c:S_fixup_errno_string"}
!351 = !{!352, !149, i64 0}
!352 = !{!"ufuncs", !149, i64 0, !149, i64 8, !159, i64 16}
!353 = !{!352, !159, i64 16}
!354 = !{!355, !152, i64 24}
!355 = !{!"stat", !159, i64 0, !159, i64 8, !159, i64 16, !152, i64 24, !152, i64 28, !152, i64 32, !152, i64 36, !159, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !356, i64 72, !356, i64 88, !356, i64 104, !150, i64 120}
!356 = !{!"timespec", !159, i64 0, !159, i64 8}
!357 = distinct !{!357, !173}
!358 = distinct !{!358, !173}
!359 = !{!"function_entry_count", i64 2}
!360 = !{!157, !158, i64 16}
!361 = !{!"branch_weights", i32 1, i32 17}
!362 = !{!"branch_weights", i32 127, i32 961}
!363 = distinct !{!363, !173}
!364 = !{!"branch_weights", i32 4, i32 3, i32 2}
!365 = !{!"function_entry_count", i64 14107}
!366 = !{!"branch_weights", i32 28214, i32 1}
!367 = !{!"branch_weights", i32 5, i32 -608960512, i32 12189690}
!368 = !{!"branch_weights", i32 28122, i32 1}
!369 = !{!"branch_weights", i32 93, i32 1}
!370 = !{!"branch_weights", i32 8743, i32 93}
!371 = !{!"branch_weights", i32 2147407537, i32 76111}
!372 = !{!"branch_weights", i32 14108, i32 14107}
!373 = !{!"branch_weights", i32 1, i32 14107}
!374 = !{!"branch_weights", i32 1073813975, i32 1073669673}
!375 = !{!"branch_weights", i32 1, i32 28215}
!376 = !{!"branch_weights", i32 14107, i32 1}
!377 = !{!"branch_weights", i32 123574132, i32 2023909516}
!378 = distinct !{!378, !173}
!379 = !{!"function_entry_count", i64 45}
!380 = !{!158, !158, i64 0}
!381 = !{!"branch_weights", i32 4, i32 43}
!382 = !{!"branch_weights", i32 21, i32 23}
!383 = !{!"function_entry_count", i64 25}
!384 = !{!"branch_weights", i32 1, i32 26}
!385 = !{!"branch_weights", i32 26, i32 1}
!386 = !{!"branch_weights", i32 53, i32 1}
!387 = !{!388, !152, i64 12}
!388 = !{!"hv", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!389 = !{!388, !149, i64 0}
!390 = !{!391, !159, i64 24}
!391 = !{!"xpvhv", !149, i64 0, !150, i64 8, !159, i64 16, !159, i64 24}
!392 = !{!393, !152, i64 28}
!393 = !{!"xpvhv_aux", !150, i64 0, !149, i64 8, !149, i64 16, !152, i64 24, !152, i64 28, !149, i64 32, !152, i64 40, !152, i64 44, !152, i64 48, !152, i64 52}
!394 = distinct !{!394, !173}
!395 = !{!391, !159, i64 16}
!396 = distinct !{!396, !173}
!397 = !{!"function_entry_count", i64 517918}
!398 = !{!"branch_weights", i32 517919, i32 1}
!399 = !{!400, !149, i64 24}
!400 = !{!"stackinfo", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !152, i64 32, !152, i64 36, !152, i64 40, !152, i64 44}
!401 = !{!"branch_weights", i32 1, i32 517919}
!402 = !{!400, !149, i64 16}
!403 = !{!400, !152, i64 40}
!404 = !{!400, !152, i64 32}
!405 = !{!400, !149, i64 0}
!406 = !{!232, !159, i64 24}
!407 = distinct !{!407, !173}
!408 = !{!"branch_weights", i32 517909, i32 11}
!409 = distinct !{!409, !173}
!410 = !{!"branch_weights", i32 11, i32 517909}
!411 = !{!"branch_weights", i32 2, i32 517918}
!412 = !{!"mg.c:S_magic_methpack"}
!413 = !{!"mg.c:S_magic_methcall1"}
!414 = !{!"branch_weights", i32 1, i32 11}
!415 = !{!"branch_weights", i32 1, i32 517909}
!416 = !{!"branch_weights", i32 178845079, i32 1968638569}
!417 = !{!418, !149, i64 0}
!418 = !{!"xpvmg", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24, !150, i64 32, !150, i64 40}
!419 = !{!393, !149, i64 16}
!420 = !{!421, !150, i64 34}
!421 = !{!"op", !149, i64 0, !149, i64 8, !149, i64 16, !159, i64 24, !152, i64 32, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !152, i64 33, !150, i64 34, !150, i64 35}
!422 = !{!250, !150, i64 73}
!423 = !{!"mg.c:S_sv_or_pv_pos_u2b"}
!424 = !{!"function_entry_count", i64 223}
!425 = !{!"function_entry_count", i64 5570}
!426 = !{!"branch_weights", i32 1, i32 5571}
!427 = !{!"branch_weights", i32 5571, i32 1}
!428 = !{!257, !152, i64 12}
!429 = !{!"branch_weights", i32 434603553, i32 1712880095}
!430 = !{!"function_entry_count", i64 3}
!431 = !{!"function_entry_count", i64 922517}
!432 = !{!352, !149, i64 8}
!433 = !{!"mg.c:S_SvREFCNT_inc_NN"}
!434 = !{!"function_entry_count", i64 19347}
!435 = !{!"branch_weights", i32 1, i32 19348}
!436 = !{!318, !149, i64 48}
!437 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 79, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 14, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 49, i32 19201, i32 1, i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!438 = distinct !{!438, !173}
!439 = !{!"branch_weights", i32 1, i32 6, i32 1}
!440 = !{!310, !149, i64 40}
!441 = !{!"branch_weights", i32 79, i32 1}
!442 = !{!338, !149, i64 32}
!443 = !{!"branch_weights", i32 1, i32 14}
!444 = !{!"branch_weights", i32 14, i32 1}
!445 = !{!"branch_weights", i32 1, i32 223}
!446 = !{!"branch_weights", i32 223, i32 3473}
!447 = distinct !{!447, !173}
!448 = !{!"branch_weights", i32 134177603, i32 2013306045}
!449 = !{!"branch_weights", i32 71, i32 64}
!450 = !{!"branch_weights", i32 7, i32 1}
!451 = !{!"branch_weights", i32 5, i32 3}
!452 = !{!"branch_weights", i32 6, i32 4, i32 6}
!453 = !{!342, !149, i64 88}
!454 = !{!342, !149, i64 104}
!455 = !{!"branch_weights", i32 1, i32 49}
!456 = !{!"branch_weights", i32 99, i32 1}
!457 = !{!"branch_weights", i32 49, i32 1}
!458 = !{!"branch_weights", i32 3, i32 47}
!459 = !{!342, !149, i64 40}
!460 = !{!"branch_weights", i32 19201, i32 1}
!461 = !{!"branch_weights", i32 3, i32 1}
!462 = !{!"branch_weights", i32 28, i32 8}
!463 = distinct !{!463, !173}
!464 = !{!325, !152, i64 12}
!465 = !{!466, !152, i64 12}
!466 = !{!"cv", !149, i64 0, !152, i64 8, !152, i64 12, !150, i64 16}
!467 = !{!466, !149, i64 0}
!468 = !{!469, !152, i64 92}
!469 = !{!"xpvcv", !149, i64 0, !150, i64 8, !159, i64 16, !150, i64 24, !149, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !149, i64 64, !150, i64 72, !149, i64 80, !152, i64 88, !152, i64 92, !152, i64 96}
!470 = !{!"mg.c:S_unwind_handler_stack"}
!471 = !{!"mg.c:CvNAME_HEK"}
!472 = !{!"mg.c:S_CvGV"}
!473 = !{!"function_entry_count", i64 63}
!474 = !{!"mg.c:S_SvREFCNT_inc"}
