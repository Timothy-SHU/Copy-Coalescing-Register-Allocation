; ModuleID = 'pp_hot.c'
source_filename = "pp_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon }
%union.anon = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.7 }
%union._xmgu = type { ptr }
%union.anon.7 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu }
%union.anon.8 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu, %union._xnvu }
%union.anon.9 = type { i64 }
%union._xnvu = type { double }
%struct.logop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, %union._xnvu }
%union.anon.11 = type { i64 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.any = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.22 }
%union.anon.22 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.23, %union._xivu, ptr, %union.anon.24, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.23 = type { i64 }
%union.anon.24 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.16, ptr, %union.anon.17, %union.anon.18, %union.anon.19, ptr, %union.anon.20, ptr, i32, i32, i32 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%union.anon.20 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.21, %union._xivu }
%union.anon.21 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu, %union._xnvu }
%union.anon.15 = type { i64 }
%struct.he = type { ptr, ptr, %union.anon.25 }
%union.anon.25 = type { ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.26, %union.anon.27, ptr }
%union.anon.26 = type { ptr }
%union.anon.27 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.28, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.28 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.29 }
%union.anon.29 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.regexp_paren_pair = type { i64, i64, i64 }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.30, %union._xivu, %union._xnvu, %union.anon.31, i64, ptr, i8, i8 }
%union.anon.30 = type { i64 }
%union.anon.31 = type { i64 }
%struct.unop_aux = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%union.UNOP_AUX_item = type { i64 }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.loop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.methop = type { ptr, ptr, ptr, i64, i16, i8, i8, %union.anon.32, ptr }
%union.anon.32 = type { ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external global ptr, align 8
@PL_sawalias = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_floor = external global i64, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [34 x i8] c"Useless assignment to a temporary\00", align 1
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_sv_undef = external global %struct.sv, align 8
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@PL_argvgv = external local_unnamed_addr global ptr, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_no_aelem = external constant [0 x i8], align 1
@PL_defoutgv = external local_unnamed_addr global ptr, align 8
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@PL_ofsgv = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_ors_sv = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Not %s reference\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PL_no_localize_ref = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Can't return %s to lvalue scalar context\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@PL_delaymagic = external local_unnamed_addr global i16, align 2
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"panic: attempt to copy freed scalar %p\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Assigned value is not a reference\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Assigned value is not a SCALAR reference\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@PL_delaymagic_uid = external local_unnamed_addr global i32, align 4
@PL_delaymagic_euid = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"No setreuid available\00", align 1
@PL_delaymagic_gid = external local_unnamed_addr global i32, align 4
@PL_delaymagic_egid = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"No setregid available\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Reference found where even-sized list expected\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Odd number of elements in hash assignment\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"panic: pp_match\00", align 1
@PL_curpm = external global ptr, align 8
@.str.17 = private unnamed_addr constant [88 x i8] c"panic: pp_match start/end pointers, i=%ld, start=%ld, end=%ld, s=%p, strend=%p, len=%lu\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"READLINE\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [44 x i8] c"glob failed (child exited with status %d%s)\00", align 1
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c", core dumped\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"$&*(){}[]'\22;\\|?<>~`\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.23 = private unnamed_addr constant [38 x i8] c"utf8 \22\\x%02X\22 does not map to Unicode\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@PL_no_helem_sv = external constant [0 x i8], align 1
@PL_no_symref_sv = external constant [0 x i8], align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@PL_no_usym = external constant [0 x i8], align 1
@PL_multideref_pc = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [23 x i8] c"Not an ARRAY reference\00", align 1
@.str.28 = private constant [9 x i8] c"an ARRAY\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Use of reference \22%-p\22 as array index\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Not a HASH reference\00", align 1
@.str.31 = private constant [7 x i8] c"a HASH\00", align 1
@PL_curstack = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [32 x i8] c"Use of freed value in iteration\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"panic: pp_iter, type=%u\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"panic: pp_subst, pm=%p, orig=%p\00", align 1
@PL_encoding = external local_unnamed_addr global ptr, align 8
@PL_lex_encoding = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [18 x i8] c"Substitution loop\00", align 1
@PL_markstack = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [21 x i8] c"Not a CODE reference\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"a subroutine\00", align 1
@.str.38 = private unnamed_addr constant [76 x i8] c"Can't use string (\22%-32p\22%s) as a subroutine ref while \22strict refs\22 in use\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Closure prototype called\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Undefined subroutine &%-p called\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Undefined subroutine called\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@PL_curcopdb = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"DB::lsub\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"No DB::sub routine defined\00", align 1
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [40 x i8] c"Can't modify non-lvalue subroutine call\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [39 x i8] c"Deep recursion on anonymous subroutine\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"Deep recursion on subroutine \22%-p\22\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"Can't call method \22%-p\22 without a package or object reference\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Can't call method \22%-p\22 on an undefined value\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Can't call method \22%-p\22 on unblessed reference\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DOES\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_const() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !6
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !6
  %15 = load ptr, ptr %11, align 8, !tbaa !14
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_nextstate() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !6
  store i8 0, ptr @PL_sawalias, align 1, !tbaa !16
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %5, i64 %8, i32 0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %2, i64 %11
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !6
  %13 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %14 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  tail call void @Perl_free_tmps() #14
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %21() #14
  br label %22

22:                                               ; preds = %17, %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  ret ptr %24
}

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gvsv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !24
  %14 = icmp sgt i8 %13, -1
  %15 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  br i1 %14, label %20, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_save_scalar(ptr noundef %16) #14
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %18, ptr %19, align 8, !tbaa !6
  br label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %16, i32 noundef 0) #14
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %20, %25
  %31 = phi ptr [ %29, %25 ], [ %23, %20 ]
  %32 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !6
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi ptr [ %19, %17 ], [ %32, %30 ]
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.svop, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !25
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 9
  %45 = load i32, ptr %44, align 8
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47

47:                                               ; preds = %43, %33
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !16
  br label %48

48:                                               ; preds = %47, %43
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !6
  %49 = load ptr, ptr %35, align 8, !tbaa !14
  ret ptr %49
}

; Function Attrs: optsize
declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_pp_null() local_unnamed_addr #3 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pushmark() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %2 = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %2, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call ptr @Perl_markstack_grow() #14
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi ptr [ %6, %5 ], [ %2, %0 ]
  %9 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %8, align 4, !tbaa !23
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_stringify() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !27
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %7, ptr %1, align 8, !tbaa !6
  tail call void @Perl_sv_copypv_flags(ptr noundef %7, ptr noundef %8, i32 noundef 2) #14
  %9 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !28
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #14
  br label %15

15:                                               ; preds = %0, %13
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  ret ptr %17
}

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !30
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !25
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %19
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %29, %25, %9
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !6
  %31 = load ptr, ptr %11, align 8, !tbaa !14
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_and() local_unnamed_addr #0 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %4() #14
  br label %5

5:                                                ; preds = %0, %3
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !28
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 2) #14
  br i1 %13, label %63, label %61

14:                                               ; preds = %5
  %15 = and i32 %9, 65280
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %9, 255
  %18 = icmp eq i32 %17, 8
  %19 = or i1 %16, %18
  %20 = and i32 %9, 16777471
  %21 = icmp eq i32 %20, 16777226
  %22 = or i1 %21, %19
  br i1 %22, label %23, label %61

23:                                               ; preds = %14
  %24 = and i32 %9, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !32
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !33
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %63, label %33

33:                                               ; preds = %29
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = load i8, ptr %37, align 1, !tbaa !21
  %39 = icmp eq i8 %38, 48
  br i1 %39, label %61, label %63

40:                                               ; preds = %23
  %41 = and i32 %9, 768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = and i32 %9, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %7, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !21
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46, %43
  %52 = and i32 %9, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %7, align 8, !tbaa !32
  %56 = getelementptr inbounds %struct.xpvnv, ptr %55, i64 0, i32 5
  %57 = load double, ptr %56, align 8, !tbaa !21
  %58 = fcmp une double %57, 0.000000e+00
  br i1 %58, label %63, label %61

59:                                               ; preds = %40
  %60 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 0) #14
  br i1 %60, label %63, label %61

61:                                               ; preds = %54, %14, %59, %51, %35, %33, %26, %12
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %74

63:                                               ; preds = %59, %54, %46, %35, %29, %12
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 511
  %68 = icmp eq i16 %67, 176
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %71 = getelementptr inbounds ptr, ptr %70, i64 -1
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %72

72:                                               ; preds = %69, %63
  %73 = getelementptr inbounds %struct.logop, ptr %64, i64 0, i32 8
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi ptr [ %73, %72 ], [ %62, %61 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  ret ptr %76
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sassign() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = load ptr, ptr %2, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !24
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr %4, ptr %3
  %11 = select i1 %9, ptr %3, ptr %4
  %12 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr @PL_tainted, align 1, !range !35
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !28
  %20 = and i32 %19, 14680064
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %10) #14
  br i1 %23, label %25, label %24

24:                                               ; preds = %22, %17
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  br label %25

25:                                               ; preds = %24, %22, %0
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !24
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %109, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !28
  %38 = and i32 %37, 49152
  %39 = icmp eq i32 %38, 32768
  %40 = and i32 %37, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  %43 = select i1 %39, i1 %42, i1 false
  %44 = add nsw i32 %35, -13
  %45 = icmp ult i32 %44, 2
  %46 = or i1 %45, %43
  br i1 %46, label %87, label %47

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 5
  %49 = load i8, ptr %48, align 2, !tbaa !37
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = zext nneg i8 %50 to i32
  br label %56

54:                                               ; preds = %47
  %55 = tail call i32 @Perl_block_gimme() #14
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %11, i32 noundef 2064, i32 noundef 9) #14
  %61 = getelementptr inbounds %struct.gv, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = and i32 %62, 65280
  %64 = icmp ne i32 %63, 0
  %65 = and i32 %62, 254
  %66 = icmp eq i32 %65, 8
  %67 = or i1 %66, %64
  %68 = and i32 %62, 16777471
  %69 = icmp eq i32 %68, 16777226
  %70 = or i1 %69, %67
  br i1 %70, label %87, label %71

71:                                               ; preds = %59
  %72 = and i32 %62, 255
  %73 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !21
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %60, i32 noundef 1) #14
  %77 = load i32, ptr %61, align 4, !tbaa !30
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi i32 [ %77, %76 ], [ %62, %71 ]
  %80 = or i32 %79, 34816
  store i32 %80, ptr %61, align 4, !tbaa !30
  %81 = getelementptr inbounds %struct.gv, ptr %60, i64 0, i32 3
  store ptr %74, ptr %81, align 8, !tbaa !21
  %82 = icmp eq ptr %74, null
  br i1 %82, label %140, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !38
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !38
  br label %140

87:                                               ; preds = %59, %30, %56
  br i1 %43, label %90, label %88

88:                                               ; preds = %87
  %89 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %11, i32 noundef 2049, i32 noundef 9) #14
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi ptr [ %11, %87 ], [ %89, %88 ]
  br i1 %45, label %109, label %92

92:                                               ; preds = %90
  %93 = load i32, ptr %33, align 4, !tbaa !28
  %94 = and i32 %93, 2048
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  tail call void @Perl_push_scope() #14
  %97 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %98) #15
  %99 = load ptr, ptr %91, align 8, !tbaa !32
  %100 = getelementptr inbounds %struct.xpvgv, ptr %99, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  %102 = load ptr, ptr %97, align 8, !tbaa !21
  %103 = tail call ptr @Perl_newCONSTSUB(ptr noundef %101, ptr noundef null, ptr noundef %102) #14
  store ptr %103, ptr %31, align 8, !tbaa !21
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %32) #15
  tail call void @Perl_pop_scope() #14
  br label %109

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !21
  %107 = getelementptr inbounds %struct.gp, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !39
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %108) #15
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %32) #15
  store ptr %108, ptr %31, align 8, !tbaa !21
  br label %109

109:                                              ; preds = %90, %104, %96, %25
  %110 = phi ptr [ %11, %25 ], [ %91, %96 ], [ %91, %104 ], [ %91, %90 ]
  %111 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !28
  %113 = and i32 %112, 4718592
  %114 = icmp eq i32 %113, 524288
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !38
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = and i32 %112, 49152
  %121 = icmp eq i32 %120, 32768
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = and i32 %112, 255
  %124 = add nsw i32 %123, -9
  %125 = icmp ult i32 %124, 2
  %126 = and i32 %112, 16777216
  %127 = icmp eq i32 %126, 0
  %128 = and i1 %127, %125
  br i1 %128, label %132, label %129

129:                                              ; preds = %122, %119
  %130 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %130, label %131, label %132

131:                                              ; preds = %129
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #14
  br label %132

132:                                              ; preds = %122, %115, %129, %131, %109
  %133 = icmp eq ptr %110, %10
  br i1 %133, label %140, label %134

134:                                              ; preds = %132
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %110, ptr noundef %10, i32 noundef 1538) #14
  %135 = load i32, ptr %111, align 4, !tbaa !28
  %136 = and i32 %135, 4194304
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call i32 @Perl_mg_set(ptr noundef nonnull %110) #14
  br label %140

140:                                              ; preds = %132, %134, %138, %78, %83
  %141 = phi ptr [ %11, %83 ], [ %11, %78 ], [ %110, %138 ], [ %110, %134 ], [ %110, %132 ]
  store ptr %141, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %142 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  ret ptr %143
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !38
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #14
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_cond_expr() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %5() #14
  br label %6

6:                                                ; preds = %0, %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 2) #14
  br i1 %16, label %64, label %67

17:                                               ; preds = %10
  %18 = and i32 %12, 65280
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %12, 255
  %21 = icmp eq i32 %20, 8
  %22 = or i1 %19, %21
  %23 = and i32 %12, 16777471
  %24 = icmp eq i32 %23, 16777226
  %25 = or i1 %24, %22
  br i1 %25, label %26, label %67

26:                                               ; preds = %17
  %27 = and i32 %12, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8, !tbaa !32
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !33
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = load i8, ptr %40, align 1, !tbaa !21
  %42 = icmp eq i8 %41, 48
  br i1 %42, label %67, label %64

43:                                               ; preds = %26
  %44 = and i32 %12, 768
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = and i32 %12, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !21
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49, %46
  %55 = and i32 %12, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.xpvnv, ptr %58, i64 0, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !21
  %61 = fcmp une double %60, 0.000000e+00
  br i1 %61, label %64, label %67

62:                                               ; preds = %43
  %63 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 0) #14
  br i1 %63, label %64, label %67

64:                                               ; preds = %38, %62, %15, %57, %49, %32
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !6
  %65 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.logop, ptr %65, i64 0, i32 8
  br label %69

67:                                               ; preds = %57, %38, %62, %15, %54, %36, %29, %17, %6
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !6
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %66, %64 ], [ %68, %67 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_unstack() local_unnamed_addr #0 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %4() #14
  br label %5

5:                                                ; preds = %0, %3
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %7 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !20
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.context, ptr %9, i64 %12, i32 0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !21
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !6
  %17 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %18 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  tail call void @Perl_free_tmps() #14
  br label %21

21:                                               ; preds = %20, %5
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !37
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load ptr, ptr @PL_scopestack, align 8, !tbaa !6
  %28 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !23
  %29 = sext i32 %28 to i64
  %30 = getelementptr i32, ptr %27, i64 %29
  %31 = getelementptr i32, ptr %30, i64 -1
  %32 = load i32, ptr %31, align 4, !tbaa !23
  %33 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %34 = icmp sgt i32 %33, %32
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  tail call void @Perl_leave_scope(i32 noundef %32) #14
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %26, %35, %21
  %38 = phi ptr [ %22, %26 ], [ %36, %35 ], [ %22, %21 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  ret ptr %39
}

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_concat() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !37
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds ptr, ptr %3, i64 -1
  br label %16

11:                                               ; preds = %0
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !27
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds ptr, ptr %3, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = load ptr, ptr %3, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !28
  %26 = or i32 %25, %22
  %27 = and i32 %26, 2099200
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %16
  %30 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 70, i32 noundef 4) #14
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %3, align 8, !tbaa !6
  %33 = load ptr, ptr %19, align 8, !tbaa !6
  br label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  br label %233

37:                                               ; preds = %31, %16
  %38 = phi ptr [ %33, %31 ], [ %20, %16 ]
  %39 = phi ptr [ %32, %31 ], [ %23, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %40 = icmp eq ptr %18, %39
  %41 = icmp ne ptr %39, %38
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %85

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !28
  %46 = and i32 %45, 2098176
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load ptr, ptr %18, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !33
  store i64 %51, ptr %1, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  br label %57

54:                                               ; preds = %43
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %1, i32 noundef 32) #14
  %56 = load i32, ptr %44, align 4, !tbaa !28
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %45, %48 ], [ %56, %54 ]
  %59 = phi ptr [ %53, %48 ], [ %55, %54 ]
  %60 = and i32 %58, 536870912
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct.cop, ptr %63, i64 0, i32 10
  %65 = load i32, ptr %64, align 8, !tbaa !40
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  %70 = xor i1 %69, true
  %71 = load i64, ptr %1, align 8, !tbaa !22
  %72 = call ptr @Perl_newSVpvn_flags(ptr noundef %59, i64 noundef %71, i32 noundef 524288) #14
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !28
  %75 = and i32 %74, 2098176
  %76 = icmp eq i32 %75, 1024
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load ptr, ptr %72, align 8, !tbaa !32
  %79 = getelementptr inbounds %struct.xpv, ptr %78, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !33
  store i64 %80, ptr %1, align 8, !tbaa !22
  %81 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !21
  br label %85

83:                                               ; preds = %68
  %84 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %72, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %85

85:                                               ; preds = %77, %83, %37
  %86 = phi ptr [ %39, %37 ], [ %72, %83 ], [ %72, %77 ]
  %87 = phi ptr [ null, %37 ], [ %84, %83 ], [ %82, %77 ]
  %88 = phi i1 [ false, %37 ], [ %70, %83 ], [ %70, %77 ]
  %89 = zext i1 %88 to i32
  %90 = icmp eq ptr %18, %38
  br i1 %90, label %129, label %91

91:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %92 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !28
  %94 = and i32 %93, 2098176
  %95 = icmp eq i32 %94, 1024
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load ptr, ptr %38, align 8, !tbaa !32
  %98 = getelementptr inbounds %struct.xpv, ptr %97, i64 0, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !33
  store i64 %99, ptr %2, align 8, !tbaa !22
  %100 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  br label %105

102:                                              ; preds = %91
  %103 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %38, ptr noundef nonnull %2, i32 noundef 32) #14
  %104 = load i32, ptr %92, align 4, !tbaa !28
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i32 [ %93, %96 ], [ %104, %102 ]
  %107 = phi ptr [ %101, %96 ], [ %103, %102 ]
  %108 = and i32 %106, 536870912
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i64, ptr %2, align 8, !tbaa !22
  call void @Perl_sv_setpvn(ptr noundef %18, ptr noundef %107, i64 noundef %111) #14
  br label %123

112:                                              ; preds = %105
  %113 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.cop, ptr %113, i64 0, i32 10
  %115 = load i32, ptr %114, align 8, !tbaa !40
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  %118 = load i64, ptr %2, align 8, !tbaa !22
  call void @Perl_sv_setpvn(ptr noundef %18, ptr noundef %107, i64 noundef %118) #14
  br i1 %117, label %119, label %123

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !28
  %122 = or i32 %121, 536870912
  store i32 %122, ptr %120, align 4, !tbaa !28
  br label %127

123:                                              ; preds = %110, %112
  %124 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !28
  %126 = and i32 %125, -536870913
  store i32 %126, ptr %124, align 4, !tbaa !28
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i8 [ 1, %123 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %166

129:                                              ; preds = %85
  %130 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !28
  %132 = and i32 %131, 65280
  %133 = icmp ne i32 %132, 0
  %134 = and i32 %131, 255
  %135 = icmp eq i32 %134, 8
  %136 = or i1 %133, %135
  %137 = and i32 %131, 16777471
  %138 = icmp eq i32 %137, 16777226
  %139 = or i1 %138, %136
  br i1 %139, label %146, label %140

140:                                              ; preds = %129
  %141 = icmp eq ptr %18, %86
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = call zeroext i1 @Perl_ckwarn(i32 noundef 41) #14
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  call void @Perl_report_uninit(ptr noundef nonnull %18) #14
  br label %145

145:                                              ; preds = %144, %142, %140
  call void @Perl_sv_setpvn(ptr noundef nonnull %18, ptr noundef nonnull @.str.1, i64 noundef 0) #14
  br label %151

146:                                              ; preds = %129
  %147 = and i32 %131, 430018304
  %148 = icmp eq i32 %147, 1024
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 0) #14
  br label %151

151:                                              ; preds = %146, %149, %145
  %152 = load i32, ptr %130, align 4, !tbaa !28
  %153 = and i32 %152, 536870912
  %154 = icmp eq i32 %153, 0
  %155 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %156 = getelementptr inbounds %struct.cop, ptr %155, i64 0, i32 10
  %157 = load i32, ptr %156, align 8, !tbaa !40
  %158 = trunc i32 %157 to i8
  %159 = lshr i8 %158, 3
  %160 = and i8 %159, 1
  %161 = select i1 %154, i8 1, i8 %160
  %162 = and i32 %157, 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %151
  %165 = and i32 %152, -536870913
  store i32 %165, ptr %130, align 4, !tbaa !28
  br label %166

166:                                              ; preds = %151, %164, %127
  %167 = phi i8 [ %128, %127 ], [ %161, %164 ], [ %161, %151 ]
  br i1 %42, label %193, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !28
  %171 = and i32 %170, 2098176
  %172 = icmp eq i32 %171, 1024
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load ptr, ptr %86, align 8, !tbaa !32
  %175 = getelementptr inbounds %struct.xpv, ptr %174, i64 0, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !33
  store i64 %176, ptr %1, align 8, !tbaa !22
  %177 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !21
  br label %182

179:                                              ; preds = %168
  %180 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %86, ptr noundef nonnull %1, i32 noundef 32) #14
  %181 = load i32, ptr %169, align 4, !tbaa !28
  br label %182

182:                                              ; preds = %179, %173
  %183 = phi i32 [ %170, %173 ], [ %181, %179 ]
  %184 = phi ptr [ %178, %173 ], [ %180, %179 ]
  %185 = and i32 %183, 536870912
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %189 = getelementptr inbounds %struct.cop, ptr %188, i64 0, i32 10
  %190 = load i32, ptr %189, align 8, !tbaa !40
  %191 = lshr i32 %190, 3
  %192 = and i32 %191, 1
  br label %193

193:                                              ; preds = %182, %187, %166
  %194 = phi ptr [ %87, %166 ], [ %184, %187 ], [ %184, %182 ]
  %195 = phi i32 [ %89, %166 ], [ %192, %187 ], [ 1, %182 ]
  %196 = zext nneg i8 %167 to i32
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %221, label %198

198:                                              ; preds = %193
  %199 = icmp eq i8 %167, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %198
  %201 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %18, i32 noundef 0, i64 noundef 0) #14
  br label %221

202:                                              ; preds = %198
  br i1 %42, label %206, label %203

203:                                              ; preds = %202
  %204 = load i64, ptr %1, align 8, !tbaa !22
  %205 = call ptr @Perl_newSVpvn_flags(ptr noundef %194, i64 noundef %204, i32 noundef 524288) #14
  br label %206

206:                                              ; preds = %203, %202
  %207 = phi ptr [ %86, %202 ], [ %205, %203 ]
  %208 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %207, i32 noundef 0, i64 noundef 0) #14
  %209 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 2
  %210 = load i32, ptr %209, align 4, !tbaa !28
  %211 = and i32 %210, 2098176
  %212 = icmp eq i32 %211, 1024
  br i1 %212, label %213, label %219

213:                                              ; preds = %206
  %214 = load ptr, ptr %207, align 8, !tbaa !32
  %215 = getelementptr inbounds %struct.xpv, ptr %214, i64 0, i32 2
  %216 = load i64, ptr %215, align 8, !tbaa !33
  store i64 %216, ptr %1, align 8, !tbaa !22
  %217 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !21
  br label %221

219:                                              ; preds = %206
  %220 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %207, ptr noundef nonnull %1, i32 noundef 32) #14
  br label %221

221:                                              ; preds = %213, %219, %200, %193
  %222 = phi ptr [ %194, %200 ], [ %194, %193 ], [ %218, %213 ], [ %220, %219 ]
  %223 = load i64, ptr %1, align 8, !tbaa !22
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef %222, i64 noundef %223, i32 noundef 0) #14
  %224 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %225 = load i32, ptr %224, align 4, !tbaa !28
  %226 = and i32 %225, 4194304
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %221
  %229 = call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %230

230:                                              ; preds = %221, %228
  store ptr %18, ptr %19, align 8, !tbaa !6
  store ptr %19, ptr @PL_stack_sp, align 8, !tbaa !6
  %231 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %232 = load ptr, ptr %231, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %233

233:                                              ; preds = %230, %34
  %234 = phi ptr [ %36, %34 ], [ %232, %230 ]
  ret ptr %234
}

; Function Attrs: optsize
declare zeroext i1 @Perl_try_amagic_bin(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_padrange() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !24
  %7 = and i8 %6, 127
  %8 = zext nneg i8 %7 to i32
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !37
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %45, label %12

12:                                               ; preds = %0
  %13 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  store ptr %14, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %15 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_markstack_grow() #14
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %14, %12 ]
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %22 = ptrtoint ptr %1 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 3
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %20, align 4, !tbaa !23
  %27 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %27, i32 noundef 11) #14
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  br label %39

39:                                               ; preds = %19, %33
  %40 = phi ptr [ %38, %33 ], [ %31, %19 ]
  tail call fastcc void @S_pushav(ptr noundef %40) #15
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %42 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.op, ptr %42, i64 0, i32 5
  %44 = load i8, ptr %43, align 2, !tbaa !37
  br label %45

45:                                               ; preds = %39, %0
  %46 = phi i8 [ %44, %39 ], [ %10, %0 ]
  %47 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %48 = and i8 %46, 3
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %89, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %47 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = zext nneg i8 %7 to i64
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = tail call ptr @Perl_stack_grow(ptr noundef %47, ptr noundef %47, i64 noundef %56) #14
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ %59, %58 ], [ %47, %50 ]
  %62 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  store ptr %63, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %64 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !6
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = tail call ptr @Perl_markstack_grow() #14
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ %63, %60 ]
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %71 = ptrtoint ptr %61 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = lshr exact i64 %73, 3
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %69, align 4, !tbaa !23
  %76 = icmp eq i8 %7, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %79 = getelementptr ptr, ptr %78, i64 %4
  %80 = zext nneg i8 %7 to i64
  br label %81

81:                                               ; preds = %77, %81
  %82 = phi i64 [ 0, %77 ], [ %87, %81 ]
  %83 = phi ptr [ %61, %77 ], [ %86, %81 ]
  %84 = getelementptr ptr, ptr %79, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %85, ptr %86, align 8, !tbaa !6
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %80
  br i1 %88, label %89, label %81, !llvm.loop !43

89:                                               ; preds = %81, %68, %45
  %90 = phi ptr [ %47, %45 ], [ %61, %68 ], [ %86, %81 ]
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.op, ptr %91, i64 0, i32 6
  %93 = load i8, ptr %92, align 1, !tbaa !24
  %94 = icmp sgt i8 %93, -1
  br i1 %94, label %121, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %97 = getelementptr inbounds ptr, ptr %96, i64 %4
  %98 = shl i64 %4, 13
  %99 = shl nuw nsw i32 %8, 6
  %100 = zext nneg i32 %99 to i64
  %101 = or disjoint i64 %98, %100
  %102 = or disjoint i64 %101, 1
  %103 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %104 = load ptr, ptr @PL_savestack, align 8, !tbaa !6
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %union.any, ptr %104, i64 %105
  store i64 %102, ptr %106, align 8, !tbaa !21
  %107 = add nsw i32 %103, 1
  store i32 %107, ptr @PL_savestack_ix, align 4, !tbaa !23
  %108 = add nsw i32 %103, 5
  %109 = load i32, ptr @PL_savestack_max, align 4, !tbaa !23
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  tail call void @Perl_savestack_grow() #14
  br label %112

112:                                              ; preds = %95, %111
  %113 = icmp eq i8 %7, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %112, %114
  %115 = phi i32 [ %119, %114 ], [ 0, %112 ]
  %116 = phi ptr [ %117, %114 ], [ %97, %112 ]
  %117 = getelementptr inbounds ptr, ptr %116, i64 1
  %118 = load ptr, ptr %116, align 8, !tbaa !6
  tail call fastcc void @S_SvPADSTALE_off(ptr noundef %118) #15
  %119 = add nuw nsw i32 %115, 1
  %120 = icmp eq i32 %119, %8
  br i1 %120, label %121, label %114, !llvm.loop !45

121:                                              ; preds = %114, %112, %89
  store ptr %90, ptr @PL_stack_sp, align 8, !tbaa !6
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  ret ptr %123
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_pushav(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #14
  %9 = sext i32 %8 to i64
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.xpvav, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i64 [ %9, %7 ], [ %13, %10 ]
  %16 = add i64 %15, 1
  %17 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %2 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp sgt i64 %21, %15
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %16) #14
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ %2, %14 ]
  %27 = load i32, ptr %3, align 4, !tbaa !50
  %28 = and i32 %27, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i64 %16, 0
  br i1 %29, label %32, label %31

31:                                               ; preds = %25
  br i1 %30, label %63, label %35

32:                                               ; preds = %25
  br i1 %30, label %63, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %53

35:                                               ; preds = %31, %48
  %36 = phi i64 [ %50, %48 ], [ 0, %31 ]
  %37 = tail call ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %36, i32 noundef 0) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !28
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @Perl_mg_get(ptr noundef nonnull %40) #14
  %47 = load ptr, ptr %37, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %39, %35, %45
  %49 = phi ptr [ %47, %45 ], [ @PL_sv_undef, %35 ], [ %40, %39 ]
  %50 = add nuw i64 %36, 1
  %51 = getelementptr inbounds ptr, ptr %26, i64 %50
  store ptr %49, ptr %51, align 8, !tbaa !6
  %52 = icmp eq i64 %36, %15
  br i1 %52, label %63, label %35, !llvm.loop !51

53:                                               ; preds = %33, %53
  %54 = phi i64 [ 0, %33 ], [ %60, %53 ]
  %55 = load ptr, ptr %34, align 8, !tbaa !21
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @PL_sv_undef, ptr %57
  %60 = add nuw i64 %54, 1
  %61 = getelementptr inbounds ptr, ptr %26, i64 %60
  store ptr %59, ptr %61, align 8, !tbaa !6
  %62 = icmp eq i64 %54, %15
  br i1 %62, label %63, label %53, !llvm.loop !52

63:                                               ; preds = %48, %53, %31, %32
  %64 = getelementptr inbounds ptr, ptr %26, i64 %16
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @Perl_savestack_grow() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_off(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !28
  %4 = and i32 %3, -262145
  store i32 %4, ptr %2, align 4, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_padsv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !27
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !6
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !37
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !24
  %25 = and i8 %24, -64
  %26 = icmp eq i8 %25, -128
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call void @Perl_save_clearsv(ptr noundef nonnull %15) #14
  %28 = load i8, ptr %23, align 1, !tbaa !24
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i8 [ %28, %27 ], [ %24, %22 ]
  %31 = and i8 %30, 48
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = zext nneg i8 %31 to i32
  %35 = load ptr, ptr %17, align 8, !tbaa !6
  %36 = tail call ptr @Perl_vivify_ref(ptr noundef %35, i32 noundef %34) #15
  store ptr %36, ptr %17, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %29, %33, %9
  %38 = load ptr, ptr %11, align 8, !tbaa !14
  ret ptr %38
}

; Function Attrs: optsize
declare void @Perl_save_clearsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_vivify_ref(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  %9 = load i32, ptr %3, align 4, !tbaa !28
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %4, %2 ], [ %9, %7 ]
  %12 = and i32 %11, 65280
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 8
  %16 = or i1 %13, %15
  %17 = and i32 %11, 16777471
  %18 = icmp eq i32 %17, 16777226
  %19 = or i1 %18, %16
  br i1 %19, label %90, label %20

20:                                               ; preds = %10
  %21 = and i32 %11, 134283264
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @Perl_croak_no_modify() #14
  %24 = load i32, ptr %3, align 4, !tbaa !28
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %14, %20 ], [ %25, %23 ]
  %28 = phi i32 [ %11, %20 ], [ %24, %23 ]
  %29 = icmp ugt i32 %27, 2
  %30 = icmp eq i32 %27, 1
  %31 = or i1 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %65

33:                                               ; preds = %26
  br i1 %29, label %34, label %65

34:                                               ; preds = %33
  %35 = load ptr, ptr %0, align 8, !tbaa !32
  %36 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !21
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = and i32 %28, 33554432
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  br i1 %41, label %57, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %43, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !21
  %47 = zext i8 %46 to i64
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %43, i64 -9
  %51 = load i64, ptr %50, align 1
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %49 ]
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, ptr %43, i64 %54
  store ptr %55, ptr %42, align 8, !tbaa !21
  %56 = and i32 %28, -33554433
  store i32 %56, ptr %3, align 4, !tbaa !28
  br label %57

57:                                               ; preds = %39, %52
  %58 = phi ptr [ %55, %52 ], [ %43, %39 ]
  tail call void @Perl_safesysfree(ptr noundef %58) #14
  %59 = load ptr, ptr %0, align 8, !tbaa !32
  br label %60

60:                                               ; preds = %57, %34
  %61 = phi ptr [ %59, %57 ], [ %35, %34 ]
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 3
  store i64 0, ptr %62, align 8, !tbaa !21
  %63 = load ptr, ptr %0, align 8, !tbaa !32
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  store i64 0, ptr %64, align 8, !tbaa !33
  br label %65

65:                                               ; preds = %32, %60, %33
  switch i32 %1, label %75 [
    i32 48, label %66
    i32 16, label %68
    i32 32, label %70
  ]

66:                                               ; preds = %65
  %67 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %72

68:                                               ; preds = %65
  %69 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br label %72

70:                                               ; preds = %65
  %71 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %72

72:                                               ; preds = %66, %68, %70
  %73 = phi ptr [ %71, %70 ], [ %69, %68 ], [ %67, %66 ]
  %74 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !21
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, ptr %3, align 4, !tbaa !28
  %77 = or i32 %76, 2048
  store i32 %77, ptr %3, align 4, !tbaa !28
  %78 = and i32 %76, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #14
  %82 = load i32, ptr %3, align 4, !tbaa !28
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %82, %80 ], [ %77, %75 ]
  %85 = and i32 %84, 2097152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  %89 = load i32, ptr %3, align 4, !tbaa !28
  br label %90

90:                                               ; preds = %87, %83, %10
  %91 = phi i32 [ %89, %87 ], [ %84, %83 ], [ %11, %10 ]
  %92 = and i32 %91, 2097152
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_setsv_flags(ptr noundef %95, ptr noundef nonnull %0, i32 noundef 1536) #14
  br label %96

96:                                               ; preds = %90, %94
  %97 = phi ptr [ %95, %94 ], [ %0, %90 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_readline() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %109, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %2) #14
  %11 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %2, %4 ], [ %12, %9 ]
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2, !tbaa !37
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = zext nneg i8 %18 to i32
  br label %24

22:                                               ; preds = %13
  %23 = tail call i32 @Perl_block_gimme() #14
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !28
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %105, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %32, align 8, !tbaa !32
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %105, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %14, ptr noundef nonnull @PL_sv_undef, i32 noundef 15, i32 noundef 73) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %105, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  switch i32 %25, label %71 [
    i32 1, label %101
    i32 3, label %49
  ]

49:                                               ; preds = %47
  %50 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %45) #15
  %51 = getelementptr inbounds ptr, ptr %48, i64 -1
  %52 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %51 to i64
  %55 = sub i64 %53, %54
  %56 = ashr exact i64 %55, 3
  %57 = icmp sgt i64 %56, %50
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = add nsw i64 %50, 1
  %60 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %51, ptr noundef nonnull %51, i64 noundef %59) #14
  br label %61

61:                                               ; preds = %49, %58
  %62 = phi ptr [ %60, %58 ], [ %51, %49 ]
  %63 = icmp slt i64 %50, 0
  br i1 %63, label %101, label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %68, %64 ], [ %62, %61 ]
  %66 = phi i64 [ %69, %64 ], [ 0, %61 ]
  %67 = tail call ptr @Perl_av_shift(ptr noundef nonnull %45) #14
  %68 = getelementptr inbounds ptr, ptr %65, i64 1
  store ptr %67, ptr %68, align 8, !tbaa !6
  %69 = add nuw i64 %66, 1
  %70 = icmp eq i64 %66, %50
  br i1 %70, label %101, label %64, !llvm.loop !57

71:                                               ; preds = %47
  %72 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.op, ptr %72, i64 0, i32 5
  %74 = load i8, ptr %73, align 2, !tbaa !37
  %75 = and i8 %74, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds ptr, ptr %48, i64 -1
  br label %84

79:                                               ; preds = %71
  %80 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.op, ptr %72, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !27
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi ptr [ %78, %77 ], [ %83, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  tail call void @Perl_sv_setsv_flags(ptr noundef %86, ptr noundef nonnull %45, i32 noundef 1538) #14
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 5
  %89 = load i8, ptr %88, align 2, !tbaa !37
  %90 = shl i8 %89, 1
  %91 = ashr i8 %90, 7
  %92 = sext i8 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %48, i64 %92
  %94 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !28
  %96 = and i32 %95, 4194304
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %84
  %99 = tail call i32 @Perl_mg_set(ptr noundef nonnull %86) #14
  br label %100

100:                                              ; preds = %84, %98
  store ptr %86, ptr %93, align 8, !tbaa !6
  br label %101

101:                                              ; preds = %64, %61, %100, %47
  %102 = phi ptr [ %48, %47 ], [ %93, %100 ], [ %62, %61 ], [ %68, %64 ]
  store ptr %102, ptr @PL_stack_sp, align 8, !tbaa !6
  %103 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  br label %160

105:                                              ; preds = %24, %30, %37, %44
  %106 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 -1
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !6
  %108 = load ptr, ptr %106, align 8, !tbaa !6
  store ptr %108, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %112

109:                                              ; preds = %0
  %110 = load ptr, ptr @PL_argvgv, align 8, !tbaa !6
  store ptr %110, ptr @PL_last_in_gv, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %1, i64 -1
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi ptr [ %111, %109 ], [ %107, %105 ]
  %114 = phi ptr [ %110, %109 ], [ %108, %105 ]
  %115 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !30
  %117 = and i32 %116, 49152
  %118 = icmp eq i32 %117, 32768
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = and i32 %116, 255
  %121 = add nsw i32 %120, -9
  %122 = icmp ult i32 %121, 2
  br i1 %122, label %158, label %123

123:                                              ; preds = %119, %112
  %124 = and i32 %116, 2048
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !21
  %129 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !28
  %131 = and i32 %130, 49152
  %132 = icmp eq i32 %131, 32768
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = and i32 %130, 255
  %135 = add nsw i32 %134, -9
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %156, label %137

137:                                              ; preds = %133, %126, %123
  %138 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %113 to i64
  %141 = sub i64 %139, %140
  %142 = icmp slt i64 %141, 8
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %113, ptr noundef nonnull %113, i64 noundef 1) #14
  %145 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  br label %146

146:                                              ; preds = %137, %143
  %147 = phi ptr [ %145, %143 ], [ %114, %137 ]
  %148 = phi ptr [ %144, %143 ], [ %113, %137 ]
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  store ptr %147, ptr %149, align 8, !tbaa !6
  store ptr %149, ptr @PL_stack_sp, align 8, !tbaa !6
  %150 = tail call ptr @Perl_pp_rv2gv() #14
  %151 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %152 = getelementptr inbounds ptr, ptr %151, i64 -1
  store ptr %152, ptr @PL_stack_sp, align 8, !tbaa !6
  %153 = load ptr, ptr %151, align 8, !tbaa !6
  %154 = icmp eq ptr %153, @PL_sv_undef
  %155 = select i1 %154, ptr null, ptr %153
  br label %156

156:                                              ; preds = %133, %146
  %157 = phi ptr [ %155, %146 ], [ %128, %133 ]
  store ptr %157, ptr @PL_last_in_gv, align 8
  br label %158

158:                                              ; preds = %156, %119
  %159 = tail call ptr @Perl_do_readline() #15
  br label %160

160:                                              ; preds = %101, %158
  %161 = phi ptr [ %159, %158 ], [ %104, %101 ]
  ret ptr %161
}

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !28
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #14
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pp_rv2gv() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_do_readline() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !37
  %6 = and i8 %5, 64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  br label %15

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %2, %10 ]
  %17 = phi ptr [ %2, %8 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !28
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  br label %34

34:                                               ; preds = %21, %15, %27, %31
  %35 = phi ptr [ %33, %31 ], [ null, %27 ], [ null, %15 ], [ null, %21 ]
  %36 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 511
  %39 = and i8 %5, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = zext nneg i8 %39 to i32
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_block_gimme() #14
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq ptr %35, null
  br i1 %47, label %191, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !28
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %35, i32 noundef 113) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.18, i32 noundef 0) #14
  store ptr %60, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !6
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %57, %56 ]
  %63 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %62, ptr noundef %16, ptr noundef nonnull %35, ptr noundef nonnull %54, i32 noundef %46, i32 noundef 0) #14
  %64 = icmp eq i32 %46, 2
  br i1 %64, label %65, label %561

65:                                               ; preds = %61
  %66 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = icmp eq ptr %18, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef %67, i32 noundef 1554) #14
  br label %70

70:                                               ; preds = %65, %69
  %71 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !28
  %73 = and i32 %72, 4194304
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %77

77:                                               ; preds = %70, %75
  store ptr %18, ptr %66, align 8, !tbaa !6
  br label %561

78:                                               ; preds = %48, %53
  %79 = getelementptr inbounds %struct.io, ptr %35, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %170

82:                                               ; preds = %78
  %83 = load ptr, ptr %35, align 8, !tbaa !59
  %84 = getelementptr inbounds %struct.xpvio, ptr %83, i64 0, i32 17
  %85 = load i8, ptr %84, align 1, !tbaa !61
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %168, label %89

89:                                               ; preds = %82
  %90 = and i32 %86, 2
  %91 = icmp eq i32 %90, 0
  %92 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  br i1 %91, label %157, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.xpvio, ptr %83, i64 0, i32 4
  store i64 0, ptr %94, align 8, !tbaa !21
  %95 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !21
  %97 = getelementptr inbounds %struct.gp, ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %92, i32 noundef 11) #14
  %102 = getelementptr inbounds %struct.gv, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !21
  %104 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !42
  br label %106

106:                                              ; preds = %93, %100
  %107 = phi ptr [ %105, %100 ], [ %98, %93 ]
  %108 = tail call fastcc i64 @S_av_top_index(ptr noundef %107) #15
  %109 = icmp slt i64 %108, 0
  %110 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  br i1 %109, label %111, label %157

111:                                              ; preds = %106
  %112 = load ptr, ptr %35, align 8, !tbaa !59
  %113 = getelementptr inbounds %struct.xpvio, ptr %112, i64 0, i32 17
  %114 = load i8, ptr %113, align 1, !tbaa !61
  %115 = and i8 %114, -3
  store i8 %115, ptr %113, align 1, !tbaa !61
  %116 = tail call zeroext i1 @Perl_do_open6(ptr noundef %110, ptr noundef nonnull @.str.19, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %117 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %111
  %120 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct.gv, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !21
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %120, i32 noundef 0) #14
  %127 = getelementptr inbounds %struct.gv, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !21
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  br label %130

130:                                              ; preds = %119, %125
  %131 = phi ptr [ %129, %125 ], [ %123, %119 ]
  tail call void @Perl_sv_untaint(ptr noundef %131) #14
  br label %132

132:                                              ; preds = %111, %130
  %133 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %134 = getelementptr inbounds %struct.gv, ptr %133, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !21
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %133, i32 noundef 0) #14
  %140 = getelementptr inbounds %struct.gv, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !21
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  br label %143

143:                                              ; preds = %132, %138
  %144 = phi ptr [ %142, %138 ], [ %136, %132 ]
  tail call void @Perl_sv_setpvn(ptr noundef %144, ptr noundef nonnull @.str.19, i64 noundef 1) #14
  %145 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !21
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  %149 = getelementptr inbounds %struct.sv, ptr %148, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !28
  %151 = and i32 %150, 4194304
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %143
  %154 = tail call i32 @Perl_mg_set(ptr noundef nonnull %148) #14
  br label %155

155:                                              ; preds = %143, %153
  %156 = load ptr, ptr %79, align 8, !tbaa !21
  br label %215

157:                                              ; preds = %106, %89
  %158 = phi ptr [ %110, %106 ], [ %92, %89 ]
  %159 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %160 = getelementptr inbounds %struct.op, ptr %159, i64 0, i32 5
  %161 = load i8, ptr %160, align 2, !tbaa !37
  %162 = icmp slt i8 %161, 0
  %163 = tail call ptr @Perl_nextargv(ptr noundef %158, i1 noundef zeroext %162) #14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %215

165:                                              ; preds = %157
  %166 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %167 = tail call zeroext i1 @Perl_do_close(ptr noundef %166, i1 noundef zeroext false) #14
  br label %184

168:                                              ; preds = %82
  %169 = icmp eq i16 %38, 25
  br i1 %169, label %179, label %184

170:                                              ; preds = %78
  %171 = icmp eq i16 %38, 25
  br i1 %171, label %218, label %172

172:                                              ; preds = %170
  %173 = load ptr, ptr %35, align 8, !tbaa !59
  %174 = getelementptr inbounds %struct.xpvio, ptr %173, i64 0, i32 16
  %175 = load i8, ptr %174, align 8, !tbaa !64
  %176 = icmp eq i8 %175, 62
  br i1 %176, label %177, label %215

177:                                              ; preds = %172
  %178 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  tail call void @Perl_report_wrongway_fh(ptr noundef %178, i8 noundef signext 62) #14
  br label %215

179:                                              ; preds = %168
  %180 = getelementptr inbounds ptr, ptr %16, i64 -1
  %181 = load ptr, ptr %16, align 8, !tbaa !6
  %182 = tail call ptr @Perl_start_glob(ptr noundef %181, ptr noundef nonnull %35) #14
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %221

184:                                              ; preds = %168, %165, %179
  %185 = phi ptr [ %180, %179 ], [ %16, %165 ], [ %16, %168 ]
  %186 = load ptr, ptr %35, align 8, !tbaa !59
  %187 = getelementptr inbounds %struct.xpvio, ptr %186, i64 0, i32 17
  %188 = load i8, ptr %187, align 1, !tbaa !61
  %189 = and i8 %188, 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %45, %184
  %192 = phi ptr [ %185, %184 ], [ %16, %45 ]
  %193 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 6) #14
  %194 = icmp ne i16 %38, 25
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  tail call void @Perl_report_evil_fh(ptr noundef %197) #14
  br label %198

198:                                              ; preds = %196, %191, %184
  %199 = phi ptr [ %192, %196 ], [ %192, %191 ], [ %185, %184 ]
  %200 = icmp eq i32 %46, 2
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = icmp eq i16 %38, 27
  br i1 %202, label %204, label %203

203:                                              ; preds = %201
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef null, i32 noundef 1538) #14
  br label %204

204:                                              ; preds = %203, %201
  %205 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %206 = load i32, ptr %205, align 4, !tbaa !28
  %207 = and i32 %206, 4194304
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = tail call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %211

211:                                              ; preds = %204, %209
  %212 = getelementptr inbounds ptr, ptr %199, i64 1
  store ptr %18, ptr %212, align 8, !tbaa !6
  br label %213

213:                                              ; preds = %211, %198
  %214 = phi ptr [ %212, %211 ], [ %199, %198 ]
  store ptr %214, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %561

215:                                              ; preds = %157, %172, %177, %155
  %216 = phi ptr [ %156, %155 ], [ %163, %157 ], [ %80, %172 ], [ %80, %177 ]
  %217 = icmp eq i32 %46, 2
  br i1 %217, label %223, label %295

218:                                              ; preds = %170
  %219 = getelementptr inbounds ptr, ptr %16, i64 -1
  %220 = icmp eq i32 %46, 2
  br i1 %220, label %232, label %295

221:                                              ; preds = %179
  %222 = icmp eq i32 %46, 2
  br i1 %222, label %232, label %295

223:                                              ; preds = %215
  %224 = icmp eq i16 %38, 27
  br i1 %224, label %225, label %232

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !28
  %228 = and i32 %227, 2097152
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %225
  %231 = tail call i32 @Perl_mg_get(ptr noundef nonnull %18) #14
  br label %232

232:                                              ; preds = %221, %218, %230, %225, %223
  %233 = phi i1 [ true, %230 ], [ true, %225 ], [ false, %223 ], [ false, %218 ], [ false, %221 ]
  %234 = phi ptr [ %216, %230 ], [ %216, %225 ], [ %216, %223 ], [ %80, %218 ], [ %182, %221 ]
  %235 = phi ptr [ %16, %230 ], [ %16, %225 ], [ %16, %223 ], [ %219, %218 ], [ %180, %221 ]
  %236 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %237 = load i32, ptr %236, align 4, !tbaa !28
  %238 = and i32 %237, 2048
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %232
  br i1 %233, label %241, label %246

241:                                              ; preds = %240
  %242 = and i32 %237, 430018304
  %243 = icmp eq i32 %242, 1024
  br i1 %243, label %259, label %244

244:                                              ; preds = %241
  %245 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 0) #14
  br label %259

246:                                              ; preds = %240
  tail call void @Perl_sv_unref_flags(ptr noundef nonnull %18, i32 noundef 0) #14
  br label %259

247:                                              ; preds = %232
  %248 = and i32 %237, 49152
  %249 = icmp eq i32 %248, 32768
  br i1 %249, label %250, label %259

250:                                              ; preds = %247
  %251 = and i32 %237, 255
  %252 = add nsw i32 %251, -11
  %253 = icmp ult i32 %252, -2
  %254 = and i32 %237, 430016256
  %255 = icmp eq i32 %254, 1024
  %256 = or i1 %255, %253
  br i1 %256, label %259, label %257

257:                                              ; preds = %250
  %258 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 0) #14
  br label %259

259:                                              ; preds = %250, %241, %247, %257, %246, %244
  %260 = load i32, ptr %236, align 4, !tbaa !28
  %261 = and i32 %260, 255
  %262 = icmp ugt i32 %261, 2
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %18, i32 noundef 3) #14
  br label %264

264:                                              ; preds = %263, %259
  %265 = load ptr, ptr %18, align 8, !tbaa !32
  %266 = getelementptr inbounds %struct.xpv, ptr %265, i64 0, i32 3
  %267 = load i64, ptr %266, align 8, !tbaa !21
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load i32, ptr %236, align 4, !tbaa !28
  %271 = and i32 %270, 402718720
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %18, i64 noundef 80) #14
  br label %275

275:                                              ; preds = %273, %269, %264
  br i1 %233, label %276, label %300

276:                                              ; preds = %275
  %277 = load i32, ptr %236, align 4, !tbaa !28
  %278 = and i32 %277, 65280
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %277, 255
  %281 = icmp eq i32 %280, 8
  %282 = or i1 %279, %281
  %283 = and i32 %277, 16777471
  %284 = icmp eq i32 %283, 16777226
  %285 = or i1 %284, %282
  br i1 %285, label %286, label %300

286:                                              ; preds = %276
  %287 = and i32 %277, 1024
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 0) #14
  br label %291

291:                                              ; preds = %289, %286
  %292 = load ptr, ptr %18, align 8, !tbaa !32
  %293 = getelementptr inbounds %struct.xpv, ptr %292, i64 0, i32 2
  %294 = load i64, ptr %293, align 8, !tbaa !33
  br label %300

295:                                              ; preds = %218, %221, %215
  %296 = phi ptr [ %180, %221 ], [ %16, %215 ], [ %219, %218 ]
  %297 = phi ptr [ %182, %221 ], [ %216, %215 ], [ %80, %218 ]
  %298 = tail call ptr @Perl_newSV(i64 noundef 80) #14
  %299 = tail call ptr @Perl_sv_2mortal(ptr noundef %298) #14
  br label %300

300:                                              ; preds = %276, %275, %291, %295
  %301 = phi i1 [ true, %291 ], [ true, %275 ], [ false, %295 ], [ true, %276 ]
  %302 = phi ptr [ %235, %291 ], [ %235, %275 ], [ %296, %295 ], [ %235, %276 ]
  %303 = phi ptr [ %234, %291 ], [ %234, %275 ], [ %297, %295 ], [ %234, %276 ]
  %304 = phi i64 [ %294, %291 ], [ 0, %275 ], [ 0, %295 ], [ 0, %276 ]
  %305 = phi i64 [ %267, %291 ], [ %267, %275 ], [ 0, %295 ], [ %267, %276 ]
  %306 = phi ptr [ %18, %291 ], [ %18, %275 ], [ %299, %295 ], [ %18, %276 ]
  %307 = trunc i64 %304 to i32
  %308 = icmp eq i16 %38, 25
  %309 = icmp ne i32 %46, 2
  %310 = select i1 %308, i1 true, i1 %309
  %311 = icmp eq i32 %46, 3
  br label %312

312:                                              ; preds = %358, %300
  %313 = phi ptr [ %364, %358 ], [ %303, %300 ]
  %314 = phi ptr [ %317, %358 ], [ %306, %300 ]
  %315 = phi ptr [ %322, %358 ], [ %302, %300 ]
  br label %316

316:                                              ; preds = %312, %539
  %317 = phi ptr [ %314, %312 ], [ %541, %539 ]
  %318 = phi ptr [ %315, %312 ], [ %526, %539 ]
  %319 = getelementptr inbounds %struct.sv, ptr %317, i64 0, i32 2
  %320 = getelementptr inbounds %struct.sv, ptr %317, i64 0, i32 3
  br label %321

321:                                              ; preds = %316, %494
  %322 = phi ptr [ %453, %494 ], [ %318, %316 ]
  store ptr %322, ptr @PL_stack_sp, align 8, !tbaa !6
  %323 = call ptr @Perl_sv_gets(ptr noundef %317, ptr noundef %313, i32 noundef %307) #14
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %418

325:                                              ; preds = %321
  br i1 %310, label %352, label %326

326:                                              ; preds = %325
  %327 = load ptr, ptr %317, align 8, !tbaa !32
  %328 = getelementptr inbounds %struct.xpv, ptr %327, i64 0, i32 2
  %329 = load i64, ptr %328, align 8, !tbaa !33
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %352

331:                                              ; preds = %326
  %332 = load ptr, ptr %35, align 8, !tbaa !59
  %333 = getelementptr inbounds %struct.xpvio, ptr %332, i64 0, i32 17
  %334 = load i8, ptr %333, align 1, !tbaa !61
  %335 = and i8 %334, 32
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %331
  %338 = load ptr, ptr @PL_rs, align 8, !tbaa !6
  %339 = getelementptr inbounds %struct.sv, ptr %338, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !28
  %341 = and i32 %340, 65280
  %342 = icmp ne i32 %341, 0
  %343 = and i32 %340, 255
  %344 = icmp eq i32 %343, 8
  %345 = or i1 %342, %344
  %346 = and i32 %340, 16777471
  %347 = icmp eq i32 %346, 16777226
  %348 = or i1 %347, %345
  br i1 %348, label %352, label %349

349:                                              ; preds = %337
  %350 = call i32 @Perl_PerlIO_error(ptr noundef %313) #14
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %418, label %352

352:                                              ; preds = %349, %337, %331, %326, %325
  call void @Perl_PerlIO_clearerr(ptr noundef %313) #14
  %353 = load ptr, ptr %35, align 8, !tbaa !59
  %354 = getelementptr inbounds %struct.xpvio, ptr %353, i64 0, i32 17
  %355 = load i8, ptr %354, align 1, !tbaa !61
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %369, label %358

358:                                              ; preds = %352
  %359 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %360 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %361 = getelementptr inbounds %struct.op, ptr %360, i64 0, i32 5
  %362 = load i8, ptr %361, align 2, !tbaa !37
  %363 = icmp slt i8 %362, 0
  %364 = call ptr @Perl_nextargv(ptr noundef %359, i1 noundef zeroext %363) #14
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %312

366:                                              ; preds = %358
  %367 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %368 = call zeroext i1 @Perl_do_close(ptr noundef %367, i1 noundef zeroext false) #14
  br label %379

369:                                              ; preds = %352
  br i1 %308, label %370, label %379

370:                                              ; preds = %369
  %371 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !6
  %372 = call zeroext i1 @Perl_do_close(ptr noundef %371, i1 noundef zeroext false) #14
  br i1 %372, label %379, label %373

373:                                              ; preds = %370
  %374 = load i32, ptr @PL_statusvalue, align 4, !tbaa !23
  %375 = ashr i32 %374, 8
  %376 = and i32 %374, 128
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %377, ptr @.str.1, ptr @.str.21
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %375, ptr noundef nonnull %378) #14
  br label %379

379:                                              ; preds = %369, %373, %370, %366
  br i1 %301, label %380, label %406

380:                                              ; preds = %379
  %381 = icmp eq i16 %38, 27
  br i1 %381, label %396, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !28
  %385 = and i32 %384, 427886592
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %382
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %18, i32 noundef 4) #14
  %388 = load i32, ptr %383, align 4, !tbaa !28
  br label %389

389:                                              ; preds = %387, %382
  %390 = phi i32 [ %388, %387 ], [ %384, %382 ]
  %391 = and i32 %390, 1610547455
  store i32 %391, ptr %383, align 4, !tbaa !28
  %392 = and i32 %390, 33554432
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %389
  %395 = call i32 @Perl_sv_backoff(ptr noundef nonnull %18) #14
  br label %396

396:                                              ; preds = %389, %394, %380
  %397 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %398 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %399 = load i32, ptr %398, align 4, !tbaa !28
  %400 = and i32 %399, 4194304
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %396
  %403 = call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %404

404:                                              ; preds = %396, %402
  %405 = getelementptr inbounds ptr, ptr %397, i64 1
  store ptr %18, ptr %405, align 8, !tbaa !6
  br label %406

406:                                              ; preds = %404, %379
  %407 = phi ptr [ %405, %404 ], [ %322, %379 ]
  %408 = load ptr, ptr %35, align 8, !tbaa !59
  %409 = getelementptr inbounds %struct.xpvio, ptr %408, i64 0, i32 17
  %410 = load i8, ptr %409, align 1, !tbaa !61
  %411 = and i8 %410, 16
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %406
  store i8 1, ptr @PL_tainted, align 1, !tbaa !16
  %414 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %413
  call void @Perl_sv_magic(ptr noundef %317, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %417

417:                                              ; preds = %416, %413, %406
  store ptr %407, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %561

418:                                              ; preds = %349, %321
  %419 = load ptr, ptr %35, align 8, !tbaa !59
  %420 = getelementptr inbounds %struct.xpvio, ptr %419, i64 0, i32 17
  %421 = load i8, ptr %420, align 1, !tbaa !61
  %422 = and i8 %421, 16
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %424, label %429

424:                                              ; preds = %418
  store i8 1, ptr @PL_tainted, align 1, !tbaa !16
  %425 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %424
  call void @Perl_sv_magic(ptr noundef %317, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  %428 = load ptr, ptr %35, align 8, !tbaa !59
  br label %429

429:                                              ; preds = %427, %424, %418
  %430 = phi ptr [ %428, %427 ], [ %419, %424 ], [ %419, %418 ]
  %431 = getelementptr inbounds %struct.xpvio, ptr %430, i64 0, i32 4
  %432 = load i64, ptr %431, align 8, !tbaa !21
  %433 = add nsw i64 %432, 1
  store i64 %433, ptr %431, align 8, !tbaa !21
  %434 = load ptr, ptr %35, align 8, !tbaa !59
  %435 = getelementptr inbounds %struct.xpvio, ptr %434, i64 0, i32 17
  %436 = load i8, ptr %435, align 1, !tbaa !61
  %437 = or i8 %436, 32
  store i8 %437, ptr %435, align 1, !tbaa !61
  %438 = load i32, ptr %319, align 4, !tbaa !28
  %439 = and i32 %438, 4194304
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %429
  %442 = call i32 @Perl_mg_set(ptr noundef nonnull %317) #14
  br label %443

443:                                              ; preds = %429, %441
  %444 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %445 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %446 = ptrtoint ptr %445 to i64
  %447 = ptrtoint ptr %444 to i64
  %448 = sub i64 %446, %447
  %449 = icmp slt i64 %448, 8
  br i1 %449, label %450, label %452

450:                                              ; preds = %443
  %451 = call ptr @Perl_stack_grow(ptr noundef %444, ptr noundef %444, i64 noundef 1) #14
  br label %452

452:                                              ; preds = %443, %450
  %453 = phi ptr [ %451, %450 ], [ %444, %443 ]
  %454 = getelementptr inbounds ptr, ptr %453, i64 1
  store ptr %317, ptr %454, align 8, !tbaa !6
  br i1 %308, label %455, label %497

455:                                              ; preds = %452
  %456 = load ptr, ptr %317, align 8, !tbaa !32
  %457 = getelementptr inbounds %struct.xpv, ptr %456, i64 0, i32 2
  %458 = load i64, ptr %457, align 8, !tbaa !33
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %480, label %460

460:                                              ; preds = %455
  %461 = load ptr, ptr @PL_rs, align 8, !tbaa !6
  %462 = load ptr, ptr %461, align 8, !tbaa !32
  %463 = getelementptr inbounds %struct.xpv, ptr %462, i64 0, i32 2
  %464 = load i64, ptr %463, align 8, !tbaa !33
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %480, label %466

466:                                              ; preds = %460
  %467 = load ptr, ptr %320, align 8, !tbaa !21
  %468 = getelementptr inbounds i8, ptr %467, i64 %458
  %469 = getelementptr inbounds i8, ptr %468, i64 -1
  %470 = load i8, ptr %469, align 1, !tbaa !21
  %471 = getelementptr inbounds %struct.sv, ptr %461, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !21
  %473 = load i8, ptr %472, align 1, !tbaa !21
  %474 = icmp eq i8 %470, %473
  br i1 %474, label %475, label %480

475:                                              ; preds = %466
  store i8 0, ptr %469, align 1, !tbaa !21
  %476 = load ptr, ptr %317, align 8, !tbaa !32
  %477 = getelementptr inbounds %struct.xpv, ptr %476, i64 0, i32 2
  %478 = load i64, ptr %477, align 8, !tbaa !33
  %479 = add i64 %478, -1
  store i64 %479, ptr %477, align 8, !tbaa !33
  br label %480

480:                                              ; preds = %466, %475, %460, %455
  %481 = load ptr, ptr %320, align 8, !tbaa !21
  %482 = load i8, ptr %481, align 1, !tbaa !21
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %525, label %488

484:                                              ; preds = %488
  %485 = getelementptr inbounds i8, ptr %490, i64 1
  %486 = load i8, ptr %485, align 1, !tbaa !21
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %525, label %488, !llvm.loop !65

488:                                              ; preds = %480, %484
  %489 = phi i8 [ %486, %484 ], [ %482, %480 ]
  %490 = phi ptr [ %485, %484 ], [ %481, %480 ]
  %491 = sext i8 %489 to i32
  %492 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.22, i32 %491, i64 20)
  %493 = icmp eq ptr %492, null
  br i1 %493, label %484, label %494

494:                                              ; preds = %488
  %495 = call i32 @stat64(ptr noundef nonnull %481, ptr noundef nonnull @PL_statbuf) #14
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %321, label %525

497:                                              ; preds = %452
  %498 = load i32, ptr %319, align 4, !tbaa !28
  %499 = and i32 %498, 536870912
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %525, label %501

501:                                              ; preds = %497
  %502 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #14
  br i1 %502, label %503, label %525

503:                                              ; preds = %501
  %504 = load ptr, ptr %320, align 8, !tbaa !21
  %505 = getelementptr inbounds i8, ptr %504, i64 %304
  %506 = load ptr, ptr %317, align 8, !tbaa !32
  %507 = getelementptr inbounds %struct.xpv, ptr %506, i64 0, i32 2
  %508 = load i64, ptr %507, align 8, !tbaa !33
  %509 = sub i64 %508, %304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %510 = call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %505, i64 noundef %509, ptr noundef nonnull %1, ptr noundef null) #14
  br i1 %510, label %524, label %511

511:                                              ; preds = %503
  %512 = load ptr, ptr %1, align 8, !tbaa !6
  %513 = load ptr, ptr %320, align 8, !tbaa !21
  %514 = load ptr, ptr %317, align 8, !tbaa !32
  %515 = getelementptr inbounds %struct.xpv, ptr %514, i64 0, i32 2
  %516 = load i64, ptr %515, align 8, !tbaa !33
  %517 = getelementptr inbounds i8, ptr %513, i64 %516
  %518 = icmp ult ptr %512, %517
  br i1 %518, label %519, label %522

519:                                              ; preds = %511
  %520 = load i8, ptr %512, align 1, !tbaa !21
  %521 = zext i8 %520 to i32
  br label %522

522:                                              ; preds = %511, %519
  %523 = phi i32 [ %521, %519 ], [ 0, %511 ]
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @.str.23, i32 noundef %523) #14
  br label %524

524:                                              ; preds = %522, %503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %525

525:                                              ; preds = %494, %480, %484, %497, %524, %501
  %526 = getelementptr inbounds ptr, ptr %453, i64 1
  br i1 %311, label %527, label %542

527:                                              ; preds = %525
  %528 = load ptr, ptr %317, align 8, !tbaa !32
  %529 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 3
  %530 = load i64, ptr %529, align 8, !tbaa !21
  %531 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 2
  %532 = load i64, ptr %531, align 8, !tbaa !33
  %533 = sub i64 %530, %532
  %534 = icmp ugt i64 %533, 20
  br i1 %534, label %535, label %539

535:                                              ; preds = %527
  %536 = add i64 %532, 1
  store i64 %536, ptr %529, align 8, !tbaa !21
  %537 = load ptr, ptr %320, align 8, !tbaa !21
  %538 = call ptr @Perl_safesysrealloc(ptr noundef %537, i64 noundef %536) #14
  store ptr %538, ptr %320, align 8, !tbaa !21
  br label %539

539:                                              ; preds = %535, %527
  %540 = call ptr @Perl_newSV(i64 noundef 80) #14
  %541 = call ptr @Perl_sv_2mortal(ptr noundef %540) #14
  br label %316

542:                                              ; preds = %525
  %543 = icmp ne i64 %305, 0
  %544 = or i1 %309, %543
  br i1 %544, label %560, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %314, align 8, !tbaa !32
  %547 = getelementptr inbounds %struct.xpv, ptr %546, i64 0, i32 3
  %548 = load i64, ptr %547, align 8, !tbaa !21
  %549 = getelementptr inbounds %struct.xpv, ptr %546, i64 0, i32 2
  %550 = load i64, ptr %549, align 8, !tbaa !33
  %551 = sub i64 %548, %550
  %552 = icmp ugt i64 %551, 80
  br i1 %552, label %553, label %560

553:                                              ; preds = %545
  %554 = icmp ult i64 %550, 60
  %555 = add i64 %550, 40
  %556 = select i1 %554, i64 80, i64 %555
  store i64 %556, ptr %547, align 8, !tbaa !21
  %557 = getelementptr inbounds %struct.sv, ptr %314, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !21
  %559 = call ptr @Perl_safesysrealloc(ptr noundef %558, i64 noundef %556) #14
  store ptr %559, ptr %557, align 8, !tbaa !21
  br label %560

560:                                              ; preds = %542, %545, %553
  store ptr %526, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %561

561:                                              ; preds = %77, %61, %560, %417, %213
  %562 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %563 = load ptr, ptr %562, align 8, !tbaa !14
  ret ptr %563
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_eq() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !28
  %9 = or i32 %8, %5
  %10 = and i32 %9, 2099200
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 21, i32 noundef 48) #14
  br i1 %13, label %44, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !6
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !28
  br label %19

19:                                               ; preds = %14, %0
  %20 = phi i32 [ %18, %14 ], [ %5, %0 ]
  %21 = phi ptr [ %16, %14 ], [ %3, %0 ]
  %22 = phi ptr [ %15, %14 ], [ %6, %0 ]
  %23 = and i32 %20, -2147483392
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !28
  %28 = and i32 %27, -2147483392
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %21, align 8, !tbaa !32
  %32 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !21
  %34 = load ptr, ptr %22, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.xpviv, ptr %34, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !21
  %37 = icmp eq i64 %33, %36
  br label %41

38:                                               ; preds = %25, %19
  %39 = tail call i32 @Perl_do_ncmp(ptr noundef nonnull %21, ptr noundef %22) #14
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i1 [ %37, %30 ], [ %40, %38 ]
  %43 = select i1 %42, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %43, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %12, %41
  %45 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %46 = load ptr, ptr %45, align 8, !tbaa !14
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @Perl_do_ncmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_preinc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = add nsw i16 %5, -47
  %7 = icmp ult i16 %6, 2
  %8 = load ptr, ptr %1, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !28
  %11 = and i32 %10, 255
  %12 = icmp ugt i32 %11, 10
  br i1 %12, label %19, label %13

13:                                               ; preds = %0
  %14 = add nsw i32 %11, -9
  %15 = icmp ult i32 %14, 2
  %16 = and i32 %10, 16826368
  %17 = icmp eq i32 %16, 32768
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %0
  tail call void @Perl_croak_no_modify() #14
  %20 = load ptr, ptr %1, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !28
  br label %23

23:                                               ; preds = %13, %19
  %24 = phi i32 [ %10, %13 ], [ %22, %19 ]
  %25 = phi ptr [ %8, %13 ], [ %20, %19 ]
  %26 = and i32 %24, -2011101440
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load ptr, ptr %25, align 8, !tbaa !32
  %30 = getelementptr inbounds %struct.xpviv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !21
  %32 = select i1 %7, i64 9223372036854775807, i64 -9223372036854775808
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = select i1 %7, i64 1, i64 -1
  %36 = add nsw i64 %31, %35
  store i64 %36, ptr %30, align 8, !tbaa !21
  %37 = load ptr, ptr %1, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !28
  %40 = and i32 %39, -24577
  store i32 %40, ptr %38, align 4, !tbaa !28
  br label %44

41:                                               ; preds = %23, %28
  br i1 %7, label %42, label %43

42:                                               ; preds = %41
  tail call void @Perl_sv_inc(ptr noundef nonnull %25) #14
  br label %44

43:                                               ; preds = %41
  tail call void @Perl_sv_dec(ptr noundef nonnull %25) #14
  br label %44

44:                                               ; preds = %34, %43, %42
  %45 = load ptr, ptr %1, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !28
  %48 = and i32 %47, 4194304
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 @Perl_mg_set(ptr noundef nonnull %45) #14
  br label %52

52:                                               ; preds = %44, %50
  %53 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  ret ptr %54
}

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_or() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %5() #14
  br label %6

6:                                                ; preds = %0, %4
  %7 = load ptr, ptr %1, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 2) #14
  br i1 %15, label %63, label %65

16:                                               ; preds = %9
  %17 = and i32 %11, 65280
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %11, 255
  %20 = icmp eq i32 %19, 8
  %21 = or i1 %18, %20
  %22 = and i32 %11, 16777471
  %23 = icmp eq i32 %22, 16777226
  %24 = or i1 %23, %21
  br i1 %24, label %25, label %65

25:                                               ; preds = %16
  %26 = and i32 %11, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %7, align 8, !tbaa !32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !33
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = icmp eq i64 %33, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = load i8, ptr %39, align 1, !tbaa !21
  %41 = icmp eq i8 %40, 48
  br i1 %41, label %65, label %63

42:                                               ; preds = %25
  %43 = and i32 %11, 768
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = and i32 %11, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !21
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48, %45
  %54 = and i32 %11, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 8, !tbaa !32
  %58 = getelementptr inbounds %struct.xpvnv, ptr %57, i64 0, i32 5
  %59 = load double, ptr %58, align 8, !tbaa !21
  %60 = fcmp une double %59, 0.000000e+00
  br i1 %60, label %63, label %65

61:                                               ; preds = %42
  %62 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 0) #14
  br i1 %62, label %63, label %65

63:                                               ; preds = %61, %56, %48, %37, %31, %14
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %74

65:                                               ; preds = %56, %16, %6, %61, %53, %37, %35, %28, %14
  %66 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.op, ptr %66, i64 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 511
  %70 = icmp eq i16 %69, 177
  %71 = sext i1 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.logop, ptr %66, i64 0, i32 8
  br label %74

74:                                               ; preds = %65, %63
  %75 = phi ptr [ %64, %63 ], [ %73, %65 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_defined() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 179
  switch i16 %5, label %23 [
    i16 183, label %7
    i16 179, label %7
  ]

7:                                                ; preds = %0, %0
  %8 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %11() #14
  br label %12

12:                                               ; preds = %7, %10
  %13 = load ptr, ptr %1, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !32
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %12, %15
  %19 = sext i1 %6 to i64
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !6
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.logop, ptr %21, i64 0, i32 8
  br label %103

23:                                               ; preds = %0
  %24 = load ptr, ptr %1, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds ptr, ptr %1, i64 -1
  %28 = load ptr, ptr %24, align 8, !tbaa !32
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %26
  store ptr @PL_sv_no, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %103

32:                                               ; preds = %26, %15
  %33 = phi ptr [ %16, %15 ], [ %28, %26 ]
  %34 = phi ptr [ %13, %15 ], [ %24, %26 ]
  %35 = phi ptr [ %1, %15 ], [ %27, %26 ]
  %36 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !28
  %38 = trunc i32 %37 to i8
  switch i8 %38, label %71 [
    i8 11, label %39
    i8 12, label %53
    i8 13, label %67
  ]

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !66
  %42 = icmp slt i64 %41, 0
  %43 = and i32 %37, 2097152
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %44, %42
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = and i32 %37, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %87, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_mg_find(ptr noundef nonnull %34, i32 noundef 80) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %87, label %52

52:                                               ; preds = %49, %39
  br label %87

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = icmp eq ptr %55, null
  %57 = and i32 %37, 2097152
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = and i32 %37, 8388608
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @Perl_mg_find(ptr noundef nonnull %34, i32 noundef 80) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %63, %53
  br label %87

67:                                               ; preds = %32
  %68 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !21
  %70 = icmp ne ptr %69, null
  br label %87

71:                                               ; preds = %32
  %72 = and i32 %37, 2097152
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @Perl_mg_get(ptr noundef nonnull %34) #14
  %76 = load i32, ptr %36, align 4, !tbaa !28
  br label %77

77:                                               ; preds = %71, %74
  %78 = phi i32 [ %37, %71 ], [ %76, %74 ]
  %79 = and i32 %78, 65280
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %78, 255
  %82 = icmp eq i32 %81, 8
  %83 = or i1 %80, %82
  %84 = and i32 %78, 16777471
  %85 = icmp eq i32 %84, 16777226
  %86 = or i1 %85, %83
  br label %87

87:                                               ; preds = %77, %67, %60, %63, %66, %46, %49, %52
  %88 = phi i1 [ true, %66 ], [ false, %63 ], [ false, %60 ], [ true, %52 ], [ false, %49 ], [ false, %46 ], [ %70, %67 ], [ %86, %77 ]
  switch i16 %5, label %97 [
    i16 183, label %89
    i16 179, label %89
  ]

89:                                               ; preds = %87, %87
  br i1 %88, label %90, label %92

90:                                               ; preds = %89
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !6
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %103

92:                                               ; preds = %89
  %93 = sext i1 %6 to i64
  %94 = getelementptr inbounds ptr, ptr %35, i64 %93
  store ptr %94, ptr @PL_stack_sp, align 8, !tbaa !6
  %95 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.logop, ptr %95, i64 0, i32 8
  br label %103

97:                                               ; preds = %87
  %98 = getelementptr inbounds ptr, ptr %35, i64 1
  br i1 %88, label %99, label %101

99:                                               ; preds = %97
  store ptr @PL_sv_yes, ptr %98, align 8, !tbaa !6
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !6
  %100 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %103

101:                                              ; preds = %97
  store ptr @PL_sv_no, ptr %98, align 8, !tbaa !6
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !6
  %102 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %103

103:                                              ; preds = %101, %99, %92, %90, %30, %18
  %104 = phi ptr [ %91, %90 ], [ %96, %92 ], [ %100, %99 ], [ %102, %101 ], [ %22, %18 ], [ %31, %30 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  ret ptr %105
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_add() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !37
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  br label %14

9:                                                ; preds = %0
  %10 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !27
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds ptr, ptr %1, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !28
  %21 = load ptr, ptr %1, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !28
  %24 = or i32 %23, %20
  %25 = and i32 %24, 2099200
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 30, i32 noundef 20) #14
  br i1 %28, label %195, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %1, align 8, !tbaa !6
  %31 = load ptr, ptr %17, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !28
  br label %34

34:                                               ; preds = %29, %14
  %35 = phi i32 [ %33, %29 ], [ %20, %14 ]
  %36 = phi ptr [ %31, %29 ], [ %18, %14 ]
  %37 = phi ptr [ %30, %29 ], [ %21, %14 ]
  %38 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %39 = and i32 %35, 65280
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %35, 255
  %42 = icmp eq i32 %41, 8
  %43 = or i1 %40, %42
  %44 = and i32 %35, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %45, %43
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.op, ptr %48, i64 0, i32 5
  %50 = load i8, ptr %49, align 2, !tbaa !37
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  br label %53

53:                                               ; preds = %47, %34
  %54 = phi i1 [ true, %34 ], [ %52, %47 ]
  %55 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !28
  %57 = and i32 %56, 4352
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %56, 1536
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %58, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %37, i32 noundef 0) #14
  %64 = load i32, ptr %55, align 4, !tbaa !28
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %158, label %70

67:                                               ; preds = %53
  %68 = and i32 %56, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %158, label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %56, %67 ], [ %64, %62 ]
  br i1 %54, label %72, label %103

72:                                               ; preds = %70
  %73 = load i32, ptr %38, align 4, !tbaa !28
  %74 = and i32 %73, 4352
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %73, 1536
  %77 = icmp eq i32 %76, 0
  %78 = or i1 %75, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %36, i32 noundef 0) #14
  %81 = load i32, ptr %38, align 4, !tbaa !28
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, ptr %55, align 4, !tbaa !28
  br label %158

86:                                               ; preds = %72
  %87 = and i32 %73, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %158, label %89

89:                                               ; preds = %86, %79
  %90 = phi i32 [ %73, %86 ], [ %81, %79 ]
  %91 = and i32 %90, -2147483392
  %92 = icmp eq i32 %91, -2147483392
  %93 = load ptr, ptr %36, align 8, !tbaa !32
  br i1 %92, label %94, label %97

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.xpvuv, ptr %93, i64 0, i32 4
  %96 = load i64, ptr %95, align 8, !tbaa !21
  br label %103

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.xpviv, ptr %93, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !21
  %100 = icmp sgt i64 %99, -1
  %101 = tail call i64 @llvm.abs.i64(i64 %99, i1 false)
  %102 = zext i1 %100 to i8
  br label %103

103:                                              ; preds = %70, %97, %94
  %104 = phi i64 [ %101, %97 ], [ %96, %94 ], [ 0, %70 ]
  %105 = phi i8 [ %102, %97 ], [ 1, %94 ], [ 1, %70 ]
  %106 = load i32, ptr %55, align 4, !tbaa !28
  %107 = and i32 %106, -2147483392
  %108 = icmp eq i32 %107, -2147483392
  %109 = load ptr, ptr %37, align 8, !tbaa !32
  br i1 %108, label %110, label %114

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.xpvuv, ptr %109, i64 0, i32 4
  %112 = load i64, ptr %111, align 8, !tbaa !21
  %113 = icmp eq i8 %105, 0
  br i1 %113, label %121, label %130

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.xpviv, ptr %109, i64 0, i32 4
  %116 = load i64, ptr %115, align 8, !tbaa !21
  %117 = icmp sgt i64 %116, -1
  %118 = tail call i64 @llvm.abs.i64(i64 %116, i1 false)
  %119 = icmp eq i8 %105, 0
  %120 = xor i1 %119, %117
  br i1 %120, label %130, label %121

121:                                              ; preds = %110, %114
  %122 = phi i8 [ 0, %110 ], [ %105, %114 ]
  %123 = phi i64 [ %112, %110 ], [ %118, %114 ]
  %124 = icmp ult i64 %104, %123
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = sub i64 %104, %123
  br label %134

127:                                              ; preds = %121
  %128 = sub i64 %123, %104
  %129 = xor i8 %122, 1
  br label %134

130:                                              ; preds = %114, %110
  %131 = phi i64 [ %112, %110 ], [ %118, %114 ]
  %132 = add i64 %131, %104
  %133 = icmp ult i64 %132, %104
  br i1 %133, label %158, label %134

134:                                              ; preds = %127, %125, %130
  %135 = phi i64 [ %132, %130 ], [ %128, %127 ], [ %126, %125 ]
  %136 = phi i8 [ %105, %130 ], [ %129, %127 ], [ %105, %125 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  tail call void @Perl_sv_setuv(ptr noundef %16, i64 noundef %135) #14
  %139 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !28
  %141 = and i32 %140, 4194304
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %194, label %192

143:                                              ; preds = %134
  %144 = icmp ult i64 %135, -9223372036854775807
  br i1 %144, label %145, label %151

145:                                              ; preds = %143
  %146 = sub i64 0, %135
  tail call void @Perl_sv_setiv(ptr noundef %16, i64 noundef %146) #14
  %147 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !28
  %149 = and i32 %148, 4194304
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %194, label %192

151:                                              ; preds = %143
  %152 = uitofp i64 %135 to double
  %153 = fneg double %152
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %153) #14
  %154 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !28
  %156 = and i32 %155, 4194304
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %194, label %192

158:                                              ; preds = %84, %86, %130, %67, %62
  %159 = phi i32 [ %85, %84 ], [ %71, %86 ], [ %106, %130 ], [ %56, %67 ], [ %64, %62 ]
  %160 = and i32 %159, 512
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %37, align 8, !tbaa !32
  %164 = getelementptr inbounds %struct.xpvnv, ptr %163, i64 0, i32 5
  %165 = load double, ptr %164, align 8, !tbaa !21
  br label %168

166:                                              ; preds = %158
  %167 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %37, i32 noundef 0) #14
  br label %168

168:                                              ; preds = %166, %162
  %169 = phi double [ %165, %162 ], [ %167, %166 ]
  br i1 %54, label %175, label %170

170:                                              ; preds = %168
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %169) #14
  %171 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !28
  %173 = and i32 %172, 4194304
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %194, label %192

175:                                              ; preds = %168
  %176 = load i32, ptr %38, align 4, !tbaa !28
  %177 = and i32 %176, 512
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %36, align 8, !tbaa !32
  %181 = getelementptr inbounds %struct.xpvnv, ptr %180, i64 0, i32 5
  %182 = load double, ptr %181, align 8, !tbaa !21
  br label %185

183:                                              ; preds = %175
  %184 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %36, i32 noundef 0) #14
  br label %185

185:                                              ; preds = %183, %179
  %186 = phi double [ %182, %179 ], [ %184, %183 ]
  %187 = fadd double %169, %186
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %187) #14
  %188 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !28
  %190 = and i32 %189, 4194304
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %170, %185, %138, %145, %151
  %193 = tail call i32 @Perl_mg_set(ptr noundef nonnull %16) #14
  br label %194

194:                                              ; preds = %192, %138, %145, %151, %170, %185
  store ptr %16, ptr %17, align 8, !tbaa !6
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %195

195:                                              ; preds = %194, %27
  %196 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %197 = load ptr, ptr %196, align 8, !tbaa !14
  ret ptr %197
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_aelemfast() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 137
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %28

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.gp, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %15, i32 noundef 11) #14
  %23 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %13, %21, %7
  %29 = phi ptr [ %2, %7 ], [ %27, %21 ], [ %2, %13 ]
  %30 = phi ptr [ %12, %7 ], [ %26, %21 ], [ %19, %13 ]
  %31 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !37
  %33 = and i8 %32, 32
  %34 = zext nneg i8 %33 to i32
  %35 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 6
  %36 = load i8, ptr %35, align 1, !tbaa !24
  %37 = sext i8 %36 to i64
  %38 = tail call ptr @Perl_av_fetch(ptr noundef %30, i64 noundef %37, i32 noundef %34) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load ptr, ptr %38, align 8, !tbaa !6
  %42 = icmp ne i8 %33, 0
  br label %51

43:                                               ; preds = %28
  %44 = icmp eq i8 %33, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.op, ptr %46, i64 0, i32 6
  %48 = load i8, ptr %47, align 1, !tbaa !24
  %49 = sext i8 %48 to i32
  %50 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i32 noundef %49) #14
  br label %79

51:                                               ; preds = %40, %43
  %52 = phi i1 [ %42, %40 ], [ false, %43 ]
  %53 = phi ptr [ %41, %40 ], [ @PL_sv_undef, %43 ]
  %54 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %1 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %61

61:                                               ; preds = %51, %59
  %62 = phi ptr [ %60, %59 ], [ %1, %51 ]
  br i1 %52, label %75, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.av, ptr %30, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = and i32 %65, 8388608
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !28
  %71 = and i32 %70, 2097152
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call i32 @Perl_mg_get(ptr noundef nonnull %53) #14
  br label %75

75:                                               ; preds = %73, %68, %63, %61
  %76 = getelementptr inbounds ptr, ptr %62, i64 1
  store ptr %53, ptr %76, align 8, !tbaa !6
  store ptr %76, ptr @PL_stack_sp, align 8, !tbaa !6
  %77 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  br label %79

79:                                               ; preds = %75, %45
  %80 = phi ptr [ %50, %45 ], [ %78, %75 ]
  ret ptr %80
}

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_join() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !23
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !27
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds ptr, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  tail call void @Perl_do_join(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %14, ptr noundef %1) #14
  store ptr %13, ptr %14, align 8, !tbaa !6
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !6
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  ret ptr %17
}

; Function Attrs: optsize
declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pushre() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !6
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !6
  %13 = load ptr, ptr %11, align 8, !tbaa !14
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_print() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %3, align 4, !tbaa !23
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !37
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  %14 = select i1 %12, ptr %7, ptr %13
  %15 = select i1 %12, ptr @PL_defoutgv, ptr %13
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %124, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !23
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -11
  %23 = icmp ult i32 %22, -2
  br i1 %23, label %124, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %92, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %92, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !28
  %35 = and i32 %34, 8388608
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %125, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @Perl_mg_find(ptr noundef nonnull %30, i32 noundef 113) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %125, label %40

40:                                               ; preds = %121, %37
  %41 = phi ptr [ %38, %37 ], [ %122, %121 ]
  %42 = phi ptr [ %30, %37 ], [ %114, %121 ]
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %6
  %45 = icmp eq ptr %14, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %1 to i64
  %50 = sub i64 %48, %49
  %51 = icmp slt i64 %50, 8
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = ptrtoint ptr %14 to i64
  %54 = ptrtoint ptr %43 to i64
  %55 = sub i64 %53, %54
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %57, i64 %55
  %59 = ptrtoint ptr %56 to i64
  br label %60

60:                                               ; preds = %46, %52
  %61 = phi i64 [ %49, %46 ], [ %59, %52 ]
  %62 = phi ptr [ %14, %46 ], [ %58, %52 ]
  %63 = phi ptr [ %1, %46 ], [ %56, %52 ]
  %64 = getelementptr inbounds ptr, ptr %62, i64 1
  %65 = getelementptr inbounds ptr, ptr %62, i64 2
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %61, %66
  %68 = add i64 %67, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %65, ptr nonnull align 1 %64, i64 %68, i1 false)
  %69 = getelementptr inbounds ptr, ptr %63, i64 1
  br label %70

70:                                               ; preds = %60, %40
  %71 = phi ptr [ %64, %60 ], [ %14, %40 ]
  %72 = phi ptr [ %69, %60 ], [ %1, %40 ]
  %73 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #14
  store ptr %76, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !6
  br label %77

77:                                               ; preds = %70, %75
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  %79 = getelementptr inbounds ptr, ptr %71, i64 -1
  %80 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 4
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, 511
  %84 = icmp eq i16 %83, 239
  %85 = select i1 %84, i32 26, i32 10
  %86 = ptrtoint ptr %72 to i64
  %87 = ptrtoint ptr %71 to i64
  %88 = sub i64 %86, %87
  %89 = lshr exact i64 %88, 3
  %90 = trunc i64 %89 to i32
  %91 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %42, ptr noundef nonnull %41, i32 noundef %85, i32 noundef %90) #14
  br label %250

92:                                               ; preds = %24, %28
  %93 = and i32 %20, 49152
  %94 = icmp ne i32 %93, 32768
  %95 = or i1 %94, %23
  br i1 %95, label %124, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  %99 = getelementptr inbounds %struct.gp, ptr %98, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !67
  %101 = icmp eq ptr %100, null
  br i1 %101, label %124, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !28
  %105 = and i32 %104, 255
  %106 = add nsw i32 %105, -9
  %107 = icmp ult i32 %106, 2
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !58
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !28
  %119 = and i32 %118, 8388608
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = tail call ptr @Perl_mg_find(ptr noundef nonnull %114, i32 noundef 113) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %40

124:                                              ; preds = %92, %18, %116, %102, %108, %0, %121, %112, %96
  tail call void @Perl_report_evil_fh(ptr noundef %16) #14
  br label %233

125:                                              ; preds = %32, %37
  %126 = load ptr, ptr %30, align 8, !tbaa !59
  %127 = getelementptr inbounds %struct.xpvio, ptr %126, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !68
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.io, ptr %30, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !21
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %16, i8 noundef signext 60) #14
  br label %233

135:                                              ; preds = %130
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %16) #14
  br label %233

136:                                              ; preds = %125
  %137 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !21
  %140 = load ptr, ptr %139, align 8, !tbaa !63
  %141 = getelementptr inbounds ptr, ptr %14, i64 1
  %142 = icmp eq ptr %140, null
  br i1 %142, label %169, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.sv, ptr %140, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !28
  %146 = and i32 %145, 2162432
  %147 = icmp ne i32 %146, 0
  %148 = and i32 %145, 255
  %149 = icmp eq i32 %148, 8
  %150 = or i1 %147, %149
  %151 = and i32 %145, 16777471
  %152 = icmp eq i32 %151, 16777226
  %153 = or i1 %152, %150
  br i1 %153, label %154, label %169

154:                                              ; preds = %143
  %155 = icmp ugt ptr %141, %1
  br i1 %155, label %178, label %156

156:                                              ; preds = %154, %163
  %157 = phi ptr [ %161, %163 ], [ %141, %154 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !6
  %159 = tail call zeroext i1 @Perl_do_print(ptr noundef %158, ptr noundef nonnull %128) #14
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = getelementptr inbounds ptr, ptr %157, i64 1
  %162 = icmp ugt ptr %161, %1
  br i1 %162, label %178, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !6
  %165 = getelementptr inbounds %struct.gv, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !21
  %167 = load ptr, ptr %166, align 8, !tbaa !63
  %168 = tail call zeroext i1 @Perl_do_print(ptr noundef %167, ptr noundef nonnull %128) #14
  br i1 %168, label %156, label %178

169:                                              ; preds = %143, %136
  %170 = icmp ugt ptr %141, %1
  br i1 %170, label %178, label %171

171:                                              ; preds = %169, %175
  %172 = phi ptr [ %176, %175 ], [ %141, %169 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = tail call zeroext i1 @Perl_do_print(ptr noundef %173, ptr noundef nonnull %128) #14
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = getelementptr inbounds ptr, ptr %172, i64 1
  %177 = icmp ugt ptr %176, %1
  br i1 %177, label %178, label %171, !llvm.loop !69

178:                                              ; preds = %160, %156, %163, %171, %175, %154, %169
  %179 = phi ptr [ %141, %169 ], [ %141, %154 ], [ %172, %171 ], [ %176, %175 ], [ %161, %160 ], [ %157, %156 ], [ %157, %163 ]
  %180 = icmp ugt ptr %179, %1
  br i1 %180, label %181, label %235

181:                                              ; preds = %178
  %182 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.op, ptr %182, i64 0, i32 4
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 511
  %186 = icmp eq i16 %185, 239
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %128, ptr noundef nonnull @.str.3, i64 noundef 1) #14
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %235, label %190

190:                                              ; preds = %187
  %191 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %128) #14
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %209, label %235

193:                                              ; preds = %181
  %194 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !6
  %195 = icmp eq ptr %194, null
  br i1 %195, label %209, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !28
  %199 = and i32 %198, 65280
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 255
  %202 = icmp eq i32 %201, 8
  %203 = or i1 %200, %202
  %204 = and i32 %198, 16777471
  %205 = icmp eq i32 %204, 16777226
  %206 = or i1 %205, %203
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = tail call zeroext i1 @Perl_do_print(ptr noundef nonnull %194, ptr noundef nonnull %128) #14
  br i1 %208, label %209, label %235

209:                                              ; preds = %196, %193, %207, %190
  %210 = load ptr, ptr %30, align 8, !tbaa !59
  %211 = getelementptr inbounds %struct.xpvio, ptr %210, i64 0, i32 17
  %212 = load i8, ptr %211, align 1, !tbaa !61
  %213 = and i8 %212, 4
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %128) #14
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %235, label %218

218:                                              ; preds = %209, %215
  %219 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %220 = getelementptr inbounds ptr, ptr %219, i64 %6
  %221 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %222 = ptrtoint ptr %221 to i64
  %223 = ptrtoint ptr %220 to i64
  %224 = sub i64 %222, %223
  %225 = icmp slt i64 %224, 8
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = tail call ptr @Perl_stack_grow(ptr noundef %220, ptr noundef %220, i64 noundef 1) #14
  br label %228

228:                                              ; preds = %218, %226
  %229 = phi ptr [ %227, %226 ], [ %220, %218 ]
  %230 = getelementptr inbounds ptr, ptr %229, i64 1
  store ptr @PL_sv_yes, ptr %230, align 8, !tbaa !6
  store ptr %230, ptr @PL_stack_sp, align 8, !tbaa !6
  %231 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %232 = load ptr, ptr %231, align 8, !tbaa !14
  br label %250

233:                                              ; preds = %134, %135, %124
  %234 = tail call ptr @__errno_location() #17
  store i32 9, ptr %234, align 4, !tbaa !23
  br label %235

235:                                              ; preds = %233, %215, %207, %187, %190, %178
  %236 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %237 = getelementptr inbounds ptr, ptr %236, i64 %6
  %238 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %239 = ptrtoint ptr %238 to i64
  %240 = ptrtoint ptr %237 to i64
  %241 = sub i64 %239, %240
  %242 = icmp slt i64 %241, 8
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = tail call ptr @Perl_stack_grow(ptr noundef %237, ptr noundef %237, i64 noundef 1) #14
  br label %245

245:                                              ; preds = %235, %243
  %246 = phi ptr [ %244, %243 ], [ %237, %235 ]
  %247 = getelementptr inbounds ptr, ptr %246, i64 1
  store ptr @PL_sv_undef, ptr %247, align 8, !tbaa !6
  store ptr %247, ptr @PL_stack_sp, align 8, !tbaa !6
  %248 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %249 = load ptr, ptr %248, align 8, !tbaa !14
  br label %250

250:                                              ; preds = %245, %228, %77
  %251 = phi ptr [ %91, %77 ], [ %249, %245 ], [ %232, %228 ]
  ret ptr %251
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @Perl_tied_method(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_rv2av() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  store ptr %2, ptr %1, align 8, !tbaa !6
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !37
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %14

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #14
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %4, %9 ], [ %13, %11 ]
  %16 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = icmp eq i16 %19, 135
  %21 = icmp eq i16 %19, 394
  %22 = or i1 %20, %21
  %23 = select i1 %22, i32 11, i32 12
  %24 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !28
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = tail call i32 @Perl_mg_get(ptr noundef nonnull %3) #14
  %30 = load i32, ptr %24, align 4, !tbaa !28
  br label %31

31:                                               ; preds = %14, %28
  %32 = phi i32 [ %25, %14 ], [ %30, %28 ]
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !28
  %40 = and i32 %39, 1048576
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 8, !tbaa !32
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct.hv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !55
  %47 = and i32 %46, 268435456
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = select i1 %22, i32 2, i32 3
  %51 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %3, i32 noundef %50) #14
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !28
  br label %56

56:                                               ; preds = %35, %42, %49
  %57 = phi i32 [ %55, %49 ], [ %39, %42 ], [ %39, %35 ]
  %58 = phi ptr [ %53, %49 ], [ %37, %42 ], [ %37, %35 ]
  %59 = and i32 %57, 255
  %60 = icmp eq i32 %59, %23
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = select i1 %22, ptr @.str.28, ptr @.str.31
  %63 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.4, ptr noundef nonnull %62) #14
  br label %261

64:                                               ; preds = %56
  %65 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.op, ptr %65, i64 0, i32 5
  %67 = load i8, ptr %66, align 2, !tbaa !37
  %68 = and i8 %67, 32
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %130, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.op, ptr %65, i64 0, i32 6
  %72 = load i8, ptr %71, align 1, !tbaa !24
  %73 = icmp sgt i8 %72, -1
  br i1 %73, label %130, label %74

74:                                               ; preds = %70
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull @PL_no_localize_ref) #14
  br label %130

75:                                               ; preds = %31
  %76 = and i32 %32, 255
  %77 = icmp eq i32 %76, %23
  br i1 %77, label %130, label %78

78:                                               ; preds = %75
  %79 = and i32 %32, 49152
  %80 = icmp eq i32 %79, 32768
  %81 = add nsw i32 %76, -9
  %82 = icmp ult i32 %81, 2
  %83 = and i1 %80, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = select i1 %22, ptr @.str.28, ptr @.str.31
  %86 = call ptr @Perl_softref2xv(ptr noundef nonnull %3, ptr noundef nonnull %85, i32 noundef %23, ptr noundef nonnull %1) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %126, label %88

88:                                               ; preds = %78, %84
  %89 = phi ptr [ %86, %84 ], [ %3, %78 ]
  switch i16 %19, label %101 [
    i16 394, label %90
    i16 135, label %90
  ]

90:                                               ; preds = %88, %88
  %91 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr inbounds %struct.gp, ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !42
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %89, i32 noundef 11) #14
  %98 = getelementptr inbounds %struct.gv, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !21
  %100 = getelementptr inbounds %struct.gp, ptr %99, i64 0, i32 6
  br label %112

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !21
  %104 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %89, i32 noundef 12) #14
  %109 = getelementptr inbounds %struct.gv, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !21
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 5
  br label %112

112:                                              ; preds = %96, %107
  %113 = phi ptr [ %111, %107 ], [ %100, %96 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  br label %115

115:                                              ; preds = %112, %101, %90
  %116 = phi ptr [ %94, %90 ], [ %105, %101 ], [ %114, %112 ]
  %117 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %118 = getelementptr inbounds %struct.op, ptr %117, i64 0, i32 6
  %119 = load i8, ptr %118, align 1, !tbaa !24
  %120 = icmp sgt i8 %119, -1
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  switch i16 %19, label %124 [
    i16 394, label %122
    i16 135, label %122
  ]

122:                                              ; preds = %121, %121
  %123 = call ptr @Perl_save_ary(ptr noundef nonnull %89) #14
  br label %130

124:                                              ; preds = %121
  %125 = call ptr @Perl_save_hash(ptr noundef nonnull %89) #14
  br label %130

126:                                              ; preds = %84
  %127 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !6
  %128 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %129 = load ptr, ptr %128, align 8, !tbaa !14
  br label %261

130:                                              ; preds = %115, %124, %122, %75, %64, %70, %74
  %131 = phi ptr [ %58, %74 ], [ %58, %70 ], [ %58, %64 ], [ %3, %75 ], [ %125, %124 ], [ %123, %122 ], [ %116, %115 ]
  %132 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %133 = getelementptr inbounds %struct.op, ptr %132, i64 0, i32 5
  %134 = load i8, ptr %133, align 2, !tbaa !37
  %135 = and i8 %134, 16
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %131, ptr %138, align 8, !tbaa !6
  %139 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %139, ptr @PL_stack_sp, align 8, !tbaa !6
  %140 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %141 = load ptr, ptr %140, align 8, !tbaa !14
  br label %261

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.op, ptr %132, i64 0, i32 6
  %144 = load i8, ptr %143, align 1, !tbaa !24
  %145 = and i8 %144, 8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %142
  %148 = call i32 @Perl_is_lvalue_sub() #14
  %149 = icmp ne i32 %148, 0
  %150 = and i32 %148, 1
  %151 = icmp eq i32 %150, 0
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = icmp eq i32 %16, 3
  br i1 %154, label %155, label %256

155:                                              ; preds = %153
  %156 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %131, ptr %156, align 8, !tbaa !6
  %157 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %157, ptr @PL_stack_sp, align 8, !tbaa !6
  %158 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %159 = load ptr, ptr %158, align 8, !tbaa !14
  br label %261

160:                                              ; preds = %147, %142
  switch i16 %19, label %195 [
    i16 394, label %161
    i16 135, label %161
  ]

161:                                              ; preds = %160, %160
  switch i32 %16, label %252 [
    i32 3, label %162
    i32 2, label %166
  ]

162:                                              ; preds = %161
  %163 = load ptr, ptr %1, align 8, !tbaa !6
  %164 = getelementptr inbounds ptr, ptr %163, i64 -1
  store ptr %164, ptr %1, align 8, !tbaa !6
  store ptr %164, ptr @PL_stack_sp, align 8, !tbaa !6
  call fastcc void @S_pushav(ptr noundef %131) #15
  %165 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  store ptr %165, ptr %1, align 8, !tbaa !6
  br label %252

166:                                              ; preds = %161
  %167 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %168 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %169 = getelementptr inbounds %struct.op, ptr %168, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !27
  %171 = getelementptr inbounds ptr, ptr %167, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds %struct.sv, ptr %131, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !28
  %175 = and i32 %174, 8388608
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %166
  %178 = call i32 @Perl_mg_size(ptr noundef nonnull %131) #14
  %179 = sext i32 %178 to i64
  br label %184

180:                                              ; preds = %166
  %181 = load ptr, ptr %131, align 8, !tbaa !46
  %182 = getelementptr inbounds %struct.xpvav, ptr %181, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !48
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i64 [ %179, %177 ], [ %183, %180 ]
  %186 = add nsw i64 %185, 1
  call void @Perl_sv_setiv(ptr noundef %172, i64 noundef %186) #14
  %187 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !28
  %189 = and i32 %188, 4194304
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %184
  %192 = call i32 @Perl_mg_set(ptr noundef nonnull %172) #14
  br label %193

193:                                              ; preds = %184, %191
  %194 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %172, ptr %194, align 8, !tbaa !6
  br label %252

195:                                              ; preds = %160
  %196 = icmp eq i32 %16, 3
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  store ptr %131, ptr %198, align 8, !tbaa !6
  %199 = call ptr @Perl_do_kv() #14
  br label %261

200:                                              ; preds = %195
  %201 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %202 = getelementptr inbounds %struct.op, ptr %201, i64 0, i32 6
  %203 = load i8, ptr %202, align 1, !tbaa !24
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = and i32 %204, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %240, label %210

210:                                              ; preds = %207
  %211 = call i32 @Perl_block_gimme() #14
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %240

213:                                              ; preds = %210, %200
  %214 = getelementptr inbounds %struct.sv, ptr %131, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !28
  %216 = and i32 %215, 8388608
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %213
  %219 = call ptr @Perl_mg_find(ptr noundef nonnull %131, i32 noundef 80) #14
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %240

221:                                              ; preds = %218, %213
  %222 = load ptr, ptr %131, align 8, !tbaa !32
  %223 = getelementptr inbounds %struct.xpvhv, ptr %222, i64 0, i32 2
  %224 = load i64, ptr %223, align 8, !tbaa !71
  %225 = getelementptr inbounds %struct.xpvmg, ptr %222, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !21
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %221
  %229 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %131) #14
  %230 = sext i32 %229 to i64
  br label %231

231:                                              ; preds = %221, %228
  %232 = phi i64 [ %230, %228 ], [ 0, %221 ]
  %233 = icmp eq i64 %224, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = call ptr @Perl_newSViv(i64 noundef 0) #14
  %236 = call ptr @Perl_sv_2mortal(ptr noundef %235) #14
  br label %237

237:                                              ; preds = %231, %234
  %238 = phi ptr [ %236, %234 ], [ @PL_sv_yes, %231 ]
  %239 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %238, ptr %239, align 8, !tbaa !6
  br label %252

240:                                              ; preds = %218, %210, %207
  %241 = icmp eq i32 %16, 2
  br i1 %241, label %242, label %252

242:                                              ; preds = %240
  %243 = call ptr @Perl_hv_scalar(ptr noundef %131) #14
  %244 = getelementptr inbounds %struct.sv, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !28
  %246 = and i32 %245, 4194304
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %242
  %249 = call i32 @Perl_mg_set(ptr noundef nonnull %243) #14
  br label %250

250:                                              ; preds = %242, %248
  %251 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %243, ptr %251, align 8, !tbaa !6
  br label %252

252:                                              ; preds = %162, %193, %161, %240, %250, %237
  %253 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %253, ptr @PL_stack_sp, align 8, !tbaa !6
  %254 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %255 = load ptr, ptr %254, align 8, !tbaa !14
  br label %261

256:                                              ; preds = %153
  %257 = select i1 %22, ptr @.str.7, ptr @.str.8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, ptr noundef nonnull %257) #14
  %258 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %258, ptr @PL_stack_sp, align 8, !tbaa !6
  %259 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %260 = load ptr, ptr %259, align 8, !tbaa !14
  br label %261

261:                                              ; preds = %155, %126, %256, %252, %197, %137, %61
  %262 = phi ptr [ %63, %61 ], [ %141, %137 ], [ %260, %256 ], [ %255, %252 ], [ %199, %197 ], [ %129, %126 ], [ %159, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %262
}

; Function Attrs: optsize
declare ptr @Perl_amagic_deref_call(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_softref2xv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_save_ary(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_do_kv() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_aassign() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  %5 = load i32, ptr %3, align 4, !tbaa !23
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = getelementptr inbounds i32, ptr %3, i64 -2
  store ptr %8, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %9 = load i32, ptr %4, align 4, !tbaa !23
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  store i16 256, ptr @PL_delaymagic, align 2, !tbaa !73
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !37
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = zext nneg i8 %17 to i32
  br label %24

21:                                               ; preds = %0
  %22 = tail call i32 @Perl_block_gimme() #14
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %14, %19 ], [ %23, %21 ]
  %26 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !37
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !24
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @Perl_is_lvalue_sub() #14
  %40 = icmp ne i32 %39, 0
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %42

42:                                               ; preds = %33, %38, %28
  %43 = phi ptr [ %25, %28 ], [ %25, %33 ], [ %41, %38 ]
  %44 = phi i1 [ true, %28 ], [ false, %33 ], [ %40, %38 ]
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %42, %24
  %47 = phi ptr [ %43, %42 ], [ %25, %24 ]
  %48 = phi i32 [ %45, %42 ], [ 0, %24 ]
  %49 = getelementptr inbounds %struct.op, ptr %47, i64 0, i32 6
  %50 = load i8, ptr %49, align 1, !tbaa !24
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  %53 = load i8, ptr @PL_sawalias, align 1, !range !35
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %117, label %56

56:                                               ; preds = %46
  %57 = icmp eq ptr %13, %1
  br i1 %57, label %58, label %89

58:                                               ; preds = %56
  %59 = load ptr, ptr %1, align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !28
  %64 = and i32 %63, 14680064
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = and i32 %63, 255
  %68 = add nsw i32 %67, -11
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 11
  %72 = load ptr, ptr %59, align 8, !tbaa !6
  br i1 %71, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xpvav, ptr %72, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !48
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %117, label %89

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.xpvhv, ptr %72, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !71
  %80 = getelementptr inbounds %struct.xpvmg, ptr %72, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %59) #14
  %85 = sext i32 %84 to i64
  br label %86

86:                                               ; preds = %77, %83
  %87 = phi i64 [ %85, %83 ], [ 0, %77 ]
  %88 = icmp eq i64 %79, %87
  br i1 %88, label %117, label %89

89:                                               ; preds = %66, %56, %58, %61, %73, %86
  %90 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %91 = ptrtoint ptr %7 to i64
  %92 = ptrtoint ptr %12 to i64
  %93 = sub i64 %91, %92
  %94 = ashr exact i64 %93, 3
  %95 = add nsw i64 %94, 1
  %96 = add nsw i64 %95, %90
  %97 = load i64, ptr @PL_tmps_max, align 8, !tbaa !22
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = tail call i64 @Perl_tmps_grow_p(i64 noundef %96) #14
  br label %101

101:                                              ; preds = %89, %99
  %102 = icmp ugt ptr %12, %7
  br i1 %102, label %117, label %103

103:                                              ; preds = %101, %114
  %104 = phi ptr [ %115, %114 ], [ %12, %101 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %108 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !28
  %110 = icmp eq i32 %109, 255
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef nonnull %105) #14
  br label %112

112:                                              ; preds = %107, %111
  %113 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %105, i32 noundef 1554) #14
  store ptr %113, ptr %104, align 8, !tbaa !6
  br label %114

114:                                              ; preds = %112, %103
  %115 = getelementptr inbounds ptr, ptr %104, i64 1
  %116 = icmp ugt ptr %115, %7
  br i1 %116, label %117, label %103, !llvm.loop !75

117:                                              ; preds = %114, %73, %101, %46, %86
  %118 = icmp ugt ptr %13, %1
  br i1 %118, label %382, label %119

119:                                              ; preds = %117
  %120 = icmp eq i32 %48, 0
  br label %121

121:                                              ; preds = %119, %372
  %122 = phi ptr [ %7, %119 ], [ %376, %372 ]
  %123 = phi ptr [ %12, %119 ], [ %375, %372 ]
  %124 = phi ptr [ %13, %119 ], [ %135, %372 ]
  %125 = phi ptr [ null, %119 ], [ %374, %372 ]
  %126 = phi ptr [ null, %119 ], [ %373, %372 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %127 = getelementptr inbounds ptr, ptr %124, i64 1
  %128 = load ptr, ptr %124, align 8, !tbaa !6
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = getelementptr inbounds ptr, ptr %124, i64 2
  %132 = load ptr, ptr %127, align 8, !tbaa !6
  br label %133

133:                                              ; preds = %121, %130
  %134 = phi ptr [ %128, %121 ], [ %132, %130 ]
  %135 = phi ptr [ %127, %121 ], [ %131, %130 ]
  %136 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !23
  %138 = trunc i32 %137 to i8
  switch i8 %138, label %324 [
    i8 11, label %139
    i8 12, label %226
  ]

139:                                              ; preds = %133
  %140 = and i32 %137, 14680064
  %141 = icmp eq i32 %140, 0
  tail call void @Perl_push_scope() #14
  %142 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !38
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 8, !tbaa !38
  tail call void @Perl_save_pushptr(ptr noundef nonnull %134, i32 noundef 11) #14
  tail call void @Perl_av_clear(ptr noundef nonnull %134) #14
  %145 = ptrtoint ptr %122 to i64
  %146 = ptrtoint ptr %123 to i64
  %147 = sub i64 %145, %146
  %148 = ashr exact i64 %147, 3
  tail call void @Perl_av_extend(ptr noundef nonnull %134, i64 noundef %148) #14
  %149 = icmp ugt ptr %123, %122
  br i1 %149, label %214, label %150

150:                                              ; preds = %139, %212
  %151 = phi ptr [ %198, %212 ], [ %123, %139 ]
  %152 = phi i64 [ %199, %212 ], [ 0, %139 ]
  %153 = load ptr, ptr %151, align 8, !tbaa !6
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !28
  %158 = and i32 %157, 2097152
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @Perl_mg_get(ptr noundef nonnull %153) #14
  br label %162

162:                                              ; preds = %160, %155, %150
  br i1 %129, label %166, label %163

163:                                              ; preds = %162
  %164 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %165 = load ptr, ptr %151, align 8, !tbaa !6
  tail call void @Perl_sv_setsv_flags(ptr noundef %164, ptr noundef %165, i32 noundef 1536) #14
  store ptr %164, ptr %151, align 8, !tbaa !6
  br label %196

166:                                              ; preds = %162
  %167 = load ptr, ptr %151, align 8, !tbaa !6
  %168 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !28
  %170 = and i32 %169, 2048
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.10) #14
  br label %483

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !28
  %179 = and i32 %178, 255
  %180 = icmp ugt i32 %179, 10
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.11) #14
  br label %483

183:                                              ; preds = %174
  br i1 %120, label %188, label %184

184:                                              ; preds = %183
  %185 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %167, i32 noundef 1538) #14
  store ptr %185, ptr %151, align 8, !tbaa !6
  %186 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !21
  br label %188

188:                                              ; preds = %184, %183
  %189 = phi ptr [ %187, %184 ], [ %176, %183 ]
  %190 = phi ptr [ %185, %184 ], [ %167, %183 ]
  %191 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %192 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !38
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !38
  %195 = load ptr, ptr %191, align 8, !tbaa !21
  br label %196

196:                                              ; preds = %188, %163
  %197 = phi ptr [ %195, %188 ], [ %164, %163 ]
  %198 = getelementptr inbounds ptr, ptr %151, i64 1
  %199 = add nuw nsw i64 %152, 1
  %200 = tail call ptr @Perl_av_store(ptr noundef %134, i64 noundef %152, ptr noundef %197) #14
  br i1 %141, label %212, label %201

201:                                              ; preds = %196
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = tail call ptr @Perl_sv_2mortal(ptr noundef %197) #14
  br label %205

205:                                              ; preds = %203, %201
  %206 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !28
  %208 = and i32 %207, 4194304
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  %211 = tail call i32 @Perl_mg_set(ptr noundef nonnull %197) #14
  br label %212

212:                                              ; preds = %196, %210, %205
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %213 = icmp ugt ptr %198, %122
  br i1 %213, label %214, label %150, !llvm.loop !76

214:                                              ; preds = %212, %139
  %215 = phi ptr [ %123, %139 ], [ %198, %212 ]
  %216 = load i16, ptr @PL_delaymagic, align 2, !tbaa !73
  %217 = and i16 %216, 4
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %214
  %220 = load i32, ptr %136, align 4, !tbaa !28
  %221 = and i32 %220, 4194304
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = tail call i32 @Perl_mg_set(ptr noundef nonnull %134) #14
  br label %225

225:                                              ; preds = %223, %219, %214
  tail call void @Perl_pop_scope() #14
  br label %372

226:                                              ; preds = %133
  %227 = and i32 %137, 14680064
  %228 = icmp eq i32 %227, 0
  %229 = ptrtoint ptr %122 to i64
  %230 = ptrtoint ptr %123 to i64
  %231 = sub i64 %229, %230
  %232 = and i64 %231, 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  tail call fastcc void @S_do_oddball(ptr noundef %122, ptr noundef %123) #15
  %235 = getelementptr inbounds ptr, ptr %122, i64 1
  store ptr @PL_sv_undef, ptr %235, align 8, !tbaa !6
  br label %236

236:                                              ; preds = %226, %234
  tail call void @Perl_push_scope() #14
  %237 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !38
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 8, !tbaa !38
  tail call void @Perl_save_pushptr(ptr noundef nonnull %134, i32 noundef 11) #14
  tail call void @Perl_hv_clear(ptr noundef nonnull %134) #14
  %240 = lshr exact i64 %232, 3
  %241 = xor i64 %240, 1
  %242 = getelementptr inbounds ptr, ptr %122, i64 %241
  %243 = icmp ult ptr %123, %242
  br i1 %243, label %245, label %244

244:                                              ; preds = %236
  tail call void @Perl_pop_scope() #14
  br label %318

245:                                              ; preds = %236, %294
  %246 = phi ptr [ %269, %294 ], [ %123, %236 ]
  %247 = phi ptr [ %281, %294 ], [ %123, %236 ]
  %248 = phi i32 [ %280, %294 ], [ 0, %236 ]
  %249 = load ptr, ptr %246, align 8, !tbaa !6
  br i1 %120, label %250, label %255

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.sv, ptr %249, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !28
  %253 = and i32 %252, 2097152
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %250, %245
  %256 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %249, i32 noundef 1538) #14
  br label %257

257:                                              ; preds = %250, %255
  %258 = phi ptr [ %256, %255 ], [ %249, %250 ]
  %259 = getelementptr inbounds ptr, ptr %246, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = getelementptr inbounds %struct.sv, ptr %260, i64 0, i32 2
  %262 = load i32, ptr %261, align 4, !tbaa !28
  %263 = and i32 %262, 2097152
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %257
  %266 = tail call i32 @Perl_mg_get(ptr noundef nonnull %260) #14
  br label %267

267:                                              ; preds = %257, %265
  %268 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %269 = getelementptr inbounds ptr, ptr %246, i64 2
  %270 = load ptr, ptr %259, align 8, !tbaa !6
  tail call void @Perl_sv_setsv_flags(ptr noundef %268, ptr noundef %270, i32 noundef 1536) #14
  br i1 %27, label %271, label %279

271:                                              ; preds = %267
  %272 = tail call ptr @Perl_hv_common(ptr noundef %134, ptr noundef %258, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  %275 = add nsw i32 %248, 2
  br label %279

276:                                              ; preds = %271
  %277 = getelementptr inbounds ptr, ptr %247, i64 1
  store ptr %258, ptr %247, align 8, !tbaa !6
  %278 = getelementptr inbounds ptr, ptr %247, i64 2
  store ptr %268, ptr %277, align 8, !tbaa !6
  br label %279

279:                                              ; preds = %274, %276, %267
  %280 = phi i32 [ %275, %274 ], [ %248, %276 ], [ %248, %267 ]
  %281 = phi ptr [ %247, %274 ], [ %278, %276 ], [ %247, %267 ]
  %282 = tail call ptr @Perl_hv_common(ptr noundef %134, ptr noundef %258, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %268, i32 noundef 0) #14
  br i1 %228, label %294, label %283

283:                                              ; preds = %279
  %284 = icmp eq ptr %282, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %283
  %286 = tail call ptr @Perl_sv_2mortal(ptr noundef %268) #14
  br label %287

287:                                              ; preds = %283, %285
  %288 = getelementptr inbounds %struct.sv, ptr %268, i64 0, i32 2
  %289 = load i32, ptr %288, align 4, !tbaa !28
  %290 = and i32 %289, 4194304
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %287
  %293 = tail call i32 @Perl_mg_set(ptr noundef nonnull %268) #14
  br label %294

294:                                              ; preds = %292, %287, %279
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %295 = icmp ult ptr %269, %242
  br i1 %295, label %245, label %296, !llvm.loop !77

296:                                              ; preds = %294
  tail call void @Perl_pop_scope() #14
  %297 = icmp ne i32 %280, 0
  %298 = and i1 %27, %297
  br i1 %298, label %299, label %318

299:                                              ; preds = %296
  %300 = sext i32 %280 to i64
  %301 = sub nsw i64 0, %300
  %302 = getelementptr inbounds ptr, ptr %122, i64 %301
  %303 = getelementptr inbounds ptr, ptr %302, i64 %241
  %304 = icmp ult ptr %123, %303
  br i1 %304, label %305, label %318

305:                                              ; preds = %299, %314
  %306 = phi ptr [ %316, %314 ], [ %123, %299 ]
  %307 = getelementptr inbounds ptr, ptr %306, i64 1
  %308 = load ptr, ptr %306, align 8, !tbaa !6
  %309 = tail call ptr @Perl_hv_common(ptr noundef %134, ptr noundef %308, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.he, ptr %309, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !21
  br label %314

314:                                              ; preds = %305, %311
  %315 = phi ptr [ %313, %311 ], [ @PL_sv_undef, %305 ]
  %316 = getelementptr inbounds ptr, ptr %306, i64 2
  store ptr %315, ptr %307, align 8, !tbaa !6
  %317 = icmp ult ptr %316, %303
  br i1 %317, label %305, label %318, !llvm.loop !78

318:                                              ; preds = %314, %244, %299, %296
  %319 = phi ptr [ %269, %296 ], [ %123, %299 ], [ %123, %244 ], [ %316, %314 ]
  %320 = phi ptr [ %122, %296 ], [ %302, %299 ], [ %122, %244 ], [ %302, %314 ]
  %321 = and i1 %27, %233
  %322 = zext i1 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %320, i64 %322
  br label %372

324:                                              ; preds = %133
  %325 = and i32 %137, 134283264
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %324
  %328 = icmp eq ptr %134, @PL_sv_undef
  %329 = icmp eq ptr %134, @PL_sv_yes
  %330 = or i1 %328, %329
  %331 = icmp eq ptr %134, @PL_sv_no
  %332 = or i1 %331, %330
  %333 = icmp eq ptr %134, @PL_sv_placeholder
  %334 = or i1 %333, %332
  br i1 %334, label %335, label %339

335:                                              ; preds = %327
  %336 = icmp ule ptr %123, %122
  %337 = zext i1 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %123, i64 %337
  br label %372

339:                                              ; preds = %327, %324
  %340 = icmp ugt ptr %123, %122
  br i1 %340, label %364, label %341

341:                                              ; preds = %339
  %342 = and i32 %137, 4718592
  %343 = icmp eq i32 %342, 524288
  br i1 %343, label %344, label %361

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !38
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %361

348:                                              ; preds = %344
  %349 = and i32 %137, 49152
  %350 = icmp eq i32 %349, 32768
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = and i32 %137, 255
  %353 = add nsw i32 %352, -9
  %354 = icmp ult i32 %353, 2
  %355 = and i32 %137, 16777216
  %356 = icmp eq i32 %355, 0
  %357 = and i1 %356, %354
  br i1 %357, label %361, label %358

358:                                              ; preds = %351, %348
  %359 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %359, label %360, label %361

360:                                              ; preds = %358
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #14
  br label %361

361:                                              ; preds = %351, %341, %344, %358, %360
  %362 = load ptr, ptr %123, align 8, !tbaa !6
  tail call void @Perl_sv_setsv_flags(ptr noundef %134, ptr noundef %362, i32 noundef 1538) #14
  %363 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %134, ptr %123, align 8, !tbaa !6
  br label %365

364:                                              ; preds = %339
  tail call void @Perl_sv_setsv_flags(ptr noundef %134, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #14
  br label %365

365:                                              ; preds = %361, %364
  %366 = phi ptr [ %363, %361 ], [ %123, %364 ]
  %367 = load i32, ptr %136, align 4, !tbaa !28
  %368 = and i32 %367, 4194304
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %365
  %371 = tail call i32 @Perl_mg_set(ptr noundef nonnull %134) #14
  br label %372

372:                                              ; preds = %335, %225, %318, %365, %370
  %373 = phi ptr [ %126, %370 ], [ %126, %365 ], [ %134, %318 ], [ %126, %225 ], [ %126, %335 ]
  %374 = phi ptr [ %125, %370 ], [ %125, %365 ], [ %125, %318 ], [ %134, %225 ], [ %125, %335 ]
  %375 = phi ptr [ %366, %370 ], [ %366, %365 ], [ %319, %318 ], [ %215, %225 ], [ %338, %335 ]
  %376 = phi ptr [ %122, %370 ], [ %122, %365 ], [ %323, %318 ], [ %122, %225 ], [ %122, %335 ]
  %377 = icmp ugt ptr %135, %1
  br i1 %377, label %378, label %121, !llvm.loop !79

378:                                              ; preds = %372
  %379 = icmp ne ptr %374, null
  %380 = icmp ne ptr %373, null
  %381 = select i1 %379, i1 true, i1 %380
  br label %382

382:                                              ; preds = %378, %117
  %383 = phi i1 [ false, %117 ], [ %381, %378 ]
  %384 = phi ptr [ %12, %117 ], [ %375, %378 ]
  %385 = phi ptr [ %7, %117 ], [ %376, %378 ]
  %386 = load i16, ptr @PL_delaymagic, align 2, !tbaa !73
  %387 = and i16 %386, -257
  %388 = icmp eq i16 %387, 0
  br i1 %388, label %435, label %389

389:                                              ; preds = %382
  %390 = tail call i32 @getuid() #14
  %391 = tail call i32 @geteuid() #14
  %392 = tail call i32 @getgid() #14
  %393 = tail call i32 @getegid() #14
  %394 = load i16, ptr @PL_delaymagic, align 2, !tbaa !73
  %395 = and i16 %394, 3
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %408, label %397

397:                                              ; preds = %389
  %398 = load i32, ptr @PL_delaymagic_uid, align 4, !tbaa !23
  %399 = load i32, ptr @PL_delaymagic_euid, align 4, !tbaa !23
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.12) #14
  br label %483

403:                                              ; preds = %397
  %404 = tail call i32 @setuid(i32 noundef %398) #14
  %405 = tail call i32 @getuid() #14
  %406 = tail call i32 @geteuid() #14
  %407 = load i16, ptr @PL_delaymagic, align 2, !tbaa !73
  br label %408

408:                                              ; preds = %403, %389
  %409 = phi i16 [ %407, %403 ], [ %394, %389 ]
  %410 = phi i32 [ %405, %403 ], [ %390, %389 ]
  %411 = phi i32 [ %406, %403 ], [ %391, %389 ]
  %412 = and i16 %409, 48
  %413 = icmp eq i16 %412, 0
  br i1 %413, label %424, label %414

414:                                              ; preds = %408
  %415 = load i32, ptr @PL_delaymagic_gid, align 4, !tbaa !23
  %416 = load i32, ptr @PL_delaymagic_egid, align 4, !tbaa !23
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %420, label %418

418:                                              ; preds = %414
  %419 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.13) #14
  br label %483

420:                                              ; preds = %414
  %421 = tail call i32 @setgid(i32 noundef %415) #14
  %422 = tail call i32 @getgid() #14
  %423 = tail call i32 @getegid() #14
  br label %424

424:                                              ; preds = %408, %420
  %425 = phi i32 [ %422, %420 ], [ %392, %408 ]
  %426 = phi i32 [ %423, %420 ], [ %393, %408 ]
  %427 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %428 = icmp ne i32 %410, 0
  %429 = icmp ne i32 %411, %410
  %430 = icmp ne i32 %426, %425
  %431 = select i1 %429, i1 true, i1 %430
  %432 = select i1 %428, i1 %431, i1 false
  %433 = zext i1 %432 to i8
  %434 = or i8 %427, %433
  store i8 %434, ptr @PL_tainting, align 1, !tbaa !16
  br label %435

435:                                              ; preds = %424, %382
  store i16 0, ptr @PL_delaymagic, align 2, !tbaa !73
  switch i32 %26, label %455 [
    i32 1, label %479
    i32 2, label %436
  ]

436:                                              ; preds = %435
  %437 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %438 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %439 = getelementptr inbounds %struct.op, ptr %438, i64 0, i32 3
  %440 = load i64, ptr %439, align 8, !tbaa !27
  %441 = getelementptr inbounds ptr, ptr %437, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !6
  %443 = ptrtoint ptr %385 to i64
  %444 = ptrtoint ptr %12 to i64
  %445 = sub i64 %443, %444
  %446 = ashr exact i64 %445, 3
  %447 = add nsw i64 %446, 1
  tail call void @Perl_sv_setiv(ptr noundef %442, i64 noundef %447) #14
  %448 = getelementptr inbounds %struct.sv, ptr %442, i64 0, i32 2
  %449 = load i32, ptr %448, align 4, !tbaa !28
  %450 = and i32 %449, 4194304
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %436
  %453 = tail call i32 @Perl_mg_set(ptr noundef nonnull %442) #14
  br label %454

454:                                              ; preds = %436, %452
  store ptr %442, ptr %12, align 8, !tbaa !6
  br label %479

455:                                              ; preds = %435
  br i1 %383, label %479, label %456

456:                                              ; preds = %455
  %457 = ptrtoint ptr %1 to i64
  %458 = ptrtoint ptr %13 to i64
  %459 = sub i64 %457, %458
  %460 = getelementptr inbounds i8, ptr %12, i64 %459
  %461 = icmp ugt ptr %384, %460
  br i1 %461, label %479, label %462

462:                                              ; preds = %456
  %463 = ptrtoint ptr %384 to i64
  %464 = ptrtoint ptr %12 to i64
  %465 = sub i64 %463, %464
  %466 = getelementptr inbounds i8, ptr %13, i64 %465
  br label %467

467:                                              ; preds = %462, %474
  %468 = phi ptr [ %477, %474 ], [ %384, %462 ]
  %469 = phi ptr [ %475, %474 ], [ %466, %462 ]
  %470 = icmp ugt ptr %469, %1
  br i1 %470, label %474, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds ptr, ptr %469, i64 1
  %473 = load ptr, ptr %469, align 8, !tbaa !6
  br label %474

474:                                              ; preds = %467, %471
  %475 = phi ptr [ %472, %471 ], [ %469, %467 ]
  %476 = phi ptr [ %473, %471 ], [ @PL_sv_undef, %467 ]
  %477 = getelementptr inbounds ptr, ptr %468, i64 1
  store ptr %476, ptr %468, align 8, !tbaa !6
  %478 = icmp ugt ptr %477, %460
  br i1 %478, label %479, label %467, !llvm.loop !80

479:                                              ; preds = %474, %456, %455, %435, %454
  %480 = phi ptr [ %12, %454 ], [ %11, %435 ], [ %385, %455 ], [ %460, %456 ], [ %460, %474 ]
  store ptr %480, ptr @PL_stack_sp, align 8, !tbaa !6
  %481 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %482 = load ptr, ptr %481, align 8, !tbaa !14
  br label %483

483:                                              ; preds = %418, %401, %181, %172, %479
  %484 = phi ptr [ %482, %479 ], [ %173, %172 ], [ %182, %181 ], [ %419, %418 ], [ %402, %401 ]
  ret ptr %484
}

; Function Attrs: optsize
declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_do_oddball(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !28
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -11
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %9, %7
  br label %24

24:                                               ; preds = %15, %23
  %25 = phi ptr [ @.str.15, %23 ], [ @.str.14, %15 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.5, ptr noundef nonnull %25) #14
  br label %26

26:                                               ; preds = %5, %24, %2
  ret void
}

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @getgid() local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @getegid() local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @setuid(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @setgid(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_qr() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #15
  %8 = getelementptr inbounds %struct.regexp, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.regexp_engine, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = tail call ptr %11(ptr noundef nonnull %4) #14
  br label %13

13:                                               ; preds = %0, %6
  %14 = phi ptr [ %12, %6 ], [ null, %0 ]
  %15 = tail call ptr @Perl_sv_newmortal() #14
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %15, i32 noundef 1) #14
  br label %21

21:                                               ; preds = %20, %13
  %22 = tail call ptr @Perl_reg_temp_copy(ptr noundef null, ptr noundef %4) #14
  %23 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !21
  %24 = load i32, ptr %16, align 4, !tbaa !28
  %25 = or i32 %24, 2048
  store i32 %25, ptr %16, align 4, !tbaa !28
  %26 = tail call fastcc ptr @S_ReANY(ptr noundef %22) #15
  %27 = getelementptr inbounds %struct.regexp, ptr %26, i64 0, i32 25
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %28, align 8, !tbaa !87
  %32 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 12
  %33 = load i32, ptr %32, align 4, !tbaa !89
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @Perl_cv_clone(ptr noundef nonnull %28) #14
  store ptr %37, ptr %27, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %28) #15
  br label %38

38:                                               ; preds = %21, %30, %36
  %39 = icmp eq ptr %14, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %14, i32 noundef 1) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %14) #15
  %42 = tail call ptr @Perl_sv_bless(ptr noundef nonnull %15, ptr noundef %41) #14
  br label %43

43:                                               ; preds = %40, %38
  %44 = tail call fastcc ptr @S_ReANY(ptr noundef %4) #15
  %45 = getelementptr inbounds %struct.regexp, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !91
  %47 = and i32 %46, 134217728
  %48 = icmp eq i32 %47, 0
  %49 = load i8, ptr @PL_tainting, align 1, !range !35
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  tail call void @Perl_sv_magic(ptr noundef nonnull %15, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  %53 = load i8, ptr @PL_tainting, align 1, !tbaa !16
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %23, align 8, !tbaa !21
  tail call void @Perl_sv_magic(ptr noundef %56, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %57

57:                                               ; preds = %55, %52, %43
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %1 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %1, %57 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %15, ptr %67, align 8, !tbaa !6
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !6
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %69 = load ptr, ptr %68, align 8, !tbaa !14
  ret ptr %69
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_reg_temp_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cv_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_match() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !37
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = zext nneg i8 %8 to i32
  br label %17

12:                                               ; preds = %0
  %13 = tail call i32 @Perl_block_gimme() #14
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !37
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i8 [ %7, %10 ], [ %16, %12 ]
  %19 = phi ptr [ %3, %10 ], [ %14, %12 ]
  %20 = phi i32 [ %11, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %21 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %22 = and i8 %18, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds ptr, ptr %2, i64 -1
  %26 = load ptr, ptr %2, align 8, !tbaa !6
  br label %55

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.op, ptr %19, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !27
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %33 = getelementptr inbounds ptr, ptr %32, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  br label %55

35:                                               ; preds = %27
  %36 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %36, i32 noundef 0) #14
  %43 = getelementptr inbounds %struct.gv, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %35, %41
  %47 = phi ptr [ %45, %41 ], [ %39, %35 ]
  %48 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %2 to i64
  %51 = sub i64 %49, %50
  %52 = icmp slt i64 %51, 8
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #14
  br label %55

55:                                               ; preds = %31, %46, %53, %24
  %56 = phi ptr [ %26, %24 ], [ %34, %31 ], [ %47, %53 ], [ %47, %46 ]
  %57 = phi ptr [ %25, %24 ], [ %2, %31 ], [ %54, %53 ], [ %2, %46 ]
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !6
  %58 = tail call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %59 = getelementptr inbounds %struct.regexp, ptr %58, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !28
  %64 = and i32 %63, 2098176
  %65 = icmp eq i32 %64, 1024
  br i1 %61, label %75, label %66

66:                                               ; preds = %55
  br i1 %65, label %67, label %73

67:                                               ; preds = %66
  %68 = load ptr, ptr %56, align 8, !tbaa !32
  %69 = getelementptr inbounds %struct.xpv, ptr %68, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !33
  store i64 %70, ptr %1, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  br label %84

73:                                               ; preds = %66
  %74 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %1, i32 noundef 32) #14
  br label %84

75:                                               ; preds = %55
  br i1 %65, label %76, label %82

76:                                               ; preds = %75
  %77 = load ptr, ptr %56, align 8, !tbaa !32
  %78 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !33
  store i64 %79, ptr %1, align 8, !tbaa !22
  %80 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  br label %84

82:                                               ; preds = %75
  %83 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %84

84:                                               ; preds = %76, %82, %67, %73
  %85 = phi ptr [ %72, %67 ], [ %74, %73 ], [ %81, %76 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.16) #14
  br label %431

89:                                               ; preds = %84
  %90 = load i64, ptr %1, align 8, !tbaa !22
  %91 = getelementptr inbounds i8, ptr %85, i64 %90
  %92 = call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %93 = getelementptr inbounds %struct.regexp, ptr %92, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !91
  %95 = and i32 %94, 134217728
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i8, ptr @PL_tainted, align 1, !tbaa !16, !range !35, !noundef !36
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %102 = load i32, ptr %101, align 8, !tbaa !93
  %103 = and i32 %102, 524288
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %97, %100, %89
  %106 = phi i1 [ true, %89 ], [ false, %97 ], [ %104, %100 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %107 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %108 = load i32, ptr %107, align 8, !tbaa !93
  %109 = and i32 %108, 16777216
  %110 = and i32 %108, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %402

112:                                              ; preds = %105
  %113 = call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %114 = getelementptr inbounds %struct.regexp, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load ptr, ptr %5, align 8, !tbaa !94
  %119 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !33
  %121 = call fastcc ptr @S_ReANY(ptr noundef nonnull %5) #15
  %122 = getelementptr inbounds %struct.regexp, ptr %121, i64 0, i32 24
  %123 = load i16, ptr %122, align 8
  %124 = and i16 %123, 15
  %125 = add nuw nsw i16 %124, 1
  %126 = zext nneg i16 %125 to i64
  %127 = icmp eq i64 %120, %126
  %128 = load ptr, ptr @PL_curpm, align 8
  %129 = icmp ne ptr %128, null
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.pmop, ptr %128, i64 0, i32 9
  %133 = load ptr, ptr %132, align 8, !tbaa !81
  br label %134

134:                                              ; preds = %131, %117, %112
  %135 = phi ptr [ %5, %112 ], [ %133, %131 ], [ %5, %117 ]
  %136 = phi ptr [ %3, %112 ], [ %128, %131 ], [ %3, %117 ]
  %137 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %138 = getelementptr inbounds %struct.regexp, ptr %137, i64 0, i32 8
  %139 = load i64, ptr %138, align 8, !tbaa !96
  %140 = icmp sgt i64 %139, -1
  %141 = icmp ugt i64 %139, %90
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %402, label %143

143:                                              ; preds = %134
  %144 = icmp ne i32 %109, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %143
  %146 = call ptr @Perl_mg_find_mglob(ptr noundef nonnull %56) #14
  %147 = icmp eq ptr %146, null
  br i1 %147, label %159, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.magic, ptr %146, i64 0, i32 5
  %150 = load i64, ptr %149, align 8, !tbaa !97
  %151 = icmp sgt i64 %150, -1
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i64, ptr %1, align 8, !tbaa !22
  %154 = call fastcc i64 @S_MgBYTEPOS(ptr noundef nonnull %146, ptr noundef nonnull %56, ptr noundef nonnull %85, i64 noundef %153) #15
  %155 = getelementptr inbounds %struct.magic, ptr %146, i64 0, i32 4
  %156 = load i8, ptr %155, align 1, !tbaa !99
  %157 = and i8 %156, 1
  %158 = zext nneg i8 %157 to i64
  br label %159

159:                                              ; preds = %152, %145, %148, %143
  %160 = phi i64 [ 0, %148 ], [ 0, %145 ], [ 0, %143 ], [ %154, %152 ]
  %161 = phi i64 [ 0, %148 ], [ 0, %145 ], [ 0, %143 ], [ %158, %152 ]
  %162 = phi ptr [ %146, %148 ], [ null, %145 ], [ null, %143 ], [ %146, %152 ]
  %163 = icmp eq i32 %20, 3
  %164 = select i1 %144, i1 %163, i1 false
  %165 = select i1 %164, i8 33, i8 97
  %166 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %167 = icmp ne i32 %20, 3
  %168 = ptrtoint ptr %91 to i64
  %169 = or disjoint i8 %165, 24
  br label %170

170:                                              ; preds = %390, %159
  %171 = phi i8 [ %165, %159 ], [ %169, %390 ]
  %172 = phi i64 [ %160, %159 ], [ %395, %390 ]
  %173 = phi ptr [ %85, %159 ], [ %177, %390 ]
  %174 = phi i64 [ %161, %159 ], [ %401, %390 ]
  %175 = phi ptr [ %162, %159 ], [ %282, %390 ]
  %176 = phi ptr [ %57, %159 ], [ %382, %390 ]
  %177 = getelementptr inbounds i8, ptr %85, i64 %172
  %178 = select i1 %144, ptr %177, ptr %173
  %179 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %180 = getelementptr inbounds %struct.regexp, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !83
  %182 = getelementptr inbounds %struct.regexp_engine, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !100
  %184 = zext nneg i8 %171 to i32
  %185 = call i32 %183(ptr noundef %135, ptr noundef %178, ptr noundef nonnull %91, ptr noundef nonnull %85, i64 noundef %174, ptr noundef %56, ptr noundef null, i32 noundef %184) #14
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %402, label %187

187:                                              ; preds = %170
  store ptr %136, ptr @PL_curpm, align 8, !tbaa !6
  %188 = load i32, ptr %107, align 8, !tbaa !93
  %189 = and i32 %188, 1048576
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = or i32 %188, 2097152
  store i32 %192, ptr %107, align 8, !tbaa !93
  br label %193

193:                                              ; preds = %191, %187
  %194 = phi i32 [ %192, %191 ], [ %188, %187 ]
  br i1 %106, label %195, label %200

195:                                              ; preds = %193
  %196 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %197 = getelementptr inbounds %struct.regexp, ptr %196, i64 0, i32 7
  %198 = load i32, ptr %197, align 8, !tbaa !91
  %199 = or i32 %198, 67108864
  store i32 %199, ptr %197, align 8, !tbaa !91
  br label %200

200:                                              ; preds = %195, %193
  %201 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %202 = getelementptr inbounds %struct.regexp, ptr %201, i64 0, i32 7
  %203 = load i32, ptr %202, align 8, !tbaa !91
  %204 = and i32 %203, 67108864
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  store i8 1, ptr @PL_tainted, align 1, !tbaa !16
  br label %207

207:                                              ; preds = %200, %206
  br i1 %144, label %208, label %281

208:                                              ; preds = %207
  %209 = and i32 %194, 33554432
  %210 = icmp eq i32 %209, 0
  %211 = and i1 %163, %210
  br i1 %211, label %281, label %212

212:                                              ; preds = %208
  %213 = icmp eq ptr %175, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %212
  %215 = call ptr @Perl_sv_magicext_mglob(ptr noundef %56) #14
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi ptr [ %175, %212 ], [ %215, %214 ]
  %218 = load i32, ptr %166, align 4, !tbaa !28
  %219 = and i32 %218, 1024
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %236, label %221

221:                                              ; preds = %216
  %222 = and i32 %218, 2097152
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = call fastcc zeroext i1 @S_sv_only_taint_gmagic(ptr noundef nonnull %56) #15
  br i1 %225, label %226, label %236

226:                                              ; preds = %224, %221
  %227 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %228 = getelementptr inbounds %struct.regexp, ptr %227, i64 0, i32 17
  %229 = load ptr, ptr %228, align 8, !tbaa !101
  %230 = getelementptr inbounds %struct.regexp_paren_pair, ptr %229, i64 0, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !102
  %232 = getelementptr inbounds %struct.magic, ptr %217, i64 0, i32 5
  store i64 %231, ptr %232, align 8, !tbaa !97
  %233 = getelementptr inbounds %struct.magic, ptr %217, i64 0, i32 4
  %234 = load i8, ptr %233, align 1, !tbaa !99
  %235 = or i8 %234, 64
  store i8 %235, ptr %233, align 1, !tbaa !99
  br label %265

236:                                              ; preds = %224, %216
  %237 = and i32 %218, 536870912
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %241 = getelementptr inbounds %struct.cop, ptr %240, i64 0, i32 10
  %242 = load i32, ptr %241, align 8, !tbaa !40
  %243 = and i32 %242, 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %247 = getelementptr inbounds %struct.regexp, ptr %246, i64 0, i32 17
  %248 = load ptr, ptr %247, align 8, !tbaa !101
  %249 = getelementptr inbounds %struct.regexp_paren_pair, ptr %248, i64 0, i32 1
  %250 = load i64, ptr %249, align 8, !tbaa !102
  %251 = getelementptr inbounds i8, ptr %85, i64 %250
  %252 = call i64 @Perl_utf8_length(ptr noundef nonnull %85, ptr noundef nonnull %251) #14
  br label %259

253:                                              ; preds = %239, %236
  %254 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %255 = getelementptr inbounds %struct.regexp, ptr %254, i64 0, i32 17
  %256 = load ptr, ptr %255, align 8, !tbaa !101
  %257 = getelementptr inbounds %struct.regexp_paren_pair, ptr %256, i64 0, i32 1
  %258 = load i64, ptr %257, align 8, !tbaa !102
  br label %259

259:                                              ; preds = %253, %245
  %260 = phi i64 [ %252, %245 ], [ %258, %253 ]
  %261 = getelementptr inbounds %struct.magic, ptr %217, i64 0, i32 5
  store i64 %260, ptr %261, align 8, !tbaa !97
  %262 = getelementptr inbounds %struct.magic, ptr %217, i64 0, i32 4
  %263 = load i8, ptr %262, align 1, !tbaa !99
  %264 = and i8 %263, -65
  store i8 %264, ptr %262, align 1, !tbaa !99
  br label %265

265:                                              ; preds = %259, %226
  %266 = phi i8 [ %264, %259 ], [ %235, %226 ]
  %267 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %268 = getelementptr inbounds %struct.regexp, ptr %267, i64 0, i32 17
  %269 = load ptr, ptr %268, align 8, !tbaa !101
  %270 = load i64, ptr %269, align 8, !tbaa !104
  %271 = getelementptr inbounds %struct.regexp, ptr %267, i64 0, i32 10
  %272 = load i64, ptr %271, align 8, !tbaa !105
  %273 = add nsw i64 %272, %270
  %274 = getelementptr inbounds %struct.regexp_paren_pair, ptr %269, i64 0, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !102
  %276 = icmp eq i64 %273, %275
  %277 = getelementptr inbounds %struct.magic, ptr %217, i64 0, i32 4
  %278 = and i8 %266, -2
  %279 = zext i1 %276 to i8
  %280 = or disjoint i8 %278, %279
  store i8 %280, ptr %277, align 1, !tbaa !99
  br label %281

281:                                              ; preds = %265, %208, %207
  %282 = phi ptr [ %175, %207 ], [ %175, %208 ], [ %217, %265 ]
  %283 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %284 = getelementptr inbounds %struct.regexp, ptr %283, i64 0, i32 12
  %285 = load i32, ptr %284, align 8, !tbaa !106
  %286 = or i32 %285, %109
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %287, i1 true, i1 %167
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %291 = icmp sgt i32 %290, %21
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %293

293:                                              ; preds = %292, %289
  %294 = getelementptr inbounds ptr, ptr %176, i64 1
  store ptr @PL_sv_yes, ptr %294, align 8, !tbaa !6
  store ptr %294, ptr @PL_stack_sp, align 8, !tbaa !6
  %295 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %296 = load ptr, ptr %295, align 8, !tbaa !14
  br label %431

297:                                              ; preds = %281
  %298 = icmp eq i32 %285, 0
  %299 = and i1 %144, %298
  %300 = zext i1 %299 to i32
  %301 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %302 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %303 = ptrtoint ptr %302 to i64
  %304 = ptrtoint ptr %301 to i64
  %305 = sub i64 %303, %304
  %306 = ashr exact i64 %305, 3
  %307 = add nsw i32 %285, %300
  %308 = sext i32 %307 to i64
  %309 = icmp slt i64 %306, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %297
  %311 = call ptr @Perl_stack_grow(ptr noundef %301, ptr noundef %301, i64 noundef %308) #14
  br label %312

312:                                              ; preds = %310, %297
  %313 = phi ptr [ %311, %310 ], [ %301, %297 ]
  %314 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %315 = add nsw i64 %314, %308
  %316 = load i64, ptr @PL_tmps_max, align 8, !tbaa !22
  %317 = icmp slt i64 %315, %316
  br i1 %317, label %320, label %318

318:                                              ; preds = %312
  %319 = call i64 @Perl_tmps_grow_p(i64 noundef %315) #14
  br label %320

320:                                              ; preds = %312, %318
  %321 = xor i1 %299, true
  %322 = zext i1 %321 to i32
  %323 = icmp slt i32 %285, %322
  br i1 %323, label %381, label %324

324:                                              ; preds = %320
  %325 = zext i1 %321 to i64
  %326 = add nuw i32 %285, 1
  %327 = zext i32 %326 to i64
  br label %328

328:                                              ; preds = %324, %378
  %329 = phi i64 [ %325, %324 ], [ %379, %378 ]
  %330 = phi ptr [ %313, %324 ], [ %332, %378 ]
  %331 = call ptr @Perl_sv_newmortal() #14
  %332 = getelementptr inbounds ptr, ptr %330, i64 1
  store ptr %331, ptr %332, align 8, !tbaa !6
  %333 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %334 = getelementptr inbounds %struct.regexp, ptr %333, i64 0, i32 17
  %335 = load ptr, ptr %334, align 8, !tbaa !101
  %336 = getelementptr inbounds %struct.regexp_paren_pair, ptr %335, i64 %329
  %337 = load i64, ptr %336, align 8, !tbaa !104
  %338 = icmp eq i64 %337, -1
  br i1 %338, label %378, label %339

339:                                              ; preds = %328
  %340 = getelementptr inbounds %struct.regexp_paren_pair, ptr %335, i64 %329, i32 1
  %341 = load i64, ptr %340, align 8, !tbaa !102
  %342 = icmp eq i64 %341, -1
  br i1 %342, label %378, label %343

343:                                              ; preds = %339
  %344 = sub nsw i64 %341, %337
  %345 = getelementptr inbounds i8, ptr %85, i64 %337
  %346 = icmp slt i64 %341, 0
  br i1 %346, label %374, label %347

347:                                              ; preds = %343
  %348 = icmp slt i64 %337, 0
  %349 = and i64 %344, 2147483648
  %350 = icmp ne i64 %349, 0
  %351 = select i1 %348, i1 true, i1 %350
  br i1 %351, label %374, label %352

352:                                              ; preds = %347
  %353 = and i64 %344, 4294967295
  %354 = ptrtoint ptr %345 to i64
  %355 = sub i64 %168, %354
  %356 = icmp sgt i64 %353, %355
  br i1 %356, label %374, label %357

357:                                              ; preds = %352
  call void @Perl_sv_setpvn(ptr noundef %331, ptr noundef nonnull %345, i64 noundef %353) #14
  %358 = load i32, ptr %166, align 4, !tbaa !28
  %359 = and i32 %358, 536870912
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %378, label %361

361:                                              ; preds = %357
  %362 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %363 = getelementptr inbounds %struct.cop, ptr %362, i64 0, i32 10
  %364 = load i32, ptr %363, align 8, !tbaa !40
  %365 = and i32 %364, 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %361
  %368 = call zeroext i1 @Perl_is_utf8_string(ptr noundef nonnull %345, i64 noundef %353) #14
  br i1 %368, label %369, label %378

369:                                              ; preds = %367
  %370 = load ptr, ptr %332, align 8, !tbaa !6
  %371 = getelementptr inbounds %struct.sv, ptr %370, i64 0, i32 2
  %372 = load i32, ptr %371, align 4, !tbaa !28
  %373 = or i32 %372, 536870912
  store i32 %373, ptr %371, align 4, !tbaa !28
  br label %378

374:                                              ; preds = %352, %347, %343
  %375 = shl i64 %344, 32
  %376 = ashr exact i64 %375, 32
  %377 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.17, i64 noundef %329, i64 noundef %337, i64 noundef %341, ptr noundef nonnull %345, ptr noundef nonnull %91, i64 noundef %376) #14
  br label %431

378:                                              ; preds = %357, %361, %367, %369, %339, %328
  %379 = add nuw nsw i64 %329, 1
  %380 = icmp eq i64 %379, %327
  br i1 %380, label %381, label %328, !llvm.loop !107

381:                                              ; preds = %378, %320
  %382 = phi ptr [ %313, %320 ], [ %332, %378 ]
  br i1 %144, label %390, label %383

383:                                              ; preds = %381
  %384 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %385 = icmp sgt i32 %384, %21
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %387

387:                                              ; preds = %386, %383
  store ptr %382, ptr @PL_stack_sp, align 8, !tbaa !6
  %388 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %389 = load ptr, ptr %388, align 8, !tbaa !14
  br label %431

390:                                              ; preds = %381
  %391 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %392 = getelementptr inbounds %struct.regexp, ptr %391, i64 0, i32 17
  %393 = load ptr, ptr %392, align 8, !tbaa !101
  %394 = getelementptr inbounds %struct.regexp_paren_pair, ptr %393, i64 0, i32 1
  %395 = load i64, ptr %394, align 8, !tbaa !102
  %396 = load i64, ptr %393, align 8, !tbaa !104
  %397 = getelementptr inbounds %struct.regexp, ptr %391, i64 0, i32 10
  %398 = load i64, ptr %397, align 8, !tbaa !105
  %399 = add nsw i64 %398, %396
  %400 = icmp eq i64 %399, %395
  %401 = zext i1 %400 to i64
  store ptr %382, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %170

402:                                              ; preds = %170, %134, %105
  %403 = phi ptr [ null, %105 ], [ null, %134 ], [ %175, %170 ]
  %404 = phi ptr [ %57, %105 ], [ %57, %134 ], [ %176, %170 ]
  %405 = icmp eq i32 %109, 0
  br i1 %405, label %418, label %406

406:                                              ; preds = %402
  %407 = load i32, ptr %107, align 8, !tbaa !93
  %408 = and i32 %407, 33554432
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %406
  %411 = icmp eq ptr %403, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %410
  %413 = call ptr @Perl_mg_find_mglob(ptr noundef %56) #14
  %414 = icmp eq ptr %413, null
  br i1 %414, label %418, label %415

415:                                              ; preds = %410, %412
  %416 = phi ptr [ %413, %412 ], [ %403, %410 ]
  %417 = getelementptr inbounds %struct.magic, ptr %416, i64 0, i32 5
  store i64 -1, ptr %417, align 8, !tbaa !97
  br label %418

418:                                              ; preds = %402, %406, %415, %412
  %419 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %420 = icmp sgt i32 %419, %21
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %422

422:                                              ; preds = %421, %418
  %423 = icmp eq i32 %20, 3
  br i1 %423, label %424, label %427

424:                                              ; preds = %422
  store ptr %404, ptr @PL_stack_sp, align 8, !tbaa !6
  %425 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %426 = load ptr, ptr %425, align 8, !tbaa !14
  br label %431

427:                                              ; preds = %422
  %428 = getelementptr inbounds ptr, ptr %404, i64 1
  store ptr @PL_sv_no, ptr %428, align 8, !tbaa !6
  store ptr %428, ptr @PL_stack_sp, align 8, !tbaa !6
  %429 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %430 = load ptr, ptr %429, align 8, !tbaa !14
  br label %431

431:                                              ; preds = %387, %374, %427, %424, %293, %87
  %432 = phi ptr [ %426, %424 ], [ %430, %427 ], [ %296, %293 ], [ %88, %87 ], [ %389, %387 ], [ %377, %374 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %432
}

; Function Attrs: optsize
declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_MgBYTEPOS(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !99
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = and i32 %11, 536870912
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.cop, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %9, %4
  %21 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !97
  br label %57

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !97
  %26 = and i32 %11, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = and i32 %11, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !32
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !55
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38, %23
  %46 = getelementptr inbounds i8, ptr %2, i64 %3
  %47 = tail call i64 @Perl_utf8_length(ptr noundef %2, ptr noundef %46) #14
  br label %50

48:                                               ; preds = %38, %31, %28
  %49 = tail call i64 @Perl_sv_len_utf8(ptr noundef nonnull %1) #14
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i64 [ %47, %45 ], [ %49, %48 ]
  %52 = icmp ugt i64 %25, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = add i64 %3, 1
  br label %57

55:                                               ; preds = %50
  %56 = tail call fastcc i64 @S_sv_or_pv_pos_u2b(ptr noundef nonnull %1, ptr noundef %2, i64 noundef %25) #15
  br label %57

57:                                               ; preds = %53, %55, %20
  %58 = phi i64 [ %22, %20 ], [ %54, %53 ], [ %56, %55 ]
  ret i64 %58
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @S_sv_only_taint_gmagic(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !108
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !99
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11, %6
  %22 = load ptr, ptr %7, align 8, !tbaa !21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !112

24:                                               ; preds = %16, %21, %1
  %25 = phi i1 [ true, %1 ], [ true, %21 ], [ false, %16 ]
  ret i1 %25
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_sv_or_pv_pos_u2b(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = and i32 %5, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !28
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %13, align 8, !tbaa !32
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.hv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !55
  %23 = and i32 %22, 268435456
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18, %3
  %26 = trunc i64 %2 to i32
  %27 = tail call ptr @Perl_utf8_hop(ptr noundef %1, i32 noundef %26) #14
  %28 = ptrtoint ptr %27 to i64
  %29 = ptrtoint ptr %1 to i64
  %30 = sub i64 %28, %29
  br label %33

31:                                               ; preds = %18, %11, %8
  %32 = tail call i64 @Perl_sv_pos_u2b_flags(ptr noundef nonnull %0, i64 noundef %2, ptr noundef null, i32 noundef 32) #14
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i64 [ %30, %25 ], [ %32, %31 ]
  ret i64 %34
}

; Function Attrs: optsize
declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_open6(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_nextargv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_start_glob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_unref_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_helem() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = load ptr, ptr %2, align 8, !tbaa !6
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !37
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !24
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_is_lvalue_sub() #14
  %17 = icmp ne i32 %16, 0
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %10, %15, %0
  %20 = phi ptr [ %5, %0 ], [ %5, %10 ], [ %18, %15 ]
  %21 = phi i1 [ true, %0 ], [ false, %10 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !24
  %24 = and i8 %23, 64
  %25 = icmp sgt i8 %23, -1
  %26 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !55
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  br label %168

33:                                               ; preds = %19
  br i1 %25, label %63, label %34

34:                                               ; preds = %33
  %35 = and i32 %27, 8388608
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @Perl_mg_find(ptr noundef nonnull %4, i32 noundef 80) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.magic, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !113
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = tail call ptr @Perl_newRV(ptr noundef nonnull %4) #14
  %46 = tail call ptr @Perl_sv_2mortal(ptr noundef %45) #14
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = load ptr, ptr %50, align 8, !tbaa !32
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %52, ptr noundef nonnull @.str.24, i32 noundef 1) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %52, ptr noundef nonnull @.str.25, i32 noundef 1) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %37, %34
  %61 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %62 = icmp ne ptr %61, null
  br label %63

63:                                               ; preds = %47, %54, %57, %60, %33
  %64 = phi i1 [ true, %33 ], [ %62, %60 ], [ true, %57 ], [ true, %54 ], [ true, %47 ]
  %65 = icmp eq i8 %24, 0
  %66 = select i1 %21, i1 %65, i1 false
  %67 = select i1 %66, i32 16, i32 0
  %68 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %67, ptr noundef null, i32 noundef 0) #14
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.he, ptr %68, i64 0, i32 2
  br i1 %21, label %71, label %147

71:                                               ; preds = %63
  br i1 %69, label %77, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %70, align 8, !tbaa !6
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %73, @PL_sv_undef
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %72, %71
  br i1 %65, label %78, label %80

78:                                               ; preds = %77
  %79 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %3) #14
  br label %168

80:                                               ; preds = %77
  %81 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_upgrade(ptr noundef %81, i32 noundef 10) #14
  %82 = load ptr, ptr %81, align 8, !tbaa !32
  %83 = getelementptr inbounds %struct.xpvlv, ptr %82, i64 0, i32 9
  store i8 121, ptr %83, align 8, !tbaa !114
  %84 = tail call ptr @Perl_newSVsv(ptr noundef %3) #14
  tail call void @Perl_sv_magic(ptr noundef nonnull %81, ptr noundef %84, i32 noundef 121, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %84) #15
  %85 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %4) #15
  %86 = load ptr, ptr %81, align 8, !tbaa !32
  %87 = getelementptr inbounds %struct.xpvlv, ptr %86, i64 0, i32 8
  store ptr %4, ptr %87, align 8, !tbaa !116
  %88 = getelementptr inbounds %struct.xpvlv, ptr %86, i64 0, i32 7
  store i64 1, ptr %88, align 8, !tbaa !117
  store ptr %81, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %89 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  br label %168

91:                                               ; preds = %72
  br i1 %25, label %132, label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %26, align 4, !tbaa !55
  %94 = and i32 %93, 33554432
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  %99 = load ptr, ptr %4, align 8, !tbaa !118
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !119
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !21
  %105 = icmp eq ptr %104, null
  br i1 %105, label %124, label %106

106:                                              ; preds = %96
  %107 = getelementptr i8, ptr %102, i64 36
  %108 = load i32, ptr %107, align 4, !tbaa !120
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %104, align 8, !tbaa !6
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %106, %110
  %114 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !28
  %116 = and i32 %115, 255
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct.op, ptr %119, i64 0, i32 5
  %121 = load i8, ptr %120, align 2, !tbaa !37
  %122 = icmp sgt i8 %121, -1
  %123 = zext i1 %122 to i32
  tail call void @Perl_save_gp(ptr noundef nonnull %73, i32 noundef %123) #14
  br label %143

124:                                              ; preds = %92, %96, %110, %113
  br i1 %64, label %125, label %131

125:                                              ; preds = %124
  %126 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %127 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 5
  %128 = load i8, ptr %127, align 2, !tbaa !37
  %129 = icmp sgt i8 %128, -1
  %130 = zext i1 %129 to i32
  tail call void @Perl_save_helem_flags(ptr noundef nonnull %4, ptr noundef %3, ptr noundef nonnull %70, i32 noundef %130) #14
  br label %143

131:                                              ; preds = %124
  tail call void @Perl_save_hdelete(ptr noundef nonnull %4, ptr noundef %3) #14
  br label %143

132:                                              ; preds = %91
  %133 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %134 = getelementptr inbounds %struct.op, ptr %133, i64 0, i32 6
  %135 = load i8, ptr %134, align 1, !tbaa !24
  %136 = and i8 %135, 48
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  %139 = zext nneg i8 %136 to i32
  %140 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %73, i32 noundef %139) #15
  store ptr %140, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %141 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %142 = load ptr, ptr %141, align 8, !tbaa !14
  br label %168

143:                                              ; preds = %132, %118, %131, %125
  %144 = load ptr, ptr %70, align 8, !tbaa !6
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr @PL_sv_undef, ptr %144
  br label %164

147:                                              ; preds = %63
  br i1 %69, label %152, label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr %70, align 8, !tbaa !6
  %150 = icmp eq ptr %149, null
  %151 = select i1 %150, ptr @PL_sv_undef, ptr %149
  br label %152

152:                                              ; preds = %147, %148
  %153 = phi ptr [ %151, %148 ], [ @PL_sv_undef, %147 ]
  %154 = load i32, ptr %26, align 4, !tbaa !55
  %155 = and i32 %154, 8388608
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !28
  %160 = and i32 %159, 2097152
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = tail call i32 @Perl_mg_get(ptr noundef nonnull %153) #14
  br label %164

164:                                              ; preds = %143, %162, %157, %152
  %165 = phi ptr [ %153, %162 ], [ %153, %157 ], [ %153, %152 ], [ %146, %143 ]
  store ptr %165, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %166 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %167 = load ptr, ptr %166, align 8, !tbaa !14
  br label %168

168:                                              ; preds = %78, %80, %164, %138, %30
  %169 = phi ptr [ %32, %30 ], [ %167, %164 ], [ %142, %138 ], [ %90, %80 ], [ %79, %78 ]
  ret ptr %169
}

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_save_gp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_helem_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_hdelete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @S_softref2xv_lite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !24
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = and i32 %11, 65280
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 8
  %16 = or i1 %13, %15
  %17 = and i32 %11, 16777471
  %18 = icmp eq i32 %17, 16777226
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = and i32 %11, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !32
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !33
  %27 = icmp ugt i64 %26, 32
  %28 = select i1 %27, ptr @.str.26, ptr @.str.1
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi ptr [ @.str.1, %20 ], [ %28, %23 ]
  %31 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_symref_sv, ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef %1) #14
  br label %34

32:                                               ; preds = %9
  %33 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef %1) #14
  br label %34

34:                                               ; preds = %29, %32, %3
  %35 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !28
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef %1) #14
  br label %47

47:                                               ; preds = %45, %34
  %48 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %0, i32 noundef 2049, i32 noundef %2) #14
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_multideref() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.unop_aux, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = load i64, ptr %3, align 8, !tbaa !21
  store ptr %3, ptr @PL_multideref_pc, align 8, !tbaa !6
  br label %5

5:                                                ; preds = %669, %0
  %6 = phi i64 [ %672, %669 ], [ %4, %0 ]
  %7 = phi ptr [ %670, %669 ], [ %3, %0 ]
  %8 = phi ptr [ %671, %669 ], [ null, %0 ]
  br label %9

9:                                                ; preds = %5, %13
  %10 = phi i64 [ %15, %13 ], [ %6, %5 ]
  %11 = phi ptr [ %14, %13 ], [ %7, %5 ]
  %12 = and i64 %10, 15
  switch i64 %12, label %669 [
    i64 0, label %13
    i64 5, label %16
    i64 6, label %21
    i64 1, label %34
    i64 2, label %38
    i64 3, label %49
    i64 4, label %58
    i64 12, label %344
    i64 13, label %349
    i64 8, label %362
    i64 9, label %366
    i64 10, label %377
    i64 11, label %386
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !21
  br label %9

16:                                               ; preds = %9
  %17 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %18 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  br label %126

21:                                               ; preds = %9
  %22 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %130

29:                                               ; preds = %21
  %30 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 11) #14
  %31 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6
  br label %126

34:                                               ; preds = %9
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %36 = getelementptr inbounds ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %35, align 8, !tbaa !6
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %62

38:                                               ; preds = %9
  %39 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !21
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %40, i32 noundef 0) #14
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !21
  br label %54

49:                                               ; preds = %9
  %50 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %51 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %52 = load i64, ptr %51, align 8, !tbaa !21
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi ptr [ %48, %45 ], [ %53, %49 ]
  %56 = phi ptr [ %39, %45 ], [ %51, %49 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !6
  br label %58

58:                                               ; preds = %9, %54, %38
  %59 = phi ptr [ %39, %38 ], [ %56, %54 ], [ %11, %9 ]
  %60 = phi ptr [ %43, %38 ], [ %57, %54 ], [ %8, %9 ]
  %61 = tail call ptr @Perl_vivify_ref(ptr noundef %60, i32 noundef 16) #15
  br label %62

62:                                               ; preds = %34, %58
  %63 = phi ptr [ %59, %58 ], [ %11, %34 ]
  %64 = phi ptr [ %61, %58 ], [ %37, %34 ]
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !28
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = tail call i32 @Perl_mg_get(ptr noundef nonnull %64) #14
  %71 = load i32, ptr %65, align 4, !tbaa !28
  br label %72

72:                                               ; preds = %62, %69
  %73 = phi i32 [ %66, %62 ], [ %71, %69 ]
  %74 = and i32 %73, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !28
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %78, align 8, !tbaa !32
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.hv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !55
  %88 = and i32 %87, 268435456
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %64, i32 noundef 2) #14
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !21
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !28
  br label %96

96:                                               ; preds = %76, %83, %90
  %97 = phi i32 [ %95, %90 ], [ %80, %83 ], [ %80, %76 ]
  %98 = phi ptr [ %93, %90 ], [ %78, %83 ], [ %78, %76 ]
  %99 = and i32 %97, 255
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %130, label %101

101:                                              ; preds = %96
  %102 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.27) #14
  br label %673

103:                                              ; preds = %72
  %104 = and i32 %73, 255
  %105 = icmp eq i32 %104, 11
  br i1 %105, label %130, label %106

106:                                              ; preds = %103
  %107 = and i32 %73, 49152
  %108 = icmp eq i32 %107, 32768
  %109 = add nsw i32 %104, -9
  %110 = icmp ult i32 %109, 2
  %111 = and i1 %108, %110
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = tail call ptr @S_softref2xv_lite(ptr noundef nonnull %64, ptr noundef nonnull @.str.28, i32 noundef 11) #15
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ %64, %106 ]
  %116 = getelementptr inbounds %struct.gv, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !21
  %118 = getelementptr inbounds %struct.gp, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !42
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %115, i32 noundef 11) #14
  %123 = getelementptr inbounds %struct.gv, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !21
  %125 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 6
  br label %126

126:                                              ; preds = %16, %29, %121
  %127 = phi ptr [ %125, %121 ], [ %33, %29 ], [ %20, %16 ]
  %128 = phi ptr [ %63, %121 ], [ %22, %29 ], [ %18, %16 ]
  %129 = load ptr, ptr %127, align 8, !tbaa !6
  br label %130

130:                                              ; preds = %126, %114, %21, %96, %103
  %131 = phi ptr [ %63, %96 ], [ %63, %103 ], [ %22, %21 ], [ %63, %114 ], [ %128, %126 ]
  %132 = phi ptr [ %98, %96 ], [ %64, %103 ], [ %27, %21 ], [ %119, %114 ], [ %129, %126 ]
  %133 = lshr i64 %10, 4
  %134 = and i64 %133, 3
  switch i64 %134, label %189 [
    i64 0, label %329
    i64 1, label %135
    i64 2, label %138
    i64 3, label %143
  ]

135:                                              ; preds = %130
  %136 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %137 = load i64, ptr %136, align 8, !tbaa !21
  br label %190

138:                                              ; preds = %130
  %139 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %140 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %141 = load i64, ptr %140, align 8, !tbaa !21
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141
  br label %154

143:                                              ; preds = %130
  %144 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !21
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !21
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %145, i32 noundef 0) #14
  %152 = getelementptr inbounds %struct.gv, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !21
  br label %154

154:                                              ; preds = %150, %143, %138
  %155 = phi ptr [ %142, %138 ], [ %153, %150 ], [ %147, %143 ]
  %156 = phi ptr [ %140, %138 ], [ %144, %150 ], [ %144, %143 ]
  %157 = load ptr, ptr %155, align 8, !tbaa !6
  %158 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !28
  %160 = and i32 %159, 2099200
  %161 = icmp eq i32 %160, 2048
  br i1 %161, label %162, label %179

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !21
  %165 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !28
  %167 = and i32 %166, 1048576
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load ptr, ptr %164, align 8, !tbaa !32
  %171 = load ptr, ptr %170, align 8, !tbaa !53
  %172 = getelementptr inbounds %struct.hv, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !55
  %174 = and i32 %173, 268435456
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169, %162
  %177 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %177, label %178, label %179

178:                                              ; preds = %176
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.29, ptr noundef nonnull %157) #14
  br label %179

179:                                              ; preds = %154, %169, %176, %178
  store ptr %156, ptr @PL_multideref_pc, align 8, !tbaa !6
  %180 = load i32, ptr %158, align 4, !tbaa !28
  %181 = and i32 %180, 2097408
  %182 = icmp eq i32 %181, 256
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load ptr, ptr %157, align 8, !tbaa !32
  %185 = getelementptr inbounds %struct.xpviv, ptr %184, i64 0, i32 4
  %186 = load i64, ptr %185, align 8, !tbaa !21
  br label %190

187:                                              ; preds = %179
  %188 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %157, i32 noundef 2) #14
  br label %190

189:                                              ; preds = %458, %130
  unreachable

190:                                              ; preds = %183, %187, %135
  %191 = phi i64 [ %137, %135 ], [ %186, %183 ], [ %188, %187 ]
  %192 = phi ptr [ %136, %135 ], [ %156, %183 ], [ %156, %187 ]
  %193 = and i64 %10, 64
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = tail call ptr @Perl_av_fetch(ptr noundef %132, i64 noundef %191, i32 noundef 1) #14
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %196, align 8, !tbaa !6
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %669

201:                                              ; preds = %198, %195
  %202 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %191) #14
  br label %673

203:                                              ; preds = %190
  %204 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %205 = getelementptr inbounds %struct.op, ptr %204, i64 0, i32 6
  %206 = load i8, ptr %205, align 1, !tbaa !24
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 48
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %236, label %210

210:                                              ; preds = %203
  %211 = and i32 %207, 16
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = tail call zeroext i1 @Perl_av_exists(ptr noundef %132, i64 noundef %191) #14
  %215 = select i1 %214, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %329

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.op, ptr %204, i64 0, i32 5
  %218 = load i8, ptr %217, align 2, !tbaa !37
  %219 = and i8 %218, 3
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %216
  %222 = zext nneg i8 %219 to i32
  br label %225

223:                                              ; preds = %216
  %224 = tail call i32 @Perl_block_gimme() #14
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = icmp eq i32 %226, 1
  %228 = select i1 %227, i32 4, i32 0
  %229 = tail call ptr @Perl_av_delete(ptr noundef %132, i64 noundef %191, i32 noundef %228) #14
  br i1 %227, label %230, label %233

230:                                              ; preds = %225
  %231 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %232 = load ptr, ptr %231, align 8, !tbaa !14
  br label %673

233:                                              ; preds = %225
  %234 = icmp eq ptr %229, null
  %235 = select i1 %234, ptr @PL_sv_undef, ptr %229
  br label %329

236:                                              ; preds = %203
  %237 = getelementptr inbounds %struct.op, ptr %204, i64 0, i32 5
  %238 = load i8, ptr %237, align 2, !tbaa !37
  %239 = and i8 %238, 32
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %236
  %242 = and i32 %207, 8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %241
  %245 = tail call i32 @Perl_is_lvalue_sub() #14
  %246 = icmp ne i32 %245, 0
  %247 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %248 = getelementptr inbounds %struct.op, ptr %247, i64 0, i32 6
  %249 = load i8, ptr %248, align 1, !tbaa !24
  br label %250

250:                                              ; preds = %241, %244, %236
  %251 = phi i8 [ %206, %236 ], [ %206, %241 ], [ %249, %244 ]
  %252 = phi i1 [ true, %236 ], [ false, %241 ], [ %246, %244 ]
  %253 = and i8 %251, 64
  %254 = icmp sgt i8 %251, -1
  br i1 %254, label %285, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.av, ptr %132, i64 0, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !50
  %258 = and i32 %257, 8388608
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %283, label %260

260:                                              ; preds = %255
  %261 = tail call ptr @Perl_mg_find(ptr noundef nonnull %132, i32 noundef 80) #14
  %262 = icmp eq ptr %261, null
  br i1 %262, label %283, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.magic, ptr %261, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !113
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = tail call ptr @Perl_newRV(ptr noundef nonnull %132) #14
  %269 = tail call ptr @Perl_sv_2mortal(ptr noundef %268) #14
  br label %270

270:                                              ; preds = %263, %267
  %271 = phi ptr [ %269, %267 ], [ %265, %263 ]
  %272 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !21
  %274 = load ptr, ptr %273, align 8, !tbaa !32
  %275 = load ptr, ptr %274, align 8, !tbaa !53
  %276 = icmp eq ptr %275, null
  br i1 %276, label %285, label %277

277:                                              ; preds = %270
  %278 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %275, ptr noundef nonnull @.str.24, i32 noundef 1) #14
  %279 = icmp eq ptr %278, null
  br i1 %279, label %285, label %280

280:                                              ; preds = %277
  %281 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %275, ptr noundef nonnull @.str.25, i32 noundef 1) #14
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %280, %260, %255
  %284 = tail call zeroext i1 @Perl_av_exists(ptr noundef nonnull %132, i64 noundef %191) #14
  br label %285

285:                                              ; preds = %270, %277, %280, %283, %250
  %286 = phi i1 [ true, %250 ], [ %284, %283 ], [ true, %280 ], [ true, %277 ], [ true, %270 ]
  %287 = icmp eq i8 %253, 0
  %288 = and i1 %252, %287
  %289 = zext i1 %288 to i32
  %290 = tail call ptr @Perl_av_fetch(ptr noundef %132, i64 noundef %191, i32 noundef %289) #14
  %291 = icmp eq ptr %290, null
  br i1 %252, label %292, label %311

292:                                              ; preds = %285
  br i1 %291, label %296, label %293

293:                                              ; preds = %292
  %294 = load ptr, ptr %290, align 8, !tbaa !6
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %306

296:                                              ; preds = %293, %292
  br i1 %287, label %327, label %297

297:                                              ; preds = %296
  %298 = tail call fastcc i64 @S_av_top_index(ptr noundef %132) #15
  %299 = icmp slt i64 %191, 0
  %300 = add nsw i64 %298, %191
  %301 = icmp sgt i64 %300, -1
  %302 = select i1 %299, i1 %301, i1 false
  %303 = select i1 %302, i64 %300, i64 %191
  %304 = tail call ptr @Perl_newSVavdefelem(ptr noundef %132, i64 noundef %303, i1 noundef zeroext true) #14
  %305 = tail call ptr @Perl_sv_2mortal(ptr noundef %304) #14
  br label %329

306:                                              ; preds = %293
  br i1 %254, label %329, label %307

307:                                              ; preds = %306
  br i1 %286, label %308, label %310

308:                                              ; preds = %307
  tail call void @Perl_save_aelem_flags(ptr noundef %132, i64 noundef %191, ptr noundef nonnull %290, i32 noundef 1) #14
  %309 = load ptr, ptr %290, align 8, !tbaa !6
  br label %329

310:                                              ; preds = %307
  tail call void @Perl_save_adelete(ptr noundef %132, i64 noundef %191) #14
  br label %329

311:                                              ; preds = %285
  br i1 %291, label %314, label %312

312:                                              ; preds = %311
  %313 = load ptr, ptr %290, align 8, !tbaa !6
  br label %314

314:                                              ; preds = %311, %312
  %315 = phi ptr [ %313, %312 ], [ @PL_sv_undef, %311 ]
  %316 = getelementptr inbounds %struct.av, ptr %132, i64 0, i32 2
  %317 = load i32, ptr %316, align 4, !tbaa !50
  %318 = and i32 %317, 8388608
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %329, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.sv, ptr %315, i64 0, i32 2
  %322 = load i32, ptr %321, align 4, !tbaa !28
  %323 = and i32 %322, 2097152
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %320
  %326 = tail call i32 @Perl_mg_get(ptr noundef nonnull %315) #14
  br label %329

327:                                              ; preds = %296
  %328 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %191) #14
  br label %673

329:                                              ; preds = %458, %130, %606, %641, %648, %634, %665, %660, %654, %508, %529, %597, %306, %310, %308, %325, %320, %314, %213, %233, %297
  %330 = phi ptr [ %305, %297 ], [ %235, %233 ], [ %215, %213 ], [ %315, %314 ], [ %315, %320 ], [ %315, %325 ], [ %294, %306 ], [ %294, %310 ], [ %309, %308 ], [ %598, %597 ], [ %531, %529 ], [ %511, %508 ], [ %655, %654 ], [ %655, %660 ], [ %655, %665 ], [ %592, %606 ], [ %592, %648 ], [ %647, %641 ], [ %592, %634 ], [ %460, %458 ], [ %132, %130 ]
  %331 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %332 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %333 = ptrtoint ptr %332 to i64
  %334 = ptrtoint ptr %331 to i64
  %335 = sub i64 %333, %334
  %336 = icmp slt i64 %335, 8
  br i1 %336, label %337, label %339

337:                                              ; preds = %329
  %338 = tail call ptr @Perl_stack_grow(ptr noundef %331, ptr noundef %331, i64 noundef 1) #14
  br label %339

339:                                              ; preds = %329, %337
  %340 = phi ptr [ %338, %337 ], [ %331, %329 ]
  %341 = getelementptr inbounds ptr, ptr %340, i64 1
  store ptr %330, ptr %341, align 8, !tbaa !6
  store ptr %341, ptr @PL_stack_sp, align 8, !tbaa !6
  %342 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %343 = load ptr, ptr %342, align 8, !tbaa !14
  br label %673

344:                                              ; preds = %9
  %345 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %346 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %347 = load i64, ptr %346, align 8, !tbaa !21
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  br label %454

349:                                              ; preds = %9
  %350 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !21
  %352 = getelementptr inbounds %struct.gv, ptr %351, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !21
  %354 = getelementptr inbounds %struct.gp, ptr %353, i64 0, i32 5
  %355 = load ptr, ptr %354, align 8, !tbaa !70
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %458

357:                                              ; preds = %349
  %358 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %351, i32 noundef 12) #14
  %359 = getelementptr inbounds %struct.gv, ptr %358, i64 0, i32 3
  %360 = load ptr, ptr %359, align 8, !tbaa !21
  %361 = getelementptr inbounds %struct.gp, ptr %360, i64 0, i32 5
  br label %454

362:                                              ; preds = %9
  %363 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %364 = getelementptr inbounds ptr, ptr %363, i64 -1
  %365 = load ptr, ptr %363, align 8, !tbaa !6
  store ptr %364, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %390

366:                                              ; preds = %9
  %367 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !21
  %369 = getelementptr inbounds %struct.gv, ptr %368, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !21
  %371 = load ptr, ptr %370, align 8, !tbaa !6
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %386

373:                                              ; preds = %366
  %374 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %368, i32 noundef 0) #14
  %375 = getelementptr inbounds %struct.gv, ptr %374, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !21
  br label %382

377:                                              ; preds = %9
  %378 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %379 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %380 = load i64, ptr %379, align 8, !tbaa !21
  %381 = getelementptr inbounds ptr, ptr %378, i64 %380
  br label %382

382:                                              ; preds = %377, %373
  %383 = phi ptr [ %376, %373 ], [ %381, %377 ]
  %384 = phi ptr [ %367, %373 ], [ %379, %377 ]
  %385 = load ptr, ptr %383, align 8, !tbaa !6
  br label %386

386:                                              ; preds = %9, %382, %366
  %387 = phi ptr [ %367, %366 ], [ %384, %382 ], [ %11, %9 ]
  %388 = phi ptr [ %371, %366 ], [ %385, %382 ], [ %8, %9 ]
  %389 = tail call ptr @Perl_vivify_ref(ptr noundef %388, i32 noundef 32) #15
  br label %390

390:                                              ; preds = %362, %386
  %391 = phi ptr [ %387, %386 ], [ %11, %362 ]
  %392 = phi ptr [ %389, %386 ], [ %365, %362 ]
  %393 = getelementptr inbounds %struct.sv, ptr %392, i64 0, i32 2
  %394 = load i32, ptr %393, align 4, !tbaa !28
  %395 = and i32 %394, 2097152
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %390
  %398 = tail call i32 @Perl_mg_get(ptr noundef nonnull %392) #14
  %399 = load i32, ptr %393, align 4, !tbaa !28
  br label %400

400:                                              ; preds = %390, %397
  %401 = phi i32 [ %394, %390 ], [ %399, %397 ]
  %402 = and i32 %401, 2048
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %431, label %404

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.sv, ptr %392, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !21
  %407 = getelementptr inbounds %struct.sv, ptr %406, i64 0, i32 2
  %408 = load i32, ptr %407, align 4, !tbaa !28
  %409 = and i32 %408, 1048576
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %424, label %411

411:                                              ; preds = %404
  %412 = load ptr, ptr %406, align 8, !tbaa !32
  %413 = load ptr, ptr %412, align 8, !tbaa !53
  %414 = getelementptr inbounds %struct.hv, ptr %413, i64 0, i32 2
  %415 = load i32, ptr %414, align 4, !tbaa !55
  %416 = and i32 %415, 268435456
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %411
  %419 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %392, i32 noundef 3) #14
  %420 = getelementptr inbounds %struct.sv, ptr %419, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !21
  %422 = getelementptr inbounds %struct.sv, ptr %421, i64 0, i32 2
  %423 = load i32, ptr %422, align 4, !tbaa !28
  br label %424

424:                                              ; preds = %404, %411, %418
  %425 = phi i32 [ %423, %418 ], [ %408, %411 ], [ %408, %404 ]
  %426 = phi ptr [ %421, %418 ], [ %406, %411 ], [ %406, %404 ]
  %427 = and i32 %425, 255
  %428 = icmp eq i32 %427, 12
  br i1 %428, label %458, label %429

429:                                              ; preds = %424
  %430 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.30) #14
  br label %673

431:                                              ; preds = %400
  %432 = and i32 %401, 255
  %433 = icmp eq i32 %432, 12
  br i1 %433, label %458, label %434

434:                                              ; preds = %431
  %435 = and i32 %401, 49152
  %436 = icmp eq i32 %435, 32768
  %437 = add nsw i32 %432, -9
  %438 = icmp ult i32 %437, 2
  %439 = and i1 %436, %438
  br i1 %439, label %442, label %440

440:                                              ; preds = %434
  %441 = tail call ptr @S_softref2xv_lite(ptr noundef nonnull %392, ptr noundef nonnull @.str.31, i32 noundef 12) #15
  br label %442

442:                                              ; preds = %434, %440
  %443 = phi ptr [ %441, %440 ], [ %392, %434 ]
  %444 = getelementptr inbounds %struct.gv, ptr %443, i64 0, i32 3
  %445 = load ptr, ptr %444, align 8, !tbaa !21
  %446 = getelementptr inbounds %struct.gp, ptr %445, i64 0, i32 5
  %447 = load ptr, ptr %446, align 8, !tbaa !70
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %458

449:                                              ; preds = %442
  %450 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %443, i32 noundef 12) #14
  %451 = getelementptr inbounds %struct.gv, ptr %450, i64 0, i32 3
  %452 = load ptr, ptr %451, align 8, !tbaa !21
  %453 = getelementptr inbounds %struct.gp, ptr %452, i64 0, i32 5
  br label %454

454:                                              ; preds = %344, %357, %449
  %455 = phi ptr [ %453, %449 ], [ %361, %357 ], [ %348, %344 ]
  %456 = phi ptr [ %391, %449 ], [ %350, %357 ], [ %346, %344 ]
  %457 = load ptr, ptr %455, align 8, !tbaa !6
  br label %458

458:                                              ; preds = %454, %442, %349, %424, %431
  %459 = phi ptr [ %391, %424 ], [ %391, %431 ], [ %350, %349 ], [ %391, %442 ], [ %456, %454 ]
  %460 = phi ptr [ %426, %424 ], [ %392, %431 ], [ %355, %349 ], [ %447, %442 ], [ %457, %454 ]
  %461 = lshr i64 %10, 4
  %462 = and i64 %461, 3
  switch i64 %462, label %189 [
    i64 0, label %329
    i64 1, label %463
    i64 2, label %465
    i64 3, label %470
  ]

463:                                              ; preds = %458
  %464 = getelementptr inbounds %union.UNOP_AUX_item, ptr %459, i64 1
  br label %481

465:                                              ; preds = %458
  %466 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %467 = getelementptr inbounds %union.UNOP_AUX_item, ptr %459, i64 1
  %468 = load i64, ptr %467, align 8, !tbaa !21
  %469 = getelementptr inbounds ptr, ptr %466, i64 %468
  br label %481

470:                                              ; preds = %458
  %471 = getelementptr inbounds %union.UNOP_AUX_item, ptr %459, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !21
  %473 = getelementptr inbounds %struct.gv, ptr %472, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !21
  %475 = load ptr, ptr %474, align 8, !tbaa !63
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %481

477:                                              ; preds = %470
  %478 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %472, i32 noundef 0) #14
  %479 = getelementptr inbounds %struct.gv, ptr %478, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !21
  br label %481

481:                                              ; preds = %477, %470, %465, %463
  %482 = phi ptr [ %469, %465 ], [ %464, %463 ], [ %480, %477 ], [ %474, %470 ]
  %483 = phi ptr [ %467, %465 ], [ %464, %463 ], [ %471, %477 ], [ %471, %470 ]
  %484 = load ptr, ptr %482, align 8, !tbaa !21
  store ptr %483, ptr @PL_multideref_pc, align 8, !tbaa !6
  %485 = and i64 %10, 64
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %481
  %488 = tail call ptr @Perl_hv_common(ptr noundef %460, ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #14
  %489 = icmp eq ptr %488, null
  br i1 %489, label %496, label %490

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.he, ptr %488, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !21
  %493 = icmp eq ptr %492, null
  %494 = icmp eq ptr %492, @PL_sv_undef
  %495 = or i1 %493, %494
  br i1 %495, label %496, label %669

496:                                              ; preds = %490, %487
  %497 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %484) #14
  br label %673

498:                                              ; preds = %481
  %499 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %500 = getelementptr inbounds %struct.op, ptr %499, i64 0, i32 6
  %501 = load i8, ptr %500, align 1, !tbaa !24
  %502 = zext i8 %501 to i32
  %503 = and i32 %502, 48
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %532, label %505

505:                                              ; preds = %498
  %506 = and i32 %502, 16
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %512, label %508

508:                                              ; preds = %505
  %509 = tail call ptr @Perl_hv_common(ptr noundef %460, ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %510 = icmp eq ptr %509, null
  %511 = select i1 %510, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %329

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.op, ptr %499, i64 0, i32 5
  %514 = load i8, ptr %513, align 2, !tbaa !37
  %515 = and i8 %514, 3
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %512
  %518 = zext nneg i8 %515 to i32
  br label %521

519:                                              ; preds = %512
  %520 = tail call i32 @Perl_block_gimme() #14
  br label %521

521:                                              ; preds = %519, %517
  %522 = phi i32 [ %518, %517 ], [ %520, %519 ]
  %523 = icmp eq i32 %522, 1
  %524 = select i1 %523, i32 68, i32 64
  %525 = tail call ptr @Perl_hv_common(ptr noundef %460, ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %524, ptr noundef null, i32 noundef 0) #14
  br i1 %523, label %526, label %529

526:                                              ; preds = %521
  %527 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %528 = load ptr, ptr %527, align 8, !tbaa !14
  br label %673

529:                                              ; preds = %521
  %530 = icmp eq ptr %525, null
  %531 = select i1 %530, ptr @PL_sv_undef, ptr %525
  br label %329

532:                                              ; preds = %498
  %533 = getelementptr inbounds %struct.op, ptr %499, i64 0, i32 5
  %534 = load i8, ptr %533, align 2, !tbaa !37
  %535 = and i8 %534, 32
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %546

537:                                              ; preds = %532
  %538 = and i32 %502, 8
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %546, label %540

540:                                              ; preds = %537
  %541 = tail call i32 @Perl_is_lvalue_sub() #14
  %542 = icmp ne i32 %541, 0
  %543 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %544 = getelementptr inbounds %struct.op, ptr %543, i64 0, i32 6
  %545 = load i8, ptr %544, align 1, !tbaa !24
  br label %546

546:                                              ; preds = %537, %540, %532
  %547 = phi i8 [ %501, %532 ], [ %501, %537 ], [ %545, %540 ]
  %548 = phi i1 [ true, %532 ], [ false, %537 ], [ %542, %540 ]
  %549 = and i8 %547, 64
  %550 = icmp sgt i8 %547, -1
  br i1 %550, label %582, label %551

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.hv, ptr %460, i64 0, i32 2
  %553 = load i32, ptr %552, align 4, !tbaa !55
  %554 = and i32 %553, 8388608
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %579, label %556

556:                                              ; preds = %551
  %557 = tail call ptr @Perl_mg_find(ptr noundef nonnull %460, i32 noundef 80) #14
  %558 = icmp eq ptr %557, null
  br i1 %558, label %579, label %559

559:                                              ; preds = %556
  %560 = getelementptr inbounds %struct.magic, ptr %557, i64 0, i32 6
  %561 = load ptr, ptr %560, align 8, !tbaa !113
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %566

563:                                              ; preds = %559
  %564 = tail call ptr @Perl_newRV(ptr noundef nonnull %460) #14
  %565 = tail call ptr @Perl_sv_2mortal(ptr noundef %564) #14
  br label %566

566:                                              ; preds = %559, %563
  %567 = phi ptr [ %565, %563 ], [ %561, %559 ]
  %568 = getelementptr inbounds %struct.sv, ptr %567, i64 0, i32 3
  %569 = load ptr, ptr %568, align 8, !tbaa !21
  %570 = load ptr, ptr %569, align 8, !tbaa !32
  %571 = load ptr, ptr %570, align 8, !tbaa !53
  %572 = icmp eq ptr %571, null
  br i1 %572, label %582, label %573

573:                                              ; preds = %566
  %574 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %571, ptr noundef nonnull @.str.24, i32 noundef 1) #14
  %575 = icmp eq ptr %574, null
  br i1 %575, label %582, label %576

576:                                              ; preds = %573
  %577 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %571, ptr noundef nonnull @.str.25, i32 noundef 1) #14
  %578 = icmp eq ptr %577, null
  br i1 %578, label %582, label %579

579:                                              ; preds = %576, %556, %551
  %580 = tail call ptr @Perl_hv_common(ptr noundef nonnull %460, ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %581 = icmp ne ptr %580, null
  br label %582

582:                                              ; preds = %566, %573, %576, %579, %546
  %583 = phi i1 [ true, %546 ], [ %581, %579 ], [ true, %576 ], [ true, %573 ], [ true, %566 ]
  %584 = icmp eq i8 %549, 0
  %585 = and i1 %548, %584
  %586 = select i1 %585, i32 16, i32 0
  %587 = tail call ptr @Perl_hv_common(ptr noundef %460, ptr noundef %484, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %586, ptr noundef null, i32 noundef 0) #14
  %588 = icmp eq ptr %587, null
  %589 = getelementptr inbounds %struct.he, ptr %587, i64 0, i32 2
  br i1 %548, label %590, label %649

590:                                              ; preds = %582
  br i1 %588, label %596, label %591

591:                                              ; preds = %590
  %592 = load ptr, ptr %589, align 8, !tbaa !6
  %593 = icmp eq ptr %592, null
  %594 = icmp eq ptr %592, @PL_sv_undef
  %595 = or i1 %593, %594
  br i1 %595, label %596, label %606

596:                                              ; preds = %591, %590
  br i1 %584, label %667, label %597

597:                                              ; preds = %596
  %598 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_upgrade(ptr noundef %598, i32 noundef 10) #14
  %599 = load ptr, ptr %598, align 8, !tbaa !32
  %600 = getelementptr inbounds %struct.xpvlv, ptr %599, i64 0, i32 9
  store i8 121, ptr %600, align 8, !tbaa !114
  %601 = tail call ptr @Perl_newSVsv(ptr noundef %484) #14
  tail call void @Perl_sv_magic(ptr noundef nonnull %598, ptr noundef %601, i32 noundef 121, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %601) #15
  %602 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %460) #15
  %603 = load ptr, ptr %598, align 8, !tbaa !32
  %604 = getelementptr inbounds %struct.xpvlv, ptr %603, i64 0, i32 8
  store ptr %460, ptr %604, align 8, !tbaa !116
  %605 = getelementptr inbounds %struct.xpvlv, ptr %603, i64 0, i32 7
  store i64 1, ptr %605, align 8, !tbaa !117
  br label %329

606:                                              ; preds = %591
  br i1 %550, label %329, label %607

607:                                              ; preds = %606
  %608 = getelementptr inbounds %struct.hv, ptr %460, i64 0, i32 2
  %609 = load i32, ptr %608, align 4, !tbaa !55
  %610 = and i32 %609, 33554432
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %640, label %612

612:                                              ; preds = %607
  %613 = getelementptr inbounds %struct.hv, ptr %460, i64 0, i32 3
  %614 = load ptr, ptr %613, align 8, !tbaa !21
  %615 = load ptr, ptr %460, align 8, !tbaa !118
  %616 = getelementptr inbounds %struct.xpvhv, ptr %615, i64 0, i32 3
  %617 = load i64, ptr %616, align 8, !tbaa !119
  %618 = getelementptr ptr, ptr %614, i64 %617
  %619 = getelementptr ptr, ptr %618, i64 1
  %620 = load ptr, ptr %619, align 8, !tbaa !21
  %621 = icmp eq ptr %620, null
  br i1 %621, label %640, label %622

622:                                              ; preds = %612
  %623 = getelementptr i8, ptr %618, i64 36
  %624 = load i32, ptr %623, align 4, !tbaa !120
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %629, label %626

626:                                              ; preds = %622
  %627 = load ptr, ptr %620, align 8, !tbaa !6
  %628 = icmp eq ptr %627, null
  br i1 %628, label %640, label %629

629:                                              ; preds = %622, %626
  %630 = getelementptr inbounds %struct.sv, ptr %592, i64 0, i32 2
  %631 = load i32, ptr %630, align 4, !tbaa !28
  %632 = and i32 %631, 255
  %633 = icmp eq i32 %632, 9
  br i1 %633, label %634, label %640

634:                                              ; preds = %629
  %635 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %636 = getelementptr inbounds %struct.op, ptr %635, i64 0, i32 5
  %637 = load i8, ptr %636, align 2, !tbaa !37
  %638 = icmp sgt i8 %637, -1
  %639 = zext i1 %638 to i32
  tail call void @Perl_save_gp(ptr noundef nonnull %592, i32 noundef %639) #14
  br label %329

640:                                              ; preds = %607, %612, %626, %629
  br i1 %583, label %641, label %648

641:                                              ; preds = %640
  %642 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %643 = getelementptr inbounds %struct.op, ptr %642, i64 0, i32 5
  %644 = load i8, ptr %643, align 2, !tbaa !37
  %645 = icmp sgt i8 %644, -1
  %646 = zext i1 %645 to i32
  tail call void @Perl_save_helem_flags(ptr noundef nonnull %460, ptr noundef %484, ptr noundef nonnull %589, i32 noundef %646) #14
  %647 = load ptr, ptr %589, align 8, !tbaa !6
  br label %329

648:                                              ; preds = %640
  tail call void @Perl_save_hdelete(ptr noundef nonnull %460, ptr noundef %484) #14
  br label %329

649:                                              ; preds = %582
  br i1 %588, label %654, label %650

650:                                              ; preds = %649
  %651 = load ptr, ptr %589, align 8, !tbaa !6
  %652 = icmp eq ptr %651, null
  %653 = select i1 %652, ptr @PL_sv_undef, ptr %651
  br label %654

654:                                              ; preds = %650, %649
  %655 = phi ptr [ @PL_sv_undef, %649 ], [ %653, %650 ]
  %656 = getelementptr inbounds %struct.hv, ptr %460, i64 0, i32 2
  %657 = load i32, ptr %656, align 4, !tbaa !55
  %658 = and i32 %657, 8388608
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %329, label %660

660:                                              ; preds = %654
  %661 = getelementptr inbounds %struct.sv, ptr %655, i64 0, i32 2
  %662 = load i32, ptr %661, align 4, !tbaa !28
  %663 = and i32 %662, 2097152
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %329, label %665

665:                                              ; preds = %660
  %666 = tail call i32 @Perl_mg_get(ptr noundef nonnull %655) #14
  br label %329

667:                                              ; preds = %596
  %668 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %484) #14
  br label %673

669:                                              ; preds = %9, %490, %198
  %670 = phi ptr [ %192, %198 ], [ %483, %490 ], [ %11, %9 ]
  %671 = phi ptr [ %199, %198 ], [ %492, %490 ], [ %8, %9 ]
  %672 = lshr i64 %10, 7
  br label %5

673:                                              ; preds = %526, %496, %667, %230, %201, %327, %429, %339, %101
  %674 = phi ptr [ %430, %429 ], [ %343, %339 ], [ %102, %101 ], [ %232, %230 ], [ %202, %201 ], [ %328, %327 ], [ %528, %526 ], [ %497, %496 ], [ %668, %667 ]
  ret ptr %674
}

; Function Attrs: optsize
declare zeroext i1 @Perl_av_exists(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVavdefelem(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_aelem_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_adelete(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_iter() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %3 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #14
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %9, %8 ], [ %2, %0 ]
  %12 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !20
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.context, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8
  %20 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !124
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !30
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  br label %37

37:                                               ; preds = %29, %23, %10, %34
  %38 = phi ptr [ %36, %34 ], [ null, %10 ], [ %21, %23 ], [ %20, %29 ]
  %39 = load i8, ptr %18, align 8, !tbaa !21
  %40 = and i8 %39, 15
  switch i8 %40, label %235 [
    i8 6, label %41
    i8 7, label %95
    i8 4, label %124
  ]

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  store i64 0, ptr %1, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !28
  %48 = and i32 %47, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load ptr, ptr %45, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !33
  store i64 %53, ptr %1, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  br label %58

56:                                               ; preds = %41
  %57 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %45, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !28
  %62 = and i32 %61, 768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load ptr, ptr %43, align 8, !tbaa !32
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !33
  %68 = load i64, ptr %1, align 8, !tbaa !22
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %38, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !38
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = and i32 %77, 14680064
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %71, ptr noundef nonnull %43, i32 noundef 1538) #14
  br label %83

81:                                               ; preds = %70, %75
  %82 = call ptr @Perl_newSVsv(ptr noundef nonnull %43) #14
  store ptr %82, ptr %38, align 8, !tbaa !6
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %71) #15
  br label %83

83:                                               ; preds = %81, %80
  %84 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !21
  %86 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(1) %59) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void @Perl_sv_setiv(ptr noundef nonnull %43, i64 noundef 0) #14
  br label %90

89:                                               ; preds = %83
  call void @Perl_sv_inc(ptr noundef nonnull %43) #14
  br label %90

90:                                               ; preds = %89, %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %238

91:                                               ; preds = %64, %58
  %92 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %92, align 8, !tbaa !6
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !6
  %93 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %94 = load ptr, ptr %93, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %242

95:                                               ; preds = %37
  %96 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !21
  %98 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !21
  %100 = icmp sgt i64 %97, %99
  br i1 %100, label %120, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %38, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !38
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !28
  %109 = and i32 %108, 14680064
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  tail call void @Perl_sv_setiv(ptr noundef nonnull %102, i64 noundef %97) #14
  br label %114

112:                                              ; preds = %101, %106
  %113 = tail call ptr @Perl_newSViv(i64 noundef %97) #14
  store ptr %113, ptr %38, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %102) #15
  br label %114

114:                                              ; preds = %112, %111
  %115 = icmp eq i64 %97, 9223372036854775807
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  store i64 -9223372036854775808, ptr %98, align 8, !tbaa !21
  br label %238

117:                                              ; preds = %114
  %118 = load i64, ptr %96, align 8, !tbaa !21
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %96, align 8, !tbaa !21
  br label %238

120:                                              ; preds = %95
  %121 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %121, align 8, !tbaa !6
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !6
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  br label %242

124:                                              ; preds = %37
  %125 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !21
  %127 = icmp eq ptr %126, null
  %128 = load ptr, ptr @PL_curstack, align 8
  %129 = select i1 %127, ptr %128, ptr %126
  %130 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.op, ptr %130, i64 0, i32 6
  %132 = load i8, ptr %131, align 1, !tbaa !24
  %133 = and i8 %132, 4
  %134 = icmp eq i8 %133, 0
  %135 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %136 = load i64, ptr %135, align 8, !tbaa !21
  br i1 %134, label %149, label %137

137:                                              ; preds = %124
  %138 = add nsw i64 %136, -1
  store i64 %138, ptr %135, align 8, !tbaa !21
  br i1 %127, label %139, label %142

139:                                              ; preds = %137
  %140 = load i32, ptr %19, align 8, !tbaa !21
  %141 = sext i32 %140 to i64
  br label %142

142:                                              ; preds = %137, %139
  %143 = phi i64 [ %141, %139 ], [ -1, %137 ]
  %144 = icmp sgt i64 %138, %143
  br i1 %144, label %174, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %146, align 8, !tbaa !6
  store ptr %146, ptr @PL_stack_sp, align 8, !tbaa !6
  %147 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %148 = load ptr, ptr %147, align 8, !tbaa !14
  br label %242

149:                                              ; preds = %124
  %150 = add nsw i64 %136, 1
  store i64 %150, ptr %135, align 8, !tbaa !21
  br i1 %127, label %151, label %155

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !21
  %154 = sext i32 %153 to i64
  br label %167

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !28
  %158 = and i32 %157, 8388608
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @Perl_mg_size(ptr noundef nonnull %126) #14
  %162 = sext i32 %161 to i64
  br label %167

163:                                              ; preds = %155
  %164 = load ptr, ptr %126, align 8, !tbaa !46
  %165 = getelementptr inbounds %struct.xpvav, ptr %164, i64 0, i32 2
  %166 = load i64, ptr %165, align 8, !tbaa !48
  br label %167

167:                                              ; preds = %160, %163, %151
  %168 = phi i64 [ %154, %151 ], [ %162, %160 ], [ %166, %163 ]
  %169 = icmp slt i64 %136, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %171, align 8, !tbaa !6
  store ptr %171, ptr @PL_stack_sp, align 8, !tbaa !6
  %172 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %173 = load ptr, ptr %172, align 8, !tbaa !14
  br label %242

174:                                              ; preds = %167, %142
  %175 = phi i64 [ %138, %142 ], [ %150, %167 ]
  %176 = getelementptr inbounds %struct.av, ptr %129, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !50
  %178 = and i32 %177, -2132803584
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %174
  %181 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %129, i64 noundef %175, i32 noundef 0) #14
  %182 = icmp eq ptr %181, null
  %183 = load i8, ptr %18, align 8, !tbaa !21
  br i1 %182, label %195, label %189

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.av, ptr %129, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !21
  %187 = getelementptr inbounds ptr, ptr %186, i64 %175
  %188 = load i8, ptr %18, align 8, !tbaa !21
  br label %189

189:                                              ; preds = %180, %184
  %190 = phi i8 [ %188, %184 ], [ %183, %180 ]
  %191 = phi ptr [ %187, %184 ], [ %181, %180 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !6
  %193 = and i8 %190, 32
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %210, label %198

195:                                              ; preds = %180
  %196 = and i8 %183, 32
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %229, label %198

198:                                              ; preds = %195, %189
  %199 = phi ptr [ null, %195 ], [ %192, %189 ]
  %200 = load ptr, ptr %38, align 8, !tbaa !6
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %238, label %202

202:                                              ; preds = %198
  tail call void @Perl_sv_setsv_flags(ptr noundef %200, ptr noundef %199, i32 noundef 1538) #14
  %203 = load ptr, ptr %38, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct.sv, ptr %203, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !28
  %206 = and i32 %205, 4194304
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %238, label %208

208:                                              ; preds = %202
  %209 = tail call i32 @Perl_mg_set(ptr noundef nonnull %203) #14
  br label %238

210:                                              ; preds = %189
  %211 = icmp eq ptr %192, null
  br i1 %211, label %229, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !28
  %215 = icmp eq i32 %214, 255
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  store ptr null, ptr %38, align 8, !tbaa !6
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32) #14
  %217 = load i32, ptr %213, align 4, !tbaa !28
  br label %218

218:                                              ; preds = %212, %216
  %219 = phi i32 [ %214, %212 ], [ %217, %216 ]
  %220 = and i32 %219, 131072
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  %223 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %192) #14
  br label %232

224:                                              ; preds = %218
  %225 = and i32 %219, -655361
  store i32 %225, ptr %213, align 4, !tbaa !28
  %226 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !38
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 8, !tbaa !38
  br label %232

229:                                              ; preds = %195, %210
  br i1 %127, label %232, label %230

230:                                              ; preds = %229
  %231 = tail call ptr @Perl_newSVavdefelem(ptr noundef nonnull %126, i64 noundef %175, i1 noundef zeroext false) #14
  br label %232

232:                                              ; preds = %229, %230, %222, %224
  %233 = phi ptr [ %223, %222 ], [ %192, %224 ], [ %231, %230 ], [ @PL_sv_undef, %229 ]
  %234 = load ptr, ptr %38, align 8, !tbaa !6
  store ptr %233, ptr %38, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %234) #15
  br label %238

235:                                              ; preds = %37
  %236 = zext nneg i8 %40 to i32
  %237 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33, i32 noundef %236) #14
  br label %242

238:                                              ; preds = %198, %202, %208, %232, %117, %116, %90
  %239 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_yes, ptr %239, align 8, !tbaa !6
  store ptr %239, ptr @PL_stack_sp, align 8, !tbaa !6
  %240 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %241 = load ptr, ptr %240, align 8, !tbaa !14
  br label %242

242:                                              ; preds = %145, %170, %120, %91, %238, %235
  %243 = phi ptr [ %237, %235 ], [ %241, %238 ], [ %123, %120 ], [ %94, %91 ], [ %148, %145 ], [ %173, %170 ]
  ret ptr %243
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !38
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_subst() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %5 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %8 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %3, i64 -1
  %14 = load ptr, ptr %3, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %0, %12
  %16 = phi ptr [ %13, %12 ], [ %3, %0 ]
  %17 = phi ptr [ %14, %12 ], [ null, %0 ]
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !6
  tail call void %21() #14
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %4, %15 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 5
  %26 = load i8, ptr %25, align 2, !tbaa !37
  %27 = and i8 %26, 64
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds ptr, ptr %16, i64 -1
  %31 = load ptr, ptr %16, align 8, !tbaa !6
  br label %60

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !27
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %38 = getelementptr inbounds ptr, ptr %37, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  br label %60

40:                                               ; preds = %32
  %41 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.gv, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %41, i32 noundef 0) #14
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %40, %46
  %52 = phi ptr [ %50, %46 ], [ %44, %40 ]
  %53 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %16 to i64
  %56 = sub i64 %54, %55
  %57 = icmp slt i64 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #14
  br label %60

60:                                               ; preds = %36, %51, %58, %29
  %61 = phi ptr [ %31, %29 ], [ %39, %36 ], [ %52, %58 ], [ %52, %51 ]
  %62 = phi ptr [ %30, %29 ], [ %16, %36 ], [ %59, %58 ], [ %16, %51 ]
  %63 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @Perl_mg_get(ptr noundef nonnull %61) #14
  %69 = load i32, ptr %63, align 4, !tbaa !28
  br label %70

70:                                               ; preds = %60, %67
  %71 = phi i32 [ %64, %60 ], [ %69, %67 ]
  %72 = and i32 %71, 268435456
  %73 = icmp ne i32 %72, 0
  %74 = load i32, ptr %8, align 8, !tbaa !93
  %75 = and i32 %74, 134217728
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = and i32 %71, 134283264
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = and i32 %71, 49407
  %82 = icmp eq i32 %81, 32777
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = and i32 %71, 255
  %85 = icmp ugt i32 %84, 10
  br i1 %85, label %89, label %91

86:                                               ; preds = %80
  %87 = and i32 %71, 16777216
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %86, %77
  tail call void @Perl_croak_no_modify() #14
  %90 = load i32, ptr %63, align 4, !tbaa !28
  br label %91

91:                                               ; preds = %86, %89, %83, %70
  %92 = phi i32 [ %71, %86 ], [ %90, %89 ], [ %71, %83 ], [ %71, %70 ]
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !6
  %93 = and i32 %92, 2098176
  %94 = icmp eq i32 %93, 1024
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load ptr, ptr %61, align 8, !tbaa !32
  %97 = getelementptr inbounds %struct.xpv, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !33
  store i64 %98, ptr %2, align 8, !tbaa !22
  %99 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !21
  br label %104

101:                                              ; preds = %91
  %102 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %61, ptr noundef nonnull %2, i32 noundef 0) #14
  %103 = load i32, ptr %63, align 4, !tbaa !28
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i32 [ %92, %95 ], [ %103, %101 ]
  %106 = phi ptr [ %100, %95 ], [ %102, %101 ]
  %107 = and i32 %105, 16384
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %105, 255
  %110 = icmp eq i32 %109, 9
  %111 = or i1 %108, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %104
  %113 = and i32 %105, 14680064
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = call ptr @Perl_mg_find(ptr noundef nonnull %61, i32 noundef 86) #14
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115, %104
  br label %119

119:                                              ; preds = %118, %115, %112
  %120 = phi i32 [ 1, %118 ], [ 0, %115 ], [ 0, %112 ]
  %121 = load i32, ptr %8, align 8, !tbaa !93
  %122 = and i32 %121, 16777216
  %123 = icmp eq i32 %122, 0
  %124 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %152, label %126

126:                                              ; preds = %119
  %127 = load i32, ptr %63, align 4, !tbaa !28
  %128 = and i32 %127, 14680064
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %61) #14
  %132 = load i32, ptr %8, align 8, !tbaa !93
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i32 [ %121, %126 ], [ %132, %130 ]
  %135 = phi i1 [ false, %126 ], [ %131, %130 ]
  %136 = zext i1 %135 to i32
  %137 = call fastcc ptr @S_ReANY(ptr noundef %6) #15
  %138 = getelementptr inbounds %struct.regexp, ptr %137, i64 0, i32 7
  %139 = load i32, ptr %138, align 8, !tbaa !91
  %140 = lshr i32 %139, 26
  %141 = and i32 %140, 2
  %142 = or disjoint i32 %141, %136
  %143 = lshr i32 %134, 16
  %144 = and i32 %143, 8
  %145 = or disjoint i32 %142, %144
  %146 = and i32 %134, 134217728
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %123, i1 %147, i1 false
  %149 = select i1 %148, i32 16, i32 0
  %150 = or disjoint i32 %145, %149
  %151 = trunc i32 %150 to i8
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  br label %152

152:                                              ; preds = %133, %119
  %153 = phi i8 [ %151, %133 ], [ 0, %119 ]
  %154 = icmp eq ptr %106, null
  br i1 %154, label %170, label %155

155:                                              ; preds = %152
  %156 = icmp eq ptr %17, null
  %157 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %158 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  br label %159

159:                                              ; preds = %155, %551
  %160 = phi ptr [ %61, %155 ], [ %538, %551 ]
  %161 = phi ptr [ %4, %155 ], [ %218, %551 ]
  %162 = phi ptr [ null, %155 ], [ %526, %551 ]
  %163 = phi i8 [ %153, %155 ], [ %527, %551 ]
  %164 = phi i8 [ 0, %155 ], [ %528, %551 ]
  %165 = phi ptr [ %106, %155 ], [ %552, %551 ]
  %166 = phi ptr [ %6, %155 ], [ %217, %551 ]
  %167 = phi i32 [ %120, %155 ], [ 0, %551 ]
  %168 = getelementptr inbounds %struct.sv, ptr %160, i64 0, i32 2
  %169 = getelementptr inbounds %struct.sv, ptr %160, i64 0, i32 3
  br label %173

170:                                              ; preds = %551, %376, %152
  %171 = phi ptr [ %4, %152 ], [ %218, %376 ], [ %218, %551 ]
  %172 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34, ptr noundef %171, ptr noundef null) #14
  br label %889

173:                                              ; preds = %159, %376
  %174 = phi ptr [ %161, %159 ], [ %218, %376 ]
  %175 = phi ptr [ %162, %159 ], [ %311, %376 ]
  %176 = phi i8 [ %163, %159 ], [ %321, %376 ]
  %177 = phi i8 [ %164, %159 ], [ %310, %376 ]
  %178 = phi ptr [ %165, %159 ], [ %377, %376 ]
  %179 = phi ptr [ %166, %159 ], [ %217, %376 ]
  %180 = phi i32 [ %167, %159 ], [ 0, %376 ]
  %181 = load i64, ptr %2, align 8, !tbaa !22
  %182 = getelementptr inbounds i8, ptr %178, i64 %181
  %183 = load i32, ptr %168, align 4, !tbaa !28
  %184 = and i32 %183, 536870912
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %173
  %187 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %188 = getelementptr inbounds %struct.cop, ptr %187, i64 0, i32 10
  %189 = load i32, ptr %188, align 8, !tbaa !40
  %190 = and i32 %189, 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = call i64 @Perl_utf8_length(ptr noundef nonnull %178, ptr noundef nonnull %182) #14
  br label %194

194:                                              ; preds = %173, %186, %192
  %195 = phi i64 [ %193, %192 ], [ %181, %186 ], [ %181, %173 ]
  %196 = load ptr, ptr %179, align 8, !tbaa !94
  %197 = getelementptr inbounds %struct.xpv, ptr %196, i64 0, i32 2
  %198 = load i64, ptr %197, align 8, !tbaa !33
  %199 = call fastcc ptr @S_ReANY(ptr noundef nonnull %179) #15
  %200 = getelementptr inbounds %struct.regexp, ptr %199, i64 0, i32 24
  %201 = load i16, ptr %200, align 8
  %202 = and i16 %201, 15
  %203 = add nuw nsw i16 %202, 1
  %204 = zext nneg i16 %203 to i64
  %205 = icmp eq i64 %198, %204
  %206 = load ptr, ptr @PL_curpm, align 8
  %207 = icmp ne ptr %206, null
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %216

209:                                              ; preds = %194
  %210 = getelementptr inbounds %struct.regexp, ptr %199, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !92
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.pmop, ptr %206, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !81
  br label %216

216:                                              ; preds = %213, %209, %194
  %217 = phi ptr [ %179, %209 ], [ %215, %213 ], [ %179, %194 ]
  %218 = phi ptr [ %174, %209 ], [ %206, %213 ], [ %174, %194 ]
  %219 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %220 = getelementptr inbounds %struct.regexp, ptr %219, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !83
  %222 = getelementptr inbounds %struct.regexp_engine, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !100
  %224 = call i32 %223(ptr noundef %217, ptr noundef nonnull %178, ptr noundef nonnull %182, ptr noundef nonnull %178, i64 noundef 0, ptr noundef nonnull %160, ptr noundef null, i32 noundef 1) #14
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %216
  %227 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %228 = load i32, ptr %8, align 8, !tbaa !93
  %229 = and i32 %228, 134217728
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, ptr @PL_sv_no, ptr %160
  %232 = getelementptr inbounds ptr, ptr %227, i64 1
  store ptr %231, ptr %232, align 8, !tbaa !6
  %233 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %234 = icmp sgt i32 %233, %7
  br i1 %234, label %235, label %236

235:                                              ; preds = %226
  call void @Perl_leave_scope(i32 noundef %7) #14
  br label %236

236:                                              ; preds = %235, %226
  store ptr %232, ptr @PL_stack_sp, align 8, !tbaa !6
  %237 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %238 = load ptr, ptr %237, align 8, !tbaa !14
  br label %889

239:                                              ; preds = %216
  store ptr %218, ptr @PL_curpm, align 8, !tbaa !6
  br i1 %156, label %521, label %240

240:                                              ; preds = %239
  %241 = load i32, ptr %168, align 4, !tbaa !28
  %242 = and i32 %241, 536870912
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %283, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %246 = getelementptr inbounds %struct.cop, ptr %245, i64 0, i32 10
  %247 = load i32, ptr %246, align 8, !tbaa !40
  %248 = and i32 %247, 8
  %249 = icmp eq i32 %248, 0
  %250 = icmp eq i8 %177, 0
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %252, label %283

252:                                              ; preds = %244
  %253 = call ptr @Perl_sv_newmortal() #14
  %254 = icmp eq ptr %253, %17
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  call void @Perl_sv_setsv_flags(ptr noundef %253, ptr noundef nonnull %17, i32 noundef 1538) #14
  br label %256

256:                                              ; preds = %252, %255
  %257 = load ptr, ptr @PL_encoding, align 8, !tbaa !6
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !6
  %261 = icmp eq ptr %260, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %259
  %263 = call ptr @Perl__get_encoding() #14
  %264 = icmp eq ptr %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %256, %262
  %266 = call ptr @Perl__get_encoding() #14
  %267 = call ptr @Perl_sv_recode_to_utf8(ptr noundef %253, ptr noundef %266) #14
  br label %270

268:                                              ; preds = %259, %262
  %269 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %253, i32 noundef 2, i64 noundef 0) #14
  br label %270

270:                                              ; preds = %268, %265
  %271 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 2
  %272 = load i32, ptr %271, align 4, !tbaa !28
  %273 = and i32 %272, 2098176
  %274 = icmp eq i32 %273, 1024
  br i1 %274, label %275, label %281

275:                                              ; preds = %270
  %276 = load ptr, ptr %253, align 8, !tbaa !32
  %277 = getelementptr inbounds %struct.xpv, ptr %276, i64 0, i32 2
  %278 = load i64, ptr %277, align 8, !tbaa !33
  store i64 %278, ptr %1, align 8, !tbaa !22
  %279 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !21
  br label %309

281:                                              ; preds = %270
  %282 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %253, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %309

283:                                              ; preds = %244, %240
  %284 = load i32, ptr %157, align 4, !tbaa !28
  %285 = and i32 %284, 2098176
  %286 = icmp eq i32 %285, 1024
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load ptr, ptr %17, align 8, !tbaa !32
  %289 = getelementptr inbounds %struct.xpv, ptr %288, i64 0, i32 2
  %290 = load i64, ptr %289, align 8, !tbaa !33
  store i64 %290, ptr %1, align 8, !tbaa !22
  %291 = load ptr, ptr %158, align 8, !tbaa !21
  br label %295

292:                                              ; preds = %283
  %293 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %1, i32 noundef 34) #14
  %294 = load i32, ptr %157, align 4, !tbaa !28
  br label %295

295:                                              ; preds = %292, %287
  %296 = phi i32 [ %284, %287 ], [ %294, %292 ]
  %297 = phi ptr [ %291, %287 ], [ %293, %292 ]
  %298 = and i32 %296, 536870912
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %302 = getelementptr inbounds %struct.cop, ptr %301, i64 0, i32 10
  %303 = load i32, ptr %302, align 8, !tbaa !40
  %304 = and i32 %303, 8
  %305 = icmp eq i32 %304, 0
  br label %306

306:                                              ; preds = %300, %295
  %307 = phi i1 [ false, %295 ], [ %305, %300 ]
  %308 = zext i1 %307 to i8
  br label %309

309:                                              ; preds = %275, %281, %306
  %310 = phi i8 [ %308, %306 ], [ 1, %281 ], [ 1, %275 ]
  %311 = phi ptr [ %175, %306 ], [ %253, %281 ], [ %253, %275 ]
  %312 = phi ptr [ %297, %306 ], [ %282, %281 ], [ %280, %275 ]
  %313 = load i32, ptr %157, align 4, !tbaa !28
  %314 = and i32 %313, 14680064
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %309
  %317 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %17) #14
  %318 = or i8 %176, 4
  %319 = select i1 %317, i8 %318, i8 %176
  br label %320

320:                                              ; preds = %316, %309
  %321 = phi i8 [ %176, %309 ], [ %319, %316 ]
  %322 = icmp eq ptr %312, null
  %323 = select i1 %322, i1 true, i1 %73
  br i1 %323, label %521, label %324

324:                                              ; preds = %320
  %325 = load i64, ptr %1, align 8, !tbaa !22
  %326 = shl i64 %325, 32
  %327 = ashr exact i64 %326, 32
  %328 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %329 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 9
  %330 = load i64, ptr %329, align 8, !tbaa !126
  %331 = icmp sgt i64 %327, %330
  br i1 %331, label %521, label %332

332:                                              ; preds = %324
  br i1 %123, label %333, label %336

333:                                              ; preds = %332
  %334 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 7
  %335 = load i32, ptr %334, align 8, !tbaa !91
  br label %345

336:                                              ; preds = %332
  %337 = load i32, ptr %157, align 4, !tbaa !28
  %338 = and i32 %337, 2097152
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %521

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 7
  %342 = load i32, ptr %341, align 8, !tbaa !91
  %343 = and i32 %342, 131072
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %521

345:                                              ; preds = %333, %340
  %346 = phi i32 [ %335, %333 ], [ %342, %340 ]
  %347 = and i32 %346, 65536
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %521

349:                                              ; preds = %345
  %350 = icmp eq i8 %310, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %349
  %352 = load i32, ptr %168, align 4, !tbaa !28
  %353 = and i32 %352, 536870912
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %521, label %355

355:                                              ; preds = %351, %349
  %356 = load i32, ptr %8, align 8, !tbaa !93
  %357 = and i32 %356, 134217728
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %521

359:                                              ; preds = %355
  %360 = load i32, ptr %168, align 4, !tbaa !28
  %361 = and i32 %360, 268435456
  %362 = icmp eq i32 %361, 0
  %363 = icmp ne i32 %180, 0
  %364 = or i1 %363, %362
  br i1 %364, label %365, label %556

365:                                              ; preds = %359
  br i1 %363, label %366, label %379

366:                                              ; preds = %365
  %367 = and i32 %360, 430018304
  %368 = icmp eq i32 %367, 1024
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load ptr, ptr %160, align 8, !tbaa !32
  %371 = getelementptr inbounds %struct.xpv, ptr %370, i64 0, i32 2
  %372 = load i64, ptr %371, align 8, !tbaa !33
  store i64 %372, ptr %2, align 8, !tbaa !22
  %373 = load ptr, ptr %169, align 8, !tbaa !21
  br label %376

374:                                              ; preds = %366
  %375 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %160, ptr noundef nonnull %2, i32 noundef 0) #14
  br label %376

376:                                              ; preds = %374, %369
  %377 = phi ptr [ %373, %369 ], [ %375, %374 ]
  %378 = icmp eq ptr %377, null
  br i1 %378, label %170, label %173

379:                                              ; preds = %365
  br i1 %123, label %380, label %435

380:                                              ; preds = %379
  %381 = lshr i32 %346, 25
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 2
  %384 = or i8 %383, %321
  %385 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 17
  %386 = load ptr, ptr %385, align 8, !tbaa !101
  %387 = load i64, ptr %386, align 8, !tbaa !104
  %388 = getelementptr inbounds i8, ptr %178, i64 %387
  %389 = getelementptr inbounds %struct.regexp_paren_pair, ptr %386, i64 0, i32 1
  %390 = load i64, ptr %389, align 8, !tbaa !102
  %391 = getelementptr inbounds i8, ptr %178, i64 %390
  %392 = ptrtoint ptr %178 to i64
  %393 = ptrtoint ptr %182 to i64
  %394 = ptrtoint ptr %391 to i64
  %395 = sub i64 %393, %394
  %396 = icmp sgt i64 %387, %395
  br i1 %396, label %397, label %415

397:                                              ; preds = %380
  %398 = icmp eq i64 %325, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %397
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %388, ptr nonnull align 1 %312, i64 %325, i1 false)
  %400 = load i64, ptr %1, align 8, !tbaa !22
  %401 = getelementptr inbounds i8, ptr %388, i64 %400
  br label %402

402:                                              ; preds = %399, %397
  %403 = phi ptr [ %401, %399 ], [ %388, %397 ]
  %404 = trunc i64 %395 to i32
  %405 = icmp sgt i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %402
  %407 = and i64 %395, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %403, ptr nonnull align 1 %391, i64 %407, i1 false)
  %408 = getelementptr inbounds i8, ptr %403, i64 %407
  br label %409

409:                                              ; preds = %406, %402
  %410 = phi ptr [ %408, %406 ], [ %403, %402 ]
  store i8 0, ptr %410, align 1, !tbaa !21
  %411 = ptrtoint ptr %410 to i64
  %412 = sub i64 %411, %392
  %413 = load ptr, ptr %160, align 8, !tbaa !32
  %414 = getelementptr inbounds %struct.xpv, ptr %413, i64 0, i32 2
  store i64 %412, ptr %414, align 8, !tbaa !33
  br label %432

415:                                              ; preds = %380
  %416 = trunc i64 %387 to i32
  %417 = sub i64 0, %325
  %418 = getelementptr inbounds i8, ptr %391, i64 %417
  %419 = icmp sgt i32 %416, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = and i64 %387, 4294967295
  %422 = sub nsw i64 0, %421
  %423 = getelementptr inbounds i8, ptr %418, i64 %422
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %423, ptr nonnull align 1 %178, i64 %421, i1 false)
  br label %424

424:                                              ; preds = %420, %415
  %425 = shl i64 %387, 32
  %426 = ashr exact i64 %425, 32
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %418, i64 %427
  call void @Perl_sv_chop(ptr noundef nonnull %160, ptr noundef nonnull %428) #14
  %429 = load i64, ptr %1, align 8, !tbaa !22
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %424
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %418, ptr nonnull align 1 %312, i64 %429, i1 false)
  br label %432

432:                                              ; preds = %424, %431, %409
  %433 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %434 = getelementptr inbounds ptr, ptr %433, i64 1
  store ptr @PL_sv_yes, ptr %434, align 8, !tbaa !6
  br label %831

435:                                              ; preds = %379
  %436 = shl i64 %195, 1
  %437 = getelementptr inbounds %struct.regexp, ptr %328, i64 0, i32 17
  %438 = load ptr, ptr %437, align 8, !tbaa !101
  %439 = load i64, ptr %438, align 8, !tbaa !104
  %440 = getelementptr inbounds i8, ptr %178, i64 %439
  %441 = add i64 %436, 11
  %442 = call i64 @llvm.smax.i64(i64 %441, i64 0)
  br label %443

443:                                              ; preds = %483, %435
  %444 = phi i8 [ %321, %435 ], [ %459, %483 ]
  %445 = phi i64 [ 0, %435 ], [ %448, %483 ]
  %446 = phi ptr [ %440, %435 ], [ %484, %483 ]
  %447 = phi ptr [ %440, %435 ], [ %490, %483 ]
  %448 = add nuw i64 %445, 1
  %449 = icmp eq i64 %445, %442
  br i1 %449, label %450, label %452

450:                                              ; preds = %443
  %451 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.35) #14
  br label %889

452:                                              ; preds = %443
  %453 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %454 = getelementptr inbounds %struct.regexp, ptr %453, i64 0, i32 7
  %455 = load i32, ptr %454, align 8, !tbaa !91
  %456 = lshr i32 %455, 25
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 2
  %459 = or i8 %458, %444
  %460 = getelementptr inbounds %struct.regexp, ptr %453, i64 0, i32 17
  %461 = load ptr, ptr %460, align 8, !tbaa !101
  %462 = load i64, ptr %461, align 8, !tbaa !104
  %463 = getelementptr inbounds i8, ptr %178, i64 %462
  %464 = ptrtoint ptr %463 to i64
  %465 = ptrtoint ptr %447 to i64
  %466 = sub i64 %464, %465
  %467 = and i64 %466, 4294967295
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %452
  %470 = icmp eq ptr %447, %446
  %471 = shl i64 %466, 32
  %472 = ashr exact i64 %471, 32
  br i1 %470, label %474, label %473

473:                                              ; preds = %469
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %446, ptr align 1 %447, i64 %472, i1 false)
  br label %474

474:                                              ; preds = %469, %473
  %475 = getelementptr inbounds i8, ptr %446, i64 %472
  br label %476

476:                                              ; preds = %474, %452
  %477 = phi ptr [ %475, %474 ], [ %446, %452 ]
  %478 = load i64, ptr %1, align 8, !tbaa !22
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %476
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %477, ptr nonnull align 1 %312, i64 %478, i1 false)
  %481 = load i64, ptr %1, align 8, !tbaa !22
  %482 = getelementptr inbounds i8, ptr %477, i64 %481
  br label %483

483:                                              ; preds = %480, %476
  %484 = phi ptr [ %482, %480 ], [ %477, %476 ]
  %485 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %486 = getelementptr inbounds %struct.regexp, ptr %485, i64 0, i32 17
  %487 = load ptr, ptr %486, align 8, !tbaa !101
  %488 = getelementptr inbounds %struct.regexp_paren_pair, ptr %487, i64 0, i32 1
  %489 = load i64, ptr %488, align 8, !tbaa !102
  %490 = getelementptr inbounds i8, ptr %178, i64 %489
  %491 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %492 = getelementptr inbounds %struct.regexp, ptr %491, i64 0, i32 4
  %493 = load ptr, ptr %492, align 8, !tbaa !83
  %494 = getelementptr inbounds %struct.regexp_engine, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !100
  %496 = icmp eq i64 %489, %462
  %497 = zext i1 %496 to i64
  %498 = call i32 %495(ptr noundef %217, ptr noundef nonnull %490, ptr noundef nonnull %182, ptr noundef nonnull %178, i64 noundef %497, ptr noundef %160, ptr noundef null, i32 noundef 152) #14
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %443, !llvm.loop !127

500:                                              ; preds = %483
  %501 = icmp eq ptr %490, %484
  br i1 %501, label %517, label %502

502:                                              ; preds = %500
  %503 = ptrtoint ptr %182 to i64
  %504 = ptrtoint ptr %490 to i64
  %505 = sub i64 %503, %504
  %506 = load ptr, ptr %169, align 8, !tbaa !21
  %507 = ptrtoint ptr %484 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = shl i64 %505, 32
  %510 = ashr exact i64 %509, 32
  %511 = add i64 %510, %507
  %512 = sub i64 %511, %508
  %513 = load ptr, ptr %160, align 8, !tbaa !32
  %514 = getelementptr inbounds %struct.xpv, ptr %513, i64 0, i32 2
  store i64 %512, ptr %514, align 8, !tbaa !33
  %515 = add i64 %509, 4294967296
  %516 = ashr exact i64 %515, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %484, ptr nonnull align 1 %490, i64 %516, i1 false)
  br label %517

517:                                              ; preds = %500, %502
  %518 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %519 = call ptr @Perl_sv_newmortal() #14
  %520 = getelementptr inbounds ptr, ptr %518, i64 1
  store ptr %519, ptr %520, align 8, !tbaa !6
  call void @Perl_sv_setiv(ptr noundef %519, i64 noundef %448) #14
  br label %831

521:                                              ; preds = %239, %320, %355, %351, %345, %340, %336, %324
  %522 = phi ptr [ %165, %239 ], [ %178, %320 ], [ %178, %355 ], [ %178, %351 ], [ %178, %345 ], [ %178, %340 ], [ %178, %336 ], [ %178, %324 ]
  %523 = phi i32 [ %167, %239 ], [ %180, %320 ], [ %180, %355 ], [ %180, %351 ], [ %180, %345 ], [ %180, %340 ], [ %180, %336 ], [ %180, %324 ]
  %524 = phi i1 [ true, %239 ], [ %322, %320 ], [ false, %355 ], [ false, %351 ], [ false, %345 ], [ false, %340 ], [ false, %336 ], [ false, %324 ]
  %525 = phi ptr [ null, %239 ], [ %312, %320 ], [ %312, %355 ], [ %312, %351 ], [ %312, %345 ], [ %312, %340 ], [ %312, %336 ], [ %312, %324 ]
  %526 = phi ptr [ %162, %239 ], [ %311, %320 ], [ %311, %355 ], [ %311, %351 ], [ %311, %345 ], [ %311, %340 ], [ %311, %336 ], [ %311, %324 ]
  %527 = phi i8 [ %163, %239 ], [ %321, %320 ], [ %321, %355 ], [ %321, %351 ], [ %321, %345 ], [ %321, %340 ], [ %321, %336 ], [ %321, %324 ]
  %528 = phi i8 [ 0, %239 ], [ %310, %320 ], [ %310, %355 ], [ 1, %351 ], [ %310, %345 ], [ %310, %340 ], [ %310, %336 ], [ %310, %324 ]
  %529 = icmp eq i32 %523, 0
  br i1 %529, label %554, label %530

530:                                              ; preds = %521
  %531 = load i32, ptr %8, align 8, !tbaa !93
  %532 = and i32 %531, 134217728
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %537, label %534

534:                                              ; preds = %530
  %535 = call ptr @Perl_newSVsv(ptr noundef nonnull %160) #14
  %536 = call ptr @Perl_sv_2mortal(ptr noundef %535) #14
  br label %537

537:                                              ; preds = %534, %530
  %538 = phi ptr [ %536, %534 ], [ %160, %530 ]
  %539 = getelementptr inbounds %struct.sv, ptr %538, i64 0, i32 2
  %540 = load i32, ptr %539, align 4, !tbaa !28
  %541 = and i32 %540, 430018304
  %542 = icmp eq i32 %541, 1024
  br i1 %542, label %543, label %549

543:                                              ; preds = %537
  %544 = load ptr, ptr %538, align 8, !tbaa !32
  %545 = getelementptr inbounds %struct.xpv, ptr %544, i64 0, i32 2
  %546 = load i64, ptr %545, align 8, !tbaa !33
  store i64 %546, ptr %2, align 8, !tbaa !22
  %547 = getelementptr inbounds %struct.sv, ptr %538, i64 0, i32 3
  %548 = load ptr, ptr %547, align 8, !tbaa !21
  br label %551

549:                                              ; preds = %537
  %550 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %538, ptr noundef nonnull %2, i32 noundef 0) #14
  br label %551

551:                                              ; preds = %549, %543
  %552 = phi ptr [ %548, %543 ], [ %550, %549 ]
  %553 = icmp eq ptr %552, null
  br i1 %553, label %170, label %159

554:                                              ; preds = %521
  %555 = load i32, ptr %168, align 4, !tbaa !28
  br label %556

556:                                              ; preds = %359, %554
  %557 = phi i32 [ %555, %554 ], [ %360, %359 ]
  %558 = phi ptr [ %522, %554 ], [ %178, %359 ]
  %559 = phi i1 [ %524, %554 ], [ false, %359 ]
  %560 = phi ptr [ %525, %554 ], [ %312, %359 ]
  %561 = phi ptr [ %526, %554 ], [ %311, %359 ]
  %562 = phi i8 [ %527, %554 ], [ %321, %359 ]
  %563 = phi i8 [ %528, %554 ], [ %310, %359 ]
  %564 = shl i64 %195, 1
  %565 = add i64 %564, 10
  %566 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %567 = getelementptr inbounds %struct.regexp, ptr %566, i64 0, i32 7
  %568 = load i32, ptr %567, align 8, !tbaa !91
  %569 = lshr i32 %568, 25
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 2
  %572 = or i8 %571, %562
  %573 = getelementptr inbounds %struct.regexp, ptr %566, i64 0, i32 17
  %574 = load ptr, ptr %573, align 8, !tbaa !101
  %575 = load i64, ptr %574, align 8, !tbaa !104
  %576 = getelementptr inbounds i8, ptr %558, i64 %575
  %577 = and i32 %557, 536870912
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %556
  %580 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %581 = getelementptr inbounds %struct.cop, ptr %580, i64 0, i32 10
  %582 = load i32, ptr %581, align 8, !tbaa !40
  %583 = freeze i32 %582
  %584 = and i32 %583, 8
  %585 = icmp eq i32 %584, 0
  %586 = select i1 %585, i32 537395200, i32 524288
  br label %587

587:                                              ; preds = %579, %556
  %588 = phi i32 [ 524288, %556 ], [ %586, %579 ]
  %589 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %558, i64 noundef %575, i32 noundef %588) #14
  br i1 %559, label %595, label %590

590:                                              ; preds = %587
  %591 = icmp eq i8 %563, 0
  %592 = select i1 %591, i32 16384, i32 32768
  %593 = add i64 %564, 11
  %594 = call i64 @llvm.smax.i64(i64 %593, i64 0)
  br label %637

595:                                              ; preds = %587
  %596 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %597 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %598 = getelementptr inbounds %struct.stackinfo, ptr %597, i64 0, i32 4
  %599 = load i32, ptr %598, align 8, !tbaa !20
  %600 = getelementptr inbounds %struct.stackinfo, ptr %597, i64 0, i32 5
  %601 = load i32, ptr %600, align 4, !tbaa !128
  %602 = icmp slt i32 %599, %601
  br i1 %602, label %603, label %605

603:                                              ; preds = %595
  %604 = add nsw i32 %599, 1
  store i32 %604, ptr %598, align 8, !tbaa !20
  br label %609

605:                                              ; preds = %595
  %606 = call i32 @Perl_cxinc() #14
  %607 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %608 = getelementptr inbounds %struct.stackinfo, ptr %607, i64 0, i32 4
  store i32 %606, ptr %608, align 8, !tbaa !20
  br label %609

609:                                              ; preds = %605, %603
  %610 = phi i32 [ %606, %605 ], [ %604, %603 ]
  %611 = phi ptr [ %607, %605 ], [ %597, %603 ]
  %612 = getelementptr inbounds %struct.stackinfo, ptr %611, i64 0, i32 1
  %613 = load ptr, ptr %612, align 8, !tbaa !18
  %614 = sext i32 %610 to i64
  %615 = getelementptr inbounds %struct.context, ptr %613, i64 %614
  %616 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 4
  store i64 0, ptr %616, align 8, !tbaa !21
  %617 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 5
  store i64 %565, ptr %617, align 8, !tbaa !21
  %618 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 1
  store i8 1, ptr %618, align 1, !tbaa !21
  %619 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 3
  store i32 %7, ptr %619, align 4, !tbaa !21
  %620 = zext nneg i8 %572 to i16
  %621 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 2
  store i16 %620, ptr %621, align 2, !tbaa !21
  %622 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 6
  store ptr %558, ptr %622, align 8, !tbaa !21
  %623 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 7
  store ptr %589, ptr %623, align 8, !tbaa !21
  %624 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 8
  store ptr %160, ptr %624, align 8, !tbaa !21
  %625 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 9
  store ptr %576, ptr %625, align 8, !tbaa !21
  %626 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 10
  store ptr %558, ptr %626, align 8, !tbaa !21
  %627 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 11
  store ptr %182, ptr %627, align 8, !tbaa !21
  %628 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 12
  store ptr null, ptr %628, align 8, !tbaa !21
  %629 = getelementptr inbounds %struct.subst, ptr %615, i64 0, i32 13
  store ptr %217, ptr %629, align 8, !tbaa !21
  %630 = lshr exact i32 %122, 20
  %631 = trunc i32 %630 to i8
  %632 = xor i8 %631, 27
  store i8 %632, ptr %615, align 8, !tbaa !21
  call void @Perl_rxres_save(ptr noundef nonnull %628, ptr noundef %217) #14
  %633 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %217) #15
  store ptr %596, ptr @PL_stack_sp, align 8, !tbaa !6
  %634 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %635 = getelementptr inbounds %struct.pmop, ptr %634, i64 0, i32 11
  %636 = load ptr, ptr %635, align 8, !tbaa !21
  br label %889

637:                                              ; preds = %590, %750
  %638 = phi ptr [ %672, %750 ], [ %558, %590 ]
  %639 = phi i8 [ %747, %750 ], [ %572, %590 ]
  %640 = phi ptr [ %748, %750 ], [ %561, %590 ]
  %641 = phi i64 [ %645, %750 ], [ 0, %590 ]
  %642 = phi ptr [ %673, %750 ], [ %182, %590 ]
  %643 = phi ptr [ %700, %750 ], [ %576, %590 ]
  %644 = phi i8 [ %749, %750 ], [ 1, %590 ]
  %645 = add nuw i64 %641, 1
  %646 = icmp eq i64 %641, %594
  br i1 %646, label %647, label %649

647:                                              ; preds = %637
  %648 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.35) #14
  br label %889

649:                                              ; preds = %637
  %650 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %651 = getelementptr inbounds %struct.regexp, ptr %650, i64 0, i32 7
  %652 = load i32, ptr %651, align 8, !tbaa !91
  %653 = lshr i32 %652, 25
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 2
  %656 = or i8 %655, %639
  %657 = and i32 %652, 33554432
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %671, label %659

659:                                              ; preds = %649
  %660 = getelementptr inbounds %struct.regexp, ptr %650, i64 0, i32 18
  %661 = load ptr, ptr %660, align 8, !tbaa !129
  %662 = icmp eq ptr %661, %638
  br i1 %662, label %671, label %663

663:                                              ; preds = %659
  %664 = ptrtoint ptr %643 to i64
  %665 = ptrtoint ptr %638 to i64
  %666 = sub i64 %664, %665
  %667 = getelementptr inbounds i8, ptr %661, i64 %666
  %668 = ptrtoint ptr %642 to i64
  %669 = sub i64 %668, %664
  %670 = getelementptr inbounds i8, ptr %667, i64 %669
  br label %671

671:                                              ; preds = %663, %659, %649
  %672 = phi ptr [ %661, %663 ], [ %638, %659 ], [ %638, %649 ]
  %673 = phi ptr [ %670, %663 ], [ %642, %659 ], [ %642, %649 ]
  %674 = phi ptr [ %667, %663 ], [ %643, %659 ], [ %643, %649 ]
  %675 = getelementptr inbounds %struct.regexp, ptr %650, i64 0, i32 17
  %676 = load ptr, ptr %675, align 8, !tbaa !101
  %677 = load i64, ptr %676, align 8, !tbaa !104
  %678 = getelementptr inbounds i8, ptr %672, i64 %677
  %679 = ptrtoint ptr %678 to i64
  %680 = ptrtoint ptr %674 to i64
  %681 = sub i64 %679, %680
  %682 = load i32, ptr %168, align 4, !tbaa !28
  %683 = and i32 %682, 536870912
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %693, label %685

685:                                              ; preds = %671
  %686 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %687 = getelementptr inbounds %struct.cop, ptr %686, i64 0, i32 10
  %688 = load i32, ptr %687, align 8, !tbaa !40
  %689 = freeze i32 %688
  %690 = and i32 %689, 8
  %691 = icmp eq i32 %690, 0
  %692 = select i1 %691, i32 32768, i32 16384
  br label %693

693:                                              ; preds = %685, %671
  %694 = phi i32 [ 16384, %671 ], [ %692, %685 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %589, ptr noundef %674, i64 noundef %681, i32 noundef %694) #14
  %695 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %696 = getelementptr inbounds %struct.regexp, ptr %695, i64 0, i32 17
  %697 = load ptr, ptr %696, align 8, !tbaa !101
  %698 = getelementptr inbounds %struct.regexp_paren_pair, ptr %697, i64 0, i32 1
  %699 = load i64, ptr %698, align 8, !tbaa !102
  %700 = getelementptr inbounds i8, ptr %672, i64 %699
  %701 = and i8 %644, 1
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %707, label %703

703:                                              ; preds = %693
  %704 = load i64, ptr %1, align 8, !tbaa !22
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %746, label %706

706:                                              ; preds = %703
  call void @Perl_sv_catpvn_flags(ptr noundef %589, ptr noundef nonnull %560, i64 noundef %704, i32 noundef %592) #14
  br label %746

707:                                              ; preds = %693
  %708 = load ptr, ptr @PL_encoding, align 8, !tbaa !6
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %716

710:                                              ; preds = %707
  %711 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !6
  %712 = icmp eq ptr %711, null
  br i1 %712, label %736, label %713

713:                                              ; preds = %710
  %714 = call ptr @Perl__get_encoding() #14
  %715 = icmp eq ptr %714, null
  br i1 %715, label %736, label %716

716:                                              ; preds = %707, %713
  %717 = icmp eq ptr %640, null
  br i1 %717, label %718, label %720

718:                                              ; preds = %716
  %719 = call ptr @Perl_sv_newmortal() #14
  br label %720

720:                                              ; preds = %718, %716
  %721 = phi ptr [ %640, %716 ], [ %719, %718 ]
  call void @Perl_sv_copypv_flags(ptr noundef %721, ptr noundef %17, i32 noundef 2) #14
  %722 = getelementptr inbounds %struct.sv, ptr %721, i64 0, i32 2
  %723 = load i32, ptr %722, align 4, !tbaa !28
  %724 = and i32 %723, 536870912
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %732, label %726

726:                                              ; preds = %720
  %727 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %728 = getelementptr inbounds %struct.cop, ptr %727, i64 0, i32 10
  %729 = load i32, ptr %728, align 8, !tbaa !40
  %730 = and i32 %729, 8
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %735, label %732

732:                                              ; preds = %726, %720
  %733 = call ptr @Perl__get_encoding() #14
  %734 = call ptr @Perl_sv_recode_to_utf8(ptr noundef nonnull %721, ptr noundef %733) #14
  br label %735

735:                                              ; preds = %732, %726
  call void @Perl_sv_catsv_flags(ptr noundef %589, ptr noundef nonnull %721, i32 noundef 2) #14
  br label %737

736:                                              ; preds = %710, %713
  call void @Perl_sv_catsv_flags(ptr noundef %589, ptr noundef %17, i32 noundef 2) #14
  br label %737

737:                                              ; preds = %736, %735
  %738 = phi ptr [ %721, %735 ], [ %640, %736 ]
  %739 = load i32, ptr %157, align 4, !tbaa !28
  %740 = and i32 %739, 14680064
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %746, label %742

742:                                              ; preds = %737
  %743 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %17) #14
  %744 = or i8 %656, 4
  %745 = select i1 %743, i8 %744, i8 %656
  br label %746

746:                                              ; preds = %742, %703, %706, %737
  %747 = phi i8 [ %656, %737 ], [ %656, %706 ], [ %656, %703 ], [ %745, %742 ]
  %748 = phi ptr [ %738, %737 ], [ %640, %706 ], [ %640, %703 ], [ %738, %742 ]
  %749 = phi i8 [ %644, %737 ], [ 0, %706 ], [ 0, %703 ], [ %644, %742 ]
  br i1 %123, label %760, label %750

750:                                              ; preds = %746
  %751 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %752 = getelementptr inbounds %struct.regexp, ptr %751, i64 0, i32 4
  %753 = load ptr, ptr %752, align 8, !tbaa !83
  %754 = getelementptr inbounds %struct.regexp_engine, ptr %753, i64 0, i32 1
  %755 = load ptr, ptr %754, align 8, !tbaa !100
  %756 = icmp eq i64 %699, %677
  %757 = zext i1 %756 to i64
  %758 = call i32 %755(ptr noundef %217, ptr noundef %700, ptr noundef %673, ptr noundef %672, i64 noundef %757, ptr noundef nonnull %160, ptr noundef null, i32 noundef 152) #14
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %637, !llvm.loop !130

760:                                              ; preds = %746, %750
  %761 = ptrtoint ptr %673 to i64
  %762 = ptrtoint ptr %700 to i64
  %763 = sub i64 %761, %762
  %764 = load i32, ptr %168, align 4, !tbaa !28
  %765 = and i32 %764, 536870912
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %775, label %767

767:                                              ; preds = %760
  %768 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %769 = getelementptr inbounds %struct.cop, ptr %768, i64 0, i32 10
  %770 = load i32, ptr %769, align 8, !tbaa !40
  %771 = freeze i32 %770
  %772 = and i32 %771, 8
  %773 = icmp eq i32 %772, 0
  %774 = select i1 %773, i32 32768, i32 16384
  br label %775

775:                                              ; preds = %767, %760
  %776 = phi i32 [ 16384, %760 ], [ %774, %767 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %589, ptr noundef %700, i64 noundef %763, i32 noundef %776) #14
  %777 = load i32, ptr %8, align 8, !tbaa !93
  %778 = and i32 %777, 134217728
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %783, label %780

780:                                              ; preds = %775
  %781 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %782 = getelementptr inbounds ptr, ptr %781, i64 1
  store ptr %589, ptr %782, align 8, !tbaa !6
  br label %831

783:                                              ; preds = %775
  %784 = load i32, ptr %168, align 4, !tbaa !28
  %785 = and i32 %784, 268435456
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %788, label %787

787:                                              ; preds = %783
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %160, i32 noundef 4) #14
  br label %812

788:                                              ; preds = %783
  %789 = load ptr, ptr %160, align 8, !tbaa !32
  %790 = getelementptr inbounds %struct.xpv, ptr %789, i64 0, i32 3
  %791 = load i64, ptr %790, align 8, !tbaa !21
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %812, label %793

793:                                              ; preds = %788
  %794 = and i32 %784, 33554432
  %795 = icmp eq i32 %794, 0
  %796 = load ptr, ptr %169, align 8, !tbaa !21
  br i1 %795, label %810, label %797

797:                                              ; preds = %793
  %798 = getelementptr inbounds i8, ptr %796, i64 -1
  %799 = load i8, ptr %798, align 1, !tbaa !21
  %800 = zext i8 %799 to i64
  %801 = icmp eq i8 %799, 0
  br i1 %801, label %802, label %805

802:                                              ; preds = %797
  %803 = getelementptr inbounds i8, ptr %796, i64 -9
  %804 = load i64, ptr %803, align 1
  br label %805

805:                                              ; preds = %802, %797
  %806 = phi i64 [ %800, %797 ], [ %804, %802 ]
  %807 = sub i64 0, %806
  %808 = getelementptr inbounds i8, ptr %796, i64 %807
  store ptr %808, ptr %169, align 8, !tbaa !21
  %809 = and i32 %784, -301989889
  store i32 %809, ptr %168, align 4, !tbaa !28
  br label %810

810:                                              ; preds = %793, %805
  %811 = phi ptr [ %796, %793 ], [ %808, %805 ]
  call void @Perl_safesysfree(ptr noundef %811) #14
  br label %812

812:                                              ; preds = %787, %810, %788
  %813 = getelementptr inbounds %struct.sv, ptr %589, i64 0, i32 3
  %814 = load ptr, ptr %813, align 8, !tbaa !21
  store ptr %814, ptr %169, align 8, !tbaa !21
  %815 = load ptr, ptr %589, align 8, !tbaa !32
  %816 = getelementptr inbounds %struct.xpv, ptr %815, i64 0, i32 2
  %817 = load i64, ptr %816, align 8, !tbaa !33
  %818 = load ptr, ptr %160, align 8, !tbaa !32
  %819 = getelementptr inbounds %struct.xpv, ptr %818, i64 0, i32 2
  store i64 %817, ptr %819, align 8, !tbaa !33
  %820 = getelementptr inbounds %struct.xpv, ptr %815, i64 0, i32 3
  %821 = load i64, ptr %820, align 8, !tbaa !21
  %822 = getelementptr inbounds %struct.xpv, ptr %818, i64 0, i32 3
  store i64 %821, ptr %822, align 8, !tbaa !21
  %823 = getelementptr inbounds %struct.sv, ptr %589, i64 0, i32 2
  %824 = load i32, ptr %823, align 4, !tbaa !28
  %825 = and i32 %824, 536870912
  %826 = load i32, ptr %168, align 4, !tbaa !28
  %827 = or i32 %826, %825
  store i32 %827, ptr %168, align 4, !tbaa !28
  store ptr null, ptr %813, align 8, !tbaa !21
  %828 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %829 = call ptr @Perl_sv_newmortal() #14
  %830 = getelementptr inbounds ptr, ptr %828, i64 1
  store ptr %829, ptr %830, align 8, !tbaa !6
  call void @Perl_sv_setiv(ptr noundef %829, i64 noundef %645) #14
  br label %831

831:                                              ; preds = %517, %780, %812, %432
  %832 = phi i8 [ %747, %780 ], [ %747, %812 ], [ %384, %432 ], [ %459, %517 ]
  %833 = phi ptr [ %589, %780 ], [ %160, %812 ], [ %160, %432 ], [ %160, %517 ]
  %834 = phi ptr [ %782, %780 ], [ %830, %812 ], [ %434, %432 ], [ %520, %517 ]
  %835 = load i32, ptr %8, align 8, !tbaa !93
  %836 = and i32 %835, 134217728
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %843

838:                                              ; preds = %831
  %839 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %840 = load i32, ptr %839, align 4, !tbaa !28
  %841 = and i32 %840, 2147418367
  %842 = or disjoint i32 %841, 17408
  store i32 %842, ptr %839, align 4, !tbaa !28
  br label %843

843:                                              ; preds = %838, %831
  %844 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %845 = icmp eq i8 %844, 0
  br i1 %845, label %875, label %846

846:                                              ; preds = %843
  %847 = zext nneg i8 %832 to i32
  %848 = and i32 %847, 2
  %849 = icmp ne i32 %848, 0
  %850 = and i32 %847, 9
  %851 = icmp eq i32 %850, 9
  %852 = or i1 %849, %851
  br i1 %852, label %853, label %858

853:                                              ; preds = %846
  %854 = call fastcc ptr @S_ReANY(ptr noundef %217) #15
  %855 = getelementptr inbounds %struct.regexp, ptr %854, i64 0, i32 7
  %856 = load i32, ptr %855, align 8, !tbaa !91
  %857 = or i32 %856, 67108864
  store i32 %857, ptr %855, align 8, !tbaa !91
  br label %858

858:                                              ; preds = %846, %853
  %859 = and i32 %847, 16
  %860 = icmp ne i32 %859, 0
  %861 = and i32 %847, 3
  %862 = icmp eq i32 %861, 0
  %863 = or i1 %860, %862
  %864 = load ptr, ptr %834, align 8, !tbaa !6
  br i1 %863, label %866, label %865

865:                                              ; preds = %858
  call void @Perl_sv_magic(ptr noundef %864, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %867

866:                                              ; preds = %858
  call void @Perl_sv_untaint(ptr noundef %864) #14
  br label %867

867:                                              ; preds = %866, %865
  %868 = and i32 %847, 7
  %869 = icmp ne i32 %868, 0
  %870 = zext i1 %869 to i8
  store i8 %870, ptr @PL_tainted, align 1, !tbaa !16
  %871 = load i8, ptr @PL_tainting, align 1, !tbaa !16, !range !35, !noundef !36
  %872 = icmp ne i8 %871, 0
  %873 = and i1 %869, %872
  br i1 %873, label %874, label %875

874:                                              ; preds = %867
  call void @Perl_sv_magic(ptr noundef %833, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %875

875:                                              ; preds = %867, %843, %874
  %876 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %877 = load i32, ptr %876, align 4, !tbaa !28
  %878 = and i32 %877, 4194304
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %882, label %880

880:                                              ; preds = %875
  %881 = call i32 @Perl_mg_set(ptr noundef nonnull %833) #14
  br label %882

882:                                              ; preds = %875, %880
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  %883 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %884 = icmp sgt i32 %883, %7
  br i1 %884, label %885, label %886

885:                                              ; preds = %882
  call void @Perl_leave_scope(i32 noundef %7) #14
  br label %886

886:                                              ; preds = %885, %882
  store ptr %834, ptr @PL_stack_sp, align 8, !tbaa !6
  %887 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %888 = load ptr, ptr %887, align 8, !tbaa !14
  br label %889

889:                                              ; preds = %450, %886, %647, %609, %236, %170
  %890 = phi ptr [ %648, %647 ], [ %888, %886 ], [ %636, %609 ], [ %238, %236 ], [ %172, %170 ], [ %451, %450 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %890
}

; Function Attrs: optsize
declare ptr @Perl__get_encoding() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_recode_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_rxres_save(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_grepwhile() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 2) #14
  br i1 %11, label %59, label %71

12:                                               ; preds = %5
  %13 = and i32 %7, 65280
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %7, 255
  %16 = icmp eq i32 %15, 8
  %17 = or i1 %14, %16
  %18 = and i32 %7, 16777471
  %19 = icmp eq i32 %18, 16777226
  %20 = or i1 %19, %17
  br i1 %20, label %21, label %71

21:                                               ; preds = %12
  %22 = and i32 %7, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !32
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !33
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = icmp eq i64 %29, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !21
  %37 = icmp eq i8 %36, 48
  br i1 %37, label %71, label %59

38:                                               ; preds = %21
  %39 = and i32 %7, 768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = and i32 %7, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 8, !tbaa !32
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !21
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %41
  %50 = and i32 %7, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.xpvnv, ptr %53, i64 0, i32 5
  %55 = load double, ptr %54, align 8, !tbaa !21
  %56 = fcmp une double %55, 0.000000e+00
  br i1 %56, label %59, label %71

57:                                               ; preds = %38
  %58 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 0) #14
  br i1 %58, label %59, label %71

59:                                               ; preds = %33, %57, %10, %52, %44, %27
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %61 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = getelementptr inbounds i32, ptr %61, i64 -1
  %67 = load i32, ptr %66, align 4, !tbaa !23
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !23
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds ptr, ptr %60, i64 %69
  store ptr %65, ptr %70, align 8, !tbaa !6
  br label %71

71:                                               ; preds = %52, %33, %57, %10, %49, %31, %24, %12, %0, %59
  %72 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %73 = load i32, ptr %72, align 4, !tbaa !23
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !23
  %75 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %76 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  tail call void @Perl_free_tmps() #14
  br label %79

79:                                               ; preds = %78, %71
  tail call void @Perl_pop_scope() #14
  %80 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %81 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %82 = load i32, ptr %81, align 4, !tbaa !23
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %80, i64 %83
  %85 = icmp ugt ptr %84, %2
  br i1 %85, label %86, label %149

86:                                               ; preds = %79
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 5
  %89 = load i8, ptr %88, align 2, !tbaa !37
  %90 = and i8 %89, 3
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = zext nneg i8 %90 to i32
  br label %96

94:                                               ; preds = %86
  %95 = tail call i32 @Perl_block_gimme() #14
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  tail call void @Perl_pop_scope() #14
  %98 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %99 = getelementptr inbounds i32, ptr %98, i64 -1
  %100 = load i32, ptr %99, align 4, !tbaa !23
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr %99, align 4, !tbaa !23
  %102 = getelementptr inbounds i32, ptr %98, i64 -2
  %103 = load i32, ptr %102, align 4, !tbaa !23
  %104 = sub nsw i32 %101, %103
  %105 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %106 = getelementptr inbounds i32, ptr %98, i64 -3
  store ptr %106, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  switch i32 %97, label %146 [
    i32 2, label %109
    i32 3, label %143
  ]

109:                                              ; preds = %96
  %110 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.op, ptr %110, i64 0, i32 6
  %112 = load i8, ptr %111, align 1, !tbaa !24
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = tail call ptr @Perl_sv_newmortal() #14
  %117 = sext i32 %104 to i64
  tail call void @Perl_sv_setiv(ptr noundef %116, i64 noundef %117) #14
  %118 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %116, ptr %118, align 8, !tbaa !6
  br label %146

119:                                              ; preds = %109
  %120 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct.op, ptr %110, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !27
  %123 = getelementptr inbounds ptr, ptr %120, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = sext i32 %104 to i64
  tail call void @Perl_sv_setiv(ptr noundef %124, i64 noundef %125) #14
  %126 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !28
  %128 = and i32 %127, 4194304
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  %131 = tail call i32 @Perl_mg_set(ptr noundef nonnull %124) #14
  br label %132

132:                                              ; preds = %119, %130
  %133 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %134 = ptrtoint ptr %133 to i64
  %135 = ptrtoint ptr %108 to i64
  %136 = sub i64 %134, %135
  %137 = icmp slt i64 %136, 8
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = tail call ptr @Perl_stack_grow(ptr noundef %108, ptr noundef %108, i64 noundef 1) #14
  br label %140

140:                                              ; preds = %132, %138
  %141 = phi ptr [ %139, %138 ], [ %108, %132 ]
  %142 = getelementptr inbounds ptr, ptr %141, i64 1
  store ptr %124, ptr %142, align 8, !tbaa !6
  br label %146

143:                                              ; preds = %96
  %144 = sext i32 %104 to i64
  %145 = getelementptr inbounds ptr, ptr %108, i64 %144
  br label %146

146:                                              ; preds = %96, %143, %115, %140
  %147 = phi ptr [ %118, %115 ], [ %142, %140 ], [ %145, %143 ], [ %108, %96 ]
  store ptr %147, ptr @PL_stack_sp, align 8, !tbaa !6
  %148 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %199

149:                                              ; preds = %79
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpm) #14
  %150 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %151 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %152 = load i32, ptr %151, align 4, !tbaa !23
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %150, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !28
  %158 = and i32 %157, 131072
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %149
  %161 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %155, i32 noundef 1538) #14
  %162 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %163 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %164 = load i32, ptr %163, align 4, !tbaa !23
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165
  store ptr %161, ptr %166, align 8, !tbaa !6
  %167 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %168 = add nsw i64 %167, 1
  store i64 %168, ptr @PL_tmps_floor, align 8, !tbaa !22
  %169 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !28
  br label %171

171:                                              ; preds = %160, %149
  %172 = phi i32 [ %170, %160 ], [ %157, %149 ]
  %173 = phi ptr [ %161, %160 ], [ %155, %149 ]
  %174 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 2
  %175 = and i32 %172, -524289
  store i32 %175, ptr %174, align 4, !tbaa !28
  %176 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.op, ptr %176, i64 0, i32 6
  %178 = load i8, ptr %177, align 1, !tbaa !24
  %179 = and i8 %178, 2
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %171
  %182 = load ptr, ptr @PL_curpad, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.op, ptr %176, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !27
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  br label %195

186:                                              ; preds = %171
  %187 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %188 = getelementptr inbounds %struct.gv, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !21
  %190 = load ptr, ptr %189, align 8, !tbaa !63
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %190) #15
  %191 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %173) #15
  %192 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %193 = getelementptr inbounds %struct.gv, ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !21
  br label %195

195:                                              ; preds = %186, %181
  %196 = phi ptr [ %194, %186 ], [ %185, %181 ]
  store ptr %173, ptr %196, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %197 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.logop, ptr %197, i64 0, i32 8
  br label %199

199:                                              ; preds = %195, %146
  %200 = phi ptr [ %148, %146 ], [ %198, %195 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  ret ptr %201
}

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavesub() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.context, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 8, !tbaa !21
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %222

12:                                               ; preds = %0
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr %5, align 8, !tbaa !20
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  store ptr %20, ptr @PL_curcop, align 8, !tbaa !6
  %21 = load ptr, ptr @PL_markstack, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !21
  store i32 %27, ptr @PL_scopestack_ix, align 4, !tbaa !23
  %28 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 1
  %31 = load i8, ptr %30, align 1, !tbaa !21
  store i32 %6, ptr %5, align 8, !tbaa !20
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  switch i8 %31, label %126 [
    i8 2, label %35
    i8 3, label %32
  ]

32:                                               ; preds = %12
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = icmp ugt ptr %33, %1
  br i1 %34, label %126, label %107

35:                                               ; preds = %12
  %36 = getelementptr inbounds ptr, ptr %18, i64 1
  %37 = icmp ugt ptr %36, %1
  br i1 %37, label %93, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %40) #15
  %44 = load i32, ptr %43, align 4, !tbaa !23
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !28
  %50 = and i32 %49, 524288
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !38
  %55 = icmp eq i32 %54, 1
  %56 = and i32 %49, 14680064
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %57, %55
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %47) #15
  store ptr %47, ptr %36, align 8, !tbaa !6
  %61 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %62 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  tail call void @Perl_free_tmps() #14
  %65 = load ptr, ptr %36, align 8, !tbaa !6
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %47, %59 ]
  %68 = tail call ptr @Perl_sv_2mortal(ptr noundef %67) #14
  br label %126

69:                                               ; preds = %52, %46
  %70 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %47) #15
  %71 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  %72 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !22
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  tail call void @Perl_free_tmps() #14
  br label %75

75:                                               ; preds = %74, %69
  %76 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %47, i32 noundef 1538) #14
  store ptr %76, ptr %36, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %47) #15
  br label %126

77:                                               ; preds = %42, %38
  %78 = load ptr, ptr %1, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !28
  %81 = and i32 %80, 524288
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !38
  %86 = icmp eq i32 %85, 1
  %87 = and i32 %80, 14680064
  %88 = icmp eq i32 %87, 0
  %89 = and i1 %88, %86
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store ptr %78, ptr %36, align 8, !tbaa !6
  br label %126

91:                                               ; preds = %83, %77
  %92 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %78, i32 noundef 1538) #14
  store ptr %92, ptr %36, align 8, !tbaa !6
  br label %126

93:                                               ; preds = %35
  %94 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %95 = ptrtoint ptr %94 to i64
  %96 = ptrtoint ptr %36 to i64
  %97 = sub i64 %95, %96
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = ptrtoint ptr %14 to i64
  %101 = sub i64 %96, %100
  %102 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef nonnull %36, i64 noundef 0) #14
  %103 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 %101
  br label %105

105:                                              ; preds = %93, %99
  %106 = phi ptr [ %104, %99 ], [ %36, %93 ]
  store ptr @PL_sv_undef, ptr %106, align 8, !tbaa !6
  br label %126

107:                                              ; preds = %32, %123
  %108 = phi ptr [ %124, %123 ], [ %33, %32 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !28
  %112 = and i32 %111, 524288
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !38
  %117 = icmp eq i32 %116, 1
  %118 = and i32 %111, 14680064
  %119 = icmp eq i32 %118, 0
  %120 = and i1 %119, %117
  br i1 %120, label %123, label %121

121:                                              ; preds = %114, %107
  %122 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %109, i32 noundef 1538) #14
  store ptr %122, ptr %108, align 8, !tbaa !6
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  br label %123

123:                                              ; preds = %114, %121
  %124 = getelementptr inbounds ptr, ptr %108, i64 1
  %125 = icmp ugt ptr %124, %1
  br i1 %125, label %126, label %107, !llvm.loop !131

126:                                              ; preds = %123, %32, %12, %105, %90, %91, %66, %75
  %127 = phi ptr [ %36, %75 ], [ %36, %66 ], [ %36, %91 ], [ %36, %90 ], [ %106, %105 ], [ %1, %12 ], [ %1, %32 ], [ %1, %123 ]
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !6
  tail call void @Perl_pop_scope() #14
  %128 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8
  %129 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !21
  %131 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !21
  %133 = and i16 %132, 256
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %197

135:                                              ; preds = %126
  %136 = or disjoint i16 %132, 256
  store i16 %136, ptr %131, align 2, !tbaa !21
  %137 = load i8, ptr %8, align 8, !tbaa !21
  %138 = and i8 %137, 32
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %197, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %142 = getelementptr inbounds %struct.gv, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !21
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !42
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #15
  %146 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !21
  %148 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %149 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !21
  %151 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 6
  store ptr %147, ptr %151, align 8, !tbaa !42
  %152 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !21
  %154 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = and i32 %155, 1073741824
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %140
  %159 = load ptr, ptr %153, align 8, !tbaa !46
  %160 = getelementptr inbounds %struct.xpvav, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !48
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %153) #15
  %162 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  store ptr %162, ptr %152, align 8, !tbaa !21
  tail call void @Perl_av_extend(ptr noundef %162, i64 noundef %161) #14
  %163 = load ptr, ptr %152, align 8, !tbaa !21
  %164 = getelementptr inbounds %struct.av, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = and i32 %165, -1073741825
  store i32 %166, ptr %164, align 4, !tbaa !50
  %167 = load ptr, ptr %152, align 8, !tbaa !21
  %168 = getelementptr inbounds %struct.av, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !50
  %170 = or i32 %169, -2147483648
  store i32 %170, ptr %168, align 4, !tbaa !50
  %171 = load ptr, ptr %152, align 8, !tbaa !21
  %172 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !21
  %174 = getelementptr inbounds %struct.av, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !21
  store ptr %171, ptr %175, align 8, !tbaa !6
  br label %197

176:                                              ; preds = %140
  %177 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !21
  %179 = load ptr, ptr %153, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !132
  %182 = ptrtoint ptr %178 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = ashr exact i64 %184, 3
  %186 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 3
  %187 = load i64, ptr %186, align 8, !tbaa !66
  %188 = add nsw i64 %185, %187
  store i64 %188, ptr %186, align 8, !tbaa !66
  %189 = load ptr, ptr %152, align 8, !tbaa !21
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = getelementptr inbounds %struct.xpvav, ptr %190, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !132
  %193 = getelementptr inbounds %struct.av, ptr %189, i64 0, i32 3
  store ptr %192, ptr %193, align 8, !tbaa !21
  %194 = load ptr, ptr %152, align 8, !tbaa !21
  %195 = load ptr, ptr %194, align 8, !tbaa !46
  %196 = getelementptr inbounds %struct.xpvav, ptr %195, i64 0, i32 2
  store i64 -1, ptr %196, align 8, !tbaa !48
  br label %197

197:                                              ; preds = %135, %176, %158, %126
  %198 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !21
  %200 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !23
  %201 = load ptr, ptr @PL_scopestack, align 8, !tbaa !6
  %202 = load i32, ptr %26, align 4, !tbaa !21
  %203 = sext i32 %202 to i64
  %204 = getelementptr i32, ptr %201, i64 %203
  %205 = getelementptr i32, ptr %204, i64 -1
  %206 = load i32, ptr %205, align 4, !tbaa !23
  %207 = icmp sgt i32 %200, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  tail call void @Perl_leave_scope(i32 noundef %206) #14
  br label %209

209:                                              ; preds = %208, %197
  %210 = icmp eq ptr %199, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %209
  %212 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %199) #15
  store i32 %130, ptr %212, align 4, !tbaa !23
  %213 = icmp eq i32 %130, 0
  %214 = select i1 %213, ptr %199, ptr null
  br label %215

215:                                              ; preds = %211, %209
  %216 = phi ptr [ null, %209 ], [ %214, %211 ]
  %217 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %218 = getelementptr inbounds %struct.stackinfo, ptr %217, i64 0, i32 4
  %219 = load i32, ptr %218, align 8, !tbaa !20
  %220 = add nsw i32 %219, -1
  store i32 %220, ptr %218, align 8, !tbaa !20
  store ptr %29, ptr @PL_curpm, align 8, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %216) #15
  %221 = load ptr, ptr %128, align 8, !tbaa !21
  br label %222

222:                                              ; preds = %0, %215
  %223 = phi ptr [ %221, %215 ], [ null, %0 ]
  ret ptr %223
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_entersub() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  %7 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr %7, ptr %1, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !37
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36) #14
  br label %656

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !133
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %149

31:                                               ; preds = %21, %16, %27
  %32 = trunc i32 %18 to i8
  switch i8 %32, label %52 [
    i8 9, label %33
    i8 10, label %49
    i8 12, label %147
    i8 11, label %147
    i8 13, label %149
  ]

33:                                               ; preds = %49, %31
  %34 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !133
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %149

43:                                               ; preds = %33, %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %44 = call ptr @Perl_sv_2cv(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %149

46:                                               ; preds = %43
  call void @Perl_push_scope() #14
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %47 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  store i64 %47, ptr @PL_tmps_floor, align 8, !tbaa !22
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  br label %190

49:                                               ; preds = %31
  %50 = and i32 %18, 49152
  %51 = icmp eq i32 %50, 32768
  br i1 %51, label %33, label %52

52:                                               ; preds = %49, %31
  %53 = icmp eq ptr %7, @PL_sv_yes
  br i1 %53, label %54, label %68

54:                                               ; preds = %52
  br i1 %12, label %61, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %57 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %58 = load i32, ptr %57, align 4, !tbaa !23
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  br label %63

61:                                               ; preds = %54
  %62 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi ptr [ %62, %61 ], [ %57, %55 ]
  %65 = phi ptr [ %6, %61 ], [ %60, %55 ]
  %66 = getelementptr inbounds i32, ptr %64, i64 -1
  store ptr %66, ptr @PL_markstack_ptr, align 8
  store ptr %65, ptr @PL_stack_sp, align 8, !tbaa !6
  %67 = load ptr, ptr %8, align 8, !tbaa !14
  br label %656

68:                                               ; preds = %52
  %69 = and i32 %18, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @Perl_mg_get(ptr noundef nonnull %7) #14
  %73 = load i32, ptr %17, align 4, !tbaa !28
  br label %74

74:                                               ; preds = %68, %71
  %75 = phi i32 [ %18, %68 ], [ %73, %71 ]
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !28
  %83 = and i32 %82, 1048576
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %141, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %80, align 8, !tbaa !32
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  %88 = getelementptr inbounds %struct.hv, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !55
  %90 = and i32 %89, 268435456
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %85
  %93 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %7, i32 noundef 5) #14
  store ptr %93, ptr %1, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !21
  br label %141

96:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %97 = and i32 %75, 63232
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %75, 255
  %100 = icmp eq i32 %99, 8
  %101 = or i1 %98, %100
  %102 = and i32 %75, 16777471
  %103 = icmp eq i32 %102, 16777226
  %104 = or i1 %103, %101
  br i1 %104, label %107, label %105

105:                                              ; preds = %96
  %106 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.37) #14
  br label %131

107:                                              ; preds = %96
  %108 = and i32 %75, 2098176
  %109 = icmp eq i32 %108, 1024
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load ptr, ptr %7, align 8, !tbaa !32
  %112 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !33
  store i64 %113, ptr %4, align 8, !tbaa !22
  %114 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !21
  br label %118

116:                                              ; preds = %107
  %117 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 32) #14
  br label %118

118:                                              ; preds = %116, %110
  %119 = phi ptr [ %115, %110 ], [ %117, %116 ]
  %120 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct.op, ptr %120, i64 0, i32 6
  %122 = load i8, ptr %121, align 1, !tbaa !24
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %1, align 8, !tbaa !6
  %127 = load i64, ptr %4, align 8, !tbaa !22
  %128 = icmp ugt i64 %127, 32
  %129 = select i1 %128, ptr @.str.26, ptr @.str.1
  %130 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %126, ptr noundef nonnull %129) #14
  br label %131

131:                                              ; preds = %125, %105
  %132 = phi ptr [ %106, %105 ], [ %130, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %656

133:                                              ; preds = %118
  %134 = load i64, ptr %4, align 8, !tbaa !22
  %135 = load ptr, ptr %1, align 8, !tbaa !6
  %136 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !28
  %138 = and i32 %137, 536870912
  %139 = or disjoint i32 %138, 1
  %140 = call ptr @Perl_get_cvn_flags(ptr noundef %119, i64 noundef %134, i32 noundef %139) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %149

141:                                              ; preds = %78, %85, %92
  %142 = phi ptr [ %80, %78 ], [ %80, %85 ], [ %95, %92 ]
  %143 = getelementptr inbounds %struct.cv, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !134
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %149, label %147

147:                                              ; preds = %141, %31, %31
  %148 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36) #14
  br label %656

149:                                              ; preds = %39, %133, %31, %43, %141, %27
  %150 = phi ptr [ %29, %27 ], [ %142, %141 ], [ %140, %133 ], [ %44, %43 ], [ %7, %31 ], [ %41, %39 ]
  call void @Perl_push_scope() #14
  br label %151

151:                                              ; preds = %218, %149
  %152 = phi ptr [ %150, %149 ], [ %219, %218 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !87
  %154 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 12
  %155 = load i32, ptr %154, align 4, !tbaa !89
  %156 = and i32 %155, 96
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.39) #14
  br label %656

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %221

164:                                              ; preds = %160
  %165 = and i32 %155, 65536
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !21
  %170 = icmp eq ptr %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = call ptr @Perl_cv_name(ptr noundef nonnull %152, ptr noundef null, i32 noundef 0) #14
  %173 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.40, ptr noundef %172) #14
  br label %656

174:                                              ; preds = %167, %164
  %175 = and i32 %155, 128
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 7
  %179 = load ptr, ptr %178, align 8, !tbaa !21
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %177, %174
  %182 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41) #14
  br label %656

183:                                              ; preds = %177
  %184 = call fastcc ptr @S_CvGV(ptr noundef nonnull %152) #15
  store ptr %184, ptr %2, align 8, !tbaa !6
  %185 = getelementptr inbounds %struct.gv, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !21
  %187 = getelementptr inbounds %struct.gp, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !39
  %189 = icmp eq ptr %152, %188
  br i1 %189, label %190, label %218

190:                                              ; preds = %183, %46
  %191 = phi ptr [ %184, %183 ], [ %48, %46 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !135
  %193 = getelementptr inbounds %struct.xpvgv, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !21
  %195 = getelementptr inbounds %struct.xpvgv, ptr %192, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !21
  %197 = getelementptr inbounds %struct.hek, ptr %196, i64 0, i32 2
  %198 = getelementptr inbounds %struct.hek, ptr %196, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !136
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %197, i64 %200
  %202 = getelementptr inbounds i8, ptr %201, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !21
  %204 = and i8 %203, 1
  %205 = zext nneg i8 %204 to i32
  %206 = shl nuw nsw i32 %205, 29
  %207 = call ptr @Perl_gv_autoload_pvn(ptr noundef %194, ptr noundef nonnull %197, i64 noundef %200, i32 noundef %206) #14
  %208 = icmp eq ptr %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %190
  %210 = getelementptr inbounds %struct.gv, ptr %207, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !21
  %212 = getelementptr inbounds %struct.gp, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !39
  br label %218

214:                                              ; preds = %218, %190
  %215 = call ptr @Perl_sv_newmortal() #14
  %216 = load ptr, ptr %2, align 8, !tbaa !6
  call void @Perl_gv_efullname4(ptr noundef %215, ptr noundef %216, ptr noundef null, i1 noundef zeroext true) #14
  %217 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.40, ptr noundef %215) #14
  br label %656

218:                                              ; preds = %183, %209
  %219 = phi ptr [ %213, %209 ], [ %188, %183 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %214, label %151

221:                                              ; preds = %160
  %222 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %223 = getelementptr inbounds %struct.op, ptr %222, i64 0, i32 6
  %224 = load i8, ptr %223, align 1, !tbaa !24
  %225 = and i8 %224, 64
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %278, label %227

227:                                              ; preds = %221
  %228 = load ptr, ptr @PL_DBsub, align 8, !tbaa !6
  %229 = getelementptr inbounds %struct.gv, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !21
  %231 = getelementptr inbounds %struct.gp, ptr %230, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !39
  %233 = icmp ne ptr %232, null
  %234 = and i32 %155, 512
  %235 = icmp eq i32 %234, 0
  %236 = and i1 %235, %233
  br i1 %236, label %237, label %278

237:                                              ; preds = %227
  call void @Perl_get_db_sub(ptr noundef nonnull %1, ptr noundef nonnull %152) #14
  %238 = load ptr, ptr %152, align 8, !tbaa !87
  %239 = getelementptr inbounds %struct.xpvcv, ptr %238, i64 0, i32 12
  %240 = load i32, ptr %239, align 4, !tbaa !89
  %241 = and i32 %240, 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  store ptr %244, ptr @PL_curcopdb, align 8, !tbaa !6
  %245 = load ptr, ptr %152, align 8, !tbaa !87
  %246 = getelementptr inbounds %struct.xpvcv, ptr %245, i64 0, i32 12
  %247 = load i32, ptr %246, align 4, !tbaa !89
  br label %248

248:                                              ; preds = %243, %237
  %249 = phi i32 [ %247, %243 ], [ %240, %237 ]
  %250 = and i32 %249, 2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  %253 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.42, i64 noundef 8, i32 noundef 2, i32 noundef 13) #14
  %254 = getelementptr inbounds %struct.gv, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !21
  %256 = getelementptr inbounds %struct.gp, ptr %255, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !39
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %248, %252
  %260 = load ptr, ptr @PL_DBsub, align 8, !tbaa !6
  %261 = getelementptr inbounds %struct.gv, ptr %260, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !21
  %263 = getelementptr inbounds %struct.gp, ptr %262, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !39
  %265 = icmp eq ptr %264, null
  br i1 %265, label %276, label %266

266:                                              ; preds = %252, %259
  %267 = phi ptr [ %264, %259 ], [ %257, %252 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !87
  %269 = getelementptr inbounds %struct.xpvcv, ptr %268, i64 0, i32 6
  %270 = load ptr, ptr %269, align 8, !tbaa !21
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.xpvcv, ptr %268, i64 0, i32 5
  %274 = load ptr, ptr %273, align 8, !tbaa !21
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %272, %259
  %277 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.43) #14
  br label %656

278:                                              ; preds = %266, %272, %221, %227
  %279 = phi ptr [ %268, %266 ], [ %268, %272 ], [ %153, %227 ], [ %153, %221 ]
  %280 = phi ptr [ %267, %266 ], [ %267, %272 ], [ %152, %227 ], [ %152, %221 ]
  %281 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %282 = getelementptr inbounds %struct.op, ptr %281, i64 0, i32 5
  %283 = load i8, ptr %282, align 2, !tbaa !37
  %284 = and i8 %283, 3
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %278
  %287 = zext nneg i8 %284 to i32
  br label %291

288:                                              ; preds = %278
  %289 = call i32 @Perl_block_gimme() #14
  %290 = load ptr, ptr %280, align 8, !tbaa !87
  br label %291

291:                                              ; preds = %288, %286
  %292 = phi ptr [ %279, %286 ], [ %290, %288 ]
  %293 = phi i32 [ %287, %286 ], [ %289, %288 ]
  %294 = getelementptr inbounds %struct.xpvcv, ptr %292, i64 0, i32 12
  %295 = load i32, ptr %294, align 4, !tbaa !89
  %296 = and i32 %295, 8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %512

298:                                              ; preds = %291
  %299 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %300 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %301 = getelementptr inbounds i32, ptr %300, i64 -1
  store ptr %301, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %302 = load i32, ptr %300, align 4, !tbaa !23
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %299, i64 %303
  %305 = load ptr, ptr %280, align 8, !tbaa !87
  %306 = getelementptr inbounds %struct.xpvcv, ptr %305, i64 0, i32 9
  %307 = load ptr, ptr %306, align 8, !tbaa !21
  %308 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %309 = getelementptr inbounds %struct.stackinfo, ptr %308, i64 0, i32 4
  %310 = load i32, ptr %309, align 8, !tbaa !20
  %311 = getelementptr inbounds %struct.stackinfo, ptr %308, i64 0, i32 5
  %312 = load i32, ptr %311, align 4, !tbaa !128
  %313 = icmp slt i32 %310, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %298
  %315 = add nsw i32 %310, 1
  store i32 %315, ptr %309, align 8, !tbaa !20
  br label %320

316:                                              ; preds = %298
  %317 = call i32 @Perl_cxinc() #14
  %318 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !6
  %319 = getelementptr inbounds %struct.stackinfo, ptr %318, i64 0, i32 4
  store i32 %317, ptr %319, align 8, !tbaa !20
  br label %320

320:                                              ; preds = %316, %314
  %321 = phi i32 [ %317, %316 ], [ %315, %314 ]
  %322 = phi ptr [ %318, %316 ], [ %308, %314 ]
  %323 = getelementptr inbounds %struct.stackinfo, ptr %322, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !18
  %325 = sext i32 %321 to i64
  %326 = getelementptr inbounds %struct.context, ptr %324, i64 %325
  store i8 8, ptr %326, align 8, !tbaa !21
  %327 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %328 = ptrtoint ptr %304 to i64
  %329 = ptrtoint ptr %327 to i64
  %330 = sub i64 %328, %329
  %331 = lshr exact i64 %330, 3
  %332 = trunc i64 %331 to i32
  %333 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 3
  store i32 %332, ptr %333, align 4, !tbaa !21
  %334 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %335 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 4
  store ptr %334, ptr %335, align 8, !tbaa !21
  %336 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %337 = load ptr, ptr @PL_markstack, align 8, !tbaa !6
  %338 = ptrtoint ptr %336 to i64
  %339 = ptrtoint ptr %337 to i64
  %340 = sub i64 %338, %339
  %341 = lshr exact i64 %340, 2
  %342 = trunc i64 %341 to i32
  %343 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 5
  store i32 %342, ptr %343, align 8, !tbaa !21
  %344 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !23
  %345 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 6
  store i32 %344, ptr %345, align 4, !tbaa !21
  %346 = load ptr, ptr @PL_curpm, align 8, !tbaa !6
  %347 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 7
  store ptr %346, ptr %347, align 8, !tbaa !21
  %348 = trunc i32 %293 to i8
  %349 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 1
  store i8 %348, ptr %349, align 1, !tbaa !21
  %350 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %351 = getelementptr inbounds %struct.op, ptr %350, i64 0, i32 5
  %352 = load i8, ptr %351, align 2, !tbaa !37
  %353 = and i8 %352, 3
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %320
  %356 = getelementptr inbounds %struct.op, ptr %350, i64 0, i32 6
  %357 = load i8, ptr %356, align 1, !tbaa !24
  %358 = and i8 %357, -127
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = call i32 @Perl_was_lvalue_sub() #14
  %362 = and i32 %361, 207
  %363 = or disjoint i32 %362, 48
  %364 = load i8, ptr %326, align 8, !tbaa !21
  br label %365

365:                                              ; preds = %360, %355, %320
  %366 = phi i8 [ 8, %320 ], [ %364, %360 ], [ 8, %355 ]
  %367 = phi i32 [ 177, %320 ], [ %363, %360 ], [ 48, %355 ]
  %368 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8
  %369 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8, i32 0, i32 1
  store ptr %280, ptr %369, align 8, !tbaa !21
  %370 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %280) #15
  %371 = load i32, ptr %370, align 4, !tbaa !23
  %372 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8, i32 0, i32 4
  store i32 %371, ptr %372, align 8, !tbaa !21
  %373 = lshr exact i8 %11, 1
  %374 = or i8 %366, %373
  store i8 %374, ptr %326, align 8, !tbaa !21
  store ptr null, ptr %368, align 8, !tbaa !21
  %375 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %280) #15
  %376 = load i32, ptr %375, align 4, !tbaa !23
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %365
  %379 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !38
  %381 = add i32 %380, 2
  store i32 %381, ptr %379, align 8, !tbaa !38
  call void @Perl_save_pushptr(ptr noundef nonnull %280, i32 noundef 11) #14
  br label %382

382:                                              ; preds = %378, %365
  %383 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %384 = getelementptr inbounds %struct.op, ptr %383, i64 0, i32 6
  %385 = load i8, ptr %384, align 1, !tbaa !24
  %386 = zext i8 %385 to i32
  %387 = and i32 %367, %386
  %388 = trunc i32 %387 to i16
  %389 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 2
  store i16 %388, ptr %389, align 2, !tbaa !21
  %390 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %391 = load ptr, ptr %390, align 8, !tbaa !14
  store ptr %391, ptr %368, align 8, !tbaa !21
  %392 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %280) #15
  %393 = load i32, ptr %392, align 4, !tbaa !23
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %392, align 4, !tbaa !23
  %395 = icmp sgt i32 %393, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %382
  call void @Perl_pad_push(ptr noundef %307, i32 noundef %394) #14
  br label %397

397:                                              ; preds = %382, %396
  %398 = load ptr, ptr @PL_comppad, align 8, !tbaa !6
  call void @Perl_save_pushptr(ptr noundef %398, i32 noundef 7) #14
  %399 = getelementptr inbounds %struct.padlist, ptr %307, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !138
  %401 = sext i32 %394 to i64
  %402 = getelementptr inbounds ptr, ptr %400, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !6
  store ptr %403, ptr @PL_comppad, align 8, !tbaa !6
  %404 = getelementptr inbounds %struct.av, ptr %403, i64 0, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !21
  store ptr %405, ptr @PL_curpad, align 8, !tbaa !6
  br i1 %12, label %479, label %406

406:                                              ; preds = %397
  %407 = load ptr, ptr %405, align 8, !tbaa !6
  %408 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 2
  %409 = load i32, ptr %408, align 4, !tbaa !50
  %410 = and i32 %409, 1073741824
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %406
  call void @Perl_av_clear(ptr noundef nonnull %407) #14
  %413 = load i32, ptr %408, align 4, !tbaa !50
  %414 = and i32 %413, 1073741823
  %415 = or disjoint i32 %414, -2147483648
  store i32 %415, ptr %408, align 4, !tbaa !50
  br label %416

416:                                              ; preds = %406, %412
  %417 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %418 = getelementptr inbounds %struct.gv, ptr %417, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !21
  %420 = getelementptr inbounds %struct.gp, ptr %419, i64 0, i32 6
  %421 = load ptr, ptr %420, align 8, !tbaa !6
  %422 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8, i32 0, i32 2
  store ptr %421, ptr %422, align 8, !tbaa !21
  %423 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 1
  %424 = load i32, ptr %423, align 8, !tbaa !140
  %425 = add i32 %424, 1
  store i32 %425, ptr %423, align 8, !tbaa !140
  store ptr %407, ptr %420, align 8, !tbaa !6
  %426 = load ptr, ptr @PL_comppad, align 8, !tbaa !6
  %427 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8, i32 0, i32 5
  store ptr %426, ptr %427, align 8, !tbaa !21
  %428 = getelementptr inbounds %struct.block, ptr %326, i64 0, i32 8, i32 0, i32 3
  store ptr %407, ptr %428, align 8, !tbaa !21
  %429 = ptrtoint ptr %6 to i64
  %430 = sub i64 %429, %328
  %431 = ashr exact i64 %430, 3
  %432 = add nsw i64 %431, -1
  %433 = load ptr, ptr %407, align 8, !tbaa !46
  %434 = getelementptr inbounds %struct.xpvav, ptr %433, i64 0, i32 3
  %435 = load i64, ptr %434, align 8, !tbaa !66
  %436 = icmp sgt i64 %432, %435
  br i1 %436, label %440, label %437

437:                                              ; preds = %416
  %438 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !21
  br label %447

440:                                              ; preds = %416
  %441 = getelementptr inbounds %struct.xpvav, ptr %433, i64 0, i32 4
  %442 = load ptr, ptr %441, align 8, !tbaa !132
  store i64 %432, ptr %434, align 8, !tbaa !66
  %443 = call ptr @Perl_safesysrealloc(ptr noundef %442, i64 noundef %430) #14
  %444 = load ptr, ptr %407, align 8, !tbaa !46
  %445 = getelementptr inbounds %struct.xpvav, ptr %444, i64 0, i32 4
  store ptr %443, ptr %445, align 8, !tbaa !132
  %446 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 3
  store ptr %443, ptr %446, align 8, !tbaa !21
  br label %447

447:                                              ; preds = %437, %440
  %448 = phi ptr [ %439, %437 ], [ %443, %440 ]
  %449 = getelementptr inbounds ptr, ptr %304, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %448, ptr nonnull align 1 %449, i64 %430, i1 false)
  %450 = load ptr, ptr %407, align 8, !tbaa !46
  %451 = getelementptr inbounds %struct.xpvav, ptr %450, i64 0, i32 2
  store i64 %432, ptr %451, align 8, !tbaa !48
  %452 = icmp eq ptr %6, %304
  br i1 %452, label %479, label %453

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.av, ptr %407, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !21
  br label %456

456:                                              ; preds = %453, %476
  %457 = phi i64 [ %459, %476 ], [ %431, %453 ]
  %458 = phi ptr [ %477, %476 ], [ %455, %453 ]
  %459 = add nsw i64 %457, -1
  %460 = load ptr, ptr %458, align 8, !tbaa !6
  %461 = icmp eq ptr %460, null
  br i1 %461, label %476, label %462

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.sv, ptr %460, i64 0, i32 2
  %464 = load i32, ptr %463, align 4, !tbaa !28
  %465 = and i32 %464, 131072
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %462
  %468 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %460, i32 noundef 1538) #14
  store ptr %468, ptr %458, align 8, !tbaa !6
  %469 = getelementptr inbounds %struct.sv, ptr %468, i64 0, i32 2
  %470 = load i32, ptr %469, align 4, !tbaa !28
  br label %471

471:                                              ; preds = %467, %462
  %472 = phi i32 [ %470, %467 ], [ %464, %462 ]
  %473 = phi ptr [ %468, %467 ], [ %460, %462 ]
  %474 = getelementptr inbounds %struct.sv, ptr %473, i64 0, i32 2
  %475 = and i32 %472, -524289
  store i32 %475, ptr %474, align 4, !tbaa !28
  br label %476

476:                                              ; preds = %471, %456
  %477 = getelementptr inbounds ptr, ptr %458, i64 1
  %478 = icmp eq i64 %459, 0
  br i1 %478, label %479, label %456, !llvm.loop !141

479:                                              ; preds = %476, %447, %397
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %480 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  store i64 %480, ptr @PL_tmps_floor, align 8, !tbaa !22
  %481 = load i16, ptr %389, align 2, !tbaa !21
  %482 = and i16 %481, 129
  %483 = icmp eq i16 %482, 128
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = load ptr, ptr %280, align 8, !tbaa !87
  %486 = getelementptr inbounds %struct.xpvcv, ptr %485, i64 0, i32 12
  %487 = load i32, ptr %486, align 4, !tbaa !89
  %488 = and i32 %487, 2
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %484
  %491 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.44) #14
  br label %656

492:                                              ; preds = %479, %484
  %493 = icmp eq i32 %394, 100
  br i1 %493, label %494, label %508

494:                                              ; preds = %492
  %495 = call zeroext i1 @Perl_ckwarn(i32 noundef 18) #14
  br i1 %495, label %496, label %508

496:                                              ; preds = %494
  %497 = load i32, ptr @PL_perldb, align 4, !tbaa !23
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %507, label %500

500:                                              ; preds = %496
  %501 = load ptr, ptr @PL_DBsub, align 8, !tbaa !6
  %502 = getelementptr inbounds %struct.gv, ptr %501, i64 0, i32 3
  %503 = load ptr, ptr %502, align 8, !tbaa !21
  %504 = getelementptr inbounds %struct.gp, ptr %503, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !39
  %506 = icmp eq ptr %280, %505
  br i1 %506, label %508, label %507

507:                                              ; preds = %496, %500
  call void @Perl_sub_crush_depth(ptr noundef nonnull %280) #15
  br label %508

508:                                              ; preds = %492, %494, %500, %507
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !6
  %509 = load ptr, ptr %280, align 8, !tbaa !87
  %510 = getelementptr inbounds %struct.xpvcv, ptr %509, i64 0, i32 5
  %511 = load ptr, ptr %510, align 8, !tbaa !21
  br label %656

512:                                              ; preds = %291
  %513 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %514 = load i32, ptr %513, align 4, !tbaa !23
  %515 = sext i32 %514 to i64
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %516 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !22
  store i64 %516, ptr @PL_tmps_floor, align 8, !tbaa !22
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !6
  %517 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %518 = getelementptr inbounds %struct.op, ptr %517, i64 0, i32 6
  %519 = load i8, ptr %518, align 1, !tbaa !24
  %520 = getelementptr inbounds %struct.op, ptr %517, i64 0, i32 5
  %521 = load i8, ptr %520, align 2, !tbaa !37
  %522 = and i8 %521, 3
  %523 = icmp eq i8 %522, 0
  %524 = and i8 %519, -127
  br i1 %523, label %525, label %530

525:                                              ; preds = %512
  %526 = icmp eq i8 %524, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %525
  %528 = call i32 @Perl_is_lvalue_sub() #14
  %529 = and i32 %528, 255
  br label %530

530:                                              ; preds = %512, %527, %525
  %531 = phi i8 [ %524, %527 ], [ 0, %525 ], [ %524, %512 ]
  %532 = phi i32 [ %529, %527 ], [ 0, %525 ], [ 129, %512 ]
  %533 = zext i8 %531 to i32
  %534 = and i32 %532, %533
  %535 = icmp eq i32 %534, 128
  br i1 %535, label %536, label %544

536:                                              ; preds = %530
  %537 = load ptr, ptr %280, align 8, !tbaa !87
  %538 = getelementptr inbounds %struct.xpvcv, ptr %537, i64 0, i32 12
  %539 = load i32, ptr %538, align 4, !tbaa !89
  %540 = and i32 %539, 2
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %536
  %543 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.44) #14
  br label %656

544:                                              ; preds = %530, %536
  br i1 %12, label %545, label %606

545:                                              ; preds = %544
  %546 = load ptr, ptr @PL_defgv, align 8, !tbaa !6
  %547 = getelementptr inbounds %struct.gv, ptr %546, i64 0, i32 3
  %548 = load ptr, ptr %547, align 8, !tbaa !21
  %549 = getelementptr inbounds %struct.gp, ptr %548, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !42
  %551 = icmp eq ptr %550, null
  br i1 %551, label %606, label %552

552:                                              ; preds = %545
  %553 = getelementptr inbounds %struct.sv, ptr %550, i64 0, i32 2
  %554 = load i32, ptr %553, align 4, !tbaa !28
  %555 = and i32 %554, 8388608
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %552
  %558 = call i32 @Perl_mg_size(ptr noundef nonnull %550) #14
  %559 = sext i32 %558 to i64
  br label %564

560:                                              ; preds = %552
  %561 = load ptr, ptr %550, align 8, !tbaa !46
  %562 = getelementptr inbounds %struct.xpvav, ptr %561, i64 0, i32 2
  %563 = load i64, ptr %562, align 8, !tbaa !48
  br label %564

564:                                              ; preds = %560, %557
  %565 = phi i64 [ %559, %557 ], [ %563, %560 ]
  %566 = add i64 %565, 1
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %631, label %568

568:                                              ; preds = %564
  %569 = load i32, ptr %553, align 4, !tbaa !50
  %570 = and i32 %569, 8388608
  %571 = icmp eq i32 %570, 0
  %572 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %573 = ptrtoint ptr %572 to i64
  %574 = ptrtoint ptr %6 to i64
  %575 = sub i64 %573, %574
  %576 = ashr exact i64 %575, 3
  %577 = icmp sgt i64 %576, %565
  br i1 %577, label %580, label %578

578:                                              ; preds = %568
  %579 = call ptr @Perl_stack_grow(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef %566) #14
  br label %580

580:                                              ; preds = %568, %578
  %581 = phi ptr [ %579, %578 ], [ %6, %568 ]
  %582 = icmp slt i64 %565, 0
  br i1 %582, label %604, label %583

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.av, ptr %550, i64 0, i32 3
  br label %585

585:                                              ; preds = %583, %599
  %586 = phi i64 [ 0, %583 ], [ %601, %599 ]
  br i1 %571, label %590, label %587

587:                                              ; preds = %585
  %588 = call ptr @Perl_av_fetch(ptr noundef nonnull %550, i64 noundef %586, i32 noundef 0) #14
  %589 = icmp eq ptr %588, null
  br i1 %589, label %597, label %593

590:                                              ; preds = %585
  %591 = load ptr, ptr %584, align 8, !tbaa !21
  %592 = getelementptr inbounds ptr, ptr %591, i64 %586
  br label %593

593:                                              ; preds = %587, %590
  %594 = phi ptr [ %592, %590 ], [ %588, %587 ]
  %595 = load ptr, ptr %594, align 8, !tbaa !6
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %599

597:                                              ; preds = %587, %593
  %598 = call ptr @Perl_newSVavdefelem(ptr noundef nonnull %550, i64 noundef %586, i1 noundef zeroext true) #14
  br label %599

599:                                              ; preds = %593, %597
  %600 = phi ptr [ %598, %597 ], [ %595, %593 ]
  %601 = add nuw i64 %586, 1
  %602 = getelementptr inbounds ptr, ptr %581, i64 %601
  store ptr %600, ptr %602, align 8, !tbaa !6
  %603 = icmp eq i64 %586, %565
  br i1 %603, label %604, label %585, !llvm.loop !142

604:                                              ; preds = %599, %580
  %605 = getelementptr inbounds ptr, ptr %581, i64 %566
  store ptr %605, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %631

606:                                              ; preds = %544, %545
  %607 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %608 = getelementptr inbounds ptr, ptr %607, i64 %515
  %609 = icmp eq ptr %6, %608
  br i1 %609, label %631, label %610

610:                                              ; preds = %606
  %611 = ptrtoint ptr %6 to i64
  %612 = ptrtoint ptr %608 to i64
  %613 = sub i64 %611, %612
  %614 = ashr exact i64 %613, 3
  br label %615

615:                                              ; preds = %610, %629
  %616 = phi i64 [ %618, %629 ], [ %614, %610 ]
  %617 = phi ptr [ %619, %629 ], [ %608, %610 ]
  %618 = add nsw i64 %616, -1
  %619 = getelementptr inbounds ptr, ptr %617, i64 1
  %620 = load ptr, ptr %619, align 8, !tbaa !6
  %621 = icmp eq ptr %620, null
  br i1 %621, label %629, label %622

622:                                              ; preds = %615
  %623 = getelementptr inbounds %struct.sv, ptr %620, i64 0, i32 2
  %624 = load i32, ptr %623, align 4, !tbaa !28
  %625 = and i32 %624, 131072
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %629, label %627

627:                                              ; preds = %622
  %628 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %620, i32 noundef 1538) #14
  store ptr %628, ptr %619, align 8, !tbaa !6
  br label %629

629:                                              ; preds = %627, %622, %615
  %630 = icmp eq i64 %618, 0
  br i1 %630, label %631, label %615, !llvm.loop !143

631:                                              ; preds = %629, %606, %564, %604
  %632 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !6
  %633 = icmp eq ptr %632, null
  br i1 %633, label %636, label %634

634:                                              ; preds = %631
  call void @Perl_save_vptr(ptr noundef nonnull @PL_curcop) #14
  %635 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !6
  store ptr %635, ptr @PL_curcop, align 8, !tbaa !6
  store ptr null, ptr @PL_curcopdb, align 8, !tbaa !6
  br label %636

636:                                              ; preds = %631, %634
  %637 = load ptr, ptr %280, align 8, !tbaa !87
  %638 = getelementptr inbounds %struct.xpvcv, ptr %637, i64 0, i32 6
  %639 = load ptr, ptr %638, align 8, !tbaa !21
  call void %639(ptr noundef nonnull %280) #14
  %640 = icmp eq i32 %293, 2
  br i1 %640, label %641, label %653

641:                                              ; preds = %636
  %642 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %643 = getelementptr inbounds ptr, ptr %642, i64 %515
  %644 = getelementptr inbounds ptr, ptr %643, i64 1
  %645 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %646 = icmp eq ptr %644, %645
  br i1 %646, label %653, label %647

647:                                              ; preds = %641
  %648 = icmp ugt ptr %644, %645
  br i1 %648, label %651, label %649

649:                                              ; preds = %647
  %650 = load ptr, ptr %645, align 8, !tbaa !6
  br label %651

651:                                              ; preds = %647, %649
  %652 = phi ptr [ %650, %649 ], [ @PL_sv_undef, %647 ]
  store ptr %652, ptr %644, align 8, !tbaa !6
  store ptr %644, ptr @PL_stack_sp, align 8, !tbaa !6
  br label %653

653:                                              ; preds = %641, %651, %636
  call void @Perl_pop_scope() #14
  %654 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %655 = load ptr, ptr %654, align 8, !tbaa !14
  br label %656

656:                                              ; preds = %131, %542, %653, %490, %508, %276, %214, %181, %171, %158, %147, %63, %14
  %657 = phi ptr [ %277, %276 ], [ %173, %171 ], [ %182, %181 ], [ %217, %214 ], [ %159, %158 ], [ %67, %63 ], [ %148, %147 ], [ %15, %14 ], [ %511, %508 ], [ %491, %490 ], [ %655, %653 ], [ %543, %542 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %657
}

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !89
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #14
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_get_db_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sub_crush_depth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !89
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.45) #14
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @Perl_cv_name(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.46, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_aelem() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !21
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !37
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !24
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @Perl_is_lvalue_sub() #14
  %29 = icmp ne i32 %28, 0
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !6
  br label %31

31:                                               ; preds = %22, %27, %14
  %32 = phi ptr [ %17, %14 ], [ %17, %22 ], [ %30, %27 ]
  %33 = phi i1 [ true, %14 ], [ false, %22 ], [ %29, %27 ]
  %34 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !24
  %36 = and i8 %35, 64
  %37 = icmp sgt i8 %35, -1
  %38 = load i32, ptr %4, align 4, !tbaa !28
  %39 = and i32 %38, 2099200
  %40 = icmp eq i32 %39, 2048
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !28
  %46 = and i32 %45, 1048576
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %43, align 8, !tbaa !32
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !55
  %53 = and i32 %52, 268435456
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %41
  %56 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.29, ptr noundef nonnull %3) #14
  br label %58

58:                                               ; preds = %31, %48, %55, %57
  %59 = getelementptr inbounds %struct.av, ptr %16, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !50
  %61 = and i32 %60, 255
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  br label %156

66:                                               ; preds = %58
  br i1 %37, label %95, label %67

67:                                               ; preds = %66
  %68 = and i32 %60, 8388608
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @Perl_mg_find(ptr noundef nonnull %16, i32 noundef 80) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.magic, ptr %71, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !113
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = tail call ptr @Perl_newRV(ptr noundef nonnull %16) #14
  %79 = tail call ptr @Perl_sv_2mortal(ptr noundef %78) #14
  br label %80

80:                                               ; preds = %73, %77
  %81 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !21
  %84 = load ptr, ptr %83, align 8, !tbaa !32
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %85, ptr noundef nonnull @.str.24, i32 noundef 1) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %85, ptr noundef nonnull @.str.25, i32 noundef 1) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90, %70, %67
  %94 = tail call zeroext i1 @Perl_av_exists(ptr noundef nonnull %16, i64 noundef %15) #14
  br label %95

95:                                               ; preds = %80, %87, %90, %93, %66
  %96 = phi i1 [ true, %66 ], [ %94, %93 ], [ true, %90 ], [ true, %87 ], [ true, %80 ]
  %97 = icmp eq i8 %36, 0
  %98 = select i1 %33, i1 %97, i1 false
  %99 = zext i1 %98 to i32
  %100 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %16, i64 noundef %15, i32 noundef %99) #14
  %101 = icmp eq ptr %100, null
  br i1 %33, label %102, label %137

102:                                              ; preds = %95
  br i1 %101, label %106, label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %100, align 8, !tbaa !6
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %103, %102
  br i1 %97, label %107, label %109

107:                                              ; preds = %106
  %108 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %15) #14
  br label %156

109:                                              ; preds = %106
  %110 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %16) #15
  %111 = icmp slt i64 %15, 0
  %112 = add nsw i64 %110, %15
  %113 = icmp sgt i64 %112, -1
  %114 = select i1 %111, i1 %113, i1 false
  %115 = select i1 %114, i64 %112, i64 %15
  %116 = tail call ptr @Perl_newSVavdefelem(ptr noundef nonnull %16, i64 noundef %115, i1 noundef zeroext true) #14
  %117 = tail call ptr @Perl_sv_2mortal(ptr noundef %116) #14
  store ptr %117, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %118 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  br label %156

120:                                              ; preds = %103
  br i1 %37, label %124, label %121

121:                                              ; preds = %120
  br i1 %96, label %122, label %123

122:                                              ; preds = %121
  tail call void @Perl_save_aelem_flags(ptr noundef nonnull %16, i64 noundef %15, ptr noundef nonnull %100, i32 noundef 1) #14
  br label %135

123:                                              ; preds = %121
  tail call void @Perl_save_adelete(ptr noundef nonnull %16, i64 noundef %15) #14
  br label %135

124:                                              ; preds = %120
  %125 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct.op, ptr %125, i64 0, i32 6
  %127 = load i8, ptr %126, align 1, !tbaa !24
  %128 = and i8 %127, 48
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = zext nneg i8 %128 to i32
  %132 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %104, i32 noundef %131) #15
  store ptr %132, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %133 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  br label %156

135:                                              ; preds = %124, %122, %123
  %136 = load ptr, ptr %100, align 8, !tbaa !6
  br label %152

137:                                              ; preds = %95
  br i1 %101, label %140, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %100, align 8, !tbaa !6
  br label %140

140:                                              ; preds = %137, %138
  %141 = phi ptr [ %139, %138 ], [ @PL_sv_undef, %137 ]
  %142 = load i32, ptr %59, align 4, !tbaa !50
  %143 = and i32 %142, 8388608
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !28
  %148 = and i32 %147, 2097152
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call i32 @Perl_mg_get(ptr noundef nonnull %141) #14
  br label %152

152:                                              ; preds = %135, %150, %145, %140
  %153 = phi ptr [ %141, %150 ], [ %141, %145 ], [ %141, %140 ], [ %136, %135 ]
  store ptr %153, ptr %2, align 8, !tbaa !6
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !6
  %154 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %155 = load ptr, ptr %154, align 8, !tbaa !14
  br label %156

156:                                              ; preds = %107, %109, %152, %130, %63
  %157 = phi ptr [ %65, %63 ], [ %155, %152 ], [ %134, %130 ], [ %119, %109 ], [ %108, %107 ]
  ret ptr %157
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %26, label %14

14:                                               ; preds = %7, %0
  %15 = tail call fastcc ptr @S_opmethod_stash(ptr noundef nonnull %2) #15
  %16 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 768) #14
  %17 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !30
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  br label %26

26:                                               ; preds = %21, %14, %7
  %27 = phi ptr [ %9, %7 ], [ %25, %21 ], [ %16, %14 ]
  store ptr %27, ptr %1, align 8, !tbaa !6
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !6
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_opmethod_stash(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %5 = load i32, ptr %4, align 4, !tbaa !23
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds ptr, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ null, %10 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %43, %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, ptr noundef %0) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !28
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @Perl_mg_get(ptr noundef nonnull %15) #14
  br label %36

25:                                               ; preds = %18
  %26 = and i32 %20, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !32
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !21
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %15, i32 noundef 4096) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %207

36:                                               ; preds = %25, %28, %33, %23
  %37 = load i32, ptr %19, align 4, !tbaa !28
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !21
  br label %152

43:                                               ; preds = %36
  %44 = and i32 %37, 63232
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %37, 255
  %47 = icmp eq i32 %46, 8
  %48 = or i1 %45, %47
  %49 = and i32 %37, 16777471
  %50 = icmp eq i32 %49, 16777226
  %51 = or i1 %50, %48
  br i1 %51, label %52, label %17

52:                                               ; preds = %43
  %53 = and i32 %37, 49152
  %54 = icmp eq i32 %53, 32768
  %55 = add nsw i32 %46, -9
  %56 = icmp ult i32 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gp, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %62
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  %67 = load i32, ptr %19, align 4, !tbaa !28
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ %37, %62 ]
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load ptr, ptr %15, align 8, !tbaa !32
  %74 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 9
  %75 = load i8, ptr %74, align 8, !tbaa !114
  %76 = icmp eq i8 %75, 121
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !116
  br label %80

80:                                               ; preds = %77, %72, %68
  %81 = phi ptr [ %79, %77 ], [ %15, %72 ], [ %15, %68 ]
  %82 = tail call ptr @Perl_newRV(ptr noundef %81) #14
  %83 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #14
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %85 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %86 = load i32, ptr %85, align 4, !tbaa !23
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %83, ptr %89, align 8, !tbaa !6
  br label %152

90:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %91 = and i32 %37, 2098176
  %92 = icmp eq i32 %91, 1024
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load ptr, ptr %15, align 8, !tbaa !32
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !33
  store i64 %96, ptr %2, align 8, !tbaa !22
  %97 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !21
  br label %103

99:                                               ; preds = %90
  %100 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %15, ptr noundef nonnull %2, i32 noundef 32) #14
  %101 = load i32, ptr %19, align 4, !tbaa !28
  %102 = load i64, ptr %2, align 8, !tbaa !22
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i64 [ %96, %93 ], [ %102, %99 ]
  %105 = phi i32 [ %37, %93 ], [ %101, %99 ]
  %106 = phi ptr [ %98, %93 ], [ %100, %99 ]
  %107 = and i32 %105, 536870912
  %108 = trunc i64 %104 to i32
  %109 = or disjoint i32 %107, 4096
  %110 = call ptr @Perl_gv_stashpvn(ptr noundef %106, i32 noundef %108, i32 noundef %109) #14
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %141

112:                                              ; preds = %103
  %113 = load i64, ptr %2, align 8, !tbaa !22
  %114 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %106, i64 noundef %113, i32 noundef %107, i32 noundef 15) #14
  %115 = icmp eq ptr %114, null
  br i1 %115, label %130, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !28
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -9
  %121 = icmp ult i32 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !58
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %116, %122, %126, %112
  %131 = load i64, ptr %2, align 8, !tbaa !22
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  %134 = load i64, ptr %2, align 8, !tbaa !22
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi i64 [ %134, %133 ], [ %131, %130 ]
  %137 = trunc i64 %136 to i32
  %138 = call ptr @Perl_gv_stashpvn(ptr noundef %106, i32 noundef %137, i32 noundef %107) #14
  %139 = icmp eq ptr %138, null
  %140 = select i1 %139, ptr %15, ptr %138
  br label %141

141:                                              ; preds = %103, %135
  %142 = phi ptr [ %140, %135 ], [ %110, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %207

143:                                              ; preds = %126
  %144 = call ptr @Perl_newRV(ptr noundef nonnull %114) #14
  %145 = call ptr @Perl_sv_2mortal(ptr noundef %144) #14
  %146 = load ptr, ptr @PL_stack_base, align 8, !tbaa !6
  %147 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !6
  %148 = load i32, ptr %147, align 4, !tbaa !23
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %146, i64 %149
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  store ptr %145, ptr %151, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %155

152:                                              ; preds = %80, %40
  %153 = phi ptr [ %42, %40 ], [ %81, %80 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %181, label %155

155:                                              ; preds = %143, %152
  %156 = phi ptr [ %128, %143 ], [ %153, %152 ]
  %157 = getelementptr inbounds %struct.sv, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !28
  %159 = and i32 %158, 1048576
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %155
  %162 = and i32 %158, 49152
  %163 = icmp eq i32 %162, 32768
  br i1 %163, label %164, label %181

164:                                              ; preds = %161
  %165 = and i32 %158, 255
  %166 = add nsw i32 %165, -9
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.gv, ptr %156, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !21
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.gp, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !28
  %179 = and i32 %178, 1048576
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %168, %164, %176, %172, %161, %152
  %182 = phi ptr [ %174, %176 ], [ null, %172 ], [ %156, %161 ], [ null, %152 ], [ %156, %164 ], [ null, %168 ]
  %183 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !28
  %185 = and i32 %184, 49152
  %186 = icmp eq i32 %185, 49152
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = and i32 %184, 2098176
  %189 = icmp eq i32 %188, 1024
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !21
  br label %195

193:                                              ; preds = %187
  %194 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 34) #14
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi ptr [ %192, %190 ], [ %194, %193 ]
  %197 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %196, ptr noundef nonnull dereferenceable(4) @.str.50) #18
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 524288) #14
  br label %201

201:                                              ; preds = %181, %195, %199
  %202 = phi ptr [ %200, %199 ], [ %0, %195 ], [ %0, %181 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, ptr noundef %202) #14
  br label %203

203:                                              ; preds = %201, %176, %155
  %204 = phi ptr [ %156, %155 ], [ %174, %176 ], [ %182, %201 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !32
  %206 = load ptr, ptr %205, align 8, !tbaa !53
  br label %207

207:                                              ; preds = %141, %33, %203
  %208 = phi ptr [ %206, %203 ], [ %34, %33 ], [ %142, %141 ]
  ret ptr %208
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_named() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !55
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %63

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef nonnull %5, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %63

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !133
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !23
  %32 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = load ptr, ptr %5, align 8, !tbaa !118
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !119
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !144
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %5) #14
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !145
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !6
  br label %86

63:                                               ; preds = %10, %43, %20, %13, %0
  %64 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %5, ptr noundef %4, i32 noundef 768) #14
  %65 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %66 = ptrtoint ptr %65 to i64
  %67 = ptrtoint ptr %1 to i64
  %68 = sub i64 %66, %67
  %69 = icmp slt i64 %68, 8
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %72

72:                                               ; preds = %63, %70
  %73 = phi ptr [ %71, %70 ], [ %1, %63 ]
  %74 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !30
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = getelementptr inbounds %struct.gp, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !39
  br label %83

83:                                               ; preds = %72, %78
  %84 = phi ptr [ %82, %78 ], [ %64, %72 ]
  %85 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !6
  br label %86

86:                                               ; preds = %57, %83
  %87 = phi ptr [ %62, %57 ], [ %85, %83 ]
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !6
  %88 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %89 = load ptr, ptr %88, align 8, !tbaa !14
  ret ptr %89
}

; Function Attrs: optsize
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_super() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = load ptr, ptr @PL_curcop, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.cop, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load ptr, ptr %7, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !119
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8, !tbaa !144
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %20

20:                                               ; preds = %0, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %0 ]
  %22 = getelementptr inbounds %struct.mro_meta, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_hv_common(ptr noundef nonnull %23, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = icmp eq ptr %39, null
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !133
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @PL_sub_generation, align 4, !tbaa !23
  %47 = load ptr, ptr %9, align 8, !tbaa !21
  %48 = load ptr, ptr %7, align 8, !tbaa !118
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !119
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !144
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %57

57:                                               ; preds = %45, %55
  %58 = phi ptr [ %56, %55 ], [ %53, %45 ]
  %59 = getelementptr inbounds %struct.mro_meta, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !145
  %61 = add i32 %60, %46
  %62 = icmp eq i32 %43, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57, %41
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %1 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi ptr [ %70, %69 ], [ %1, %63 ]
  %73 = load ptr, ptr %36, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !39
  %76 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !6
  br label %100

77:                                               ; preds = %25, %57, %35, %28, %20
  %78 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %7, ptr noundef %4, i32 noundef 4864) #14
  %79 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %1 to i64
  %82 = sub i64 %80, %81
  %83 = icmp slt i64 %82, 8
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %86

86:                                               ; preds = %77, %84
  %87 = phi ptr [ %85, %84 ], [ %1, %77 ]
  %88 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !30
  %90 = and i32 %89, 255
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !21
  %95 = getelementptr inbounds %struct.gp, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  br label %97

97:                                               ; preds = %86, %92
  %98 = phi ptr [ %96, %92 ], [ %78, %86 ]
  %99 = getelementptr inbounds ptr, ptr %87, i64 1
  store ptr %98, ptr %99, align 8, !tbaa !6
  br label %100

100:                                              ; preds = %71, %97
  %101 = phi ptr [ %76, %71 ], [ %99, %97 ]
  store ptr %101, ptr @PL_stack_sp, align 8, !tbaa !6
  %102 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  ret ptr %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_redir() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #14
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = icmp eq ptr %7, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef nonnull %7, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %67

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !133
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !23
  %32 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = load ptr, ptr %7, align 8, !tbaa !118
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !119
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !144
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !145
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !6
  br label %91

63:                                               ; preds = %0
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.methop, ptr %64, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !149
  br label %67

67:                                               ; preds = %10, %43, %20, %13, %63
  %68 = phi ptr [ %66, %63 ], [ %7, %13 ], [ %7, %20 ], [ %7, %43 ], [ %7, %10 ]
  %69 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %68, ptr noundef %4, i32 noundef 768) #14
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 8
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %77

77:                                               ; preds = %67, %75
  %78 = phi ptr [ %76, %75 ], [ %1, %67 ]
  %79 = getelementptr inbounds %struct.gv, ptr %69, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !30
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.gv, ptr %69, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !21
  %86 = getelementptr inbounds %struct.gp, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !39
  br label %88

88:                                               ; preds = %77, %83
  %89 = phi ptr [ %87, %83 ], [ %69, %77 ]
  %90 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !6
  br label %91

91:                                               ; preds = %57, %88
  %92 = phi ptr [ %62, %57 ], [ %90, %88 ]
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !6
  %93 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %94 = load ptr, ptr %93, align 8, !tbaa !14
  ret ptr %94
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_redir_super() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !6
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #14
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.methop, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !149
  br label %83

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = load ptr, ptr %7, align 8, !tbaa !118
  %18 = getelementptr inbounds %struct.xpvhv, ptr %17, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !119
  %20 = getelementptr ptr, ptr %16, i64 %19
  %21 = getelementptr ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi ptr [ %25, %24 ], [ %22, %14 ]
  %28 = getelementptr inbounds %struct.mro_meta, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = icmp eq ptr %29, null
  br i1 %30, label %83, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_hv_common(ptr noundef nonnull %29, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.he, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !30
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = icmp eq ptr %45, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !133
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @PL_sub_generation, align 4, !tbaa !23
  %53 = load ptr, ptr %15, align 8, !tbaa !21
  %54 = load ptr, ptr %7, align 8, !tbaa !118
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !119
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8, !tbaa !144
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %63

63:                                               ; preds = %51, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %51 ]
  %65 = getelementptr inbounds %struct.mro_meta, ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !145
  %67 = add i32 %66, %52
  %68 = icmp eq i32 %49, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %47
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 8
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi ptr [ %76, %75 ], [ %1, %69 ]
  %79 = load ptr, ptr %42, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.gp, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !39
  %82 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %81, ptr %82, align 8, !tbaa !6
  br label %107

83:                                               ; preds = %31, %63, %41, %34, %26, %10
  %84 = phi ptr [ %7, %26 ], [ %13, %10 ], [ %7, %34 ], [ %7, %41 ], [ %7, %63 ], [ %7, %31 ]
  %85 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %84, ptr noundef %4, i32 noundef 4864) #14
  %86 = load ptr, ptr @PL_stack_max, align 8, !tbaa !6
  %87 = ptrtoint ptr %86 to i64
  %88 = ptrtoint ptr %1 to i64
  %89 = sub i64 %87, %88
  %90 = icmp slt i64 %89, 8
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %93

93:                                               ; preds = %83, %91
  %94 = phi ptr [ %92, %91 ], [ %1, %83 ]
  %95 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !30
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  %102 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !39
  br label %104

104:                                              ; preds = %93, %99
  %105 = phi ptr [ %103, %99 ], [ %85, %93 ]
  %106 = getelementptr inbounds ptr, ptr %94, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %77, %104
  %108 = phi ptr [ %82, %77 ], [ %106, %104 ]
  store ptr %108, ptr @PL_stack_sp, align 8, !tbaa !6
  %109 = load ptr, ptr @PL_op, align 8, !tbaa !6
  %110 = load ptr, ptr %109, align 8, !tbaa !14
  ret ptr %110
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(none) }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!10 = !{!11, !7, i64 40}
!11 = !{!"svop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !7, i64 40}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35}
!16 = !{!17, !17, i64 0}
!17 = !{!"_Bool", !8, i64 0}
!18 = !{!19, !7, i64 8}
!19 = !{!"stackinfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!20 = !{!19, !13, i64 32}
!21 = !{!8, !8, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!15, !8, i64 35}
!25 = !{!26, !13, i64 28}
!26 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !13, i64 67, !7, i64 72}
!27 = !{!15, !12, i64 24}
!28 = !{!29, !13, i64 12}
!29 = !{!"sv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!30 = !{!31, !13, i64 12}
!31 = !{!"gv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!32 = !{!29, !7, i64 0}
!33 = !{!34, !12, i64 16}
!34 = !{!"xpv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!15, !8, i64 34}
!38 = !{!29, !13, i64 8}
!39 = !{!26, !7, i64 16}
!40 = !{!41, !13, i64 56}
!41 = !{!"cop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !13, i64 36, !7, i64 40, !7, i64 48, !13, i64 56, !13, i64 60, !7, i64 64, !7, i64 72}
!42 = !{!26, !7, i64 40}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!47, !7, i64 0}
!47 = !{!"av", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!48 = !{!49, !12, i64 16}
!49 = !{!"xpvav", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !7, i64 32}
!50 = !{!47, !13, i64 12}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}
!53 = !{!54, !7, i64 0}
!54 = !{!"xpvmg", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!55 = !{!56, !13, i64 12}
!56 = !{!"hv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!57 = distinct !{!57, !44}
!58 = !{!26, !7, i64 8}
!59 = !{!60, !7, i64 0}
!60 = !{!"io", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!61 = !{!62, !8, i64 129}
!62 = !{!"xpvio", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 129}
!63 = !{!26, !7, i64 0}
!64 = !{!62, !8, i64 128}
!65 = distinct !{!65, !44}
!66 = !{!49, !12, i64 24}
!67 = !{!26, !7, i64 56}
!68 = !{!62, !7, i64 40}
!69 = distinct !{!69, !44}
!70 = !{!26, !7, i64 32}
!71 = !{!72, !12, i64 16}
!72 = !{!"xpvhv", !7, i64 0, !8, i64 8, !12, i64 16, !12, i64 24}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !8, i64 0}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = !{!82, !7, i64 56}
!82 = !{!"pmop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !8, i64 72, !8, i64 80, !7, i64 88}
!83 = !{!84, !7, i64 32}
!84 = !{!"regexp", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !13, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !7, i64 88, !13, i64 96, !13, i64 100, !7, i64 104, !13, i64 112, !13, i64 116, !7, i64 120, !7, i64 128, !7, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !13, i64 176, !13, i64 176, !7, i64 184}
!85 = !{!86, !7, i64 80}
!86 = !{!"regexp_engine", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!87 = !{!88, !7, i64 0}
!88 = !{!"cv", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!89 = !{!90, !13, i64 92}
!90 = !{!"xpvcv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !13, i64 88, !13, i64 92, !13, i64 96}
!91 = !{!84, !13, i64 56}
!92 = !{!84, !7, i64 40}
!93 = !{!82, !13, i64 64}
!94 = !{!95, !7, i64 0}
!95 = !{!"p5rx", !7, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!96 = !{!84, !12, i64 64}
!97 = !{!98, !12, i64 24}
!98 = !{!"magic", !7, i64 0, !7, i64 8, !74, i64 16, !8, i64 18, !8, i64 19, !12, i64 24, !7, i64 32, !7, i64 40}
!99 = !{!98, !8, i64 19}
!100 = !{!86, !7, i64 8}
!101 = !{!84, !7, i64 120}
!102 = !{!103, !12, i64 8}
!103 = !{!"regexp_paren_pair", !12, i64 0, !12, i64 8, !12, i64 16}
!104 = !{!103, !12, i64 0}
!105 = !{!84, !12, i64 80}
!106 = !{!84, !13, i64 96}
!107 = distinct !{!107, !44}
!108 = !{!98, !8, i64 18}
!109 = !{!98, !7, i64 8}
!110 = !{!111, !7, i64 0}
!111 = !{!"mgvtbl", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!112 = distinct !{!112, !44}
!113 = !{!98, !7, i64 32}
!114 = !{!115, !8, i64 72}
!115 = !{!"xpvlv", !7, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !7, i64 64, !8, i64 72, !8, i64 73}
!116 = !{!115, !7, i64 64}
!117 = !{!115, !12, i64 56}
!118 = !{!56, !7, i64 0}
!119 = !{!72, !12, i64 24}
!120 = !{!121, !13, i64 28}
!121 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52}
!122 = !{!123, !7, i64 48}
!123 = !{!"unop_aux", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !7, i64 40, !7, i64 48}
!124 = !{!125, !12, i64 24}
!125 = !{!"loop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!126 = !{!84, !12, i64 72}
!127 = distinct !{!127, !44}
!128 = !{!19, !13, i64 36}
!129 = !{!84, !7, i64 128}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44}
!132 = !{!49, !7, i64 32}
!133 = !{!26, !13, i64 24}
!134 = !{!88, !13, i64 12}
!135 = !{!31, !7, i64 0}
!136 = !{!137, !13, i64 4}
!137 = !{!"hek", !13, i64 0, !13, i64 4, !8, i64 8}
!138 = !{!139, !7, i64 8}
!139 = !{!"padlist", !12, i64 0, !7, i64 8, !13, i64 16, !13, i64 20}
!140 = !{!47, !13, i64 8}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !44}
!143 = distinct !{!143, !44}
!144 = !{!121, !7, i64 32}
!145 = !{!146, !13, i64 24}
!146 = !{!"mro_meta", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !13, i64 56}
!147 = !{!41, !7, i64 40}
!148 = !{!146, !7, i64 48}
!149 = !{!150, !7, i64 48}
!150 = !{!"methop", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !13, i64 32, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !13, i64 33, !8, i64 34, !8, i64 35, !8, i64 40, !7, i64 48}
