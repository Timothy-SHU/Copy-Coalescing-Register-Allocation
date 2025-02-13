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
%struct.av = type { ptr, i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.22 }
%union.anon.22 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.23, %union._xivu, ptr, %union.anon.24, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.23 = type { i64 }
%union.anon.24 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.15, ptr, %union.anon.16, %union.anon.17, %union.anon.18, ptr, %union.anon.19, ptr, i32, i32, i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.20, %union._xivu }
%union.anon.20 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, %union._xnvu }
%union.anon.14 = type { i64 }
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
@.str.14 = private unnamed_addr constant [16 x i8] c"panic: pp_match\00", align 1
@PL_curpm = external global ptr, align 8
@.str.15 = private unnamed_addr constant [88 x i8] c"panic: pp_match start/end pointers, i=%ld, start=%ld, end=%ld, s=%p, strend=%p, len=%lu\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"READLINE\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [44 x i8] c"glob failed (child exited with status %d%s)\00", align 1
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c", core dumped\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"$&*(){}[]'\22;\\|?<>~`\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.21 = private unnamed_addr constant [38 x i8] c"utf8 \22\\x%02X\22 does not map to Unicode\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@PL_no_helem_sv = external constant [0 x i8], align 1
@PL_no_symref_sv = external constant [0 x i8], align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@PL_no_usym = external constant [0 x i8], align 1
@PL_multideref_pc = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [23 x i8] c"Not an ARRAY reference\00", align 1
@.str.26 = private constant [9 x i8] c"an ARRAY\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Use of reference \22%-p\22 as array index\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Not a HASH reference\00", align 1
@.str.29 = private constant [7 x i8] c"a HASH\00", align 1
@PL_curstack = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [32 x i8] c"Use of freed value in iteration\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"panic: pp_iter, type=%u\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"panic: pp_subst, pm=%p, orig=%p\00", align 1
@PL_encoding = external local_unnamed_addr global ptr, align 8
@PL_lex_encoding = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"Substitution loop\00", align 1
@PL_markstack = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [21 x i8] c"Not a CODE reference\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"a subroutine\00", align 1
@.str.36 = private unnamed_addr constant [76 x i8] c"Can't use string (\22%-32p\22%s) as a subroutine ref while \22strict refs\22 in use\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Closure prototype called\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Undefined subroutine &%-p called\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Undefined subroutine called\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@PL_curcopdb = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"DB::lsub\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"No DB::sub routine defined\00", align 1
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [40 x i8] c"Can't modify non-lvalue subroutine call\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [39 x i8] c"Deep recursion on anonymous subroutine\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Deep recursion on subroutine \22%-p\22\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [47 x i8] c"Reference found where even-sized list expected\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"Odd number of elements in hash assignment\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"Can't call method \22%-p\22 without a package or object reference\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Can't call method \22%-p\22 on an undefined value\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Can't call method \22%-p\22 on unblessed reference\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DOES\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_const() local_unnamed_addr #0 !prof !290 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !295

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !296
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !291
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !291
  %15 = load ptr, ptr %11, align 8, !tbaa !300
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_nextstate() local_unnamed_addr #0 !prof !302 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !291
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !291
  store i8 0, ptr @PL_sawalias, align 1, !tbaa !303
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !307
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %5, i64 %8, i32 0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !308
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %2, i64 %11
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !291
  %13 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %14 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17, !prof !310

16:                                               ; preds = %0
  tail call void @Perl_free_tmps() #14
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !312

20:                                               ; preds = %17
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %21() #14
  br label %22

22:                                               ; preds = %17, %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %24 = load ptr, ptr %23, align 8, !tbaa !300
  ret ptr %24
}

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gvsv() local_unnamed_addr #0 !prof !313 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !314

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !315
  %14 = icmp sgt i8 %13, -1
  %15 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !296
  br i1 %14, label %20, label %17, !prof !316

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_save_scalar(ptr noundef %16) #14
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %18, ptr %19, align 8, !tbaa !291
  br label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !308
  %23 = load ptr, ptr %22, align 8, !tbaa !291
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30, !prof !317

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %16, i32 noundef 0) #14
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !308
  %29 = load ptr, ptr %28, align 8, !tbaa !291
  br label %30

30:                                               ; preds = %20, %25
  %31 = phi ptr [ %29, %25 ], [ %23, %20 ]
  %32 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !291
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi ptr [ %19, %17 ], [ %32, %30 ]
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %36 = getelementptr inbounds %struct.svop, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !296
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !308
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !318
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %47, label %43, !prof !320

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 9
  %45 = load i32, ptr %44, align 8
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47, !prof !321

47:                                               ; preds = %43, %33
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !303
  br label %48

48:                                               ; preds = %47, %43
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !291
  %49 = load ptr, ptr %35, align 8, !tbaa !300
  ret ptr %49
}

; Function Attrs: optsize
declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_pp_null() local_unnamed_addr #3 !prof !322 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %2 = load ptr, ptr %1, align 8, !tbaa !300
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pushmark() local_unnamed_addr #0 !prof !323 {
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %2 = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %2, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !291
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %7, !prof !324

5:                                                ; preds = %0
  %6 = tail call ptr @Perl_markstack_grow() #14
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi ptr [ %6, %5 ], [ %2, %0 ]
  %9 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %8, align 4, !tbaa !311
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %17 = load ptr, ptr %16, align 8, !tbaa !300
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_stringify() local_unnamed_addr #0 !prof !325 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !326
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !291
  %8 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %7, ptr %1, align 8, !tbaa !291
  tail call void @Perl_sv_copypv_flags(ptr noundef %7, ptr noundef %8, i32 noundef 2) #14
  %9 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !327
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !329

13:                                               ; preds = %0
  %14 = tail call i32 @Perl_mg_set(ptr noundef nonnull %7) #14
  br label %15

15:                                               ; preds = %0, %13
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %17 = load ptr, ptr %16, align 8, !tbaa !300
  ret ptr %17
}

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_gv() local_unnamed_addr #0 !prof !330 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !331

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !296
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !291
  %15 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !332
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30, !prof !334

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !308
  %22 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !318
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %29, label %25, !prof !335

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !336

29:                                               ; preds = %25, %19
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !303
  br label %30

30:                                               ; preds = %29, %25, %9
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !291
  %31 = load ptr, ptr %11, align 8, !tbaa !300
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_and() local_unnamed_addr #0 !prof !337 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !338

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %4() #14
  br label %5

5:                                                ; preds = %0, %3
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %7 = load ptr, ptr %6, align 8, !tbaa !291
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !327
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !338

12:                                               ; preds = %5
  %13 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 2) #14
  br i1 %13, label %63, label %61, !prof !339

14:                                               ; preds = %5
  %15 = and i32 %9, 65280
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23, !prof !340

17:                                               ; preds = %14
  %18 = and i32 %9, 255
  %19 = icmp eq i32 %18, 8
  %20 = and i32 %9, 16777471
  %21 = icmp eq i32 %20, 16777226
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %61, !prof !341

23:                                               ; preds = %17, %14
  %24 = and i32 %9, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !342

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !343
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29, !prof !344

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !345
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %63, label %33, !prof !347

33:                                               ; preds = %29
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %61, label %35, !prof !348

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !308
  %38 = load i8, ptr %37, align 1, !tbaa !308
  %39 = icmp eq i8 %38, 48
  br i1 %39, label %61, label %63, !prof !349

40:                                               ; preds = %23
  %41 = and i32 %9, 768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43, !prof !350

43:                                               ; preds = %40
  %44 = and i32 %9, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46, !prof !351

46:                                               ; preds = %43
  %47 = load ptr, ptr %7, align 8, !tbaa !343
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !308
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63, !prof !352

51:                                               ; preds = %46, %43
  %52 = and i32 %9, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54, !prof !353

54:                                               ; preds = %51
  %55 = load ptr, ptr %7, align 8, !tbaa !343
  %56 = getelementptr inbounds %struct.xpvnv, ptr %55, i64 0, i32 5
  %57 = load double, ptr %56, align 8, !tbaa !308
  %58 = fcmp une double %57, 0.000000e+00
  br i1 %58, label %63, label %61, !prof !354

59:                                               ; preds = %40
  %60 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 0) #14
  br i1 %60, label %63, label %61, !prof !355

61:                                               ; preds = %54, %17, %59, %51, %35, %33, %26, %12
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %74

63:                                               ; preds = %59, %54, %46, %35, %29, %12
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %65 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 511
  %68 = icmp eq i16 %67, 176
  br i1 %68, label %69, label %72, !prof !356

69:                                               ; preds = %63
  %70 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %71 = getelementptr inbounds ptr, ptr %70, i64 -1
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %72

72:                                               ; preds = %69, %63
  %73 = getelementptr inbounds %struct.logop, ptr %64, i64 0, i32 8
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi ptr [ %73, %72 ], [ %62, %61 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !291
  ret ptr %76
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_sassign() local_unnamed_addr #0 !prof !357 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  %4 = load ptr, ptr %2, align 8, !tbaa !291
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !315
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !358

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %0
  %12 = phi ptr [ %3, %10 ], [ %4, %0 ]
  %13 = phi ptr [ %4, %10 ], [ %3, %0 ]
  %14 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16, !prof !361

16:                                               ; preds = %11
  %17 = load i8, ptr @PL_tainted, align 1, !tbaa !303, !range !359, !noundef !360
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !327
  %22 = and i32 %21, 14680064
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %12) #14
  br i1 %25, label %27, label %26

26:                                               ; preds = %24, %19
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  br label %27

27:                                               ; preds = %16, %26, %24, %11
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %29 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !315
  %31 = icmp sgt i8 %30, -1
  br i1 %31, label %113, label %32, !prof !361

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !308
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !327
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !327
  %40 = and i32 %39, 49152
  %41 = icmp eq i32 %40, 32768
  %42 = and i32 %39, 255
  %43 = add nsw i32 %42, -9
  %44 = icmp ult i32 %43, 2
  %45 = select i1 %41, i1 %44, i1 false, !prof !362
  %46 = add nsw i32 %37, -13
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %89, label %48, !prof !363

48:                                               ; preds = %32
  br i1 %45, label %95, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 5
  %51 = load i8, ptr %50, align 2, !tbaa !364
  %52 = and i8 %51, 3
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = zext nneg i8 %52 to i32
  br label %58

56:                                               ; preds = %49
  %57 = tail call i32 @Perl_block_gimme() #14
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %13, i32 noundef 2064, i32 noundef 9) #14
  %63 = getelementptr inbounds %struct.gv, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !311
  %65 = and i32 %64, 65280
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %64, 254
  %68 = icmp eq i32 %67, 8
  %69 = or i1 %68, %66
  %70 = and i32 %64, 16777471
  %71 = icmp eq i32 %70, 16777226
  %72 = or i1 %71, %69
  br i1 %72, label %92, label %73

73:                                               ; preds = %61
  %74 = and i32 %64, 255
  %75 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !308
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %62, i32 noundef 1) #14
  %79 = load i32, ptr %63, align 4, !tbaa !332
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %79, %78 ], [ %64, %73 ]
  %82 = or i32 %81, 34816
  store i32 %82, ptr %63, align 4, !tbaa !332
  %83 = getelementptr inbounds %struct.gv, ptr %62, i64 0, i32 3
  store ptr %76, ptr %83, align 8, !tbaa !308
  %84 = icmp eq ptr %76, null
  br i1 %84, label %147, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !365
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !365
  br label %147

89:                                               ; preds = %32
  br i1 %45, label %113, label %90, !prof !366

90:                                               ; preds = %89
  %91 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %13, i32 noundef 2049, i32 noundef 9) #14
  br label %113

92:                                               ; preds = %61, %58
  %93 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %13, i32 noundef 2049, i32 noundef 9) #14
  %94 = load i32, ptr %35, align 4, !tbaa !327
  br label %95

95:                                               ; preds = %48, %92
  %96 = phi i32 [ %94, %92 ], [ %36, %48 ]
  %97 = phi ptr [ %93, %92 ], [ %13, %48 ]
  %98 = and i32 %96, 2048
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  tail call void @Perl_push_scope() #14
  %101 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !308
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %102) #15
  %103 = load ptr, ptr %97, align 8, !tbaa !343
  %104 = getelementptr inbounds %struct.xpvgv, ptr %103, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !308
  %106 = load ptr, ptr %101, align 8, !tbaa !308
  %107 = tail call ptr @Perl_newCONSTSUB(ptr noundef %105, ptr noundef null, ptr noundef %106) #14
  store ptr %107, ptr %33, align 8, !tbaa !308
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %34) #15
  tail call void @Perl_pop_scope() #14
  br label %113

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !308
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !367
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %112) #15
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %34) #15
  store ptr %112, ptr %33, align 8, !tbaa !308
  br label %113

113:                                              ; preds = %89, %90, %108, %100, %27
  %114 = phi ptr [ %13, %27 ], [ %91, %90 ], [ %97, %108 ], [ %97, %100 ], [ %13, %89 ]
  %115 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !327
  %117 = and i32 %116, 524288
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %139, label %119, !prof !361

119:                                              ; preds = %113
  %120 = and i32 %116, 4194304
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %139, !prof !368

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !365
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = and i32 %116, 49152
  %128 = icmp eq i32 %127, 32768
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = and i32 %116, 255
  %131 = add nsw i32 %130, -9
  %132 = icmp ult i32 %131, 2
  %133 = and i32 %116, 16777216
  %134 = icmp eq i32 %133, 0
  %135 = and i1 %134, %132
  br i1 %135, label %139, label %136

136:                                              ; preds = %129, %126
  %137 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #14
  br label %139

139:                                              ; preds = %129, %119, %122, %136, %138, %113
  %140 = icmp eq ptr %114, %12
  br i1 %140, label %147, label %141, !prof !361

141:                                              ; preds = %139
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %114, ptr noundef %12, i32 noundef 1538) #14
  %142 = load i32, ptr %115, align 4, !tbaa !327
  %143 = and i32 %142, 4194304
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145, !prof !369

145:                                              ; preds = %141
  %146 = tail call i32 @Perl_mg_set(ptr noundef nonnull %114) #14
  br label %147

147:                                              ; preds = %139, %141, %145, %80, %85
  %148 = phi ptr [ %13, %85 ], [ %13, %80 ], [ %114, %145 ], [ %114, %141 ], [ %114, %139 ]
  store ptr %148, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %149 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %150 = load ptr, ptr %149, align 8, !tbaa !300
  ret ptr %150
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
define internal fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) unnamed_addr #4 !prof !370 !PGOFuncName !371 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !365
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !372 !PGOFuncName !373 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !365
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !374

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !365
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_cond_expr() local_unnamed_addr #0 !prof !375 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !376

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %5() #14
  br label %6

6:                                                ; preds = %0, %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !291
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10, !prof !376

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !327
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !376

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 2) #14
  br i1 %16, label %64, label %67, !prof !377

17:                                               ; preds = %10
  %18 = and i32 %12, 65280
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %12, 255
  %21 = icmp eq i32 %20, 8
  %22 = or i1 %19, %21
  %23 = and i32 %12, 16777471
  %24 = icmp eq i32 %23, 16777226
  %25 = or i1 %24, %22
  br i1 %25, label %26, label %67, !prof !378

26:                                               ; preds = %17
  %27 = and i32 %12, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29, !prof !379

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8, !tbaa !343
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32, !prof !380

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !345
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %64, label %36, !prof !381

36:                                               ; preds = %32
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %67, label %38, !prof !382

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = load i8, ptr %40, align 1, !tbaa !308
  %42 = icmp eq i8 %41, 48
  br i1 %42, label %67, label %64, !prof !383

43:                                               ; preds = %26
  %44 = and i32 %12, 768
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46, !prof !384

46:                                               ; preds = %43
  %47 = and i32 %12, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49, !prof !385

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 8, !tbaa !343
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !308
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64, !prof !386

54:                                               ; preds = %49, %46
  %55 = and i32 %12, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57, !prof !387

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 8, !tbaa !343
  %59 = getelementptr inbounds %struct.xpvnv, ptr %58, i64 0, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !308
  %61 = fcmp une double %60, 0.000000e+00
  br i1 %61, label %64, label %67, !prof !377

62:                                               ; preds = %43
  %63 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 0) #14
  br i1 %63, label %64, label %67, !prof !377

64:                                               ; preds = %38, %62, %15, %57, %49, %32
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !291
  %65 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %66 = getelementptr inbounds %struct.logop, ptr %65, i64 0, i32 8
  br label %69

67:                                               ; preds = %57, %38, %62, %15, %54, %36, %29, %17, %6
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !291
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi ptr [ %66, %64 ], [ %68, %67 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !291
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_unstack() local_unnamed_addr #0 !prof !388 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !389

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %4() #14
  br label %5

5:                                                ; preds = %0, %3
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %7 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %8 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  %10 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !307
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.context, ptr %9, i64 %12, i32 0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !308
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !291
  %17 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %18 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21, !prof !390

20:                                               ; preds = %5
  tail call void @Perl_free_tmps() #14
  br label %21

21:                                               ; preds = %20, %5
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !364
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %26, label %37, !prof !391

26:                                               ; preds = %21
  %27 = load ptr, ptr @PL_scopestack, align 8, !tbaa !291
  %28 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !311
  %29 = sext i32 %28 to i64
  %30 = getelementptr i32, ptr %27, i64 %29
  %31 = getelementptr i32, ptr %30, i64 -1
  %32 = load i32, ptr %31, align 4, !tbaa !311
  %33 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %34 = icmp sgt i32 %33, %32
  br i1 %34, label %35, label %37, !prof !392

35:                                               ; preds = %26
  tail call void @Perl_leave_scope(i32 noundef %32) #14
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %37

37:                                               ; preds = %26, %35, %21
  %38 = phi ptr [ %22, %26 ], [ %36, %35 ], [ %22, %21 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !300
  ret ptr %39
}

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_concat() local_unnamed_addr #0 !prof !393 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !364
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !394

9:                                                ; preds = %0
  %10 = getelementptr inbounds ptr, ptr %3, i64 -1
  br label %16

11:                                               ; preds = %0
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %13 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !326
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !291
  %19 = getelementptr inbounds ptr, ptr %3, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !291
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !327
  %23 = load ptr, ptr %3, align 8, !tbaa !291
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !327
  %26 = or i32 %25, %22
  %27 = and i32 %26, 2099200
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29, !prof !395

29:                                               ; preds = %16
  %30 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 70, i32 noundef 4) #14
  br i1 %30, label %34, label %31, !prof !396

31:                                               ; preds = %29
  %32 = load ptr, ptr %3, align 8, !tbaa !291
  %33 = load ptr, ptr %19, align 8, !tbaa !291
  br label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %36 = load ptr, ptr %35, align 8, !tbaa !300
  br label %236

37:                                               ; preds = %31, %16
  %38 = phi ptr [ %33, %31 ], [ %20, %16 ]
  %39 = phi ptr [ %32, %31 ], [ %23, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %40 = icmp eq ptr %18, %39
  br i1 %40, label %41, label %85, !prof !397

41:                                               ; preds = %37
  %42 = icmp eq ptr %18, %38
  br i1 %42, label %85, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !327
  %46 = and i32 %45, 2098176
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load ptr, ptr %18, align 8, !tbaa !343
  %50 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !345
  store i64 %51, ptr %1, align 8, !tbaa !309
  %52 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !308
  br label %57

54:                                               ; preds = %43
  %55 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %1, i32 noundef 32) #14
  %56 = load i32, ptr %44, align 4, !tbaa !327
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %45, %48 ], [ %56, %54 ]
  %59 = phi ptr [ %53, %48 ], [ %55, %54 ]
  %60 = and i32 %58, 536870912
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %64 = getelementptr inbounds %struct.cop, ptr %63, i64 0, i32 10
  %65 = load i32, ptr %64, align 8, !tbaa !398
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  %70 = xor i1 %69, true
  %71 = load i64, ptr %1, align 8, !tbaa !309
  %72 = call ptr @Perl_newSVpvn_flags(ptr noundef %59, i64 noundef %71, i32 noundef 524288) #14
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !327
  %75 = and i32 %74, 2098176
  %76 = icmp eq i32 %75, 1024
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load ptr, ptr %72, align 8, !tbaa !343
  %79 = getelementptr inbounds %struct.xpv, ptr %78, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !345
  store i64 %80, ptr %1, align 8, !tbaa !309
  %81 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !308
  br label %85

83:                                               ; preds = %68
  %84 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %72, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %85

85:                                               ; preds = %77, %83, %41, %37
  %86 = phi ptr [ %18, %41 ], [ %39, %37 ], [ %72, %83 ], [ %72, %77 ]
  %87 = phi ptr [ null, %41 ], [ null, %37 ], [ %84, %83 ], [ %82, %77 ]
  %88 = phi i1 [ false, %41 ], [ false, %37 ], [ %70, %83 ], [ %70, %77 ]
  %89 = phi i1 [ false, %41 ], [ false, %37 ], [ true, %83 ], [ true, %77 ]
  %90 = zext i1 %88 to i32
  %91 = icmp eq ptr %18, %38
  br i1 %91, label %130, label %92, !prof !400

92:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %93 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !327
  %95 = and i32 %94, 2098176
  %96 = icmp eq i32 %95, 1024
  br i1 %96, label %97, label %103, !prof !401

97:                                               ; preds = %92
  %98 = load ptr, ptr %38, align 8, !tbaa !343
  %99 = getelementptr inbounds %struct.xpv, ptr %98, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !345
  store i64 %100, ptr %2, align 8, !tbaa !309
  %101 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !308
  br label %106

103:                                              ; preds = %92
  %104 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %38, ptr noundef nonnull %2, i32 noundef 32) #14
  %105 = load i32, ptr %93, align 4, !tbaa !327
  br label %106

106:                                              ; preds = %103, %97
  %107 = phi i32 [ %94, %97 ], [ %105, %103 ]
  %108 = phi ptr [ %102, %97 ], [ %104, %103 ]
  %109 = and i32 %107, 536870912
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113, !prof !402

111:                                              ; preds = %106
  %112 = load i64, ptr %2, align 8, !tbaa !309
  call void @Perl_sv_setpvn(ptr noundef %18, ptr noundef %108, i64 noundef %112) #14
  br label %124

113:                                              ; preds = %106
  %114 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %115 = getelementptr inbounds %struct.cop, ptr %114, i64 0, i32 10
  %116 = load i32, ptr %115, align 8, !tbaa !398
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  %119 = load i64, ptr %2, align 8, !tbaa !309
  call void @Perl_sv_setpvn(ptr noundef %18, ptr noundef %108, i64 noundef %119) #14
  br i1 %118, label %120, label %124, !prof !377

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !327
  %123 = or i32 %122, 536870912
  store i32 %123, ptr %121, align 4, !tbaa !327
  br label %128

124:                                              ; preds = %111, %113
  %125 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !327
  %127 = and i32 %126, -536870913
  store i32 %127, ptr %125, align 4, !tbaa !327
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i8 [ 1, %124 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %169

130:                                              ; preds = %85
  %131 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !327
  %133 = and i32 %132, 65280
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %147, !prof !403

135:                                              ; preds = %130
  %136 = and i32 %132, 255
  %137 = icmp eq i32 %136, 8
  %138 = and i32 %132, 16777471
  %139 = icmp eq i32 %138, 16777226
  %140 = or i1 %137, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = icmp eq ptr %18, %86
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = call zeroext i1 @Perl_ckwarn(i32 noundef 41) #14
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  call void @Perl_report_uninit(ptr noundef nonnull %18) #14
  br label %146

146:                                              ; preds = %145, %143, %141
  call void @Perl_sv_setpvn(ptr noundef nonnull %18, ptr noundef nonnull @.str.1, i64 noundef 0) #14
  br label %152

147:                                              ; preds = %135, %130
  %148 = and i32 %132, 430018304
  %149 = icmp eq i32 %148, 1024
  br i1 %149, label %152, label %150, !prof !404

150:                                              ; preds = %147
  %151 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %18, ptr noundef null, i32 noundef 0) #14
  br label %152

152:                                              ; preds = %147, %150, %146
  %153 = load i32, ptr %131, align 4, !tbaa !327
  %154 = and i32 %153, 536870912
  %155 = icmp eq i32 %154, 0
  %156 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %157 = getelementptr inbounds %struct.cop, ptr %156, i64 0, i32 10
  %158 = load i32, ptr %157, align 8, !tbaa !398
  br i1 %155, label %163, label %159, !prof !405

159:                                              ; preds = %152
  %160 = trunc i32 %158 to i8
  %161 = lshr i8 %160, 3
  %162 = and i8 %161, 1
  br label %163

163:                                              ; preds = %152, %159
  %164 = phi i8 [ %162, %159 ], [ 1, %152 ]
  %165 = and i32 %158, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167, !prof !405

167:                                              ; preds = %163
  %168 = and i32 %153, -536870913
  store i32 %168, ptr %131, align 4, !tbaa !327
  br label %169

169:                                              ; preds = %163, %167, %128
  %170 = phi i8 [ %129, %128 ], [ %164, %167 ], [ %164, %163 ]
  br i1 %89, label %196, label %171, !prof !397

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !327
  %174 = and i32 %173, 2098176
  %175 = icmp eq i32 %174, 1024
  br i1 %175, label %176, label %182, !prof !406

176:                                              ; preds = %171
  %177 = load ptr, ptr %86, align 8, !tbaa !343
  %178 = getelementptr inbounds %struct.xpv, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !345
  store i64 %179, ptr %1, align 8, !tbaa !309
  %180 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !308
  br label %185

182:                                              ; preds = %171
  %183 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %86, ptr noundef nonnull %1, i32 noundef 32) #14
  %184 = load i32, ptr %172, align 4, !tbaa !327
  br label %185

185:                                              ; preds = %182, %176
  %186 = phi i32 [ %173, %176 ], [ %184, %182 ]
  %187 = phi ptr [ %181, %176 ], [ %183, %182 ]
  %188 = and i32 %186, 536870912
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %196, label %190, !prof !395

190:                                              ; preds = %185
  %191 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %192 = getelementptr inbounds %struct.cop, ptr %191, i64 0, i32 10
  %193 = load i32, ptr %192, align 8, !tbaa !398
  %194 = lshr i32 %193, 3
  %195 = and i32 %194, 1
  br label %196

196:                                              ; preds = %185, %190, %169
  %197 = phi ptr [ %87, %169 ], [ %187, %190 ], [ %187, %185 ]
  %198 = phi i32 [ %90, %169 ], [ %195, %190 ], [ 1, %185 ]
  %199 = zext nneg i8 %170 to i32
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %224, label %201, !prof !395

201:                                              ; preds = %196
  %202 = icmp eq i8 %170, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %201
  %204 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %18, i32 noundef 0, i64 noundef 0) #14
  br label %224

205:                                              ; preds = %201
  br i1 %89, label %209, label %206

206:                                              ; preds = %205
  %207 = load i64, ptr %1, align 8, !tbaa !309
  %208 = call ptr @Perl_newSVpvn_flags(ptr noundef %197, i64 noundef %207, i32 noundef 524288) #14
  br label %209

209:                                              ; preds = %206, %205
  %210 = phi ptr [ %86, %205 ], [ %208, %206 ]
  %211 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %210, i32 noundef 0, i64 noundef 0) #14
  %212 = getelementptr inbounds %struct.sv, ptr %210, i64 0, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !327
  %214 = and i32 %213, 2098176
  %215 = icmp eq i32 %214, 1024
  br i1 %215, label %216, label %222

216:                                              ; preds = %209
  %217 = load ptr, ptr %210, align 8, !tbaa !343
  %218 = getelementptr inbounds %struct.xpv, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !345
  store i64 %219, ptr %1, align 8, !tbaa !309
  %220 = getelementptr inbounds %struct.sv, ptr %210, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !308
  br label %224

222:                                              ; preds = %209
  %223 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %210, ptr noundef nonnull %1, i32 noundef 32) #14
  br label %224

224:                                              ; preds = %216, %222, %203, %196
  %225 = phi ptr [ %197, %203 ], [ %197, %196 ], [ %221, %216 ], [ %223, %222 ]
  %226 = load i64, ptr %1, align 8, !tbaa !309
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef %225, i64 noundef %226, i32 noundef 0) #14
  %227 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %228 = load i32, ptr %227, align 4, !tbaa !327
  %229 = and i32 %228, 4194304
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231, !prof !395

231:                                              ; preds = %224
  %232 = call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %233

233:                                              ; preds = %224, %231
  store ptr %18, ptr %19, align 8, !tbaa !291
  store ptr %19, ptr @PL_stack_sp, align 8, !tbaa !291
  %234 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %235 = load ptr, ptr %234, align 8, !tbaa !300
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %236

236:                                              ; preds = %233, %34
  %237 = phi ptr [ %36, %34 ], [ %235, %233 ]
  ret ptr %237
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
define dso_local ptr @Perl_pp_padrange() local_unnamed_addr #0 !prof !407 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !326
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !315
  %7 = and i8 %6, 127
  %8 = zext nneg i8 %7 to i32
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !364
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %45, label %12, !prof !408

12:                                               ; preds = %0
  %13 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  store ptr %14, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %15 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !291
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %19, !prof !409

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_markstack_grow() #14
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %14, %12 ]
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %22 = ptrtoint ptr %1 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 3
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %20, align 4, !tbaa !311
  %27 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %28 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !308
  %30 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !410
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39, !prof !409

33:                                               ; preds = %19
  %34 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %27, i32 noundef 11) #14
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !308
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !410
  br label %39

39:                                               ; preds = %19, %33
  %40 = phi ptr [ %38, %33 ], [ %31, %19 ]
  tail call fastcc void @S_pushav(ptr noundef %40) #15
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %42 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %43 = getelementptr inbounds %struct.op, ptr %42, i64 0, i32 5
  %44 = load i8, ptr %43, align 2, !tbaa !364
  br label %45

45:                                               ; preds = %39, %0
  %46 = phi i8 [ %44, %39 ], [ %10, %0 ]
  %47 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %48 = and i8 %46, 3
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %89, label %50, !prof !411

50:                                               ; preds = %45
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %47 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = zext nneg i8 %7 to i64
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60, !prof !412

58:                                               ; preds = %50
  %59 = tail call ptr @Perl_stack_grow(ptr noundef %47, ptr noundef %47, i64 noundef %56) #14
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ %59, %58 ], [ %47, %50 ]
  %62 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  store ptr %63, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %64 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !291
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %68, !prof !412

66:                                               ; preds = %60
  %67 = tail call ptr @Perl_markstack_grow() #14
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ %63, %60 ]
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %71 = ptrtoint ptr %61 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = lshr exact i64 %73, 3
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %69, align 4, !tbaa !311
  %76 = icmp eq i8 %7, 0
  br i1 %76, label %89, label %77, !prof !413

77:                                               ; preds = %68
  %78 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %79 = getelementptr ptr, ptr %78, i64 %4
  %80 = zext nneg i8 %7 to i64
  br label %81

81:                                               ; preds = %77, %81
  %82 = phi i64 [ 0, %77 ], [ %87, %81 ]
  %83 = phi ptr [ %61, %77 ], [ %86, %81 ]
  %84 = getelementptr ptr, ptr %79, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !291
  %86 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %85, ptr %86, align 8, !tbaa !291
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %80
  br i1 %88, label %89, label %81, !prof !414, !llvm.loop !415

89:                                               ; preds = %81, %68, %45
  %90 = phi ptr [ %47, %45 ], [ %61, %68 ], [ %86, %81 ]
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %92 = getelementptr inbounds %struct.op, ptr %91, i64 0, i32 6
  %93 = load i8, ptr %92, align 1, !tbaa !315
  %94 = icmp sgt i8 %93, -1
  br i1 %94, label %121, label %95, !prof !417

95:                                               ; preds = %89
  %96 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %97 = getelementptr inbounds ptr, ptr %96, i64 %4
  %98 = shl i64 %4, 13
  %99 = shl nuw nsw i32 %8, 6
  %100 = zext nneg i32 %99 to i64
  %101 = or disjoint i64 %98, %100
  %102 = or disjoint i64 %101, 1
  %103 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %104 = load ptr, ptr @PL_savestack, align 8, !tbaa !291
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %union.any, ptr %104, i64 %105
  store i64 %102, ptr %106, align 8, !tbaa !308
  %107 = add nsw i32 %103, 1
  store i32 %107, ptr @PL_savestack_ix, align 4, !tbaa !311
  %108 = add nsw i32 %103, 5
  %109 = load i32, ptr @PL_savestack_max, align 4, !tbaa !311
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %112, !prof !418

111:                                              ; preds = %95
  tail call void @Perl_savestack_grow() #14
  br label %112

112:                                              ; preds = %95, %111
  %113 = icmp eq i8 %7, 0
  br i1 %113, label %121, label %114, !prof !419

114:                                              ; preds = %112, %114
  %115 = phi i32 [ %119, %114 ], [ 0, %112 ]
  %116 = phi ptr [ %117, %114 ], [ %97, %112 ]
  %117 = getelementptr inbounds ptr, ptr %116, i64 1
  %118 = load ptr, ptr %116, align 8, !tbaa !291
  tail call fastcc void @S_SvPADSTALE_off(ptr noundef %118) #15
  %119 = add nuw nsw i32 %115, 1
  %120 = icmp eq i32 %119, %8
  br i1 %120, label %121, label %114, !prof !420, !llvm.loop !421

121:                                              ; preds = %114, %112, %89
  store ptr %90, ptr @PL_stack_sp, align 8, !tbaa !291
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %123 = load ptr, ptr %122, align 8, !tbaa !300
  ret ptr %123
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_pushav(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !423 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !327
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !424

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #14
  %9 = sext i32 %8 to i64
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !425
  %12 = getelementptr inbounds %struct.xpvav, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !427
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i64 [ %9, %7 ], [ %13, %10 ]
  %16 = add i64 %15, 1
  %17 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %2 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp sgt i64 %21, %15
  br i1 %22, label %25, label %23, !prof !424

23:                                               ; preds = %14
  %24 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %16) #14
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ %2, %14 ]
  %27 = load i32, ptr %3, align 4, !tbaa !429
  %28 = and i32 %27, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i64 %16, 0
  br i1 %29, label %32, label %31, !prof !424

31:                                               ; preds = %25
  br i1 %30, label %65, label %35

32:                                               ; preds = %25
  br i1 %30, label %65, label %33, !prof !430

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %53

35:                                               ; preds = %31, %48
  %36 = phi i64 [ %50, %48 ], [ 0, %31 ]
  %37 = tail call ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %36, i32 noundef 0) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !291
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !327
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @Perl_mg_get(ptr noundef nonnull %40) #14
  %47 = load ptr, ptr %37, align 8, !tbaa !291
  br label %48

48:                                               ; preds = %39, %35, %45
  %49 = phi ptr [ %47, %45 ], [ @PL_sv_undef, %35 ], [ %40, %39 ]
  %50 = add nuw i64 %36, 1
  %51 = getelementptr inbounds ptr, ptr %26, i64 %50
  store ptr %49, ptr %51, align 8, !tbaa !291
  %52 = icmp eq i64 %36, %15
  br i1 %52, label %65, label %35, !llvm.loop !431

53:                                               ; preds = %33, %60
  %54 = phi i64 [ 0, %33 ], [ %62, %60 ]
  %55 = load ptr, ptr %34, align 8, !tbaa !308
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !291
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !432

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %53, %59
  %61 = phi ptr [ %57, %59 ], [ @PL_sv_undef, %53 ]
  %62 = add nuw i64 %54, 1
  %63 = getelementptr inbounds ptr, ptr %26, i64 %62
  store ptr %61, ptr %63, align 8, !tbaa !291
  %64 = icmp eq i64 %54, %15
  br i1 %64, label %65, label %53, !prof !433, !llvm.loop !434

65:                                               ; preds = %48, %60, %31, %32
  %66 = getelementptr inbounds ptr, ptr %26, i64 %16
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !291
  ret void
}

; Function Attrs: optsize
declare void @Perl_savestack_grow() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_off(ptr nocapture noundef %0) unnamed_addr #4 !prof !435 !PGOFuncName !436 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !327
  %4 = and i32 %3, -262145
  store i32 %4, ptr %2, align 4, !tbaa !327
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_padsv() local_unnamed_addr #0 !prof !437 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !438

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %13 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !326
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !291
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !291
  %18 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !364
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %37, label %22, !prof !439

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !315
  %25 = and i8 %24, -64
  %26 = icmp eq i8 %25, -128
  br i1 %26, label %27, label %29, !prof !440

27:                                               ; preds = %22
  tail call void @Perl_save_clearsv(ptr noundef nonnull %15) #14
  %28 = load i8, ptr %23, align 1, !tbaa !315
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i8 [ %28, %27 ], [ %24, %22 ]
  %31 = and i8 %30, 48
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33, !prof !441

33:                                               ; preds = %29
  %34 = zext nneg i8 %31 to i32
  %35 = load ptr, ptr %17, align 8, !tbaa !291
  %36 = tail call ptr @Perl_vivify_ref(ptr noundef %35, i32 noundef %34) #15
  store ptr %36, ptr %17, align 8, !tbaa !291
  br label %37

37:                                               ; preds = %29, %33, %9
  %38 = load ptr, ptr %11, align 8, !tbaa !300
  ret ptr %38
}

; Function Attrs: optsize
declare void @Perl_save_clearsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_vivify_ref(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !442 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !327
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !443

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  %9 = load i32, ptr %3, align 4, !tbaa !327
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %4, %2 ], [ %9, %7 ]
  %12 = and i32 %11, 65280
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %90, !prof !444

14:                                               ; preds = %10
  %15 = and i32 %11, 255
  %16 = icmp eq i32 %15, 8
  %17 = and i32 %11, 16777471
  %18 = icmp eq i32 %17, 16777226
  %19 = or i1 %16, %18
  br i1 %19, label %90, label %20, !prof !445

20:                                               ; preds = %14
  %21 = and i32 %11, 134283264
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !446

23:                                               ; preds = %20
  tail call void @Perl_croak_no_modify() #14
  %24 = load i32, ptr %3, align 4, !tbaa !327
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %15, %20 ], [ %25, %23 ]
  %28 = phi i32 [ %11, %20 ], [ %24, %23 ]
  %29 = icmp ugt i32 %27, 2
  %30 = icmp eq i32 %27, 1
  %31 = or i1 %29, %30
  br i1 %31, label %33, label %32, !prof !447

32:                                               ; preds = %26
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %65

33:                                               ; preds = %26
  br i1 %29, label %34, label %65, !prof !448

34:                                               ; preds = %33
  %35 = load ptr, ptr %0, align 8, !tbaa !343
  %36 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !308
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = and i32 %28, 33554432
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !308
  br i1 %41, label %57, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %43, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !308
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
  store ptr %55, ptr %42, align 8, !tbaa !308
  %56 = and i32 %28, -33554433
  store i32 %56, ptr %3, align 4, !tbaa !327
  br label %57

57:                                               ; preds = %39, %52
  %58 = phi ptr [ %55, %52 ], [ %43, %39 ]
  tail call void @Perl_safesysfree(ptr noundef %58) #14
  %59 = load ptr, ptr %0, align 8, !tbaa !343
  br label %60

60:                                               ; preds = %57, %34
  %61 = phi ptr [ %59, %57 ], [ %35, %34 ]
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 3
  store i64 0, ptr %62, align 8, !tbaa !308
  %63 = load ptr, ptr %0, align 8, !tbaa !343
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 2
  store i64 0, ptr %64, align 8, !tbaa !345
  br label %65

65:                                               ; preds = %32, %60, %33
  switch i32 %1, label %75 [
    i32 48, label %66
    i32 16, label %68
    i32 32, label %70
  ], !prof !449

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
  store ptr %73, ptr %74, align 8, !tbaa !308
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, ptr %3, align 4, !tbaa !327
  %77 = or i32 %76, 2048
  store i32 %77, ptr %3, align 4, !tbaa !327
  %78 = and i32 %76, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80, !prof !446

80:                                               ; preds = %75
  %81 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #14
  %82 = load i32, ptr %3, align 4, !tbaa !327
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %82, %80 ], [ %77, %75 ]
  %85 = and i32 %84, 2097152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87, !prof !446

87:                                               ; preds = %83
  %88 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  %89 = load i32, ptr %3, align 4, !tbaa !327
  br label %90

90:                                               ; preds = %87, %83, %14, %10
  %91 = phi i32 [ %89, %87 ], [ %84, %83 ], [ %11, %14 ], [ %11, %10 ]
  %92 = and i32 %91, 2097152
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94, !prof !443

94:                                               ; preds = %90
  %95 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_setsv_flags(ptr noundef %95, ptr noundef nonnull %0, i32 noundef 1536) #14
  br label %96

96:                                               ; preds = %90, %94
  %97 = phi ptr [ %95, %94 ], [ %0, %90 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_readline() local_unnamed_addr #0 !prof !450 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr %1, align 8, !tbaa !291
  %3 = icmp eq ptr %2, null
  br i1 %3, label %109, label %4, !prof !451

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !327
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !452

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %2) #14
  %11 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %12 = load ptr, ptr %11, align 8, !tbaa !291
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %2, %4 ], [ %12, %9 ]
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2, !tbaa !364
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !451

20:                                               ; preds = %13
  %21 = zext nneg i8 %18 to i32
  br label %24

22:                                               ; preds = %13
  %23 = tail call i32 @Perl_block_gimme() #14
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !327
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %105, label %30, !prof !452

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !308
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !327
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %32, align 8, !tbaa !343
  %39 = load ptr, ptr %38, align 8, !tbaa !453
  %40 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !455
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %105, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %14, ptr noundef nonnull @PL_sv_undef, i32 noundef 15, i32 noundef 73) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %105, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  switch i32 %25, label %71 [
    i32 1, label %101
    i32 3, label %49
  ]

49:                                               ; preds = %47
  %50 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %45) #15
  %51 = getelementptr inbounds ptr, ptr %48, i64 -1
  %52 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  store ptr %67, ptr %68, align 8, !tbaa !291
  %69 = add nuw i64 %66, 1
  %70 = icmp eq i64 %66, %50
  br i1 %70, label %101, label %64, !llvm.loop !457

71:                                               ; preds = %47
  %72 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %73 = getelementptr inbounds %struct.op, ptr %72, i64 0, i32 5
  %74 = load i8, ptr %73, align 2, !tbaa !364
  %75 = and i8 %74, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds ptr, ptr %48, i64 -1
  br label %84

79:                                               ; preds = %71
  %80 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %81 = getelementptr inbounds %struct.op, ptr %72, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !326
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi ptr [ %78, %77 ], [ %83, %79 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !291
  tail call void @Perl_sv_setsv_flags(ptr noundef %86, ptr noundef nonnull %45, i32 noundef 1538) #14
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %88 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 5
  %89 = load i8, ptr %88, align 2, !tbaa !364
  %90 = shl i8 %89, 1
  %91 = ashr i8 %90, 7
  %92 = sext i8 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %48, i64 %92
  %94 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !327
  %96 = and i32 %95, 4194304
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %84
  %99 = tail call i32 @Perl_mg_set(ptr noundef nonnull %86) #14
  br label %100

100:                                              ; preds = %84, %98
  store ptr %86, ptr %93, align 8, !tbaa !291
  br label %101

101:                                              ; preds = %64, %61, %100, %47
  %102 = phi ptr [ %48, %47 ], [ %93, %100 ], [ %62, %61 ], [ %68, %64 ]
  store ptr %102, ptr @PL_stack_sp, align 8, !tbaa !291
  %103 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %104 = load ptr, ptr %103, align 8, !tbaa !300
  br label %160

105:                                              ; preds = %24, %30, %37, %44
  %106 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %107 = getelementptr inbounds ptr, ptr %106, i64 -1
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !291
  %108 = load ptr, ptr %106, align 8, !tbaa !291
  store ptr %108, ptr @PL_last_in_gv, align 8, !tbaa !291
  br label %112

109:                                              ; preds = %0
  %110 = load ptr, ptr @PL_argvgv, align 8, !tbaa !291
  store ptr %110, ptr @PL_last_in_gv, align 8, !tbaa !291
  %111 = getelementptr inbounds ptr, ptr %1, i64 -1
  store ptr %111, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi ptr [ %111, %109 ], [ %107, %105 ]
  %114 = phi ptr [ %110, %109 ], [ %108, %105 ]
  %115 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !332
  %117 = and i32 %116, 49152
  %118 = icmp eq i32 %117, 32768
  br i1 %118, label %119, label %123, !prof !452

119:                                              ; preds = %112
  %120 = and i32 %116, 255
  %121 = add nsw i32 %120, -9
  %122 = icmp ult i32 %121, 2
  br i1 %122, label %158, label %123, !prof !458

123:                                              ; preds = %119, %112
  %124 = and i32 %116, 2048
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !308
  %129 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !327
  %131 = and i32 %130, 49152
  %132 = icmp eq i32 %131, 32768
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = and i32 %130, 255
  %135 = add nsw i32 %134, -9
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %156, label %137

137:                                              ; preds = %133, %126, %123
  %138 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %113 to i64
  %141 = sub i64 %139, %140
  %142 = icmp slt i64 %141, 8
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %113, ptr noundef nonnull %113, i64 noundef 1) #14
  %145 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  br label %146

146:                                              ; preds = %137, %143
  %147 = phi ptr [ %145, %143 ], [ %114, %137 ]
  %148 = phi ptr [ %144, %143 ], [ %113, %137 ]
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  store ptr %147, ptr %149, align 8, !tbaa !291
  store ptr %149, ptr @PL_stack_sp, align 8, !tbaa !291
  %150 = tail call ptr @Perl_pp_rv2gv() #14
  %151 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %152 = getelementptr inbounds ptr, ptr %151, i64 -1
  store ptr %152, ptr @PL_stack_sp, align 8, !tbaa !291
  %153 = load ptr, ptr %151, align 8, !tbaa !291
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
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 !prof !370 !PGOFuncName !459 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !327
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #14
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !425
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !427
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
define dso_local ptr @Perl_do_readline() local_unnamed_addr #0 !prof !450 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !364
  %6 = and i8 %5, 64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !452

8:                                                ; preds = %0
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  br label %15

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %12 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !326
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %2, %10 ]
  %17 = phi ptr [ %2, %8 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !291
  %19 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !451

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !327
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %34, !prof !458

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !308
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !451

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !460
  br label %34

34:                                               ; preds = %21, %15, %27, %31
  %35 = phi ptr [ %33, %31 ], [ null, %27 ], [ null, %15 ], [ null, %21 ]
  %36 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 511
  %39 = and i8 %5, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41, !prof !451

41:                                               ; preds = %34
  %42 = zext nneg i8 %39 to i32
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_block_gimme() #14
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq ptr %35, null
  br i1 %47, label %191, label %48, !prof !451

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !327
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %53, !prof !452

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %35, i32 noundef 113) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56, !prof !383

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !291
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.16, i32 noundef 0) #14
  store ptr %60, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !291
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ %57, %56 ]
  %63 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %62, ptr noundef %16, ptr noundef nonnull %35, ptr noundef nonnull %54, i32 noundef %46, i32 noundef 0) #14
  %64 = icmp eq i32 %46, 2
  br i1 %64, label %65, label %561

65:                                               ; preds = %61
  %66 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %67 = load ptr, ptr %66, align 8, !tbaa !291
  %68 = icmp eq ptr %18, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef %67, i32 noundef 1554) #14
  br label %70

70:                                               ; preds = %65, %69
  %71 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !327
  %73 = and i32 %72, 4194304
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %77

77:                                               ; preds = %70, %75
  store ptr %18, ptr %66, align 8, !tbaa !291
  br label %561

78:                                               ; preds = %48, %53
  %79 = getelementptr inbounds %struct.io, ptr %35, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !308
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %170, !prof !451

82:                                               ; preds = %78
  %83 = load ptr, ptr %35, align 8, !tbaa !461
  %84 = getelementptr inbounds %struct.xpvio, ptr %83, i64 0, i32 17
  %85 = load i8, ptr %84, align 1, !tbaa !463
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %168, label %89

89:                                               ; preds = %82
  %90 = and i32 %86, 2
  %91 = icmp eq i32 %90, 0
  %92 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  br i1 %91, label %157, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.xpvio, ptr %83, i64 0, i32 4
  store i64 0, ptr %94, align 8, !tbaa !308
  %95 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !308
  %97 = getelementptr inbounds %struct.gp, ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !410
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %92, i32 noundef 11) #14
  %102 = getelementptr inbounds %struct.gv, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !308
  %104 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !410
  br label %106

106:                                              ; preds = %93, %100
  %107 = phi ptr [ %105, %100 ], [ %98, %93 ]
  %108 = tail call fastcc i64 @S_av_top_index(ptr noundef %107) #15
  %109 = icmp slt i64 %108, 0
  %110 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  br i1 %109, label %111, label %157

111:                                              ; preds = %106
  %112 = load ptr, ptr %35, align 8, !tbaa !461
  %113 = getelementptr inbounds %struct.xpvio, ptr %112, i64 0, i32 17
  %114 = load i8, ptr %113, align 1, !tbaa !463
  %115 = and i8 %114, -3
  store i8 %115, ptr %113, align 1, !tbaa !463
  %116 = tail call zeroext i1 @Perl_do_open6(ptr noundef %110, ptr noundef nonnull @.str.17, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %117 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %111
  %120 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %121 = getelementptr inbounds %struct.gv, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !308
  %123 = load ptr, ptr %122, align 8, !tbaa !291
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %120, i32 noundef 0) #14
  %127 = getelementptr inbounds %struct.gv, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !308
  %129 = load ptr, ptr %128, align 8, !tbaa !291
  br label %130

130:                                              ; preds = %119, %125
  %131 = phi ptr [ %129, %125 ], [ %123, %119 ]
  tail call void @Perl_sv_untaint(ptr noundef %131) #14
  br label %132

132:                                              ; preds = %111, %130
  %133 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %134 = getelementptr inbounds %struct.gv, ptr %133, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !308
  %136 = load ptr, ptr %135, align 8, !tbaa !291
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %133, i32 noundef 0) #14
  %140 = getelementptr inbounds %struct.gv, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !308
  %142 = load ptr, ptr %141, align 8, !tbaa !291
  br label %143

143:                                              ; preds = %132, %138
  %144 = phi ptr [ %142, %138 ], [ %136, %132 ]
  tail call void @Perl_sv_setpvn(ptr noundef %144, ptr noundef nonnull @.str.17, i64 noundef 1) #14
  %145 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !308
  %148 = load ptr, ptr %147, align 8, !tbaa !465
  %149 = getelementptr inbounds %struct.sv, ptr %148, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !327
  %151 = and i32 %150, 4194304
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %143
  %154 = tail call i32 @Perl_mg_set(ptr noundef nonnull %148) #14
  br label %155

155:                                              ; preds = %143, %153
  %156 = load ptr, ptr %79, align 8, !tbaa !308
  br label %215

157:                                              ; preds = %106, %89
  %158 = phi ptr [ %110, %106 ], [ %92, %89 ]
  %159 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %160 = getelementptr inbounds %struct.op, ptr %159, i64 0, i32 5
  %161 = load i8, ptr %160, align 2, !tbaa !364
  %162 = icmp slt i8 %161, 0
  %163 = tail call ptr @Perl_nextargv(ptr noundef %158, i1 noundef zeroext %162) #14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %215

165:                                              ; preds = %157
  %166 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %167 = tail call zeroext i1 @Perl_do_close(ptr noundef %166, i1 noundef zeroext false) #14
  br label %184

168:                                              ; preds = %82
  %169 = icmp eq i16 %38, 25
  br i1 %169, label %179, label %184

170:                                              ; preds = %78
  %171 = icmp eq i16 %38, 25
  br i1 %171, label %218, label %172, !prof !451

172:                                              ; preds = %170
  %173 = load ptr, ptr %35, align 8, !tbaa !461
  %174 = getelementptr inbounds %struct.xpvio, ptr %173, i64 0, i32 16
  %175 = load i8, ptr %174, align 8, !tbaa !466
  %176 = icmp eq i8 %175, 62
  br i1 %176, label %177, label %215, !prof !451

177:                                              ; preds = %172
  %178 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  tail call void @Perl_report_wrongway_fh(ptr noundef %178, i8 noundef signext 62) #14
  br label %215

179:                                              ; preds = %168
  %180 = getelementptr inbounds ptr, ptr %16, i64 -1
  %181 = load ptr, ptr %16, align 8, !tbaa !291
  %182 = tail call ptr @Perl_start_glob(ptr noundef %181, ptr noundef nonnull %35) #14
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %221, !prof !383

184:                                              ; preds = %168, %165, %179
  %185 = phi ptr [ %180, %179 ], [ %16, %165 ], [ %16, %168 ]
  %186 = load ptr, ptr %35, align 8, !tbaa !461
  %187 = getelementptr inbounds %struct.xpvio, ptr %186, i64 0, i32 17
  %188 = load i8, ptr %187, align 1, !tbaa !463
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
  %197 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
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
  %206 = load i32, ptr %205, align 4, !tbaa !327
  %207 = and i32 %206, 4194304
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = tail call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %211

211:                                              ; preds = %204, %209
  %212 = getelementptr inbounds ptr, ptr %199, i64 1
  store ptr %18, ptr %212, align 8, !tbaa !291
  br label %213

213:                                              ; preds = %211, %198
  %214 = phi ptr [ %212, %211 ], [ %199, %198 ]
  store ptr %214, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %561

215:                                              ; preds = %157, %172, %177, %155
  %216 = phi ptr [ %156, %155 ], [ %163, %157 ], [ %80, %172 ], [ %80, %177 ]
  %217 = icmp eq i32 %46, 2
  br i1 %217, label %223, label %295, !prof !451

218:                                              ; preds = %170
  %219 = getelementptr inbounds ptr, ptr %16, i64 -1
  %220 = icmp eq i32 %46, 2
  br i1 %220, label %232, label %295, !prof !451

221:                                              ; preds = %179
  %222 = icmp eq i32 %46, 2
  br i1 %222, label %232, label %295, !prof !451

223:                                              ; preds = %215
  %224 = icmp eq i16 %38, 27
  br i1 %224, label %225, label %232

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !327
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
  %237 = load i32, ptr %236, align 4, !tbaa !327
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
  %260 = load i32, ptr %236, align 4, !tbaa !327
  %261 = and i32 %260, 255
  %262 = icmp ugt i32 %261, 2
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %18, i32 noundef 3) #14
  br label %264

264:                                              ; preds = %263, %259
  %265 = load ptr, ptr %18, align 8, !tbaa !343
  %266 = getelementptr inbounds %struct.xpv, ptr %265, i64 0, i32 3
  %267 = load i64, ptr %266, align 8, !tbaa !308
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load i32, ptr %236, align 4, !tbaa !327
  %271 = and i32 %270, 402718720
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %18, i64 noundef 80) #14
  br label %275

275:                                              ; preds = %273, %269, %264
  br i1 %233, label %276, label %300

276:                                              ; preds = %275
  %277 = load i32, ptr %236, align 4, !tbaa !327
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
  %292 = load ptr, ptr %18, align 8, !tbaa !343
  %293 = getelementptr inbounds %struct.xpv, ptr %292, i64 0, i32 2
  %294 = load i64, ptr %293, align 8, !tbaa !345
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
  %310 = icmp eq i32 %46, 3
  br label %311

311:                                              ; preds = %358, %300
  %312 = phi ptr [ %364, %358 ], [ %303, %300 ]
  %313 = phi ptr [ %316, %358 ], [ %306, %300 ]
  %314 = phi ptr [ %321, %358 ], [ %302, %300 ]
  br label %315

315:                                              ; preds = %311, %539
  %316 = phi ptr [ %313, %311 ], [ %541, %539 ]
  %317 = phi ptr [ %314, %311 ], [ %526, %539 ]
  %318 = getelementptr inbounds %struct.sv, ptr %316, i64 0, i32 2
  %319 = getelementptr inbounds %struct.sv, ptr %316, i64 0, i32 3
  br label %320

320:                                              ; preds = %315, %494
  %321 = phi ptr [ %453, %494 ], [ %317, %315 ]
  store ptr %321, ptr @PL_stack_sp, align 8, !tbaa !291
  %322 = call ptr @Perl_sv_gets(ptr noundef %316, ptr noundef %312, i32 noundef %307) #14
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %418, !prof !467

324:                                              ; preds = %320
  %325 = select i1 %308, i1 true, i1 %309
  br i1 %325, label %352, label %326, !prof !468

326:                                              ; preds = %324
  %327 = load ptr, ptr %316, align 8, !tbaa !343
  %328 = getelementptr inbounds %struct.xpv, ptr %327, i64 0, i32 2
  %329 = load i64, ptr %328, align 8, !tbaa !345
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %352

331:                                              ; preds = %326
  %332 = load ptr, ptr %35, align 8, !tbaa !461
  %333 = getelementptr inbounds %struct.xpvio, ptr %332, i64 0, i32 17
  %334 = load i8, ptr %333, align 1, !tbaa !463
  %335 = and i8 %334, 32
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %331
  %338 = load ptr, ptr @PL_rs, align 8, !tbaa !291
  %339 = getelementptr inbounds %struct.sv, ptr %338, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !327
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
  %350 = call i32 @Perl_PerlIO_error(ptr noundef %312) #14
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %418, label %352

352:                                              ; preds = %349, %337, %331, %326, %324
  call void @Perl_PerlIO_clearerr(ptr noundef %312) #14
  %353 = load ptr, ptr %35, align 8, !tbaa !461
  %354 = getelementptr inbounds %struct.xpvio, ptr %353, i64 0, i32 17
  %355 = load i8, ptr %354, align 1, !tbaa !463
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %369, label %358, !prof !452

358:                                              ; preds = %352
  %359 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %360 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %361 = getelementptr inbounds %struct.op, ptr %360, i64 0, i32 5
  %362 = load i8, ptr %361, align 2, !tbaa !364
  %363 = icmp slt i8 %362, 0
  %364 = call ptr @Perl_nextargv(ptr noundef %359, i1 noundef zeroext %363) #14
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %311

366:                                              ; preds = %358
  %367 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %368 = call zeroext i1 @Perl_do_close(ptr noundef %367, i1 noundef zeroext false) #14
  br label %379

369:                                              ; preds = %352
  br i1 %308, label %370, label %379, !prof !451

370:                                              ; preds = %369
  %371 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !291
  %372 = call zeroext i1 @Perl_do_close(ptr noundef %371, i1 noundef zeroext false) #14
  br i1 %372, label %379, label %373

373:                                              ; preds = %370
  %374 = load i32, ptr @PL_statusvalue, align 4, !tbaa !311
  %375 = ashr i32 %374, 8
  %376 = and i32 %374, 128
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %377, ptr @.str.1, ptr @.str.19
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %375, ptr noundef nonnull %378) #14
  br label %379

379:                                              ; preds = %369, %373, %370, %366
  br i1 %301, label %380, label %406, !prof !451

380:                                              ; preds = %379
  %381 = icmp eq i16 %38, 27
  br i1 %381, label %396, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !327
  %385 = and i32 %384, 427886592
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %382
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %18, i32 noundef 4) #14
  %388 = load i32, ptr %383, align 4, !tbaa !327
  br label %389

389:                                              ; preds = %387, %382
  %390 = phi i32 [ %388, %387 ], [ %384, %382 ]
  %391 = and i32 %390, 1610547455
  store i32 %391, ptr %383, align 4, !tbaa !327
  %392 = and i32 %390, 33554432
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %389
  %395 = call i32 @Perl_sv_backoff(ptr noundef nonnull %18) #14
  br label %396

396:                                              ; preds = %389, %394, %380
  %397 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %398 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %399 = load i32, ptr %398, align 4, !tbaa !327
  %400 = and i32 %399, 4194304
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %396
  %403 = call i32 @Perl_mg_set(ptr noundef nonnull %18) #14
  br label %404

404:                                              ; preds = %396, %402
  %405 = getelementptr inbounds ptr, ptr %397, i64 1
  store ptr %18, ptr %405, align 8, !tbaa !291
  br label %406

406:                                              ; preds = %404, %379
  %407 = phi ptr [ %405, %404 ], [ %321, %379 ]
  %408 = load ptr, ptr %35, align 8, !tbaa !461
  %409 = getelementptr inbounds %struct.xpvio, ptr %408, i64 0, i32 17
  %410 = load i8, ptr %409, align 1, !tbaa !463
  %411 = and i8 %410, 16
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %417, !prof !452

413:                                              ; preds = %406
  store i8 1, ptr @PL_tainted, align 1, !tbaa !303
  %414 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %417, label %416, !prof !452

416:                                              ; preds = %413
  call void @Perl_sv_magic(ptr noundef %316, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %417

417:                                              ; preds = %416, %413, %406
  store ptr %407, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %561

418:                                              ; preds = %349, %320
  %419 = load ptr, ptr %35, align 8, !tbaa !461
  %420 = getelementptr inbounds %struct.xpvio, ptr %419, i64 0, i32 17
  %421 = load i8, ptr %420, align 1, !tbaa !463
  %422 = and i8 %421, 16
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %424, label %429, !prof !469

424:                                              ; preds = %418
  store i8 1, ptr @PL_tainted, align 1, !tbaa !303
  %425 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %429, label %427, !prof !469

427:                                              ; preds = %424
  call void @Perl_sv_magic(ptr noundef %316, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  %428 = load ptr, ptr %35, align 8, !tbaa !461
  br label %429

429:                                              ; preds = %427, %424, %418
  %430 = phi ptr [ %428, %427 ], [ %419, %424 ], [ %419, %418 ]
  %431 = getelementptr inbounds %struct.xpvio, ptr %430, i64 0, i32 4
  %432 = load i64, ptr %431, align 8, !tbaa !308
  %433 = add nsw i64 %432, 1
  store i64 %433, ptr %431, align 8, !tbaa !308
  %434 = load ptr, ptr %35, align 8, !tbaa !461
  %435 = getelementptr inbounds %struct.xpvio, ptr %434, i64 0, i32 17
  %436 = load i8, ptr %435, align 1, !tbaa !463
  %437 = or i8 %436, 32
  store i8 %437, ptr %435, align 1, !tbaa !463
  %438 = load i32, ptr %318, align 4, !tbaa !327
  %439 = and i32 %438, 4194304
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %443, label %441, !prof !469

441:                                              ; preds = %429
  %442 = call i32 @Perl_mg_set(ptr noundef nonnull %316) #14
  br label %443

443:                                              ; preds = %429, %441
  %444 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %445 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %446 = ptrtoint ptr %445 to i64
  %447 = ptrtoint ptr %444 to i64
  %448 = sub i64 %446, %447
  %449 = icmp slt i64 %448, 8
  br i1 %449, label %450, label %452, !prof !470

450:                                              ; preds = %443
  %451 = call ptr @Perl_stack_grow(ptr noundef %444, ptr noundef %444, i64 noundef 1) #14
  br label %452

452:                                              ; preds = %443, %450
  %453 = phi ptr [ %451, %450 ], [ %444, %443 ]
  %454 = getelementptr inbounds ptr, ptr %453, i64 1
  store ptr %316, ptr %454, align 8, !tbaa !291
  br i1 %308, label %455, label %497, !prof !470

455:                                              ; preds = %452
  %456 = load ptr, ptr %316, align 8, !tbaa !343
  %457 = getelementptr inbounds %struct.xpv, ptr %456, i64 0, i32 2
  %458 = load i64, ptr %457, align 8, !tbaa !345
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %480, label %460

460:                                              ; preds = %455
  %461 = load ptr, ptr @PL_rs, align 8, !tbaa !291
  %462 = load ptr, ptr %461, align 8, !tbaa !343
  %463 = getelementptr inbounds %struct.xpv, ptr %462, i64 0, i32 2
  %464 = load i64, ptr %463, align 8, !tbaa !345
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %480, label %466

466:                                              ; preds = %460
  %467 = load ptr, ptr %319, align 8, !tbaa !308
  %468 = getelementptr inbounds i8, ptr %467, i64 %458
  %469 = getelementptr inbounds i8, ptr %468, i64 -1
  %470 = load i8, ptr %469, align 1, !tbaa !308
  %471 = getelementptr inbounds %struct.sv, ptr %461, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !308
  %473 = load i8, ptr %472, align 1, !tbaa !308
  %474 = icmp eq i8 %470, %473
  br i1 %474, label %475, label %480

475:                                              ; preds = %466
  store i8 0, ptr %469, align 1, !tbaa !308
  %476 = load ptr, ptr %316, align 8, !tbaa !343
  %477 = getelementptr inbounds %struct.xpv, ptr %476, i64 0, i32 2
  %478 = load i64, ptr %477, align 8, !tbaa !345
  %479 = add i64 %478, -1
  store i64 %479, ptr %477, align 8, !tbaa !345
  br label %480

480:                                              ; preds = %466, %475, %460, %455
  %481 = load ptr, ptr %319, align 8, !tbaa !308
  %482 = load i8, ptr %481, align 1, !tbaa !308
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %525, label %488

484:                                              ; preds = %488
  %485 = getelementptr inbounds i8, ptr %490, i64 1
  %486 = load i8, ptr %485, align 1, !tbaa !308
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %525, label %488, !llvm.loop !471

488:                                              ; preds = %480, %484
  %489 = phi i8 [ %486, %484 ], [ %482, %480 ]
  %490 = phi ptr [ %485, %484 ], [ %481, %480 ]
  %491 = sext i8 %489 to i32
  %492 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.20, i32 %491, i64 20)
  %493 = icmp eq ptr %492, null
  br i1 %493, label %484, label %494

494:                                              ; preds = %488
  %495 = call i32 @stat64(ptr noundef nonnull %481, ptr noundef nonnull @PL_statbuf) #14
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %320, label %525

497:                                              ; preds = %452
  %498 = load i32, ptr %318, align 4, !tbaa !327
  %499 = and i32 %498, 536870912
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %525, label %501, !prof !469

501:                                              ; preds = %497
  %502 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #14
  br i1 %502, label %503, label %525

503:                                              ; preds = %501
  %504 = load ptr, ptr %319, align 8, !tbaa !308
  %505 = getelementptr inbounds i8, ptr %504, i64 %304
  %506 = load ptr, ptr %316, align 8, !tbaa !343
  %507 = getelementptr inbounds %struct.xpv, ptr %506, i64 0, i32 2
  %508 = load i64, ptr %507, align 8, !tbaa !345
  %509 = sub i64 %508, %304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %510 = call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %505, i64 noundef %509, ptr noundef nonnull %1, ptr noundef null) #14
  br i1 %510, label %524, label %511

511:                                              ; preds = %503
  %512 = load ptr, ptr %1, align 8, !tbaa !291
  %513 = load ptr, ptr %319, align 8, !tbaa !308
  %514 = load ptr, ptr %316, align 8, !tbaa !343
  %515 = getelementptr inbounds %struct.xpv, ptr %514, i64 0, i32 2
  %516 = load i64, ptr %515, align 8, !tbaa !345
  %517 = getelementptr inbounds i8, ptr %513, i64 %516
  %518 = icmp ult ptr %512, %517
  br i1 %518, label %519, label %522

519:                                              ; preds = %511
  %520 = load i8, ptr %512, align 1, !tbaa !308
  %521 = zext i8 %520 to i32
  br label %522

522:                                              ; preds = %511, %519
  %523 = phi i32 [ %521, %519 ], [ 0, %511 ]
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @.str.21, i32 noundef %523) #14
  br label %524

524:                                              ; preds = %522, %503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %525

525:                                              ; preds = %494, %480, %484, %497, %524, %501
  %526 = getelementptr inbounds ptr, ptr %453, i64 1
  br i1 %310, label %527, label %542, !prof !469

527:                                              ; preds = %525
  %528 = load ptr, ptr %316, align 8, !tbaa !343
  %529 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 3
  %530 = load i64, ptr %529, align 8, !tbaa !308
  %531 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 2
  %532 = load i64, ptr %531, align 8, !tbaa !345
  %533 = sub i64 %530, %532
  %534 = icmp ugt i64 %533, 20
  br i1 %534, label %535, label %539, !prof !472

535:                                              ; preds = %527
  %536 = add i64 %532, 1
  store i64 %536, ptr %529, align 8, !tbaa !308
  %537 = load ptr, ptr %319, align 8, !tbaa !308
  %538 = call ptr @Perl_safesysrealloc(ptr noundef %537, i64 noundef %536) #14
  store ptr %538, ptr %319, align 8, !tbaa !308
  br label %539

539:                                              ; preds = %535, %527
  %540 = call ptr @Perl_newSV(i64 noundef 80) #14
  %541 = call ptr @Perl_sv_2mortal(ptr noundef %540) #14
  br label %315

542:                                              ; preds = %525
  %543 = icmp ne i64 %305, 0
  %544 = or i1 %309, %543
  br i1 %544, label %560, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %313, align 8, !tbaa !343
  %547 = getelementptr inbounds %struct.xpv, ptr %546, i64 0, i32 3
  %548 = load i64, ptr %547, align 8, !tbaa !308
  %549 = getelementptr inbounds %struct.xpv, ptr %546, i64 0, i32 2
  %550 = load i64, ptr %549, align 8, !tbaa !345
  %551 = sub i64 %548, %550
  %552 = icmp ugt i64 %551, 80
  br i1 %552, label %553, label %560

553:                                              ; preds = %545
  %554 = icmp ult i64 %550, 60
  %555 = add i64 %550, 40
  %556 = select i1 %554, i64 80, i64 %555
  store i64 %556, ptr %547, align 8, !tbaa !308
  %557 = getelementptr inbounds %struct.sv, ptr %313, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !308
  %559 = call ptr @Perl_safesysrealloc(ptr noundef %558, i64 noundef %556) #14
  store ptr %559, ptr %557, align 8, !tbaa !308
  br label %560

560:                                              ; preds = %542, %545, %553
  store ptr %526, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %561

561:                                              ; preds = %77, %61, %560, %417, %213
  %562 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %563 = load ptr, ptr %562, align 8, !tbaa !300
  ret ptr %563
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_eq() local_unnamed_addr #0 !prof !473 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !327
  %6 = load ptr, ptr %1, align 8, !tbaa !291
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !327
  %9 = or i32 %8, %5
  %10 = and i32 %9, 2099200
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12, !prof !474

12:                                               ; preds = %0
  %13 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 21, i32 noundef 48) #14
  br i1 %13, label %44, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !291
  %16 = load ptr, ptr %2, align 8, !tbaa !291
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !327
  br label %19

19:                                               ; preds = %14, %0
  %20 = phi i32 [ %18, %14 ], [ %5, %0 ]
  %21 = phi ptr [ %16, %14 ], [ %3, %0 ]
  %22 = phi ptr [ %15, %14 ], [ %6, %0 ]
  %23 = and i32 %20, -2147483392
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %38, !prof !474

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !327
  %28 = and i32 %27, -2147483392
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %38, !prof !474

30:                                               ; preds = %25
  %31 = load ptr, ptr %21, align 8, !tbaa !343
  %32 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !308
  %34 = load ptr, ptr %22, align 8, !tbaa !343
  %35 = getelementptr inbounds %struct.xpviv, ptr %34, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !308
  %37 = icmp eq i64 %33, %36
  br label %41

38:                                               ; preds = %25, %19
  %39 = tail call i32 @Perl_do_ncmp(ptr noundef nonnull %21, ptr noundef %22) #14
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i1 [ %37, %30 ], [ %40, %38 ]
  %43 = select i1 %42, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %43, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %44

44:                                               ; preds = %12, %41
  %45 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %46 = load ptr, ptr %45, align 8, !tbaa !300
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @Perl_do_ncmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_preinc() local_unnamed_addr #0 !prof !475 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = add nsw i16 %5, -47
  %7 = icmp ult i16 %6, 2
  %8 = load ptr, ptr %1, align 8, !tbaa !291
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !327
  %11 = and i32 %10, 255
  %12 = icmp ugt i32 %11, 10
  br i1 %12, label %22, label %13, !prof !476

13:                                               ; preds = %0
  %14 = and i32 %10, 49152
  %15 = icmp eq i32 %14, 32768
  br i1 %15, label %16, label %26, !prof !476

16:                                               ; preds = %13
  %17 = add nsw i32 %11, -9
  %18 = icmp ult i32 %17, 2
  %19 = and i32 %10, 16777216
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %0
  tail call void @Perl_croak_no_modify() #14
  %23 = load ptr, ptr %1, align 8, !tbaa !291
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !327
  br label %26

26:                                               ; preds = %16, %13, %22
  %27 = phi i32 [ %10, %16 ], [ %10, %13 ], [ %25, %22 ]
  %28 = phi ptr [ %8, %16 ], [ %8, %13 ], [ %23, %22 ]
  %29 = and i32 %27, -2011101440
  %30 = icmp eq i32 %29, 256
  br i1 %30, label %31, label %44, !prof !477

31:                                               ; preds = %26
  %32 = load ptr, ptr %28, align 8, !tbaa !343
  %33 = getelementptr inbounds %struct.xpviv, ptr %32, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !308
  %35 = select i1 %7, i64 9223372036854775807, i64 -9223372036854775808
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %44, label %37, !prof !478

37:                                               ; preds = %31
  %38 = select i1 %7, i64 1, i64 -1
  %39 = add nsw i64 %34, %38
  store i64 %39, ptr %33, align 8, !tbaa !308
  %40 = load ptr, ptr %1, align 8, !tbaa !291
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !327
  %43 = and i32 %42, -24577
  store i32 %43, ptr %41, align 4, !tbaa !327
  br label %47

44:                                               ; preds = %26, %31
  br i1 %7, label %45, label %46

45:                                               ; preds = %44
  tail call void @Perl_sv_inc(ptr noundef nonnull %28) #14
  br label %47

46:                                               ; preds = %44
  tail call void @Perl_sv_dec(ptr noundef nonnull %28) #14
  br label %47

47:                                               ; preds = %37, %46, %45
  %48 = load ptr, ptr %1, align 8, !tbaa !291
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !327
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !479

53:                                               ; preds = %47
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %48) #14
  br label %55

55:                                               ; preds = %47, %53
  %56 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %57 = load ptr, ptr %56, align 8, !tbaa !300
  ret ptr %57
}

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_or() local_unnamed_addr #0 !prof !480 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !481

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %5() #14
  br label %6

6:                                                ; preds = %0, %4
  %7 = load ptr, ptr %1, align 8, !tbaa !291
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9, !prof !481

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !327
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !481

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 2) #14
  br i1 %15, label %63, label %65, !prof !482

16:                                               ; preds = %9
  %17 = and i32 %11, 65280
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !340

19:                                               ; preds = %16
  %20 = and i32 %11, 255
  %21 = icmp eq i32 %20, 8
  %22 = and i32 %11, 16777471
  %23 = icmp eq i32 %22, 16777226
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %65, !prof !483

25:                                               ; preds = %19, %16
  %26 = and i32 %11, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28, !prof !484

28:                                               ; preds = %25
  %29 = load ptr, ptr %7, align 8, !tbaa !343
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31, !prof !485

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !345
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %63, label %35, !prof !486

35:                                               ; preds = %31
  %36 = icmp eq i64 %33, 0
  br i1 %36, label %65, label %37, !prof !487

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !308
  %40 = load i8, ptr %39, align 1, !tbaa !308
  %41 = icmp eq i8 %40, 48
  br i1 %41, label %65, label %63, !prof !488

42:                                               ; preds = %25
  %43 = and i32 %11, 768
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45, !prof !489

45:                                               ; preds = %42
  %46 = and i32 %11, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48, !prof !490

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !tbaa !343
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !308
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63, !prof !491

53:                                               ; preds = %48, %45
  %54 = and i32 %11, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56, !prof !492

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 8, !tbaa !343
  %58 = getelementptr inbounds %struct.xpvnv, ptr %57, i64 0, i32 5
  %59 = load double, ptr %58, align 8, !tbaa !308
  %60 = fcmp une double %59, 0.000000e+00
  br i1 %60, label %63, label %65, !prof !493

61:                                               ; preds = %42
  %62 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 0) #14
  br i1 %62, label %63, label %65, !prof !355

63:                                               ; preds = %61, %56, %48, %37, %31, %14
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !291
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %74

65:                                               ; preds = %56, %19, %6, %61, %53, %37, %35, %28, %14
  %66 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %67 = getelementptr inbounds %struct.op, ptr %66, i64 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 511
  %70 = icmp eq i16 %69, 177
  %71 = sext i1 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !291
  %73 = getelementptr inbounds %struct.logop, ptr %66, i64 0, i32 8
  br label %74

74:                                               ; preds = %65, %63
  %75 = phi ptr [ %64, %63 ], [ %73, %65 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !291
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_defined() local_unnamed_addr #0 !prof !494 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 179
  switch i16 %5, label %23 [
    i16 183, label %7
    i16 179, label %7
  ]

7:                                                ; preds = %0, %0
  %8 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !495

10:                                               ; preds = %7
  %11 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %11() #14
  br label %12

12:                                               ; preds = %7, %10
  %13 = load ptr, ptr %1, align 8, !tbaa !291
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !496

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !343
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32, !prof !496

18:                                               ; preds = %12, %15
  %19 = sext i1 %6 to i64
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !291
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %22 = getelementptr inbounds %struct.logop, ptr %21, i64 0, i32 8
  br label %103

23:                                               ; preds = %0
  %24 = load ptr, ptr %1, align 8, !tbaa !291
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !497

26:                                               ; preds = %23
  %27 = getelementptr inbounds ptr, ptr %1, i64 -1
  %28 = load ptr, ptr %24, align 8, !tbaa !343
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !497

30:                                               ; preds = %23, %26
  store ptr @PL_sv_no, ptr %1, align 8, !tbaa !291
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !291
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %103

32:                                               ; preds = %26, %15
  %33 = phi ptr [ %16, %15 ], [ %28, %26 ]
  %34 = phi ptr [ %13, %15 ], [ %24, %26 ]
  %35 = phi ptr [ %1, %15 ], [ %27, %26 ]
  %36 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !327
  %38 = trunc i32 %37 to i8
  switch i8 %38, label %71 [
    i8 11, label %39
    i8 12, label %53
    i8 13, label %67
  ], !prof !498

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !499
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
  %55 = load ptr, ptr %54, align 8, !tbaa !308
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
  %69 = load ptr, ptr %68, align 8, !tbaa !308
  %70 = icmp ne ptr %69, null
  br label %87

71:                                               ; preds = %32
  %72 = and i32 %37, 2097152
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74, !prof !500

74:                                               ; preds = %71
  %75 = tail call i32 @Perl_mg_get(ptr noundef nonnull %34) #14
  %76 = load i32, ptr %36, align 4, !tbaa !327
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
  br i1 %88, label %90, label %92, !prof !501

90:                                               ; preds = %89
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !291
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %103

92:                                               ; preds = %89
  %93 = sext i1 %6 to i64
  %94 = getelementptr inbounds ptr, ptr %35, i64 %93
  store ptr %94, ptr @PL_stack_sp, align 8, !tbaa !291
  %95 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %96 = getelementptr inbounds %struct.logop, ptr %95, i64 0, i32 8
  br label %103

97:                                               ; preds = %87
  %98 = getelementptr inbounds ptr, ptr %35, i64 1
  br i1 %88, label %99, label %101, !prof !502

99:                                               ; preds = %97
  store ptr @PL_sv_yes, ptr %98, align 8, !tbaa !291
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !291
  %100 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %103

101:                                              ; preds = %97
  store ptr @PL_sv_no, ptr %98, align 8, !tbaa !291
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !291
  %102 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %103

103:                                              ; preds = %101, %99, %92, %90, %30, %18
  %104 = phi ptr [ %91, %90 ], [ %96, %92 ], [ %100, %99 ], [ %102, %101 ], [ %22, %18 ], [ %31, %30 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !291
  ret ptr %105
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_add() local_unnamed_addr #0 !prof !503 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !364
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !504

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  br label %14

9:                                                ; preds = %0
  %10 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %11 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !326
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = getelementptr inbounds ptr, ptr %1, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !291
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !327
  %21 = load ptr, ptr %1, align 8, !tbaa !291
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !327
  %24 = or i32 %23, %20
  %25 = and i32 %24, 2099200
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27, !prof !505

27:                                               ; preds = %14
  %28 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 30, i32 noundef 20) #14
  br i1 %28, label %196, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %1, align 8, !tbaa !291
  %31 = load ptr, ptr %17, align 8, !tbaa !291
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !327
  br label %34

34:                                               ; preds = %29, %14
  %35 = phi i32 [ %33, %29 ], [ %20, %14 ]
  %36 = phi ptr [ %31, %29 ], [ %18, %14 ]
  %37 = phi ptr [ %30, %29 ], [ %21, %14 ]
  %38 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %39 = and i32 %35, 65280
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53, !prof !506

41:                                               ; preds = %34
  %42 = and i32 %35, 255
  %43 = icmp eq i32 %42, 8
  %44 = and i32 %35, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %43, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %49 = getelementptr inbounds %struct.op, ptr %48, i64 0, i32 5
  %50 = load i8, ptr %49, align 2, !tbaa !364
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  br label %53

53:                                               ; preds = %47, %41, %34
  %54 = phi i1 [ true, %41 ], [ true, %34 ], [ %52, %47 ]
  %55 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !327
  %57 = and i32 %56, 4352
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67, !prof !506

59:                                               ; preds = %53
  %60 = and i32 %56, 1536
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %37, i32 noundef 0) #14
  %64 = load i32, ptr %55, align 4, !tbaa !327
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %159, label %70, !prof !340

67:                                               ; preds = %59, %53
  %68 = and i32 %56, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %159, label %70, !prof !340

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %56, %67 ], [ %64, %62 ]
  br i1 %54, label %72, label %103, !prof !505

72:                                               ; preds = %70
  %73 = load i32, ptr %38, align 4, !tbaa !327
  %74 = and i32 %73, 4352
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %73, 1536
  %77 = icmp eq i32 %76, 0
  %78 = or i1 %75, %77
  br i1 %78, label %86, label %79, !prof !507

79:                                               ; preds = %72
  %80 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %36, i32 noundef 0) #14
  %81 = load i32, ptr %38, align 4, !tbaa !327
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89, !prof !508

84:                                               ; preds = %79
  %85 = load i32, ptr %55, align 4, !tbaa !327
  br label %159

86:                                               ; preds = %72
  %87 = and i32 %73, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %159, label %89, !prof !506

89:                                               ; preds = %86, %79
  %90 = phi i32 [ %73, %86 ], [ %81, %79 ]
  %91 = and i32 %90, -2147483392
  %92 = icmp eq i32 %91, -2147483392
  %93 = load ptr, ptr %36, align 8, !tbaa !343
  br i1 %92, label %94, label %97, !prof !506

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.xpvuv, ptr %93, i64 0, i32 4
  %96 = load i64, ptr %95, align 8, !tbaa !308
  br label %103

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.xpviv, ptr %93, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !308
  %100 = icmp sgt i64 %99, -1
  br i1 %100, label %103, label %101, !prof !509

101:                                              ; preds = %97
  %102 = sub i64 0, %99
  br label %103

103:                                              ; preds = %70, %101, %97, %94
  %104 = phi i64 [ %99, %97 ], [ %102, %101 ], [ %96, %94 ], [ 0, %70 ]
  %105 = phi i1 [ false, %97 ], [ true, %101 ], [ false, %94 ], [ false, %70 ]
  %106 = phi i8 [ 1, %97 ], [ 0, %101 ], [ 1, %94 ], [ 1, %70 ]
  %107 = load i32, ptr %55, align 4, !tbaa !327
  %108 = and i32 %107, -2147483392
  %109 = icmp eq i32 %108, -2147483392
  %110 = load ptr, ptr %37, align 8, !tbaa !343
  br i1 %109, label %111, label %114, !prof !506

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.xpvuv, ptr %110, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !308
  br label %118

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.xpviv, ptr %110, i64 0, i32 4
  %116 = load i64, ptr %115, align 8, !tbaa !308
  %117 = icmp sgt i64 %116, -1
  br i1 %117, label %118, label %120, !prof !510

118:                                              ; preds = %114, %111
  %119 = phi i64 [ %116, %114 ], [ %113, %111 ]
  br i1 %105, label %122, label %131, !prof !511

120:                                              ; preds = %114
  %121 = sub i64 0, %116
  br i1 %105, label %131, label %122, !prof !512

122:                                              ; preds = %118, %120
  %123 = phi i8 [ 0, %118 ], [ %106, %120 ]
  %124 = phi i64 [ %119, %118 ], [ %121, %120 ]
  %125 = icmp ult i64 %104, %124
  br i1 %125, label %128, label %126, !prof !513

126:                                              ; preds = %122
  %127 = sub i64 %104, %124
  br label %135

128:                                              ; preds = %122
  %129 = sub i64 %124, %104
  %130 = xor i8 %123, 1
  br label %135

131:                                              ; preds = %120, %118
  %132 = phi i64 [ %119, %118 ], [ %121, %120 ]
  %133 = add i64 %132, %104
  %134 = icmp ult i64 %133, %104
  br i1 %134, label %159, label %135, !prof !514

135:                                              ; preds = %128, %126, %131
  %136 = phi i64 [ %133, %131 ], [ %129, %128 ], [ %127, %126 ]
  %137 = phi i8 [ %106, %131 ], [ %130, %128 ], [ %106, %126 ]
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139, !prof !515

139:                                              ; preds = %135
  tail call void @Perl_sv_setuv(ptr noundef %16, i64 noundef %136) #14
  %140 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !327
  %142 = and i32 %141, 4194304
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %195, label %193, !prof !516

144:                                              ; preds = %135
  %145 = icmp ult i64 %136, -9223372036854775807
  br i1 %145, label %146, label %152, !prof !517

146:                                              ; preds = %144
  %147 = sub i64 0, %136
  tail call void @Perl_sv_setiv(ptr noundef %16, i64 noundef %147) #14
  %148 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !327
  %150 = and i32 %149, 4194304
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %195, label %193, !prof !517

152:                                              ; preds = %144
  %153 = uitofp i64 %136 to double
  %154 = fneg double %153
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %154) #14
  %155 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !327
  %157 = and i32 %156, 4194304
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %195, label %193

159:                                              ; preds = %84, %86, %131, %67, %62
  %160 = phi i32 [ %85, %84 ], [ %71, %86 ], [ %107, %131 ], [ %56, %67 ], [ %64, %62 ]
  %161 = and i32 %160, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %37, align 8, !tbaa !343
  %165 = getelementptr inbounds %struct.xpvnv, ptr %164, i64 0, i32 5
  %166 = load double, ptr %165, align 8, !tbaa !308
  br label %169

167:                                              ; preds = %159
  %168 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %37, i32 noundef 0) #14
  br label %169

169:                                              ; preds = %167, %163
  %170 = phi double [ %166, %163 ], [ %168, %167 ]
  br i1 %54, label %176, label %171

171:                                              ; preds = %169
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %170) #14
  %172 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !327
  %174 = and i32 %173, 4194304
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %195, label %193

176:                                              ; preds = %169
  %177 = load i32, ptr %38, align 4, !tbaa !327
  %178 = and i32 %177, 512
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %36, align 8, !tbaa !343
  %182 = getelementptr inbounds %struct.xpvnv, ptr %181, i64 0, i32 5
  %183 = load double, ptr %182, align 8, !tbaa !308
  br label %186

184:                                              ; preds = %176
  %185 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %36, i32 noundef 0) #14
  br label %186

186:                                              ; preds = %184, %180
  %187 = phi double [ %183, %180 ], [ %185, %184 ]
  %188 = fadd double %170, %187
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %188) #14
  %189 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !327
  %191 = and i32 %190, 4194304
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %171, %186, %139, %146, %152
  %194 = tail call i32 @Perl_mg_set(ptr noundef nonnull %16) #14
  br label %195

195:                                              ; preds = %193, %139, %146, %152, %171, %186
  store ptr %16, ptr %17, align 8, !tbaa !291
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %196

196:                                              ; preds = %195, %27
  %197 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %198 = load ptr, ptr %197, align 8, !tbaa !300
  ret ptr %198
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
define dso_local ptr @Perl_pp_aelemfast() local_unnamed_addr #0 !prof !518 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 137
  br i1 %6, label %7, label %13, !prof !519

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !326
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !291
  br label %28

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !296
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !308
  %18 = getelementptr inbounds %struct.gp, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !410
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28, !prof !519

21:                                               ; preds = %13
  %22 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %15, i32 noundef 11) #14
  %23 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !308
  %25 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !410
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %28

28:                                               ; preds = %13, %21, %7
  %29 = phi ptr [ %2, %7 ], [ %27, %21 ], [ %2, %13 ]
  %30 = phi ptr [ %12, %7 ], [ %26, %21 ], [ %19, %13 ]
  %31 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !364
  %33 = and i8 %32, 32
  %34 = zext nneg i8 %33 to i32
  %35 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 6
  %36 = load i8, ptr %35, align 1, !tbaa !315
  %37 = sext i8 %36 to i64
  %38 = tail call ptr @Perl_av_fetch(ptr noundef %30, i64 noundef %37, i32 noundef %34) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !520

40:                                               ; preds = %28
  %41 = load ptr, ptr %38, align 8, !tbaa !291
  br label %50

42:                                               ; preds = %28
  %43 = icmp eq i8 %33, 0
  br i1 %43, label %50, label %44, !prof !521

44:                                               ; preds = %42
  %45 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %46 = getelementptr inbounds %struct.op, ptr %45, i64 0, i32 6
  %47 = load i8, ptr %46, align 1, !tbaa !315
  %48 = sext i8 %47 to i32
  %49 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i32 noundef %48) #14
  br label %78

50:                                               ; preds = %40, %42
  %51 = phi ptr [ @PL_sv_undef, %42 ], [ %41, %40 ]
  %52 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %1 to i64
  %55 = sub i64 %53, %54
  %56 = icmp slt i64 %55, 8
  br i1 %56, label %57, label %59, !prof !522

57:                                               ; preds = %50
  %58 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %59

59:                                               ; preds = %50, %57
  %60 = phi ptr [ %58, %57 ], [ %1, %50 ]
  %61 = icmp eq i8 %33, 0
  br i1 %61, label %62, label %74, !prof !523

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.av, ptr %30, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !429
  %65 = and i32 %64, 8388608
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67, !prof !524

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !327
  %70 = and i32 %69, 2097152
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @Perl_mg_get(ptr noundef nonnull %51) #14
  br label %74

74:                                               ; preds = %72, %67, %62, %59
  %75 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %51, ptr %75, align 8, !tbaa !291
  store ptr %75, ptr @PL_stack_sp, align 8, !tbaa !291
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %77 = load ptr, ptr %76, align 8, !tbaa !300
  br label %78

78:                                               ; preds = %74, %44
  %79 = phi ptr [ %77, %74 ], [ %49, %44 ]
  ret ptr %79
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_join() local_unnamed_addr #0 !prof !525 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %5 = load i32, ptr %3, align 4, !tbaa !311
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !326
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !291
  %14 = getelementptr inbounds ptr, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !291
  tail call void @Perl_do_join(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %14, ptr noundef %1) #14
  store ptr %13, ptr %14, align 8, !tbaa !291
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !291
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %17 = load ptr, ptr %16, align 8, !tbaa !300
  ret ptr %17
}

; Function Attrs: optsize
declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pushre() local_unnamed_addr #0 !prof !526 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !527

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !291
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !291
  %13 = load ptr, ptr %11, align 8, !tbaa !300
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_print() local_unnamed_addr #0 !prof !528 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %5 = load i32, ptr %3, align 4, !tbaa !311
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !364
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  %14 = select i1 %12, ptr %7, ptr %13, !prof !529
  %15 = select i1 %12, ptr @PL_defoutgv, ptr %13, !prof !529
  %16 = load ptr, ptr %15, align 8, !tbaa !291
  %17 = icmp eq ptr %16, null
  br i1 %17, label %124, label %18, !prof !530

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !311
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -11
  %23 = icmp ult i32 %22, -2
  br i1 %23, label %124, label %24, !prof !531

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !308
  %27 = icmp eq ptr %26, null
  br i1 %27, label %92, label %28, !prof !530

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !460
  %31 = icmp eq ptr %30, null
  br i1 %31, label %92, label %32, !prof !383

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !327
  %35 = and i32 %34, 8388608
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %125, label %37, !prof !532

37:                                               ; preds = %32
  %38 = tail call ptr @Perl_mg_find(ptr noundef nonnull %30, i32 noundef 113) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %125, label %40, !prof !383

40:                                               ; preds = %121, %37
  %41 = phi ptr [ %38, %37 ], [ %122, %121 ]
  %42 = phi ptr [ %30, %37 ], [ %114, %121 ]
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %44 = getelementptr inbounds ptr, ptr %43, i64 %6
  %45 = icmp eq ptr %14, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
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
  %73 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !291
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #14
  store ptr %76, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !291
  br label %77

77:                                               ; preds = %70, %75
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  %79 = getelementptr inbounds ptr, ptr %71, i64 -1
  %80 = load ptr, ptr @PL_op, align 8, !tbaa !291
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
  %98 = load ptr, ptr %97, align 8, !tbaa !308
  %99 = getelementptr inbounds %struct.gp, ptr %98, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !533
  %101 = icmp eq ptr %100, null
  br i1 %101, label %124, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !327
  %105 = and i32 %104, 255
  %106 = add nsw i32 %105, -9
  %107 = icmp ult i32 %106, 2
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !308
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !460
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !327
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
  %126 = load ptr, ptr %30, align 8, !tbaa !461
  %127 = getelementptr inbounds %struct.xpvio, ptr %126, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !534
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %136, !prof !530

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.io, ptr %30, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !308
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %16, i8 noundef signext 60) #14
  br label %233

135:                                              ; preds = %130
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %16) #14
  br label %233

136:                                              ; preds = %125
  %137 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !291
  %138 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !308
  %140 = load ptr, ptr %139, align 8, !tbaa !465
  %141 = getelementptr inbounds ptr, ptr %14, i64 1
  %142 = icmp eq ptr %140, null
  br i1 %142, label %169, label %143, !prof !530

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.sv, ptr %140, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !327
  %146 = and i32 %145, 2162432
  %147 = icmp ne i32 %146, 0
  %148 = and i32 %145, 255
  %149 = icmp eq i32 %148, 8
  %150 = or i1 %147, %149
  %151 = and i32 %145, 16777471
  %152 = icmp eq i32 %151, 16777226
  %153 = or i1 %152, %150
  br i1 %153, label %154, label %169, !prof !535

154:                                              ; preds = %143
  %155 = icmp ugt ptr %141, %1
  br i1 %155, label %178, label %156

156:                                              ; preds = %154, %163
  %157 = phi ptr [ %161, %163 ], [ %141, %154 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !291
  %159 = tail call zeroext i1 @Perl_do_print(ptr noundef %158, ptr noundef nonnull %128) #14
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = getelementptr inbounds ptr, ptr %157, i64 1
  %162 = icmp ugt ptr %161, %1
  br i1 %162, label %178, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !291
  %165 = getelementptr inbounds %struct.gv, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !308
  %167 = load ptr, ptr %166, align 8, !tbaa !465
  %168 = tail call zeroext i1 @Perl_do_print(ptr noundef %167, ptr noundef nonnull %128) #14
  br i1 %168, label %156, label %178

169:                                              ; preds = %143, %136
  %170 = icmp ugt ptr %141, %1
  br i1 %170, label %178, label %171, !prof !536

171:                                              ; preds = %169, %175
  %172 = phi ptr [ %176, %175 ], [ %141, %169 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !291
  %174 = tail call zeroext i1 @Perl_do_print(ptr noundef %173, ptr noundef nonnull %128) #14
  br i1 %174, label %175, label %178, !prof !537

175:                                              ; preds = %171
  %176 = getelementptr inbounds ptr, ptr %172, i64 1
  %177 = icmp ugt ptr %176, %1
  br i1 %177, label %178, label %171, !prof !538, !llvm.loop !539

178:                                              ; preds = %160, %156, %163, %171, %175, %154, %169
  %179 = phi ptr [ %141, %169 ], [ %141, %154 ], [ %172, %171 ], [ %176, %175 ], [ %161, %160 ], [ %157, %156 ], [ %157, %163 ]
  %180 = icmp ugt ptr %179, %1
  br i1 %180, label %181, label %235, !prof !532

181:                                              ; preds = %178
  %182 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %183 = getelementptr inbounds %struct.op, ptr %182, i64 0, i32 4
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 511
  %186 = icmp eq i16 %185, 239
  br i1 %186, label %187, label %193, !prof !530

187:                                              ; preds = %181
  %188 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %128, ptr noundef nonnull @.str.3, i64 noundef 1) #14
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %235, label %190

190:                                              ; preds = %187
  %191 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %128) #14
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %209, label %235

193:                                              ; preds = %181
  %194 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !291
  %195 = icmp eq ptr %194, null
  br i1 %195, label %209, label %196, !prof !532

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !327
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
  %210 = load ptr, ptr %30, align 8, !tbaa !461
  %211 = getelementptr inbounds %struct.xpvio, ptr %210, i64 0, i32 17
  %212 = load i8, ptr %211, align 1, !tbaa !463
  %213 = and i8 %212, 4
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %218, label %215, !prof !540

215:                                              ; preds = %209
  %216 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %128) #14
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %235, label %218, !prof !541

218:                                              ; preds = %209, %215
  %219 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %220 = getelementptr inbounds ptr, ptr %219, i64 %6
  %221 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %222 = ptrtoint ptr %221 to i64
  %223 = ptrtoint ptr %220 to i64
  %224 = sub i64 %222, %223
  %225 = icmp slt i64 %224, 8
  br i1 %225, label %226, label %228, !prof !530

226:                                              ; preds = %218
  %227 = tail call ptr @Perl_stack_grow(ptr noundef %220, ptr noundef %220, i64 noundef 1) #14
  br label %228

228:                                              ; preds = %218, %226
  %229 = phi ptr [ %227, %226 ], [ %220, %218 ]
  %230 = getelementptr inbounds ptr, ptr %229, i64 1
  store ptr @PL_sv_yes, ptr %230, align 8, !tbaa !291
  store ptr %230, ptr @PL_stack_sp, align 8, !tbaa !291
  %231 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %232 = load ptr, ptr %231, align 8, !tbaa !300
  br label %250

233:                                              ; preds = %134, %135, %124
  %234 = tail call ptr @__errno_location() #17
  store i32 9, ptr %234, align 4, !tbaa !311
  br label %235

235:                                              ; preds = %233, %215, %207, %187, %190, %178
  %236 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %237 = getelementptr inbounds ptr, ptr %236, i64 %6
  %238 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  store ptr @PL_sv_undef, ptr %247, align 8, !tbaa !291
  store ptr %247, ptr @PL_stack_sp, align 8, !tbaa !291
  %248 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %249 = load ptr, ptr %248, align 8, !tbaa !300
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
define dso_local ptr @Perl_pp_rv2av() local_unnamed_addr #0 !prof !542 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  store ptr %2, ptr %1, align 8, !tbaa !291
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !364
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !543

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %14

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #14
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !291
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
  %25 = load i32, ptr %24, align 4, !tbaa !327
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !544

28:                                               ; preds = %14
  %29 = tail call i32 @Perl_mg_get(ptr noundef nonnull %3) #14
  %30 = load i32, ptr %24, align 4, !tbaa !327
  br label %31

31:                                               ; preds = %14, %28
  %32 = phi i32 [ %25, %14 ], [ %30, %28 ]
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %75, label %35, !prof !545

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !308
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !327
  %40 = and i32 %39, 1048576
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42, !prof !546

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 8, !tbaa !343
  %44 = load ptr, ptr %43, align 8, !tbaa !453
  %45 = getelementptr inbounds %struct.hv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !455
  %47 = and i32 %46, 268435456
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49, !prof !547

49:                                               ; preds = %42
  %50 = select i1 %22, i32 2, i32 3
  %51 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %3, i32 noundef %50) #14
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !308
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !327
  br label %56

56:                                               ; preds = %35, %42, %49
  %57 = phi i32 [ %55, %49 ], [ %39, %42 ], [ %39, %35 ]
  %58 = phi ptr [ %53, %49 ], [ %37, %42 ], [ %37, %35 ]
  %59 = and i32 %57, 255
  %60 = icmp eq i32 %59, %23
  br i1 %60, label %64, label %61, !prof !548

61:                                               ; preds = %56
  %62 = select i1 %22, ptr @.str.26, ptr @.str.29
  %63 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.4, ptr noundef nonnull %62) #14
  br label %261

64:                                               ; preds = %56
  %65 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %66 = getelementptr inbounds %struct.op, ptr %65, i64 0, i32 5
  %67 = load i8, ptr %66, align 2, !tbaa !364
  %68 = and i8 %67, 32
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %130, label %70, !prof !549

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.op, ptr %65, i64 0, i32 6
  %72 = load i8, ptr %71, align 1, !tbaa !315
  %73 = icmp sgt i8 %72, -1
  br i1 %73, label %130, label %74, !prof !550

74:                                               ; preds = %70
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull @PL_no_localize_ref) #14
  br label %130

75:                                               ; preds = %31
  %76 = and i32 %32, 255
  %77 = icmp eq i32 %76, %23
  br i1 %77, label %130, label %78, !prof !551

78:                                               ; preds = %75
  %79 = and i32 %32, 49152
  %80 = icmp eq i32 %79, 32768
  %81 = add nsw i32 %76, -9
  %82 = icmp ult i32 %81, 2
  %83 = and i1 %80, %82
  br i1 %83, label %88, label %84, !prof !552

84:                                               ; preds = %78
  %85 = select i1 %22, ptr @.str.26, ptr @.str.29
  %86 = call ptr @Perl_softref2xv(ptr noundef nonnull %3, ptr noundef nonnull %85, i32 noundef %23, ptr noundef nonnull %1) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %126, label %88, !prof !553

88:                                               ; preds = %78, %84
  %89 = phi ptr [ %86, %84 ], [ %3, %78 ]
  switch i16 %19, label %101 [
    i16 394, label %90
    i16 135, label %90
  ]

90:                                               ; preds = %88, %88
  %91 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !308
  %93 = getelementptr inbounds %struct.gp, ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !410
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %115, !prof !554

96:                                               ; preds = %90
  %97 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %89, i32 noundef 11) #14
  %98 = getelementptr inbounds %struct.gv, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !308
  %100 = getelementptr inbounds %struct.gp, ptr %99, i64 0, i32 6
  br label %112

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !308
  %104 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !555
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115, !prof !556

107:                                              ; preds = %101
  %108 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %89, i32 noundef 12) #14
  %109 = getelementptr inbounds %struct.gv, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !308
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 5
  br label %112

112:                                              ; preds = %96, %107
  %113 = phi ptr [ %111, %107 ], [ %100, %96 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !291
  br label %115

115:                                              ; preds = %112, %101, %90
  %116 = phi ptr [ %94, %90 ], [ %105, %101 ], [ %114, %112 ]
  %117 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %118 = getelementptr inbounds %struct.op, ptr %117, i64 0, i32 6
  %119 = load i8, ptr %118, align 1, !tbaa !315
  %120 = icmp sgt i8 %119, -1
  br i1 %120, label %130, label %121, !prof !557

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
  %127 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !291
  %128 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %129 = load ptr, ptr %128, align 8, !tbaa !300
  br label %261

130:                                              ; preds = %115, %124, %122, %75, %64, %70, %74
  %131 = phi ptr [ %58, %74 ], [ %58, %70 ], [ %58, %64 ], [ %3, %75 ], [ %125, %124 ], [ %123, %122 ], [ %116, %115 ]
  %132 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %133 = getelementptr inbounds %struct.op, ptr %132, i64 0, i32 5
  %134 = load i8, ptr %133, align 2, !tbaa !364
  %135 = and i8 %134, 16
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %137, !prof !558

137:                                              ; preds = %130
  %138 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %131, ptr %138, align 8, !tbaa !291
  %139 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %139, ptr @PL_stack_sp, align 8, !tbaa !291
  %140 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %141 = load ptr, ptr %140, align 8, !tbaa !300
  br label %261

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.op, ptr %132, i64 0, i32 6
  %144 = load i8, ptr %143, align 1, !tbaa !315
  %145 = and i8 %144, 8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %160, label %147, !prof !559

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
  %156 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %131, ptr %156, align 8, !tbaa !291
  %157 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %157, ptr @PL_stack_sp, align 8, !tbaa !291
  %158 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %159 = load ptr, ptr %158, align 8, !tbaa !300
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
  ], !prof !560

162:                                              ; preds = %161
  %163 = load ptr, ptr %1, align 8, !tbaa !291
  %164 = getelementptr inbounds ptr, ptr %163, i64 -1
  store ptr %164, ptr %1, align 8, !tbaa !291
  store ptr %164, ptr @PL_stack_sp, align 8, !tbaa !291
  call fastcc void @S_pushav(ptr noundef %131) #15
  %165 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  store ptr %165, ptr %1, align 8, !tbaa !291
  br label %252

166:                                              ; preds = %161
  %167 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %168 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %169 = getelementptr inbounds %struct.op, ptr %168, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !326
  %171 = getelementptr inbounds ptr, ptr %167, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !291
  %173 = getelementptr inbounds %struct.sv, ptr %131, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !327
  %175 = and i32 %174, 8388608
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177, !prof !561

177:                                              ; preds = %166
  %178 = call i32 @Perl_mg_size(ptr noundef nonnull %131) #14
  %179 = sext i32 %178 to i64
  br label %184

180:                                              ; preds = %166
  %181 = load ptr, ptr %131, align 8, !tbaa !425
  %182 = getelementptr inbounds %struct.xpvav, ptr %181, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !427
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i64 [ %179, %177 ], [ %183, %180 ]
  %186 = add nsw i64 %185, 1
  call void @Perl_sv_setiv(ptr noundef %172, i64 noundef %186) #14
  %187 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !327
  %189 = and i32 %188, 4194304
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191, !prof !561

191:                                              ; preds = %184
  %192 = call i32 @Perl_mg_set(ptr noundef nonnull %172) #14
  br label %193

193:                                              ; preds = %184, %191
  %194 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %172, ptr %194, align 8, !tbaa !291
  br label %252

195:                                              ; preds = %160
  %196 = icmp eq i32 %16, 3
  br i1 %196, label %197, label %200, !prof !562

197:                                              ; preds = %195
  %198 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  store ptr %131, ptr %198, align 8, !tbaa !291
  %199 = call ptr @Perl_do_kv() #14
  br label %261

200:                                              ; preds = %195
  %201 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %202 = getelementptr inbounds %struct.op, ptr %201, i64 0, i32 6
  %203 = load i8, ptr %202, align 1, !tbaa !315
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %213, !prof !563

207:                                              ; preds = %200
  %208 = and i32 %204, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %240, label %210, !prof !564

210:                                              ; preds = %207
  %211 = call i32 @Perl_block_gimme() #14
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %240

213:                                              ; preds = %210, %200
  %214 = getelementptr inbounds %struct.sv, ptr %131, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !327
  %216 = and i32 %215, 8388608
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218, !prof !565

218:                                              ; preds = %213
  %219 = call ptr @Perl_mg_find(ptr noundef nonnull %131, i32 noundef 80) #14
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %240

221:                                              ; preds = %218, %213
  %222 = load ptr, ptr %131, align 8, !tbaa !343
  %223 = getelementptr inbounds %struct.xpvhv, ptr %222, i64 0, i32 2
  %224 = load i64, ptr %223, align 8, !tbaa !566
  %225 = getelementptr inbounds %struct.xpvmg, ptr %222, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !308
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228, !prof !565

228:                                              ; preds = %221
  %229 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %131) #14
  %230 = sext i32 %229 to i64
  br label %231

231:                                              ; preds = %221, %228
  %232 = phi i64 [ %230, %228 ], [ 0, %221 ]
  %233 = icmp eq i64 %224, %232
  br i1 %233, label %234, label %237, !prof !568

234:                                              ; preds = %231
  %235 = call ptr @Perl_newSViv(i64 noundef 0) #14
  %236 = call ptr @Perl_sv_2mortal(ptr noundef %235) #14
  br label %237

237:                                              ; preds = %231, %234
  %238 = phi ptr [ %236, %234 ], [ @PL_sv_yes, %231 ]
  %239 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %238, ptr %239, align 8, !tbaa !291
  br label %252

240:                                              ; preds = %218, %210, %207
  %241 = icmp eq i32 %16, 2
  br i1 %241, label %242, label %252, !prof !569

242:                                              ; preds = %240
  %243 = call ptr @Perl_hv_scalar(ptr noundef %131) #14
  %244 = getelementptr inbounds %struct.sv, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !327
  %246 = and i32 %245, 4194304
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248, !prof !452

248:                                              ; preds = %242
  %249 = call i32 @Perl_mg_set(ptr noundef nonnull %243) #14
  br label %250

250:                                              ; preds = %242, %248
  %251 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %243, ptr %251, align 8, !tbaa !291
  br label %252

252:                                              ; preds = %162, %193, %161, %240, %250, %237
  %253 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %253, ptr @PL_stack_sp, align 8, !tbaa !291
  %254 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %255 = load ptr, ptr %254, align 8, !tbaa !300
  br label %261

256:                                              ; preds = %153
  %257 = select i1 %22, ptr @.str.7, ptr @.str.8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, ptr noundef nonnull %257) #14
  %258 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %258, ptr @PL_stack_sp, align 8, !tbaa !291
  %259 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %260 = load ptr, ptr %259, align 8, !tbaa !300
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
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

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
define dso_local ptr @Perl_pp_aassign() local_unnamed_addr #0 !prof !370 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  %5 = load i32, ptr %3, align 4, !tbaa !311
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = getelementptr inbounds i32, ptr %3, i64 -2
  store ptr %8, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %9 = load i32, ptr %4, align 4, !tbaa !311
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  store i16 256, ptr @PL_delaymagic, align 2, !tbaa !570
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !364
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19, !prof !572

19:                                               ; preds = %0
  %20 = zext nneg i8 %17 to i32
  br label %24

21:                                               ; preds = %0
  %22 = tail call i32 @Perl_block_gimme() #14
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %14, %19 ], [ %23, %21 ]
  %26 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %46, !prof !573

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !364
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42, !prof !451

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !315
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @Perl_is_lvalue_sub() #14
  %40 = icmp ne i32 %39, 0
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !291
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
  %50 = load i8, ptr %49, align 1, !tbaa !315
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  %53 = load i8, ptr @PL_sawalias, align 1, !range !359
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %117, label %56, !prof !574

56:                                               ; preds = %46
  %57 = icmp eq ptr %13, %1
  br i1 %57, label %58, label %89, !prof !575

58:                                               ; preds = %56
  %59 = load ptr, ptr %1, align 8, !tbaa !291
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %61, !prof !576

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !327
  %64 = and i32 %63, 14680064
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89, !prof !577

66:                                               ; preds = %61
  %67 = and i32 %63, 255
  %68 = add nsw i32 %67, -11
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %89, !prof !578

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 11
  %72 = load ptr, ptr %59, align 8, !tbaa !291
  br i1 %71, label %73, label %77, !prof !579

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xpvav, ptr %72, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !427
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %117, label %89, !prof !580

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.xpvhv, ptr %72, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !566
  %80 = getelementptr inbounds %struct.xpvmg, ptr %72, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !308
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !581

83:                                               ; preds = %77
  %84 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %59) #14
  %85 = sext i32 %84 to i64
  br label %86

86:                                               ; preds = %77, %83
  %87 = phi i64 [ %85, %83 ], [ 0, %77 ]
  %88 = icmp eq i64 %79, %87
  br i1 %88, label %117, label %89, !prof !582

89:                                               ; preds = %66, %56, %58, %61, %73, %86
  %90 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %91 = ptrtoint ptr %7 to i64
  %92 = ptrtoint ptr %12 to i64
  %93 = sub i64 %91, %92
  %94 = ashr exact i64 %93, 3
  %95 = add nsw i64 %94, 1
  %96 = add nsw i64 %95, %90
  %97 = load i64, ptr @PL_tmps_max, align 8, !tbaa !309
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %101, label %99, !prof !583

99:                                               ; preds = %89
  %100 = tail call i64 @Perl_tmps_grow_p(i64 noundef %96) #14
  br label %101

101:                                              ; preds = %89, %99
  %102 = icmp ugt ptr %12, %7
  br i1 %102, label %117, label %103, !prof !584

103:                                              ; preds = %101, %114
  %104 = phi ptr [ %115, %114 ], [ %12, %101 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !291
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107, !prof !585

107:                                              ; preds = %103
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %108 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !327
  %110 = icmp eq i32 %109, 255
  br i1 %110, label %111, label %112, !prof !586

111:                                              ; preds = %107
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef nonnull %105) #14
  br label %112

112:                                              ; preds = %107, %111
  %113 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %105, i32 noundef 1554) #14
  store ptr %113, ptr %104, align 8, !tbaa !291
  br label %114

114:                                              ; preds = %112, %103
  %115 = getelementptr inbounds ptr, ptr %104, i64 1
  %116 = icmp ugt ptr %115, %7
  br i1 %116, label %117, label %103, !prof !587, !llvm.loop !588

117:                                              ; preds = %114, %73, %101, %46, %86
  %118 = icmp ugt ptr %13, %1
  br i1 %118, label %387, label %119, !prof !589

119:                                              ; preds = %117, %377
  %120 = phi ptr [ %381, %377 ], [ %7, %117 ]
  %121 = phi ptr [ %380, %377 ], [ %12, %117 ]
  %122 = phi ptr [ %133, %377 ], [ %13, %117 ]
  %123 = phi ptr [ %379, %377 ], [ null, %117 ]
  %124 = phi ptr [ %378, %377 ], [ null, %117 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %125 = getelementptr inbounds ptr, ptr %122, i64 1
  %126 = load ptr, ptr %122, align 8, !tbaa !291
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131, !prof !590

128:                                              ; preds = %119
  %129 = getelementptr inbounds ptr, ptr %122, i64 2
  %130 = load ptr, ptr %125, align 8, !tbaa !291
  br label %131

131:                                              ; preds = %119, %128
  %132 = phi ptr [ %126, %119 ], [ %130, %128 ]
  %133 = phi ptr [ %125, %119 ], [ %129, %128 ]
  %134 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !311
  %136 = trunc i32 %135 to i8
  switch i8 %136, label %326 [
    i8 11, label %137
    i8 12, label %226
  ], !prof !591

137:                                              ; preds = %131
  %138 = and i32 %135, 14680064
  %139 = icmp eq i32 %138, 0
  tail call void @Perl_push_scope() #14
  %140 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !365
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 8, !tbaa !365
  tail call void @Perl_save_pushptr(ptr noundef nonnull %132, i32 noundef 11) #14
  tail call void @Perl_av_clear(ptr noundef nonnull %132) #14
  %143 = ptrtoint ptr %120 to i64
  %144 = ptrtoint ptr %121 to i64
  %145 = sub i64 %143, %144
  %146 = ashr exact i64 %145, 3
  tail call void @Perl_av_extend(ptr noundef nonnull %132, i64 noundef %146) #14
  %147 = icmp ugt ptr %121, %120
  br i1 %147, label %214, label %148, !prof !592

148:                                              ; preds = %137
  %149 = icmp eq i32 %48, 0
  br label %150

150:                                              ; preds = %148, %212
  %151 = phi ptr [ %198, %212 ], [ %121, %148 ]
  %152 = phi i64 [ %199, %212 ], [ 0, %148 ]
  %153 = load ptr, ptr %151, align 8, !tbaa !291
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155, !prof !593

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !327
  %158 = and i32 %157, 2097152
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160, !prof !593

160:                                              ; preds = %155
  %161 = tail call i32 @Perl_mg_get(ptr noundef nonnull %153) #14
  br label %162

162:                                              ; preds = %160, %155, %150
  br i1 %127, label %166, label %163, !prof !593

163:                                              ; preds = %162
  %164 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %165 = load ptr, ptr %151, align 8, !tbaa !291
  tail call void @Perl_sv_setsv_flags(ptr noundef %164, ptr noundef %165, i32 noundef 1536) #14
  store ptr %164, ptr %151, align 8, !tbaa !291
  br label %196

166:                                              ; preds = %162
  %167 = load ptr, ptr %151, align 8, !tbaa !291
  %168 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !327
  %170 = and i32 %169, 2048
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.10) #14
  br label %488

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !308
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !327
  %179 = and i32 %178, 255
  %180 = icmp ugt i32 %179, 10
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.11) #14
  br label %488

183:                                              ; preds = %174
  br i1 %149, label %188, label %184

184:                                              ; preds = %183
  %185 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %167, i32 noundef 1538) #14
  store ptr %185, ptr %151, align 8, !tbaa !291
  %186 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !308
  br label %188

188:                                              ; preds = %184, %183
  %189 = phi ptr [ %187, %184 ], [ %176, %183 ]
  %190 = phi ptr [ %185, %184 ], [ %167, %183 ]
  %191 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %192 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !365
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !365
  %195 = load ptr, ptr %191, align 8, !tbaa !308
  br label %196

196:                                              ; preds = %188, %163
  %197 = phi ptr [ %195, %188 ], [ %164, %163 ]
  %198 = getelementptr inbounds ptr, ptr %151, i64 1
  %199 = add nuw nsw i64 %152, 1
  %200 = tail call ptr @Perl_av_store(ptr noundef %132, i64 noundef %152, ptr noundef %197) #14
  br i1 %139, label %212, label %201, !prof !594

201:                                              ; preds = %196
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %205, !prof !595

203:                                              ; preds = %201
  %204 = tail call ptr @Perl_sv_2mortal(ptr noundef %197) #14
  br label %205

205:                                              ; preds = %203, %201
  %206 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !327
  %208 = and i32 %207, 4194304
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210, !prof !595

210:                                              ; preds = %205
  %211 = tail call i32 @Perl_mg_set(ptr noundef nonnull %197) #14
  br label %212

212:                                              ; preds = %196, %210, %205
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %213 = icmp ugt ptr %198, %120
  br i1 %213, label %214, label %150, !prof !596, !llvm.loop !597

214:                                              ; preds = %212, %137
  %215 = phi ptr [ %121, %137 ], [ %198, %212 ]
  %216 = load i16, ptr @PL_delaymagic, align 2, !tbaa !570
  %217 = and i16 %216, 4
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %225, label %219, !prof !598

219:                                              ; preds = %214
  %220 = load i32, ptr %134, align 4, !tbaa !327
  %221 = and i32 %220, 4194304
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223, !prof !599

223:                                              ; preds = %219
  %224 = tail call i32 @Perl_mg_set(ptr noundef nonnull %132) #14
  br label %225

225:                                              ; preds = %223, %219, %214
  tail call void @Perl_pop_scope() #14
  br label %377

226:                                              ; preds = %131
  %227 = and i32 %135, 14680064
  %228 = icmp eq i32 %227, 0
  %229 = ptrtoint ptr %120 to i64
  %230 = ptrtoint ptr %121 to i64
  %231 = sub i64 %229, %230
  %232 = and i64 %231, 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236, !prof !600

234:                                              ; preds = %226
  tail call fastcc void @S_do_oddball(ptr noundef %120, ptr noundef %121) #15
  %235 = getelementptr inbounds ptr, ptr %120, i64 1
  store ptr @PL_sv_undef, ptr %235, align 8, !tbaa !291
  br label %236

236:                                              ; preds = %226, %234
  tail call void @Perl_push_scope() #14
  %237 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !365
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 8, !tbaa !365
  tail call void @Perl_save_pushptr(ptr noundef nonnull %132, i32 noundef 11) #14
  tail call void @Perl_hv_clear(ptr noundef nonnull %132) #14
  %240 = lshr exact i64 %232, 3
  %241 = xor i64 %240, 1
  %242 = getelementptr inbounds ptr, ptr %120, i64 %241
  %243 = icmp ult ptr %121, %242
  br i1 %243, label %244, label %246, !prof !601

244:                                              ; preds = %236
  %245 = icmp eq i32 %48, 0
  br label %247

246:                                              ; preds = %236
  tail call void @Perl_pop_scope() #14
  br label %320

247:                                              ; preds = %244, %296
  %248 = phi ptr [ %271, %296 ], [ %121, %244 ]
  %249 = phi ptr [ %283, %296 ], [ %121, %244 ]
  %250 = phi i32 [ %282, %296 ], [ 0, %244 ]
  %251 = load ptr, ptr %248, align 8, !tbaa !291
  br i1 %245, label %252, label %257, !prof !602

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !327
  %255 = and i32 %254, 2097152
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257, !prof !602

257:                                              ; preds = %252, %247
  %258 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %251, i32 noundef 1538) #14
  br label %259

259:                                              ; preds = %252, %257
  %260 = phi ptr [ %258, %257 ], [ %251, %252 ]
  %261 = getelementptr inbounds ptr, ptr %248, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !291
  %263 = getelementptr inbounds %struct.sv, ptr %262, i64 0, i32 2
  %264 = load i32, ptr %263, align 4, !tbaa !327
  %265 = and i32 %264, 2097152
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267, !prof !602

267:                                              ; preds = %259
  %268 = tail call i32 @Perl_mg_get(ptr noundef nonnull %262) #14
  br label %269

269:                                              ; preds = %259, %267
  %270 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %271 = getelementptr inbounds ptr, ptr %248, i64 2
  %272 = load ptr, ptr %261, align 8, !tbaa !291
  tail call void @Perl_sv_setsv_flags(ptr noundef %270, ptr noundef %272, i32 noundef 1536) #14
  br i1 %27, label %273, label %281, !prof !603

273:                                              ; preds = %269
  %274 = tail call ptr @Perl_hv_common(ptr noundef %132, ptr noundef %260, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = add nsw i32 %250, 2
  br label %281

278:                                              ; preds = %273
  %279 = getelementptr inbounds ptr, ptr %249, i64 1
  store ptr %260, ptr %249, align 8, !tbaa !291
  %280 = getelementptr inbounds ptr, ptr %249, i64 2
  store ptr %270, ptr %279, align 8, !tbaa !291
  br label %281

281:                                              ; preds = %276, %278, %269
  %282 = phi i32 [ %277, %276 ], [ %250, %278 ], [ %250, %269 ]
  %283 = phi ptr [ %249, %276 ], [ %280, %278 ], [ %249, %269 ]
  %284 = tail call ptr @Perl_hv_common(ptr noundef %132, ptr noundef %260, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %270, i32 noundef 0) #14
  br i1 %228, label %296, label %285, !prof !602

285:                                              ; preds = %281
  %286 = icmp eq ptr %284, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %285
  %288 = tail call ptr @Perl_sv_2mortal(ptr noundef %270) #14
  br label %289

289:                                              ; preds = %285, %287
  %290 = getelementptr inbounds %struct.sv, ptr %270, i64 0, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !327
  %292 = and i32 %291, 4194304
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %289
  %295 = tail call i32 @Perl_mg_set(ptr noundef nonnull %270) #14
  br label %296

296:                                              ; preds = %294, %289, %281
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %297 = icmp ult ptr %271, %242
  br i1 %297, label %247, label %298, !prof !604, !llvm.loop !605

298:                                              ; preds = %296
  tail call void @Perl_pop_scope() #14
  %299 = icmp eq i32 %282, 0
  br i1 %299, label %320, label %300, !prof !606

300:                                              ; preds = %298
  br i1 %27, label %301, label %320

301:                                              ; preds = %300
  %302 = sext i32 %282 to i64
  %303 = sub nsw i64 0, %302
  %304 = getelementptr inbounds ptr, ptr %120, i64 %303
  %305 = getelementptr inbounds ptr, ptr %304, i64 %241
  %306 = icmp ult ptr %121, %305
  br i1 %306, label %307, label %320

307:                                              ; preds = %301, %316
  %308 = phi ptr [ %318, %316 ], [ %121, %301 ]
  %309 = getelementptr inbounds ptr, ptr %308, i64 1
  %310 = load ptr, ptr %308, align 8, !tbaa !291
  %311 = tail call ptr @Perl_hv_common(ptr noundef %132, ptr noundef %310, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %312 = icmp eq ptr %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.he, ptr %311, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !308
  br label %316

316:                                              ; preds = %307, %313
  %317 = phi ptr [ %315, %313 ], [ @PL_sv_undef, %307 ]
  %318 = getelementptr inbounds ptr, ptr %308, i64 2
  store ptr %317, ptr %309, align 8, !tbaa !291
  %319 = icmp ult ptr %318, %305
  br i1 %319, label %307, label %320, !llvm.loop !607

320:                                              ; preds = %316, %246, %301, %300, %298
  %321 = phi ptr [ %271, %300 ], [ %271, %298 ], [ %121, %301 ], [ %121, %246 ], [ %318, %316 ]
  %322 = phi ptr [ %120, %300 ], [ %120, %298 ], [ %304, %301 ], [ %120, %246 ], [ %304, %316 ]
  br i1 %233, label %323, label %377, !prof !600

323:                                              ; preds = %320
  %324 = zext i1 %27 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  br label %377

326:                                              ; preds = %131
  %327 = and i32 %135, 134283264
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %341, label %329, !prof !608

329:                                              ; preds = %326
  %330 = icmp eq ptr %132, @PL_sv_undef
  %331 = icmp eq ptr %132, @PL_sv_yes
  %332 = or i1 %330, %331
  %333 = icmp eq ptr %132, @PL_sv_no
  %334 = or i1 %333, %332
  br i1 %334, label %337, label %335, !prof !609

335:                                              ; preds = %329
  %336 = icmp eq ptr %132, @PL_sv_placeholder
  br i1 %336, label %337, label %341

337:                                              ; preds = %335, %329
  %338 = icmp ule ptr %121, %120
  %339 = zext i1 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %121, i64 %339
  br label %377

341:                                              ; preds = %335, %326
  %342 = icmp ugt ptr %121, %120
  br i1 %342, label %369, label %343, !prof !610

343:                                              ; preds = %341
  %344 = and i32 %135, 524288
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %366, label %346, !prof !611

346:                                              ; preds = %343
  %347 = and i32 %135, 4194304
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !365
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %366

353:                                              ; preds = %349
  %354 = and i32 %135, 49152
  %355 = icmp eq i32 %354, 32768
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = and i32 %135, 255
  %358 = add nsw i32 %357, -9
  %359 = icmp ult i32 %358, 2
  %360 = and i32 %135, 16777216
  %361 = icmp eq i32 %360, 0
  %362 = and i1 %361, %359
  br i1 %362, label %366, label %363

363:                                              ; preds = %356, %353
  %364 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %364, label %365, label %366

365:                                              ; preds = %363
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #14
  br label %366

366:                                              ; preds = %356, %343, %346, %349, %363, %365
  %367 = load ptr, ptr %121, align 8, !tbaa !291
  tail call void @Perl_sv_setsv_flags(ptr noundef %132, ptr noundef %367, i32 noundef 1538) #14
  %368 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %132, ptr %121, align 8, !tbaa !291
  br label %370

369:                                              ; preds = %341
  tail call void @Perl_sv_setsv_flags(ptr noundef %132, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #14
  br label %370

370:                                              ; preds = %366, %369
  %371 = phi ptr [ %368, %366 ], [ %121, %369 ]
  %372 = load i32, ptr %134, align 4, !tbaa !327
  %373 = and i32 %372, 4194304
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %377, label %375, !prof !612

375:                                              ; preds = %370
  %376 = tail call i32 @Perl_mg_set(ptr noundef nonnull %132) #14
  br label %377

377:                                              ; preds = %337, %323, %225, %370, %375, %320
  %378 = phi ptr [ %124, %375 ], [ %124, %370 ], [ %124, %225 ], [ %132, %323 ], [ %132, %320 ], [ %124, %337 ]
  %379 = phi ptr [ %123, %375 ], [ %123, %370 ], [ %132, %225 ], [ %123, %323 ], [ %123, %320 ], [ %123, %337 ]
  %380 = phi ptr [ %371, %375 ], [ %371, %370 ], [ %215, %225 ], [ %321, %323 ], [ %321, %320 ], [ %340, %337 ]
  %381 = phi ptr [ %120, %375 ], [ %120, %370 ], [ %120, %225 ], [ %325, %323 ], [ %322, %320 ], [ %120, %337 ]
  %382 = icmp ugt ptr %133, %1
  br i1 %382, label %383, label %119, !prof !613, !llvm.loop !614

383:                                              ; preds = %377
  %384 = icmp ne ptr %379, null
  %385 = icmp ne ptr %378, null
  %386 = select i1 %384, i1 true, i1 %385
  br label %387

387:                                              ; preds = %383, %117
  %388 = phi i1 [ false, %117 ], [ %386, %383 ]
  %389 = phi ptr [ %12, %117 ], [ %380, %383 ]
  %390 = phi ptr [ %7, %117 ], [ %381, %383 ]
  %391 = load i16, ptr @PL_delaymagic, align 2, !tbaa !570
  %392 = and i16 %391, -257
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %440, label %394, !prof !615

394:                                              ; preds = %387
  %395 = tail call i32 @getuid() #14
  %396 = tail call i32 @geteuid() #14
  %397 = tail call i32 @getgid() #14
  %398 = tail call i32 @getegid() #14
  %399 = load i16, ptr @PL_delaymagic, align 2, !tbaa !570
  %400 = and i16 %399, 3
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %413, label %402, !prof !599

402:                                              ; preds = %394
  %403 = load i32, ptr @PL_delaymagic_uid, align 4, !tbaa !311
  %404 = load i32, ptr @PL_delaymagic_euid, align 4, !tbaa !311
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %408, label %406

406:                                              ; preds = %402
  %407 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.12) #14
  br label %488

408:                                              ; preds = %402
  %409 = tail call i32 @setuid(i32 noundef %403) #14
  %410 = tail call i32 @getuid() #14
  %411 = tail call i32 @geteuid() #14
  %412 = load i16, ptr @PL_delaymagic, align 2, !tbaa !570
  br label %413

413:                                              ; preds = %408, %394
  %414 = phi i16 [ %412, %408 ], [ %399, %394 ]
  %415 = phi i32 [ %410, %408 ], [ %395, %394 ]
  %416 = phi i32 [ %411, %408 ], [ %396, %394 ]
  %417 = and i16 %414, 48
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %429, label %419, !prof !599

419:                                              ; preds = %413
  %420 = load i32, ptr @PL_delaymagic_gid, align 4, !tbaa !311
  %421 = load i32, ptr @PL_delaymagic_egid, align 4, !tbaa !311
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %425, label %423

423:                                              ; preds = %419
  %424 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.13) #14
  br label %488

425:                                              ; preds = %419
  %426 = tail call i32 @setgid(i32 noundef %420) #14
  %427 = tail call i32 @getgid() #14
  %428 = tail call i32 @getegid() #14
  br label %429

429:                                              ; preds = %413, %425
  %430 = phi i32 [ %427, %425 ], [ %397, %413 ]
  %431 = phi i32 [ %428, %425 ], [ %398, %413 ]
  %432 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %433 = icmp ne i32 %415, 0
  %434 = icmp ne i32 %416, %415
  %435 = icmp ne i32 %431, %430
  %436 = select i1 %434, i1 true, i1 %435
  %437 = select i1 %433, i1 %436, i1 false
  %438 = zext i1 %437 to i8
  %439 = or i8 %432, %438
  store i8 %439, ptr @PL_tainting, align 1, !tbaa !303
  br label %440

440:                                              ; preds = %429, %387
  store i16 0, ptr @PL_delaymagic, align 2, !tbaa !570
  switch i32 %26, label %460 [
    i32 1, label %484
    i32 2, label %441
  ], !prof !616

441:                                              ; preds = %440
  %442 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %443 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %444 = getelementptr inbounds %struct.op, ptr %443, i64 0, i32 3
  %445 = load i64, ptr %444, align 8, !tbaa !326
  %446 = getelementptr inbounds ptr, ptr %442, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !291
  %448 = ptrtoint ptr %390 to i64
  %449 = ptrtoint ptr %12 to i64
  %450 = sub i64 %448, %449
  %451 = ashr exact i64 %450, 3
  %452 = add nsw i64 %451, 1
  tail call void @Perl_sv_setiv(ptr noundef %447, i64 noundef %452) #14
  %453 = getelementptr inbounds %struct.sv, ptr %447, i64 0, i32 2
  %454 = load i32, ptr %453, align 4, !tbaa !327
  %455 = and i32 %454, 4194304
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %459, label %457, !prof !617

457:                                              ; preds = %441
  %458 = tail call i32 @Perl_mg_set(ptr noundef nonnull %447) #14
  br label %459

459:                                              ; preds = %441, %457
  store ptr %447, ptr %12, align 8, !tbaa !291
  br label %484

460:                                              ; preds = %440
  br i1 %388, label %484, label %461, !prof !458

461:                                              ; preds = %460
  %462 = ptrtoint ptr %1 to i64
  %463 = ptrtoint ptr %13 to i64
  %464 = sub i64 %462, %463
  %465 = getelementptr inbounds i8, ptr %12, i64 %464
  %466 = icmp ugt ptr %389, %465
  br i1 %466, label %484, label %467

467:                                              ; preds = %461
  %468 = ptrtoint ptr %389 to i64
  %469 = ptrtoint ptr %12 to i64
  %470 = sub i64 %468, %469
  %471 = getelementptr inbounds i8, ptr %13, i64 %470
  br label %472

472:                                              ; preds = %467, %479
  %473 = phi ptr [ %482, %479 ], [ %389, %467 ]
  %474 = phi ptr [ %480, %479 ], [ %471, %467 ]
  %475 = icmp ugt ptr %474, %1
  br i1 %475, label %479, label %476

476:                                              ; preds = %472
  %477 = getelementptr inbounds ptr, ptr %474, i64 1
  %478 = load ptr, ptr %474, align 8, !tbaa !291
  br label %479

479:                                              ; preds = %472, %476
  %480 = phi ptr [ %477, %476 ], [ %474, %472 ]
  %481 = phi ptr [ %478, %476 ], [ @PL_sv_undef, %472 ]
  %482 = getelementptr inbounds ptr, ptr %473, i64 1
  store ptr %481, ptr %473, align 8, !tbaa !291
  %483 = icmp ugt ptr %482, %465
  br i1 %483, label %484, label %472, !llvm.loop !618

484:                                              ; preds = %479, %461, %460, %440, %459
  %485 = phi ptr [ %12, %459 ], [ %11, %440 ], [ %390, %460 ], [ %465, %461 ], [ %465, %479 ]
  store ptr %485, ptr @PL_stack_sp, align 8, !tbaa !291
  %486 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %487 = load ptr, ptr %486, align 8, !tbaa !300
  br label %488

488:                                              ; preds = %423, %406, %181, %172, %484
  %489 = phi ptr [ %487, %484 ], [ %173, %172 ], [ %182, %181 ], [ %424, %423 ], [ %407, %406 ]
  ret ptr %489
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
define internal fastcc void @S_do_oddball(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 !prof !370 !PGOFuncName !619 {
  %3 = load ptr, ptr %0, align 8, !tbaa !291
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !291
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !327
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !308
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !327
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -11
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %9, %7
  br label %24

24:                                               ; preds = %15, %23
  %25 = phi ptr [ @.str.46, %23 ], [ @.str.45, %15 ]
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
define dso_local ptr @Perl_pp_qr() local_unnamed_addr #0 !prof !620 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !621
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !623

6:                                                ; preds = %0
  %7 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #15
  %8 = getelementptr inbounds %struct.regexp, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !624
  %10 = getelementptr inbounds %struct.regexp_engine, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  %12 = tail call ptr %11(ptr noundef nonnull %4) #14
  br label %13

13:                                               ; preds = %0, %6
  %14 = phi ptr [ %12, %6 ], [ null, %0 ]
  %15 = tail call ptr @Perl_sv_newmortal() #14
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !327
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !628

20:                                               ; preds = %13
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %15, i32 noundef 1) #14
  br label %21

21:                                               ; preds = %20, %13
  %22 = tail call ptr @Perl_reg_temp_copy(ptr noundef null, ptr noundef %4) #14
  %23 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !308
  %24 = load i32, ptr %16, align 4, !tbaa !327
  %25 = or i32 %24, 2048
  store i32 %25, ptr %16, align 4, !tbaa !327
  %26 = tail call fastcc ptr @S_ReANY(ptr noundef %22) #15
  %27 = getelementptr inbounds %struct.regexp, ptr %26, i64 0, i32 25
  %28 = load ptr, ptr %27, align 8, !tbaa !291
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !628

30:                                               ; preds = %21
  %31 = load ptr, ptr %28, align 8, !tbaa !629
  %32 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 12
  %33 = load i32, ptr %32, align 4, !tbaa !631
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @Perl_cv_clone(ptr noundef nonnull %28) #14
  store ptr %37, ptr %27, align 8, !tbaa !291
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %28) #15
  br label %38

38:                                               ; preds = %21, %30, %36
  %39 = icmp eq ptr %14, null
  br i1 %39, label %43, label %40, !prof !623

40:                                               ; preds = %38
  %41 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %14, i32 noundef 1) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %14) #15
  %42 = tail call ptr @Perl_sv_bless(ptr noundef nonnull %15, ptr noundef %41) #14
  br label %43

43:                                               ; preds = %40, %38
  %44 = tail call fastcc ptr @S_ReANY(ptr noundef %4) #15
  %45 = getelementptr inbounds %struct.regexp, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !633
  %47 = and i32 %46, 134217728
  %48 = icmp eq i32 %47, 0
  %49 = load i8, ptr @PL_tainting, align 1, !range !359
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %57, label %52, !prof !634

52:                                               ; preds = %43
  tail call void @Perl_sv_magic(ptr noundef nonnull %15, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  %53 = load i8, ptr @PL_tainting, align 1, !tbaa !303
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %23, align 8, !tbaa !308
  tail call void @Perl_sv_magic(ptr noundef %56, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %57

57:                                               ; preds = %55, %52, %43
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %1 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65, !prof !623

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %1, %57 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %15, ptr %67, align 8, !tbaa !291
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !291
  %68 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %69 = load ptr, ptr %68, align 8, !tbaa !300
  ret ptr %69
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !635 !PGOFuncName !636 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
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
define dso_local ptr @Perl_pp_match() local_unnamed_addr #0 !prof !637 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !621
  %6 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !364
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !638

10:                                               ; preds = %0
  %11 = zext nneg i8 %8 to i32
  br label %17

12:                                               ; preds = %0
  %13 = tail call i32 @Perl_block_gimme() #14
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !364
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i8 [ %7, %10 ], [ %16, %12 ]
  %19 = phi ptr [ %3, %10 ], [ %14, %12 ]
  %20 = phi i32 [ %11, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %21 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %22 = and i8 %18, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24, !prof !639

24:                                               ; preds = %17
  %25 = getelementptr inbounds ptr, ptr %2, i64 -1
  %26 = load ptr, ptr %2, align 8, !tbaa !291
  br label %55

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.op, ptr %19, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !326
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31, !prof !640

31:                                               ; preds = %27
  %32 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %33 = getelementptr inbounds ptr, ptr %32, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !291
  br label %55

35:                                               ; preds = %27
  %36 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %37 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !308
  %39 = load ptr, ptr %38, align 8, !tbaa !291
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46, !prof !641

41:                                               ; preds = %35
  %42 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %36, i32 noundef 0) #14
  %43 = getelementptr inbounds %struct.gv, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !308
  %45 = load ptr, ptr %44, align 8, !tbaa !291
  br label %46

46:                                               ; preds = %35, %41
  %47 = phi ptr [ %45, %41 ], [ %39, %35 ]
  %48 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %2 to i64
  %51 = sub i64 %49, %50
  %52 = icmp slt i64 %51, 8
  br i1 %52, label %53, label %55, !prof !641

53:                                               ; preds = %46
  %54 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #14
  br label %55

55:                                               ; preds = %31, %46, %53, %24
  %56 = phi ptr [ %26, %24 ], [ %34, %31 ], [ %47, %53 ], [ %47, %46 ]
  %57 = phi ptr [ %25, %24 ], [ %2, %31 ], [ %54, %53 ], [ %2, %46 ]
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !291
  %58 = tail call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %59 = getelementptr inbounds %struct.regexp, ptr %58, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !642
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !327
  %64 = and i32 %63, 2098176
  %65 = icmp eq i32 %64, 1024
  br i1 %61, label %75, label %66, !prof !643

66:                                               ; preds = %55
  br i1 %65, label %67, label %73, !prof !644

67:                                               ; preds = %66
  %68 = load ptr, ptr %56, align 8, !tbaa !343
  %69 = getelementptr inbounds %struct.xpv, ptr %68, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !345
  store i64 %70, ptr %1, align 8, !tbaa !309
  %71 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !308
  br label %84

73:                                               ; preds = %66
  %74 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %1, i32 noundef 32) #14
  br label %84

75:                                               ; preds = %55
  br i1 %65, label %76, label %82, !prof !645

76:                                               ; preds = %75
  %77 = load ptr, ptr %56, align 8, !tbaa !343
  %78 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !345
  store i64 %79, ptr %1, align 8, !tbaa !309
  %80 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !308
  br label %84

82:                                               ; preds = %75
  %83 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %84

84:                                               ; preds = %76, %82, %67, %73
  %85 = phi ptr [ %72, %67 ], [ %74, %73 ], [ %81, %76 ], [ %83, %82 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89, !prof !646

87:                                               ; preds = %84
  %88 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.14) #14
  br label %440

89:                                               ; preds = %84
  %90 = load i64, ptr %1, align 8, !tbaa !309
  %91 = getelementptr inbounds i8, ptr %85, i64 %90
  %92 = call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %93 = getelementptr inbounds %struct.regexp, ptr %92, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !633
  %95 = and i32 %94, 134217728
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105, !prof !647

97:                                               ; preds = %89
  %98 = load i8, ptr @PL_tainted, align 1, !tbaa !303, !range !359, !noundef !360
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100, !prof !647

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %102 = load i32, ptr %101, align 8, !tbaa !648
  %103 = and i32 %102, 524288
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %97, %100, %89
  %106 = phi i1 [ true, %89 ], [ false, %97 ], [ %104, %100 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %107 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %108 = load i32, ptr %107, align 8, !tbaa !648
  %109 = and i32 %108, 16777216
  %110 = and i32 %108, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %411, !prof !647

112:                                              ; preds = %105
  %113 = call fastcc ptr @S_ReANY(ptr noundef %5) #15
  %114 = getelementptr inbounds %struct.regexp, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !642
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %134, !prof !643

117:                                              ; preds = %112
  %118 = load ptr, ptr %5, align 8, !tbaa !649
  %119 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !345
  %121 = call fastcc ptr @S_ReANY(ptr noundef nonnull %5) #15
  %122 = getelementptr inbounds %struct.regexp, ptr %121, i64 0, i32 24
  %123 = load i16, ptr %122, align 8
  %124 = and i16 %123, 15
  %125 = add nuw nsw i16 %124, 1
  %126 = zext nneg i16 %125 to i64
  %127 = icmp eq i64 %120, %126
  br i1 %127, label %128, label %134, !prof !651

128:                                              ; preds = %117
  %129 = load ptr, ptr @PL_curpm, align 8, !tbaa !291
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.pmop, ptr %129, i64 0, i32 9
  %133 = load ptr, ptr %132, align 8, !tbaa !621
  br label %134

134:                                              ; preds = %131, %128, %117, %112
  %135 = phi ptr [ %5, %112 ], [ %5, %117 ], [ %133, %131 ], [ %5, %128 ]
  %136 = phi ptr [ %3, %112 ], [ %3, %117 ], [ %129, %131 ], [ %3, %128 ]
  %137 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %138 = getelementptr inbounds %struct.regexp, ptr %137, i64 0, i32 8
  %139 = load i64, ptr %138, align 8, !tbaa !652
  %140 = icmp sgt i64 %139, -1
  %141 = icmp ugt i64 %139, %90
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %411, label %143, !prof !653

143:                                              ; preds = %134
  %144 = icmp eq i32 %109, 0
  br i1 %144, label %164, label %145, !prof !654

145:                                              ; preds = %143
  %146 = call ptr @Perl_mg_find_mglob(ptr noundef nonnull %56) #14
  %147 = icmp eq ptr %146, null
  br i1 %147, label %159, label %148, !prof !655

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.magic, ptr %146, i64 0, i32 5
  %150 = load i64, ptr %149, align 8, !tbaa !656
  %151 = icmp sgt i64 %150, -1
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i64, ptr %1, align 8, !tbaa !309
  %154 = call fastcc i64 @S_MgBYTEPOS(ptr noundef nonnull %146, ptr noundef nonnull %56, ptr noundef nonnull %85, i64 noundef %153) #15
  %155 = getelementptr inbounds %struct.magic, ptr %146, i64 0, i32 4
  %156 = load i8, ptr %155, align 1, !tbaa !658
  %157 = and i8 %156, 1
  %158 = zext nneg i8 %157 to i64
  br label %159

159:                                              ; preds = %152, %145, %148
  %160 = phi i64 [ %154, %152 ], [ 0, %145 ], [ 0, %148 ]
  %161 = phi i64 [ %158, %152 ], [ 0, %145 ], [ 0, %148 ]
  %162 = icmp eq i32 %20, 3
  %163 = select i1 %162, i8 33, i8 97, !prof !659
  br label %164

164:                                              ; preds = %159, %143
  %165 = phi ptr [ null, %143 ], [ %146, %159 ]
  %166 = phi i64 [ 0, %143 ], [ %161, %159 ]
  %167 = phi i64 [ 0, %143 ], [ %160, %159 ]
  %168 = phi i8 [ 97, %143 ], [ %163, %159 ]
  br label %169

169:                                              ; preds = %398, %164
  %170 = phi i8 [ %168, %164 ], [ %399, %398 ]
  %171 = phi i64 [ %167, %164 ], [ %404, %398 ]
  %172 = phi ptr [ %85, %164 ], [ %179, %398 ]
  %173 = phi i64 [ %166, %164 ], [ %410, %398 ]
  %174 = phi ptr [ %165, %164 ], [ %285, %398 ]
  %175 = phi ptr [ %57, %164 ], [ %390, %398 ]
  br i1 %144, label %178, label %176, !prof !654

176:                                              ; preds = %169
  %177 = getelementptr inbounds i8, ptr %85, i64 %171
  br label %178

178:                                              ; preds = %176, %169
  %179 = phi ptr [ %177, %176 ], [ %172, %169 ]
  %180 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %181 = getelementptr inbounds %struct.regexp, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !624
  %183 = getelementptr inbounds %struct.regexp_engine, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !660
  %185 = zext nneg i8 %170 to i32
  %186 = call i32 %184(ptr noundef %135, ptr noundef %179, ptr noundef nonnull %91, ptr noundef nonnull %85, i64 noundef %173, ptr noundef %56, ptr noundef null, i32 noundef %185) #14
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %411, label %188, !prof !661

188:                                              ; preds = %178
  store ptr %136, ptr @PL_curpm, align 8, !tbaa !291
  %189 = load i32, ptr %107, align 8, !tbaa !648
  %190 = and i32 %189, 1048576
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192, !prof !662

192:                                              ; preds = %188
  %193 = or i32 %189, 2097152
  store i32 %193, ptr %107, align 8, !tbaa !648
  br label %194

194:                                              ; preds = %192, %188
  %195 = phi i32 [ %193, %192 ], [ %189, %188 ]
  br i1 %106, label %196, label %201, !prof !663

196:                                              ; preds = %194
  %197 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %198 = getelementptr inbounds %struct.regexp, ptr %197, i64 0, i32 7
  %199 = load i32, ptr %198, align 8, !tbaa !633
  %200 = or i32 %199, 67108864
  store i32 %200, ptr %198, align 8, !tbaa !633
  br label %201

201:                                              ; preds = %196, %194
  %202 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %203 = getelementptr inbounds %struct.regexp, ptr %202, i64 0, i32 7
  %204 = load i32, ptr %203, align 8, !tbaa !633
  %205 = and i32 %204, 67108864
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207, !prof !662

207:                                              ; preds = %201
  store i8 1, ptr @PL_tainted, align 1, !tbaa !303
  br label %208

208:                                              ; preds = %201, %207
  br i1 %144, label %284, label %209, !prof !662

209:                                              ; preds = %208
  %210 = icmp eq i32 %20, 3
  %211 = and i32 %195, 33554432
  %212 = icmp eq i32 %211, 0
  %213 = and i1 %210, %212
  br i1 %213, label %284, label %214

214:                                              ; preds = %209
  %215 = icmp eq ptr %174, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %214
  %217 = call ptr @Perl_sv_magicext_mglob(ptr noundef %56) #14
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi ptr [ %174, %214 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !327
  %222 = and i32 %221, 1024
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %239, label %224

224:                                              ; preds = %218
  %225 = and i32 %221, 2097152
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = call fastcc zeroext i1 @S_sv_only_taint_gmagic(ptr noundef nonnull %56) #15
  br i1 %228, label %229, label %239

229:                                              ; preds = %227, %224
  %230 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %231 = getelementptr inbounds %struct.regexp, ptr %230, i64 0, i32 17
  %232 = load ptr, ptr %231, align 8, !tbaa !664
  %233 = getelementptr inbounds %struct.regexp_paren_pair, ptr %232, i64 0, i32 1
  %234 = load i64, ptr %233, align 8, !tbaa !665
  %235 = getelementptr inbounds %struct.magic, ptr %219, i64 0, i32 5
  store i64 %234, ptr %235, align 8, !tbaa !656
  %236 = getelementptr inbounds %struct.magic, ptr %219, i64 0, i32 4
  %237 = load i8, ptr %236, align 1, !tbaa !658
  %238 = or i8 %237, 64
  store i8 %238, ptr %236, align 1, !tbaa !658
  br label %268

239:                                              ; preds = %227, %218
  %240 = and i32 %221, 536870912
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %256, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %244 = getelementptr inbounds %struct.cop, ptr %243, i64 0, i32 10
  %245 = load i32, ptr %244, align 8, !tbaa !398
  %246 = and i32 %245, 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %250 = getelementptr inbounds %struct.regexp, ptr %249, i64 0, i32 17
  %251 = load ptr, ptr %250, align 8, !tbaa !664
  %252 = getelementptr inbounds %struct.regexp_paren_pair, ptr %251, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !665
  %254 = getelementptr inbounds i8, ptr %85, i64 %253
  %255 = call i64 @Perl_utf8_length(ptr noundef nonnull %85, ptr noundef nonnull %254) #14
  br label %262

256:                                              ; preds = %242, %239
  %257 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %258 = getelementptr inbounds %struct.regexp, ptr %257, i64 0, i32 17
  %259 = load ptr, ptr %258, align 8, !tbaa !664
  %260 = getelementptr inbounds %struct.regexp_paren_pair, ptr %259, i64 0, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !665
  br label %262

262:                                              ; preds = %256, %248
  %263 = phi i64 [ %255, %248 ], [ %261, %256 ]
  %264 = getelementptr inbounds %struct.magic, ptr %219, i64 0, i32 5
  store i64 %263, ptr %264, align 8, !tbaa !656
  %265 = getelementptr inbounds %struct.magic, ptr %219, i64 0, i32 4
  %266 = load i8, ptr %265, align 1, !tbaa !658
  %267 = and i8 %266, -65
  store i8 %267, ptr %265, align 1, !tbaa !658
  br label %268

268:                                              ; preds = %262, %229
  %269 = phi i8 [ %267, %262 ], [ %238, %229 ]
  %270 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %271 = getelementptr inbounds %struct.regexp, ptr %270, i64 0, i32 17
  %272 = load ptr, ptr %271, align 8, !tbaa !664
  %273 = load i64, ptr %272, align 8, !tbaa !667
  %274 = getelementptr inbounds %struct.regexp, ptr %270, i64 0, i32 10
  %275 = load i64, ptr %274, align 8, !tbaa !668
  %276 = add nsw i64 %275, %273
  %277 = getelementptr inbounds %struct.regexp_paren_pair, ptr %272, i64 0, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !665
  %279 = icmp eq i64 %276, %278
  %280 = getelementptr inbounds %struct.magic, ptr %219, i64 0, i32 4
  %281 = and i8 %269, -2
  %282 = zext i1 %279 to i8
  %283 = or disjoint i8 %281, %282
  store i8 %283, ptr %280, align 1, !tbaa !658
  br label %284

284:                                              ; preds = %268, %209, %208
  %285 = phi ptr [ %174, %208 ], [ %174, %209 ], [ %219, %268 ]
  %286 = icmp ne i32 %20, 3
  %287 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %288 = getelementptr inbounds %struct.regexp, ptr %287, i64 0, i32 12
  %289 = load i32, ptr %288, align 8, !tbaa !669
  %290 = or i32 %289, %109
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %291, i1 true, i1 %286
  br i1 %292, label %293, label %301, !prof !670

293:                                              ; preds = %284
  %294 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %295 = icmp sgt i32 %294, %21
  br i1 %295, label %296, label %297, !prof !671

296:                                              ; preds = %293
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %297

297:                                              ; preds = %296, %293
  %298 = getelementptr inbounds ptr, ptr %175, i64 1
  store ptr @PL_sv_yes, ptr %298, align 8, !tbaa !291
  store ptr %298, ptr @PL_stack_sp, align 8, !tbaa !291
  %299 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %300 = load ptr, ptr %299, align 8, !tbaa !300
  br label %440

301:                                              ; preds = %284
  br i1 %144, label %304, label %302, !prof !672

302:                                              ; preds = %301
  %303 = icmp eq i32 %289, 0
  br label %304

304:                                              ; preds = %302, %301
  %305 = phi i1 [ false, %301 ], [ %303, %302 ]
  %306 = zext i1 %305 to i32
  %307 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %308 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %309 = ptrtoint ptr %308 to i64
  %310 = ptrtoint ptr %307 to i64
  %311 = sub i64 %309, %310
  %312 = ashr exact i64 %311, 3
  %313 = add nsw i32 %289, %306
  %314 = sext i32 %313 to i64
  %315 = icmp slt i64 %312, %314
  br i1 %315, label %316, label %318, !prof !673

316:                                              ; preds = %304
  %317 = call ptr @Perl_stack_grow(ptr noundef %307, ptr noundef %307, i64 noundef %314) #14
  br label %318

318:                                              ; preds = %316, %304
  %319 = phi ptr [ %317, %316 ], [ %307, %304 ]
  %320 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %321 = add nsw i64 %320, %314
  %322 = load i64, ptr @PL_tmps_max, align 8, !tbaa !309
  %323 = icmp slt i64 %321, %322
  br i1 %323, label %326, label %324, !prof !672

324:                                              ; preds = %318
  %325 = call i64 @Perl_tmps_grow_p(i64 noundef %321) #14
  br label %326

326:                                              ; preds = %318, %324
  %327 = xor i1 %305, true
  %328 = zext i1 %327 to i32
  %329 = icmp slt i32 %289, %328
  br i1 %329, label %389, label %330, !prof !674

330:                                              ; preds = %326
  %331 = zext i1 %327 to i64
  %332 = add nuw i32 %289, 1
  %333 = zext i32 %332 to i64
  br label %334

334:                                              ; preds = %330, %386
  %335 = phi i64 [ %331, %330 ], [ %387, %386 ]
  %336 = phi ptr [ %319, %330 ], [ %338, %386 ]
  %337 = call ptr @Perl_sv_newmortal() #14
  %338 = getelementptr inbounds ptr, ptr %336, i64 1
  store ptr %337, ptr %338, align 8, !tbaa !291
  %339 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %340 = getelementptr inbounds %struct.regexp, ptr %339, i64 0, i32 17
  %341 = load ptr, ptr %340, align 8, !tbaa !664
  %342 = getelementptr inbounds %struct.regexp_paren_pair, ptr %341, i64 %335
  %343 = load i64, ptr %342, align 8, !tbaa !667
  %344 = icmp eq i64 %343, -1
  br i1 %344, label %386, label %345, !prof !675

345:                                              ; preds = %334
  %346 = getelementptr inbounds %struct.regexp_paren_pair, ptr %341, i64 %335, i32 1
  %347 = load i64, ptr %346, align 8, !tbaa !665
  %348 = icmp eq i64 %347, -1
  br i1 %348, label %386, label %349, !prof !676

349:                                              ; preds = %345
  %350 = sub nsw i64 %347, %343
  %351 = getelementptr inbounds i8, ptr %85, i64 %343
  %352 = icmp slt i64 %347, 0
  br i1 %352, label %382, label %353, !prof !677

353:                                              ; preds = %349
  %354 = icmp slt i64 %343, 0
  %355 = and i64 %350, 2147483648
  %356 = icmp ne i64 %355, 0
  %357 = select i1 %354, i1 true, i1 %356
  br i1 %357, label %382, label %358, !prof !678

358:                                              ; preds = %353
  %359 = ptrtoint ptr %91 to i64
  %360 = and i64 %350, 4294967295
  %361 = ptrtoint ptr %351 to i64
  %362 = sub i64 %359, %361
  %363 = icmp sgt i64 %360, %362
  br i1 %363, label %382, label %364, !prof !677

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  call void @Perl_sv_setpvn(ptr noundef %337, ptr noundef nonnull %351, i64 noundef %360) #14
  %366 = load i32, ptr %365, align 4, !tbaa !327
  %367 = and i32 %366, 536870912
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %386, label %369, !prof !676

369:                                              ; preds = %364
  %370 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %371 = getelementptr inbounds %struct.cop, ptr %370, i64 0, i32 10
  %372 = load i32, ptr %371, align 8, !tbaa !398
  %373 = and i32 %372, 8
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %369
  %376 = call zeroext i1 @Perl_is_utf8_string(ptr noundef nonnull %351, i64 noundef %360) #14
  br i1 %376, label %377, label %386

377:                                              ; preds = %375
  %378 = load ptr, ptr %338, align 8, !tbaa !291
  %379 = getelementptr inbounds %struct.sv, ptr %378, i64 0, i32 2
  %380 = load i32, ptr %379, align 4, !tbaa !327
  %381 = or i32 %380, 536870912
  store i32 %381, ptr %379, align 4, !tbaa !327
  br label %386

382:                                              ; preds = %358, %353, %349
  %383 = shl i64 %350, 32
  %384 = ashr exact i64 %383, 32
  %385 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.15, i64 noundef %335, i64 noundef %343, i64 noundef %347, ptr noundef nonnull %351, ptr noundef nonnull %91, i64 noundef %384) #14
  br label %440

386:                                              ; preds = %364, %369, %375, %377, %345, %334
  %387 = add nuw nsw i64 %335, 1
  %388 = icmp eq i64 %387, %333
  br i1 %388, label %389, label %334, !prof !679, !llvm.loop !680

389:                                              ; preds = %386, %326
  %390 = phi ptr [ %319, %326 ], [ %338, %386 ]
  br i1 %144, label %391, label %398, !prof !672

391:                                              ; preds = %389
  %392 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %393 = icmp sgt i32 %392, %21
  br i1 %393, label %394, label %395, !prof !673

394:                                              ; preds = %391
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %395

395:                                              ; preds = %394, %391
  store ptr %390, ptr @PL_stack_sp, align 8, !tbaa !291
  %396 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %397 = load ptr, ptr %396, align 8, !tbaa !300
  br label %440

398:                                              ; preds = %389
  %399 = or disjoint i8 %168, 24
  %400 = call fastcc ptr @S_ReANY(ptr noundef %135) #15
  %401 = getelementptr inbounds %struct.regexp, ptr %400, i64 0, i32 17
  %402 = load ptr, ptr %401, align 8, !tbaa !664
  %403 = getelementptr inbounds %struct.regexp_paren_pair, ptr %402, i64 0, i32 1
  %404 = load i64, ptr %403, align 8, !tbaa !665
  %405 = load i64, ptr %402, align 8, !tbaa !667
  %406 = getelementptr inbounds %struct.regexp, ptr %400, i64 0, i32 10
  %407 = load i64, ptr %406, align 8, !tbaa !668
  %408 = add nsw i64 %407, %405
  %409 = icmp eq i64 %408, %404
  %410 = zext i1 %409 to i64
  store ptr %390, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %169

411:                                              ; preds = %178, %134, %105
  %412 = phi ptr [ null, %105 ], [ null, %134 ], [ %174, %178 ]
  %413 = phi ptr [ %57, %105 ], [ %57, %134 ], [ %175, %178 ]
  %414 = icmp eq i32 %109, 0
  br i1 %414, label %427, label %415, !prof !681

415:                                              ; preds = %411
  %416 = load i32, ptr %107, align 8, !tbaa !648
  %417 = and i32 %416, 33554432
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %427, !prof !682

419:                                              ; preds = %415
  %420 = icmp eq ptr %412, null
  br i1 %420, label %421, label %424, !prof !682

421:                                              ; preds = %419
  %422 = call ptr @Perl_mg_find_mglob(ptr noundef %56) #14
  %423 = icmp eq ptr %422, null
  br i1 %423, label %427, label %424, !prof !377

424:                                              ; preds = %419, %421
  %425 = phi ptr [ %422, %421 ], [ %412, %419 ]
  %426 = getelementptr inbounds %struct.magic, ptr %425, i64 0, i32 5
  store i64 -1, ptr %426, align 8, !tbaa !656
  br label %427

427:                                              ; preds = %411, %415, %424, %421
  %428 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %429 = icmp sgt i32 %428, %21
  br i1 %429, label %430, label %431, !prof !683

430:                                              ; preds = %427
  call void @Perl_leave_scope(i32 noundef %21) #14
  br label %431

431:                                              ; preds = %430, %427
  %432 = icmp eq i32 %20, 3
  br i1 %432, label %433, label %436, !prof !684

433:                                              ; preds = %431
  store ptr %413, ptr @PL_stack_sp, align 8, !tbaa !291
  %434 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %435 = load ptr, ptr %434, align 8, !tbaa !300
  br label %440

436:                                              ; preds = %431
  %437 = getelementptr inbounds ptr, ptr %413, i64 1
  store ptr @PL_sv_no, ptr %437, align 8, !tbaa !291
  store ptr %437, ptr @PL_stack_sp, align 8, !tbaa !291
  %438 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %439 = load ptr, ptr %438, align 8, !tbaa !300
  br label %440

440:                                              ; preds = %395, %382, %436, %433, %297, %87
  %441 = phi ptr [ %435, %433 ], [ %439, %436 ], [ %300, %297 ], [ %88, %87 ], [ %397, %395 ], [ %385, %382 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %441
}

; Function Attrs: optsize
declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_MgBYTEPOS(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !prof !370 !PGOFuncName !685 {
  %5 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !658
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !327
  %12 = and i32 %11, 536870912
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %16 = getelementptr inbounds %struct.cop, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !398
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %9, %4
  %21 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !656
  br label %57

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.magic, ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !656
  %26 = and i32 %11, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = and i32 %11, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !308
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !327
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !343
  %40 = load ptr, ptr %39, align 8, !tbaa !453
  %41 = getelementptr inbounds %struct.hv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !455
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
define internal fastcc noundef zeroext i1 @S_sv_only_taint_gmagic(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !370 !PGOFuncName !686 {
  %2 = load ptr, ptr %0, align 8, !tbaa !343
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !687
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !658
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !688
  %19 = load ptr, ptr %18, align 8, !tbaa !689
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11, %6
  %22 = load ptr, ptr %7, align 8, !tbaa !308
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !691

24:                                               ; preds = %16, %21, %1
  %25 = phi i1 [ true, %1 ], [ true, %21 ], [ false, %16 ]
  ret i1 %25
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

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
define dso_local ptr @Perl_pp_helem() local_unnamed_addr #0 !prof !692 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  %4 = load ptr, ptr %2, align 8, !tbaa !291
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !364
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19, !prof !693

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !315
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !694

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_is_lvalue_sub() #14
  %17 = icmp ne i32 %16, 0
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %19

19:                                               ; preds = %10, %15, %0
  %20 = phi ptr [ %5, %0 ], [ %5, %10 ], [ %18, %15 ]
  %21 = phi i1 [ true, %0 ], [ false, %10 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !315
  %24 = and i8 %23, 64
  %25 = icmp sgt i8 %23, -1
  %26 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !455
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %33, label %30, !prof !695

30:                                               ; preds = %19
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %32 = load ptr, ptr %31, align 8, !tbaa !300
  br label %168

33:                                               ; preds = %19
  br i1 %25, label %63, label %34, !prof !695

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
  %42 = load ptr, ptr %41, align 8, !tbaa !696
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = tail call ptr @Perl_newRV(ptr noundef nonnull %4) #14
  %46 = tail call ptr @Perl_sv_2mortal(ptr noundef %45) #14
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !308
  %51 = load ptr, ptr %50, align 8, !tbaa !343
  %52 = load ptr, ptr %51, align 8, !tbaa !453
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %52, ptr noundef nonnull @.str.22, i32 noundef 1) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %52, ptr noundef nonnull @.str.23, i32 noundef 1) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %37, %34
  %61 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %62 = icmp ne ptr %61, null
  br label %63

63:                                               ; preds = %47, %54, %57, %60, %33
  %64 = phi i1 [ true, %33 ], [ %62, %60 ], [ true, %57 ], [ true, %54 ], [ true, %47 ]
  %65 = icmp eq i8 %24, 0
  %66 = select i1 %21, i1 %65, i1 false, !prof !697
  %67 = select i1 %66, i32 16, i32 0
  %68 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %67, ptr noundef null, i32 noundef 0) #14
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.he, ptr %68, i64 0, i32 2
  br i1 %21, label %71, label %147, !prof !697

71:                                               ; preds = %63
  br i1 %69, label %77, label %72, !prof !698

72:                                               ; preds = %71
  %73 = load ptr, ptr %70, align 8, !tbaa !291
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %73, @PL_sv_undef
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %91, !prof !699

77:                                               ; preds = %72, %71
  br i1 %65, label %78, label %80

78:                                               ; preds = %77
  %79 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %3) #14
  br label %168

80:                                               ; preds = %77
  %81 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_upgrade(ptr noundef %81, i32 noundef 10) #14
  %82 = load ptr, ptr %81, align 8, !tbaa !343
  %83 = getelementptr inbounds %struct.xpvlv, ptr %82, i64 0, i32 9
  store i8 121, ptr %83, align 8, !tbaa !700
  %84 = tail call ptr @Perl_newSVsv(ptr noundef %3) #14
  tail call void @Perl_sv_magic(ptr noundef nonnull %81, ptr noundef %84, i32 noundef 121, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %84) #15
  %85 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %4) #15
  %86 = load ptr, ptr %81, align 8, !tbaa !343
  %87 = getelementptr inbounds %struct.xpvlv, ptr %86, i64 0, i32 8
  store ptr %4, ptr %87, align 8, !tbaa !702
  %88 = getelementptr inbounds %struct.xpvlv, ptr %86, i64 0, i32 7
  store i64 1, ptr %88, align 8, !tbaa !703
  store ptr %81, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %89 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %90 = load ptr, ptr %89, align 8, !tbaa !300
  br label %168

91:                                               ; preds = %72
  br i1 %25, label %132, label %92, !prof !704

92:                                               ; preds = %91
  %93 = load i32, ptr %26, align 4, !tbaa !455
  %94 = and i32 %93, 33554432
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !308
  %99 = load ptr, ptr %4, align 8, !tbaa !705
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !706
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !308
  %105 = icmp eq ptr %104, null
  br i1 %105, label %124, label %106

106:                                              ; preds = %96
  %107 = getelementptr i8, ptr %102, i64 36
  %108 = load i32, ptr %107, align 4, !tbaa !707
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %104, align 8, !tbaa !291
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %106, %110
  %114 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !327
  %116 = and i32 %115, 255
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %120 = getelementptr inbounds %struct.op, ptr %119, i64 0, i32 5
  %121 = load i8, ptr %120, align 2, !tbaa !364
  %122 = icmp sgt i8 %121, -1
  %123 = zext i1 %122 to i32
  tail call void @Perl_save_gp(ptr noundef nonnull %73, i32 noundef %123) #14
  br label %143

124:                                              ; preds = %92, %96, %110, %113
  br i1 %64, label %125, label %131

125:                                              ; preds = %124
  %126 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %127 = getelementptr inbounds %struct.op, ptr %126, i64 0, i32 5
  %128 = load i8, ptr %127, align 2, !tbaa !364
  %129 = icmp sgt i8 %128, -1
  %130 = zext i1 %129 to i32
  tail call void @Perl_save_helem_flags(ptr noundef nonnull %4, ptr noundef %3, ptr noundef nonnull %70, i32 noundef %130) #14
  br label %143

131:                                              ; preds = %124
  tail call void @Perl_save_hdelete(ptr noundef nonnull %4, ptr noundef %3) #14
  br label %143

132:                                              ; preds = %91
  %133 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %134 = getelementptr inbounds %struct.op, ptr %133, i64 0, i32 6
  %135 = load i8, ptr %134, align 1, !tbaa !315
  %136 = and i8 %135, 48
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138, !prof !709

138:                                              ; preds = %132
  %139 = zext nneg i8 %136 to i32
  %140 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %73, i32 noundef %139) #15
  store ptr %140, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %141 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %142 = load ptr, ptr %141, align 8, !tbaa !300
  br label %168

143:                                              ; preds = %132, %118, %131, %125
  %144 = load ptr, ptr %70, align 8, !tbaa !291
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr @PL_sv_undef, ptr %144, !prof !710
  br label %164

147:                                              ; preds = %63
  br i1 %69, label %152, label %148, !prof !711

148:                                              ; preds = %147
  %149 = load ptr, ptr %70, align 8, !tbaa !291
  %150 = icmp eq ptr %149, null
  %151 = select i1 %150, ptr @PL_sv_undef, ptr %149, !prof !710
  br label %152

152:                                              ; preds = %147, %148
  %153 = phi ptr [ %151, %148 ], [ @PL_sv_undef, %147 ]
  %154 = load i32, ptr %26, align 4, !tbaa !455
  %155 = and i32 %154, 8388608
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %164, label %157, !prof !694

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !327
  %160 = and i32 %159, 2097152
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = tail call i32 @Perl_mg_get(ptr noundef nonnull %153) #14
  br label %164

164:                                              ; preds = %143, %162, %157, %152
  %165 = phi ptr [ %153, %162 ], [ %153, %157 ], [ %153, %152 ], [ %146, %143 ]
  store ptr %165, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %166 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %167 = load ptr, ptr %166, align 8, !tbaa !300
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
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !712 !PGOFuncName !713 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !714

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !365
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
define dso_local ptr @S_softref2xv_lite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !715 {
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !315
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9, !prof !716

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !327
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
  %24 = load ptr, ptr %0, align 8, !tbaa !343
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !345
  %27 = icmp ugt i64 %26, 32
  %28 = select i1 %27, ptr @.str.24, ptr @.str.1
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
  %36 = load i32, ptr %35, align 4, !tbaa !327
  %37 = and i32 %36, 65280
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47, !prof !717

39:                                               ; preds = %34
  %40 = and i32 %36, 255
  %41 = icmp eq i32 %40, 8
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef %1) #14
  br label %47

47:                                               ; preds = %45, %39, %34
  %48 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %0, i32 noundef 2049, i32 noundef %2) #14
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_multideref() local_unnamed_addr #0 !prof !718 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %2 = getelementptr inbounds %struct.unop_aux, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !719
  %4 = load i64, ptr %3, align 8, !tbaa !308
  store ptr %3, ptr @PL_multideref_pc, align 8, !tbaa !291
  br label %5

5:                                                ; preds = %673, %0
  %6 = phi i64 [ %676, %673 ], [ %4, %0 ]
  %7 = phi ptr [ %674, %673 ], [ %3, %0 ]
  %8 = phi ptr [ %675, %673 ], [ null, %0 ]
  br label %9

9:                                                ; preds = %5, %13
  %10 = phi i64 [ %15, %13 ], [ %6, %5 ]
  %11 = phi ptr [ %14, %13 ], [ %7, %5 ]
  %12 = and i64 %10, 15
  switch i64 %12, label %673 [
    i64 0, label %13
    i64 5, label %16
    i64 6, label %21
    i64 1, label %34
    i64 2, label %38
    i64 3, label %49
    i64 4, label %58
    i64 12, label %348
    i64 13, label %353
    i64 8, label %366
    i64 9, label %370
    i64 10, label %381
    i64 11, label %390
  ], !prof !721

13:                                               ; preds = %9
  %14 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !308
  br label %9

16:                                               ; preds = %9
  %17 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %18 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !308
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  br label %126

21:                                               ; preds = %9
  %22 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !308
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !308
  %26 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !410
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %130, !prof !722

29:                                               ; preds = %21
  %30 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 11) #14
  %31 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !308
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6
  br label %126

34:                                               ; preds = %9
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %36 = getelementptr inbounds ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %35, align 8, !tbaa !291
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %62

38:                                               ; preds = %9
  %39 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !308
  %43 = load ptr, ptr %42, align 8, !tbaa !291
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %40, i32 noundef 0) #14
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !308
  br label %54

49:                                               ; preds = %9
  %50 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %51 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %52 = load i64, ptr %51, align 8, !tbaa !308
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi ptr [ %48, %45 ], [ %53, %49 ]
  %56 = phi ptr [ %39, %45 ], [ %51, %49 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !291
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
  %66 = load i32, ptr %65, align 4, !tbaa !327
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69, !prof !723

69:                                               ; preds = %62
  %70 = tail call i32 @Perl_mg_get(ptr noundef nonnull %64) #14
  %71 = load i32, ptr %65, align 4, !tbaa !327
  br label %72

72:                                               ; preds = %62, %69
  %73 = phi i32 [ %66, %62 ], [ %71, %69 ]
  %74 = and i32 %73, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %103, label %76, !prof !723

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !308
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !327
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83, !prof !724

83:                                               ; preds = %76
  %84 = load ptr, ptr %78, align 8, !tbaa !343
  %85 = load ptr, ptr %84, align 8, !tbaa !453
  %86 = getelementptr inbounds %struct.hv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !455
  %88 = and i32 %87, 268435456
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90, !prof !725

90:                                               ; preds = %83
  %91 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %64, i32 noundef 2) #14
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !308
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !327
  br label %96

96:                                               ; preds = %76, %83, %90
  %97 = phi i32 [ %95, %90 ], [ %80, %83 ], [ %80, %76 ]
  %98 = phi ptr [ %93, %90 ], [ %78, %83 ], [ %78, %76 ]
  %99 = and i32 %97, 255
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %130, label %101, !prof !723

101:                                              ; preds = %96
  %102 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.25) #14
  br label %677

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
  %113 = tail call ptr @S_softref2xv_lite(ptr noundef nonnull %64, ptr noundef nonnull @.str.26, i32 noundef 11) #15
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi ptr [ %113, %112 ], [ %64, %106 ]
  %116 = getelementptr inbounds %struct.gv, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !308
  %118 = getelementptr inbounds %struct.gp, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !410
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %115, i32 noundef 11) #14
  %123 = getelementptr inbounds %struct.gv, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !308
  %125 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 6
  br label %126

126:                                              ; preds = %16, %29, %121
  %127 = phi ptr [ %125, %121 ], [ %33, %29 ], [ %20, %16 ]
  %128 = phi ptr [ %63, %121 ], [ %22, %29 ], [ %18, %16 ]
  %129 = load ptr, ptr %127, align 8, !tbaa !291
  br label %130

130:                                              ; preds = %126, %114, %21, %96, %103
  %131 = phi ptr [ %63, %96 ], [ %63, %103 ], [ %22, %21 ], [ %63, %114 ], [ %128, %126 ]
  %132 = phi ptr [ %98, %96 ], [ %64, %103 ], [ %27, %21 ], [ %119, %114 ], [ %129, %126 ]
  %133 = lshr i64 %10, 4
  %134 = and i64 %133, 3
  switch i64 %134, label %192 [
    i64 0, label %333
    i64 1, label %135
    i64 2, label %138
    i64 3, label %143
  ], !prof !726

135:                                              ; preds = %130
  %136 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %137 = load i64, ptr %136, align 8, !tbaa !308
  br label %193

138:                                              ; preds = %130
  %139 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %140 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %141 = load i64, ptr %140, align 8, !tbaa !308
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141
  br label %154

143:                                              ; preds = %130
  %144 = getelementptr inbounds %union.UNOP_AUX_item, ptr %131, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !308
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !308
  %148 = load ptr, ptr %147, align 8, !tbaa !465
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %154, !prof !727

150:                                              ; preds = %143
  %151 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %145, i32 noundef 0) #14
  %152 = getelementptr inbounds %struct.gv, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !308
  br label %154

154:                                              ; preds = %150, %143, %138
  %155 = phi ptr [ %142, %138 ], [ %153, %150 ], [ %147, %143 ]
  %156 = phi ptr [ %140, %138 ], [ %144, %150 ], [ %144, %143 ]
  %157 = load ptr, ptr %155, align 8, !tbaa !291
  %158 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !327
  %160 = and i32 %159, 2048
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %182, label %162, !prof !728

162:                                              ; preds = %154
  %163 = and i32 %159, 2097152
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !308
  %168 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !327
  %170 = and i32 %169, 1048576
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %165
  %173 = load ptr, ptr %167, align 8, !tbaa !343
  %174 = load ptr, ptr %173, align 8, !tbaa !453
  %175 = getelementptr inbounds %struct.hv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !455
  %177 = and i32 %176, 268435456
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172, %165
  %180 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %180, label %181, label %182

181:                                              ; preds = %179
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef nonnull %157) #14
  br label %182

182:                                              ; preds = %154, %162, %172, %179, %181
  store ptr %156, ptr @PL_multideref_pc, align 8, !tbaa !291
  %183 = load i32, ptr %158, align 4, !tbaa !327
  %184 = and i32 %183, 2097408
  %185 = icmp eq i32 %184, 256
  br i1 %185, label %186, label %190, !prof !728

186:                                              ; preds = %182
  %187 = load ptr, ptr %157, align 8, !tbaa !343
  %188 = getelementptr inbounds %struct.xpviv, ptr %187, i64 0, i32 4
  %189 = load i64, ptr %188, align 8, !tbaa !308
  br label %193

190:                                              ; preds = %182
  %191 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %157, i32 noundef 2) #14
  br label %193

192:                                              ; preds = %462, %130
  unreachable

193:                                              ; preds = %186, %190, %135
  %194 = phi i64 [ %137, %135 ], [ %189, %186 ], [ %191, %190 ]
  %195 = phi ptr [ %136, %135 ], [ %156, %186 ], [ %156, %190 ]
  %196 = and i64 %10, 64
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %206, !prof !729

198:                                              ; preds = %193
  %199 = tail call ptr @Perl_av_fetch(ptr noundef %132, i64 noundef %194, i32 noundef 1) #14
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201, !prof !730

201:                                              ; preds = %198
  %202 = load ptr, ptr %199, align 8, !tbaa !291
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %673, !prof !730

204:                                              ; preds = %201, %198
  %205 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %194) #14
  br label %677

206:                                              ; preds = %193
  %207 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %208 = getelementptr inbounds %struct.op, ptr %207, i64 0, i32 6
  %209 = load i8, ptr %208, align 1, !tbaa !315
  %210 = zext i8 %209 to i32
  %211 = and i32 %210, 48
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %239, label %213, !prof !731

213:                                              ; preds = %206
  %214 = and i32 %210, 16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = tail call zeroext i1 @Perl_av_exists(ptr noundef %132, i64 noundef %194) #14
  %218 = select i1 %217, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %333

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.op, ptr %207, i64 0, i32 5
  %221 = load i8, ptr %220, align 2, !tbaa !364
  %222 = and i8 %221, 3
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  %225 = zext nneg i8 %222 to i32
  br label %228

226:                                              ; preds = %219
  %227 = tail call i32 @Perl_block_gimme() #14
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = icmp eq i32 %229, 1
  %231 = select i1 %230, i32 4, i32 0
  %232 = tail call ptr @Perl_av_delete(ptr noundef %132, i64 noundef %194, i32 noundef %231) #14
  br i1 %230, label %233, label %236

233:                                              ; preds = %228
  %234 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %235 = load ptr, ptr %234, align 8, !tbaa !300
  br label %677

236:                                              ; preds = %228
  %237 = icmp eq ptr %232, null
  %238 = select i1 %237, ptr @PL_sv_undef, ptr %232
  br label %333

239:                                              ; preds = %206
  %240 = getelementptr inbounds %struct.op, ptr %207, i64 0, i32 5
  %241 = load i8, ptr %240, align 2, !tbaa !364
  %242 = and i8 %241, 32
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %253, !prof !732

244:                                              ; preds = %239
  %245 = and i32 %210, 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247, !prof !733

247:                                              ; preds = %244
  %248 = tail call i32 @Perl_is_lvalue_sub() #14
  %249 = icmp ne i32 %248, 0
  %250 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %251 = getelementptr inbounds %struct.op, ptr %250, i64 0, i32 6
  %252 = load i8, ptr %251, align 1, !tbaa !315
  br label %253

253:                                              ; preds = %244, %247, %239
  %254 = phi i8 [ %209, %239 ], [ %209, %244 ], [ %252, %247 ]
  %255 = phi i1 [ true, %239 ], [ false, %244 ], [ %249, %247 ]
  %256 = and i8 %254, 64
  %257 = icmp sgt i8 %254, -1
  br i1 %257, label %288, label %258, !prof !731

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.av, ptr %132, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !429
  %261 = and i32 %260, 8388608
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %286, label %263

263:                                              ; preds = %258
  %264 = tail call ptr @Perl_mg_find(ptr noundef nonnull %132, i32 noundef 80) #14
  %265 = icmp eq ptr %264, null
  br i1 %265, label %286, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.magic, ptr %264, i64 0, i32 6
  %268 = load ptr, ptr %267, align 8, !tbaa !696
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = tail call ptr @Perl_newRV(ptr noundef nonnull %132) #14
  %272 = tail call ptr @Perl_sv_2mortal(ptr noundef %271) #14
  br label %273

273:                                              ; preds = %266, %270
  %274 = phi ptr [ %272, %270 ], [ %268, %266 ]
  %275 = getelementptr inbounds %struct.sv, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !308
  %277 = load ptr, ptr %276, align 8, !tbaa !343
  %278 = load ptr, ptr %277, align 8, !tbaa !453
  %279 = icmp eq ptr %278, null
  br i1 %279, label %288, label %280

280:                                              ; preds = %273
  %281 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %278, ptr noundef nonnull @.str.22, i32 noundef 1) #14
  %282 = icmp eq ptr %281, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %280
  %284 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %278, ptr noundef nonnull @.str.23, i32 noundef 1) #14
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %283, %263, %258
  %287 = tail call zeroext i1 @Perl_av_exists(ptr noundef nonnull %132, i64 noundef %194) #14
  br label %288

288:                                              ; preds = %273, %280, %283, %286, %253
  %289 = phi i1 [ true, %253 ], [ %287, %286 ], [ true, %283 ], [ true, %280 ], [ true, %273 ]
  br i1 %255, label %290, label %313, !prof !734

290:                                              ; preds = %288
  %291 = icmp eq i8 %256, 0
  %292 = zext i1 %291 to i32
  %293 = tail call ptr @Perl_av_fetch(ptr noundef %132, i64 noundef %194, i32 noundef %292) #14
  %294 = icmp eq ptr %293, null
  br i1 %294, label %298, label %295, !prof !735

295:                                              ; preds = %290
  %296 = load ptr, ptr %293, align 8, !tbaa !291
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %308, !prof !735

298:                                              ; preds = %295, %290
  br i1 %291, label %331, label %299

299:                                              ; preds = %298
  %300 = tail call fastcc i64 @S_av_top_index(ptr noundef %132) #15
  %301 = icmp slt i64 %194, 0
  %302 = add nsw i64 %300, %194
  %303 = icmp sgt i64 %302, -1
  %304 = select i1 %301, i1 %303, i1 false
  %305 = select i1 %304, i64 %302, i64 %194
  %306 = tail call ptr @Perl_newSVavdefelem(ptr noundef %132, i64 noundef %305, i1 noundef zeroext true) #14
  %307 = tail call ptr @Perl_sv_2mortal(ptr noundef %306) #14
  br label %333

308:                                              ; preds = %295
  br i1 %257, label %333, label %309, !prof !736

309:                                              ; preds = %308
  br i1 %289, label %310, label %312

310:                                              ; preds = %309
  tail call void @Perl_save_aelem_flags(ptr noundef %132, i64 noundef %194, ptr noundef nonnull %293, i32 noundef 1) #14
  %311 = load ptr, ptr %293, align 8, !tbaa !291
  br label %333

312:                                              ; preds = %309
  tail call void @Perl_save_adelete(ptr noundef %132, i64 noundef %194) #14
  br label %333

313:                                              ; preds = %288
  %314 = tail call ptr @Perl_av_fetch(ptr noundef %132, i64 noundef %194, i32 noundef 0) #14
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316, !prof !737

316:                                              ; preds = %313
  %317 = load ptr, ptr %314, align 8, !tbaa !291
  br label %318

318:                                              ; preds = %313, %316
  %319 = phi ptr [ %317, %316 ], [ @PL_sv_undef, %313 ]
  %320 = getelementptr inbounds %struct.av, ptr %132, i64 0, i32 2
  %321 = load i32, ptr %320, align 4, !tbaa !429
  %322 = and i32 %321, 8388608
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %333, label %324, !prof !733

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.sv, ptr %319, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !327
  %327 = and i32 %326, 2097152
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %324
  %330 = tail call i32 @Perl_mg_get(ptr noundef nonnull %319) #14
  br label %333

331:                                              ; preds = %298
  %332 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %194) #14
  br label %677

333:                                              ; preds = %462, %130, %610, %645, %652, %638, %669, %664, %658, %512, %533, %601, %308, %312, %310, %329, %324, %318, %216, %236, %299
  %334 = phi ptr [ %307, %299 ], [ %238, %236 ], [ %218, %216 ], [ %319, %318 ], [ %319, %324 ], [ %319, %329 ], [ %296, %308 ], [ %296, %312 ], [ %311, %310 ], [ %602, %601 ], [ %535, %533 ], [ %515, %512 ], [ %659, %658 ], [ %659, %664 ], [ %659, %669 ], [ %596, %610 ], [ %596, %652 ], [ %651, %645 ], [ %596, %638 ], [ %464, %462 ], [ %132, %130 ]
  %335 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %336 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %337 = ptrtoint ptr %336 to i64
  %338 = ptrtoint ptr %335 to i64
  %339 = sub i64 %337, %338
  %340 = icmp slt i64 %339, 8
  br i1 %340, label %341, label %343, !prof !738

341:                                              ; preds = %333
  %342 = tail call ptr @Perl_stack_grow(ptr noundef %335, ptr noundef %335, i64 noundef 1) #14
  br label %343

343:                                              ; preds = %333, %341
  %344 = phi ptr [ %342, %341 ], [ %335, %333 ]
  %345 = getelementptr inbounds ptr, ptr %344, i64 1
  store ptr %334, ptr %345, align 8, !tbaa !291
  store ptr %345, ptr @PL_stack_sp, align 8, !tbaa !291
  %346 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %347 = load ptr, ptr %346, align 8, !tbaa !300
  br label %677

348:                                              ; preds = %9
  %349 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %350 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %351 = load i64, ptr %350, align 8, !tbaa !308
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  br label %458

353:                                              ; preds = %9
  %354 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %355 = load ptr, ptr %354, align 8, !tbaa !308
  %356 = getelementptr inbounds %struct.gv, ptr %355, i64 0, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !308
  %358 = getelementptr inbounds %struct.gp, ptr %357, i64 0, i32 5
  %359 = load ptr, ptr %358, align 8, !tbaa !555
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %462, !prof !739

361:                                              ; preds = %353
  %362 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %355, i32 noundef 12) #14
  %363 = getelementptr inbounds %struct.gv, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !308
  %365 = getelementptr inbounds %struct.gp, ptr %364, i64 0, i32 5
  br label %458

366:                                              ; preds = %9
  %367 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %368 = getelementptr inbounds ptr, ptr %367, i64 -1
  %369 = load ptr, ptr %367, align 8, !tbaa !291
  store ptr %368, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %394

370:                                              ; preds = %9
  %371 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !308
  %373 = getelementptr inbounds %struct.gv, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !308
  %375 = load ptr, ptr %374, align 8, !tbaa !291
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %390, !prof !740

377:                                              ; preds = %370
  %378 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %372, i32 noundef 0) #14
  %379 = getelementptr inbounds %struct.gv, ptr %378, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !308
  br label %386

381:                                              ; preds = %9
  %382 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %383 = getelementptr inbounds %union.UNOP_AUX_item, ptr %11, i64 1
  %384 = load i64, ptr %383, align 8, !tbaa !308
  %385 = getelementptr inbounds ptr, ptr %382, i64 %384
  br label %386

386:                                              ; preds = %381, %377
  %387 = phi ptr [ %380, %377 ], [ %385, %381 ]
  %388 = phi ptr [ %371, %377 ], [ %383, %381 ]
  %389 = load ptr, ptr %387, align 8, !tbaa !291
  br label %390

390:                                              ; preds = %9, %386, %370
  %391 = phi ptr [ %371, %370 ], [ %388, %386 ], [ %11, %9 ]
  %392 = phi ptr [ %375, %370 ], [ %389, %386 ], [ %8, %9 ]
  %393 = tail call ptr @Perl_vivify_ref(ptr noundef %392, i32 noundef 32) #15
  br label %394

394:                                              ; preds = %366, %390
  %395 = phi ptr [ %391, %390 ], [ %11, %366 ]
  %396 = phi ptr [ %393, %390 ], [ %369, %366 ]
  %397 = getelementptr inbounds %struct.sv, ptr %396, i64 0, i32 2
  %398 = load i32, ptr %397, align 4, !tbaa !327
  %399 = and i32 %398, 2097152
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401, !prof !741

401:                                              ; preds = %394
  %402 = tail call i32 @Perl_mg_get(ptr noundef nonnull %396) #14
  %403 = load i32, ptr %397, align 4, !tbaa !327
  br label %404

404:                                              ; preds = %394, %401
  %405 = phi i32 [ %398, %394 ], [ %403, %401 ]
  %406 = and i32 %405, 2048
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %435, label %408, !prof !741

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.sv, ptr %396, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !308
  %411 = getelementptr inbounds %struct.sv, ptr %410, i64 0, i32 2
  %412 = load i32, ptr %411, align 4, !tbaa !327
  %413 = and i32 %412, 1048576
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %428, label %415, !prof !742

415:                                              ; preds = %408
  %416 = load ptr, ptr %410, align 8, !tbaa !343
  %417 = load ptr, ptr %416, align 8, !tbaa !453
  %418 = getelementptr inbounds %struct.hv, ptr %417, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !455
  %420 = and i32 %419, 268435456
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %428, label %422, !prof !743

422:                                              ; preds = %415
  %423 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %396, i32 noundef 3) #14
  %424 = getelementptr inbounds %struct.sv, ptr %423, i64 0, i32 3
  %425 = load ptr, ptr %424, align 8, !tbaa !308
  %426 = getelementptr inbounds %struct.sv, ptr %425, i64 0, i32 2
  %427 = load i32, ptr %426, align 4, !tbaa !327
  br label %428

428:                                              ; preds = %408, %415, %422
  %429 = phi i32 [ %427, %422 ], [ %412, %415 ], [ %412, %408 ]
  %430 = phi ptr [ %425, %422 ], [ %410, %415 ], [ %410, %408 ]
  %431 = and i32 %429, 255
  %432 = icmp eq i32 %431, 12
  br i1 %432, label %462, label %433, !prof !744

433:                                              ; preds = %428
  %434 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.28) #14
  br label %677

435:                                              ; preds = %404
  %436 = and i32 %405, 255
  %437 = icmp eq i32 %436, 12
  br i1 %437, label %462, label %438, !prof !745

438:                                              ; preds = %435
  %439 = and i32 %405, 49152
  %440 = icmp eq i32 %439, 32768
  br i1 %440, label %441, label %444, !prof !746

441:                                              ; preds = %438
  %442 = add nsw i32 %436, -9
  %443 = icmp ult i32 %442, 2
  br i1 %443, label %446, label %444, !prof !747

444:                                              ; preds = %441, %438
  %445 = tail call ptr @S_softref2xv_lite(ptr noundef nonnull %396, ptr noundef nonnull @.str.29, i32 noundef 12) #15
  br label %446

446:                                              ; preds = %441, %444
  %447 = phi ptr [ %445, %444 ], [ %396, %441 ]
  %448 = getelementptr inbounds %struct.gv, ptr %447, i64 0, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !308
  %450 = getelementptr inbounds %struct.gp, ptr %449, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !555
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %462, !prof !745

453:                                              ; preds = %446
  %454 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %447, i32 noundef 12) #14
  %455 = getelementptr inbounds %struct.gv, ptr %454, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !308
  %457 = getelementptr inbounds %struct.gp, ptr %456, i64 0, i32 5
  br label %458

458:                                              ; preds = %348, %361, %453
  %459 = phi ptr [ %457, %453 ], [ %365, %361 ], [ %352, %348 ]
  %460 = phi ptr [ %395, %453 ], [ %354, %361 ], [ %350, %348 ]
  %461 = load ptr, ptr %459, align 8, !tbaa !291
  br label %462

462:                                              ; preds = %458, %446, %353, %428, %435
  %463 = phi ptr [ %395, %428 ], [ %395, %435 ], [ %354, %353 ], [ %395, %446 ], [ %460, %458 ]
  %464 = phi ptr [ %430, %428 ], [ %396, %435 ], [ %359, %353 ], [ %451, %446 ], [ %461, %458 ]
  %465 = lshr i64 %10, 4
  %466 = and i64 %465, 3
  switch i64 %466, label %192 [
    i64 0, label %333
    i64 1, label %467
    i64 2, label %469
    i64 3, label %474
  ], !prof !748

467:                                              ; preds = %462
  %468 = getelementptr inbounds %union.UNOP_AUX_item, ptr %463, i64 1
  br label %485

469:                                              ; preds = %462
  %470 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %471 = getelementptr inbounds %union.UNOP_AUX_item, ptr %463, i64 1
  %472 = load i64, ptr %471, align 8, !tbaa !308
  %473 = getelementptr inbounds ptr, ptr %470, i64 %472
  br label %485

474:                                              ; preds = %462
  %475 = getelementptr inbounds %union.UNOP_AUX_item, ptr %463, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !308
  %477 = getelementptr inbounds %struct.gv, ptr %476, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !308
  %479 = load ptr, ptr %478, align 8, !tbaa !465
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %485, !prof !749

481:                                              ; preds = %474
  %482 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %476, i32 noundef 0) #14
  %483 = getelementptr inbounds %struct.gv, ptr %482, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !308
  br label %485

485:                                              ; preds = %481, %474, %469, %467
  %486 = phi ptr [ %473, %469 ], [ %468, %467 ], [ %484, %481 ], [ %478, %474 ]
  %487 = phi ptr [ %471, %469 ], [ %468, %467 ], [ %475, %481 ], [ %475, %474 ]
  %488 = load ptr, ptr %486, align 8, !tbaa !308
  store ptr %487, ptr @PL_multideref_pc, align 8, !tbaa !291
  %489 = and i64 %10, 64
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %502, !prof !750

491:                                              ; preds = %485
  %492 = tail call ptr @Perl_hv_common(ptr noundef %464, ptr noundef %488, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #14
  %493 = icmp eq ptr %492, null
  br i1 %493, label %500, label %494, !prof !751

494:                                              ; preds = %491
  %495 = getelementptr inbounds %struct.he, ptr %492, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !308
  %497 = icmp eq ptr %496, null
  %498 = icmp eq ptr %496, @PL_sv_undef
  %499 = or i1 %497, %498
  br i1 %499, label %500, label %673, !prof !752

500:                                              ; preds = %494, %491
  %501 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %488) #14
  br label %677

502:                                              ; preds = %485
  %503 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %504 = getelementptr inbounds %struct.op, ptr %503, i64 0, i32 6
  %505 = load i8, ptr %504, align 1, !tbaa !315
  %506 = zext i8 %505 to i32
  %507 = and i32 %506, 48
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %536, label %509, !prof !753

509:                                              ; preds = %502
  %510 = and i32 %506, 16
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %516, label %512, !prof !754

512:                                              ; preds = %509
  %513 = tail call ptr @Perl_hv_common(ptr noundef %464, ptr noundef %488, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %514 = icmp eq ptr %513, null
  %515 = select i1 %514, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %333

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.op, ptr %503, i64 0, i32 5
  %518 = load i8, ptr %517, align 2, !tbaa !364
  %519 = and i8 %518, 3
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %523, label %521, !prof !755

521:                                              ; preds = %516
  %522 = zext nneg i8 %519 to i32
  br label %525

523:                                              ; preds = %516
  %524 = tail call i32 @Perl_block_gimme() #14
  br label %525

525:                                              ; preds = %523, %521
  %526 = phi i32 [ %522, %521 ], [ %524, %523 ]
  %527 = icmp eq i32 %526, 1
  %528 = select i1 %527, i32 68, i32 64
  %529 = tail call ptr @Perl_hv_common(ptr noundef %464, ptr noundef %488, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %528, ptr noundef null, i32 noundef 0) #14
  br i1 %527, label %530, label %533, !prof !756

530:                                              ; preds = %525
  %531 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %532 = load ptr, ptr %531, align 8, !tbaa !300
  br label %677

533:                                              ; preds = %525
  %534 = icmp eq ptr %529, null
  %535 = select i1 %534, ptr @PL_sv_undef, ptr %529, !prof !757
  br label %333

536:                                              ; preds = %502
  %537 = getelementptr inbounds %struct.op, ptr %503, i64 0, i32 5
  %538 = load i8, ptr %537, align 2, !tbaa !364
  %539 = and i8 %538, 32
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %541, label %550, !prof !758

541:                                              ; preds = %536
  %542 = and i32 %506, 8
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %550, label %544, !prof !759

544:                                              ; preds = %541
  %545 = tail call i32 @Perl_is_lvalue_sub() #14
  %546 = icmp ne i32 %545, 0
  %547 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %548 = getelementptr inbounds %struct.op, ptr %547, i64 0, i32 6
  %549 = load i8, ptr %548, align 1, !tbaa !315
  br label %550

550:                                              ; preds = %541, %544, %536
  %551 = phi i8 [ %505, %536 ], [ %505, %541 ], [ %549, %544 ]
  %552 = phi i1 [ true, %536 ], [ false, %541 ], [ %546, %544 ]
  %553 = and i8 %551, 64
  %554 = icmp sgt i8 %551, -1
  br i1 %554, label %586, label %555, !prof !760

555:                                              ; preds = %550
  %556 = getelementptr inbounds %struct.hv, ptr %464, i64 0, i32 2
  %557 = load i32, ptr %556, align 4, !tbaa !455
  %558 = and i32 %557, 8388608
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %583, label %560, !prof !761

560:                                              ; preds = %555
  %561 = tail call ptr @Perl_mg_find(ptr noundef nonnull %464, i32 noundef 80) #14
  %562 = icmp eq ptr %561, null
  br i1 %562, label %583, label %563, !prof !762

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.magic, ptr %561, i64 0, i32 6
  %565 = load ptr, ptr %564, align 8, !tbaa !696
  %566 = icmp eq ptr %565, null
  br i1 %566, label %567, label %570

567:                                              ; preds = %563
  %568 = tail call ptr @Perl_newRV(ptr noundef nonnull %464) #14
  %569 = tail call ptr @Perl_sv_2mortal(ptr noundef %568) #14
  br label %570

570:                                              ; preds = %563, %567
  %571 = phi ptr [ %569, %567 ], [ %565, %563 ]
  %572 = getelementptr inbounds %struct.sv, ptr %571, i64 0, i32 3
  %573 = load ptr, ptr %572, align 8, !tbaa !308
  %574 = load ptr, ptr %573, align 8, !tbaa !343
  %575 = load ptr, ptr %574, align 8, !tbaa !453
  %576 = icmp eq ptr %575, null
  br i1 %576, label %586, label %577

577:                                              ; preds = %570
  %578 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %575, ptr noundef nonnull @.str.22, i32 noundef 1) #14
  %579 = icmp eq ptr %578, null
  br i1 %579, label %586, label %580

580:                                              ; preds = %577
  %581 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %575, ptr noundef nonnull @.str.23, i32 noundef 1) #14
  %582 = icmp eq ptr %581, null
  br i1 %582, label %586, label %583

583:                                              ; preds = %580, %560, %555
  %584 = tail call ptr @Perl_hv_common(ptr noundef nonnull %464, ptr noundef %488, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #14
  %585 = icmp ne ptr %584, null
  br label %586

586:                                              ; preds = %570, %577, %580, %583, %550
  %587 = phi i1 [ true, %550 ], [ %585, %583 ], [ true, %580 ], [ true, %577 ], [ true, %570 ]
  %588 = icmp eq i8 %553, 0
  %589 = and i1 %552, %588
  %590 = select i1 %589, i32 16, i32 0
  %591 = tail call ptr @Perl_hv_common(ptr noundef %464, ptr noundef %488, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %590, ptr noundef null, i32 noundef 0) #14
  %592 = icmp eq ptr %591, null
  %593 = getelementptr inbounds %struct.he, ptr %591, i64 0, i32 2
  br i1 %552, label %594, label %653, !prof !763

594:                                              ; preds = %586
  br i1 %592, label %600, label %595, !prof !764

595:                                              ; preds = %594
  %596 = load ptr, ptr %593, align 8, !tbaa !291
  %597 = icmp eq ptr %596, null
  %598 = icmp eq ptr %596, @PL_sv_undef
  %599 = or i1 %597, %598
  br i1 %599, label %600, label %610, !prof !765

600:                                              ; preds = %595, %594
  br i1 %588, label %671, label %601, !prof !766

601:                                              ; preds = %600
  %602 = tail call ptr @Perl_sv_newmortal() #14
  tail call void @Perl_sv_upgrade(ptr noundef %602, i32 noundef 10) #14
  %603 = load ptr, ptr %602, align 8, !tbaa !343
  %604 = getelementptr inbounds %struct.xpvlv, ptr %603, i64 0, i32 9
  store i8 121, ptr %604, align 8, !tbaa !700
  %605 = tail call ptr @Perl_newSVsv(ptr noundef %488) #14
  tail call void @Perl_sv_magic(ptr noundef nonnull %602, ptr noundef %605, i32 noundef 121, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %605) #15
  %606 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %464) #15
  %607 = load ptr, ptr %602, align 8, !tbaa !343
  %608 = getelementptr inbounds %struct.xpvlv, ptr %607, i64 0, i32 8
  store ptr %464, ptr %608, align 8, !tbaa !702
  %609 = getelementptr inbounds %struct.xpvlv, ptr %607, i64 0, i32 7
  store i64 1, ptr %609, align 8, !tbaa !703
  br label %333

610:                                              ; preds = %595
  br i1 %554, label %333, label %611, !prof !767

611:                                              ; preds = %610
  %612 = getelementptr inbounds %struct.hv, ptr %464, i64 0, i32 2
  %613 = load i32, ptr %612, align 4, !tbaa !455
  %614 = and i32 %613, 33554432
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %644, label %616, !prof !762

616:                                              ; preds = %611
  %617 = getelementptr inbounds %struct.hv, ptr %464, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !308
  %619 = load ptr, ptr %464, align 8, !tbaa !705
  %620 = getelementptr inbounds %struct.xpvhv, ptr %619, i64 0, i32 3
  %621 = load i64, ptr %620, align 8, !tbaa !706
  %622 = getelementptr ptr, ptr %618, i64 %621
  %623 = getelementptr ptr, ptr %622, i64 1
  %624 = load ptr, ptr %623, align 8, !tbaa !308
  %625 = icmp eq ptr %624, null
  br i1 %625, label %644, label %626

626:                                              ; preds = %616
  %627 = getelementptr i8, ptr %622, i64 36
  %628 = load i32, ptr %627, align 4, !tbaa !707
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %633, label %630

630:                                              ; preds = %626
  %631 = load ptr, ptr %624, align 8, !tbaa !291
  %632 = icmp eq ptr %631, null
  br i1 %632, label %644, label %633

633:                                              ; preds = %626, %630
  %634 = getelementptr inbounds %struct.sv, ptr %596, i64 0, i32 2
  %635 = load i32, ptr %634, align 4, !tbaa !327
  %636 = and i32 %635, 255
  %637 = icmp eq i32 %636, 9
  br i1 %637, label %638, label %644

638:                                              ; preds = %633
  %639 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %640 = getelementptr inbounds %struct.op, ptr %639, i64 0, i32 5
  %641 = load i8, ptr %640, align 2, !tbaa !364
  %642 = icmp sgt i8 %641, -1
  %643 = zext i1 %642 to i32
  tail call void @Perl_save_gp(ptr noundef nonnull %596, i32 noundef %643) #14
  br label %333

644:                                              ; preds = %611, %616, %630, %633
  br i1 %587, label %645, label %652, !prof !761

645:                                              ; preds = %644
  %646 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %647 = getelementptr inbounds %struct.op, ptr %646, i64 0, i32 5
  %648 = load i8, ptr %647, align 2, !tbaa !364
  %649 = icmp sgt i8 %648, -1
  %650 = zext i1 %649 to i32
  tail call void @Perl_save_helem_flags(ptr noundef nonnull %464, ptr noundef %488, ptr noundef nonnull %593, i32 noundef %650) #14
  %651 = load ptr, ptr %593, align 8, !tbaa !291
  br label %333

652:                                              ; preds = %644
  tail call void @Perl_save_hdelete(ptr noundef nonnull %464, ptr noundef %488) #14
  br label %333

653:                                              ; preds = %586
  br i1 %592, label %658, label %654, !prof !768

654:                                              ; preds = %653
  %655 = load ptr, ptr %593, align 8, !tbaa !291
  %656 = icmp eq ptr %655, null
  %657 = select i1 %656, ptr @PL_sv_undef, ptr %655, !prof !769
  br label %658

658:                                              ; preds = %654, %653
  %659 = phi ptr [ @PL_sv_undef, %653 ], [ %657, %654 ]
  %660 = getelementptr inbounds %struct.hv, ptr %464, i64 0, i32 2
  %661 = load i32, ptr %660, align 4, !tbaa !455
  %662 = and i32 %661, 8388608
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %333, label %664, !prof !770

664:                                              ; preds = %658
  %665 = getelementptr inbounds %struct.sv, ptr %659, i64 0, i32 2
  %666 = load i32, ptr %665, align 4, !tbaa !327
  %667 = and i32 %666, 2097152
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %333, label %669, !prof !771

669:                                              ; preds = %664
  %670 = tail call i32 @Perl_mg_get(ptr noundef nonnull %659) #14
  br label %333

671:                                              ; preds = %600
  %672 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %488) #14
  br label %677

673:                                              ; preds = %9, %494, %201
  %674 = phi ptr [ %195, %201 ], [ %487, %494 ], [ %11, %9 ]
  %675 = phi ptr [ %202, %201 ], [ %496, %494 ], [ %8, %9 ]
  %676 = lshr i64 %10, 7
  br label %5

677:                                              ; preds = %530, %500, %671, %233, %204, %331, %433, %343, %101
  %678 = phi ptr [ %434, %433 ], [ %347, %343 ], [ %102, %101 ], [ %235, %233 ], [ %205, %204 ], [ %332, %331 ], [ %532, %530 ], [ %501, %500 ], [ %672, %671 ]
  ret ptr %678
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
define dso_local ptr @Perl_pp_iter() local_unnamed_addr #0 !prof !772 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %3 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10, !prof !773

8:                                                ; preds = %0
  %9 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #14
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %9, %8 ], [ %2, %0 ]
  %12 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %13 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !307
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.context, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8
  %20 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !308
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23, !prof !773

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !308
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !774
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37, !prof !776

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !332
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %37, !prof !776

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !308
  br label %37

37:                                               ; preds = %29, %23, %10, %34
  %38 = phi ptr [ %36, %34 ], [ null, %10 ], [ %21, %23 ], [ %20, %29 ]
  %39 = load i8, ptr %18, align 8, !tbaa !308
  %40 = and i8 %39, 15
  switch i8 %40, label %235 [
    i8 6, label %41
    i8 7, label %95
    i8 4, label %124
  ], !prof !777

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !308
  %44 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  store i64 0, ptr %1, align 8, !tbaa !309
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !327
  %48 = and i32 %47, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load ptr, ptr %45, align 8, !tbaa !343
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !345
  store i64 %53, ptr %1, align 8, !tbaa !309
  %54 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !308
  br label %58

56:                                               ; preds = %41
  %57 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %45, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !327
  %62 = and i32 %61, 768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load ptr, ptr %43, align 8, !tbaa !343
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !345
  %68 = load i64, ptr %1, align 8, !tbaa !309
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %38, align 8, !tbaa !291
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !365
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !327
  %78 = and i32 %77, 14680064
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %71, ptr noundef nonnull %43, i32 noundef 1538) #14
  br label %83

81:                                               ; preds = %70, %75
  %82 = call ptr @Perl_newSVsv(ptr noundef nonnull %43) #14
  store ptr %82, ptr %38, align 8, !tbaa !291
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %71) #15
  br label %83

83:                                               ; preds = %81, %80
  %84 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !308
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
  store ptr @PL_sv_no, ptr %92, align 8, !tbaa !291
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !291
  %93 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %94 = load ptr, ptr %93, align 8, !tbaa !300
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %242

95:                                               ; preds = %37
  %96 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !308
  %98 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !308
  %100 = icmp sgt i64 %97, %99
  br i1 %100, label %120, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %38, align 8, !tbaa !291
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !365
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !327
  %109 = and i32 %108, 14680064
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  tail call void @Perl_sv_setiv(ptr noundef nonnull %102, i64 noundef %97) #14
  br label %114

112:                                              ; preds = %101, %106
  %113 = tail call ptr @Perl_newSViv(i64 noundef %97) #14
  store ptr %113, ptr %38, align 8, !tbaa !291
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %102) #15
  br label %114

114:                                              ; preds = %112, %111
  %115 = icmp eq i64 %97, 9223372036854775807
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  store i64 -9223372036854775808, ptr %98, align 8, !tbaa !308
  br label %238

117:                                              ; preds = %114
  %118 = load i64, ptr %96, align 8, !tbaa !308
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %96, align 8, !tbaa !308
  br label %238

120:                                              ; preds = %95
  %121 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %121, align 8, !tbaa !291
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !291
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %123 = load ptr, ptr %122, align 8, !tbaa !300
  br label %242

124:                                              ; preds = %37
  %125 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !308
  %127 = icmp eq ptr %126, null
  %128 = load ptr, ptr @PL_curstack, align 8
  %129 = select i1 %127, ptr %128, ptr %126, !prof !778
  %130 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %131 = getelementptr inbounds %struct.op, ptr %130, i64 0, i32 6
  %132 = load i8, ptr %131, align 1, !tbaa !315
  %133 = and i8 %132, 4
  %134 = icmp eq i8 %133, 0
  %135 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %136 = load i64, ptr %135, align 8, !tbaa !308
  br i1 %134, label %149, label %137, !prof !779

137:                                              ; preds = %124
  %138 = add nsw i64 %136, -1
  store i64 %138, ptr %135, align 8, !tbaa !308
  br i1 %127, label %139, label %142

139:                                              ; preds = %137
  %140 = load i32, ptr %19, align 8, !tbaa !308
  %141 = sext i32 %140 to i64
  br label %142

142:                                              ; preds = %137, %139
  %143 = phi i64 [ %141, %139 ], [ -1, %137 ]
  %144 = icmp sgt i64 %138, %143
  br i1 %144, label %174, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %146, align 8, !tbaa !291
  store ptr %146, ptr @PL_stack_sp, align 8, !tbaa !291
  %147 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %148 = load ptr, ptr %147, align 8, !tbaa !300
  br label %242

149:                                              ; preds = %124
  %150 = add nsw i64 %136, 1
  store i64 %150, ptr %135, align 8, !tbaa !308
  br i1 %127, label %151, label %155, !prof !778

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !308
  %154 = sext i32 %153 to i64
  br label %167

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !327
  %158 = and i32 %157, 8388608
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160, !prof !779

160:                                              ; preds = %155
  %161 = tail call i32 @Perl_mg_size(ptr noundef nonnull %126) #14
  %162 = sext i32 %161 to i64
  br label %167

163:                                              ; preds = %155
  %164 = load ptr, ptr %126, align 8, !tbaa !425
  %165 = getelementptr inbounds %struct.xpvav, ptr %164, i64 0, i32 2
  %166 = load i64, ptr %165, align 8, !tbaa !427
  br label %167

167:                                              ; preds = %160, %163, %151
  %168 = phi i64 [ %154, %151 ], [ %162, %160 ], [ %166, %163 ]
  %169 = icmp slt i64 %136, %168
  br i1 %169, label %174, label %170, !prof !779

170:                                              ; preds = %167
  %171 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %171, align 8, !tbaa !291
  store ptr %171, ptr @PL_stack_sp, align 8, !tbaa !291
  %172 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %173 = load ptr, ptr %172, align 8, !tbaa !300
  br label %242

174:                                              ; preds = %167, %142
  %175 = phi i64 [ %138, %142 ], [ %150, %167 ]
  %176 = getelementptr inbounds %struct.av, ptr %129, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !429
  %178 = and i32 %177, -2132803584
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180, !prof !780

180:                                              ; preds = %174
  %181 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %129, i64 noundef %175, i32 noundef 0) #14
  %182 = icmp eq ptr %181, null
  %183 = load i8, ptr %18, align 8, !tbaa !308
  br i1 %182, label %195, label %189, !prof !781

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.av, ptr %129, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !308
  %187 = getelementptr inbounds ptr, ptr %186, i64 %175
  %188 = load i8, ptr %18, align 8, !tbaa !308
  br label %189

189:                                              ; preds = %180, %184
  %190 = phi i8 [ %188, %184 ], [ %183, %180 ]
  %191 = phi ptr [ %187, %184 ], [ %181, %180 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !291
  %193 = and i8 %190, 32
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %210, label %198, !prof !782

195:                                              ; preds = %180
  %196 = and i8 %183, 32
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %229, label %198, !prof !782

198:                                              ; preds = %195, %189
  %199 = phi ptr [ null, %195 ], [ %192, %189 ]
  %200 = load ptr, ptr %38, align 8, !tbaa !291
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %238, label %202

202:                                              ; preds = %198
  tail call void @Perl_sv_setsv_flags(ptr noundef %200, ptr noundef %199, i32 noundef 1538) #14
  %203 = load ptr, ptr %38, align 8, !tbaa !291
  %204 = getelementptr inbounds %struct.sv, ptr %203, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !327
  %206 = and i32 %205, 4194304
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %238, label %208

208:                                              ; preds = %202
  %209 = tail call i32 @Perl_mg_set(ptr noundef nonnull %203) #14
  br label %238

210:                                              ; preds = %189
  %211 = icmp eq ptr %192, null
  br i1 %211, label %229, label %212, !prof !783

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !327
  %215 = icmp eq i32 %214, 255
  br i1 %215, label %216, label %218, !prof !784

216:                                              ; preds = %212
  store ptr null, ptr %38, align 8, !tbaa !291
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.30) #14
  %217 = load i32, ptr %213, align 4, !tbaa !327
  br label %218

218:                                              ; preds = %212, %216
  %219 = phi i32 [ %214, %212 ], [ %217, %216 ]
  %220 = and i32 %219, 131072
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222, !prof !782

222:                                              ; preds = %218
  %223 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %192) #14
  br label %232

224:                                              ; preds = %218
  %225 = and i32 %219, -655361
  store i32 %225, ptr %213, align 4, !tbaa !327
  %226 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !365
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 8, !tbaa !365
  br label %232

229:                                              ; preds = %195, %210
  br i1 %127, label %232, label %230

230:                                              ; preds = %229
  %231 = tail call ptr @Perl_newSVavdefelem(ptr noundef nonnull %126, i64 noundef %175, i1 noundef zeroext false) #14
  br label %232

232:                                              ; preds = %229, %230, %222, %224
  %233 = phi ptr [ %223, %222 ], [ %192, %224 ], [ %231, %230 ], [ @PL_sv_undef, %229 ]
  %234 = load ptr, ptr %38, align 8, !tbaa !291
  store ptr %233, ptr %38, align 8, !tbaa !291
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %234) #15
  br label %238

235:                                              ; preds = %37
  %236 = zext nneg i8 %40 to i32
  %237 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.31, i32 noundef %236) #14
  br label %242

238:                                              ; preds = %198, %202, %208, %232, %117, %116, %90
  %239 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_yes, ptr %239, align 8, !tbaa !291
  store ptr %239, ptr @PL_stack_sp, align 8, !tbaa !291
  %240 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %241 = load ptr, ptr %240, align 8, !tbaa !300
  br label %242

242:                                              ; preds = %145, %170, %120, %91, %238, %235
  %243 = phi ptr [ %237, %235 ], [ %241, %238 ], [ %123, %120 ], [ %94, %91 ], [ %148, %145 ], [ %173, %170 ]
  ret ptr %243
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !785 !PGOFuncName !786 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !787

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !365
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !788

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !365
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_subst() local_unnamed_addr #0 !prof !789 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %5 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !621
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %8 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !648
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12, !prof !790

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %3, i64 -1
  %14 = load ptr, ptr %3, align 8, !tbaa !291
  br label %15

15:                                               ; preds = %0, %12
  %16 = phi ptr [ %13, %12 ], [ %3, %0 ]
  %17 = phi ptr [ %14, %12 ], [ null, %0 ]
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !311
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !791

20:                                               ; preds = %15
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !291
  tail call void %21() #14
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %4, %15 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 5
  %26 = load i8, ptr %25, align 2, !tbaa !364
  %27 = and i8 %26, 64
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29, !prof !792

29:                                               ; preds = %23
  %30 = getelementptr inbounds ptr, ptr %16, i64 -1
  %31 = load ptr, ptr %16, align 8, !tbaa !291
  br label %60

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !326
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36, !prof !793

36:                                               ; preds = %32
  %37 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %38 = getelementptr inbounds ptr, ptr %37, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !291
  br label %60

40:                                               ; preds = %32
  %41 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %42 = getelementptr inbounds %struct.gv, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !308
  %44 = load ptr, ptr %43, align 8, !tbaa !291
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51, !prof !794

46:                                               ; preds = %40
  %47 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %41, i32 noundef 0) #14
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !308
  %50 = load ptr, ptr %49, align 8, !tbaa !291
  br label %51

51:                                               ; preds = %40, %46
  %52 = phi ptr [ %50, %46 ], [ %44, %40 ]
  %53 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %16 to i64
  %56 = sub i64 %54, %55
  %57 = icmp slt i64 %56, 8
  br i1 %57, label %58, label %60, !prof !794

58:                                               ; preds = %51
  %59 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #14
  br label %60

60:                                               ; preds = %36, %51, %58, %29
  %61 = phi ptr [ %31, %29 ], [ %39, %36 ], [ %52, %58 ], [ %52, %51 ]
  %62 = phi ptr [ %30, %29 ], [ %16, %36 ], [ %59, %58 ], [ %16, %51 ]
  %63 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !327
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67, !prof !791

67:                                               ; preds = %60
  %68 = tail call i32 @Perl_mg_get(ptr noundef nonnull %61) #14
  %69 = load i32, ptr %63, align 4, !tbaa !327
  br label %70

70:                                               ; preds = %60, %67
  %71 = phi i32 [ %64, %60 ], [ %69, %67 ]
  %72 = and i32 %71, 268435456
  %73 = icmp ne i32 %72, 0
  %74 = load i32, ptr %8, align 8, !tbaa !648
  %75 = and i32 %74, 134217728
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90, !prof !791

77:                                               ; preds = %70
  %78 = and i32 %71, 134283264
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88, !prof !791

80:                                               ; preds = %77
  %81 = and i32 %71, 255
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %86, !prof !795

83:                                               ; preds = %80
  %84 = and i32 %71, 16826368
  %85 = icmp eq i32 %84, 32768
  br i1 %85, label %88, label %90

86:                                               ; preds = %80
  %87 = icmp ugt i32 %81, 10
  br i1 %87, label %88, label %90, !prof !796

88:                                               ; preds = %83, %86, %77
  tail call void @Perl_croak_no_modify() #14
  %89 = load i32, ptr %63, align 4, !tbaa !327
  br label %90

90:                                               ; preds = %83, %88, %86, %70
  %91 = phi i32 [ %71, %83 ], [ %89, %88 ], [ %71, %86 ], [ %71, %70 ]
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !291
  %92 = and i32 %91, 2098176
  %93 = icmp eq i32 %92, 1024
  br i1 %93, label %94, label %100, !prof !797

94:                                               ; preds = %90
  %95 = load ptr, ptr %61, align 8, !tbaa !343
  %96 = getelementptr inbounds %struct.xpv, ptr %95, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !345
  store i64 %97, ptr %2, align 8, !tbaa !309
  %98 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !308
  br label %103

100:                                              ; preds = %90
  %101 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %61, ptr noundef nonnull %2, i32 noundef 0) #14
  %102 = load i32, ptr %63, align 4, !tbaa !327
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi i32 [ %91, %94 ], [ %102, %100 ]
  %105 = phi ptr [ %99, %94 ], [ %101, %100 ]
  %106 = and i32 %104, 16384
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %104, 255
  %109 = icmp eq i32 %108, 9
  %110 = or i1 %107, %109
  br i1 %110, label %117, label %111, !prof !798

111:                                              ; preds = %103
  %112 = and i32 %104, 14680064
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !799

114:                                              ; preds = %111
  %115 = call ptr @Perl_mg_find(ptr noundef nonnull %61, i32 noundef 86) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117, !prof !800

117:                                              ; preds = %114, %103
  br label %118

118:                                              ; preds = %117, %114, %111
  %119 = phi i32 [ 1, %117 ], [ 0, %114 ], [ 0, %111 ]
  %120 = load i32, ptr %8, align 8, !tbaa !648
  %121 = and i32 %120, 16777216
  %122 = icmp eq i32 %121, 0
  %123 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %151, label %125, !prof !791

125:                                              ; preds = %118
  %126 = load i32, ptr %63, align 4, !tbaa !327
  %127 = and i32 %126, 14680064
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %61) #14
  %131 = load i32, ptr %8, align 8, !tbaa !648
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i32 [ %120, %125 ], [ %131, %129 ]
  %134 = phi i1 [ false, %125 ], [ %130, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call fastcc ptr @S_ReANY(ptr noundef %6) #15
  %137 = getelementptr inbounds %struct.regexp, ptr %136, i64 0, i32 7
  %138 = load i32, ptr %137, align 8, !tbaa !633
  %139 = lshr i32 %138, 26
  %140 = and i32 %139, 2
  %141 = or disjoint i32 %140, %135
  %142 = lshr i32 %133, 16
  %143 = and i32 %142, 8
  %144 = or disjoint i32 %141, %143
  %145 = and i32 %133, 134217728
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %122, i1 %146, i1 false
  %148 = select i1 %147, i32 16, i32 0
  %149 = or disjoint i32 %144, %148
  %150 = trunc i32 %149 to i8
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  br label %151

151:                                              ; preds = %132, %118
  %152 = phi i8 [ %150, %132 ], [ 0, %118 ]
  %153 = icmp eq ptr %105, null
  br i1 %153, label %167, label %154, !prof !553

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  br label %156

156:                                              ; preds = %154, %556
  %157 = phi ptr [ %61, %154 ], [ %543, %556 ]
  %158 = phi ptr [ %4, %154 ], [ %215, %556 ]
  %159 = phi ptr [ null, %154 ], [ %531, %556 ]
  %160 = phi i8 [ %152, %154 ], [ %532, %556 ]
  %161 = phi i8 [ 0, %154 ], [ %533, %556 ]
  %162 = phi ptr [ %105, %154 ], [ %557, %556 ]
  %163 = phi ptr [ %6, %154 ], [ %214, %556 ]
  %164 = phi i32 [ %119, %154 ], [ 0, %556 ]
  %165 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %166 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 3
  br label %170

167:                                              ; preds = %556, %377, %151
  %168 = phi ptr [ %4, %151 ], [ %215, %377 ], [ %215, %556 ]
  %169 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.32, ptr noundef %168, ptr noundef null) #14
  br label %896

170:                                              ; preds = %156, %377
  %171 = phi ptr [ %158, %156 ], [ %215, %377 ]
  %172 = phi ptr [ %159, %156 ], [ %312, %377 ]
  %173 = phi i8 [ %160, %156 ], [ %322, %377 ]
  %174 = phi i8 [ %161, %156 ], [ %311, %377 ]
  %175 = phi ptr [ %162, %156 ], [ %378, %377 ]
  %176 = phi ptr [ %163, %156 ], [ %214, %377 ]
  %177 = phi i32 [ %164, %156 ], [ 0, %377 ]
  %178 = load i64, ptr %2, align 8, !tbaa !309
  %179 = getelementptr inbounds i8, ptr %175, i64 %178
  %180 = load i32, ptr %165, align 4, !tbaa !327
  %181 = and i32 %180, 536870912
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %191, label %183, !prof !791

183:                                              ; preds = %170
  %184 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %185 = getelementptr inbounds %struct.cop, ptr %184, i64 0, i32 10
  %186 = load i32, ptr %185, align 8, !tbaa !398
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i64 @Perl_utf8_length(ptr noundef nonnull %175, ptr noundef nonnull %179) #14
  br label %191

191:                                              ; preds = %170, %183, %189
  %192 = phi i64 [ %190, %189 ], [ %178, %183 ], [ %178, %170 ]
  %193 = load ptr, ptr %176, align 8, !tbaa !649
  %194 = getelementptr inbounds %struct.xpv, ptr %193, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !345
  %196 = call fastcc ptr @S_ReANY(ptr noundef nonnull %176) #15
  %197 = getelementptr inbounds %struct.regexp, ptr %196, i64 0, i32 24
  %198 = load i16, ptr %197, align 8
  %199 = and i16 %198, 15
  %200 = add nuw nsw i16 %199, 1
  %201 = zext nneg i16 %200 to i64
  %202 = icmp eq i64 %195, %201
  br i1 %202, label %203, label %213, !prof !795

203:                                              ; preds = %191
  %204 = load ptr, ptr @PL_curpm, align 8, !tbaa !291
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.regexp, ptr %196, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !642
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.pmop, ptr %204, i64 0, i32 9
  %212 = load ptr, ptr %211, align 8, !tbaa !621
  br label %213

213:                                              ; preds = %210, %206, %203, %191
  %214 = phi ptr [ %176, %191 ], [ %176, %206 ], [ %212, %210 ], [ %176, %203 ]
  %215 = phi ptr [ %171, %191 ], [ %171, %206 ], [ %204, %210 ], [ %171, %203 ]
  %216 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %217 = getelementptr inbounds %struct.regexp, ptr %216, i64 0, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !624
  %219 = getelementptr inbounds %struct.regexp_engine, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !660
  %221 = call i32 %220(ptr noundef %214, ptr noundef nonnull %175, ptr noundef nonnull %179, ptr noundef nonnull %175, i64 noundef 0, ptr noundef nonnull %157, ptr noundef null, i32 noundef 1) #14
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %238, !prof !801

223:                                              ; preds = %213
  %224 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %225 = load i32, ptr %8, align 8, !tbaa !648
  %226 = and i32 %225, 134217728
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228, !prof !802

228:                                              ; preds = %223
  br label %229

229:                                              ; preds = %223, %228
  %230 = phi ptr [ %157, %228 ], [ @PL_sv_no, %223 ]
  %231 = getelementptr inbounds ptr, ptr %224, i64 1
  store ptr %230, ptr %231, align 8, !tbaa !291
  %232 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %233 = icmp sgt i32 %232, %7
  br i1 %233, label %234, label %235, !prof !803

234:                                              ; preds = %229
  call void @Perl_leave_scope(i32 noundef %7) #14
  br label %235

235:                                              ; preds = %234, %229
  store ptr %231, ptr @PL_stack_sp, align 8, !tbaa !291
  %236 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %237 = load ptr, ptr %236, align 8, !tbaa !300
  br label %896

238:                                              ; preds = %213
  %239 = icmp eq ptr %17, null
  store ptr %215, ptr @PL_curpm, align 8, !tbaa !291
  br i1 %239, label %526, label %240, !prof !804

240:                                              ; preds = %238
  %241 = load i32, ptr %165, align 4, !tbaa !327
  %242 = and i32 %241, 536870912
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %283, label %244, !prof !805

244:                                              ; preds = %240
  %245 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %246 = getelementptr inbounds %struct.cop, ptr %245, i64 0, i32 10
  %247 = load i32, ptr %246, align 8, !tbaa !398
  %248 = and i32 %247, 8
  %249 = icmp eq i32 %248, 0
  %250 = icmp eq i8 %174, 0
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
  %257 = load ptr, ptr @PL_encoding, align 8, !tbaa !291
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !291
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
  %272 = load i32, ptr %271, align 4, !tbaa !327
  %273 = and i32 %272, 2098176
  %274 = icmp eq i32 %273, 1024
  br i1 %274, label %275, label %281

275:                                              ; preds = %270
  %276 = load ptr, ptr %253, align 8, !tbaa !343
  %277 = getelementptr inbounds %struct.xpv, ptr %276, i64 0, i32 2
  %278 = load i64, ptr %277, align 8, !tbaa !345
  store i64 %278, ptr %1, align 8, !tbaa !309
  %279 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !308
  br label %310

281:                                              ; preds = %270
  %282 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %253, ptr noundef nonnull %1, i32 noundef 34) #14
  br label %310

283:                                              ; preds = %244, %240
  %284 = load i32, ptr %155, align 4, !tbaa !327
  %285 = and i32 %284, 2098176
  %286 = icmp eq i32 %285, 1024
  br i1 %286, label %287, label %293, !prof !806

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %289 = load ptr, ptr %17, align 8, !tbaa !343
  %290 = getelementptr inbounds %struct.xpv, ptr %289, i64 0, i32 2
  %291 = load i64, ptr %290, align 8, !tbaa !345
  store i64 %291, ptr %1, align 8, !tbaa !309
  %292 = load ptr, ptr %288, align 8, !tbaa !308
  br label %296

293:                                              ; preds = %283
  %294 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %1, i32 noundef 34) #14
  %295 = load i32, ptr %155, align 4, !tbaa !327
  br label %296

296:                                              ; preds = %293, %287
  %297 = phi i32 [ %284, %287 ], [ %295, %293 ]
  %298 = phi ptr [ %292, %287 ], [ %294, %293 ]
  %299 = and i32 %297, 536870912
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %307, label %301, !prof !805

301:                                              ; preds = %296
  %302 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %303 = getelementptr inbounds %struct.cop, ptr %302, i64 0, i32 10
  %304 = load i32, ptr %303, align 8, !tbaa !398
  %305 = and i32 %304, 8
  %306 = icmp eq i32 %305, 0
  br label %307

307:                                              ; preds = %301, %296
  %308 = phi i1 [ false, %296 ], [ %306, %301 ]
  %309 = zext i1 %308 to i8
  br label %310

310:                                              ; preds = %275, %281, %307
  %311 = phi i8 [ %309, %307 ], [ 1, %281 ], [ 1, %275 ]
  %312 = phi ptr [ %172, %307 ], [ %253, %281 ], [ %253, %275 ]
  %313 = phi ptr [ %298, %307 ], [ %282, %281 ], [ %280, %275 ]
  %314 = load i32, ptr %155, align 4, !tbaa !327
  %315 = and i32 %314, 14680064
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317, !prof !806

317:                                              ; preds = %310
  %318 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %17) #14
  %319 = or i8 %173, 4
  %320 = select i1 %318, i8 %319, i8 %173, !prof !807
  br label %321

321:                                              ; preds = %317, %310
  %322 = phi i8 [ %173, %310 ], [ %320, %317 ]
  %323 = icmp eq ptr %313, null
  %324 = select i1 %323, i1 true, i1 %73
  br i1 %324, label %526, label %325, !prof !808

325:                                              ; preds = %321
  %326 = load i64, ptr %1, align 8, !tbaa !309
  %327 = shl i64 %326, 32
  %328 = ashr exact i64 %327, 32
  %329 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %330 = getelementptr inbounds %struct.regexp, ptr %329, i64 0, i32 9
  %331 = load i64, ptr %330, align 8, !tbaa !809
  %332 = icmp sgt i64 %328, %331
  br i1 %332, label %526, label %333, !prof !810

333:                                              ; preds = %325
  br i1 %122, label %334, label %337, !prof !811

334:                                              ; preds = %333
  %335 = getelementptr inbounds %struct.regexp, ptr %329, i64 0, i32 7
  %336 = load i32, ptr %335, align 8, !tbaa !633
  br label %346

337:                                              ; preds = %333
  %338 = load i32, ptr %155, align 4, !tbaa !327
  %339 = and i32 %338, 2097152
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %526, !prof !812

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.regexp, ptr %329, i64 0, i32 7
  %343 = load i32, ptr %342, align 8, !tbaa !633
  %344 = and i32 %343, 131072
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %526, !prof !812

346:                                              ; preds = %334, %341
  %347 = phi i32 [ %336, %334 ], [ %343, %341 ]
  %348 = and i32 %347, 65536
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %526, !prof !813

350:                                              ; preds = %346
  %351 = icmp eq i8 %311, 0
  br i1 %351, label %356, label %352, !prof !814

352:                                              ; preds = %350
  %353 = load i32, ptr %165, align 4, !tbaa !327
  %354 = and i32 %353, 536870912
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %526, label %356

356:                                              ; preds = %352, %350
  %357 = load i32, ptr %8, align 8, !tbaa !648
  %358 = and i32 %357, 134217728
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %526, !prof !814

360:                                              ; preds = %356
  %361 = load i32, ptr %165, align 4, !tbaa !327
  %362 = and i32 %361, 268435456
  %363 = icmp eq i32 %362, 0
  %364 = icmp ne i32 %177, 0
  %365 = or i1 %364, %363
  br i1 %365, label %366, label %559, !prof !815

366:                                              ; preds = %360
  br i1 %364, label %367, label %380, !prof !816

367:                                              ; preds = %366
  %368 = and i32 %361, 430018304
  %369 = icmp eq i32 %368, 1024
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = load ptr, ptr %157, align 8, !tbaa !343
  %372 = getelementptr inbounds %struct.xpv, ptr %371, i64 0, i32 2
  %373 = load i64, ptr %372, align 8, !tbaa !345
  store i64 %373, ptr %2, align 8, !tbaa !309
  %374 = load ptr, ptr %166, align 8, !tbaa !308
  br label %377

375:                                              ; preds = %367
  %376 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %157, ptr noundef nonnull %2, i32 noundef 0) #14
  br label %377

377:                                              ; preds = %375, %370
  %378 = phi ptr [ %374, %370 ], [ %376, %375 ]
  %379 = icmp eq ptr %378, null
  br i1 %379, label %167, label %170, !prof !817

380:                                              ; preds = %366
  br i1 %122, label %381, label %438, !prof !818

381:                                              ; preds = %380
  %382 = and i32 %347, 67108864
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384, !prof !819

384:                                              ; preds = %381
  %385 = or i8 %322, 2
  br label %386

386:                                              ; preds = %384, %381
  %387 = phi i8 [ %385, %384 ], [ %322, %381 ]
  %388 = getelementptr inbounds %struct.regexp, ptr %329, i64 0, i32 17
  %389 = load ptr, ptr %388, align 8, !tbaa !664
  %390 = load i64, ptr %389, align 8, !tbaa !667
  %391 = getelementptr inbounds i8, ptr %175, i64 %390
  %392 = getelementptr inbounds %struct.regexp_paren_pair, ptr %389, i64 0, i32 1
  %393 = load i64, ptr %392, align 8, !tbaa !665
  %394 = getelementptr inbounds i8, ptr %175, i64 %393
  %395 = ptrtoint ptr %175 to i64
  %396 = ptrtoint ptr %179 to i64
  %397 = ptrtoint ptr %394 to i64
  %398 = sub i64 %396, %397
  %399 = icmp sgt i64 %390, %398
  br i1 %399, label %400, label %418, !prof !820

400:                                              ; preds = %386
  %401 = icmp eq i64 %326, 0
  br i1 %401, label %405, label %402, !prof !821

402:                                              ; preds = %400
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %391, ptr nonnull align 1 %313, i64 %326, i1 false)
  %403 = load i64, ptr %1, align 8, !tbaa !309
  %404 = getelementptr inbounds i8, ptr %391, i64 %403
  br label %405

405:                                              ; preds = %402, %400
  %406 = phi ptr [ %404, %402 ], [ %391, %400 ]
  %407 = trunc i64 %398 to i32
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %412, !prof !822

409:                                              ; preds = %405
  %410 = and i64 %398, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %406, ptr nonnull align 1 %394, i64 %410, i1 false)
  %411 = getelementptr inbounds i8, ptr %406, i64 %410
  br label %412

412:                                              ; preds = %409, %405
  %413 = phi ptr [ %411, %409 ], [ %406, %405 ]
  store i8 0, ptr %413, align 1, !tbaa !308
  %414 = ptrtoint ptr %413 to i64
  %415 = sub i64 %414, %395
  %416 = load ptr, ptr %157, align 8, !tbaa !343
  %417 = getelementptr inbounds %struct.xpv, ptr %416, i64 0, i32 2
  store i64 %415, ptr %417, align 8, !tbaa !345
  br label %435

418:                                              ; preds = %386
  %419 = trunc i64 %390 to i32
  %420 = sub i64 0, %326
  %421 = getelementptr inbounds i8, ptr %394, i64 %420
  %422 = icmp sgt i32 %419, 0
  br i1 %422, label %423, label %427, !prof !823

423:                                              ; preds = %418
  %424 = and i64 %390, 4294967295
  %425 = sub nsw i64 0, %424
  %426 = getelementptr inbounds i8, ptr %421, i64 %425
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %426, ptr nonnull align 1 %175, i64 %424, i1 false)
  br label %427

427:                                              ; preds = %423, %418
  %428 = shl i64 %390, 32
  %429 = ashr exact i64 %428, 32
  %430 = sub nsw i64 0, %429
  %431 = getelementptr inbounds i8, ptr %421, i64 %430
  call void @Perl_sv_chop(ptr noundef nonnull %157, ptr noundef nonnull %431) #14
  %432 = load i64, ptr %1, align 8, !tbaa !309
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %435, label %434, !prof !824

434:                                              ; preds = %427
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %421, ptr nonnull align 1 %313, i64 %432, i1 false)
  br label %435

435:                                              ; preds = %427, %434, %412
  %436 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %437 = getelementptr inbounds ptr, ptr %436, i64 1
  store ptr @PL_sv_yes, ptr %437, align 8, !tbaa !291
  br label %838

438:                                              ; preds = %380
  %439 = shl i64 %192, 1
  %440 = getelementptr inbounds %struct.regexp, ptr %329, i64 0, i32 17
  %441 = load ptr, ptr %440, align 8, !tbaa !664
  %442 = load i64, ptr %441, align 8, !tbaa !667
  %443 = getelementptr inbounds i8, ptr %175, i64 %442
  %444 = add i64 %439, 11
  %445 = call i64 @llvm.smax.i64(i64 %444, i64 0)
  br label %446

446:                                              ; preds = %488, %438
  %447 = phi i8 [ %322, %438 ], [ %464, %488 ]
  %448 = phi i64 [ 0, %438 ], [ %451, %488 ]
  %449 = phi ptr [ %443, %438 ], [ %489, %488 ]
  %450 = phi ptr [ %443, %438 ], [ %495, %488 ]
  %451 = add nuw i64 %448, 1
  %452 = icmp eq i64 %448, %445
  br i1 %452, label %453, label %455, !prof !825

453:                                              ; preds = %446
  %454 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #14
  br label %896

455:                                              ; preds = %446
  %456 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %457 = getelementptr inbounds %struct.regexp, ptr %456, i64 0, i32 7
  %458 = load i32, ptr %457, align 8, !tbaa !633
  %459 = and i32 %458, 67108864
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %463, label %461, !prof !826

461:                                              ; preds = %455
  %462 = or i8 %447, 2
  br label %463

463:                                              ; preds = %455, %461
  %464 = phi i8 [ %462, %461 ], [ %447, %455 ]
  %465 = getelementptr inbounds %struct.regexp, ptr %456, i64 0, i32 17
  %466 = load ptr, ptr %465, align 8, !tbaa !664
  %467 = load i64, ptr %466, align 8, !tbaa !667
  %468 = getelementptr inbounds i8, ptr %175, i64 %467
  %469 = ptrtoint ptr %468 to i64
  %470 = ptrtoint ptr %450 to i64
  %471 = sub i64 %469, %470
  %472 = and i64 %471, 4294967295
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %481, label %474, !prof !827

474:                                              ; preds = %463
  %475 = icmp eq ptr %450, %449
  %476 = shl i64 %471, 32
  %477 = ashr exact i64 %476, 32
  br i1 %475, label %479, label %478, !prof !828

478:                                              ; preds = %474
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %449, ptr align 1 %450, i64 %477, i1 false)
  br label %479

479:                                              ; preds = %474, %478
  %480 = getelementptr inbounds i8, ptr %449, i64 %477
  br label %481

481:                                              ; preds = %479, %463
  %482 = phi ptr [ %480, %479 ], [ %449, %463 ]
  %483 = load i64, ptr %1, align 8, !tbaa !309
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %488, label %485, !prof !829

485:                                              ; preds = %481
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %482, ptr nonnull align 1 %313, i64 %483, i1 false)
  %486 = load i64, ptr %1, align 8, !tbaa !309
  %487 = getelementptr inbounds i8, ptr %482, i64 %486
  br label %488

488:                                              ; preds = %485, %481
  %489 = phi ptr [ %487, %485 ], [ %482, %481 ]
  %490 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %491 = getelementptr inbounds %struct.regexp, ptr %490, i64 0, i32 17
  %492 = load ptr, ptr %491, align 8, !tbaa !664
  %493 = getelementptr inbounds %struct.regexp_paren_pair, ptr %492, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !665
  %495 = getelementptr inbounds i8, ptr %175, i64 %494
  %496 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %497 = getelementptr inbounds %struct.regexp, ptr %496, i64 0, i32 4
  %498 = load ptr, ptr %497, align 8, !tbaa !624
  %499 = getelementptr inbounds %struct.regexp_engine, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !660
  %501 = icmp eq i64 %494, %467
  %502 = zext i1 %501 to i64
  %503 = call i32 %500(ptr noundef %214, ptr noundef nonnull %495, ptr noundef nonnull %179, ptr noundef nonnull %175, i64 noundef %502, ptr noundef %157, ptr noundef null, i32 noundef 152) #14
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %446, !prof !830, !llvm.loop !831

505:                                              ; preds = %488
  %506 = icmp eq ptr %495, %489
  br i1 %506, label %522, label %507, !prof !832

507:                                              ; preds = %505
  %508 = ptrtoint ptr %179 to i64
  %509 = ptrtoint ptr %495 to i64
  %510 = sub i64 %508, %509
  %511 = load ptr, ptr %166, align 8, !tbaa !308
  %512 = ptrtoint ptr %489 to i64
  %513 = ptrtoint ptr %511 to i64
  %514 = shl i64 %510, 32
  %515 = ashr exact i64 %514, 32
  %516 = add i64 %515, %512
  %517 = sub i64 %516, %513
  %518 = load ptr, ptr %157, align 8, !tbaa !343
  %519 = getelementptr inbounds %struct.xpv, ptr %518, i64 0, i32 2
  store i64 %517, ptr %519, align 8, !tbaa !345
  %520 = add i64 %514, 4294967296
  %521 = ashr exact i64 %520, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %489, ptr nonnull align 1 %495, i64 %521, i1 false)
  br label %522

522:                                              ; preds = %505, %507
  %523 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %524 = call ptr @Perl_sv_newmortal() #14
  %525 = getelementptr inbounds ptr, ptr %523, i64 1
  store ptr %524, ptr %525, align 8, !tbaa !291
  call void @Perl_sv_setiv(ptr noundef %524, i64 noundef %451) #14
  br label %838

526:                                              ; preds = %238, %321, %356, %352, %346, %341, %337, %325
  %527 = phi ptr [ %162, %238 ], [ %175, %321 ], [ %175, %356 ], [ %175, %352 ], [ %175, %346 ], [ %175, %341 ], [ %175, %337 ], [ %175, %325 ]
  %528 = phi i32 [ %164, %238 ], [ %177, %321 ], [ %177, %356 ], [ %177, %352 ], [ %177, %346 ], [ %177, %341 ], [ %177, %337 ], [ %177, %325 ]
  %529 = phi i1 [ true, %238 ], [ %323, %321 ], [ false, %356 ], [ false, %352 ], [ false, %346 ], [ false, %341 ], [ false, %337 ], [ false, %325 ]
  %530 = phi ptr [ null, %238 ], [ %313, %321 ], [ %313, %356 ], [ %313, %352 ], [ %313, %346 ], [ %313, %341 ], [ %313, %337 ], [ %313, %325 ]
  %531 = phi ptr [ %159, %238 ], [ %312, %321 ], [ %312, %356 ], [ %312, %352 ], [ %312, %346 ], [ %312, %341 ], [ %312, %337 ], [ %312, %325 ]
  %532 = phi i8 [ %160, %238 ], [ %322, %321 ], [ %322, %356 ], [ %322, %352 ], [ %322, %346 ], [ %322, %341 ], [ %322, %337 ], [ %322, %325 ]
  %533 = phi i8 [ 0, %238 ], [ %311, %321 ], [ %311, %356 ], [ 1, %352 ], [ %311, %346 ], [ %311, %341 ], [ %311, %337 ], [ %311, %325 ]
  %534 = icmp eq i32 %528, 0
  br i1 %534, label %559, label %535, !prof !833

535:                                              ; preds = %526
  %536 = load i32, ptr %8, align 8, !tbaa !648
  %537 = and i32 %536, 134217728
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %535
  %540 = call ptr @Perl_newSVsv(ptr noundef nonnull %157) #14
  %541 = call ptr @Perl_sv_2mortal(ptr noundef %540) #14
  br label %542

542:                                              ; preds = %539, %535
  %543 = phi ptr [ %541, %539 ], [ %157, %535 ]
  %544 = getelementptr inbounds %struct.sv, ptr %543, i64 0, i32 2
  %545 = load i32, ptr %544, align 4, !tbaa !327
  %546 = and i32 %545, 430018304
  %547 = icmp eq i32 %546, 1024
  br i1 %547, label %548, label %554

548:                                              ; preds = %542
  %549 = load ptr, ptr %543, align 8, !tbaa !343
  %550 = getelementptr inbounds %struct.xpv, ptr %549, i64 0, i32 2
  %551 = load i64, ptr %550, align 8, !tbaa !345
  store i64 %551, ptr %2, align 8, !tbaa !309
  %552 = getelementptr inbounds %struct.sv, ptr %543, i64 0, i32 3
  %553 = load ptr, ptr %552, align 8, !tbaa !308
  br label %556

554:                                              ; preds = %542
  %555 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %543, ptr noundef nonnull %2, i32 noundef 0) #14
  br label %556

556:                                              ; preds = %554, %548
  %557 = phi ptr [ %553, %548 ], [ %555, %554 ]
  %558 = icmp eq ptr %557, null
  br i1 %558, label %167, label %156, !prof !834

559:                                              ; preds = %526, %360
  %560 = phi ptr [ %175, %360 ], [ %527, %526 ]
  %561 = phi i1 [ false, %360 ], [ %529, %526 ]
  %562 = phi ptr [ %313, %360 ], [ %530, %526 ]
  %563 = phi ptr [ %312, %360 ], [ %531, %526 ]
  %564 = phi i8 [ %322, %360 ], [ %532, %526 ]
  %565 = phi i8 [ %311, %360 ], [ %533, %526 ]
  %566 = shl i64 %192, 1
  %567 = add i64 %566, 10
  %568 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %569 = getelementptr inbounds %struct.regexp, ptr %568, i64 0, i32 7
  %570 = load i32, ptr %569, align 8, !tbaa !633
  %571 = and i32 %570, 67108864
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %575, label %573, !prof !835

573:                                              ; preds = %559
  %574 = or i8 %564, 2
  br label %575

575:                                              ; preds = %573, %559
  %576 = phi i8 [ %574, %573 ], [ %564, %559 ]
  %577 = getelementptr inbounds %struct.regexp, ptr %568, i64 0, i32 17
  %578 = load ptr, ptr %577, align 8, !tbaa !664
  %579 = load i64, ptr %578, align 8, !tbaa !667
  %580 = getelementptr inbounds i8, ptr %560, i64 %579
  %581 = load i32, ptr %165, align 4, !tbaa !327
  %582 = and i32 %581, 536870912
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %592, label %584, !prof !835

584:                                              ; preds = %575
  %585 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %586 = getelementptr inbounds %struct.cop, ptr %585, i64 0, i32 10
  %587 = load i32, ptr %586, align 8, !tbaa !398
  %588 = freeze i32 %587
  %589 = and i32 %588, 8
  %590 = icmp eq i32 %589, 0
  %591 = select i1 %590, i32 537395200, i32 524288
  br label %592

592:                                              ; preds = %584, %575
  %593 = phi i32 [ 524288, %575 ], [ %591, %584 ]
  %594 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %560, i64 noundef %579, i32 noundef %593) #14
  br i1 %561, label %598, label %595, !prof !836

595:                                              ; preds = %592
  %596 = add i64 %566, 11
  %597 = call i64 @llvm.smax.i64(i64 %596, i64 0)
  br label %640

598:                                              ; preds = %592
  %599 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %600 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %601 = getelementptr inbounds %struct.stackinfo, ptr %600, i64 0, i32 4
  %602 = load i32, ptr %601, align 8, !tbaa !307
  %603 = getelementptr inbounds %struct.stackinfo, ptr %600, i64 0, i32 5
  %604 = load i32, ptr %603, align 4, !tbaa !837
  %605 = icmp slt i32 %602, %604
  br i1 %605, label %606, label %608, !prof !838

606:                                              ; preds = %598
  %607 = add nsw i32 %602, 1
  store i32 %607, ptr %601, align 8, !tbaa !307
  br label %612

608:                                              ; preds = %598
  %609 = call i32 @Perl_cxinc() #14
  %610 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %611 = getelementptr inbounds %struct.stackinfo, ptr %610, i64 0, i32 4
  store i32 %609, ptr %611, align 8, !tbaa !307
  br label %612

612:                                              ; preds = %608, %606
  %613 = phi i32 [ %609, %608 ], [ %607, %606 ]
  %614 = phi ptr [ %610, %608 ], [ %600, %606 ]
  %615 = getelementptr inbounds %struct.stackinfo, ptr %614, i64 0, i32 1
  %616 = load ptr, ptr %615, align 8, !tbaa !305
  %617 = sext i32 %613 to i64
  %618 = getelementptr inbounds %struct.context, ptr %616, i64 %617
  %619 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 4
  store i64 0, ptr %619, align 8, !tbaa !308
  %620 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 5
  store i64 %567, ptr %620, align 8, !tbaa !308
  %621 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 1
  store i8 1, ptr %621, align 1, !tbaa !308
  %622 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 3
  store i32 %7, ptr %622, align 4, !tbaa !308
  %623 = zext nneg i8 %576 to i16
  %624 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 2
  store i16 %623, ptr %624, align 2, !tbaa !308
  %625 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 6
  store ptr %560, ptr %625, align 8, !tbaa !308
  %626 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 7
  store ptr %594, ptr %626, align 8, !tbaa !308
  %627 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 8
  store ptr %157, ptr %627, align 8, !tbaa !308
  %628 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 9
  store ptr %580, ptr %628, align 8, !tbaa !308
  %629 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 10
  store ptr %560, ptr %629, align 8, !tbaa !308
  %630 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 11
  store ptr %179, ptr %630, align 8, !tbaa !308
  %631 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 12
  store ptr null, ptr %631, align 8, !tbaa !308
  %632 = getelementptr inbounds %struct.subst, ptr %618, i64 0, i32 13
  store ptr %214, ptr %632, align 8, !tbaa !308
  %633 = lshr exact i32 %121, 20
  %634 = trunc i32 %633 to i8
  %635 = xor i8 %634, 27
  store i8 %635, ptr %618, align 8, !tbaa !308
  call void @Perl_rxres_save(ptr noundef nonnull %631, ptr noundef %214) #14
  %636 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %214) #15
  store ptr %599, ptr @PL_stack_sp, align 8, !tbaa !291
  %637 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %638 = getelementptr inbounds %struct.pmop, ptr %637, i64 0, i32 11
  %639 = load ptr, ptr %638, align 8, !tbaa !308
  br label %896

640:                                              ; preds = %595, %757
  %641 = phi ptr [ %677, %757 ], [ %560, %595 ]
  %642 = phi i8 [ %754, %757 ], [ %576, %595 ]
  %643 = phi ptr [ %755, %757 ], [ %563, %595 ]
  %644 = phi i64 [ %648, %757 ], [ 0, %595 ]
  %645 = phi ptr [ %678, %757 ], [ %179, %595 ]
  %646 = phi ptr [ %705, %757 ], [ %580, %595 ]
  %647 = phi i8 [ %756, %757 ], [ 1, %595 ]
  %648 = add nuw i64 %644, 1
  %649 = icmp eq i64 %644, %597
  br i1 %649, label %650, label %652, !prof !839

650:                                              ; preds = %640
  %651 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #14
  br label %896

652:                                              ; preds = %640
  %653 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %654 = getelementptr inbounds %struct.regexp, ptr %653, i64 0, i32 7
  %655 = load i32, ptr %654, align 8, !tbaa !633
  %656 = and i32 %655, 67108864
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %660, label %658, !prof !840

658:                                              ; preds = %652
  %659 = or i8 %642, 2
  br label %660

660:                                              ; preds = %652, %658
  %661 = phi i8 [ %659, %658 ], [ %642, %652 ]
  %662 = and i32 %655, 33554432
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %676, label %664, !prof !841

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.regexp, ptr %653, i64 0, i32 18
  %666 = load ptr, ptr %665, align 8, !tbaa !842
  %667 = icmp eq ptr %666, %641
  br i1 %667, label %676, label %668, !prof !843

668:                                              ; preds = %664
  %669 = ptrtoint ptr %646 to i64
  %670 = ptrtoint ptr %641 to i64
  %671 = sub i64 %669, %670
  %672 = getelementptr inbounds i8, ptr %666, i64 %671
  %673 = ptrtoint ptr %645 to i64
  %674 = sub i64 %673, %669
  %675 = getelementptr inbounds i8, ptr %672, i64 %674
  br label %676

676:                                              ; preds = %668, %664, %660
  %677 = phi ptr [ %666, %668 ], [ %641, %664 ], [ %641, %660 ]
  %678 = phi ptr [ %675, %668 ], [ %645, %664 ], [ %645, %660 ]
  %679 = phi ptr [ %672, %668 ], [ %646, %664 ], [ %646, %660 ]
  %680 = getelementptr inbounds %struct.regexp, ptr %653, i64 0, i32 17
  %681 = load ptr, ptr %680, align 8, !tbaa !664
  %682 = load i64, ptr %681, align 8, !tbaa !667
  %683 = getelementptr inbounds i8, ptr %677, i64 %682
  %684 = ptrtoint ptr %683 to i64
  %685 = ptrtoint ptr %679 to i64
  %686 = sub i64 %684, %685
  %687 = load i32, ptr %165, align 4, !tbaa !327
  %688 = and i32 %687, 536870912
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %698, label %690, !prof !840

690:                                              ; preds = %676
  %691 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %692 = getelementptr inbounds %struct.cop, ptr %691, i64 0, i32 10
  %693 = load i32, ptr %692, align 8, !tbaa !398
  %694 = freeze i32 %693
  %695 = and i32 %694, 8
  %696 = icmp eq i32 %695, 0
  %697 = select i1 %696, i32 32768, i32 16384
  br label %698

698:                                              ; preds = %690, %676
  %699 = phi i32 [ 16384, %676 ], [ %697, %690 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %594, ptr noundef %679, i64 noundef %686, i32 noundef %699) #14
  %700 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %701 = getelementptr inbounds %struct.regexp, ptr %700, i64 0, i32 17
  %702 = load ptr, ptr %701, align 8, !tbaa !664
  %703 = getelementptr inbounds %struct.regexp_paren_pair, ptr %702, i64 0, i32 1
  %704 = load i64, ptr %703, align 8, !tbaa !665
  %705 = getelementptr inbounds i8, ptr %677, i64 %704
  %706 = and i8 %647, 1
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %714, label %708, !prof !844

708:                                              ; preds = %698
  %709 = load i64, ptr %1, align 8, !tbaa !309
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %753, label %711, !prof !845

711:                                              ; preds = %708
  %712 = icmp eq i8 %565, 0
  %713 = select i1 %712, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %594, ptr noundef nonnull %562, i64 noundef %709, i32 noundef %713) #14
  br label %753

714:                                              ; preds = %698
  %715 = load ptr, ptr @PL_encoding, align 8, !tbaa !291
  %716 = icmp eq ptr %715, null
  br i1 %716, label %717, label %723, !prof !846

717:                                              ; preds = %714
  %718 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !291
  %719 = icmp eq ptr %718, null
  br i1 %719, label %743, label %720, !prof !846

720:                                              ; preds = %717
  %721 = call ptr @Perl__get_encoding() #14
  %722 = icmp eq ptr %721, null
  br i1 %722, label %743, label %723

723:                                              ; preds = %714, %720
  %724 = icmp eq ptr %643, null
  br i1 %724, label %725, label %727

725:                                              ; preds = %723
  %726 = call ptr @Perl_sv_newmortal() #14
  br label %727

727:                                              ; preds = %725, %723
  %728 = phi ptr [ %643, %723 ], [ %726, %725 ]
  call void @Perl_sv_copypv_flags(ptr noundef %728, ptr noundef %17, i32 noundef 2) #14
  %729 = getelementptr inbounds %struct.sv, ptr %728, i64 0, i32 2
  %730 = load i32, ptr %729, align 4, !tbaa !327
  %731 = and i32 %730, 536870912
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %739, label %733

733:                                              ; preds = %727
  %734 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %735 = getelementptr inbounds %struct.cop, ptr %734, i64 0, i32 10
  %736 = load i32, ptr %735, align 8, !tbaa !398
  %737 = and i32 %736, 8
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %742, label %739

739:                                              ; preds = %733, %727
  %740 = call ptr @Perl__get_encoding() #14
  %741 = call ptr @Perl_sv_recode_to_utf8(ptr noundef nonnull %728, ptr noundef %740) #14
  br label %742

742:                                              ; preds = %739, %733
  call void @Perl_sv_catsv_flags(ptr noundef %594, ptr noundef nonnull %728, i32 noundef 2) #14
  br label %744

743:                                              ; preds = %717, %720
  call void @Perl_sv_catsv_flags(ptr noundef %594, ptr noundef %17, i32 noundef 2) #14
  br label %744

744:                                              ; preds = %743, %742
  %745 = phi ptr [ %728, %742 ], [ %643, %743 ]
  %746 = load i32, ptr %155, align 4, !tbaa !327
  %747 = and i32 %746, 14680064
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %753, label %749, !prof !846

749:                                              ; preds = %744
  %750 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %17) #14
  %751 = or i8 %661, 4
  %752 = select i1 %750, i8 %751, i8 %661
  br label %753

753:                                              ; preds = %749, %708, %711, %744
  %754 = phi i8 [ %661, %744 ], [ %661, %711 ], [ %661, %708 ], [ %752, %749 ]
  %755 = phi ptr [ %745, %744 ], [ %643, %711 ], [ %643, %708 ], [ %745, %749 ]
  %756 = phi i8 [ %647, %744 ], [ 0, %711 ], [ 0, %708 ], [ %647, %749 ]
  br i1 %122, label %767, label %757, !prof !847

757:                                              ; preds = %753
  %758 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %759 = getelementptr inbounds %struct.regexp, ptr %758, i64 0, i32 4
  %760 = load ptr, ptr %759, align 8, !tbaa !624
  %761 = getelementptr inbounds %struct.regexp_engine, ptr %760, i64 0, i32 1
  %762 = load ptr, ptr %761, align 8, !tbaa !660
  %763 = icmp eq i64 %704, %682
  %764 = zext i1 %763 to i64
  %765 = call i32 %762(ptr noundef %214, ptr noundef %705, ptr noundef %678, ptr noundef %677, i64 noundef %764, ptr noundef nonnull %157, ptr noundef null, i32 noundef 152) #14
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %640, !prof !848, !llvm.loop !849

767:                                              ; preds = %753, %757
  %768 = ptrtoint ptr %678 to i64
  %769 = ptrtoint ptr %705 to i64
  %770 = sub i64 %768, %769
  %771 = load i32, ptr %165, align 4, !tbaa !327
  %772 = and i32 %771, 536870912
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %782, label %774, !prof !850

774:                                              ; preds = %767
  %775 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %776 = getelementptr inbounds %struct.cop, ptr %775, i64 0, i32 10
  %777 = load i32, ptr %776, align 8, !tbaa !398
  %778 = freeze i32 %777
  %779 = and i32 %778, 8
  %780 = icmp eq i32 %779, 0
  %781 = select i1 %780, i32 32768, i32 16384
  br label %782

782:                                              ; preds = %774, %767
  %783 = phi i32 [ 16384, %767 ], [ %781, %774 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %594, ptr noundef %705, i64 noundef %770, i32 noundef %783) #14
  %784 = load i32, ptr %8, align 8, !tbaa !648
  %785 = and i32 %784, 134217728
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %790, label %787, !prof !850

787:                                              ; preds = %782
  %788 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %789 = getelementptr inbounds ptr, ptr %788, i64 1
  store ptr %594, ptr %789, align 8, !tbaa !291
  br label %838

790:                                              ; preds = %782
  %791 = load i32, ptr %165, align 4, !tbaa !327
  %792 = and i32 %791, 268435456
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %795, label %794, !prof !851

794:                                              ; preds = %790
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %157, i32 noundef 4) #14
  br label %819

795:                                              ; preds = %790
  %796 = load ptr, ptr %157, align 8, !tbaa !343
  %797 = getelementptr inbounds %struct.xpv, ptr %796, i64 0, i32 3
  %798 = load i64, ptr %797, align 8, !tbaa !308
  %799 = icmp eq i64 %798, 0
  br i1 %799, label %819, label %800, !prof !852

800:                                              ; preds = %795
  %801 = and i32 %791, 33554432
  %802 = icmp eq i32 %801, 0
  %803 = load ptr, ptr %166, align 8, !tbaa !308
  br i1 %802, label %817, label %804, !prof !853

804:                                              ; preds = %800
  %805 = getelementptr inbounds i8, ptr %803, i64 -1
  %806 = load i8, ptr %805, align 1, !tbaa !308
  %807 = zext i8 %806 to i64
  %808 = icmp eq i8 %806, 0
  br i1 %808, label %809, label %812

809:                                              ; preds = %804
  %810 = getelementptr inbounds i8, ptr %803, i64 -9
  %811 = load i64, ptr %810, align 1
  br label %812

812:                                              ; preds = %809, %804
  %813 = phi i64 [ %807, %804 ], [ %811, %809 ]
  %814 = sub i64 0, %813
  %815 = getelementptr inbounds i8, ptr %803, i64 %814
  store ptr %815, ptr %166, align 8, !tbaa !308
  %816 = and i32 %791, -301989889
  store i32 %816, ptr %165, align 4, !tbaa !327
  br label %817

817:                                              ; preds = %800, %812
  %818 = phi ptr [ %803, %800 ], [ %815, %812 ]
  call void @Perl_safesysfree(ptr noundef %818) #14
  br label %819

819:                                              ; preds = %794, %817, %795
  %820 = getelementptr inbounds %struct.sv, ptr %594, i64 0, i32 3
  %821 = load ptr, ptr %820, align 8, !tbaa !308
  store ptr %821, ptr %166, align 8, !tbaa !308
  %822 = load ptr, ptr %594, align 8, !tbaa !343
  %823 = getelementptr inbounds %struct.xpv, ptr %822, i64 0, i32 2
  %824 = load i64, ptr %823, align 8, !tbaa !345
  %825 = load ptr, ptr %157, align 8, !tbaa !343
  %826 = getelementptr inbounds %struct.xpv, ptr %825, i64 0, i32 2
  store i64 %824, ptr %826, align 8, !tbaa !345
  %827 = getelementptr inbounds %struct.xpv, ptr %822, i64 0, i32 3
  %828 = load i64, ptr %827, align 8, !tbaa !308
  %829 = getelementptr inbounds %struct.xpv, ptr %825, i64 0, i32 3
  store i64 %828, ptr %829, align 8, !tbaa !308
  %830 = getelementptr inbounds %struct.sv, ptr %594, i64 0, i32 2
  %831 = load i32, ptr %830, align 4, !tbaa !327
  %832 = and i32 %831, 536870912
  %833 = load i32, ptr %165, align 4, !tbaa !327
  %834 = or i32 %833, %832
  store i32 %834, ptr %165, align 4, !tbaa !327
  store ptr null, ptr %820, align 8, !tbaa !308
  %835 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %836 = call ptr @Perl_sv_newmortal() #14
  %837 = getelementptr inbounds ptr, ptr %835, i64 1
  store ptr %836, ptr %837, align 8, !tbaa !291
  call void @Perl_sv_setiv(ptr noundef %836, i64 noundef %648) #14
  br label %838

838:                                              ; preds = %522, %787, %819, %435
  %839 = phi i8 [ %754, %787 ], [ %754, %819 ], [ %387, %435 ], [ %464, %522 ]
  %840 = phi ptr [ %594, %787 ], [ %157, %819 ], [ %157, %435 ], [ %157, %522 ]
  %841 = phi ptr [ %789, %787 ], [ %837, %819 ], [ %437, %435 ], [ %525, %522 ]
  %842 = load i32, ptr %8, align 8, !tbaa !648
  %843 = and i32 %842, 134217728
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %850, !prof !805

845:                                              ; preds = %838
  %846 = getelementptr inbounds %struct.sv, ptr %840, i64 0, i32 2
  %847 = load i32, ptr %846, align 4, !tbaa !327
  %848 = and i32 %847, 2147418367
  %849 = or disjoint i32 %848, 17408
  store i32 %849, ptr %846, align 4, !tbaa !327
  br label %850

850:                                              ; preds = %845, %838
  %851 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %852 = icmp eq i8 %851, 0
  br i1 %852, label %882, label %853, !prof !805

853:                                              ; preds = %850
  %854 = zext nneg i8 %839 to i32
  %855 = and i32 %854, 2
  %856 = icmp ne i32 %855, 0
  %857 = and i32 %854, 9
  %858 = icmp eq i32 %857, 9
  %859 = or i1 %856, %858
  br i1 %859, label %860, label %865

860:                                              ; preds = %853
  %861 = call fastcc ptr @S_ReANY(ptr noundef %214) #15
  %862 = getelementptr inbounds %struct.regexp, ptr %861, i64 0, i32 7
  %863 = load i32, ptr %862, align 8, !tbaa !633
  %864 = or i32 %863, 67108864
  store i32 %864, ptr %862, align 8, !tbaa !633
  br label %865

865:                                              ; preds = %853, %860
  %866 = and i32 %854, 16
  %867 = icmp ne i32 %866, 0
  %868 = and i32 %854, 3
  %869 = icmp eq i32 %868, 0
  %870 = or i1 %867, %869
  %871 = load ptr, ptr %841, align 8, !tbaa !291
  br i1 %870, label %873, label %872

872:                                              ; preds = %865
  call void @Perl_sv_magic(ptr noundef %871, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %874

873:                                              ; preds = %865
  call void @Perl_sv_untaint(ptr noundef %871) #14
  br label %874

874:                                              ; preds = %873, %872
  %875 = and i32 %854, 7
  %876 = icmp ne i32 %875, 0
  %877 = zext i1 %876 to i8
  store i8 %877, ptr @PL_tainted, align 1, !tbaa !303
  %878 = load i8, ptr @PL_tainting, align 1, !tbaa !303, !range !359, !noundef !360
  %879 = icmp ne i8 %878, 0
  %880 = and i1 %876, %879
  br i1 %880, label %881, label %882

881:                                              ; preds = %874
  call void @Perl_sv_magic(ptr noundef %840, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %882

882:                                              ; preds = %874, %850, %881
  %883 = getelementptr inbounds %struct.sv, ptr %840, i64 0, i32 2
  %884 = load i32, ptr %883, align 4, !tbaa !327
  %885 = and i32 %884, 4194304
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %889, label %887, !prof !805

887:                                              ; preds = %882
  %888 = call i32 @Perl_mg_set(ptr noundef nonnull %840) #14
  br label %889

889:                                              ; preds = %882, %887
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  %890 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %891 = icmp sgt i32 %890, %7
  br i1 %891, label %892, label %893, !prof !854

892:                                              ; preds = %889
  call void @Perl_leave_scope(i32 noundef %7) #14
  br label %893

893:                                              ; preds = %892, %889
  store ptr %841, ptr @PL_stack_sp, align 8, !tbaa !291
  %894 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %895 = load ptr, ptr %894, align 8, !tbaa !300
  br label %896

896:                                              ; preds = %453, %893, %650, %612, %235, %167
  %897 = phi ptr [ %651, %650 ], [ %895, %893 ], [ %639, %612 ], [ %237, %235 ], [ %169, %167 ], [ %454, %453 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %897
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
define dso_local ptr @Perl_pp_grepwhile() local_unnamed_addr #0 !prof !855 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !291
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5, !prof !856

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !327
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !856

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 2) #14
  br i1 %11, label %59, label %71, !prof !377

12:                                               ; preds = %5
  %13 = and i32 %7, 65280
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21, !prof !857

15:                                               ; preds = %12
  %16 = and i32 %7, 255
  %17 = icmp eq i32 %16, 8
  %18 = and i32 %7, 16777471
  %19 = icmp eq i32 %18, 16777226
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %15, %12
  %22 = and i32 %7, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24, !prof !858

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !343
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27, !prof !859

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !345
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %59, label %31, !prof !858

31:                                               ; preds = %27
  %32 = icmp eq i64 %29, 0
  br i1 %32, label %71, label %33, !prof !860

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !308
  %36 = load i8, ptr %35, align 1, !tbaa !308
  %37 = icmp eq i8 %36, 48
  br i1 %37, label %71, label %59, !prof !383

38:                                               ; preds = %21
  %39 = and i32 %7, 768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41, !prof !861

41:                                               ; preds = %38
  %42 = and i32 %7, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44, !prof !862

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 8, !tbaa !343
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !308
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59, !prof !862

49:                                               ; preds = %44, %41
  %50 = and i32 %7, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8, !tbaa !343
  %54 = getelementptr inbounds %struct.xpvnv, ptr %53, i64 0, i32 5
  %55 = load double, ptr %54, align 8, !tbaa !308
  %56 = fcmp une double %55, 0.000000e+00
  br i1 %56, label %59, label %71, !prof !377

57:                                               ; preds = %38
  %58 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 0) #14
  br i1 %58, label %59, label %71, !prof !377

59:                                               ; preds = %33, %57, %10, %52, %44, %27
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %61 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %62 = load i32, ptr %61, align 4, !tbaa !311
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !291
  %66 = getelementptr inbounds i32, ptr %61, i64 -1
  %67 = load i32, ptr %66, align 4, !tbaa !311
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !311
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds ptr, ptr %60, i64 %69
  store ptr %65, ptr %70, align 8, !tbaa !291
  br label %71

71:                                               ; preds = %52, %33, %57, %10, %49, %31, %24, %15, %0, %59
  %72 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %73 = load i32, ptr %72, align 4, !tbaa !311
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !311
  %75 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %76 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %79, !prof !863

78:                                               ; preds = %71
  tail call void @Perl_free_tmps() #14
  br label %79

79:                                               ; preds = %78, %71
  tail call void @Perl_pop_scope() #14
  %80 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %81 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %82 = load i32, ptr %81, align 4, !tbaa !311
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %80, i64 %83
  %85 = icmp ugt ptr %84, %2
  br i1 %85, label %86, label %149, !prof !857

86:                                               ; preds = %79
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %88 = getelementptr inbounds %struct.op, ptr %87, i64 0, i32 5
  %89 = load i8, ptr %88, align 2, !tbaa !364
  %90 = and i8 %89, 3
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92, !prof !864

92:                                               ; preds = %86
  %93 = zext nneg i8 %90 to i32
  br label %96

94:                                               ; preds = %86
  %95 = tail call i32 @Perl_block_gimme() #14
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  tail call void @Perl_pop_scope() #14
  %98 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %99 = getelementptr inbounds i32, ptr %98, i64 -1
  %100 = load i32, ptr %99, align 4, !tbaa !311
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr %99, align 4, !tbaa !311
  %102 = getelementptr inbounds i32, ptr %98, i64 -2
  %103 = load i32, ptr %102, align 4, !tbaa !311
  %104 = sub nsw i32 %101, %103
  %105 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %106 = getelementptr inbounds i32, ptr %98, i64 -3
  store ptr %106, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  switch i32 %97, label %146 [
    i32 2, label %109
    i32 3, label %143
  ], !prof !865

109:                                              ; preds = %96
  %110 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %111 = getelementptr inbounds %struct.op, ptr %110, i64 0, i32 6
  %112 = load i8, ptr %111, align 1, !tbaa !315
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115, !prof !866

115:                                              ; preds = %109
  %116 = tail call ptr @Perl_sv_newmortal() #14
  %117 = sext i32 %104 to i64
  tail call void @Perl_sv_setiv(ptr noundef %116, i64 noundef %117) #14
  %118 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %116, ptr %118, align 8, !tbaa !291
  br label %146

119:                                              ; preds = %109
  %120 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %121 = getelementptr inbounds %struct.op, ptr %110, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !326
  %123 = getelementptr inbounds ptr, ptr %120, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !291
  %125 = sext i32 %104 to i64
  tail call void @Perl_sv_setiv(ptr noundef %124, i64 noundef %125) #14
  %126 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !327
  %128 = and i32 %127, 4194304
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130, !prof !866

130:                                              ; preds = %119
  %131 = tail call i32 @Perl_mg_set(ptr noundef nonnull %124) #14
  br label %132

132:                                              ; preds = %119, %130
  %133 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %134 = ptrtoint ptr %133 to i64
  %135 = ptrtoint ptr %108 to i64
  %136 = sub i64 %134, %135
  %137 = icmp slt i64 %136, 8
  br i1 %137, label %138, label %140, !prof !448

138:                                              ; preds = %132
  %139 = tail call ptr @Perl_stack_grow(ptr noundef %108, ptr noundef %108, i64 noundef 1) #14
  br label %140

140:                                              ; preds = %132, %138
  %141 = phi ptr [ %139, %138 ], [ %108, %132 ]
  %142 = getelementptr inbounds ptr, ptr %141, i64 1
  store ptr %124, ptr %142, align 8, !tbaa !291
  br label %146

143:                                              ; preds = %96
  %144 = sext i32 %104 to i64
  %145 = getelementptr inbounds ptr, ptr %108, i64 %144
  br label %146

146:                                              ; preds = %96, %143, %115, %140
  %147 = phi ptr [ %118, %115 ], [ %142, %140 ], [ %145, %143 ], [ %108, %96 ]
  store ptr %147, ptr @PL_stack_sp, align 8, !tbaa !291
  %148 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %199

149:                                              ; preds = %79
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpm) #14
  %150 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %151 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %152 = load i32, ptr %151, align 4, !tbaa !311
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %150, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !291
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !327
  %158 = and i32 %157, 131072
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %171, label %160, !prof !867

160:                                              ; preds = %149
  %161 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %155, i32 noundef 1538) #14
  %162 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %163 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %164 = load i32, ptr %163, align 4, !tbaa !311
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165
  store ptr %161, ptr %166, align 8, !tbaa !291
  %167 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %168 = add nsw i64 %167, 1
  store i64 %168, ptr @PL_tmps_floor, align 8, !tbaa !309
  %169 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !327
  br label %171

171:                                              ; preds = %160, %149
  %172 = phi i32 [ %170, %160 ], [ %157, %149 ]
  %173 = phi ptr [ %161, %160 ], [ %155, %149 ]
  %174 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 2
  %175 = and i32 %172, -524289
  store i32 %175, ptr %174, align 4, !tbaa !327
  %176 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %177 = getelementptr inbounds %struct.op, ptr %176, i64 0, i32 6
  %178 = load i8, ptr %177, align 1, !tbaa !315
  %179 = and i8 %178, 2
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %186, label %181, !prof !867

181:                                              ; preds = %171
  %182 = load ptr, ptr @PL_curpad, align 8, !tbaa !291
  %183 = getelementptr inbounds %struct.op, ptr %176, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !326
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  br label %195

186:                                              ; preds = %171
  %187 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %188 = getelementptr inbounds %struct.gv, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !308
  %190 = load ptr, ptr %189, align 8, !tbaa !465
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %190) #15
  %191 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %173) #15
  %192 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %193 = getelementptr inbounds %struct.gv, ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !308
  br label %195

195:                                              ; preds = %186, %181
  %196 = phi ptr [ %194, %186 ], [ %185, %181 ]
  store ptr %173, ptr %196, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %197 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %198 = getelementptr inbounds %struct.logop, ptr %197, i64 0, i32 8
  br label %199

199:                                              ; preds = %195, %146
  %200 = phi ptr [ %148, %146 ], [ %198, %195 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !291
  ret ptr %201
}

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavesub() local_unnamed_addr #0 !prof !868 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !307
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.context, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 8, !tbaa !308
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %222, !prof !869

12:                                               ; preds = %0
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr %5, align 8, !tbaa !307
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %15 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !308
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !308
  store ptr %20, ptr @PL_curcop, align 8, !tbaa !291
  %21 = load ptr, ptr @PL_markstack, align 8, !tbaa !291
  %22 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !308
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %26 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !308
  store i32 %27, ptr @PL_scopestack_ix, align 4, !tbaa !311
  %28 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !308
  %30 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 1
  %31 = load i8, ptr %30, align 1, !tbaa !308
  store i32 %6, ptr %5, align 8, !tbaa !307
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  switch i8 %31, label %126 [
    i8 2, label %35
    i8 3, label %32
  ], !prof !870

32:                                               ; preds = %12
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = icmp ugt ptr %33, %1
  br i1 %34, label %126, label %107, !prof !871

35:                                               ; preds = %12
  %36 = getelementptr inbounds ptr, ptr %18, i64 1
  %37 = icmp ugt ptr %36, %1
  br i1 %37, label %93, label %38, !prof !872

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42, !prof !873

42:                                               ; preds = %38
  %43 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %40) #15
  %44 = load i32, ptr %43, align 4, !tbaa !311
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %77, !prof !874

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !291
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !327
  %50 = and i32 %49, 524288
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52, !prof !875

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !365
  %55 = icmp eq i32 %54, 1
  %56 = and i32 %49, 14680064
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %57, %55
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %47) #15
  store ptr %47, ptr %36, align 8, !tbaa !291
  %61 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %62 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  tail call void @Perl_free_tmps() #14
  %65 = load ptr, ptr %36, align 8, !tbaa !291
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %47, %59 ]
  %68 = tail call ptr @Perl_sv_2mortal(ptr noundef %67) #14
  br label %126

69:                                               ; preds = %52, %46
  %70 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %47) #15
  %71 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  %72 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !309
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %75, !prof !876

74:                                               ; preds = %69
  tail call void @Perl_free_tmps() #14
  br label %75

75:                                               ; preds = %74, %69
  %76 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %47, i32 noundef 1538) #14
  store ptr %76, ptr %36, align 8, !tbaa !291
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %47) #15
  br label %126

77:                                               ; preds = %42, %38
  %78 = load ptr, ptr %1, align 8, !tbaa !291
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !327
  %81 = and i32 %80, 524288
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83, !prof !877

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !365
  %86 = icmp eq i32 %85, 1
  %87 = and i32 %80, 14680064
  %88 = icmp eq i32 %87, 0
  %89 = and i1 %88, %86
  br i1 %89, label %90, label %91, !prof !878

90:                                               ; preds = %83
  store ptr %78, ptr %36, align 8, !tbaa !291
  br label %126

91:                                               ; preds = %83, %77
  %92 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %78, i32 noundef 1538) #14
  store ptr %92, ptr %36, align 8, !tbaa !291
  br label %126

93:                                               ; preds = %35
  %94 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %95 = ptrtoint ptr %94 to i64
  %96 = ptrtoint ptr %36 to i64
  %97 = sub i64 %95, %96
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = ptrtoint ptr %14 to i64
  %101 = sub i64 %96, %100
  %102 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef nonnull %36, i64 noundef 0) #14
  %103 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %104 = getelementptr inbounds i8, ptr %103, i64 %101
  br label %105

105:                                              ; preds = %93, %99
  %106 = phi ptr [ %104, %99 ], [ %36, %93 ]
  store ptr @PL_sv_undef, ptr %106, align 8, !tbaa !291
  br label %126

107:                                              ; preds = %32, %123
  %108 = phi ptr [ %124, %123 ], [ %33, %32 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !291
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !327
  %112 = and i32 %111, 524288
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114, !prof !879

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !365
  %117 = icmp eq i32 %116, 1
  %118 = and i32 %111, 14680064
  %119 = icmp eq i32 %118, 0
  %120 = and i1 %119, %117
  br i1 %120, label %123, label %121, !prof !880

121:                                              ; preds = %114, %107
  %122 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %109, i32 noundef 1538) #14
  store ptr %122, ptr %108, align 8, !tbaa !291
  store i8 0, ptr @PL_tainted, align 1, !tbaa !303
  br label %123

123:                                              ; preds = %114, %121
  %124 = getelementptr inbounds ptr, ptr %108, i64 1
  %125 = icmp ugt ptr %124, %1
  br i1 %125, label %126, label %107, !prof !881, !llvm.loop !882

126:                                              ; preds = %123, %32, %12, %105, %90, %91, %66, %75
  %127 = phi ptr [ %36, %75 ], [ %36, %66 ], [ %36, %91 ], [ %36, %90 ], [ %106, %105 ], [ %1, %12 ], [ %1, %32 ], [ %1, %123 ]
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !291
  tail call void @Perl_pop_scope() #14
  %128 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8
  %129 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !308
  %131 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !308
  %133 = and i16 %132, 256
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %197, !prof !883

135:                                              ; preds = %126
  %136 = or disjoint i16 %132, 256
  store i16 %136, ptr %131, align 2, !tbaa !308
  %137 = load i8, ptr %8, align 8, !tbaa !308
  %138 = and i8 %137, 32
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %197, label %140, !prof !884

140:                                              ; preds = %135
  %141 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %142 = getelementptr inbounds %struct.gv, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !308
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !410
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #15
  %146 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !308
  %148 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %149 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !308
  %151 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 6
  store ptr %147, ptr %151, align 8, !tbaa !410
  %152 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !308
  %154 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !429
  %156 = and i32 %155, 1073741824
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %176, label %158, !prof !885

158:                                              ; preds = %140
  %159 = load ptr, ptr %153, align 8, !tbaa !425
  %160 = getelementptr inbounds %struct.xpvav, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !427
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %153) #15
  %162 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  store ptr %162, ptr %152, align 8, !tbaa !308
  tail call void @Perl_av_extend(ptr noundef %162, i64 noundef %161) #14
  %163 = load ptr, ptr %152, align 8, !tbaa !308
  %164 = getelementptr inbounds %struct.av, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !429
  %166 = and i32 %165, -1073741825
  store i32 %166, ptr %164, align 4, !tbaa !429
  %167 = load ptr, ptr %152, align 8, !tbaa !308
  %168 = getelementptr inbounds %struct.av, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !429
  %170 = or i32 %169, -2147483648
  store i32 %170, ptr %168, align 4, !tbaa !429
  %171 = load ptr, ptr %152, align 8, !tbaa !308
  %172 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !308
  %174 = getelementptr inbounds %struct.av, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !308
  store ptr %171, ptr %175, align 8, !tbaa !291
  br label %197

176:                                              ; preds = %140
  %177 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !308
  %179 = load ptr, ptr %153, align 8, !tbaa !425
  %180 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !886
  %182 = ptrtoint ptr %178 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = ashr exact i64 %184, 3
  %186 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 3
  %187 = load i64, ptr %186, align 8, !tbaa !499
  %188 = add nsw i64 %185, %187
  store i64 %188, ptr %186, align 8, !tbaa !499
  %189 = load ptr, ptr %152, align 8, !tbaa !308
  %190 = load ptr, ptr %189, align 8, !tbaa !425
  %191 = getelementptr inbounds %struct.xpvav, ptr %190, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !886
  %193 = getelementptr inbounds %struct.av, ptr %189, i64 0, i32 3
  store ptr %192, ptr %193, align 8, !tbaa !308
  %194 = load ptr, ptr %152, align 8, !tbaa !308
  %195 = load ptr, ptr %194, align 8, !tbaa !425
  %196 = getelementptr inbounds %struct.xpvav, ptr %195, i64 0, i32 2
  store i64 -1, ptr %196, align 8, !tbaa !427
  br label %197

197:                                              ; preds = %135, %176, %158, %126
  %198 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !308
  %200 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !311
  %201 = load ptr, ptr @PL_scopestack, align 8, !tbaa !291
  %202 = load i32, ptr %26, align 4, !tbaa !308
  %203 = sext i32 %202 to i64
  %204 = getelementptr i32, ptr %201, i64 %203
  %205 = getelementptr i32, ptr %204, i64 -1
  %206 = load i32, ptr %205, align 4, !tbaa !311
  %207 = icmp sgt i32 %200, %206
  br i1 %207, label %208, label %209, !prof !887

208:                                              ; preds = %197
  tail call void @Perl_leave_scope(i32 noundef %206) #14
  br label %209

209:                                              ; preds = %208, %197
  %210 = icmp eq ptr %199, null
  br i1 %210, label %215, label %211, !prof !887

211:                                              ; preds = %209
  %212 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %199) #15
  store i32 %130, ptr %212, align 4, !tbaa !311
  %213 = icmp eq i32 %130, 0
  %214 = select i1 %213, ptr %199, ptr null, !prof !888
  br label %215

215:                                              ; preds = %211, %209
  %216 = phi ptr [ null, %209 ], [ %214, %211 ]
  %217 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %218 = getelementptr inbounds %struct.stackinfo, ptr %217, i64 0, i32 4
  %219 = load i32, ptr %218, align 8, !tbaa !307
  %220 = add nsw i32 %219, -1
  store i32 %220, ptr %218, align 8, !tbaa !307
  store ptr %29, ptr @PL_curpm, align 8, !tbaa !291
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %216) #15
  %221 = load ptr, ptr %128, align 8, !tbaa !308
  br label %222

222:                                              ; preds = %0, %215
  %223 = phi ptr [ %221, %215 ], [ null, %0 ]
  ret ptr %223
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !889 !PGOFuncName !890 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_entersub() local_unnamed_addr #0 !prof !891 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  %7 = load ptr, ptr %5, align 8, !tbaa !291
  store ptr %7, ptr %1, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !364
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %16, !prof !892

14:                                               ; preds = %0
  %15 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #14
  br label %659

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !327
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %31, !prof !893

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !308
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !894
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !895

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !367
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %149, !prof !896

31:                                               ; preds = %21, %16, %27
  %32 = trunc i32 %18 to i8
  switch i8 %32, label %52 [
    i8 9, label %33
    i8 10, label %49
    i8 12, label %147
    i8 11, label %147
    i8 13, label %149
  ], !prof !897

33:                                               ; preds = %49, %31
  %34 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !308
  %36 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !894
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !367
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
  %47 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  store i64 %47, ptr @PL_tmps_floor, align 8, !tbaa !309
  %48 = load ptr, ptr %2, align 8, !tbaa !291
  br label %193

49:                                               ; preds = %31
  %50 = and i32 %18, 49152
  %51 = icmp eq i32 %50, 32768
  br i1 %51, label %33, label %52

52:                                               ; preds = %49, %31
  %53 = icmp eq ptr %7, @PL_sv_yes
  br i1 %53, label %54, label %68, !prof !898

54:                                               ; preds = %52
  br i1 %12, label %61, label %55, !prof !623

55:                                               ; preds = %54
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %57 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %58 = load i32, ptr %57, align 4, !tbaa !311
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  br label %63

61:                                               ; preds = %54
  %62 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi ptr [ %62, %61 ], [ %57, %55 ]
  %65 = phi ptr [ %6, %61 ], [ %60, %55 ]
  %66 = getelementptr inbounds i32, ptr %64, i64 -1
  store ptr %66, ptr @PL_markstack_ptr, align 8
  store ptr %65, ptr @PL_stack_sp, align 8, !tbaa !291
  %67 = load ptr, ptr %8, align 8, !tbaa !300
  br label %659

68:                                               ; preds = %52
  %69 = and i32 %18, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !899

71:                                               ; preds = %68
  %72 = tail call i32 @Perl_mg_get(ptr noundef nonnull %7) #14
  %73 = load i32, ptr %17, align 4, !tbaa !327
  br label %74

74:                                               ; preds = %68, %71
  %75 = phi i32 [ %18, %68 ], [ %73, %71 ]
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78, !prof !900

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !308
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !327
  %83 = and i32 %82, 1048576
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %141, label %85, !prof !901

85:                                               ; preds = %78
  %86 = load ptr, ptr %80, align 8, !tbaa !343
  %87 = load ptr, ptr %86, align 8, !tbaa !453
  %88 = getelementptr inbounds %struct.hv, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !455
  %90 = and i32 %89, 268435456
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %85
  %93 = tail call ptr @Perl_amagic_deref_call(ptr noundef nonnull %7, i32 noundef 5) #14
  store ptr %93, ptr %1, align 8, !tbaa !291
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !308
  br label %141

96:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %97 = and i32 %75, 63232
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107, !prof !902

99:                                               ; preds = %96
  %100 = and i32 %75, 255
  %101 = icmp eq i32 %100, 8
  %102 = and i32 %75, 16777471
  %103 = icmp eq i32 %102, 16777226
  %104 = or i1 %101, %103
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.35) #14
  br label %131

107:                                              ; preds = %99, %96
  %108 = and i32 %75, 2098176
  %109 = icmp eq i32 %108, 1024
  br i1 %109, label %110, label %116, !prof !903

110:                                              ; preds = %107
  %111 = load ptr, ptr %7, align 8, !tbaa !343
  %112 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !345
  store i64 %113, ptr %4, align 8, !tbaa !309
  %114 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !308
  br label %118

116:                                              ; preds = %107
  %117 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 32) #14
  br label %118

118:                                              ; preds = %116, %110
  %119 = phi ptr [ %115, %110 ], [ %117, %116 ]
  %120 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %121 = getelementptr inbounds %struct.op, ptr %120, i64 0, i32 6
  %122 = load i8, ptr %121, align 1, !tbaa !315
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %133, label %125, !prof !903

125:                                              ; preds = %118
  %126 = load ptr, ptr %1, align 8, !tbaa !291
  %127 = load i64, ptr %4, align 8, !tbaa !309
  %128 = icmp ugt i64 %127, 32
  %129 = select i1 %128, ptr @.str.24, ptr @.str.1
  %130 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36, ptr noundef %126, ptr noundef nonnull %129) #14
  br label %131

131:                                              ; preds = %125, %105
  %132 = phi ptr [ %106, %105 ], [ %130, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %659

133:                                              ; preds = %118
  %134 = load i64, ptr %4, align 8, !tbaa !309
  %135 = load ptr, ptr %1, align 8, !tbaa !291
  %136 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !327
  %138 = and i32 %137, 536870912
  %139 = or disjoint i32 %138, 1
  %140 = call ptr @Perl_get_cvn_flags(ptr noundef %119, i64 noundef %134, i32 noundef %139) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %149

141:                                              ; preds = %78, %85, %92
  %142 = phi ptr [ %80, %78 ], [ %80, %85 ], [ %95, %92 ]
  %143 = getelementptr inbounds %struct.cv, ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !904
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %149, label %147, !prof !901

147:                                              ; preds = %141, %31, %31
  %148 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #14
  br label %659

149:                                              ; preds = %39, %133, %31, %43, %141, %27
  %150 = phi ptr [ %29, %27 ], [ %142, %141 ], [ %140, %133 ], [ %44, %43 ], [ %7, %31 ], [ %41, %39 ]
  call void @Perl_push_scope() #14
  br label %151

151:                                              ; preds = %221, %149
  %152 = phi ptr [ %150, %149 ], [ %222, %221 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !629
  %154 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 12
  %155 = load i32, ptr %154, align 4, !tbaa !631
  %156 = and i32 %155, 32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158, !prof !905

158:                                              ; preds = %151
  %159 = and i32 %155, 64
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37) #14
  br label %659

163:                                              ; preds = %151, %158
  %164 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 6
  %165 = load ptr, ptr %164, align 8, !tbaa !308
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %224, !prof !906

167:                                              ; preds = %163
  %168 = and i32 %155, 65536
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !308
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = call ptr @Perl_cv_name(ptr noundef nonnull %152, ptr noundef null, i32 noundef 0) #14
  %176 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %175) #14
  br label %659

177:                                              ; preds = %170, %167
  %178 = and i32 %155, 128
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !308
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %177
  %185 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.39) #14
  br label %659

186:                                              ; preds = %180
  %187 = call fastcc ptr @S_CvGV(ptr noundef nonnull %152) #15
  store ptr %187, ptr %2, align 8, !tbaa !291
  %188 = getelementptr inbounds %struct.gv, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !308
  %190 = getelementptr inbounds %struct.gp, ptr %189, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !367
  %192 = icmp eq ptr %152, %191
  br i1 %192, label %193, label %221

193:                                              ; preds = %186, %46
  %194 = phi ptr [ %187, %186 ], [ %48, %46 ]
  %195 = load ptr, ptr %194, align 8, !tbaa !907
  %196 = getelementptr inbounds %struct.xpvgv, ptr %195, i64 0, i32 5
  %197 = load ptr, ptr %196, align 8, !tbaa !308
  %198 = getelementptr inbounds %struct.xpvgv, ptr %195, i64 0, i32 4
  %199 = load ptr, ptr %198, align 8, !tbaa !308
  %200 = getelementptr inbounds %struct.hek, ptr %199, i64 0, i32 2
  %201 = getelementptr inbounds %struct.hek, ptr %199, i64 0, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !908
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %200, i64 %203
  %205 = getelementptr inbounds i8, ptr %204, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !308
  %207 = and i8 %206, 1
  %208 = zext nneg i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 29
  %210 = call ptr @Perl_gv_autoload_pvn(ptr noundef %197, ptr noundef nonnull %200, i64 noundef %203, i32 noundef %209) #14
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %193
  %213 = getelementptr inbounds %struct.gv, ptr %210, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !308
  %215 = getelementptr inbounds %struct.gp, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !367
  br label %221

217:                                              ; preds = %221, %193
  %218 = call ptr @Perl_sv_newmortal() #14
  %219 = load ptr, ptr %2, align 8, !tbaa !291
  call void @Perl_gv_efullname4(ptr noundef %218, ptr noundef %219, ptr noundef null, i1 noundef zeroext true) #14
  %220 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %218) #14
  br label %659

221:                                              ; preds = %186, %212
  %222 = phi ptr [ %216, %212 ], [ %191, %186 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %217, label %151

224:                                              ; preds = %163
  %225 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %226 = getelementptr inbounds %struct.op, ptr %225, i64 0, i32 6
  %227 = load i8, ptr %226, align 1, !tbaa !315
  %228 = and i8 %227, 64
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %281, label %230, !prof !905

230:                                              ; preds = %224
  %231 = load ptr, ptr @PL_DBsub, align 8, !tbaa !291
  %232 = getelementptr inbounds %struct.gv, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !308
  %234 = getelementptr inbounds %struct.gp, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !367
  %236 = icmp ne ptr %235, null
  %237 = and i32 %155, 512
  %238 = icmp eq i32 %237, 0
  %239 = and i1 %238, %236
  br i1 %239, label %240, label %281

240:                                              ; preds = %230
  call void @Perl_get_db_sub(ptr noundef nonnull %1, ptr noundef nonnull %152) #14
  %241 = load ptr, ptr %152, align 8, !tbaa !629
  %242 = getelementptr inbounds %struct.xpvcv, ptr %241, i64 0, i32 12
  %243 = load i32, ptr %242, align 4, !tbaa !631
  %244 = and i32 %243, 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  store ptr %247, ptr @PL_curcopdb, align 8, !tbaa !291
  %248 = load ptr, ptr %152, align 8, !tbaa !629
  %249 = getelementptr inbounds %struct.xpvcv, ptr %248, i64 0, i32 12
  %250 = load i32, ptr %249, align 4, !tbaa !631
  br label %251

251:                                              ; preds = %246, %240
  %252 = phi i32 [ %250, %246 ], [ %243, %240 ]
  %253 = and i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %251
  %256 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 8, i32 noundef 2, i32 noundef 13) #14
  %257 = getelementptr inbounds %struct.gv, ptr %256, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !308
  %259 = getelementptr inbounds %struct.gp, ptr %258, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !367
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %269

262:                                              ; preds = %251, %255
  %263 = load ptr, ptr @PL_DBsub, align 8, !tbaa !291
  %264 = getelementptr inbounds %struct.gv, ptr %263, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !308
  %266 = getelementptr inbounds %struct.gp, ptr %265, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !367
  %268 = icmp eq ptr %267, null
  br i1 %268, label %279, label %269

269:                                              ; preds = %255, %262
  %270 = phi ptr [ %267, %262 ], [ %260, %255 ]
  %271 = load ptr, ptr %270, align 8, !tbaa !629
  %272 = getelementptr inbounds %struct.xpvcv, ptr %271, i64 0, i32 6
  %273 = load ptr, ptr %272, align 8, !tbaa !308
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.xpvcv, ptr %271, i64 0, i32 5
  %277 = load ptr, ptr %276, align 8, !tbaa !308
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %275, %262
  %280 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41) #14
  br label %659

281:                                              ; preds = %269, %275, %224, %230
  %282 = phi ptr [ %271, %269 ], [ %271, %275 ], [ %153, %230 ], [ %153, %224 ]
  %283 = phi ptr [ %270, %269 ], [ %270, %275 ], [ %152, %230 ], [ %152, %224 ]
  %284 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %285 = getelementptr inbounds %struct.op, ptr %284, i64 0, i32 5
  %286 = load i8, ptr %285, align 2, !tbaa !364
  %287 = and i8 %286, 3
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %291, label %289, !prof !910

289:                                              ; preds = %281
  %290 = zext nneg i8 %287 to i32
  br label %294

291:                                              ; preds = %281
  %292 = call i32 @Perl_block_gimme() #14
  %293 = load ptr, ptr %283, align 8, !tbaa !629
  br label %294

294:                                              ; preds = %291, %289
  %295 = phi ptr [ %282, %289 ], [ %293, %291 ]
  %296 = phi i32 [ %290, %289 ], [ %292, %291 ]
  %297 = getelementptr inbounds %struct.xpvcv, ptr %295, i64 0, i32 12
  %298 = load i32, ptr %297, align 4, !tbaa !631
  %299 = and i32 %298, 8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %515, !prof !911

301:                                              ; preds = %294
  %302 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %303 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %304 = getelementptr inbounds i32, ptr %303, i64 -1
  store ptr %304, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %305 = load i32, ptr %303, align 4, !tbaa !311
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds ptr, ptr %302, i64 %306
  %308 = load ptr, ptr %283, align 8, !tbaa !629
  %309 = getelementptr inbounds %struct.xpvcv, ptr %308, i64 0, i32 9
  %310 = load ptr, ptr %309, align 8, !tbaa !308
  %311 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %312 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 4
  %313 = load i32, ptr %312, align 8, !tbaa !307
  %314 = getelementptr inbounds %struct.stackinfo, ptr %311, i64 0, i32 5
  %315 = load i32, ptr %314, align 4, !tbaa !837
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %317, label %319, !prof !912

317:                                              ; preds = %301
  %318 = add nsw i32 %313, 1
  store i32 %318, ptr %312, align 8, !tbaa !307
  br label %323

319:                                              ; preds = %301
  %320 = call i32 @Perl_cxinc() #14
  %321 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !291
  %322 = getelementptr inbounds %struct.stackinfo, ptr %321, i64 0, i32 4
  store i32 %320, ptr %322, align 8, !tbaa !307
  br label %323

323:                                              ; preds = %319, %317
  %324 = phi i32 [ %320, %319 ], [ %318, %317 ]
  %325 = phi ptr [ %321, %319 ], [ %311, %317 ]
  %326 = getelementptr inbounds %struct.stackinfo, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !305
  %328 = sext i32 %324 to i64
  %329 = getelementptr inbounds %struct.context, ptr %327, i64 %328
  store i8 8, ptr %329, align 8, !tbaa !308
  %330 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %331 = ptrtoint ptr %307 to i64
  %332 = ptrtoint ptr %330 to i64
  %333 = sub i64 %331, %332
  %334 = lshr exact i64 %333, 3
  %335 = trunc i64 %334 to i32
  %336 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 3
  store i32 %335, ptr %336, align 4, !tbaa !308
  %337 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %338 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 4
  store ptr %337, ptr %338, align 8, !tbaa !308
  %339 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %340 = load ptr, ptr @PL_markstack, align 8, !tbaa !291
  %341 = ptrtoint ptr %339 to i64
  %342 = ptrtoint ptr %340 to i64
  %343 = sub i64 %341, %342
  %344 = lshr exact i64 %343, 2
  %345 = trunc i64 %344 to i32
  %346 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 5
  store i32 %345, ptr %346, align 8, !tbaa !308
  %347 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !311
  %348 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 6
  store i32 %347, ptr %348, align 4, !tbaa !308
  %349 = load ptr, ptr @PL_curpm, align 8, !tbaa !291
  %350 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 7
  store ptr %349, ptr %350, align 8, !tbaa !308
  %351 = trunc i32 %296 to i8
  %352 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 1
  store i8 %351, ptr %352, align 1, !tbaa !308
  %353 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %354 = getelementptr inbounds %struct.op, ptr %353, i64 0, i32 5
  %355 = load i8, ptr %354, align 2, !tbaa !364
  %356 = and i8 %355, 3
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %368, !prof !913

358:                                              ; preds = %323
  %359 = getelementptr inbounds %struct.op, ptr %353, i64 0, i32 6
  %360 = load i8, ptr %359, align 1, !tbaa !315
  %361 = and i8 %360, -127
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %368, label %363, !prof !913

363:                                              ; preds = %358
  %364 = call i32 @Perl_was_lvalue_sub() #14
  %365 = and i32 %364, 207
  %366 = or disjoint i32 %365, 48
  %367 = load i8, ptr %329, align 8, !tbaa !308
  br label %368

368:                                              ; preds = %363, %358, %323
  %369 = phi i8 [ 8, %323 ], [ %367, %363 ], [ 8, %358 ]
  %370 = phi i32 [ 177, %323 ], [ %366, %363 ], [ 48, %358 ]
  %371 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8
  %372 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8, i32 0, i32 1
  store ptr %283, ptr %372, align 8, !tbaa !308
  %373 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %283) #15
  %374 = load i32, ptr %373, align 4, !tbaa !311
  %375 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8, i32 0, i32 4
  store i32 %374, ptr %375, align 8, !tbaa !308
  %376 = lshr exact i8 %11, 1
  %377 = or i8 %369, %376
  store i8 %377, ptr %329, align 8, !tbaa !308
  store ptr null, ptr %371, align 8, !tbaa !308
  %378 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %283) #15
  %379 = load i32, ptr %378, align 4, !tbaa !311
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %385, !prof !914

381:                                              ; preds = %368
  %382 = getelementptr inbounds %struct.sv, ptr %283, i64 0, i32 1
  %383 = load i32, ptr %382, align 8, !tbaa !365
  %384 = add i32 %383, 2
  store i32 %384, ptr %382, align 8, !tbaa !365
  call void @Perl_save_pushptr(ptr noundef nonnull %283, i32 noundef 11) #14
  br label %385

385:                                              ; preds = %381, %368
  %386 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %387 = getelementptr inbounds %struct.op, ptr %386, i64 0, i32 6
  %388 = load i8, ptr %387, align 1, !tbaa !315
  %389 = zext i8 %388 to i32
  %390 = and i32 %370, %389
  %391 = trunc i32 %390 to i16
  %392 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 2
  store i16 %391, ptr %392, align 2, !tbaa !308
  %393 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %394 = load ptr, ptr %393, align 8, !tbaa !300
  store ptr %394, ptr %371, align 8, !tbaa !308
  %395 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %283) #15
  %396 = load i32, ptr %395, align 4, !tbaa !311
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %395, align 4, !tbaa !311
  %398 = icmp sgt i32 %396, 0
  br i1 %398, label %399, label %400, !prof !915

399:                                              ; preds = %385
  call void @Perl_pad_push(ptr noundef %310, i32 noundef %397) #14
  br label %400

400:                                              ; preds = %385, %399
  %401 = load ptr, ptr @PL_comppad, align 8, !tbaa !291
  call void @Perl_save_pushptr(ptr noundef %401, i32 noundef 7) #14
  %402 = getelementptr inbounds %struct.padlist, ptr %310, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !916
  %404 = sext i32 %397 to i64
  %405 = getelementptr inbounds ptr, ptr %403, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !291
  store ptr %406, ptr @PL_comppad, align 8, !tbaa !291
  %407 = getelementptr inbounds %struct.av, ptr %406, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !308
  store ptr %408, ptr @PL_curpad, align 8, !tbaa !291
  br i1 %12, label %482, label %409, !prof !912

409:                                              ; preds = %400
  %410 = load ptr, ptr %408, align 8, !tbaa !291
  %411 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 2
  %412 = load i32, ptr %411, align 4, !tbaa !429
  %413 = and i32 %412, 1073741824
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %419, label %415, !prof !918

415:                                              ; preds = %409
  call void @Perl_av_clear(ptr noundef nonnull %410) #14
  %416 = load i32, ptr %411, align 4, !tbaa !429
  %417 = and i32 %416, 1073741823
  %418 = or disjoint i32 %417, -2147483648
  store i32 %418, ptr %411, align 4, !tbaa !429
  br label %419

419:                                              ; preds = %409, %415
  %420 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %421 = getelementptr inbounds %struct.gv, ptr %420, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !308
  %423 = getelementptr inbounds %struct.gp, ptr %422, i64 0, i32 6
  %424 = load ptr, ptr %423, align 8, !tbaa !291
  %425 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8, i32 0, i32 2
  store ptr %424, ptr %425, align 8, !tbaa !308
  %426 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 1
  %427 = load i32, ptr %426, align 8, !tbaa !919
  %428 = add i32 %427, 1
  store i32 %428, ptr %426, align 8, !tbaa !919
  store ptr %410, ptr %423, align 8, !tbaa !291
  %429 = load ptr, ptr @PL_comppad, align 8, !tbaa !291
  %430 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8, i32 0, i32 5
  store ptr %429, ptr %430, align 8, !tbaa !308
  %431 = getelementptr inbounds %struct.block, ptr %329, i64 0, i32 8, i32 0, i32 3
  store ptr %410, ptr %431, align 8, !tbaa !308
  %432 = ptrtoint ptr %6 to i64
  %433 = sub i64 %432, %331
  %434 = ashr exact i64 %433, 3
  %435 = add nsw i64 %434, -1
  %436 = load ptr, ptr %410, align 8, !tbaa !425
  %437 = getelementptr inbounds %struct.xpvav, ptr %436, i64 0, i32 3
  %438 = load i64, ptr %437, align 8, !tbaa !499
  %439 = icmp sgt i64 %435, %438
  br i1 %439, label %443, label %440, !prof !920

440:                                              ; preds = %419
  %441 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !308
  br label %450

443:                                              ; preds = %419
  %444 = getelementptr inbounds %struct.xpvav, ptr %436, i64 0, i32 4
  %445 = load ptr, ptr %444, align 8, !tbaa !886
  store i64 %435, ptr %437, align 8, !tbaa !499
  %446 = call ptr @Perl_safesysrealloc(ptr noundef %445, i64 noundef %433) #14
  %447 = load ptr, ptr %410, align 8, !tbaa !425
  %448 = getelementptr inbounds %struct.xpvav, ptr %447, i64 0, i32 4
  store ptr %446, ptr %448, align 8, !tbaa !886
  %449 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 3
  store ptr %446, ptr %449, align 8, !tbaa !308
  br label %450

450:                                              ; preds = %440, %443
  %451 = phi ptr [ %442, %440 ], [ %446, %443 ]
  %452 = getelementptr inbounds ptr, ptr %307, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %451, ptr nonnull align 1 %452, i64 %433, i1 false)
  %453 = load ptr, ptr %410, align 8, !tbaa !425
  %454 = getelementptr inbounds %struct.xpvav, ptr %453, i64 0, i32 2
  store i64 %435, ptr %454, align 8, !tbaa !427
  %455 = icmp eq ptr %6, %307
  br i1 %455, label %482, label %456, !prof !921

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 3
  %458 = load ptr, ptr %457, align 8, !tbaa !308
  br label %459

459:                                              ; preds = %456, %479
  %460 = phi i64 [ %462, %479 ], [ %434, %456 ]
  %461 = phi ptr [ %480, %479 ], [ %458, %456 ]
  %462 = add nsw i64 %460, -1
  %463 = load ptr, ptr %461, align 8, !tbaa !291
  %464 = icmp eq ptr %463, null
  br i1 %464, label %479, label %465, !prof !922

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.sv, ptr %463, i64 0, i32 2
  %467 = load i32, ptr %466, align 4, !tbaa !327
  %468 = and i32 %467, 131072
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %474, label %470, !prof !923

470:                                              ; preds = %465
  %471 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %463, i32 noundef 1538) #14
  store ptr %471, ptr %461, align 8, !tbaa !291
  %472 = getelementptr inbounds %struct.sv, ptr %471, i64 0, i32 2
  %473 = load i32, ptr %472, align 4, !tbaa !327
  br label %474

474:                                              ; preds = %470, %465
  %475 = phi i32 [ %473, %470 ], [ %467, %465 ]
  %476 = phi ptr [ %471, %470 ], [ %463, %465 ]
  %477 = getelementptr inbounds %struct.sv, ptr %476, i64 0, i32 2
  %478 = and i32 %475, -524289
  store i32 %478, ptr %477, align 4, !tbaa !327
  br label %479

479:                                              ; preds = %474, %459
  %480 = getelementptr inbounds ptr, ptr %461, i64 1
  %481 = icmp eq i64 %462, 0
  br i1 %481, label %482, label %459, !prof !924, !llvm.loop !925

482:                                              ; preds = %479, %450, %400
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %483 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  store i64 %483, ptr @PL_tmps_floor, align 8, !tbaa !309
  %484 = load i16, ptr %392, align 2, !tbaa !308
  %485 = and i16 %484, 129
  %486 = icmp eq i16 %485, 128
  br i1 %486, label %487, label %495, !prof !915

487:                                              ; preds = %482
  %488 = load ptr, ptr %283, align 8, !tbaa !629
  %489 = getelementptr inbounds %struct.xpvcv, ptr %488, i64 0, i32 12
  %490 = load i32, ptr %489, align 4, !tbaa !631
  %491 = and i32 %490, 2
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %487
  %494 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #14
  br label %659

495:                                              ; preds = %482, %487
  %496 = icmp eq i32 %397, 100
  br i1 %496, label %497, label %511, !prof !915

497:                                              ; preds = %495
  %498 = call zeroext i1 @Perl_ckwarn(i32 noundef 18) #14
  br i1 %498, label %499, label %511

499:                                              ; preds = %497
  %500 = load i32, ptr @PL_perldb, align 4, !tbaa !311
  %501 = and i32 %500, 1
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %510, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr @PL_DBsub, align 8, !tbaa !291
  %505 = getelementptr inbounds %struct.gv, ptr %504, i64 0, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !308
  %507 = getelementptr inbounds %struct.gp, ptr %506, i64 0, i32 2
  %508 = load ptr, ptr %507, align 8, !tbaa !367
  %509 = icmp eq ptr %283, %508
  br i1 %509, label %511, label %510

510:                                              ; preds = %499, %503
  call void @Perl_sub_crush_depth(ptr noundef nonnull %283) #15
  br label %511

511:                                              ; preds = %495, %497, %503, %510
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !291
  %512 = load ptr, ptr %283, align 8, !tbaa !629
  %513 = getelementptr inbounds %struct.xpvcv, ptr %512, i64 0, i32 5
  %514 = load ptr, ptr %513, align 8, !tbaa !308
  br label %659

515:                                              ; preds = %294
  %516 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %517 = load i32, ptr %516, align 4, !tbaa !311
  %518 = sext i32 %517 to i64
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %519 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !309
  store i64 %519, ptr @PL_tmps_floor, align 8, !tbaa !309
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !291
  %520 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %521 = getelementptr inbounds %struct.op, ptr %520, i64 0, i32 6
  %522 = load i8, ptr %521, align 1, !tbaa !315
  %523 = getelementptr inbounds %struct.op, ptr %520, i64 0, i32 5
  %524 = load i8, ptr %523, align 2, !tbaa !364
  %525 = and i8 %524, 3
  %526 = icmp eq i8 %525, 0
  %527 = and i8 %522, -127
  br i1 %526, label %528, label %533, !prof !926

528:                                              ; preds = %515
  %529 = icmp eq i8 %527, 0
  br i1 %529, label %533, label %530, !prof !926

530:                                              ; preds = %528
  %531 = call i32 @Perl_is_lvalue_sub() #14
  %532 = and i32 %531, 255
  br label %533

533:                                              ; preds = %515, %530, %528
  %534 = phi i8 [ %527, %530 ], [ 0, %528 ], [ %527, %515 ]
  %535 = phi i32 [ %532, %530 ], [ 0, %528 ], [ 129, %515 ]
  %536 = zext i8 %534 to i32
  %537 = and i32 %535, %536
  %538 = icmp eq i32 %537, 128
  br i1 %538, label %539, label %547

539:                                              ; preds = %533
  %540 = load ptr, ptr %283, align 8, !tbaa !629
  %541 = getelementptr inbounds %struct.xpvcv, ptr %540, i64 0, i32 12
  %542 = load i32, ptr %541, align 4, !tbaa !631
  %543 = and i32 %542, 2
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %539
  %546 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #14
  br label %659

547:                                              ; preds = %533, %539
  br i1 %12, label %548, label %609, !prof !927

548:                                              ; preds = %547
  %549 = load ptr, ptr @PL_defgv, align 8, !tbaa !291
  %550 = getelementptr inbounds %struct.gv, ptr %549, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8, !tbaa !308
  %552 = getelementptr inbounds %struct.gp, ptr %551, i64 0, i32 6
  %553 = load ptr, ptr %552, align 8, !tbaa !410
  %554 = icmp eq ptr %553, null
  br i1 %554, label %609, label %555, !prof !928

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.sv, ptr %553, i64 0, i32 2
  %557 = load i32, ptr %556, align 4, !tbaa !327
  %558 = and i32 %557, 8388608
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %563, label %560, !prof !928

560:                                              ; preds = %555
  %561 = call i32 @Perl_mg_size(ptr noundef nonnull %553) #14
  %562 = sext i32 %561 to i64
  br label %567

563:                                              ; preds = %555
  %564 = load ptr, ptr %553, align 8, !tbaa !425
  %565 = getelementptr inbounds %struct.xpvav, ptr %564, i64 0, i32 2
  %566 = load i64, ptr %565, align 8, !tbaa !427
  br label %567

567:                                              ; preds = %563, %560
  %568 = phi i64 [ %562, %560 ], [ %566, %563 ]
  %569 = add i64 %568, 1
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %634, label %571, !prof !928

571:                                              ; preds = %567
  %572 = load i32, ptr %556, align 4, !tbaa !429
  %573 = and i32 %572, 8388608
  %574 = icmp eq i32 %573, 0
  %575 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %576 = ptrtoint ptr %575 to i64
  %577 = ptrtoint ptr %6 to i64
  %578 = sub i64 %576, %577
  %579 = ashr exact i64 %578, 3
  %580 = icmp sgt i64 %579, %568
  br i1 %580, label %583, label %581

581:                                              ; preds = %571
  %582 = call ptr @Perl_stack_grow(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef %569) #14
  br label %583

583:                                              ; preds = %571, %581
  %584 = phi ptr [ %582, %581 ], [ %6, %571 ]
  %585 = icmp slt i64 %568, 0
  br i1 %585, label %607, label %586

586:                                              ; preds = %583
  %587 = getelementptr inbounds %struct.av, ptr %553, i64 0, i32 3
  br label %588

588:                                              ; preds = %586, %602
  %589 = phi i64 [ 0, %586 ], [ %604, %602 ]
  br i1 %574, label %593, label %590

590:                                              ; preds = %588
  %591 = call ptr @Perl_av_fetch(ptr noundef nonnull %553, i64 noundef %589, i32 noundef 0) #14
  %592 = icmp eq ptr %591, null
  br i1 %592, label %600, label %596

593:                                              ; preds = %588
  %594 = load ptr, ptr %587, align 8, !tbaa !308
  %595 = getelementptr inbounds ptr, ptr %594, i64 %589
  br label %596

596:                                              ; preds = %590, %593
  %597 = phi ptr [ %595, %593 ], [ %591, %590 ]
  %598 = load ptr, ptr %597, align 8, !tbaa !291
  %599 = icmp eq ptr %598, null
  br i1 %599, label %600, label %602

600:                                              ; preds = %590, %596
  %601 = call ptr @Perl_newSVavdefelem(ptr noundef nonnull %553, i64 noundef %589, i1 noundef zeroext true) #14
  br label %602

602:                                              ; preds = %596, %600
  %603 = phi ptr [ %601, %600 ], [ %598, %596 ]
  %604 = add nuw i64 %589, 1
  %605 = getelementptr inbounds ptr, ptr %584, i64 %604
  store ptr %603, ptr %605, align 8, !tbaa !291
  %606 = icmp eq i64 %589, %568
  br i1 %606, label %607, label %588, !llvm.loop !929

607:                                              ; preds = %602, %583
  %608 = getelementptr inbounds ptr, ptr %584, i64 %569
  store ptr %608, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %634

609:                                              ; preds = %547, %548
  %610 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %611 = getelementptr inbounds ptr, ptr %610, i64 %518
  %612 = icmp eq ptr %6, %611
  br i1 %612, label %634, label %613, !prof !930

613:                                              ; preds = %609
  %614 = ptrtoint ptr %6 to i64
  %615 = ptrtoint ptr %611 to i64
  %616 = sub i64 %614, %615
  %617 = ashr exact i64 %616, 3
  br label %618

618:                                              ; preds = %613, %632
  %619 = phi i64 [ %621, %632 ], [ %617, %613 ]
  %620 = phi ptr [ %622, %632 ], [ %611, %613 ]
  %621 = add nsw i64 %619, -1
  %622 = getelementptr inbounds ptr, ptr %620, i64 1
  %623 = load ptr, ptr %622, align 8, !tbaa !291
  %624 = icmp eq ptr %623, null
  br i1 %624, label %632, label %625, !prof !931

625:                                              ; preds = %618
  %626 = getelementptr inbounds %struct.sv, ptr %623, i64 0, i32 2
  %627 = load i32, ptr %626, align 4, !tbaa !327
  %628 = and i32 %627, 131072
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %632, label %630, !prof !932

630:                                              ; preds = %625
  %631 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %623, i32 noundef 1538) #14
  store ptr %631, ptr %622, align 8, !tbaa !291
  br label %632

632:                                              ; preds = %630, %625, %618
  %633 = icmp eq i64 %621, 0
  br i1 %633, label %634, label %618, !prof !933, !llvm.loop !934

634:                                              ; preds = %632, %609, %567, %607
  %635 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !291
  %636 = icmp eq ptr %635, null
  br i1 %636, label %639, label %637, !prof !935

637:                                              ; preds = %634
  call void @Perl_save_vptr(ptr noundef nonnull @PL_curcop) #14
  %638 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !291
  store ptr %638, ptr @PL_curcop, align 8, !tbaa !291
  store ptr null, ptr @PL_curcopdb, align 8, !tbaa !291
  br label %639

639:                                              ; preds = %634, %637
  %640 = load ptr, ptr %283, align 8, !tbaa !629
  %641 = getelementptr inbounds %struct.xpvcv, ptr %640, i64 0, i32 6
  %642 = load ptr, ptr %641, align 8, !tbaa !308
  call void %642(ptr noundef nonnull %283) #14
  %643 = icmp eq i32 %296, 2
  br i1 %643, label %644, label %656, !prof !936

644:                                              ; preds = %639
  %645 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %646 = getelementptr inbounds ptr, ptr %645, i64 %518
  %647 = getelementptr inbounds ptr, ptr %646, i64 1
  %648 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %649 = icmp eq ptr %647, %648
  br i1 %649, label %656, label %650, !prof !937

650:                                              ; preds = %644
  %651 = icmp ugt ptr %647, %648
  br i1 %651, label %654, label %652

652:                                              ; preds = %650
  %653 = load ptr, ptr %648, align 8, !tbaa !291
  br label %654

654:                                              ; preds = %650, %652
  %655 = phi ptr [ %653, %652 ], [ @PL_sv_undef, %650 ]
  store ptr %655, ptr %647, align 8, !tbaa !291
  store ptr %647, ptr @PL_stack_sp, align 8, !tbaa !291
  br label %656

656:                                              ; preds = %644, %654, %639
  call void @Perl_pop_scope() #14
  %657 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %658 = load ptr, ptr %657, align 8, !tbaa !300
  br label %659

659:                                              ; preds = %131, %545, %656, %493, %511, %279, %217, %184, %174, %161, %147, %63, %14
  %660 = phi ptr [ %280, %279 ], [ %176, %174 ], [ %185, %184 ], [ %220, %217 ], [ %162, %161 ], [ %67, %63 ], [ %148, %147 ], [ %15, %14 ], [ %514, %511 ], [ %494, %493 ], [ %658, %656 ], [ %546, %545 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %660
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
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !370 !PGOFuncName !938 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !631
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #14
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !308
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
define dso_local void @Perl_sub_crush_depth(ptr noundef %0) local_unnamed_addr #0 !prof !370 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !631
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.43) #14
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @Perl_cv_name(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.44, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_aelem() local_unnamed_addr #0 !prof !939 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !327
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12, !prof !940

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !343
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !308
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !291
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !364
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31, !prof !941

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !315
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27, !prof !942

27:                                               ; preds = %22
  %28 = tail call i32 @Perl_is_lvalue_sub() #14
  %29 = icmp ne i32 %28, 0
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !291
  br label %31

31:                                               ; preds = %22, %27, %14
  %32 = phi ptr [ %17, %14 ], [ %17, %22 ], [ %30, %27 ]
  %33 = phi i1 [ true, %14 ], [ false, %22 ], [ %29, %27 ]
  %34 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !315
  %36 = and i8 %35, 64
  %37 = icmp sgt i8 %35, -1
  %38 = load i32, ptr %4, align 4, !tbaa !327
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41, !prof !943

41:                                               ; preds = %31
  %42 = and i32 %38, 2097152
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !308
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !327
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %46, align 8, !tbaa !343
  %53 = load ptr, ptr %52, align 8, !tbaa !453
  %54 = getelementptr inbounds %struct.hv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !455
  %56 = and i32 %55, 268435456
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51, %44
  %59 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #14
  br label %61

61:                                               ; preds = %31, %41, %51, %58, %60
  %62 = getelementptr inbounds %struct.av, ptr %16, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !429
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 11
  br i1 %65, label %69, label %66, !prof !943

66:                                               ; preds = %61
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %67 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %68 = load ptr, ptr %67, align 8, !tbaa !300
  br label %159

69:                                               ; preds = %61
  br i1 %37, label %98, label %70, !prof !943

70:                                               ; preds = %69
  %71 = and i32 %63, 8388608
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %70
  %74 = tail call ptr @Perl_mg_find(ptr noundef nonnull %16, i32 noundef 80) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %96, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.magic, ptr %74, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !696
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = tail call ptr @Perl_newRV(ptr noundef nonnull %16) #14
  %82 = tail call ptr @Perl_sv_2mortal(ptr noundef %81) #14
  br label %83

83:                                               ; preds = %76, %80
  %84 = phi ptr [ %82, %80 ], [ %78, %76 ]
  %85 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !308
  %87 = load ptr, ptr %86, align 8, !tbaa !343
  %88 = load ptr, ptr %87, align 8, !tbaa !453
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %88, ptr noundef nonnull @.str.22, i32 noundef 1) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %88, ptr noundef nonnull @.str.23, i32 noundef 1) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93, %73, %70
  %97 = tail call zeroext i1 @Perl_av_exists(ptr noundef nonnull %16, i64 noundef %15) #14
  br label %98

98:                                               ; preds = %83, %90, %93, %96, %69
  %99 = phi i1 [ true, %69 ], [ %97, %96 ], [ true, %93 ], [ true, %90 ], [ true, %83 ]
  %100 = icmp eq i8 %36, 0
  %101 = select i1 %33, i1 %100, i1 false, !prof !944
  %102 = zext i1 %101 to i32
  %103 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %16, i64 noundef %15, i32 noundef %102) #14
  %104 = icmp eq ptr %103, null
  br i1 %33, label %105, label %140, !prof !944

105:                                              ; preds = %98
  br i1 %104, label %109, label %106, !prof !945

106:                                              ; preds = %105
  %107 = load ptr, ptr %103, align 8, !tbaa !291
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %123, !prof !945

109:                                              ; preds = %106, %105
  br i1 %100, label %110, label %112

110:                                              ; preds = %109
  %111 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %15) #14
  br label %159

112:                                              ; preds = %109
  %113 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %16) #15
  %114 = icmp slt i64 %15, 0
  %115 = add nsw i64 %113, %15
  %116 = icmp sgt i64 %115, -1
  %117 = select i1 %114, i1 %116, i1 false
  %118 = select i1 %117, i64 %115, i64 %15
  %119 = tail call ptr @Perl_newSVavdefelem(ptr noundef nonnull %16, i64 noundef %118, i1 noundef zeroext true) #14
  %120 = tail call ptr @Perl_sv_2mortal(ptr noundef %119) #14
  store ptr %120, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %121 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %122 = load ptr, ptr %121, align 8, !tbaa !300
  br label %159

123:                                              ; preds = %106
  br i1 %37, label %127, label %124, !prof !946

124:                                              ; preds = %123
  br i1 %99, label %125, label %126

125:                                              ; preds = %124
  tail call void @Perl_save_aelem_flags(ptr noundef nonnull %16, i64 noundef %15, ptr noundef nonnull %103, i32 noundef 1) #14
  br label %138

126:                                              ; preds = %124
  tail call void @Perl_save_adelete(ptr noundef nonnull %16, i64 noundef %15) #14
  br label %138

127:                                              ; preds = %123
  %128 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %129 = getelementptr inbounds %struct.op, ptr %128, i64 0, i32 6
  %130 = load i8, ptr %129, align 1, !tbaa !315
  %131 = and i8 %130, 48
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %138, label %133, !prof !946

133:                                              ; preds = %127
  %134 = zext nneg i8 %131 to i32
  %135 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %107, i32 noundef %134) #15
  store ptr %135, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %136 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %137 = load ptr, ptr %136, align 8, !tbaa !300
  br label %159

138:                                              ; preds = %127, %125, %126
  %139 = load ptr, ptr %103, align 8, !tbaa !291
  br label %155

140:                                              ; preds = %98
  br i1 %104, label %143, label %141, !prof !947

141:                                              ; preds = %140
  %142 = load ptr, ptr %103, align 8, !tbaa !291
  br label %143

143:                                              ; preds = %140, %141
  %144 = phi ptr [ %142, %141 ], [ @PL_sv_undef, %140 ]
  %145 = load i32, ptr %62, align 4, !tbaa !429
  %146 = and i32 %145, 8388608
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148, !prof !942

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !327
  %151 = and i32 %150, 2097152
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = tail call i32 @Perl_mg_get(ptr noundef nonnull %144) #14
  br label %155

155:                                              ; preds = %138, %153, %148, %143
  %156 = phi ptr [ %144, %153 ], [ %144, %148 ], [ %144, %143 ], [ %139, %138 ]
  store ptr %156, ptr %2, align 8, !tbaa !291
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !291
  %157 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %158 = load ptr, ptr %157, align 8, !tbaa !300
  br label %159

159:                                              ; preds = %110, %112, %155, %133, %66
  %160 = phi ptr [ %68, %66 ], [ %158, %155 ], [ %137, %133 ], [ %122, %112 ], [ %111, %110 ]
  ret ptr %160
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method() local_unnamed_addr #0 !prof !370 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr %1, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !327
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !308
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !327
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %26, label %14

14:                                               ; preds = %7, %0
  %15 = tail call fastcc ptr @S_opmethod_stash(ptr noundef nonnull %2) #15
  %16 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 768) #14
  %17 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !332
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !308
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !367
  br label %26

26:                                               ; preds = %21, %14, %7
  %27 = phi ptr [ %9, %7 ], [ %25, %21 ], [ %16, %14 ]
  store ptr %27, ptr %1, align 8, !tbaa !291
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !291
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %29 = load ptr, ptr %28, align 8, !tbaa !300
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_opmethod_stash(ptr noundef %0) unnamed_addr #0 !prof !948 !PGOFuncName !949 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %5 = load i32, ptr %4, align 4, !tbaa !311
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %11, !prof !950

10:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds ptr, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !291
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ null, %10 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !950

17:                                               ; preds = %49, %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, ptr noundef %0) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !327
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !951

23:                                               ; preds = %18
  %24 = tail call i32 @Perl_mg_get(ptr noundef nonnull %15) #14
  br label %36

25:                                               ; preds = %18
  %26 = and i32 %20, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28, !prof !952

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !343
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !308
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36, !prof !953

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %15, i32 noundef 4096) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %207, !prof !954

36:                                               ; preds = %25, %28, %33, %23
  %37 = load i32, ptr %19, align 4, !tbaa !327
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !955

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !308
  br label %152

43:                                               ; preds = %36
  %44 = and i32 %37, 63232
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %37, 255
  %47 = icmp eq i32 %46, 8
  %48 = or i1 %45, %47
  br i1 %48, label %52, label %49, !prof !956

49:                                               ; preds = %43
  %50 = and i32 %37, 16777471
  %51 = icmp eq i32 %50, 16777226
  br i1 %51, label %52, label %17

52:                                               ; preds = %49, %43
  %53 = and i32 %37, 49152
  %54 = icmp eq i32 %53, 32768
  %55 = add nsw i32 %46, -9
  %56 = icmp ult i32 %55, 2
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %90, !prof !957

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !308
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gp, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !460
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %62
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  %67 = load i32, ptr %19, align 4, !tbaa !327
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ %37, %62 ]
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load ptr, ptr %15, align 8, !tbaa !343
  %74 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 9
  %75 = load i8, ptr %74, align 8, !tbaa !700
  %76 = icmp eq i8 %75, 121
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !702
  br label %80

80:                                               ; preds = %77, %72, %68
  %81 = phi ptr [ %79, %77 ], [ %15, %72 ], [ %15, %68 ]
  %82 = tail call ptr @Perl_newRV(ptr noundef %81) #14
  %83 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #14
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %85 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %86 = load i32, ptr %85, align 4, !tbaa !311
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %83, ptr %89, align 8, !tbaa !291
  br label %152

90:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %91 = and i32 %37, 2098176
  %92 = icmp eq i32 %91, 1024
  br i1 %92, label %93, label %99, !prof !866

93:                                               ; preds = %90
  %94 = load ptr, ptr %15, align 8, !tbaa !343
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !345
  store i64 %96, ptr %2, align 8, !tbaa !309
  %97 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !308
  br label %103

99:                                               ; preds = %90
  %100 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %15, ptr noundef nonnull %2, i32 noundef 32) #14
  %101 = load i32, ptr %19, align 4, !tbaa !327
  %102 = load i64, ptr %2, align 8, !tbaa !309
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
  br i1 %111, label %112, label %141, !prof !866

112:                                              ; preds = %103
  %113 = load i64, ptr %2, align 8, !tbaa !309
  %114 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %106, i64 noundef %113, i32 noundef %107, i32 noundef 15) #14
  %115 = icmp eq ptr %114, null
  br i1 %115, label %130, label %116, !prof !866

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !327
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -9
  %121 = icmp ult i32 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.gv, ptr %114, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !308
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !460
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %116, %122, %126, %112
  %131 = load i64, ptr %2, align 8, !tbaa !309
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135, !prof !448

133:                                              ; preds = %130
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #14
  %134 = load i64, ptr %2, align 8, !tbaa !309
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi i64 [ %134, %133 ], [ %131, %130 ]
  %137 = trunc i64 %136 to i32
  %138 = call ptr @Perl_gv_stashpvn(ptr noundef %106, i32 noundef %137, i32 noundef %107) #14
  %139 = icmp eq ptr %138, null
  %140 = select i1 %139, ptr %15, ptr %138, !prof !448
  br label %141

141:                                              ; preds = %103, %135
  %142 = phi ptr [ %140, %135 ], [ %110, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %207

143:                                              ; preds = %126
  %144 = call ptr @Perl_newRV(ptr noundef nonnull %114) #14
  %145 = call ptr @Perl_sv_2mortal(ptr noundef %144) #14
  %146 = load ptr, ptr @PL_stack_base, align 8, !tbaa !291
  %147 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !291
  %148 = load i32, ptr %147, align 4, !tbaa !311
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %146, i64 %149
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  store ptr %145, ptr %151, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %155

152:                                              ; preds = %80, %40
  %153 = phi ptr [ %42, %40 ], [ %81, %80 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %181, label %155, !prof !958

155:                                              ; preds = %143, %152
  %156 = phi ptr [ %128, %143 ], [ %153, %152 ]
  %157 = getelementptr inbounds %struct.sv, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !327
  %159 = and i32 %158, 1048576
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %203, !prof !959

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
  %170 = load ptr, ptr %169, align 8, !tbaa !308
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.gp, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !460
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !327
  %179 = and i32 %178, 1048576
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %168, %164, %176, %172, %161, %152
  %182 = phi ptr [ %174, %176 ], [ null, %172 ], [ %156, %161 ], [ null, %152 ], [ %156, %164 ], [ null, %168 ]
  %183 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !327
  %185 = and i32 %184, 49152
  %186 = icmp eq i32 %185, 49152
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = and i32 %184, 2098176
  %189 = icmp eq i32 %188, 1024
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !308
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
  %205 = load ptr, ptr %204, align 8, !tbaa !343
  %206 = load ptr, ptr %205, align 8, !tbaa !453
  br label %207

207:                                              ; preds = %141, %33, %203
  %208 = phi ptr [ %206, %203 ], [ %34, %33 ], [ %142, %141 ]
  ret ptr %208
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_named() local_unnamed_addr #0 !prof !960 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !455
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %63, !prof !961

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef nonnull %5, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13, !prof !962

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !308
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !332
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %63, !prof !963

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !308
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !367
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26, !prof !964

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !894
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30, !prof !965

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !311
  %32 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !308
  %34 = load ptr, ptr %5, align 8, !tbaa !705
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !706
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !966
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43, !prof !967

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %5) #14
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !968
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %63, !prof !970

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57, !prof !971

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !308
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !367
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !291
  br label %86

63:                                               ; preds = %10, %43, %20, %13, %0
  %64 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %5, ptr noundef %4, i32 noundef 768) #14
  %65 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %66 = ptrtoint ptr %65 to i64
  %67 = ptrtoint ptr %1 to i64
  %68 = sub i64 %66, %67
  %69 = icmp slt i64 %68, 8
  br i1 %69, label %70, label %72, !prof !972

70:                                               ; preds = %63
  %71 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %72

72:                                               ; preds = %63, %70
  %73 = phi ptr [ %71, %70 ], [ %1, %63 ]
  %74 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !332
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %83, !prof !973

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.gv, ptr %64, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !308
  %81 = getelementptr inbounds %struct.gp, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !367
  br label %83

83:                                               ; preds = %72, %78
  %84 = phi ptr [ %82, %78 ], [ %64, %72 ]
  %85 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !291
  br label %86

86:                                               ; preds = %57, %83
  %87 = phi ptr [ %62, %57 ], [ %85, %83 ]
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !291
  %88 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %89 = load ptr, ptr %88, align 8, !tbaa !300
  ret ptr %89
}

; Function Attrs: optsize
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_super() local_unnamed_addr #0 !prof !450 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = load ptr, ptr @PL_curcop, align 8, !tbaa !291
  %6 = getelementptr inbounds %struct.cop, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !974
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !308
  %11 = load ptr, ptr %7, align 8, !tbaa !705
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !706
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8, !tbaa !966
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !451

18:                                               ; preds = %0
  %19 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %20

20:                                               ; preds = %0, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %0 ]
  %22 = getelementptr inbounds %struct.mro_meta, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !975
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25, !prof !452

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_hv_common(ptr noundef nonnull %23, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !308
  %31 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !332
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !308
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !367
  %40 = icmp eq ptr %39, null
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !894
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @PL_sub_generation, align 4, !tbaa !311
  %47 = load ptr, ptr %9, align 8, !tbaa !308
  %48 = load ptr, ptr %7, align 8, !tbaa !705
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !706
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !966
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %57

57:                                               ; preds = %45, %55
  %58 = phi ptr [ %56, %55 ], [ %53, %45 ]
  %59 = getelementptr inbounds %struct.mro_meta, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !968
  %61 = add i32 %60, %46
  %62 = icmp eq i32 %43, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57, %41
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  %73 = load ptr, ptr %36, align 8, !tbaa !308
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !367
  %76 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !291
  br label %100

77:                                               ; preds = %25, %57, %35, %28, %20
  %78 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %7, ptr noundef %4, i32 noundef 4864) #14
  %79 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %1 to i64
  %82 = sub i64 %80, %81
  %83 = icmp slt i64 %82, 8
  br i1 %83, label %84, label %86, !prof !451

84:                                               ; preds = %77
  %85 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %86

86:                                               ; preds = %77, %84
  %87 = phi ptr [ %85, %84 ], [ %1, %77 ]
  %88 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !332
  %90 = and i32 %89, 255
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %97, !prof !452

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !308
  %95 = getelementptr inbounds %struct.gp, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !367
  br label %97

97:                                               ; preds = %86, %92
  %98 = phi ptr [ %96, %92 ], [ %78, %86 ]
  %99 = getelementptr inbounds ptr, ptr %87, i64 1
  store ptr %98, ptr %99, align 8, !tbaa !291
  br label %100

100:                                              ; preds = %71, %97
  %101 = phi ptr [ %76, %71 ], [ %99, %97 ]
  store ptr %101, ptr @PL_stack_sp, align 8, !tbaa !291
  %102 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %103 = load ptr, ptr %102, align 8, !tbaa !300
  ret ptr %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_redir() local_unnamed_addr #0 !prof !620 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !976
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #14
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = icmp eq ptr %7, null
  br i1 %9, label %63, label %10, !prof !623

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef nonnull %7, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13, !prof !623

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !308
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !332
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %67, !prof !628

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !308
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !367
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26, !prof !623

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !894
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30, !prof !628

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !311
  %32 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !308
  %34 = load ptr, ptr %7, align 8, !tbaa !705
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !706
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !966
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !968
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57, !prof !623

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #14
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !308
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !367
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !291
  br label %91

63:                                               ; preds = %0
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %65 = getelementptr inbounds %struct.methop, ptr %64, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !976
  br label %67

67:                                               ; preds = %10, %43, %20, %13, %63
  %68 = phi ptr [ %66, %63 ], [ %7, %13 ], [ %7, %20 ], [ %7, %43 ], [ %7, %10 ]
  %69 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %68, ptr noundef %4, i32 noundef 768) #14
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  %80 = load i32, ptr %79, align 4, !tbaa !332
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.gv, ptr %69, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !308
  %86 = getelementptr inbounds %struct.gp, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !367
  br label %88

88:                                               ; preds = %77, %83
  %89 = phi ptr [ %87, %83 ], [ %69, %77 ]
  %90 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !291
  br label %91

91:                                               ; preds = %57, %88
  %92 = phi ptr [ %62, %57 ], [ %90, %88 ]
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !291
  %93 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %94 = load ptr, ptr %93, align 8, !tbaa !300
  ret ptr %94
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_method_redir_super() local_unnamed_addr #0 !prof !370 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !291
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !976
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #14
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4) #15
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %12 = getelementptr inbounds %struct.methop, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !976
  br label %83

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !308
  %17 = load ptr, ptr %7, align 8, !tbaa !705
  %18 = getelementptr inbounds %struct.xpvhv, ptr %17, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !706
  %20 = getelementptr ptr, ptr %16, i64 %19
  %21 = getelementptr ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8, !tbaa !966
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi ptr [ %25, %24 ], [ %22, %14 ]
  %28 = getelementptr inbounds %struct.mro_meta, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !975
  %30 = icmp eq ptr %29, null
  br i1 %30, label %83, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_hv_common(ptr noundef nonnull %29, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.he, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !308
  %37 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !332
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !308
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !367
  %46 = icmp eq ptr %45, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !894
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @PL_sub_generation, align 4, !tbaa !311
  %53 = load ptr, ptr %15, align 8, !tbaa !308
  %54 = load ptr, ptr %7, align 8, !tbaa !705
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !706
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8, !tbaa !966
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #14
  br label %63

63:                                               ; preds = %51, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %51 ]
  %65 = getelementptr inbounds %struct.mro_meta, ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !968
  %67 = add i32 %66, %52
  %68 = icmp eq i32 %49, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %47
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  %79 = load ptr, ptr %42, align 8, !tbaa !308
  %80 = getelementptr inbounds %struct.gp, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !367
  %82 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %81, ptr %82, align 8, !tbaa !291
  br label %107

83:                                               ; preds = %31, %63, %41, %34, %26, %10
  %84 = phi ptr [ %7, %26 ], [ %13, %10 ], [ %7, %34 ], [ %7, %41 ], [ %7, %63 ], [ %7, %31 ]
  %85 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %84, ptr noundef %4, i32 noundef 4864) #14
  %86 = load ptr, ptr @PL_stack_max, align 8, !tbaa !291
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
  %96 = load i32, ptr %95, align 4, !tbaa !332
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !308
  %102 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !367
  br label %104

104:                                              ; preds = %93, %99
  %105 = phi ptr [ %103, %99 ], [ %85, %93 ]
  %106 = getelementptr inbounds ptr, ptr %94, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !291
  br label %107

107:                                              ; preds = %77, %104
  %108 = phi ptr [ %82, %77 ], [ %106, %104 ]
  store ptr %108, ptr @PL_stack_sp, align 8, !tbaa !291
  %109 = load ptr, ptr @PL_op, align 8, !tbaa !291
  %110 = load ptr, ptr %109, align 8, !tbaa !300
  ret ptr %110
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_sv_or_pv_pos_u2b(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !370 !PGOFuncName !978 {
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !327
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = and i32 %5, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !308
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !327
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %13, align 8, !tbaa !343
  %20 = load ptr, ptr %19, align 8, !tbaa !453
  %21 = getelementptr inbounds %struct.hv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !455
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
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #12

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!289}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!35 = !{ptr @Perl_pp_const, ptr @Perl_stack_grow, i64 1}
!36 = !{ptr @Perl_pp_nextstate, ptr @Perl_free_tmps, i64 6589631}
!37 = !{ptr @Perl_pp_gvsv, ptr @Perl_stack_grow, i64 1}
!38 = !{ptr @Perl_pp_gvsv, ptr @Perl_save_scalar, i64 1}
!39 = !{ptr @Perl_pp_gvsv, ptr @Perl_gv_add_by_type, i64 1}
!40 = !{ptr @Perl_pp_pushmark, ptr @Perl_markstack_grow, i64 1}
!41 = !{ptr @Perl_pp_stringify, ptr @Perl_sv_copypv_flags, i64 67362}
!42 = !{ptr @Perl_pp_stringify, ptr @Perl_mg_set, i64 1}
!43 = !{ptr @Perl_pp_gv, ptr @Perl_stack_grow, i64 1}
!44 = !{ptr @Perl_pp_and, ptr @Perl_sv_2bool_flags, i64 2}
!45 = !{ptr @Perl_pp_sassign, ptr @Perl_gv_fetchsv, i64 1}
!46 = !{ptr @Perl_pp_sassign, ptr @Perl_sv_setsv_flags, i64 1}
!47 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 50080}
!48 = !{ptr @Perl_pp_unstack, ptr @Perl_free_tmps, i64 366201}
!49 = !{ptr @Perl_pp_unstack, ptr @Perl_leave_scope, i64 20619135}
!50 = !{ptr @Perl_pp_concat, ptr @Perl_try_amagic_bin, i64 1}
!51 = !{ptr @Perl_pp_concat, ptr @Perl_newSVpvn_flags, i64 1}
!52 = !{ptr @Perl_pp_concat, ptr @Perl_sv_2pv_flags, i64 108466}
!53 = !{ptr @Perl_pp_concat, ptr @Perl_sv_setpvn, i64 879728}
!54 = !{ptr @Perl_pp_concat, ptr @Perl_sv_pvn_force_flags, i64 106530}
!55 = !{ptr @Perl_pp_concat, ptr @Perl_sv_utf8_upgrade_flags_grow, i64 1}
!56 = !{ptr @Perl_pp_concat, ptr @Perl_sv_catpvn_flags, i64 2116962}
!57 = !{ptr @Perl_pp_concat, ptr @Perl_mg_set, i64 1}
!58 = !{ptr @Perl_pp_padrange, ptr @Perl_markstack_grow, i64 2}
!59 = !{ptr @Perl_pp_padrange, ptr @Perl_gv_add_by_type, i64 1}
!60 = !{ptr @Perl_pp_padrange, ptr @S_pushav, i64 674052}
!61 = !{ptr @Perl_pp_padrange, ptr @Perl_stack_grow, i64 1}
!62 = !{ptr @Perl_pp_padrange, ptr @Perl_savestack_grow, i64 1}
!63 = !{ptr @Perl_pp_padrange, ptr @S_SvPADSTALE_off, i64 8504121}
!64 = !{ptr @S_pushav, ptr @Perl_mg_size, i64 1}
!65 = !{ptr @S_pushav, ptr @Perl_stack_grow, i64 1}
!66 = !{ptr @S_pushav, ptr @Perl_av_fetch, i64 20}
!67 = !{ptr @S_pushav, ptr @Perl_mg_get, i64 6}
!68 = !{ptr @Perl_pp_padsv, ptr @Perl_stack_grow, i64 1}
!69 = !{ptr @Perl_pp_padsv, ptr @Perl_save_clearsv, i64 27519169}
!70 = !{ptr @Perl_pp_padsv, ptr @Perl_vivify_ref, i64 2849654}
!71 = !{ptr @Perl_vivify_ref, ptr @Perl_mg_get, i64 2}
!72 = !{ptr @Perl_vivify_ref, ptr @Perl_croak_no_modify, i64 1}
!73 = !{ptr @Perl_vivify_ref, ptr @Perl_sv_upgrade, i64 11236}
!74 = !{ptr @Perl_vivify_ref, ptr @Perl_safesysfree, i64 1}
!75 = !{ptr @Perl_vivify_ref, ptr @Perl_newSV, i64 1}
!76 = !{ptr @Perl_vivify_ref, ptr @Perl_newSV_type, i64 11288}
!77 = !{ptr @Perl_vivify_ref, ptr @Perl_mg_set, i64 1}
!78 = !{ptr @Perl_vivify_ref, ptr @Perl_sv_newmortal, i64 1}
!79 = !{ptr @Perl_vivify_ref, ptr @Perl_sv_setsv_flags, i64 1}
!80 = !{ptr @Perl_pp_readline, ptr @Perl_do_readline, i64 1}
!81 = !{ptr @Perl_do_readline, ptr @Perl_sv_gets, i64 39}
!82 = !{ptr @Perl_do_readline, ptr @memchr, i64 3}
!83 = !{ptr @Perl_do_readline, ptr @Perl_safesysrealloc, i64 36}
!84 = !{ptr @Perl_do_readline, ptr @Perl_newSV, i64 38}
!85 = !{ptr @Perl_do_readline, ptr @Perl_sv_2mortal, i64 38}
!86 = !{ptr @Perl_pp_eq, ptr @Perl_try_amagic_bin, i64 1}
!87 = !{ptr @Perl_pp_eq, ptr @Perl_do_ncmp, i64 2}
!88 = !{ptr @Perl_pp_preinc, ptr @Perl_croak_no_modify, i64 1}
!89 = !{ptr @Perl_pp_preinc, ptr @Perl_sv_inc, i64 210305730}
!90 = !{ptr @Perl_pp_preinc, ptr @Perl_sv_dec, i64 210305730}
!91 = !{ptr @Perl_pp_preinc, ptr @Perl_mg_set, i64 1}
!92 = !{ptr @Perl_pp_defined, ptr @Perl_mg_get, i64 1}
!93 = !{ptr @Perl_pp_add, ptr @Perl_try_amagic_bin, i64 1}
!94 = !{ptr @Perl_pp_add, ptr @Perl_sv_2iv_flags, i64 2}
!95 = !{ptr @Perl_pp_add, ptr @Perl_sv_setuv, i64 571689}
!96 = !{ptr @Perl_pp_add, ptr @Perl_sv_setiv, i64 22592}
!97 = !{ptr @Perl_pp_add, ptr @Perl_sv_setnv, i64 5}
!98 = !{ptr @Perl_pp_add, ptr @Perl_sv_2nv_flags, i64 3}
!99 = !{ptr @Perl_pp_add, ptr @Perl_mg_set, i64 4}
!100 = !{ptr @Perl_pp_aelemfast, ptr @Perl_gv_add_by_type, i64 18639}
!101 = !{ptr @Perl_pp_aelemfast, ptr @Perl_av_fetch, i64 1082537}
!102 = !{ptr @Perl_pp_aelemfast, ptr @Perl_die, i64 1}
!103 = !{ptr @Perl_pp_aelemfast, ptr @Perl_stack_grow, i64 1}
!104 = !{ptr @Perl_pp_aelemfast, ptr @Perl_mg_get, i64 1}
!105 = !{ptr @Perl_pp_join, ptr @Perl_do_join, i64 219397}
!106 = !{ptr @Perl_pp_pushre, ptr @Perl_stack_grow, i64 1}
!107 = !{ptr @Perl_pp_print, ptr @Perl_mg_find, i64 1}
!108 = !{ptr @Perl_pp_print, ptr @Perl_tied_method, i64 1}
!109 = !{ptr @Perl_pp_print, ptr @Perl_report_evil_fh, i64 2}
!110 = !{ptr @Perl_pp_print, ptr @Perl_report_wrongway_fh, i64 1}
!111 = !{ptr @Perl_pp_print, ptr @Perl_do_print, i64 42104}
!112 = !{ptr @Perl_pp_print, ptr @Perl_PerlIO_write, i64 1}
!113 = !{ptr @Perl_pp_print, ptr @Perl_PerlIO_error, i64 1}
!114 = !{ptr @Perl_pp_print, ptr @Perl_PerlIO_flush, i64 17902}
!115 = !{ptr @Perl_pp_print, ptr @Perl_stack_grow, i64 4}
!116 = !{ptr @Perl_pp_print, ptr @__errno_location, i64 3}
!117 = !{ptr @Perl_pp_rv2av, ptr @Perl_block_gimme, i64 606}
!118 = !{ptr @Perl_pp_rv2av, ptr @Perl_mg_get, i64 1}
!119 = !{ptr @Perl_pp_rv2av, ptr @Perl_amagic_deref_call, i64 1}
!120 = !{ptr @Perl_pp_rv2av, ptr @Perl_die, i64 1}
!121 = !{ptr @Perl_pp_rv2av, ptr @Perl_croak, i64 1}
!122 = !{ptr @Perl_pp_rv2av, ptr @Perl_is_lvalue_sub, i64 1}
!123 = !{ptr @Perl_pp_rv2av, ptr @S_pushav, i64 97023}
!124 = !{ptr @Perl_pp_rv2av, ptr @Perl_mg_size, i64 1}
!125 = !{ptr @Perl_pp_rv2av, ptr @Perl_sv_setiv, i64 14237293}
!126 = !{ptr @Perl_pp_rv2av, ptr @Perl_mg_set, i64 408}
!127 = !{ptr @Perl_pp_rv2av, ptr @Perl_do_kv, i64 3568895}
!128 = !{ptr @Perl_pp_rv2av, ptr @Perl_mg_find, i64 638}
!129 = !{ptr @Perl_pp_rv2av, ptr @Perl_hv_placeholders_get, i64 638}
!130 = !{ptr @Perl_pp_rv2av, ptr @Perl_newSViv, i64 3585403}
!131 = !{ptr @Perl_pp_rv2av, ptr @Perl_sv_2mortal, i64 3585403}
!132 = !{ptr @Perl_pp_rv2av, ptr @Perl_hv_scalar, i64 1220}
!133 = !{ptr @Perl_pp_qr, ptr @S_ReANY, i64 8}
!134 = !{ptr @Perl_pp_qr, ptr @Perl_sv_newmortal, i64 3}
!135 = !{ptr @Perl_pp_qr, ptr @Perl_sv_upgrade, i64 2}
!136 = !{ptr @Perl_pp_qr, ptr @Perl_reg_temp_copy, i64 3}
!137 = !{ptr @Perl_pp_qr, ptr @Perl_gv_stashsv, i64 2}
!138 = !{ptr @Perl_pp_qr, ptr @S_SvREFCNT_dec_NN, i64 2}
!139 = !{ptr @Perl_pp_qr, ptr @Perl_sv_bless, i64 2}
!140 = !{ptr @Perl_pp_qr, ptr @Perl_stack_grow, i64 1}
!141 = !{ptr @Perl_pp_match, ptr @Perl_block_gimme, i64 17}
!142 = !{ptr @Perl_pp_match, ptr @Perl_gv_add_by_type, i64 1}
!143 = !{ptr @Perl_pp_match, ptr @Perl_stack_grow, i64 2}
!144 = !{ptr @Perl_pp_match, ptr @S_ReANY, i64 2591931380}
!145 = !{ptr @Perl_pp_match, ptr @Perl_sv_2pv_flags, i64 10798}
!146 = !{ptr @Perl_pp_match, ptr @Perl_die, i64 1}
!147 = !{ptr @Perl_pp_match, ptr @Perl_mg_find_mglob, i64 147335}
!148 = !{ptr @Perl_pp_match, ptr @S_MgBYTEPOS, i64 1}
!149 = !{ptr @Perl_pp_match, ptr @Perl_leave_scope, i64 3}
!150 = !{ptr @Perl_pp_match, ptr @Perl_tmps_grow_p, i64 1}
!151 = !{ptr @Perl_pp_match, ptr @Perl_sv_newmortal, i64 12497}
!152 = !{ptr @Perl_pp_match, ptr @Perl_sv_setpvn, i64 1}
!153 = !{ptr @Perl_pp_helem, ptr @Perl_is_lvalue_sub, i64 1}
!154 = !{ptr @Perl_pp_helem, ptr @Perl_hv_common, i64 547213}
!155 = !{ptr @Perl_pp_helem, ptr @Perl_die, i64 1}
!156 = !{ptr @Perl_pp_helem, ptr @Perl_sv_newmortal, i64 1}
!157 = !{ptr @Perl_pp_helem, ptr @Perl_sv_upgrade, i64 1}
!158 = !{ptr @Perl_pp_helem, ptr @Perl_newSVsv, i64 1}
!159 = !{ptr @Perl_pp_helem, ptr @Perl_sv_magic, i64 1}
!160 = !{ptr @Perl_pp_helem, ptr @S_SvREFCNT_dec_NN, i64 1}
!161 = !{ptr @Perl_pp_helem, ptr @S_SvREFCNT_inc, i64 1}
!162 = !{ptr @Perl_pp_helem, ptr @Perl_vivify_ref, i64 314043}
!163 = !{ptr @Perl_pp_helem, ptr @Perl_mg_get, i64 1}
!164 = !{ptr @S_softref2xv_lite, ptr @Perl_gv_fetchsv, i64 11309}
!165 = !{ptr @Perl_pp_multideref, ptr @Perl_gv_add_by_type, i64 86170777}
!166 = !{ptr @Perl_pp_multideref, ptr @Perl_vivify_ref, i64 461330810}
!167 = !{ptr @Perl_pp_multideref, ptr @Perl_mg_get, i64 12}
!168 = !{ptr @Perl_pp_multideref, ptr @S_softref2xv_lite, i64 116772342}
!169 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_2iv_flags, i64 1}
!170 = !{ptr @Perl_pp_multideref, ptr @Perl_av_fetch, i64 460091148}
!171 = !{ptr @Perl_pp_multideref, ptr @Perl_die, i64 7}
!172 = !{ptr @Perl_pp_multideref, ptr @Perl_av_exists, i64 2}
!173 = !{ptr @Perl_pp_multideref, ptr @Perl_av_delete, i64 1}
!174 = !{ptr @Perl_pp_multideref, ptr @Perl_is_lvalue_sub, i64 2}
!175 = !{ptr @Perl_pp_multideref, ptr @Perl_mg_find, i64 2}
!176 = !{ptr @Perl_pp_multideref, ptr @S_av_top_index, i64 1}
!177 = !{ptr @Perl_pp_multideref, ptr @Perl_newSVavdefelem, i64 1}
!178 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_2mortal, i64 1}
!179 = !{ptr @Perl_pp_multideref, ptr @Perl_stack_grow, i64 1}
!180 = !{ptr @Perl_pp_multideref, ptr @Perl_hv_common, i64 504405158}
!181 = !{ptr @Perl_pp_multideref, ptr @Perl_block_gimme, i64 1}
!182 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_newmortal, i64 5572}
!183 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_upgrade, i64 5572}
!184 = !{ptr @Perl_pp_multideref, ptr @Perl_newSVsv, i64 5572}
!185 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_magic, i64 5572}
!186 = !{ptr @Perl_pp_multideref, ptr @S_SvREFCNT_dec_NN, i64 5572}
!187 = !{ptr @Perl_pp_multideref, ptr @S_SvREFCNT_inc, i64 5572}
!188 = !{ptr @Perl_pp_multideref, ptr @Perl_save_helem_flags, i64 1}
!189 = !{ptr @Perl_pp_multideref, ptr @Perl_save_hdelete, i64 14107}
!190 = !{ptr @Perl_pp_iter, ptr @Perl_stack_grow, i64 1}
!191 = !{ptr @Perl_pp_iter, ptr @Perl_av_fetch, i64 2}
!192 = !{ptr @Perl_pp_iter, ptr @Perl_sv_setsv_flags, i64 1}
!193 = !{ptr @Perl_pp_iter, ptr @Perl_newSVavdefelem, i64 13360637}
!194 = !{ptr @Perl_pp_iter, ptr @S_SvREFCNT_dec, i64 21377020}
!195 = !{ptr @Perl_pp_iter, ptr @Perl_die, i64 1}
!196 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!197 = !{ptr @Perl_pp_subst, ptr @Perl_gv_add_by_type, i64 1}
!198 = !{ptr @Perl_pp_subst, ptr @Perl_stack_grow, i64 1}
!199 = !{ptr @Perl_pp_subst, ptr @Perl_mg_get, i64 1}
!200 = !{ptr @Perl_pp_subst, ptr @Perl_croak_no_modify, i64 3}
!201 = !{ptr @Perl_pp_subst, ptr @Perl_sv_2pv_flags, i64 225572}
!202 = !{ptr @Perl_pp_subst, ptr @Perl_mg_find, i64 685138}
!203 = !{ptr @Perl_pp_subst, ptr @Perl_sv_tainted, i64 19}
!204 = !{ptr @Perl_pp_subst, ptr @S_ReANY, i64 11882473}
!205 = !{ptr @Perl_pp_subst, ptr @Perl_die, i64 29962}
!206 = !{ptr @Perl_pp_subst, ptr @Perl_leave_scope, i64 2}
!207 = !{ptr @Perl_pp_subst, ptr @Perl_sv_chop, i64 9904}
!208 = !{ptr @Perl_pp_subst, ptr @Perl_sv_newmortal, i64 768180}
!209 = !{ptr @Perl_pp_subst, ptr @Perl_sv_setiv, i64 768179}
!210 = !{ptr @Perl_pp_subst, ptr @Perl_newSVpvn_flags, i64 1314430}
!211 = !{ptr @Perl_pp_subst, ptr @Perl_cxinc, i64 1}
!212 = !{ptr @Perl_pp_subst, ptr @Perl_rxres_save, i64 546393}
!213 = !{ptr @Perl_pp_subst, ptr @S_SvREFCNT_inc, i64 546393}
!214 = !{ptr @Perl_pp_subst, ptr @Perl_sv_catpvn_flags, i64 1988892}
!215 = !{ptr @Perl_pp_subst, ptr @Perl__get_encoding, i64 2}
!216 = !{ptr @Perl_pp_subst, ptr @Perl_sv_copypv_flags, i64 2}
!217 = !{ptr @Perl_pp_subst, ptr @Perl_sv_recode_to_utf8, i64 1}
!218 = !{ptr @Perl_pp_subst, ptr @Perl_sv_catsv_flags, i64 236588}
!219 = !{ptr @Perl_pp_subst, ptr @Perl_sv_force_normal_flags, i64 765309}
!220 = !{ptr @Perl_pp_subst, ptr @Perl_safesysfree, i64 2725}
!221 = !{ptr @Perl_pp_subst, ptr @Perl_mg_set, i64 1}
!222 = !{ptr @Perl_pp_grepwhile, ptr @Perl_free_tmps, i64 105}
!223 = !{ptr @Perl_pp_grepwhile, ptr @Perl_pop_scope, i64 20491337}
!224 = !{ptr @Perl_pp_grepwhile, ptr @Perl_push_scope, i64 20491335}
!225 = !{ptr @Perl_pp_grepwhile, ptr @Perl_save_vptr, i64 20491335}
!226 = !{ptr @Perl_pp_grepwhile, ptr @Perl_sv_mortalcopy_flags, i64 1}
!227 = !{ptr @Perl_pp_grepwhile, ptr @S_SvREFCNT_dec, i64 20491334}
!228 = !{ptr @Perl_pp_grepwhile, ptr @S_SvREFCNT_inc, i64 20491334}
!229 = !{ptr @Perl_pp_leavesub, ptr @S_CvDEPTHp, i64 2611083}
!230 = !{ptr @Perl_pp_leavesub, ptr @Perl_sv_mortalcopy_flags, i64 2257941}
!231 = !{ptr @Perl_pp_leavesub, ptr @Perl_stack_grow, i64 609945}
!232 = !{ptr @Perl_pp_leavesub, ptr @Perl_pop_scope, i64 2611083}
!233 = !{ptr @Perl_pp_leavesub, ptr @S_SvREFCNT_dec, i64 5222129}
!234 = !{ptr @Perl_pp_leavesub, ptr @S_SvREFCNT_dec_NN, i64 45}
!235 = !{ptr @Perl_pp_leavesub, ptr @Perl_newSV_type, i64 45}
!236 = !{ptr @Perl_pp_leavesub, ptr @Perl_av_extend, i64 45}
!237 = !{ptr @Perl_pp_leavesub, ptr @Perl_leave_scope, i64 1}
!238 = !{ptr @Perl_pp_entersub, ptr @Perl_die, i64 336861}
!239 = !{ptr @Perl_pp_entersub, ptr @Perl_sv_2cv, i64 5}
!240 = !{ptr @Perl_pp_entersub, ptr @Perl_push_scope, i64 3605913}
!241 = !{ptr @Perl_pp_entersub, ptr @Perl_save_strlen, i64 3396924}
!242 = !{ptr @Perl_pp_entersub, ptr @Perl_mg_get, i64 4}
!243 = !{ptr @Perl_pp_entersub, ptr @Perl_amagic_deref_call, i64 2}
!244 = !{ptr @Perl_pp_entersub, ptr @Perl_sv_2pv_flags, i64 4}
!245 = !{ptr @Perl_pp_entersub, ptr @Perl_get_cvn_flags, i64 363376}
!246 = !{ptr @Perl_pp_entersub, ptr @S_CvGV, i64 1}
!247 = !{ptr @Perl_pp_entersub, ptr @Perl_gv_autoload_pvn, i64 1}
!248 = !{ptr @Perl_pp_entersub, ptr @Perl_sv_newmortal, i64 208990}
!249 = !{ptr @Perl_pp_entersub, ptr @Perl_gv_efullname4, i64 208990}
!250 = !{ptr @Perl_pp_entersub, ptr @Perl_block_gimme, i64 70518}
!251 = !{ptr @Perl_pp_entersub, ptr @Perl_cxinc, i64 1}
!252 = !{ptr @Perl_pp_entersub, ptr @Perl_was_lvalue_sub, i64 68794}
!253 = !{ptr @Perl_pp_entersub, ptr @S_CvDEPTHp, i64 8656542}
!254 = !{ptr @Perl_pp_entersub, ptr @Perl_save_pushptr, i64 5722109}
!255 = !{ptr @Perl_pp_entersub, ptr @Perl_pad_push, i64 1}
!256 = !{ptr @Perl_pp_entersub, ptr @Perl_ckwarn, i64 1}
!257 = !{ptr @Perl_pp_entersub, ptr @Perl_is_lvalue_sub, i64 1}
!258 = !{ptr @Perl_pp_entersub, ptr @Perl_sv_mortalcopy_flags, i64 17548}
!259 = !{ptr @Perl_pp_entersub, ptr @Perl_save_vptr, i64 1}
!260 = !{ptr @Perl_pp_entersub, ptr @Perl_pop_scope, i64 383556}
!261 = !{ptr @Perl_pp_aelem, ptr @Perl_sv_2iv_flags, i64 53929}
!262 = !{ptr @Perl_pp_aelem, ptr @Perl_is_lvalue_sub, i64 1}
!263 = !{ptr @Perl_pp_aelem, ptr @Perl_mg_find, i64 1}
!264 = !{ptr @Perl_pp_aelem, ptr @Perl_av_exists, i64 1}
!265 = !{ptr @Perl_pp_aelem, ptr @Perl_av_fetch, i64 396076}
!266 = !{ptr @Perl_pp_aelem, ptr @Perl_die, i64 1}
!267 = !{ptr @Perl_pp_aelem, ptr @S_av_top_index, i64 1}
!268 = !{ptr @Perl_pp_aelem, ptr @Perl_newSVavdefelem, i64 1}
!269 = !{ptr @Perl_pp_aelem, ptr @Perl_sv_2mortal, i64 1}
!270 = !{ptr @Perl_pp_aelem, ptr @Perl_vivify_ref, i64 1}
!271 = !{ptr @S_opmethod_stash, ptr @Perl_croak, i64 5}
!272 = !{ptr @S_opmethod_stash, ptr @Perl_mg_get, i64 1}
!273 = !{ptr @S_opmethod_stash, ptr @Perl_gv_stashsv, i64 25027}
!274 = !{ptr @S_opmethod_stash, ptr @Perl_sv_2pv_flags, i64 1}
!275 = !{ptr @S_opmethod_stash, ptr @Perl_gv_stashpvn, i64 103}
!276 = !{ptr @S_opmethod_stash, ptr @Perl_gv_fetchpvn_flags, i64 51}
!277 = !{ptr @S_opmethod_stash, ptr @strcmp, i64 1}
!278 = !{ptr @Perl_pp_method_named, ptr @S_opmethod_stash, i64 718982}
!279 = !{ptr @Perl_pp_method_named, ptr @Perl_hv_common, i64 1}
!280 = !{ptr @Perl_pp_method_named, ptr @Perl_gv_fetchmethod_sv_flags, i64 718981}
!281 = !{ptr @Perl_pp_method_named, ptr @Perl_stack_grow, i64 25678}
!282 = !{ptr @Perl_pp_method_super, ptr @S_opmethod_stash, i64 1}
!283 = !{ptr @Perl_pp_method_super, ptr @Perl_gv_fetchmethod_sv_flags, i64 1}
!284 = !{ptr @Perl_pp_method_redir, ptr @Perl_gv_stashsv, i64 3}
!285 = !{ptr @Perl_pp_method_redir, ptr @S_opmethod_stash, i64 3}
!286 = !{ptr @Perl_pp_method_redir, ptr @Perl_hv_common, i64 2}
!287 = !{ptr @Perl_pp_method_redir, ptr @Perl_gv_fetchmethod_sv_flags, i64 2}
!288 = !{ptr @Perl_pp_method_redir, ptr @Perl_stack_grow, i64 1}
!289 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!290 = !{!"function_entry_count", i64 110983018}
!291 = !{!292, !292, i64 0}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C/C++ TBAA"}
!295 = !{!"branch_weights", i32 1, i32 110983019}
!296 = !{!297, !292, i64 40}
!297 = !{!"svop", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !292, i64 40}
!298 = !{!"long", !293, i64 0}
!299 = !{!"int", !293, i64 0}
!300 = !{!301, !292, i64 0}
!301 = !{!"op", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35}
!302 = !{!"function_entry_count", i64 209457315}
!303 = !{!304, !304, i64 0}
!304 = !{!"_Bool", !293, i64 0}
!305 = !{!306, !292, i64 8}
!306 = !{!"stackinfo", !292, i64 0, !292, i64 8, !292, i64 16, !292, i64 24, !299, i64 32, !299, i64 36, !299, i64 40, !299, i64 44}
!307 = !{!306, !299, i64 32}
!308 = !{!293, !293, i64 0}
!309 = !{!298, !298, i64 0}
!310 = !{!"branch_weights", i32 6589631, i32 202867686}
!311 = !{!299, !299, i64 0}
!312 = !{!"branch_weights", i32 209457316, i32 1}
!313 = !{!"function_entry_count", i64 528717179}
!314 = !{!"branch_weights", i32 1, i32 528717180}
!315 = !{!301, !293, i64 35}
!316 = !{!"branch_weights", i32 528717180, i32 1}
!317 = !{!"branch_weights", i32 1, i32 528577574}
!318 = !{!319, !299, i64 28}
!319 = !{!"gp", !292, i64 0, !292, i64 8, !292, i64 16, !299, i64 24, !299, i64 28, !292, i64 32, !292, i64 40, !292, i64 48, !292, i64 56, !299, i64 64, !299, i64 67, !292, i64 72}
!320 = !{!"branch_weights", i32 1065950, i32 527651231}
!321 = !{!"branch_weights", i32 527625212, i32 26020}
!322 = !{!"function_entry_count", i64 1905854}
!323 = !{!"function_entry_count", i64 12667207}
!324 = !{!"branch_weights", i32 1, i32 12667208}
!325 = !{!"function_entry_count", i64 67362}
!326 = !{!301, !298, i64 24}
!327 = !{!328, !299, i64 12}
!328 = !{!"sv", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!329 = !{!"branch_weights", i32 67363, i32 1}
!330 = !{!"function_entry_count", i64 3897224}
!331 = !{!"branch_weights", i32 1, i32 3897225}
!332 = !{!333, !299, i64 12}
!333 = !{!"gv", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!334 = !{!"branch_weights", i32 3897225, i32 1}
!335 = !{!"branch_weights", i32 384429, i32 3512797}
!336 = !{!"branch_weights", i32 3512794, i32 4}
!337 = !{!"function_entry_count", i64 160439111}
!338 = !{!"branch_weights", i32 160439112, i32 1}
!339 = !{!"branch_weights", i32 1, i32 17077}
!340 = !{!"branch_weights", i32 1, i32 -1}
!341 = !{!"branch_weights", i32 -1307559151, i32 6832}
!342 = !{!"branch_weights", i32 1, i32 159984780}
!343 = !{!328, !292, i64 0}
!344 = !{!"branch_weights", i32 24702367, i32 135282414}
!345 = !{!346, !298, i64 16}
!346 = !{!"xpv", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24}
!347 = !{!"branch_weights", i32 34667, i32 135247748}
!348 = !{!"branch_weights", i32 71367460, i32 63880289}
!349 = !{!"branch_weights", i32 1, i32 -319823036}
!350 = !{!"branch_weights", i32 39177923, i32 24702367}
!351 = !{!"branch_weights", i32 147220, i32 24555148}
!352 = !{!"branch_weights", i32 23282983, i32 1272166}
!353 = !{!"branch_weights", i32 23430202, i32 1}
!354 = !{!"branch_weights", i32 -1, i32 0}
!355 = !{!"branch_weights", i32 -1, i32 1}
!356 = !{!"branch_weights", i32 65187135, i32 1}
!357 = !{!"function_entry_count", i64 74504641}
!358 = !{!"branch_weights", i32 74266319, i32 238324}
!359 = !{i8 0, i8 2}
!360 = !{}
!361 = !{!"branch_weights", i32 74504642, i32 1}
!362 = !{!"branch_weights", i32 9, i32 556}
!363 = !{!"branch_weights", i32 -1929379840, i32 4194304}
!364 = !{!301, !293, i64 34}
!365 = !{!328, !299, i64 8}
!366 = !{!"branch_weights", i32 32356983, i32 2115126665}
!367 = !{!319, !292, i64 16}
!368 = !{!"branch_weights", i32 1, i32 224}
!369 = !{!"branch_weights", i32 74504638, i32 1}
!370 = !{!"function_entry_count", i64 0}
!371 = !{!"pp_hot.c:S_SvREFCNT_inc_void"}
!372 = !{!"function_entry_count", i64 50081}
!373 = !{!"pp_hot.c:S_SvREFCNT_dec_NN"}
!374 = !{!"branch_weights", i32 1, i32 50082}
!375 = !{!"function_entry_count", i64 8271266}
!376 = !{!"branch_weights", i32 8271267, i32 1}
!377 = !{!"branch_weights", i32 -2147483648, i32 0}
!378 = !{!"branch_weights", i32 -1897163926, i32 59317217}
!379 = !{!"branch_weights", i32 1, i32 6702599}
!380 = !{!"branch_weights", i32 1368982, i32 6702599}
!381 = !{!"branch_weights", i32 72361, i32 6630239}
!382 = !{!"branch_weights", i32 4971573, i32 1658667}
!383 = !{!"branch_weights", i32 0, i32 -2147483648}
!384 = !{!"branch_weights", i32 289725, i32 1368943}
!385 = !{!"branch_weights", i32 40, i32 1368943}
!386 = !{!"branch_weights", i32 1077654, i32 291290}
!387 = !{!"branch_weights", i32 1077693, i32 1}
!388 = !{!"function_entry_count", i64 442530218}
!389 = !{!"branch_weights", i32 442530219, i32 1}
!390 = !{!"branch_weights", i32 366201, i32 442164019}
!391 = !{!"branch_weights", i32 422040305, i32 20489915}
!392 = !{!"branch_weights", i32 20619135, i32 401421171}
!393 = !{!"function_entry_count", i64 2116962}
!394 = !{!"branch_weights", i32 879728, i32 1237236}
!395 = !{!"branch_weights", i32 2116963, i32 1}
!396 = !{!"branch_weights", i32 1, i32 30763}
!397 = !{!"branch_weights", i32 1, i32 2116963}
!398 = !{!399, !299, i64 56}
!399 = !{!"cop", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !299, i64 36, !292, i64 40, !292, i64 48, !299, i64 56, !299, i64 60, !292, i64 64, !292, i64 72}
!400 = !{!"branch_weights", i32 1237236, i32 879728}
!401 = !{!"branch_weights", i32 856199, i32 23530}
!402 = !{!"branch_weights", i32 879728, i32 1}
!403 = !{!"branch_weights", i32 1, i32 1237236}
!404 = !{!"branch_weights", i32 1130707, i32 106530}
!405 = !{!"branch_weights", i32 1237236, i32 1}
!406 = !{!"branch_weights", i32 2032028, i32 84936}
!407 = !{!"function_entry_count", i64 3453601}
!408 = !{!"branch_weights", i32 2779551, i32 674052}
!409 = !{!"branch_weights", i32 1, i32 674052}
!410 = !{!319, !292, i64 40}
!411 = !{!"branch_weights", i32 685682, i32 2767921}
!412 = !{!"branch_weights", i32 1, i32 2767921}
!413 = !{!"branch_weights", i32 1, i32 2767920}
!414 = !{!"branch_weights", i32 2767920, i32 5051127}
!415 = distinct !{!415, !416}
!416 = !{!"llvm.loop.mustprogress"}
!417 = !{!"branch_weights", i32 1148493, i32 2305110}
!418 = !{!"branch_weights", i32 1, i32 2305110}
!419 = !{!"branch_weights", i32 1, i32 2305109}
!420 = !{!"branch_weights", i32 2305109, i32 6199017}
!421 = distinct !{!421, !416}
!422 = !{!"function_entry_count", i64 819508}
!423 = !{!"pp_hot.c:S_pushav"}
!424 = !{!"branch_weights", i32 819509, i32 1}
!425 = !{!426, !292, i64 0}
!426 = !{!"av", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!427 = !{!428, !298, i64 16}
!428 = !{!"xpvav", !292, i64 0, !293, i64 8, !298, i64 16, !298, i64 24, !292, i64 32}
!429 = !{!426, !299, i64 12}
!430 = !{!"branch_weights", i32 1, i32 819508}
!431 = distinct !{!431, !416}
!432 = !{!"branch_weights", i32 3899811, i32 1}
!433 = !{!"branch_weights", i32 819508, i32 3080303}
!434 = distinct !{!434, !416}
!435 = !{!"function_entry_count", i64 8504125}
!436 = !{!"pp_hot.c:S_SvPADSTALE_off"}
!437 = !{!"function_entry_count", i64 210806876}
!438 = !{!"branch_weights", i32 1, i32 210806877}
!439 = !{!"branch_weights", i32 148824740, i32 61982138}
!440 = !{!"branch_weights", i32 -1406078851, i32 -677137510}
!441 = !{!"branch_weights", i32 59132485, i32 2849654}
!442 = !{!"function_entry_count", i64 464500736}
!443 = !{!"branch_weights", i32 464500737, i32 1}
!444 = !{!"branch_weights", i32 11292, i32 464489446}
!445 = !{!"branch_weights", i32 22585, i32 127509264}
!446 = !{!"branch_weights", i32 11292, i32 1}
!447 = !{!"branch_weights", i32 609769, i32 126922080}
!448 = !{!"branch_weights", i32 1, i32 53}
!449 = !{!"branch_weights", i32 1, i32 1, i32 11237, i32 56}
!450 = !{!"function_entry_count", i64 1}
!451 = !{!"branch_weights", i32 1, i32 2}
!452 = !{!"branch_weights", i32 2, i32 1}
!453 = !{!454, !292, i64 0}
!454 = !{!"xpvmg", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24, !293, i64 32, !293, i64 40}
!455 = !{!456, !299, i64 12}
!456 = !{!"hv", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!457 = distinct !{!457, !416}
!458 = !{!"branch_weights", i32 5, i32 1}
!459 = !{!"pp_hot.c:S_av_top_index"}
!460 = !{!319, !292, i64 8}
!461 = !{!462, !292, i64 0}
!462 = !{!"io", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!463 = !{!464, !293, i64 129}
!464 = !{!"xpvio", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24, !293, i64 32, !292, i64 40, !293, i64 48, !298, i64 56, !298, i64 64, !298, i64 72, !292, i64 80, !292, i64 88, !292, i64 96, !292, i64 104, !292, i64 112, !292, i64 120, !293, i64 128, !293, i64 129}
!465 = !{!319, !292, i64 0}
!466 = !{!464, !293, i64 128}
!467 = !{!"branch_weights", i32 2, i32 207}
!468 = !{!"branch_weights", i32 7, i32 2}
!469 = !{!"branch_weights", i32 207, i32 1}
!470 = !{!"branch_weights", i32 1, i32 207}
!471 = distinct !{!471, !416}
!472 = !{!"branch_weights", i32 198, i32 10}
!473 = !{!"function_entry_count", i64 401975}
!474 = !{!"branch_weights", i32 401976, i32 1}
!475 = !{!"function_entry_count", i64 420611460}
!476 = !{!"branch_weights", i32 1, i32 420611461}
!477 = !{!"branch_weights", i32 6, i32 -1760248448}
!478 = !{!"branch_weights", i32 1, i32 420523972}
!479 = !{!"branch_weights", i32 420611461, i32 1}
!480 = !{!"function_entry_count", i64 446371688}
!481 = !{!"branch_weights", i32 446371689, i32 1}
!482 = !{!"branch_weights", i32 1, i32 21396}
!483 = !{!"branch_weights", i32 -107006376, i32 5720}
!484 = !{!"branch_weights", i32 1, i32 445618135}
!485 = !{!"branch_weights", i32 816659, i32 444801477}
!486 = !{!"branch_weights", i32 309793, i32 444491685}
!487 = !{!"branch_weights", i32 421789461, i32 22702225}
!488 = !{!"branch_weights", i32 1, i32 -745733089}
!489 = !{!"branch_weights", i32 21885567, i32 816659}
!490 = !{!"branch_weights", i32 53387, i32 763273}
!491 = !{!"branch_weights", i32 463935, i32 299339}
!492 = !{!"branch_weights", i32 517321, i32 1}
!493 = !{!"branch_weights", i32 -25, i32 0}
!494 = !{!"function_entry_count", i64 4485691}
!495 = !{!"branch_weights", i32 14, i32 1}
!496 = !{!"branch_weights", i32 1, i32 14}
!497 = !{!"branch_weights", i32 1, i32 4485679}
!498 = !{!"branch_weights", i32 3257607, i32 1, i32 1, i32 181995}
!499 = !{!428, !298, i64 24}
!500 = !{!"branch_weights", i32 3257607, i32 1}
!501 = !{!"branch_weights", i32 4, i32 11}
!502 = !{!"branch_weights", i32 3031211, i32 408378}
!503 = !{!"function_entry_count", i64 594285}
!504 = !{!"branch_weights", i32 555969, i32 38318}
!505 = !{!"branch_weights", i32 594286, i32 1}
!506 = !{!"branch_weights", i32 1, i32 594286}
!507 = !{!"branch_weights", i32 -1704474622, i32 4358}
!508 = !{!"branch_weights", i32 17435, i32 1}
!509 = !{!"branch_weights", i32 587870, i32 6417}
!510 = !{!"branch_weights", i32 415237, i32 179050}
!511 = !{!"branch_weights", i32 185466, i32 408821}
!512 = !{!"branch_weights", i32 408821, i32 185466}
!513 = !{!"branch_weights", i32 16177, i32 169290}
!514 = !{!"branch_weights", i32 5253, i32 2147478395}
!515 = !{!"branch_weights", i32 22593, i32 571694}
!516 = !{!"branch_weights", i32 571694, i32 1}
!517 = !{!"branch_weights", i32 22593, i32 1}
!518 = !{!"function_entry_count", i64 1082537}
!519 = !{!"branch_weights", i32 18971, i32 1063568}
!520 = !{!"branch_weights", i32 534, i32 1082005}
!521 = !{!"branch_weights", i32 534, i32 1}
!522 = !{!"branch_weights", i32 1, i32 1082538}
!523 = !{!"branch_weights", i32 1076121, i32 6418}
!524 = !{!"branch_weights", i32 1076121, i32 1}
!525 = !{!"function_entry_count", i64 219397}
!526 = !{!"function_entry_count", i64 598560}
!527 = !{!"branch_weights", i32 1, i32 598561}
!528 = !{!"function_entry_count", i64 30709}
!529 = !{!"branch_weights", i32 18548, i32 12163}
!530 = !{!"branch_weights", i32 1, i32 30710}
!531 = !{!"branch_weights", i32 1, i32 61421}
!532 = !{!"branch_weights", i32 30710, i32 1}
!533 = !{!319, !292, i64 56}
!534 = !{!464, !292, i64 40}
!535 = !{!"branch_weights", i32 431599, i32 -981525188}
!536 = !{!"branch_weights", i32 1, i32 30709}
!537 = !{!"branch_weights", i32 42074, i32 1}
!538 = !{!"branch_weights", i32 30709, i32 11365}
!539 = distinct !{!539, !416}
!540 = !{!"branch_weights", i32 12804, i32 17907}
!541 = !{!"branch_weights", i32 1, i32 17907}
!542 = !{!"function_entry_count", i64 24481279}
!543 = !{!"branch_weights", i32 1, i32 24481280}
!544 = !{!"branch_weights", i32 24481280, i32 1}
!545 = !{!"branch_weights", i32 1155431, i32 23325850}
!546 = !{!"branch_weights", i32 23063368, i32 262483}
!547 = !{!"branch_weights", i32 262483, i32 1}
!548 = !{!"branch_weights", i32 23325850, i32 1}
!549 = !{!"branch_weights", i32 21761262, i32 1564589}
!550 = !{!"branch_weights", i32 1564589, i32 1}
!551 = !{!"branch_weights", i32 1155431, i32 1}
!552 = !{!"branch_weights", i32 -1692411947, i32 287458}
!553 = !{!"branch_weights", i32 1, i32 127}
!554 = !{!"branch_weights", i32 416808, i32 737662}
!555 = !{!319, !292, i64 32}
!556 = !{!"branch_weights", i32 737662, i32 416808}
!557 = !{!"branch_weights", i32 1143249, i32 11221}
!558 = !{!"branch_weights", i32 21501494, i32 2979787}
!559 = !{!"branch_weights", i32 21501494, i32 1}
!560 = !{!"branch_weights", i32 2768, i32 23687547, i32 -819009152}
!561 = !{!"branch_weights", i32 21344799, i32 1}
!562 = !{!"branch_weights", i32 5589, i32 5635}
!563 = !{!"branch_weights", i32 18, i32 5618}
!564 = !{!"branch_weights", i32 18, i32 1}
!565 = !{!"branch_weights", i32 5618, i32 1}
!566 = !{!567, !298, i64 16}
!567 = !{!"xpvhv", !292, i64 0, !293, i64 8, !298, i64 16, !298, i64 24}
!568 = !{!"branch_weights", i32 5617, i32 2}
!569 = !{!"branch_weights", i32 2, i32 17}
!570 = !{!571, !571, i64 0}
!571 = !{!"short", !293, i64 0}
!572 = !{!"branch_weights", i32 3, i32 4220261}
!573 = !{!"branch_weights", i32 2, i32 4220262}
!574 = !{!"branch_weights", i32 -1667287588, i32 752552900}
!575 = !{!"branch_weights", i32 221755, i32 717817}
!576 = !{!"branch_weights", i32 1, i32 221755}
!577 = !{!"branch_weights", i32 221755, i32 1}
!578 = !{!"branch_weights", i32 -208612373, i32 608157}
!579 = !{!"branch_weights", i32 203327, i32 18397}
!580 = !{!"branch_weights", i32 114813, i32 88515}
!581 = !{!"branch_weights", i32 18397, i32 1}
!582 = !{!"branch_weights", i32 11998, i32 6400}
!583 = !{!"branch_weights", i32 812762, i32 1}
!584 = !{!"branch_weights", i32 1, i32 812761}
!585 = !{!"branch_weights", i32 2248441, i32 1}
!586 = !{!"branch_weights", i32 1, i32 2248441}
!587 = !{!"branch_weights", i32 812761, i32 1435680}
!588 = distinct !{!588, !416}
!589 = !{!"branch_weights", i32 1, i32 4220262}
!590 = !{!"branch_weights", i32 1, i32 9176246}
!591 = !{!"branch_weights", i32 8863058, i32 288150, i32 25040}
!592 = !{!"branch_weights", i32 1, i32 288149}
!593 = !{!"branch_weights", i32 1395513, i32 1}
!594 = !{!"branch_weights", i32 1395493, i32 21}
!595 = !{!"branch_weights", i32 1, i32 21}
!596 = !{!"branch_weights", i32 288149, i32 1107364}
!597 = distinct !{!597, !416}
!598 = !{!"branch_weights", i32 288150, i32 1}
!599 = !{!"branch_weights", i32 20, i32 1}
!600 = !{!"branch_weights", i32 1, i32 25040}
!601 = !{!"branch_weights", i32 25039, i32 1}
!602 = !{!"branch_weights", i32 159017, i32 1}
!603 = !{!"branch_weights", i32 1, i32 159017}
!604 = !{!"branch_weights", i32 133978, i32 25039}
!605 = distinct !{!605, !416}
!606 = !{!"branch_weights", i32 2147397885, i32 85763}
!607 = distinct !{!607, !416}
!608 = !{!"branch_weights", i32 8863029, i32 30}
!609 = !{!"branch_weights", i32 123, i32 1}
!610 = !{!"branch_weights", i32 761544, i32 8101486}
!611 = !{!"branch_weights", i32 8101486, i32 1}
!612 = !{!"branch_weights", i32 8863029, i32 1}
!613 = !{!"branch_weights", i32 4220262, i32 4955984}
!614 = distinct !{!614, !416}
!615 = !{!"branch_weights", i32 4220263, i32 1}
!616 = !{!"branch_weights", i32 1805, i32 -537472760, i32 52149159}
!617 = !{!"branch_weights", i32 57771, i32 1}
!618 = distinct !{!618, !416}
!619 = !{!"pp_hot.c:S_do_oddball"}
!620 = !{!"function_entry_count", i64 3}
!621 = !{!622, !292, i64 56}
!622 = !{!"pmop", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !292, i64 40, !292, i64 48, !292, i64 56, !299, i64 64, !293, i64 72, !293, i64 80, !292, i64 88}
!623 = !{!"branch_weights", i32 1, i32 4}
!624 = !{!625, !292, i64 32}
!625 = !{!"regexp", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24, !292, i64 32, !292, i64 40, !292, i64 48, !299, i64 56, !298, i64 64, !298, i64 72, !298, i64 80, !292, i64 88, !299, i64 96, !299, i64 100, !292, i64 104, !299, i64 112, !299, i64 116, !292, i64 120, !292, i64 128, !292, i64 136, !298, i64 144, !298, i64 152, !298, i64 160, !298, i64 168, !299, i64 176, !299, i64 176, !292, i64 184}
!626 = !{!627, !292, i64 80}
!627 = !{!"regexp_engine", !292, i64 0, !292, i64 8, !292, i64 16, !292, i64 24, !292, i64 32, !292, i64 40, !292, i64 48, !292, i64 56, !292, i64 64, !292, i64 72, !292, i64 80, !292, i64 88}
!628 = !{!"branch_weights", i32 4, i32 1}
!629 = !{!630, !292, i64 0}
!630 = !{!"cv", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!631 = !{!632, !299, i64 92}
!632 = !{!"xpvcv", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24, !292, i64 32, !293, i64 40, !293, i64 48, !293, i64 56, !292, i64 64, !293, i64 72, !292, i64 80, !299, i64 88, !299, i64 92, !299, i64 96}
!633 = !{!625, !299, i64 56}
!634 = !{!"branch_weights", i32 9, i32 1}
!635 = !{!"function_entry_count", i64 3033009960}
!636 = !{!"pp_hot.c:S_ReANY"}
!637 = !{!"function_entry_count", i64 424923171}
!638 = !{!"branch_weights", i32 17, i32 424923156}
!639 = !{!"branch_weights", i32 4480129, i32 420443044}
!640 = !{!"branch_weights", i32 874150, i32 3605980}
!641 = !{!"branch_weights", i32 1, i32 874150}
!642 = !{!625, !292, i64 40}
!643 = !{!"branch_weights", i32 424923145, i32 28}
!644 = !{!"branch_weights", i32 28, i32 424923145}
!645 = !{!"branch_weights", i32 424912403, i32 10770}
!646 = !{!"branch_weights", i32 1, i32 424923172}
!647 = !{!"branch_weights", i32 424923172, i32 1}
!648 = !{!622, !299, i64 64}
!649 = !{!650, !292, i64 0}
!650 = !{!"p5rx", !292, i64 0, !299, i64 8, !299, i64 12, !293, i64 16}
!651 = !{!"branch_weights", i32 1, i32 424923145}
!652 = !{!625, !298, i64 64}
!653 = !{!"branch_weights", i32 4440715, i32 -1608858773}
!654 = !{!"branch_weights", i32 424154348, i32 67496}
!655 = !{!"branch_weights", i32 67496, i32 1}
!656 = !{!657, !298, i64 24}
!657 = !{!"magic", !292, i64 0, !292, i64 8, !571, i64 16, !293, i64 18, !293, i64 19, !298, i64 24, !292, i64 32, !292, i64 40}
!658 = !{!657, !293, i64 19}
!659 = !{!"branch_weights", i32 1, i32 67496}
!660 = !{!627, !292, i64 8}
!661 = !{!"branch_weights", i32 402681234, i32 21540610}
!662 = !{!"branch_weights", i32 21540610, i32 1}
!663 = !{!"branch_weights", i32 1, i32 21540610}
!664 = !{!625, !292, i64 120}
!665 = !{!666, !298, i64 8}
!666 = !{!"regexp_paren_pair", !298, i64 0, !298, i64 8, !298, i64 16}
!667 = !{!666, !298, i64 0}
!668 = !{!625, !298, i64 80}
!669 = !{!625, !299, i64 96}
!670 = !{!"branch_weights", i32 -1626378310, i32 822115}
!671 = !{!"branch_weights", i32 1, i32 21533977}
!672 = !{!"branch_weights", i32 6634, i32 1}
!673 = !{!"branch_weights", i32 1, i32 6634}
!674 = !{!"branch_weights", i32 1, i32 6633}
!675 = !{!"branch_weights", i32 4721, i32 7777}
!676 = !{!"branch_weights", i32 7777, i32 1}
!677 = !{!"branch_weights", i32 1, i32 7777}
!678 = !{!"branch_weights", i32 15555, i32 60481729}
!679 = !{!"branch_weights", i32 6633, i32 5864}
!680 = distinct !{!680, !416}
!681 = !{!"branch_weights", i32 403302723, i32 79841}
!682 = !{!"branch_weights", i32 79841, i32 1}
!683 = !{!"branch_weights", i32 1, i32 403382563}
!684 = !{!"branch_weights", i32 5635, i32 403376929}
!685 = !{!"pp_hot.c:S_MgBYTEPOS"}
!686 = !{!"pp_hot.c:S_sv_only_taint_gmagic"}
!687 = !{!657, !293, i64 18}
!688 = !{!657, !292, i64 8}
!689 = !{!690, !292, i64 0}
!690 = !{!"mgvtbl", !292, i64 0, !292, i64 8, !292, i64 16, !292, i64 24, !292, i64 32, !292, i64 40, !292, i64 48, !292, i64 56}
!691 = distinct !{!691, !416}
!692 = !{!"function_entry_count", i64 547213}
!693 = !{!"branch_weights", i32 210644, i32 336571}
!694 = !{!"branch_weights", i32 210644, i32 1}
!695 = !{!"branch_weights", i32 547214, i32 1}
!696 = !{!657, !292, i64 32}
!697 = !{!"branch_weights", i32 336571, i32 210644}
!698 = !{!"branch_weights", i32 1, i32 336571}
!699 = !{!"branch_weights", i32 21035, i32 -754966108}
!700 = !{!701, !293, i64 72}
!701 = !{!"xpvlv", !292, i64 0, !293, i64 8, !298, i64 16, !293, i64 24, !293, i64 32, !293, i64 40, !293, i64 48, !298, i64 56, !292, i64 64, !293, i64 72, !293, i64 73}
!702 = !{!701, !292, i64 64}
!703 = !{!701, !298, i64 56}
!704 = !{!"branch_weights", i32 336571, i32 1}
!705 = !{!456, !292, i64 0}
!706 = !{!567, !298, i64 24}
!707 = !{!708, !299, i64 28}
!708 = !{!"xpvhv_aux", !293, i64 0, !292, i64 8, !292, i64 16, !299, i64 24, !299, i64 28, !292, i64 32, !299, i64 40, !299, i64 44, !299, i64 48, !299, i64 52}
!709 = !{!"branch_weights", i32 22523, i32 314049}
!710 = !{!"branch_weights", i32 1, i32 233166}
!711 = !{!"branch_weights", i32 10195, i32 2147473453}
!712 = !{!"function_entry_count", i64 21085039}
!713 = !{!"pp_hot.c:S_SvREFCNT_inc"}
!714 = !{!"branch_weights", i32 21085040, i32 1}
!715 = !{!"function_entry_count", i64 11309}
!716 = !{!"branch_weights", i32 11310, i32 1}
!717 = !{!"branch_weights", i32 1, i32 11310}
!718 = !{!"function_entry_count", i64 504929099}
!719 = !{!720, !292, i64 48}
!720 = !{!"unop_aux", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !292, i64 40, !292, i64 48}
!721 = !{!"branch_weights", i32 1, i32 1, i32 223575, i32 291012, i32 124842, i32 1, i32 271833, i32 459179900, i32 843252, i32 501682790, i32 42, i32 5, i32 1491757, i32 387325}
!722 = !{!"branch_weights", i32 1, i32 291012}
!723 = !{!"branch_weights", i32 459576573, i32 1}
!724 = !{!"branch_weights", i32 459557373, i32 19201}
!725 = !{!"branch_weights", i32 19201, i32 1}
!726 = !{!"branch_weights", i32 1, i32 1, i32 338101, i32 733958, i32 459019101}
!727 = !{!"branch_weights", i32 1, i32 459019101}
!728 = !{!"branch_weights", i32 459753058, i32 1}
!729 = !{!"branch_weights", i32 12801, i32 460078358}
!730 = !{!"branch_weights", i32 1, i32 12801}
!731 = !{!"branch_weights", i32 460078358, i32 1}
!732 = !{!"branch_weights", i32 459921485, i32 156874}
!733 = !{!"branch_weights", i32 459921485, i32 1}
!734 = !{!"branch_weights", i32 156874, i32 459921485}
!735 = !{!"branch_weights", i32 1, i32 156874}
!736 = !{!"branch_weights", i32 156874, i32 1}
!737 = !{!"branch_weights", i32 51901, i32 459869585}
!738 = !{!"branch_weights", i32 1, i32 504831112}
!739 = !{!"branch_weights", i32 1, i32 501682790}
!740 = !{!"branch_weights", i32 1, i32 5}
!741 = !{!"branch_weights", i32 1879126, i32 1}
!742 = !{!"branch_weights", i32 955506, i32 912308}
!743 = !{!"branch_weights", i32 912308, i32 1}
!744 = !{!"branch_weights", i32 1867813, i32 1}
!745 = !{!"branch_weights", i32 1, i32 11314}
!746 = !{!"branch_weights", i32 5, i32 11310}
!747 = !{!"branch_weights", i32 11, i32 1}
!748 = !{!"branch_weights", i32 1, i32 1, i32 1227079, i32 482068792, i32 21109297}
!749 = !{!"branch_weights", i32 1, i32 21109297}
!750 = !{!"branch_weights", i32 459554424, i32 44850743}
!751 = !{!"branch_weights", i32 1, i32 459554424}
!752 = !{!"branch_weights", i32 13, i32 -1147987061}
!753 = !{!"branch_weights", i32 24170981, i32 20679763}
!754 = !{!"branch_weights", i32 110790, i32 20568974}
!755 = !{!"branch_weights", i32 1, i32 110790}
!756 = !{!"branch_weights", i32 97989, i32 12802}
!757 = !{!"branch_weights", i32 6401, i32 6402}
!758 = !{!"branch_weights", i32 23288079, i32 882903}
!759 = !{!"branch_weights", i32 23288079, i32 1}
!760 = !{!"branch_weights", i32 24170981, i32 1}
!761 = !{!"branch_weights", i32 1, i32 14108}
!762 = !{!"branch_weights", i32 14108, i32 1}
!763 = !{!"branch_weights", i32 882903, i32 23288079}
!764 = !{!"branch_weights", i32 5571, i32 877333}
!765 = !{!"branch_weights", i32 6854, i32 -1288275137}
!766 = !{!"branch_weights", i32 1, i32 5571}
!767 = !{!"branch_weights", i32 863226, i32 14108}
!768 = !{!"branch_weights", i32 1044145, i32 22243935}
!769 = !{!"branch_weights", i32 1, i32 22243935}
!770 = !{!"branch_weights", i32 23286486, i32 1594}
!771 = !{!"branch_weights", i32 1586, i32 9}
!772 = !{!"function_entry_count", i64 21377025}
!773 = !{!"branch_weights", i32 1, i32 21377026}
!774 = !{!775, !298, i64 24}
!775 = !{!"loop", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !292, i64 40, !292, i64 48, !292, i64 56, !292, i64 64, !292, i64 72}
!776 = !{!"branch_weights", i32 83226, i32 21293801}
!777 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 21377026}
!778 = !{!"branch_weights", i32 20594484, i32 782543}
!779 = !{!"branch_weights", i32 21377026, i32 1}
!780 = !{!"branch_weights", i32 -851940713, i32 324}
!781 = !{!"branch_weights", i32 1, i32 248742}
!782 = !{!"branch_weights", i32 21243455, i32 1}
!783 = !{!"branch_weights", i32 2147483547, i32 101}
!784 = !{!"branch_weights", i32 1, i32 21243455}
!785 = !{!"function_entry_count", i64 46949896}
!786 = !{!"pp_hot.c:S_SvREFCNT_dec"}
!787 = !{!"branch_weights", i32 46949897, i32 1}
!788 = !{!"branch_weights", i32 1, i32 46904369}
!789 = !{!"function_entry_count", i64 3834864}
!790 = !{!"branch_weights", i32 1200768, i32 2634098}
!791 = !{!"branch_weights", i32 3834865, i32 1}
!792 = !{!"branch_weights", i32 2890243, i32 944623}
!793 = !{!"branch_weights", i32 592733, i32 2297511}
!794 = !{!"branch_weights", i32 1, i32 592733}
!795 = !{!"branch_weights", i32 1, i32 3834865}
!796 = !{!"branch_weights", i32 560, i32 2147483088}
!797 = !{!"branch_weights", i32 3609311, i32 225555}
!798 = !{!"branch_weights", i32 1872, i32 -704588984}
!799 = !{!"branch_weights", i32 3149727, i32 685139}
!800 = !{!"branch_weights", i32 685139, i32 1}
!801 = !{!"branch_weights", i32 2430700, i32 1404166}
!802 = !{!"branch_weights", i32 2430700, i32 1}
!803 = !{!"branch_weights", i32 1, i32 2430700}
!804 = !{!"branch_weights", i32 550697, i32 853470}
!805 = !{!"branch_weights", i32 853470, i32 1}
!806 = !{!"branch_weights", i32 853454, i32 17}
!807 = !{!"branch_weights", i32 1, i32 17}
!808 = !{!"branch_weights", i32 760750858, i32 1386732790}
!809 = !{!625, !298, i64 72}
!810 = !{!"branch_weights", i32 31014, i32 520114}
!811 = !{!"branch_weights", i32 508659, i32 11456}
!812 = !{!"branch_weights", i32 11456, i32 1}
!813 = !{!"branch_weights", i32 512691, i32 7424}
!814 = !{!"branch_weights", i32 512691, i32 1}
!815 = !{!"branch_weights", i32 537477951, i32 -1361296105}
!816 = !{!"branch_weights", i32 1, i32 79385}
!817 = !{!"branch_weights", i32 1871, i32 -704590855}
!818 = !{!"branch_weights", i32 79240, i32 146}
!819 = !{!"branch_weights", i32 79240, i32 1}
!820 = !{!"branch_weights", i32 69259, i32 9982}
!821 = !{!"branch_weights", i32 64654, i32 4606}
!822 = !{!"branch_weights", i32 1, i32 69259}
!823 = !{!"branch_weights", i32 159, i32 9824}
!824 = !{!"branch_weights", i32 9811, i32 172}
!825 = !{!"branch_weights", i32 1, i32 422}
!826 = !{!"branch_weights", i32 422, i32 1}
!827 = !{!"branch_weights", i32 213, i32 210}
!828 = !{!"branch_weights", i32 210, i32 1}
!829 = !{!"branch_weights", i32 178, i32 245}
!830 = !{!"branch_weights", i32 146, i32 277}
!831 = distinct !{!831, !416}
!832 = !{!"branch_weights", i32 17, i32 130}
!833 = !{!"branch_weights", i32 891476, i32 1}
!834 = !{!"branch_weights", i32 127, i32 239361}
!835 = !{!"branch_weights", i32 1324782, i32 1}
!836 = !{!"branch_weights", i32 550697, i32 774086}
!837 = !{!306, !299, i64 36}
!838 = !{!"branch_weights", i32 550697, i32 1}
!839 = !{!"branch_weights", i32 1, i32 1012537}
!840 = !{!"branch_weights", i32 1012537, i32 1}
!841 = !{!"branch_weights", i32 1008921, i32 3617}
!842 = !{!625, !292, i64 128}
!843 = !{!"branch_weights", i32 871, i32 2747}
!844 = !{!"branch_weights", i32 238452, i32 774086}
!845 = !{!"branch_weights", i32 556150, i32 217937}
!846 = !{!"branch_weights", i32 238452, i32 1}
!847 = !{!"branch_weights", i32 608466, i32 404072}
!848 = !{!"branch_weights", i32 165621, i32 238452}
!849 = distinct !{!849, !416}
!850 = !{!"branch_weights", i32 774086, i32 1}
!851 = !{!"branch_weights", i32 2747, i32 771340}
!852 = !{!"branch_weights", i32 1, i32 2747}
!853 = !{!"branch_weights", i32 2747, i32 1}
!854 = !{!"branch_weights", i32 1, i32 853470}
!855 = !{!"function_entry_count", i64 20491336}
!856 = !{!"branch_weights", i32 20491337, i32 1}
!857 = !{!"branch_weights", i32 1, i32 20491337}
!858 = !{!"branch_weights", i32 1, i32 20490805}
!859 = !{!"branch_weights", i32 533, i32 20490805}
!860 = !{!"branch_weights", i32 13836, i32 20476970}
!861 = !{!"branch_weights", i32 20476438, i32 533}
!862 = !{!"branch_weights", i32 1, i32 533}
!863 = !{!"branch_weights", i32 105, i32 20491233}
!864 = !{!"branch_weights", i32 17, i32 7012}
!865 = !{!"branch_weights", i32 6976, i32 369781, i32 48664576}
!866 = !{!"branch_weights", i32 53, i32 1}
!867 = !{!"branch_weights", i32 20484310, i32 1}
!868 = !{!"function_entry_count", i64 2611140}
!869 = !{!"branch_weights", i32 2611085, i32 57}
!870 = !{!"branch_weights", i32 368601167, i32 -1167202943, i32 1524686559}
!871 = !{!"branch_weights", i32 1, i32 792879}
!872 = !{!"branch_weights", i32 1626524, i32 1}
!873 = !{!"branch_weights", i32 1, i32 1626524}
!874 = !{!"branch_weights", i32 44465, i32 1582060}
!875 = !{!"branch_weights", i32 44465, i32 1}
!876 = !{!"branch_weights", i32 1, i32 44465}
!877 = !{!"branch_weights", i32 1510518, i32 71543}
!878 = !{!"branch_weights", i32 -1735766872, i32 71543}
!879 = !{!"branch_weights", i32 2257944, i32 27827}
!880 = !{!"branch_weights", i32 774341929, i32 55655}
!881 = !{!"branch_weights", i32 792879, i32 1492891}
!882 = distinct !{!882, !416}
!883 = !{!"branch_weights", i32 2611085, i32 1}
!884 = !{!"branch_weights", i32 36, i32 2611050}
!885 = !{!"branch_weights", i32 2611006, i32 45}
!886 = !{!428, !292, i64 32}
!887 = !{!"branch_weights", i32 1, i32 2611085}
!888 = !{!"branch_weights", i32 2565557, i32 45529}
!889 = !{!"function_entry_count", i64 13426814}
!890 = !{!"pp_hot.c:S_CvDEPTHp"}
!891 = !{!"function_entry_count", i64 3605948}
!892 = !{!"branch_weights", i32 1, i32 3605949}
!893 = !{!"branch_weights", i32 2703082, i32 902868}
!894 = !{!319, !299, i64 24}
!895 = !{!"branch_weights", i32 2703082, i32 1}
!896 = !{!"branch_weights", i32 2147482854, i32 794}
!897 = !{!"branch_weights", i32 183661, i32 1, i32 1, i32 1, i32 1, i32 719208}
!898 = !{!"branch_weights", i32 4, i32 183658}
!899 = !{!"branch_weights", i32 183658, i32 1}
!900 = !{!"branch_weights", i32 90986, i32 92673}
!901 = !{!"branch_weights", i32 92673, i32 1}
!902 = !{!"branch_weights", i32 1, i32 90986}
!903 = !{!"branch_weights", i32 90986, i32 1}
!904 = !{!630, !299, i64 12}
!905 = !{!"branch_weights", i32 3605946, i32 1}
!906 = !{!"branch_weights", i32 1, i32 3605946}
!907 = !{!333, !292, i64 0}
!908 = !{!909, !299, i64 4}
!909 = !{!"hek", !299, i64 0, !299, i64 4, !293, i64 8}
!910 = !{!"branch_weights", i32 74857, i32 3531090}
!911 = !{!"branch_weights", i32 3063070, i32 542877}
!912 = !{!"branch_weights", i32 3063070, i32 1}
!913 = !{!"branch_weights", i32 74857, i32 2988214}
!914 = !{!"branch_weights", i32 3011142, i32 51929}
!915 = !{!"branch_weights", i32 1, i32 3063070}
!916 = !{!917, !292, i64 8}
!917 = !{!"padlist", !298, i64 0, !292, i64 8, !299, i64 16, !299, i64 20}
!918 = !{!"branch_weights", i32 2672782, i32 1}
!919 = !{!426, !299, i64 8}
!920 = !{!"branch_weights", i32 1, i32 2672782}
!921 = !{!"branch_weights", i32 1, i32 2672781}
!922 = !{!"branch_weights", i32 1, i32 4681877}
!923 = !{!"branch_weights", i32 4491808, i32 190070}
!924 = !{!"branch_weights", i32 2672781, i32 2009096}
!925 = distinct !{!925, !416}
!926 = !{!"branch_weights", i32 1, i32 542877}
!927 = !{!"branch_weights", i32 35, i32 542843}
!928 = !{!"branch_weights", i32 35, i32 1}
!929 = distinct !{!929, !416}
!930 = !{!"branch_weights", i32 1, i32 542842}
!931 = !{!"branch_weights", i32 1, i32 567749}
!932 = !{!"branch_weights", i32 542915, i32 24835}
!933 = !{!"branch_weights", i32 542842, i32 24907}
!934 = distinct !{!934, !416}
!935 = !{!"branch_weights", i32 542877, i32 1}
!936 = !{!"branch_weights", i32 537179, i32 5699}
!937 = !{!"branch_weights", i32 537179, i32 1}
!938 = !{!"pp_hot.c:S_CvGV"}
!939 = !{!"function_entry_count", i64 396077}
!940 = !{!"branch_weights", i32 342150, i32 53929}
!941 = !{!"branch_weights", i32 251511, i32 144568}
!942 = !{!"branch_weights", i32 251511, i32 1}
!943 = !{!"branch_weights", i32 396078, i32 1}
!944 = !{!"branch_weights", i32 144568, i32 251511}
!945 = !{!"branch_weights", i32 1, i32 144568}
!946 = !{!"branch_weights", i32 144568, i32 1}
!947 = !{!"branch_weights", i32 47566670, i32 2099916978}
!948 = !{!"function_entry_count", i64 718986}
!949 = !{!"pp_hot.c:S_opmethod_stash"}
!950 = !{!"branch_weights", i32 1, i32 718987}
!951 = !{!"branch_weights", i32 718987, i32 1}
!952 = !{!"branch_weights", i32 693960, i32 25028}
!953 = !{!"branch_weights", i32 25028, i32 1}
!954 = !{!"branch_weights", i32 53, i32 24976}
!955 = !{!"branch_weights", i32 53, i32 693960}
!956 = !{!"branch_weights", i32 107, i32 1}
!957 = !{!"branch_weights", i32 1, i32 107}
!958 = !{!"branch_weights", i32 3095, i32 2147480553}
!959 = !{!"branch_weights", i32 1, i32 693960}
!960 = !{!"function_entry_count", i64 718982}
!961 = !{!"branch_weights", i32 1, i32 718983}
!962 = !{!"branch_weights", i32 22, i32 718962}
!963 = !{!"branch_weights", i32 718962, i32 1}
!964 = !{!"branch_weights", i32 6, i32 718957}
!965 = !{!"branch_weights", i32 706138, i32 12820}
!966 = !{!708, !292, i64 32}
!967 = !{!"branch_weights", i32 1, i32 12820}
!968 = !{!969, !299, i64 24}
!969 = !{!"mro_meta", !292, i64 0, !292, i64 8, !292, i64 16, !299, i64 24, !299, i64 28, !292, i64 32, !292, i64 40, !292, i64 48, !299, i64 56}
!970 = !{!"branch_weights", i32 12820, i32 1}
!971 = !{!"branch_weights", i32 1, i32 718957}
!972 = !{!"branch_weights", i32 1, i32 27}
!973 = !{!"branch_weights", i32 24, i32 4}
!974 = !{!399, !292, i64 40}
!975 = !{!969, !292, i64 48}
!976 = !{!977, !292, i64 48}
!977 = !{!"methop", !292, i64 0, !292, i64 8, !292, i64 16, !298, i64 24, !299, i64 32, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !299, i64 33, !293, i64 34, !293, i64 35, !293, i64 40, !292, i64 48}
!978 = !{!"pp_hot.c:S_sv_or_pv_pos_u2b"}
