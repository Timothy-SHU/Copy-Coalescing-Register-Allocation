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
%struct.p5rx = type { ptr, i32, i32, %union.anon.29 }
%union.anon.29 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.28, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.28 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_const() local_unnamed_addr #0 !prof !178 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !183

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !179
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !179
  %15 = load ptr, ptr %11, align 8, !tbaa !188
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_nextstate() local_unnamed_addr #0 !prof !190 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !179
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !179
  store i8 0, ptr @PL_sawalias, align 1, !tbaa !191
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !195
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %5, i64 %8, i32 0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !196
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %2, i64 %11
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !179
  %13 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %14 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17, !prof !198

16:                                               ; preds = %0
  tail call void @Perl_free_tmps() #13
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !200

20:                                               ; preds = %17
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %21() #13
  br label %22

22:                                               ; preds = %17, %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  ret ptr %24
}

declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_gvsv() local_unnamed_addr #0 !prof !201 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !202

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !203
  %14 = icmp sgt i8 %13, -1
  %15 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  br i1 %14, label %20, label %17, !prof !204

17:                                               ; preds = %9
  %18 = tail call ptr @Perl_save_scalar(ptr noundef %16) #13
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %18, ptr %19, align 8, !tbaa !179
  br label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = load ptr, ptr %22, align 8, !tbaa !205
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29, !prof !207

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_gv_add_by_type(ptr noundef %16, i32 noundef 0) #13
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  br label %29

29:                                               ; preds = %20, %25
  %30 = phi ptr [ %28, %25 ], [ %22, %20 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !179
  br label %33

33:                                               ; preds = %29, %17
  %34 = phi ptr [ %19, %17 ], [ %32, %29 ]
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %36 = getelementptr inbounds %struct.svop, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !208
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %47, label %43, !prof !209

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 9
  %45 = load i32, ptr %44, align 8
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47, !prof !210

47:                                               ; preds = %43, %33
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !191
  br label %48

48:                                               ; preds = %47, %43
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !179
  %49 = load ptr, ptr %35, align 8, !tbaa !188
  ret ptr %49
}

declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_pp_null() local_unnamed_addr #3 !prof !211 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %2 = load ptr, ptr %1, align 8, !tbaa !188
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_pushmark() local_unnamed_addr #0 !prof !212 {
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %2 = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %2, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !179
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %7, !prof !213

5:                                                ; preds = %0
  %6 = tail call ptr @Perl_markstack_grow() #13
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi ptr [ %6, %5 ], [ %2, %0 ]
  %9 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %8, align 4, !tbaa !199
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  ret ptr %17
}

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_stringify() local_unnamed_addr #4 !prof !214 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !215
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %7, ptr %1, align 8, !tbaa !179
  tail call void @Perl_sv_copypv_flags(ptr noundef %7, ptr noundef %8, i32 noundef 2) #13
  %9 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !216
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !218

13:                                               ; preds = %0
  %14 = tail call i32 @Perl_mg_set(ptr noundef %7) #13
  br label %15

15:                                               ; preds = %0, %13
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  ret ptr %17
}

declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_gv() local_unnamed_addr #0 !prof !219 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !220

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !179
  %15 = load ptr, ptr %12, align 8, !tbaa !184
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !221
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %31, !prof !223

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !208
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %30, label %26, !prof !224

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !225

30:                                               ; preds = %26, %20
  store i8 1, ptr @PL_sawalias, align 1, !tbaa !191
  br label %31

31:                                               ; preds = %30, %26, %9
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !179
  %32 = load ptr, ptr %11, align 8, !tbaa !188
  ret ptr %32
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_and() local_unnamed_addr #0 !prof !226 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !227

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %4() #13
  br label %5

5:                                                ; preds = %0, %3
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !216
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !228

12:                                               ; preds = %5
  %13 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %7, i32 noundef 2) #13
  br i1 %13, label %63, label %61, !prof !229

14:                                               ; preds = %5
  %15 = and i32 %9, 65280
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %9, 255
  %18 = icmp eq i32 %17, 8
  %19 = or i1 %16, %18
  %20 = and i32 %9, 16777471
  %21 = icmp eq i32 %20, 16777226
  %22 = or i1 %21, %19
  br i1 %22, label %23, label %61, !prof !230

23:                                               ; preds = %14
  %24 = and i32 %9, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !231

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !232
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29, !prof !233

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !234
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %63, label %33, !prof !236

33:                                               ; preds = %29
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %61, label %35, !prof !237

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = load i8, ptr %37, align 1, !tbaa !196
  %39 = icmp eq i8 %38, 48
  br i1 %39, label %61, label %63, !prof !238

40:                                               ; preds = %23
  %41 = and i32 %9, 768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43, !prof !239

43:                                               ; preds = %40
  %44 = and i32 %9, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46, !prof !240

46:                                               ; preds = %43
  %47 = load ptr, ptr %7, align 8, !tbaa !232
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !196
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63, !prof !241

51:                                               ; preds = %46, %43
  %52 = and i32 %9, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54, !prof !242

54:                                               ; preds = %51
  %55 = load ptr, ptr %7, align 8, !tbaa !232
  %56 = getelementptr inbounds %struct.xpvnv, ptr %55, i64 0, i32 5
  %57 = load double, ptr %56, align 8, !tbaa !196
  %58 = fcmp une double %57, 0.000000e+00
  br i1 %58, label %63, label %61

59:                                               ; preds = %40
  %60 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %7, i32 noundef 0) #13
  br i1 %60, label %63, label %61, !prof !243

61:                                               ; preds = %59, %54, %14, %51, %35, %33, %26, %12
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %74

63:                                               ; preds = %35, %59, %54, %46, %29, %12
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %65 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 511
  %68 = icmp eq i16 %67, 176
  br i1 %68, label %69, label %72, !prof !244

69:                                               ; preds = %63
  %70 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %71 = getelementptr inbounds ptr, ptr %70, i64 -1
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %72

72:                                               ; preds = %69, %63
  %73 = getelementptr inbounds %struct.logop, ptr %64, i64 0, i32 8
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi ptr [ %73, %72 ], [ %62, %61 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !179
  ret ptr %76
}

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_sassign() local_unnamed_addr #0 !prof !245 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !179
  %4 = load ptr, ptr %2, align 8, !tbaa !179
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !203
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr %4, ptr %3, !prof !246
  %11 = select i1 %9, ptr %3, ptr %4, !prof !246
  %12 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr @PL_tainted, align 1, !range !247
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15, !prof !249
  br i1 %16, label %25, label %17, !prof !249

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !216
  %20 = and i32 %19, 14680064
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %10) #13
  br i1 %23, label %25, label %24

24:                                               ; preds = %22, %17
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  br label %25

25:                                               ; preds = %24, %22, %0
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %27 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !203
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %144, label %30, !prof !250

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !216
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !216
  %38 = and i32 %37, 49152
  %39 = icmp eq i32 %38, 32768
  %40 = and i32 %37, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  %43 = select i1 %39, i1 %42, i1 false, !prof !251
  %44 = add nsw i32 %35, -13
  %45 = icmp ult i32 %44, 2
  %46 = or i1 %45, %43
  br i1 %46, label %91, label %47, !prof !252

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.op, ptr %26, i64 0, i32 5
  %49 = load i8, ptr %48, align 2, !tbaa !253
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = zext nneg i8 %50 to i32
  br label %56

54:                                               ; preds = %47
  %55 = tail call i32 @Perl_block_gimme() #13
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_gv_fetchsv(ptr noundef %11, i32 noundef 2064, i32 noundef 9) #13
  %61 = getelementptr inbounds %struct.gv, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !199
  %63 = and i32 %62, 65280
  %64 = icmp ne i32 %63, 0
  %65 = and i32 %62, 254
  %66 = icmp eq i32 %65, 8
  %67 = or i1 %66, %64
  %68 = and i32 %62, 16777471
  %69 = icmp eq i32 %68, 16777226
  %70 = or i1 %69, %67
  br i1 %70, label %89, label %71

71:                                               ; preds = %59
  %72 = and i32 %62, 255
  %73 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !196
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void @Perl_sv_upgrade(ptr noundef %60, i32 noundef 1) #13
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, ptr %61, align 4, !tbaa !221
  %79 = or i32 %78, 34816
  store i32 %79, ptr %61, align 4, !tbaa !221
  %80 = getelementptr inbounds %struct.gv, ptr %60, i64 0, i32 3
  store ptr %74, ptr %80, align 8, !tbaa !196
  %81 = icmp eq ptr %74, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !254
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !254
  br label %86

86:                                               ; preds = %82, %77
  store ptr %11, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %88 = load ptr, ptr %87, align 8, !tbaa !188
  br label %89

89:                                               ; preds = %59, %86
  %90 = phi ptr [ %88, %86 ], [ undef, %59 ]
  br i1 %70, label %91, label %140

91:                                               ; preds = %30, %89, %56
  %92 = phi ptr [ undef, %30 ], [ %90, %89 ], [ undef, %56 ]
  br i1 %43, label %95, label %93, !prof !251

93:                                               ; preds = %91
  %94 = tail call ptr @Perl_gv_fetchsv(ptr noundef %11, i32 noundef 2049, i32 noundef 9) #13
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi ptr [ %11, %91 ], [ %94, %93 ]
  br i1 %45, label %140, label %97, !prof !252

97:                                               ; preds = %95
  %98 = load i32, ptr %33, align 4, !tbaa !216
  %99 = and i32 %98, 2048
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  tail call void @Perl_push_scope() #13
  %102 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !196
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !254
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8, !tbaa !254
  br label %109

109:                                              ; preds = %101, %105
  %110 = load ptr, ptr %96, align 8, !tbaa !232
  %111 = getelementptr inbounds %struct.xpvgv, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !196
  %113 = load ptr, ptr %102, align 8, !tbaa !196
  %114 = tail call ptr @Perl_newCONSTSUB(ptr noundef %112, ptr noundef null, ptr noundef %113) #13
  store ptr %114, ptr %31, align 8, !tbaa !196
  %115 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !254
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = add i32 %116, -1
  store i32 %119, ptr %115, align 8, !tbaa !254
  br label %121

120:                                              ; preds = %109
  tail call void @Perl_sv_free2(ptr noundef %32, i32 noundef %116) #13
  br label %121

121:                                              ; preds = %118, %120
  tail call void @Perl_pop_scope() #13
  br label %140

122:                                              ; preds = %97
  %123 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !196
  %125 = getelementptr inbounds %struct.gp, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !255
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !254
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 8, !tbaa !254
  br label %132

132:                                              ; preds = %122, %128
  %133 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !254
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = add i32 %134, -1
  store i32 %137, ptr %133, align 8, !tbaa !254
  br label %139

138:                                              ; preds = %132
  tail call void @Perl_sv_free2(ptr noundef %32, i32 noundef %134) #13
  br label %139

139:                                              ; preds = %136, %138
  store ptr %126, ptr %31, align 8, !tbaa !196
  br label %140

140:                                              ; preds = %89, %95, %139, %121
  %141 = phi ptr [ %96, %121 ], [ %96, %139 ], [ %96, %95 ], [ %11, %89 ]
  %142 = phi i1 [ true, %121 ], [ true, %139 ], [ true, %95 ], [ false, %89 ]
  %143 = phi ptr [ %92, %121 ], [ %92, %139 ], [ %92, %95 ], [ %90, %89 ]
  br i1 %142, label %144, label %178, !prof !252

144:                                              ; preds = %140, %25
  %145 = phi ptr [ %141, %140 ], [ %11, %25 ]
  %146 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !216
  %148 = and i32 %147, 4718592
  %149 = icmp eq i32 %148, 524288
  br i1 %149, label %150, label %167, !prof !256

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !254
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = and i32 %147, 49152
  %156 = icmp eq i32 %155, 32768
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = and i32 %147, 255
  %159 = add nsw i32 %158, -9
  %160 = icmp ult i32 %159, 2
  %161 = and i32 %147, 16777216
  %162 = icmp eq i32 %161, 0
  %163 = and i1 %162, %160
  br i1 %163, label %167, label %164

164:                                              ; preds = %157, %154
  %165 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #13
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #13
  br label %167

167:                                              ; preds = %157, %150, %164, %166, %144
  %168 = icmp eq ptr %145, %10
  br i1 %168, label %175, label %169, !prof !257

169:                                              ; preds = %167
  tail call void @Perl_sv_setsv_flags(ptr noundef %145, ptr noundef %10, i32 noundef 1538) #13
  %170 = load i32, ptr %146, align 4, !tbaa !216
  %171 = and i32 %170, 4194304
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173, !prof !258

173:                                              ; preds = %169
  %174 = tail call i32 @Perl_mg_set(ptr noundef %145) #13
  br label %175

175:                                              ; preds = %173, %169, %167
  store ptr %145, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %176 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %177 = load ptr, ptr %176, align 8, !tbaa !188
  br label %178

178:                                              ; preds = %140, %175
  %179 = phi ptr [ %177, %175 ], [ %143, %140 ]
  ret ptr %179
}

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_cond_expr() local_unnamed_addr #0 !prof !259 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !260

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %5() #13
  br label %6

6:                                                ; preds = %0, %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !179
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10, !prof !261

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !216
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !262

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 2) #13
  br label %66

17:                                               ; preds = %10
  %18 = and i32 %12, 65280
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %12, 255
  %21 = icmp eq i32 %20, 8
  %22 = or i1 %19, %21
  %23 = and i32 %12, 16777471
  %24 = icmp eq i32 %23, 16777226
  %25 = or i1 %24, %22
  br i1 %25, label %26, label %71, !prof !263

26:                                               ; preds = %17
  %27 = and i32 %12, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29, !prof !264

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8, !tbaa !232
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32, !prof !265

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !234
  %35 = icmp ugt i64 %34, 1
  br i1 %35, label %68, label %36, !prof !266

36:                                               ; preds = %32
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %71, label %38, !prof !267

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = load i8, ptr %40, align 1, !tbaa !196
  %42 = icmp ne i8 %41, 48
  br label %66

43:                                               ; preds = %26
  %44 = and i32 %12, 768
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46, !prof !268

46:                                               ; preds = %43
  %47 = and i32 %12, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49, !prof !269

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 8, !tbaa !232
  %51 = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !196
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68, !prof !270

54:                                               ; preds = %49, %46
  %55 = and i32 %12, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57, !prof !271

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 8, !tbaa !232
  %59 = getelementptr inbounds %struct.xpvnv, ptr %58, i64 0, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !196
  %61 = fcmp uno double %60, 0.000000e+00
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = fcmp une double %60, 0.000000e+00
  br label %66

64:                                               ; preds = %43
  %65 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 0) #13
  br label %66

66:                                               ; preds = %62, %38, %64, %15
  %67 = phi i1 [ %16, %15 ], [ %65, %64 ], [ %42, %38 ], [ %63, %62 ]
  br i1 %67, label %68, label %71, !prof !272

68:                                               ; preds = %32, %49, %57, %66
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !179
  %69 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %70 = getelementptr inbounds %struct.logop, ptr %69, i64 0, i32 8
  br label %73

71:                                               ; preds = %17, %29, %36, %54, %6, %66
  store ptr %7, ptr @PL_stack_sp, align 8, !tbaa !179
  %72 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi ptr [ %70, %68 ], [ %72, %71 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !179
  ret ptr %75
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_unstack() local_unnamed_addr #0 !prof !273 {
  %1 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !274

3:                                                ; preds = %0
  %4 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %4() #13
  br label %5

5:                                                ; preds = %0, %3
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %7 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !195
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.context, ptr %9, i64 %12, i32 0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !196
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !179
  %17 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %18 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21, !prof !275

20:                                               ; preds = %5
  tail call void @Perl_free_tmps() #13
  br label %21

21:                                               ; preds = %20, %5
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !253
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %26, label %36, !prof !276

26:                                               ; preds = %21
  %27 = load ptr, ptr @PL_scopestack, align 8, !tbaa !179
  %28 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !199
  %29 = sext i32 %28 to i64
  %30 = getelementptr i32, ptr %27, i64 %29
  %31 = getelementptr i32, ptr %30, i64 -1
  %32 = load i32, ptr %31, align 4, !tbaa !199
  %33 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %34 = icmp sgt i32 %33, %32
  br i1 %34, label %35, label %36, !prof !277

35:                                               ; preds = %26
  tail call void @Perl_leave_scope(i32 noundef %32) #13
  br label %36

36:                                               ; preds = %26, %35, %21
  %37 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %38 = load ptr, ptr %37, align 8, !tbaa !188
  ret ptr %38
}

declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_concat() local_unnamed_addr #0 !prof !278 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !253
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !279

9:                                                ; preds = %0
  %10 = getelementptr inbounds ptr, ptr %3, i64 -1
  br label %16

11:                                               ; preds = %0
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !215
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = getelementptr inbounds ptr, ptr %3, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !179
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !216
  %23 = load ptr, ptr %3, align 8, !tbaa !179
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !216
  %26 = or i32 %25, %22
  %27 = and i32 %26, 2099200
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29, !prof !280

29:                                               ; preds = %16
  %30 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 70, i32 noundef 4) #13
  br i1 %30, label %31, label %34, !prof !281

31:                                               ; preds = %29
  %32 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %33 = load ptr, ptr %32, align 8, !tbaa !188
  br label %232

34:                                               ; preds = %16, %29
  %35 = load ptr, ptr %3, align 8, !tbaa !179
  %36 = load ptr, ptr %19, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %37 = icmp eq ptr %18, %35
  %38 = icmp ne ptr %35, %36
  %39 = select i1 %37, i1 %38, i1 false, !prof !282
  br i1 %39, label %40, label %81, !prof !282

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !216
  %43 = and i32 %42, 2098176
  %44 = icmp eq i32 %43, 1024
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %35, align 8, !tbaa !232
  %47 = getelementptr inbounds %struct.xpv, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !234
  store i64 %48, ptr %1, align 8, !tbaa !197
  %49 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !196
  br label %53

51:                                               ; preds = %40
  %52 = call ptr @Perl_sv_2pv_flags(ptr noundef %35, ptr noundef nonnull %1, i32 noundef 32) #13
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %50, %45 ], [ %52, %51 ]
  %55 = load i32, ptr %41, align 4, !tbaa !216
  %56 = and i32 %55, 536870912
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %60 = getelementptr inbounds %struct.cop, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !283
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ false, %53 ], [ %63, %58 ]
  %66 = xor i1 %65, true
  %67 = load i64, ptr %1, align 8, !tbaa !197
  %68 = call ptr @Perl_newSVpvn_flags(ptr noundef %54, i64 noundef %67, i32 noundef 524288) #13
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !216
  %71 = and i32 %70, 2098176
  %72 = icmp eq i32 %71, 1024
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load ptr, ptr %68, align 8, !tbaa !232
  %75 = getelementptr inbounds %struct.xpv, ptr %74, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !234
  store i64 %76, ptr %1, align 8, !tbaa !197
  %77 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !196
  br label %81

79:                                               ; preds = %64
  %80 = call ptr @Perl_sv_2pv_flags(ptr noundef %68, ptr noundef nonnull %1, i32 noundef 34) #13
  br label %81

81:                                               ; preds = %73, %79, %34
  %82 = phi ptr [ %35, %34 ], [ %68, %79 ], [ %68, %73 ]
  %83 = phi ptr [ null, %34 ], [ %80, %79 ], [ %78, %73 ]
  %84 = phi i1 [ false, %34 ], [ %66, %79 ], [ %66, %73 ]
  %85 = zext i1 %84 to i32
  %86 = icmp eq ptr %18, %36
  br i1 %86, label %123, label %87, !prof !285

87:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %88 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !216
  %90 = and i32 %89, 2098176
  %91 = icmp eq i32 %90, 1024
  br i1 %91, label %92, label %98, !prof !286

92:                                               ; preds = %87
  %93 = load ptr, ptr %36, align 8, !tbaa !232
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !234
  store i64 %95, ptr %2, align 8, !tbaa !197
  %96 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !196
  br label %100

98:                                               ; preds = %87
  %99 = call ptr @Perl_sv_2pv_flags(ptr noundef %36, ptr noundef nonnull %2, i32 noundef 32) #13
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi ptr [ %97, %92 ], [ %99, %98 ]
  %102 = load i32, ptr %88, align 4, !tbaa !216
  %103 = and i32 %102, 536870912
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105, !prof !287

105:                                              ; preds = %100
  %106 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %107 = getelementptr inbounds %struct.cop, ptr %106, i64 0, i32 10
  %108 = load i32, ptr %107, align 8, !tbaa !283
  %109 = and i32 %108, 8
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %105, %100
  %112 = phi i1 [ true, %100 ], [ %110, %105 ]
  %113 = zext i1 %112 to i8
  %114 = load i64, ptr %2, align 8, !tbaa !197
  call void @Perl_sv_setpvn(ptr noundef %18, ptr noundef %101, i64 noundef %114) #13
  %115 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !216
  br i1 %112, label %119, label %117, !prof !287

117:                                              ; preds = %111
  %118 = or i32 %116, 536870912
  br label %121

119:                                              ; preds = %111
  %120 = and i32 %116, -536870913
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %120, %119 ], [ %118, %117 ]
  store i32 %122, ptr %115, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %165

123:                                              ; preds = %81
  %124 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !216
  %126 = and i32 %125, 65280
  %127 = icmp ne i32 %126, 0
  %128 = and i32 %125, 255
  %129 = icmp eq i32 %128, 8
  %130 = or i1 %127, %129
  %131 = and i32 %125, 16777471
  %132 = icmp eq i32 %131, 16777226
  %133 = or i1 %132, %130
  br i1 %133, label %140, label %134, !prof !288

134:                                              ; preds = %123
  %135 = icmp eq ptr %36, %82
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = call zeroext i1 @Perl_ckwarn(i32 noundef 41) #13
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  call void @Perl_report_uninit(ptr noundef %82) #13
  br label %139

139:                                              ; preds = %138, %136, %134
  call void @Perl_sv_setpvn(ptr noundef %36, ptr noundef nonnull @.str.1, i64 noundef 0) #13
  br label %145

140:                                              ; preds = %123
  %141 = and i32 %125, 430018304
  %142 = icmp eq i32 %141, 1024
  br i1 %142, label %145, label %143, !prof !289

143:                                              ; preds = %140
  %144 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %36, ptr noundef null, i32 noundef 0) #13
  br label %145

145:                                              ; preds = %140, %143, %139
  %146 = load i32, ptr %124, align 4, !tbaa !216
  %147 = and i32 %146, 536870912
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149, !prof !288

149:                                              ; preds = %145
  %150 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %151 = getelementptr inbounds %struct.cop, ptr %150, i64 0, i32 10
  %152 = load i32, ptr %151, align 8, !tbaa !283
  %153 = trunc i32 %152 to i8
  %154 = lshr i8 %153, 3
  %155 = and i8 %154, 1
  br label %156

156:                                              ; preds = %149, %145
  %157 = phi i8 [ 1, %145 ], [ %155, %149 ]
  %158 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %159 = getelementptr inbounds %struct.cop, ptr %158, i64 0, i32 10
  %160 = load i32, ptr %159, align 8, !tbaa !283
  %161 = and i32 %160, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163, !prof !288

163:                                              ; preds = %156
  %164 = and i32 %146, -536870913
  store i32 %164, ptr %124, align 4, !tbaa !216
  br label %165

165:                                              ; preds = %156, %163, %121
  %166 = phi i8 [ %113, %121 ], [ %157, %163 ], [ %157, %156 ]
  br i1 %39, label %191, label %167, !prof !282

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !216
  %170 = and i32 %169, 2098176
  %171 = icmp eq i32 %170, 1024
  br i1 %171, label %172, label %178, !prof !290

172:                                              ; preds = %167
  %173 = load ptr, ptr %82, align 8, !tbaa !232
  %174 = getelementptr inbounds %struct.xpv, ptr %173, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !234
  store i64 %175, ptr %1, align 8, !tbaa !197
  %176 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !196
  br label %180

178:                                              ; preds = %167
  %179 = call ptr @Perl_sv_2pv_flags(ptr noundef %82, ptr noundef nonnull %1, i32 noundef 32) #13
  br label %180

180:                                              ; preds = %178, %172
  %181 = phi ptr [ %177, %172 ], [ %179, %178 ]
  %182 = load i32, ptr %168, align 4, !tbaa !216
  %183 = and i32 %182, 536870912
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %191, label %185, !prof !291

185:                                              ; preds = %180
  %186 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %187 = getelementptr inbounds %struct.cop, ptr %186, i64 0, i32 10
  %188 = load i32, ptr %187, align 8, !tbaa !283
  %189 = lshr i32 %188, 3
  %190 = and i32 %189, 1
  br label %191

191:                                              ; preds = %180, %185, %165
  %192 = phi ptr [ %83, %165 ], [ %181, %185 ], [ %181, %180 ]
  %193 = phi i32 [ %85, %165 ], [ %190, %185 ], [ 1, %180 ]
  %194 = and i8 %166, 1
  %195 = zext nneg i8 %194 to i32
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %220, label %197, !prof !291

197:                                              ; preds = %191
  %198 = icmp eq i8 %194, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %197
  %200 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %18, i32 noundef 0, i64 noundef 0) #13
  br label %220

201:                                              ; preds = %197
  br i1 %39, label %205, label %202

202:                                              ; preds = %201
  %203 = load i64, ptr %1, align 8, !tbaa !197
  %204 = call ptr @Perl_newSVpvn_flags(ptr noundef %192, i64 noundef %203, i32 noundef 524288) #13
  br label %205

205:                                              ; preds = %202, %201
  %206 = phi ptr [ %82, %201 ], [ %204, %202 ]
  %207 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %206, i32 noundef 0, i64 noundef 0) #13
  %208 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !216
  %210 = and i32 %209, 2098176
  %211 = icmp eq i32 %210, 1024
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load ptr, ptr %206, align 8, !tbaa !232
  %214 = getelementptr inbounds %struct.xpv, ptr %213, i64 0, i32 2
  %215 = load i64, ptr %214, align 8, !tbaa !234
  store i64 %215, ptr %1, align 8, !tbaa !197
  %216 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !196
  br label %220

218:                                              ; preds = %205
  %219 = call ptr @Perl_sv_2pv_flags(ptr noundef %206, ptr noundef nonnull %1, i32 noundef 32) #13
  br label %220

220:                                              ; preds = %212, %218, %199, %191
  %221 = phi ptr [ %192, %199 ], [ %192, %191 ], [ %217, %212 ], [ %219, %218 ]
  %222 = load i64, ptr %1, align 8, !tbaa !197
  call void @Perl_sv_catpvn_flags(ptr noundef %18, ptr noundef %221, i64 noundef %222, i32 noundef 0) #13
  %223 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %224 = load i32, ptr %223, align 4, !tbaa !216
  %225 = and i32 %224, 4194304
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227, !prof !291

227:                                              ; preds = %220
  %228 = call i32 @Perl_mg_set(ptr noundef %18) #13
  br label %229

229:                                              ; preds = %220, %227
  store ptr %18, ptr %19, align 8, !tbaa !179
  store ptr %19, ptr @PL_stack_sp, align 8, !tbaa !179
  %230 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %231 = load ptr, ptr %230, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  br label %232

232:                                              ; preds = %229, %31
  %233 = phi ptr [ %33, %31 ], [ %231, %229 ]
  ret ptr %233
}

declare zeroext i1 @Perl_try_amagic_bin(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_padrange() local_unnamed_addr #0 !prof !292 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !215
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !203
  %7 = and i8 %6, 127
  %8 = zext nneg i8 %7 to i32
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !253
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %42, label %12, !prof !293

12:                                               ; preds = %0
  %13 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  store ptr %14, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %15 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !179
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %19, !prof !294

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_markstack_grow() #13
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %14, %12 ]
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %22 = ptrtoint ptr %1 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 3
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %20, align 4, !tbaa !199
  %27 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %28 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !295
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39, !prof !294

33:                                               ; preds = %19
  %34 = tail call ptr @Perl_gv_add_by_type(ptr noundef %27, i32 noundef 11) #13
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !295
  br label %39

39:                                               ; preds = %19, %33
  %40 = phi ptr [ %38, %33 ], [ %31, %19 ]
  tail call fastcc void @S_pushav(ptr noundef %40)
  %41 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %42

42:                                               ; preds = %39, %0
  %43 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %44 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %45 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 5
  %46 = load i8, ptr %45, align 2, !tbaa !253
  %47 = and i8 %46, 3
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %88, label %49, !prof !296

49:                                               ; preds = %42
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %43 to i64
  %53 = sub i64 %51, %52
  %54 = ashr exact i64 %53, 3
  %55 = zext nneg i8 %7 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59, !prof !297

57:                                               ; preds = %49
  %58 = tail call ptr @Perl_stack_grow(ptr noundef %43, ptr noundef %43, i64 noundef %55) #13
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi ptr [ %58, %57 ], [ %43, %49 ]
  %61 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %62 = getelementptr inbounds i32, ptr %61, i64 1
  store ptr %62, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %63 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !179
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %67, !prof !297

65:                                               ; preds = %59
  %66 = tail call ptr @Perl_markstack_grow() #13
  br label %67

67:                                               ; preds = %59, %65
  %68 = phi ptr [ %66, %65 ], [ %62, %59 ]
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %70 = ptrtoint ptr %60 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = lshr exact i64 %72, 3
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %68, align 4, !tbaa !199
  %75 = icmp eq i8 %7, 0
  br i1 %75, label %88, label %76, !prof !298

76:                                               ; preds = %67
  %77 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %78 = getelementptr ptr, ptr %77, i64 %4
  %79 = zext nneg i8 %7 to i64
  br label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ 0, %76 ], [ %86, %80 ]
  %82 = phi ptr [ %60, %76 ], [ %85, %80 ]
  %83 = getelementptr ptr, ptr %78, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !179
  %85 = getelementptr inbounds ptr, ptr %82, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !179
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, %79
  br i1 %87, label %88, label %80, !prof !299, !llvm.loop !300

88:                                               ; preds = %80, %67, %42
  %89 = phi ptr [ %43, %42 ], [ %60, %67 ], [ %85, %80 ]
  %90 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %91 = getelementptr inbounds %struct.op, ptr %90, i64 0, i32 6
  %92 = load i8, ptr %91, align 1, !tbaa !203
  %93 = icmp sgt i8 %92, -1
  br i1 %93, label %123, label %94, !prof !303

94:                                               ; preds = %88
  %95 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %96 = getelementptr inbounds ptr, ptr %95, i64 %4
  %97 = shl i64 %4, 13
  %98 = shl nuw nsw i32 %8, 6
  %99 = zext nneg i32 %98 to i64
  %100 = or disjoint i64 %97, %99
  %101 = or disjoint i64 %100, 1
  %102 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %103 = load ptr, ptr @PL_savestack, align 8, !tbaa !179
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %union.any, ptr %103, i64 %104
  store i64 %101, ptr %105, align 8, !tbaa !196
  %106 = add nsw i32 %102, 1
  store i32 %106, ptr @PL_savestack_ix, align 4, !tbaa !199
  %107 = add nsw i32 %102, 5
  %108 = load i32, ptr @PL_savestack_max, align 4, !tbaa !199
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %111, !prof !304

110:                                              ; preds = %94
  tail call void @Perl_savestack_grow() #13
  br label %111

111:                                              ; preds = %94, %110
  %112 = icmp eq i8 %7, 0
  br i1 %112, label %123, label %113, !prof !305

113:                                              ; preds = %111, %113
  %114 = phi i32 [ %121, %113 ], [ 0, %111 ]
  %115 = phi ptr [ %116, %113 ], [ %96, %111 ]
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  %117 = load ptr, ptr %115, align 8, !tbaa !179
  %118 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !216
  %120 = and i32 %119, -262145
  store i32 %120, ptr %118, align 4, !tbaa !216
  %121 = add nuw nsw i32 %114, 1
  %122 = icmp eq i32 %121, %8
  br i1 %122, label %123, label %113, !prof !306, !llvm.loop !307

123:                                              ; preds = %113, %111, %88
  store ptr %89, ptr @PL_stack_sp, align 8, !tbaa !179
  %124 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %125 = load ptr, ptr %124, align 8, !tbaa !188
  ret ptr %125
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_pushav(ptr noundef %0) unnamed_addr #4 !prof !308 !PGOFuncName !309 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !310

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_size(ptr noundef %0) #13
  %9 = sext i32 %8 to i64
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !311
  %12 = getelementptr inbounds %struct.xpvav, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !313
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i64 [ %9, %7 ], [ %13, %10 ]
  %16 = add i64 %15, 1
  %17 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %2 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp sgt i64 %21, %15
  br i1 %22, label %25, label %23, !prof !315

23:                                               ; preds = %14
  %24 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %16) #13
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ %2, %14 ]
  %27 = load i32, ptr %3, align 4, !tbaa !316
  %28 = and i32 %27, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i64 %16, 0
  br i1 %29, label %32, label %31, !prof !310

31:                                               ; preds = %25
  br i1 %30, label %63, label %35

32:                                               ; preds = %25
  br i1 %30, label %63, label %33, !prof !317

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %53

35:                                               ; preds = %31, %48
  %36 = phi i64 [ %50, %48 ], [ 0, %31 ]
  %37 = tail call ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %36, i32 noundef 0) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !179
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !216
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @Perl_mg_get(ptr noundef %40) #13
  %47 = load ptr, ptr %37, align 8, !tbaa !179
  br label %48

48:                                               ; preds = %39, %35, %45
  %49 = phi ptr [ %47, %45 ], [ @PL_sv_undef, %35 ], [ %40, %39 ]
  %50 = add nuw i64 %36, 1
  %51 = getelementptr inbounds ptr, ptr %26, i64 %50
  store ptr %49, ptr %51, align 8, !tbaa !179
  %52 = icmp eq i64 %36, %15
  br i1 %52, label %63, label %35, !llvm.loop !318

53:                                               ; preds = %33, %53
  %54 = phi i64 [ 0, %33 ], [ %60, %53 ]
  %55 = load ptr, ptr %34, align 8, !tbaa !196
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !179
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @PL_sv_undef, ptr %57, !prof !319
  %60 = add nuw i64 %54, 1
  %61 = getelementptr inbounds ptr, ptr %26, i64 %60
  store ptr %59, ptr %61, align 8, !tbaa !179
  %62 = icmp eq i64 %54, %15
  br i1 %62, label %63, label %53, !prof !320, !llvm.loop !321

63:                                               ; preds = %48, %53, %31, %32
  %64 = getelementptr inbounds ptr, ptr %26, i64 %16
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !179
  ret void
}

declare void @Perl_savestack_grow() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_padsv() local_unnamed_addr #0 !prof !322 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !323

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !215
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !179
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !179
  %18 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !253
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %124, label %22, !prof !324

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !203
  %25 = and i8 %24, -64
  %26 = icmp eq i8 %25, -128
  br i1 %26, label %27, label %28, !prof !325

27:                                               ; preds = %22
  tail call void @Perl_save_clearsv(ptr noundef nonnull %15) #13
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8, ptr %23, align 1, !tbaa !203
  %30 = and i8 %29, 48
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %124, label %32, !prof !326

32:                                               ; preds = %28
  %33 = load ptr, ptr %17, align 8, !tbaa !179
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !216
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !327

38:                                               ; preds = %32
  %39 = tail call i32 @Perl_mg_get(ptr noundef %33) #13
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, ptr %34, align 4, !tbaa !216
  %42 = and i32 %41, 65280
  %43 = icmp ne i32 %42, 0
  %44 = and i32 %41, 255
  %45 = icmp eq i32 %44, 8
  %46 = or i1 %43, %45
  %47 = and i32 %41, 16777471
  %48 = icmp eq i32 %47, 16777226
  %49 = or i1 %48, %46
  br i1 %49, label %116, label %50, !prof !328

50:                                               ; preds = %40
  %51 = and i32 %41, 134283264
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !329

53:                                               ; preds = %50
  tail call void @Perl_croak_no_modify() #13
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, ptr %34, align 4, !tbaa !216
  %56 = and i32 %55, 255
  %57 = icmp ugt i32 %56, 2
  %58 = icmp eq i32 %56, 1
  %59 = or i1 %57, %58
  br i1 %59, label %61, label %60, !prof !330

60:                                               ; preds = %54
  tail call void @Perl_sv_upgrade(ptr noundef %33, i32 noundef 1) #13
  br label %93

61:                                               ; preds = %54
  br i1 %57, label %62, label %93, !prof !331

62:                                               ; preds = %61
  %63 = load ptr, ptr %33, align 8, !tbaa !232
  %64 = getelementptr inbounds %struct.xpv, ptr %63, i64 0, i32 3
  %65 = load i64, ptr %64, align 8, !tbaa !196
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %62
  %68 = and i32 %55, 33554432
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !196
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !196
  %75 = zext i8 %74 to i64
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = getelementptr inbounds i8, ptr %72, i64 -9
  %79 = load i64, ptr %78, align 1
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i64 [ %75, %70 ], [ %79, %77 ]
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i8, ptr %72, i64 %82
  store ptr %83, ptr %71, align 8, !tbaa !196
  %84 = and i32 %55, -33554433
  store i32 %84, ptr %34, align 4, !tbaa !216
  br label %85

85:                                               ; preds = %80, %67
  %86 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef %87) #13
  br label %88

88:                                               ; preds = %85, %62
  %89 = load ptr, ptr %33, align 8, !tbaa !232
  %90 = getelementptr inbounds %struct.xpv, ptr %89, i64 0, i32 3
  store i64 0, ptr %90, align 8, !tbaa !196
  %91 = load ptr, ptr %33, align 8, !tbaa !232
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 2
  store i64 0, ptr %92, align 8, !tbaa !234
  br label %93

93:                                               ; preds = %88, %61, %60
  switch i8 %30, label %103 [
    i8 48, label %94
    i8 16, label %96
    i8 32, label %98
  ], !prof !332

94:                                               ; preds = %93
  %95 = tail call ptr @Perl_newSV(i64 noundef 0) #13
  br label %100

96:                                               ; preds = %93
  %97 = tail call ptr @Perl_newSV_type(i32 noundef 11) #13
  br label %100

98:                                               ; preds = %93
  %99 = tail call ptr @Perl_newSV_type(i32 noundef 12) #13
  br label %100

100:                                              ; preds = %94, %96, %98
  %101 = phi ptr [ %99, %98 ], [ %97, %96 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  store ptr %101, ptr %102, align 8, !tbaa !196
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i32, ptr %34, align 4, !tbaa !216
  %105 = or i32 %104, 2048
  store i32 %105, ptr %34, align 4, !tbaa !216
  %106 = and i32 %104, 4194304
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !329

108:                                              ; preds = %103
  %109 = tail call i32 @Perl_mg_set(ptr noundef %33) #13
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, ptr %34, align 4, !tbaa !216
  %112 = and i32 %111, 2097152
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !329

114:                                              ; preds = %110
  %115 = tail call i32 @Perl_mg_get(ptr noundef %33) #13
  br label %116

116:                                              ; preds = %114, %110, %40
  %117 = load i32, ptr %34, align 4, !tbaa !216
  %118 = and i32 %117, 2097152
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !327

120:                                              ; preds = %116
  %121 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_setsv_flags(ptr noundef %121, ptr noundef %33, i32 noundef 1536) #13
  br label %122

122:                                              ; preds = %116, %120
  %123 = phi ptr [ %121, %120 ], [ %33, %116 ]
  store ptr %123, ptr %17, align 8, !tbaa !179
  br label %124

124:                                              ; preds = %28, %122, %9
  %125 = load ptr, ptr %11, align 8, !tbaa !188
  ret ptr %125
}

declare void @Perl_save_clearsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @Perl_vivify_ref(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !333 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !327

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %2, %7
  %10 = load i32, ptr %3, align 4, !tbaa !216
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %85, label %19, !prof !328

19:                                               ; preds = %9
  %20 = and i32 %10, 134283264
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !329

22:                                               ; preds = %19
  tail call void @Perl_croak_no_modify() #13
  br label %23

23:                                               ; preds = %19, %22
  %24 = load i32, ptr %3, align 4, !tbaa !216
  %25 = and i32 %24, 255
  %26 = icmp ugt i32 %25, 2
  %27 = icmp eq i32 %25, 1
  %28 = or i1 %26, %27
  br i1 %28, label %30, label %29, !prof !330

29:                                               ; preds = %23
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 1) #13
  br label %62

30:                                               ; preds = %23
  br i1 %26, label %31, label %62, !prof !331

31:                                               ; preds = %30
  %32 = load ptr, ptr %0, align 8, !tbaa !232
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !196
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = and i32 %24, 33554432
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !196
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !196
  %44 = zext i8 %43 to i64
  %45 = icmp eq i8 %43, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = getelementptr inbounds i8, ptr %41, i64 -9
  %48 = load i64, ptr %47, align 1
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i64 [ %44, %39 ], [ %48, %46 ]
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, ptr %41, i64 %51
  store ptr %52, ptr %40, align 8, !tbaa !196
  %53 = and i32 %24, -33554433
  store i32 %53, ptr %3, align 4, !tbaa !216
  br label %54

54:                                               ; preds = %36, %49
  %55 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef %56) #13
  br label %57

57:                                               ; preds = %54, %31
  %58 = load ptr, ptr %0, align 8, !tbaa !232
  %59 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 3
  store i64 0, ptr %59, align 8, !tbaa !196
  %60 = load ptr, ptr %0, align 8, !tbaa !232
  %61 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  store i64 0, ptr %61, align 8, !tbaa !234
  br label %62

62:                                               ; preds = %29, %57, %30
  switch i32 %1, label %72 [
    i32 48, label %63
    i32 16, label %65
    i32 32, label %67
  ], !prof !332

63:                                               ; preds = %62
  %64 = tail call ptr @Perl_newSV(i64 noundef 0) #13
  br label %69

65:                                               ; preds = %62
  %66 = tail call ptr @Perl_newSV_type(i32 noundef 11) #13
  br label %69

67:                                               ; preds = %62
  %68 = tail call ptr @Perl_newSV_type(i32 noundef 12) #13
  br label %69

69:                                               ; preds = %63, %65, %67
  %70 = phi ptr [ %68, %67 ], [ %66, %65 ], [ %64, %63 ]
  %71 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !196
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, ptr %3, align 4, !tbaa !216
  %74 = or i32 %73, 2048
  store i32 %74, ptr %3, align 4, !tbaa !216
  %75 = and i32 %73, 4194304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !329

77:                                               ; preds = %72
  %78 = tail call i32 @Perl_mg_set(ptr noundef %0) #13
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, ptr %3, align 4, !tbaa !216
  %81 = and i32 %80, 2097152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !329

83:                                               ; preds = %79
  %84 = tail call i32 @Perl_mg_get(ptr noundef %0) #13
  br label %85

85:                                               ; preds = %83, %79, %9
  %86 = load i32, ptr %3, align 4, !tbaa !216
  %87 = and i32 %86, 2097152
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89, !prof !327

89:                                               ; preds = %85
  %90 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_setsv_flags(ptr noundef %90, ptr noundef %0, i32 noundef 1536) #13
  br label %91

91:                                               ; preds = %85, %89
  %92 = phi ptr [ %90, %89 ], [ %0, %85 ]
  ret ptr %92
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_readline() local_unnamed_addr #5 !prof !334 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr %1, align 8, !tbaa !179
  %3 = icmp eq ptr %2, null
  br i1 %3, label %123, label %4, !prof !335

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !216
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !336

9:                                                ; preds = %4
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %2) #13
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !253
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19, !prof !335

19:                                               ; preds = %11
  %20 = zext nneg i8 %17 to i32
  br label %23

21:                                               ; preds = %11
  %22 = tail call i32 @Perl_block_gimme() #13
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !216
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %116, label %29, !prof !336

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !216
  %34 = and i32 %33, 1048576
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %116, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %31, align 8, !tbaa !232
  %38 = load ptr, ptr %37, align 8, !tbaa !337
  %39 = getelementptr inbounds %struct.hv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !339
  %41 = and i32 %40, 268435456
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %116, label %43

43:                                               ; preds = %36
  %44 = tail call ptr @Perl_amagic_call(ptr noundef %13, ptr noundef nonnull @PL_sv_undef, i32 noundef 15, i32 noundef 73) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %116, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  switch i32 %24, label %82 [
    i32 1, label %112
    i32 3, label %48
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !216
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @Perl_mg_size(ptr noundef nonnull %44) #13
  %55 = sext i32 %54 to i64
  br label %60

56:                                               ; preds = %48
  %57 = load ptr, ptr %44, align 8, !tbaa !311
  %58 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !313
  br label %60

60:                                               ; preds = %53, %56
  %61 = phi i64 [ %55, %53 ], [ %59, %56 ]
  %62 = getelementptr inbounds ptr, ptr %47, i64 -1
  %63 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %62 to i64
  %66 = sub i64 %64, %65
  %67 = ashr exact i64 %66, 3
  %68 = icmp sgt i64 %67, %61
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = add nsw i64 %61, 1
  %71 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %62, ptr noundef nonnull %62, i64 noundef %70) #13
  br label %72

72:                                               ; preds = %60, %69
  %73 = phi ptr [ %71, %69 ], [ %62, %60 ]
  %74 = icmp slt i64 %61, 0
  br i1 %74, label %112, label %75

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %79, %75 ], [ %73, %72 ]
  %77 = phi i64 [ %80, %75 ], [ 0, %72 ]
  %78 = tail call ptr @Perl_av_shift(ptr noundef nonnull %44) #13
  %79 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %78, ptr %79, align 8, !tbaa !179
  %80 = add nuw i64 %77, 1
  %81 = icmp eq i64 %77, %61
  br i1 %81, label %112, label %75, !llvm.loop !341

82:                                               ; preds = %46
  %83 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %84 = getelementptr inbounds %struct.op, ptr %83, i64 0, i32 5
  %85 = load i8, ptr %84, align 2, !tbaa !253
  %86 = and i8 %85, 64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds ptr, ptr %47, i64 -1
  br label %95

90:                                               ; preds = %82
  %91 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %92 = getelementptr inbounds %struct.op, ptr %83, i64 0, i32 3
  %93 = load i64, ptr %92, align 8, !tbaa !215
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  br label %95

95:                                               ; preds = %90, %88
  %96 = phi ptr [ %89, %88 ], [ %94, %90 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !179
  tail call void @Perl_sv_setsv_flags(ptr noundef %97, ptr noundef nonnull %44, i32 noundef 1538) #13
  %98 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %99 = getelementptr inbounds %struct.op, ptr %98, i64 0, i32 5
  %100 = load i8, ptr %99, align 2, !tbaa !253
  %101 = shl i8 %100, 1
  %102 = ashr i8 %101, 7
  %103 = sext i8 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %47, i64 %103
  %105 = getelementptr inbounds %struct.sv, ptr %97, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !216
  %107 = and i32 %106, 4194304
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %95
  %110 = tail call i32 @Perl_mg_set(ptr noundef %97) #13
  br label %111

111:                                              ; preds = %95, %109
  store ptr %97, ptr %104, align 8, !tbaa !179
  br label %112

112:                                              ; preds = %75, %72, %46, %111
  %113 = phi ptr [ %47, %46 ], [ %104, %111 ], [ %73, %72 ], [ %79, %75 ]
  store ptr %113, ptr @PL_stack_sp, align 8, !tbaa !179
  %114 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %115 = load ptr, ptr %114, align 8, !tbaa !188
  br label %116

116:                                              ; preds = %43, %36, %29, %23, %112
  %117 = phi ptr [ %115, %112 ], [ undef, %23 ], [ undef, %29 ], [ undef, %36 ], [ undef, %43 ]
  %118 = phi i1 [ false, %112 ], [ true, %23 ], [ true, %29 ], [ true, %36 ], [ true, %43 ]
  br i1 %118, label %119, label %173, !prof !336

119:                                              ; preds = %116
  %120 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %121 = getelementptr inbounds ptr, ptr %120, i64 -1
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !179
  %122 = load ptr, ptr %120, align 8, !tbaa !179
  store ptr %122, ptr @PL_last_in_gv, align 8, !tbaa !179
  br label %126

123:                                              ; preds = %0
  %124 = load ptr, ptr @PL_argvgv, align 8, !tbaa !179
  store ptr %124, ptr @PL_last_in_gv, align 8, !tbaa !179
  %125 = getelementptr inbounds ptr, ptr %1, i64 -1
  store ptr %125, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %126

126:                                              ; preds = %123, %119
  %127 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %128 = getelementptr inbounds %struct.gv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !221
  %130 = and i32 %129, 49152
  %131 = icmp eq i32 %130, 32768
  br i1 %131, label %132, label %136, !prof !336

132:                                              ; preds = %126
  %133 = and i32 %129, 255
  %134 = add nsw i32 %133, -9
  %135 = icmp ult i32 %134, 2
  br i1 %135, label %171, label %136, !prof !336

136:                                              ; preds = %132, %126
  %137 = and i32 %129, 2048
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.gv, ptr %127, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !196
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !216
  %144 = and i32 %143, 49152
  %145 = icmp eq i32 %144, 32768
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = and i32 %143, 255
  %148 = add nsw i32 %147, -9
  %149 = icmp ult i32 %148, 2
  br i1 %149, label %169, label %150

150:                                              ; preds = %146, %139, %136
  %151 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %152 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %153 = ptrtoint ptr %152 to i64
  %154 = ptrtoint ptr %151 to i64
  %155 = sub i64 %153, %154
  %156 = icmp slt i64 %155, 8
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = tail call ptr @Perl_stack_grow(ptr noundef %151, ptr noundef %151, i64 noundef 1) #13
  br label %159

159:                                              ; preds = %150, %157
  %160 = phi ptr [ %158, %157 ], [ %151, %150 ]
  %161 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %162 = getelementptr inbounds ptr, ptr %160, i64 1
  store ptr %161, ptr %162, align 8, !tbaa !179
  store ptr %162, ptr @PL_stack_sp, align 8, !tbaa !179
  %163 = tail call ptr @Perl_pp_rv2gv() #13
  %164 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %165 = getelementptr inbounds ptr, ptr %164, i64 -1
  store ptr %165, ptr @PL_stack_sp, align 8, !tbaa !179
  %166 = load ptr, ptr %164, align 8, !tbaa !179
  %167 = icmp eq ptr %166, @PL_sv_undef
  %168 = select i1 %167, ptr null, ptr %166
  br label %169

169:                                              ; preds = %146, %159
  %170 = phi ptr [ %168, %159 ], [ %141, %146 ]
  store ptr %170, ptr @PL_last_in_gv, align 8
  br label %171

171:                                              ; preds = %169, %132
  %172 = tail call ptr @Perl_do_readline()
  br label %173

173:                                              ; preds = %116, %171
  %174 = phi ptr [ %172, %171 ], [ %117, %116 ]
  ret ptr %174
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_pp_rv2gv() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_do_readline() local_unnamed_addr #4 !prof !334 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !253
  %6 = and i8 %5, 64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !336

8:                                                ; preds = %0
  %9 = getelementptr inbounds ptr, ptr %2, i64 -1
  br label %15

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !215
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %2, %10 ]
  %17 = phi ptr [ %2, %8 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !335

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !216
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %34, !prof !336

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !335

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !342
  br label %34

34:                                               ; preds = %21, %15, %27, %31
  %35 = phi ptr [ %33, %31 ], [ null, %27 ], [ null, %15 ], [ null, %21 ]
  %36 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 511
  %39 = and i8 %5, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41, !prof !335

41:                                               ; preds = %34
  %42 = zext nneg i8 %39 to i32
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_block_gimme() #13
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq ptr %35, null
  br i1 %47, label %87, label %48, !prof !335

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !216
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !336

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_mg_find(ptr noundef nonnull %35, i32 noundef 113) #13
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %54, %53 ], [ null, %48 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58, !prof !336

58:                                               ; preds = %55
  %59 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !179
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.16, i32 noundef 0) #13
  store ptr %62, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 23), align 8, !tbaa !179
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %58 ]
  %65 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %64, ptr noundef %16, ptr noundef nonnull %35, ptr noundef nonnull %56, i32 noundef %46, i32 noundef 0) #13
  %66 = icmp eq i32 %46, 2
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %69 = load ptr, ptr %68, align 8, !tbaa !179
  %70 = icmp eq ptr %18, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef %69, i32 noundef 1554) #13
  br label %72

72:                                               ; preds = %67, %71
  %73 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !216
  %75 = and i32 %74, 4194304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @Perl_mg_set(ptr noundef %18) #13
  br label %79

79:                                               ; preds = %72, %77
  store ptr %18, ptr %68, align 8, !tbaa !179
  br label %80

80:                                               ; preds = %79, %63
  %81 = phi ptr [ %68, %79 ], [ %16, %63 ]
  %82 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %83 = load ptr, ptr %82, align 8, !tbaa !188
  br label %84

84:                                               ; preds = %55, %80
  %85 = phi ptr [ %81, %80 ], [ %16, %55 ]
  %86 = phi ptr [ %83, %80 ], [ undef, %55 ]
  br i1 %57, label %87, label %588, !prof !336

87:                                               ; preds = %84, %45
  %88 = phi ptr [ %85, %84 ], [ %16, %45 ]
  br i1 %47, label %208, label %89, !prof !335

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.io, ptr %35, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !196
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %197, !prof !335

93:                                               ; preds = %89
  %94 = load ptr, ptr %35, align 8, !tbaa !343
  %95 = getelementptr inbounds %struct.xpvio, ptr %94, i64 0, i32 17
  %96 = load i8, ptr %95, align 1, !tbaa !345
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %191, label %100

100:                                              ; preds = %93
  %101 = and i32 %97, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %180, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.xpvio, ptr %94, i64 0, i32 4
  store i64 0, ptr %104, align 8, !tbaa !196
  %105 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %106 = getelementptr inbounds %struct.gv, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !196
  %108 = getelementptr inbounds %struct.gp, ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !295
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = tail call ptr @Perl_gv_add_by_type(ptr noundef %105, i32 noundef 11) #13
  %113 = getelementptr inbounds %struct.gv, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !196
  %115 = getelementptr inbounds %struct.gp, ptr %114, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !295
  br label %117

117:                                              ; preds = %103, %111
  %118 = phi ptr [ %116, %111 ], [ %109, %103 ]
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !216
  %121 = and i32 %120, 8388608
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = tail call i32 @Perl_mg_size(ptr noundef %118) #13
  %125 = sext i32 %124 to i64
  br label %130

126:                                              ; preds = %117
  %127 = load ptr, ptr %118, align 8, !tbaa !311
  %128 = getelementptr inbounds %struct.xpvav, ptr %127, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !313
  br label %130

130:                                              ; preds = %123, %126
  %131 = phi i64 [ %125, %123 ], [ %129, %126 ]
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %180

133:                                              ; preds = %130
  %134 = load ptr, ptr %35, align 8, !tbaa !343
  %135 = getelementptr inbounds %struct.xpvio, ptr %134, i64 0, i32 17
  %136 = load i8, ptr %135, align 1, !tbaa !345
  %137 = and i8 %136, -3
  store i8 %137, ptr %135, align 1, !tbaa !345
  %138 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %139 = tail call zeroext i1 @Perl_do_open6(ptr noundef %138, ptr noundef nonnull @.str.17, i64 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #13
  %140 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %133
  %143 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %144 = getelementptr inbounds %struct.gv, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !196
  %146 = load ptr, ptr %145, align 8, !tbaa !205
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = tail call ptr @Perl_gv_add_by_type(ptr noundef %143, i32 noundef 0) #13
  %150 = getelementptr inbounds %struct.gv, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !196
  br label %152

152:                                              ; preds = %142, %148
  %153 = phi ptr [ %151, %148 ], [ %145, %142 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !179
  tail call void @Perl_sv_untaint(ptr noundef %154) #13
  br label %155

155:                                              ; preds = %133, %152
  %156 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %157 = getelementptr inbounds %struct.gv, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !196
  %159 = load ptr, ptr %158, align 8, !tbaa !205
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = tail call ptr @Perl_gv_add_by_type(ptr noundef %156, i32 noundef 0) #13
  %163 = getelementptr inbounds %struct.gv, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !196
  br label %165

165:                                              ; preds = %155, %161
  %166 = phi ptr [ %164, %161 ], [ %158, %155 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !179
  tail call void @Perl_sv_setpvn(ptr noundef %167, ptr noundef nonnull @.str.17, i64 noundef 1) #13
  %168 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %169 = getelementptr inbounds %struct.gv, ptr %168, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !196
  %171 = load ptr, ptr %170, align 8, !tbaa !205
  %172 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !216
  %174 = and i32 %173, 4194304
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %165
  %177 = tail call i32 @Perl_mg_set(ptr noundef %171) #13
  br label %178

178:                                              ; preds = %165, %176
  %179 = load ptr, ptr %90, align 8, !tbaa !196
  br label %239

180:                                              ; preds = %130, %100
  %181 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %182 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %183 = getelementptr inbounds %struct.op, ptr %182, i64 0, i32 5
  %184 = load i8, ptr %183, align 2, !tbaa !253
  %185 = icmp slt i8 %184, 0
  %186 = tail call ptr @Perl_nextargv(ptr noundef %181, i1 noundef zeroext %185) #13
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %208

188:                                              ; preds = %180
  %189 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %190 = tail call zeroext i1 @Perl_do_close(ptr noundef %189, i1 noundef zeroext false) #13
  br label %208

191:                                              ; preds = %93
  %192 = icmp eq i16 %38, 25
  br i1 %192, label %193, label %208

193:                                              ; preds = %191
  %194 = getelementptr inbounds ptr, ptr %88, i64 -1
  %195 = load ptr, ptr %88, align 8, !tbaa !179
  %196 = tail call ptr @Perl_start_glob(ptr noundef %195, ptr noundef nonnull %35) #13
  br label %208

197:                                              ; preds = %89
  %198 = icmp eq i16 %38, 25
  br i1 %198, label %199, label %201, !prof !335

199:                                              ; preds = %197
  %200 = getelementptr inbounds ptr, ptr %88, i64 -1
  br label %208

201:                                              ; preds = %197
  %202 = load ptr, ptr %35, align 8, !tbaa !343
  %203 = getelementptr inbounds %struct.xpvio, ptr %202, i64 0, i32 16
  %204 = load i8, ptr %203, align 8, !tbaa !347
  %205 = icmp eq i8 %204, 62
  br i1 %205, label %206, label %208, !prof !335

206:                                              ; preds = %201
  %207 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  tail call void @Perl_report_wrongway_fh(ptr noundef %207, i8 noundef signext 62) #13
  br label %208

208:                                              ; preds = %191, %193, %180, %188, %201, %206, %199, %87
  %209 = phi ptr [ %91, %199 ], [ %91, %206 ], [ %91, %201 ], [ %186, %180 ], [ null, %188 ], [ %196, %193 ], [ null, %191 ], [ null, %87 ]
  %210 = phi ptr [ %200, %199 ], [ %88, %206 ], [ %88, %201 ], [ %88, %180 ], [ %88, %188 ], [ %194, %193 ], [ %88, %191 ], [ %88, %87 ]
  %211 = icmp eq ptr %209, null
  br i1 %211, label %212, label %239, !prof !335

212:                                              ; preds = %208
  br i1 %47, label %219, label %213

213:                                              ; preds = %212
  %214 = load ptr, ptr %35, align 8, !tbaa !343
  %215 = getelementptr inbounds %struct.xpvio, ptr %214, i64 0, i32 17
  %216 = load i8, ptr %215, align 1, !tbaa !345
  %217 = and i8 %216, 2
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %213, %212
  %220 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 6) #13
  %221 = icmp ne i16 %38, 25
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  tail call void @Perl_report_evil_fh(ptr noundef %224) #13
  br label %225

225:                                              ; preds = %213, %223, %219
  %226 = icmp eq i32 %46, 2
  br i1 %226, label %227, label %584

227:                                              ; preds = %225
  %228 = icmp eq i16 %38, 27
  br i1 %228, label %230, label %229

229:                                              ; preds = %227
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef null, i32 noundef 1538) #13
  br label %230

230:                                              ; preds = %229, %227
  %231 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !216
  %233 = and i32 %232, 4194304
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %230
  %236 = tail call i32 @Perl_mg_set(ptr noundef %18) #13
  br label %237

237:                                              ; preds = %230, %235
  %238 = getelementptr inbounds ptr, ptr %210, i64 1
  store ptr %18, ptr %238, align 8, !tbaa !179
  br label %584

239:                                              ; preds = %208, %178
  %240 = phi ptr [ %209, %208 ], [ %179, %178 ]
  %241 = phi ptr [ %210, %208 ], [ %88, %178 ]
  %242 = icmp eq i32 %46, 2
  br i1 %242, label %243, label %312, !prof !335

243:                                              ; preds = %239
  %244 = icmp eq i16 %38, 27
  br i1 %244, label %245, label %252

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !216
  %248 = and i32 %247, 2097152
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  %251 = tail call i32 @Perl_mg_get(ptr noundef %18) #13
  br label %252

252:                                              ; preds = %250, %245, %243
  %253 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !216
  %255 = and i32 %254, 2048
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %252
  br i1 %244, label %258, label %263

258:                                              ; preds = %257
  %259 = and i32 %254, 430018304
  %260 = icmp eq i32 %259, 1024
  br i1 %260, label %276, label %261

261:                                              ; preds = %258
  %262 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %18, ptr noundef null, i32 noundef 0) #13
  br label %276

263:                                              ; preds = %257
  tail call void @Perl_sv_unref_flags(ptr noundef %18, i32 noundef 0) #13
  br label %276

264:                                              ; preds = %252
  %265 = and i32 %254, 49152
  %266 = icmp eq i32 %265, 32768
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = and i32 %254, 255
  %269 = add nsw i32 %268, -11
  %270 = icmp ult i32 %269, -2
  %271 = and i32 %254, 430016256
  %272 = icmp eq i32 %271, 1024
  %273 = or i1 %272, %270
  br i1 %273, label %276, label %274

274:                                              ; preds = %267
  %275 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %18, ptr noundef null, i32 noundef 0) #13
  br label %276

276:                                              ; preds = %267, %258, %264, %274, %263, %261
  %277 = load i32, ptr %253, align 4, !tbaa !216
  %278 = and i32 %277, 255
  %279 = icmp ugt i32 %278, 2
  br i1 %279, label %281, label %280

280:                                              ; preds = %276
  tail call void @Perl_sv_upgrade(ptr noundef %18, i32 noundef 3) #13
  br label %281

281:                                              ; preds = %280, %276
  %282 = load ptr, ptr %18, align 8, !tbaa !232
  %283 = getelementptr inbounds %struct.xpv, ptr %282, i64 0, i32 3
  %284 = load i64, ptr %283, align 8, !tbaa !196
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load i32, ptr %253, align 4, !tbaa !216
  %288 = and i32 %287, 402718720
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = tail call ptr @Perl_sv_grow(ptr noundef %18, i64 noundef 80) #13
  br label %292

292:                                              ; preds = %290, %286, %281
  br i1 %244, label %293, label %315

293:                                              ; preds = %292
  %294 = load i32, ptr %253, align 4, !tbaa !216
  %295 = and i32 %294, 65280
  %296 = icmp ne i32 %295, 0
  %297 = and i32 %294, 255
  %298 = icmp eq i32 %297, 8
  %299 = or i1 %296, %298
  %300 = and i32 %294, 16777471
  %301 = icmp eq i32 %300, 16777226
  %302 = or i1 %301, %299
  br i1 %302, label %303, label %315

303:                                              ; preds = %293
  %304 = and i32 %294, 1024
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %18, ptr noundef null, i32 noundef 0) #13
  br label %308

308:                                              ; preds = %306, %303
  %309 = load ptr, ptr %18, align 8, !tbaa !232
  %310 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 2
  %311 = load i64, ptr %310, align 8, !tbaa !234
  br label %315

312:                                              ; preds = %239
  %313 = tail call ptr @Perl_newSV(i64 noundef 80) #13
  %314 = tail call ptr @Perl_sv_2mortal(ptr noundef %313) #13
  br label %315

315:                                              ; preds = %293, %292, %308, %312
  %316 = phi i64 [ %311, %308 ], [ 0, %292 ], [ 0, %312 ], [ 0, %293 ]
  %317 = phi i64 [ %284, %308 ], [ %284, %292 ], [ 0, %312 ], [ %284, %293 ]
  %318 = phi ptr [ %18, %308 ], [ %18, %292 ], [ %314, %312 ], [ %18, %293 ]
  %319 = trunc i64 %316 to i32
  %320 = icmp eq i16 %38, 25
  %321 = icmp eq i16 %38, 25
  %322 = icmp eq i32 %46, 3
  br label %323

323:                                              ; preds = %369, %315
  %324 = phi ptr [ %375, %369 ], [ %240, %315 ]
  %325 = phi ptr [ %328, %369 ], [ %318, %315 ]
  %326 = phi ptr [ %331, %369 ], [ %241, %315 ]
  br label %327

327:                                              ; preds = %323, %562
  %328 = phi ptr [ %325, %323 ], [ %564, %562 ]
  %329 = phi ptr [ %326, %323 ], [ %548, %562 ]
  br label %330

330:                                              ; preds = %327, %514
  %331 = phi ptr [ %516, %514 ], [ %329, %327 ]
  store ptr %331, ptr @PL_stack_sp, align 8, !tbaa !179
  %332 = call ptr @Perl_sv_gets(ptr noundef %328, ptr noundef %324, i32 noundef %319) #13
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %427, !prof !348

334:                                              ; preds = %330
  %335 = icmp ne i32 %46, 2
  %336 = select i1 %320, i1 true, i1 %335
  br i1 %336, label %363, label %337, !prof !336

337:                                              ; preds = %334
  %338 = load ptr, ptr %328, align 8, !tbaa !232
  %339 = getelementptr inbounds %struct.xpv, ptr %338, i64 0, i32 2
  %340 = load i64, ptr %339, align 8, !tbaa !234
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %363

342:                                              ; preds = %337
  %343 = load ptr, ptr %35, align 8, !tbaa !343
  %344 = getelementptr inbounds %struct.xpvio, ptr %343, i64 0, i32 17
  %345 = load i8, ptr %344, align 1, !tbaa !345
  %346 = and i8 %345, 32
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %342
  %349 = load ptr, ptr @PL_rs, align 8, !tbaa !179
  %350 = getelementptr inbounds %struct.sv, ptr %349, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !216
  %352 = and i32 %351, 65280
  %353 = icmp ne i32 %352, 0
  %354 = and i32 %351, 255
  %355 = icmp eq i32 %354, 8
  %356 = or i1 %353, %355
  %357 = and i32 %351, 16777471
  %358 = icmp eq i32 %357, 16777226
  %359 = or i1 %358, %356
  br i1 %359, label %363, label %360

360:                                              ; preds = %348
  %361 = call i32 @Perl_PerlIO_error(ptr noundef %324) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %427, label %363

363:                                              ; preds = %360, %348, %342, %337, %334
  call void @Perl_PerlIO_clearerr(ptr noundef %324) #13
  %364 = load ptr, ptr %35, align 8, !tbaa !343
  %365 = getelementptr inbounds %struct.xpvio, ptr %364, i64 0, i32 17
  %366 = load i8, ptr %365, align 1, !tbaa !345
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %380, label %369, !prof !336

369:                                              ; preds = %363
  %370 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %371 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %372 = getelementptr inbounds %struct.op, ptr %371, i64 0, i32 5
  %373 = load i8, ptr %372, align 2, !tbaa !253
  %374 = icmp slt i8 %373, 0
  %375 = call ptr @Perl_nextargv(ptr noundef %370, i1 noundef zeroext %374) #13
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %323, !llvm.loop !349

377:                                              ; preds = %369
  %378 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %379 = call zeroext i1 @Perl_do_close(ptr noundef %378, i1 noundef zeroext false) #13
  br label %390

380:                                              ; preds = %363
  br i1 %320, label %381, label %390, !prof !335

381:                                              ; preds = %380
  %382 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !179
  %383 = call zeroext i1 @Perl_do_close(ptr noundef %382, i1 noundef zeroext false) #13
  br i1 %383, label %390, label %384

384:                                              ; preds = %381
  %385 = load i32, ptr @PL_statusvalue, align 4, !tbaa !199
  %386 = ashr i32 %385, 8
  %387 = and i32 %385, 128
  %388 = icmp eq i32 %387, 0
  %389 = select i1 %388, ptr @.str.1, ptr @.str.19
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %386, ptr noundef nonnull %389) #13
  br label %390

390:                                              ; preds = %380, %384, %381, %377
  br i1 %242, label %391, label %416, !prof !335

391:                                              ; preds = %390
  %392 = icmp eq i16 %38, 27
  br i1 %392, label %406, label %393

393:                                              ; preds = %391
  %394 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %395 = load i32, ptr %394, align 4, !tbaa !216
  %396 = and i32 %395, 427886592
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %393
  call void @Perl_sv_force_normal_flags(ptr noundef %18, i32 noundef 4) #13
  br label %399

399:                                              ; preds = %398, %393
  %400 = load i32, ptr %394, align 4, !tbaa !216
  %401 = and i32 %400, 1610547455
  store i32 %401, ptr %394, align 4, !tbaa !216
  %402 = and i32 %400, 33554432
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %399
  %405 = call i32 @Perl_sv_backoff(ptr noundef %18) #13
  br label %406

406:                                              ; preds = %399, %404, %391
  %407 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %408 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %409 = load i32, ptr %408, align 4, !tbaa !216
  %410 = and i32 %409, 4194304
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %414, label %412

412:                                              ; preds = %406
  %413 = call i32 @Perl_mg_set(ptr noundef %18) #13
  br label %414

414:                                              ; preds = %406, %412
  %415 = getelementptr inbounds ptr, ptr %407, i64 1
  store ptr %18, ptr %415, align 8, !tbaa !179
  br label %416

416:                                              ; preds = %414, %390
  %417 = phi ptr [ %415, %414 ], [ %331, %390 ]
  %418 = load ptr, ptr %35, align 8, !tbaa !343
  %419 = getelementptr inbounds %struct.xpvio, ptr %418, i64 0, i32 17
  %420 = load i8, ptr %419, align 1, !tbaa !345
  %421 = and i8 %420, 16
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %423, label %584, !prof !336

423:                                              ; preds = %416
  store i8 1, ptr @PL_tainted, align 1, !tbaa !191
  %424 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %584, label %426, !prof !336

426:                                              ; preds = %423
  call void @Perl_sv_magic(ptr noundef %328, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %584

427:                                              ; preds = %360, %330
  %428 = load ptr, ptr %35, align 8, !tbaa !343
  %429 = getelementptr inbounds %struct.xpvio, ptr %428, i64 0, i32 17
  %430 = load i8, ptr %429, align 1, !tbaa !345
  %431 = and i8 %430, 16
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %433, label %437, !prof !350

433:                                              ; preds = %427
  store i8 1, ptr @PL_tainted, align 1, !tbaa !191
  %434 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %437, label %436, !prof !350

436:                                              ; preds = %433
  call void @Perl_sv_magic(ptr noundef %328, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %437

437:                                              ; preds = %436, %433, %427
  %438 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 2
  %439 = load ptr, ptr %35, align 8, !tbaa !343
  %440 = getelementptr inbounds %struct.xpvio, ptr %439, i64 0, i32 4
  %441 = load i64, ptr %440, align 8, !tbaa !196
  %442 = add nsw i64 %441, 1
  store i64 %442, ptr %440, align 8, !tbaa !196
  %443 = load ptr, ptr %35, align 8, !tbaa !343
  %444 = getelementptr inbounds %struct.xpvio, ptr %443, i64 0, i32 17
  %445 = load i8, ptr %444, align 1, !tbaa !345
  %446 = or i8 %445, 32
  store i8 %446, ptr %444, align 1, !tbaa !345
  %447 = load i32, ptr %438, align 4, !tbaa !216
  %448 = and i32 %447, 4194304
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %452, label %450, !prof !350

450:                                              ; preds = %437
  %451 = call i32 @Perl_mg_set(ptr noundef %328) #13
  br label %452

452:                                              ; preds = %437, %450
  %453 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %454 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %455 = ptrtoint ptr %454 to i64
  %456 = ptrtoint ptr %453 to i64
  %457 = sub i64 %455, %456
  %458 = icmp slt i64 %457, 8
  br i1 %458, label %459, label %461, !prof !351

459:                                              ; preds = %452
  %460 = call ptr @Perl_stack_grow(ptr noundef %453, ptr noundef %453, i64 noundef 1) #13
  br label %461

461:                                              ; preds = %452, %459
  %462 = phi ptr [ %460, %459 ], [ %453, %452 ]
  %463 = getelementptr inbounds ptr, ptr %462, i64 1
  store ptr %328, ptr %463, align 8, !tbaa !179
  br i1 %321, label %464, label %517, !prof !351

464:                                              ; preds = %461
  %465 = load ptr, ptr %328, align 8, !tbaa !232
  %466 = getelementptr inbounds %struct.xpv, ptr %465, i64 0, i32 2
  %467 = load i64, ptr %466, align 8, !tbaa !234
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %490, label %469

469:                                              ; preds = %464
  %470 = load ptr, ptr @PL_rs, align 8, !tbaa !179
  %471 = load ptr, ptr %470, align 8, !tbaa !232
  %472 = getelementptr inbounds %struct.xpv, ptr %471, i64 0, i32 2
  %473 = load i64, ptr %472, align 8, !tbaa !234
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %490, label %475

475:                                              ; preds = %469
  %476 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !196
  %478 = getelementptr inbounds i8, ptr %477, i64 %467
  %479 = getelementptr inbounds i8, ptr %478, i64 -1
  %480 = load i8, ptr %479, align 1, !tbaa !196
  %481 = getelementptr inbounds %struct.sv, ptr %470, i64 0, i32 3
  %482 = load ptr, ptr %481, align 8, !tbaa !196
  %483 = load i8, ptr %482, align 1, !tbaa !196
  %484 = icmp eq i8 %480, %483
  br i1 %484, label %485, label %490

485:                                              ; preds = %475
  store i8 0, ptr %479, align 1, !tbaa !196
  %486 = load ptr, ptr %328, align 8, !tbaa !232
  %487 = getelementptr inbounds %struct.xpv, ptr %486, i64 0, i32 2
  %488 = load i64, ptr %487, align 8, !tbaa !234
  %489 = add i64 %488, -1
  store i64 %489, ptr %487, align 8, !tbaa !234
  br label %490

490:                                              ; preds = %475, %485, %469, %464
  %491 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %492 = load ptr, ptr %491, align 8, !tbaa !196
  %493 = load i8, ptr %492, align 1, !tbaa !196
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %513, label %495

495:                                              ; preds = %490
  %496 = sext i8 %493 to i32
  %497 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.20, i32 %496, i64 20)
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %508

499:                                              ; preds = %495, %504
  %500 = phi ptr [ %501, %504 ], [ %492, %495 ]
  %501 = getelementptr inbounds i8, ptr %500, i64 1
  %502 = load i8, ptr %501, align 1, !tbaa !196
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %513, label %504, !llvm.loop !352

504:                                              ; preds = %499
  %505 = sext i8 %502 to i32
  %506 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.20, i32 %505, i64 20)
  %507 = icmp eq ptr %506, null
  br i1 %507, label %499, label %508, !llvm.loop !352

508:                                              ; preds = %504, %495
  %509 = phi i1 [ %494, %495 ], [ %503, %504 ]
  br i1 %509, label %513, label %510

510:                                              ; preds = %508
  %511 = call i32 @stat64(ptr noundef nonnull %492, ptr noundef nonnull @PL_statbuf) #13
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %514, label %513, !llvm.loop !349

513:                                              ; preds = %499, %490, %510, %508
  br label %514

514:                                              ; preds = %510, %513
  %515 = phi i1 [ true, %513 ], [ false, %510 ]
  %516 = phi ptr [ %463, %513 ], [ %462, %510 ]
  br i1 %515, label %547, label %330

517:                                              ; preds = %461
  %518 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 2
  %519 = load i32, ptr %518, align 4, !tbaa !216
  %520 = and i32 %519, 536870912
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %547, label %522, !prof !350

522:                                              ; preds = %517
  %523 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #13
  br i1 %523, label %524, label %547

524:                                              ; preds = %522
  %525 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %526 = load ptr, ptr %525, align 8, !tbaa !196
  %527 = getelementptr inbounds i8, ptr %526, i64 %316
  %528 = load ptr, ptr %328, align 8, !tbaa !232
  %529 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 2
  %530 = load i64, ptr %529, align 8, !tbaa !234
  %531 = sub i64 %530, %316
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %532 = call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %527, i64 noundef %531, ptr noundef nonnull %1, ptr noundef null) #13
  br i1 %532, label %546, label %533

533:                                              ; preds = %524
  %534 = load ptr, ptr %1, align 8, !tbaa !179
  %535 = load ptr, ptr %525, align 8, !tbaa !196
  %536 = load ptr, ptr %328, align 8, !tbaa !232
  %537 = getelementptr inbounds %struct.xpv, ptr %536, i64 0, i32 2
  %538 = load i64, ptr %537, align 8, !tbaa !234
  %539 = getelementptr inbounds i8, ptr %535, i64 %538
  %540 = icmp ult ptr %534, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %533
  %542 = load i8, ptr %534, align 1, !tbaa !196
  %543 = zext i8 %542 to i32
  br label %544

544:                                              ; preds = %533, %541
  %545 = phi i32 [ %543, %541 ], [ 0, %533 ]
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 44, ptr noundef nonnull @.str.21, i32 noundef %545) #13
  br label %546

546:                                              ; preds = %544, %524
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  br label %547

547:                                              ; preds = %514, %517, %546, %522
  %548 = phi ptr [ %463, %546 ], [ %463, %522 ], [ %463, %517 ], [ %516, %514 ]
  br i1 %322, label %549, label %565, !prof !350

549:                                              ; preds = %547
  %550 = load ptr, ptr %328, align 8, !tbaa !232
  %551 = getelementptr inbounds %struct.xpv, ptr %550, i64 0, i32 3
  %552 = load i64, ptr %551, align 8, !tbaa !196
  %553 = getelementptr inbounds %struct.xpv, ptr %550, i64 0, i32 2
  %554 = load i64, ptr %553, align 8, !tbaa !234
  %555 = sub i64 %552, %554
  %556 = icmp ugt i64 %555, 20
  br i1 %556, label %557, label %562, !prof !353

557:                                              ; preds = %549
  %558 = add i64 %554, 1
  store i64 %558, ptr %551, align 8, !tbaa !196
  %559 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %560 = load ptr, ptr %559, align 8, !tbaa !196
  %561 = call ptr @Perl_safesysrealloc(ptr noundef %560, i64 noundef %558) #13
  store ptr %561, ptr %559, align 8, !tbaa !196
  br label %562

562:                                              ; preds = %557, %549
  %563 = call ptr @Perl_newSV(i64 noundef 80) #13
  %564 = call ptr @Perl_sv_2mortal(ptr noundef %563) #13
  br label %327, !llvm.loop !349

565:                                              ; preds = %547
  %566 = icmp ne i32 %46, 2
  %567 = icmp ne i64 %317, 0
  %568 = or i1 %566, %567
  br i1 %568, label %584, label %569

569:                                              ; preds = %565
  %570 = load ptr, ptr %325, align 8, !tbaa !232
  %571 = getelementptr inbounds %struct.xpv, ptr %570, i64 0, i32 3
  %572 = load i64, ptr %571, align 8, !tbaa !196
  %573 = getelementptr inbounds %struct.xpv, ptr %570, i64 0, i32 2
  %574 = load i64, ptr %573, align 8, !tbaa !234
  %575 = sub i64 %572, %574
  %576 = icmp ugt i64 %575, 80
  br i1 %576, label %577, label %584

577:                                              ; preds = %569
  %578 = icmp ult i64 %574, 60
  %579 = add i64 %574, 40
  %580 = select i1 %578, i64 80, i64 %579
  store i64 %580, ptr %571, align 8, !tbaa !196
  %581 = getelementptr inbounds %struct.sv, ptr %325, i64 0, i32 3
  %582 = load ptr, ptr %581, align 8, !tbaa !196
  %583 = call ptr @Perl_safesysrealloc(ptr noundef %582, i64 noundef %580) #13
  store ptr %583, ptr %581, align 8, !tbaa !196
  br label %584

584:                                              ; preds = %577, %569, %565, %416, %423, %426, %225, %237
  %585 = phi ptr [ %238, %237 ], [ %210, %225 ], [ %417, %426 ], [ %417, %423 ], [ %417, %416 ], [ %548, %565 ], [ %548, %569 ], [ %548, %577 ]
  store ptr %585, ptr @PL_stack_sp, align 8, !tbaa !179
  %586 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %587 = load ptr, ptr %586, align 8, !tbaa !188
  br label %588

588:                                              ; preds = %584, %84
  %589 = phi ptr [ %86, %84 ], [ %587, %584 ]
  ret ptr %589
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_eq() local_unnamed_addr #4 !prof !354 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !216
  %6 = load ptr, ptr %1, align 8, !tbaa !179
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !216
  %9 = or i32 %8, %5
  %10 = and i32 %9, 2099200
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !355

12:                                               ; preds = %0
  %13 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 21, i32 noundef 48) #13
  br i1 %13, label %40, label %14

14:                                               ; preds = %0, %12
  %15 = load ptr, ptr %1, align 8, !tbaa !179
  %16 = load ptr, ptr %2, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !216
  %19 = and i32 %18, -2147483392
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %34, !prof !355

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !216
  %24 = and i32 %23, -2147483392
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %34, !prof !355

26:                                               ; preds = %21
  %27 = load ptr, ptr %16, align 8, !tbaa !232
  %28 = getelementptr inbounds %struct.xpviv, ptr %27, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !196
  %30 = load ptr, ptr %15, align 8, !tbaa !232
  %31 = getelementptr inbounds %struct.xpviv, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !196
  %33 = icmp eq i64 %29, %32
  br label %37

34:                                               ; preds = %21, %14
  %35 = tail call i32 @Perl_do_ncmp(ptr noundef %16, ptr noundef %15) #13
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %34, %26
  %38 = phi i1 [ %33, %26 ], [ %36, %34 ]
  %39 = select i1 %38, ptr @PL_sv_yes, ptr @PL_sv_no, !prof !356
  store ptr %39, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %40

40:                                               ; preds = %12, %37
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %42 = load ptr, ptr %41, align 8, !tbaa !188
  ret ptr %42
}

declare i32 @Perl_do_ncmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_preinc() local_unnamed_addr #0 !prof !357 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = add nsw i16 %5, -47
  %7 = icmp ult i16 %6, 2
  %8 = load ptr, ptr %1, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !216
  %11 = and i32 %10, 255
  %12 = icmp ugt i32 %11, 10
  br i1 %12, label %19, label %13, !prof !358

13:                                               ; preds = %0
  %14 = add nsw i32 %11, -9
  %15 = icmp ult i32 %14, 2
  %16 = and i32 %10, 16826368
  %17 = icmp eq i32 %16, 32768
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %20, !prof !358

19:                                               ; preds = %13, %0
  tail call void @Perl_croak_no_modify() #13
  br label %20

20:                                               ; preds = %13, %19
  %21 = load ptr, ptr %1, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !216
  %24 = and i32 %23, -2011101440
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %39, !prof !359

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !232
  %28 = getelementptr inbounds %struct.xpviv, ptr %27, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !196
  %30 = select i1 %7, i64 9223372036854775807, i64 -9223372036854775808, !prof !360
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %39, label %32, !prof !361

32:                                               ; preds = %26
  %33 = select i1 %7, i64 1, i64 -1, !prof !360
  %34 = add nsw i64 %29, %33
  store i64 %34, ptr %28, align 8, !tbaa !196
  %35 = load ptr, ptr %1, align 8, !tbaa !179
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !216
  %38 = and i32 %37, -24577
  store i32 %38, ptr %36, align 4, !tbaa !216
  br label %42

39:                                               ; preds = %20, %26
  br i1 %7, label %40, label %41, !prof !362

40:                                               ; preds = %39
  tail call void @Perl_sv_inc(ptr noundef %21) #13
  br label %42

41:                                               ; preds = %39
  tail call void @Perl_sv_dec(ptr noundef %21) #13
  br label %42

42:                                               ; preds = %32, %41, %40
  %43 = load ptr, ptr %1, align 8, !tbaa !179
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !216
  %46 = and i32 %45, 4194304
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !363

48:                                               ; preds = %42
  %49 = tail call i32 @Perl_mg_set(ptr noundef %43) #13
  br label %50

50:                                               ; preds = %42, %48
  %51 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %52 = load ptr, ptr %51, align 8, !tbaa !188
  ret ptr %52
}

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare void @Perl_sv_inc(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_or() local_unnamed_addr #0 !prof !364 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !365

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %5() #13
  br label %6

6:                                                ; preds = %0, %4
  %7 = load ptr, ptr %1, align 8, !tbaa !179
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9, !prof !366

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !216
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !367

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 2) #13
  br i1 %15, label %63, label %65, !prof !368

16:                                               ; preds = %9
  %17 = and i32 %11, 65280
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %11, 255
  %20 = icmp eq i32 %19, 8
  %21 = or i1 %18, %20
  %22 = and i32 %11, 16777471
  %23 = icmp eq i32 %22, 16777226
  %24 = or i1 %23, %21
  br i1 %24, label %25, label %65, !prof !369

25:                                               ; preds = %16
  %26 = and i32 %11, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28, !prof !370

28:                                               ; preds = %25
  %29 = load ptr, ptr %7, align 8, !tbaa !232
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31, !prof !371

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !234
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %63, label %35, !prof !372

35:                                               ; preds = %31
  %36 = icmp eq i64 %33, 0
  br i1 %36, label %65, label %37, !prof !373

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !196
  %40 = load i8, ptr %39, align 1, !tbaa !196
  %41 = icmp eq i8 %40, 48
  br i1 %41, label %65, label %63, !prof !374

42:                                               ; preds = %25
  %43 = and i32 %11, 768
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45, !prof !375

45:                                               ; preds = %42
  %46 = and i32 %11, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48, !prof !376

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !tbaa !232
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !196
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63, !prof !377

53:                                               ; preds = %48, %45
  %54 = and i32 %11, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56, !prof !378

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 8, !tbaa !232
  %58 = getelementptr inbounds %struct.xpvnv, ptr %57, i64 0, i32 5
  %59 = load double, ptr %58, align 8, !tbaa !196
  %60 = fcmp une double %59, 0.000000e+00
  br i1 %60, label %63, label %65

61:                                               ; preds = %42
  %62 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %7, i32 noundef 0) #13
  br i1 %62, label %63, label %65, !prof !379

63:                                               ; preds = %37, %61, %56, %48, %31, %14
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !179
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %74

65:                                               ; preds = %61, %56, %16, %6, %53, %37, %35, %28, %14
  %66 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %67 = getelementptr inbounds %struct.op, ptr %66, i64 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 511
  %70 = icmp eq i16 %69, 177
  %71 = sext i1 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !179
  %73 = getelementptr inbounds %struct.logop, ptr %66, i64 0, i32 8
  br label %74

74:                                               ; preds = %65, %63
  %75 = phi ptr [ %64, %63 ], [ %73, %65 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !179
  ret ptr %76
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_defined() local_unnamed_addr #0 !prof !380 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 179
  switch i16 %5, label %23 [
    i16 183, label %7
    i16 179, label %7
  ], !prof !381

7:                                                ; preds = %0, %0
  %8 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !382

10:                                               ; preds = %7
  %11 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %11() #13
  br label %12

12:                                               ; preds = %7, %10
  %13 = load ptr, ptr %1, align 8, !tbaa !179
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !383

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !232
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32, !prof !383

18:                                               ; preds = %12, %15
  %19 = sext i1 %6 to i64
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !179
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.logop, ptr %21, i64 0, i32 8
  br label %103

23:                                               ; preds = %0
  %24 = load ptr, ptr %1, align 8, !tbaa !179
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !384

26:                                               ; preds = %23
  %27 = getelementptr inbounds ptr, ptr %1, i64 -1
  %28 = load ptr, ptr %24, align 8, !tbaa !232
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !385

30:                                               ; preds = %23, %26
  store ptr @PL_sv_no, ptr %1, align 8, !tbaa !179
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !179
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %103

32:                                               ; preds = %26, %15
  %33 = phi ptr [ %13, %15 ], [ %24, %26 ]
  %34 = phi ptr [ %1, %15 ], [ %27, %26 ]
  %35 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !216
  %37 = trunc i32 %36 to i8
  switch i8 %37, label %72 [
    i8 11, label %38
    i8 12, label %53
    i8 13, label %67
  ], !prof !386

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !232
  %40 = getelementptr inbounds %struct.xpvav, ptr %39, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !387
  %42 = icmp slt i64 %41, 0
  %43 = and i32 %36, 2097152
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %44, %42
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = and i32 %36, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %87, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 80) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %87, label %52

52:                                               ; preds = %49, %38
  br label %87

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  %56 = icmp eq ptr %55, null
  %57 = and i32 %36, 2097152
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = and i32 %36, 8388608
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 80) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %63, %53
  br label %87

67:                                               ; preds = %32
  %68 = load ptr, ptr %33, align 8, !tbaa !232
  %69 = getelementptr inbounds %struct.xpvcv, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = icmp ne ptr %70, null
  br label %87

72:                                               ; preds = %32
  %73 = and i32 %36, 2097152
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !388

75:                                               ; preds = %72
  %76 = tail call i32 @Perl_mg_get(ptr noundef nonnull %33) #13
  br label %77

77:                                               ; preds = %72, %75
  %78 = load i32, ptr %35, align 4, !tbaa !216
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
  %88 = phi i1 [ true, %66 ], [ false, %63 ], [ false, %60 ], [ true, %52 ], [ false, %49 ], [ false, %46 ], [ %71, %67 ], [ %86, %77 ]
  switch i16 %5, label %97 [
    i16 183, label %89
    i16 179, label %89
  ], !prof !389

89:                                               ; preds = %87, %87
  br i1 %88, label %90, label %92, !prof !390

90:                                               ; preds = %89
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !179
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %103

92:                                               ; preds = %89
  %93 = sext i1 %6 to i64
  %94 = getelementptr inbounds ptr, ptr %34, i64 %93
  store ptr %94, ptr @PL_stack_sp, align 8, !tbaa !179
  %95 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %96 = getelementptr inbounds %struct.logop, ptr %95, i64 0, i32 8
  br label %103

97:                                               ; preds = %87
  %98 = getelementptr inbounds ptr, ptr %34, i64 1
  br i1 %88, label %99, label %101, !prof !391

99:                                               ; preds = %97
  store ptr @PL_sv_yes, ptr %98, align 8, !tbaa !179
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !179
  %100 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %103

101:                                              ; preds = %97
  store ptr @PL_sv_no, ptr %98, align 8, !tbaa !179
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !179
  %102 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %103

103:                                              ; preds = %101, %99, %92, %90, %30, %18
  %104 = phi ptr [ %91, %90 ], [ %96, %92 ], [ %100, %99 ], [ %102, %101 ], [ %22, %18 ], [ %31, %30 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !179
  ret ptr %105
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_add() local_unnamed_addr #4 !prof !392 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !253
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !393

7:                                                ; preds = %0
  %8 = getelementptr inbounds ptr, ptr %1, i64 -1
  br label %14

9:                                                ; preds = %0
  %10 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %11 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !215
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds ptr, ptr %1, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !216
  %21 = load ptr, ptr %1, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !216
  %24 = or i32 %23, %20
  %25 = and i32 %24, 2099200
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !394

27:                                               ; preds = %14
  %28 = tail call zeroext i1 @Perl_try_amagic_bin(i32 noundef 30, i32 noundef 20) #13
  br i1 %28, label %208, label %29

29:                                               ; preds = %14, %27
  %30 = load ptr, ptr %1, align 8, !tbaa !179
  %31 = load ptr, ptr %17, align 8, !tbaa !179
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !216
  %34 = and i32 %33, 65280
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %33, 255
  %37 = icmp eq i32 %36, 8
  %38 = or i1 %35, %37
  %39 = and i32 %33, 16777471
  %40 = icmp eq i32 %39, 16777226
  %41 = or i1 %40, %38
  br i1 %41, label %48, label %42, !prof !394

42:                                               ; preds = %29
  %43 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %44 = getelementptr inbounds %struct.op, ptr %43, i64 0, i32 5
  %45 = load i8, ptr %44, align 2, !tbaa !253
  %46 = and i8 %45, 64
  %47 = icmp eq i8 %46, 0
  br label %48

48:                                               ; preds = %42, %29
  %49 = phi i1 [ true, %29 ], [ %47, %42 ]
  %50 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !216
  %52 = and i32 %51, 4352
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %51, 1536
  %55 = icmp eq i32 %54, 0
  %56 = or i1 %53, %55
  br i1 %56, label %62, label %57, !prof !394

57:                                               ; preds = %48
  %58 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %30, i32 noundef 0) #13
  %59 = load i32, ptr %50, align 4, !tbaa !216
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %169, label %65

62:                                               ; preds = %48
  %63 = and i32 %51, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %169, label %65, !prof !395

65:                                               ; preds = %62, %57
  br i1 %49, label %66, label %96, !prof !394

66:                                               ; preds = %65
  %67 = load i32, ptr %32, align 4, !tbaa !216
  %68 = and i32 %67, 4352
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %67, 1536
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %69, %71
  br i1 %72, label %78, label %73, !prof !396

73:                                               ; preds = %66
  %74 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %31, i32 noundef 0) #13
  %75 = load i32, ptr %32, align 4, !tbaa !216
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %81, !prof !397

78:                                               ; preds = %66
  %79 = and i32 %67, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81, !prof !398

81:                                               ; preds = %78, %73
  %82 = load i32, ptr %32, align 4, !tbaa !216
  %83 = and i32 %82, -2147483392
  %84 = icmp eq i32 %83, -2147483392
  %85 = zext i1 %84 to i8
  %86 = load ptr, ptr %31, align 8, !tbaa !232
  br i1 %84, label %87, label %90, !prof !395

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.xpvuv, ptr %86, i64 0, i32 4
  %89 = load i64, ptr %88, align 8, !tbaa !196
  br label %96

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.xpviv, ptr %86, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !196
  %93 = icmp sgt i64 %92, -1
  %94 = tail call i64 @llvm.abs.i64(i64 %92, i1 false)
  %95 = select i1 %93, i8 1, i8 %85, !prof !399
  br label %96

96:                                               ; preds = %87, %90, %65, %73, %78
  %97 = phi i64 [ 0, %78 ], [ 0, %73 ], [ 0, %65 ], [ %89, %87 ], [ %94, %90 ]
  %98 = phi i8 [ 0, %78 ], [ 0, %73 ], [ 1, %65 ], [ %85, %87 ], [ %95, %90 ]
  %99 = phi i1 [ false, %78 ], [ false, %73 ], [ true, %65 ], [ true, %87 ], [ true, %90 ]
  br i1 %99, label %100, label %165, !prof !394

100:                                              ; preds = %96
  %101 = load i32, ptr %50, align 4, !tbaa !216
  %102 = and i32 %101, -2147483392
  %103 = icmp eq i32 %102, -2147483392
  %104 = load ptr, ptr %30, align 8, !tbaa !232
  br i1 %103, label %105, label %108, !prof !395

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.xpvuv, ptr %104, i64 0, i32 4
  %107 = load i64, ptr %106, align 8, !tbaa !196
  br label %113

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.xpviv, ptr %104, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !196
  %111 = icmp sgt i64 %110, -1
  %112 = tail call i64 @llvm.abs.i64(i64 %110, i1 false)
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi i64 [ %107, %105 ], [ %112, %108 ]
  %115 = phi i1 [ true, %105 ], [ %111, %108 ]
  %116 = and i8 %98, 1
  %117 = icmp eq i8 %116, 0
  %118 = xor i1 %117, %115
  br i1 %118, label %126, label %119, !prof !400

119:                                              ; preds = %113
  %120 = icmp ult i64 %97, %114
  br i1 %120, label %123, label %121, !prof !401

121:                                              ; preds = %119
  %122 = sub i64 %97, %114
  br label %129

123:                                              ; preds = %119
  %124 = sub i64 %114, %97
  %125 = xor i8 %116, 1
  br label %129

126:                                              ; preds = %113
  %127 = add i64 %114, %97
  %128 = icmp uge i64 %127, %97
  br label %129

129:                                              ; preds = %126, %121, %123
  %130 = phi i8 [ %98, %121 ], [ %125, %123 ], [ %98, %126 ]
  %131 = phi i1 [ true, %121 ], [ true, %123 ], [ %128, %126 ]
  %132 = phi i64 [ %122, %121 ], [ %124, %123 ], [ %127, %126 ]
  br i1 %131, label %133, label %161, !prof !394

133:                                              ; preds = %129
  %134 = and i8 %130, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136, !prof !402

136:                                              ; preds = %133
  tail call void @Perl_sv_setuv(ptr noundef %16, i64 noundef %132) #13
  %137 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !216
  %139 = and i32 %138, 4194304
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %158, label %156, !prof !403

141:                                              ; preds = %133
  %142 = icmp ult i64 %132, -9223372036854775807
  br i1 %142, label %143, label %149, !prof !404

143:                                              ; preds = %141
  %144 = sub i64 0, %132
  tail call void @Perl_sv_setiv(ptr noundef %16, i64 noundef %144) #13
  %145 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !216
  %147 = and i32 %146, 4194304
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %156, !prof !404

149:                                              ; preds = %141
  %150 = uitofp i64 %132 to double
  %151 = fneg double %150
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %151) #13
  %152 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !216
  %154 = and i32 %153, 4194304
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %149, %143, %136
  %157 = tail call i32 @Perl_mg_set(ptr noundef %16) #13
  br label %158

158:                                              ; preds = %156, %149, %143, %136
  store ptr %16, ptr %17, align 8, !tbaa !179
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !179
  %159 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %160 = load ptr, ptr %159, align 8, !tbaa !188
  br label %161

161:                                              ; preds = %129, %158
  %162 = phi ptr [ %17, %158 ], [ %1, %129 ]
  %163 = phi ptr [ %160, %158 ], [ undef, %129 ]
  %164 = xor i1 %131, true
  br label %165

165:                                              ; preds = %161, %96
  %166 = phi i1 [ true, %96 ], [ %164, %161 ]
  %167 = phi ptr [ %1, %96 ], [ %162, %161 ]
  %168 = phi ptr [ undef, %96 ], [ %163, %161 ]
  br i1 %166, label %169, label %211, !prof !395

169:                                              ; preds = %165, %62, %57
  %170 = phi ptr [ %1, %62 ], [ %1, %57 ], [ %167, %165 ]
  %171 = load i32, ptr %50, align 4, !tbaa !216
  %172 = and i32 %171, 512
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %30, align 8, !tbaa !232
  %176 = getelementptr inbounds %struct.xpvnv, ptr %175, i64 0, i32 5
  %177 = load double, ptr %176, align 8, !tbaa !196
  br label %180

178:                                              ; preds = %169
  %179 = tail call double @Perl_sv_2nv_flags(ptr noundef %30, i32 noundef 0) #13
  br label %180

180:                                              ; preds = %178, %174
  %181 = phi double [ %177, %174 ], [ %179, %178 ]
  %182 = getelementptr inbounds ptr, ptr %170, i64 -1
  br i1 %49, label %188, label %183

183:                                              ; preds = %180
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %181) #13
  %184 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %185 = load i32, ptr %184, align 4, !tbaa !216
  %186 = and i32 %185, 4194304
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %207, label %205

188:                                              ; preds = %180
  %189 = load i32, ptr %32, align 4, !tbaa !216
  %190 = and i32 %189, 512
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %31, align 8, !tbaa !232
  %194 = getelementptr inbounds %struct.xpvnv, ptr %193, i64 0, i32 5
  %195 = load double, ptr %194, align 8, !tbaa !196
  br label %198

196:                                              ; preds = %188
  %197 = tail call double @Perl_sv_2nv_flags(ptr noundef %31, i32 noundef 0) #13
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi double [ %195, %192 ], [ %197, %196 ]
  %200 = fadd double %181, %199
  tail call void @Perl_sv_setnv(ptr noundef %16, double noundef %200) #13
  %201 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !216
  %203 = and i32 %202, 4194304
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %198, %183
  %206 = tail call i32 @Perl_mg_set(ptr noundef %16) #13
  br label %207

207:                                              ; preds = %205, %198, %183
  store ptr %16, ptr %182, align 8, !tbaa !179
  store ptr %182, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %208

208:                                              ; preds = %27, %207
  %209 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %210 = load ptr, ptr %209, align 8, !tbaa !188
  br label %211

211:                                              ; preds = %208, %165
  %212 = phi ptr [ %168, %165 ], [ %210, %208 ]
  ret ptr %212
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_aelemfast() local_unnamed_addr #4 !prof !405 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 137
  br i1 %6, label %7, label %12, !prof !406

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !215
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  br label %25

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = getelementptr inbounds %struct.gv, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !295
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28, !prof !407

20:                                               ; preds = %12
  %21 = tail call ptr @Perl_gv_add_by_type(ptr noundef %14, i32 noundef 11) #13
  %22 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 6
  br label %25

25:                                               ; preds = %7, %20
  %26 = phi ptr [ %24, %20 ], [ %11, %7 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !179
  br label %28

28:                                               ; preds = %25, %12
  %29 = phi ptr [ %18, %12 ], [ %27, %25 ]
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !253
  %33 = and i8 %32, 32
  %34 = zext nneg i8 %33 to i32
  %35 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 6
  %36 = load i8, ptr %35, align 1, !tbaa !203
  %37 = sext i8 %36 to i64
  %38 = tail call ptr @Perl_av_fetch(ptr noundef %29, i64 noundef %37, i32 noundef %34) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !408

40:                                               ; preds = %28
  %41 = load ptr, ptr %38, align 8, !tbaa !179
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi ptr [ %41, %40 ], [ @PL_sv_undef, %28 ]
  %44 = icmp ne i8 %33, 0
  %45 = and i1 %44, %39
  br i1 %45, label %46, label %52, !prof !409

46:                                               ; preds = %42
  %47 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %48 = getelementptr inbounds %struct.op, ptr %47, i64 0, i32 6
  %49 = load i8, ptr %48, align 1, !tbaa !203
  %50 = sext i8 %49 to i32
  %51 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i32 noundef %50) #13
  br label %78

52:                                               ; preds = %42
  %53 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %1 to i64
  %56 = sub i64 %54, %55
  %57 = icmp slt i64 %56, 8
  br i1 %57, label %58, label %60, !prof !409

58:                                               ; preds = %52
  %59 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %60

60:                                               ; preds = %52, %58
  %61 = phi ptr [ %59, %58 ], [ %1, %52 ]
  br i1 %44, label %74, label %62, !prof !410

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !316
  %65 = and i32 %64, 8388608
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67, !prof !411

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !216
  %70 = and i32 %69, 2097152
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @Perl_mg_get(ptr noundef %43) #13
  br label %74

74:                                               ; preds = %72, %67, %62, %60
  %75 = getelementptr inbounds ptr, ptr %61, i64 1
  store ptr %43, ptr %75, align 8, !tbaa !179
  store ptr %75, ptr @PL_stack_sp, align 8, !tbaa !179
  %76 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %77 = load ptr, ptr %76, align 8, !tbaa !188
  br label %78

78:                                               ; preds = %74, %46
  %79 = phi ptr [ %51, %46 ], [ %77, %74 ]
  ret ptr %79
}

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_join() local_unnamed_addr #4 !prof !412 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %5 = load i32, ptr %3, align 4, !tbaa !199
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !215
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = getelementptr inbounds ptr, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  tail call void @Perl_do_join(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %14, ptr noundef %1) #13
  store ptr %13, ptr %14, align 8, !tbaa !179
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !179
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  ret ptr %17
}

declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_pushre() local_unnamed_addr #4 !prof !413 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !414

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !179
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !179
  %13 = load ptr, ptr %11, align 8, !tbaa !188
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_print() local_unnamed_addr #4 !prof !415 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %5 = load i32, ptr %3, align 4, !tbaa !199
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !253
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  %14 = select i1 %12, ptr %7, ptr %13, !prof !416
  %15 = select i1 %12, ptr @PL_defoutgv, ptr %13, !prof !416
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !417

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !216
  %21 = and i32 %20, 255
  %22 = add nsw i32 %21, -9
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %31, !prof !418

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !417

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !342
  br label %31

31:                                               ; preds = %18, %0, %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ], [ null, %0 ], [ null, %18 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %95, label %34, !prof !417

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !216
  %37 = and i32 %36, 8388608
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !418

39:                                               ; preds = %34
  %40 = tail call ptr @Perl_mg_find(ptr noundef nonnull %32, i32 noundef 113) #13
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi ptr [ %40, %39 ], [ null, %34 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %138, label %44, !prof !418

44:                                               ; preds = %134, %41
  %45 = phi ptr [ %42, %41 ], [ %135, %134 ]
  %46 = phi ptr [ %32, %41 ], [ %125, %134 ]
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %48 = getelementptr inbounds ptr, ptr %47, i64 %6
  %49 = icmp eq ptr %14, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %1 to i64
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %54, 8
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = ptrtoint ptr %14 to i64
  %58 = ptrtoint ptr %47 to i64
  %59 = sub i64 %57, %58
  %60 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %62 = getelementptr inbounds i8, ptr %61, i64 %59
  br label %63

63:                                               ; preds = %50, %56
  %64 = phi ptr [ %62, %56 ], [ %14, %50 ]
  %65 = phi ptr [ %60, %56 ], [ %1, %50 ]
  %66 = getelementptr inbounds ptr, ptr %64, i64 1
  %67 = getelementptr inbounds ptr, ptr %64, i64 2
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %66 to i64
  %70 = sub i64 %68, %69
  %71 = add i64 %70, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %67, ptr nonnull align 1 %66, i64 %71, i1 false)
  %72 = getelementptr inbounds ptr, ptr %65, i64 1
  br label %73

73:                                               ; preds = %63, %44
  %74 = phi ptr [ %66, %63 ], [ %14, %44 ]
  %75 = phi ptr [ %72, %63 ], [ %1, %44 ]
  %76 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !179
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #13
  store ptr %79, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !179
  br label %80

80:                                               ; preds = %73, %78
  %81 = phi ptr [ %79, %78 ], [ %76, %73 ]
  %82 = getelementptr inbounds ptr, ptr %74, i64 -1
  %83 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %84 = getelementptr inbounds %struct.op, ptr %83, i64 0, i32 4
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 511
  %87 = icmp eq i16 %86, 239
  %88 = select i1 %87, i32 26, i32 10
  %89 = ptrtoint ptr %75 to i64
  %90 = ptrtoint ptr %74 to i64
  %91 = sub i64 %89, %90
  %92 = lshr exact i64 %91, 3
  %93 = trunc i64 %92 to i32
  %94 = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ...) @Perl_tied_method(ptr noundef %81, ptr noundef nonnull %82, ptr noundef nonnull %46, ptr noundef nonnull %45, i32 noundef %88, i32 noundef %93) #13
  br label %268

95:                                               ; preds = %31
  br i1 %17, label %137, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !221
  %99 = and i32 %98, 49152
  %100 = icmp eq i32 %99, 32768
  br i1 %100, label %101, label %137

101:                                              ; preds = %96
  %102 = and i32 %98, 255
  %103 = add nsw i32 %102, -9
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !196
  %108 = getelementptr inbounds %struct.gp, ptr %107, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !419
  %110 = icmp eq ptr %109, null
  br i1 %110, label %137, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !216
  %114 = and i32 %113, 255
  %115 = add nsw i32 %114, -9
  %116 = icmp ult i32 %115, 2
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.gv, ptr %109, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !196
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.gp, ptr %119, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !342
  br label %124

124:                                              ; preds = %111, %117, %121
  %125 = phi ptr [ %123, %121 ], [ null, %117 ], [ null, %111 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.sv, ptr %125, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !216
  %130 = and i32 %129, 8388608
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = tail call ptr @Perl_mg_find(ptr noundef nonnull %125, i32 noundef 113) #13
  br label %134

134:                                              ; preds = %127, %132
  %135 = phi ptr [ %133, %132 ], [ null, %127 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %44

137:                                              ; preds = %101, %96, %134, %124, %105, %95
  tail call void @Perl_report_evil_fh(ptr noundef %16) #13
  br label %251

138:                                              ; preds = %41
  %139 = load ptr, ptr %32, align 8, !tbaa !343
  %140 = getelementptr inbounds %struct.xpvio, ptr %139, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !420
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %149, !prof !417

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.io, ptr %32, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !196
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call void @Perl_report_wrongway_fh(ptr noundef %16, i8 noundef signext 60) #13
  br label %251

148:                                              ; preds = %143
  tail call void @Perl_report_evil_fh(ptr noundef %16) #13
  br label %251

149:                                              ; preds = %138
  %150 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !179
  %151 = getelementptr inbounds %struct.gv, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !196
  %153 = load ptr, ptr %152, align 8, !tbaa !205
  %154 = getelementptr inbounds ptr, ptr %14, i64 1
  %155 = icmp eq ptr %153, null
  br i1 %155, label %184, label %156, !prof !417

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !216
  %159 = and i32 %158, 2162432
  %160 = icmp ne i32 %159, 0
  %161 = and i32 %158, 255
  %162 = icmp eq i32 %161, 8
  %163 = or i1 %160, %162
  %164 = and i32 %158, 16777471
  %165 = icmp eq i32 %164, 16777226
  %166 = or i1 %165, %163
  br i1 %166, label %167, label %184, !prof !417

167:                                              ; preds = %156
  %168 = icmp ugt ptr %154, %1
  br i1 %168, label %193, label %169

169:                                              ; preds = %167, %182
  %170 = phi ptr [ %174, %182 ], [ %154, %167 ]
  %171 = load ptr, ptr %170, align 8, !tbaa !179
  %172 = tail call zeroext i1 @Perl_do_print(ptr noundef %171, ptr noundef nonnull %141) #13
  br i1 %172, label %173, label %193

173:                                              ; preds = %169
  %174 = getelementptr inbounds ptr, ptr %170, i64 1
  %175 = icmp ugt ptr %174, %1
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @PL_ofsgv, align 8, !tbaa !179
  %178 = getelementptr inbounds %struct.gv, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !196
  %180 = load ptr, ptr %179, align 8, !tbaa !205
  %181 = tail call zeroext i1 @Perl_do_print(ptr noundef %180, ptr noundef nonnull %141) #13
  br i1 %181, label %182, label %193

182:                                              ; preds = %176, %173
  %183 = icmp ugt ptr %174, %1
  br i1 %183, label %193, label %169, !llvm.loop !421

184:                                              ; preds = %156, %149
  %185 = icmp ugt ptr %154, %1
  br i1 %185, label %193, label %186, !prof !422

186:                                              ; preds = %184, %190
  %187 = phi ptr [ %191, %190 ], [ %154, %184 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !179
  %189 = tail call zeroext i1 @Perl_do_print(ptr noundef %188, ptr noundef nonnull %141) #13
  br i1 %189, label %190, label %193, !prof !423

190:                                              ; preds = %186
  %191 = getelementptr inbounds ptr, ptr %187, i64 1
  %192 = icmp ugt ptr %191, %1
  br i1 %192, label %193, label %186, !prof !424, !llvm.loop !425

193:                                              ; preds = %169, %182, %176, %186, %190, %167, %184
  %194 = phi ptr [ %154, %184 ], [ %154, %167 ], [ %191, %190 ], [ %187, %186 ], [ %170, %176 ], [ %174, %182 ], [ %170, %169 ]
  %195 = icmp ugt ptr %194, %1
  br i1 %195, label %196, label %234, !prof !418

196:                                              ; preds = %193
  %197 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %198 = getelementptr inbounds %struct.op, ptr %197, i64 0, i32 4
  %199 = load i16, ptr %198, align 8
  %200 = and i16 %199, 511
  %201 = icmp eq i16 %200, 239
  br i1 %201, label %202, label %208, !prof !417

202:                                              ; preds = %196
  %203 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %141, ptr noundef nonnull @.str.3, i64 noundef 1) #13
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %234, label %205

205:                                              ; preds = %202
  %206 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %141) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %224, label %234

208:                                              ; preds = %196
  %209 = load ptr, ptr @PL_ors_sv, align 8, !tbaa !179
  %210 = icmp eq ptr %209, null
  br i1 %210, label %224, label %211, !prof !418

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.sv, ptr %209, i64 0, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !216
  %214 = and i32 %213, 65280
  %215 = icmp ne i32 %214, 0
  %216 = and i32 %213, 255
  %217 = icmp eq i32 %216, 8
  %218 = or i1 %215, %217
  %219 = and i32 %213, 16777471
  %220 = icmp eq i32 %219, 16777226
  %221 = or i1 %220, %218
  br i1 %221, label %222, label %224

222:                                              ; preds = %211
  %223 = tail call zeroext i1 @Perl_do_print(ptr noundef nonnull %209, ptr noundef nonnull %141) #13
  br i1 %223, label %224, label %234

224:                                              ; preds = %211, %208, %222, %205
  %225 = load ptr, ptr %32, align 8, !tbaa !343
  %226 = getelementptr inbounds %struct.xpvio, ptr %225, i64 0, i32 17
  %227 = load i8, ptr %226, align 1, !tbaa !345
  %228 = and i8 %227, 4
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %233, label %230, !prof !426

230:                                              ; preds = %224
  %231 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %141) #13
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %234, label %233, !prof !427

233:                                              ; preds = %224, %230
  br label %234

234:                                              ; preds = %230, %222, %202, %205, %193, %233
  %235 = phi i32 [ 0, %233 ], [ 5, %193 ], [ 5, %205 ], [ 5, %202 ], [ 5, %222 ], [ 5, %230 ]
  switch i32 %235, label %268 [
    i32 0, label %236
    i32 5, label %253
  ], !prof !428

236:                                              ; preds = %234
  %237 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %238 = getelementptr inbounds ptr, ptr %237, i64 %6
  %239 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %240 = ptrtoint ptr %239 to i64
  %241 = ptrtoint ptr %238 to i64
  %242 = sub i64 %240, %241
  %243 = icmp slt i64 %242, 8
  br i1 %243, label %244, label %246, !prof !417

244:                                              ; preds = %236
  %245 = tail call ptr @Perl_stack_grow(ptr noundef %238, ptr noundef %238, i64 noundef 1) #13
  br label %246

246:                                              ; preds = %236, %244
  %247 = phi ptr [ %245, %244 ], [ %238, %236 ]
  %248 = getelementptr inbounds ptr, ptr %247, i64 1
  store ptr @PL_sv_yes, ptr %248, align 8, !tbaa !179
  store ptr %248, ptr @PL_stack_sp, align 8, !tbaa !179
  %249 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %250 = load ptr, ptr %249, align 8, !tbaa !188
  br label %268

251:                                              ; preds = %147, %148, %137
  %252 = tail call ptr @__errno_location() #14
  store i32 9, ptr %252, align 4, !tbaa !199
  br label %253

253:                                              ; preds = %251, %234
  %254 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %255 = getelementptr inbounds ptr, ptr %254, i64 %6
  %256 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %257 = ptrtoint ptr %256 to i64
  %258 = ptrtoint ptr %255 to i64
  %259 = sub i64 %257, %258
  %260 = icmp slt i64 %259, 8
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = tail call ptr @Perl_stack_grow(ptr noundef %255, ptr noundef %255, i64 noundef 1) #13
  br label %263

263:                                              ; preds = %253, %261
  %264 = phi ptr [ %262, %261 ], [ %255, %253 ]
  %265 = getelementptr inbounds ptr, ptr %264, i64 1
  store ptr @PL_sv_undef, ptr %265, align 8, !tbaa !179
  store ptr %265, ptr @PL_stack_sp, align 8, !tbaa !179
  %266 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %267 = load ptr, ptr %266, align 8, !tbaa !188
  br label %268

268:                                              ; preds = %263, %246, %234, %80
  %269 = phi ptr [ %94, %80 ], [ undef, %234 ], [ %267, %263 ], [ %250, %246 ]
  ret ptr %269
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare ptr @Perl_tied_method(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_rv2av() local_unnamed_addr #0 !prof !429 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  store ptr %2, ptr %1, align 8, !tbaa !179
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !253
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !430

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %13

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #13
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  %19 = icmp eq i16 %18, 135
  %20 = icmp eq i16 %18, 394
  %21 = or i1 %19, %20
  %22 = select i1 %21, i32 11, i32 12, !prof !431
  %23 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !216
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !432

27:                                               ; preds = %13
  %28 = tail call i32 @Perl_mg_get(ptr noundef %3) #13
  br label %29

29:                                               ; preds = %13, %27
  %30 = load i32, ptr %23, align 4, !tbaa !216
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33, !prof !433

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !216
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40, !prof !434

40:                                               ; preds = %33
  %41 = load ptr, ptr %35, align 8, !tbaa !232
  %42 = load ptr, ptr %41, align 8, !tbaa !337
  %43 = getelementptr inbounds %struct.hv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !339
  %45 = and i32 %44, 268435456
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !435

47:                                               ; preds = %40
  %48 = select i1 %21, i32 2, i32 3, !prof !336
  %49 = tail call ptr @Perl_amagic_deref_call(ptr noundef %3, i32 noundef %48) #13
  br label %50

50:                                               ; preds = %33, %40, %47
  %51 = phi ptr [ %49, %47 ], [ %3, %40 ], [ %3, %33 ]
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !196
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !216
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, %22
  br i1 %57, label %61, label %58, !prof !436

58:                                               ; preds = %50
  %59 = select i1 %21, ptr @.str.26, ptr @.str.29
  %60 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #13
  br label %266

61:                                               ; preds = %50
  %62 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %63 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 5
  %64 = load i8, ptr %63, align 2, !tbaa !253
  %65 = and i8 %64, 32
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %131, label %67, !prof !437

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 6
  %69 = load i8, ptr %68, align 1, !tbaa !203
  %70 = icmp sgt i8 %69, -1
  br i1 %70, label %131, label %71, !prof !438

71:                                               ; preds = %67
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull @PL_no_localize_ref) #13
  br label %131

72:                                               ; preds = %29
  %73 = and i32 %30, 255
  %74 = icmp eq i32 %73, %22
  br i1 %74, label %131, label %75, !prof !439

75:                                               ; preds = %72
  %76 = and i32 %30, 49152
  %77 = icmp eq i32 %76, 32768
  %78 = add nsw i32 %73, -9
  %79 = icmp ult i32 %78, 2
  %80 = and i1 %77, %79
  br i1 %80, label %89, label %81, !prof !440

81:                                               ; preds = %75
  %82 = select i1 %21, ptr @.str.26, ptr @.str.29, !prof !441
  %83 = call ptr @Perl_softref2xv(ptr noundef %3, ptr noundef nonnull %82, i32 noundef %22, ptr noundef nonnull %1) #13
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89, !prof !442

85:                                               ; preds = %81
  %86 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %86, ptr @PL_stack_sp, align 8, !tbaa !179
  %87 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %88 = load ptr, ptr %87, align 8, !tbaa !188
  br label %127

89:                                               ; preds = %75, %81
  %90 = phi ptr [ %83, %81 ], [ %3, %75 ]
  switch i16 %18, label %102 [
    i16 394, label %91
    i16 135, label %91
  ], !prof !443

91:                                               ; preds = %89, %89
  %92 = getelementptr inbounds %struct.gv, ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !196
  %94 = getelementptr inbounds %struct.gp, ptr %93, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !295
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %116, !prof !444

97:                                               ; preds = %91
  %98 = call ptr @Perl_gv_add_by_type(ptr noundef %90, i32 noundef 11) #13
  %99 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !196
  %101 = getelementptr inbounds %struct.gp, ptr %100, i64 0, i32 6
  br label %113

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.gv, ptr %90, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !196
  %105 = getelementptr inbounds %struct.gp, ptr %104, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !445
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %116, !prof !446

108:                                              ; preds = %102
  %109 = call ptr @Perl_gv_add_by_type(ptr noundef %90, i32 noundef 12) #13
  %110 = getelementptr inbounds %struct.gv, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !196
  %112 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 5
  br label %113

113:                                              ; preds = %97, %108
  %114 = phi ptr [ %112, %108 ], [ %101, %97 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !179
  br label %116

116:                                              ; preds = %113, %102, %91
  %117 = phi ptr [ %95, %91 ], [ %106, %102 ], [ %115, %113 ]
  %118 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %119 = getelementptr inbounds %struct.op, ptr %118, i64 0, i32 6
  %120 = load i8, ptr %119, align 1, !tbaa !203
  %121 = icmp sgt i8 %120, -1
  br i1 %121, label %127, label %122, !prof !447

122:                                              ; preds = %116
  switch i16 %18, label %125 [
    i16 394, label %123
    i16 135, label %123
  ], !prof !448

123:                                              ; preds = %122, %122
  %124 = call ptr @Perl_save_ary(ptr noundef %90) #13
  br label %127

125:                                              ; preds = %122
  %126 = call ptr @Perl_save_hash(ptr noundef %90) #13
  br label %127

127:                                              ; preds = %116, %125, %123, %85
  %128 = phi i1 [ false, %85 ], [ true, %123 ], [ true, %125 ], [ true, %116 ]
  %129 = phi ptr [ %3, %85 ], [ %124, %123 ], [ %126, %125 ], [ %117, %116 ]
  %130 = phi ptr [ %88, %85 ], [ undef, %123 ], [ undef, %125 ], [ undef, %116 ]
  br i1 %128, label %131, label %266, !prof !449

131:                                              ; preds = %72, %127, %61, %67, %71
  %132 = phi ptr [ %53, %71 ], [ %53, %67 ], [ %53, %61 ], [ %129, %127 ], [ %3, %72 ]
  %133 = phi ptr [ undef, %71 ], [ undef, %67 ], [ undef, %61 ], [ %130, %127 ], [ undef, %72 ]
  %134 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %135 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 5
  %136 = load i8, ptr %135, align 2, !tbaa !253
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139, !prof !450

139:                                              ; preds = %131
  %140 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %132, ptr %140, align 8, !tbaa !179
  %141 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %141, ptr @PL_stack_sp, align 8, !tbaa !179
  %142 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %143 = load ptr, ptr %142, align 8, !tbaa !188
  br label %266

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 6
  %146 = load i8, ptr %145, align 1, !tbaa !203
  %147 = and i8 %146, 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %165, label %149, !prof !451

149:                                              ; preds = %144
  %150 = call i32 @Perl_is_lvalue_sub() #13
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %150, 1
  %153 = icmp eq i32 %152, 0
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = icmp eq i32 %14, 3
  br i1 %156, label %157, label %162

157:                                              ; preds = %155
  %158 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %132, ptr %158, align 8, !tbaa !179
  %159 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %159, ptr @PL_stack_sp, align 8, !tbaa !179
  %160 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %161 = load ptr, ptr %160, align 8, !tbaa !188
  br label %162

162:                                              ; preds = %149, %155, %157
  %163 = phi i32 [ 1, %157 ], [ 2, %155 ], [ 0, %149 ]
  %164 = phi ptr [ %161, %157 ], [ %133, %155 ], [ %133, %149 ]
  switch i32 %163, label %266 [
    i32 0, label %165
    i32 2, label %261
  ]

165:                                              ; preds = %144, %162
  switch i16 %18, label %200 [
    i16 394, label %166
    i16 135, label %166
  ], !prof !452

166:                                              ; preds = %165, %165
  switch i32 %14, label %257 [
    i32 3, label %167
    i32 2, label %171
  ], !prof !453

167:                                              ; preds = %166
  %168 = load ptr, ptr %1, align 8, !tbaa !179
  %169 = getelementptr inbounds ptr, ptr %168, i64 -1
  store ptr %169, ptr %1, align 8, !tbaa !179
  store ptr %169, ptr @PL_stack_sp, align 8, !tbaa !179
  call fastcc void @S_pushav(ptr noundef %132)
  %170 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  store ptr %170, ptr %1, align 8, !tbaa !179
  br label %257

171:                                              ; preds = %166
  %172 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %173 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %174 = getelementptr inbounds %struct.op, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !215
  %176 = getelementptr inbounds ptr, ptr %172, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !179
  %178 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !216
  %180 = and i32 %179, 8388608
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182, !prof !454

182:                                              ; preds = %171
  %183 = call i32 @Perl_mg_size(ptr noundef %132) #13
  %184 = sext i32 %183 to i64
  br label %189

185:                                              ; preds = %171
  %186 = load ptr, ptr %132, align 8, !tbaa !311
  %187 = getelementptr inbounds %struct.xpvav, ptr %186, i64 0, i32 2
  %188 = load i64, ptr %187, align 8, !tbaa !313
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i64 [ %184, %182 ], [ %188, %185 ]
  %191 = add nsw i64 %190, 1
  call void @Perl_sv_setiv(ptr noundef %177, i64 noundef %191) #13
  %192 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %193 = load i32, ptr %192, align 4, !tbaa !216
  %194 = and i32 %193, 4194304
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196, !prof !454

196:                                              ; preds = %189
  %197 = call i32 @Perl_mg_set(ptr noundef %177) #13
  br label %198

198:                                              ; preds = %189, %196
  %199 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %177, ptr %199, align 8, !tbaa !179
  br label %257

200:                                              ; preds = %165
  %201 = icmp eq i32 %14, 3
  br i1 %201, label %202, label %205, !prof !455

202:                                              ; preds = %200
  %203 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  store ptr %132, ptr %203, align 8, !tbaa !179
  %204 = call ptr @Perl_do_kv() #13
  br label %266

205:                                              ; preds = %200
  %206 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %207 = getelementptr inbounds %struct.op, ptr %206, i64 0, i32 6
  %208 = load i8, ptr %207, align 1, !tbaa !203
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 32
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218, !prof !456

212:                                              ; preds = %205
  %213 = and i32 %209, 16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %245, label %215, !prof !457

215:                                              ; preds = %212
  %216 = call i32 @Perl_block_gimme() #13
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %245

218:                                              ; preds = %215, %205
  %219 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 2
  %220 = load i32, ptr %219, align 4, !tbaa !216
  %221 = and i32 %220, 8388608
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223, !prof !458

223:                                              ; preds = %218
  %224 = call ptr @Perl_mg_find(ptr noundef %132, i32 noundef 80) #13
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %245

226:                                              ; preds = %223, %218
  %227 = load ptr, ptr %132, align 8, !tbaa !232
  %228 = getelementptr inbounds %struct.xpvhv, ptr %227, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !459
  %230 = getelementptr inbounds %struct.xpvmg, ptr %227, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !196
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233, !prof !458

233:                                              ; preds = %226
  %234 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %132) #13
  %235 = sext i32 %234 to i64
  br label %236

236:                                              ; preds = %226, %233
  %237 = phi i64 [ %235, %233 ], [ 0, %226 ]
  %238 = icmp eq i64 %229, %237
  br i1 %238, label %239, label %242, !prof !461

239:                                              ; preds = %236
  %240 = call ptr @Perl_newSViv(i64 noundef 0) #13
  %241 = call ptr @Perl_sv_2mortal(ptr noundef %240) #13
  br label %242

242:                                              ; preds = %236, %239
  %243 = phi ptr [ %241, %239 ], [ @PL_sv_yes, %236 ]
  %244 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %243, ptr %244, align 8, !tbaa !179
  br label %257

245:                                              ; preds = %223, %215, %212
  %246 = icmp eq i32 %14, 2
  br i1 %246, label %247, label %257, !prof !462

247:                                              ; preds = %245
  %248 = call ptr @Perl_hv_scalar(ptr noundef %132) #13
  %249 = getelementptr inbounds %struct.sv, ptr %248, i64 0, i32 2
  %250 = load i32, ptr %249, align 4, !tbaa !216
  %251 = and i32 %250, 4194304
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253, !prof !336

253:                                              ; preds = %247
  %254 = call i32 @Perl_mg_set(ptr noundef %248) #13
  br label %255

255:                                              ; preds = %247, %253
  %256 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %248, ptr %256, align 8, !tbaa !179
  br label %257

257:                                              ; preds = %167, %198, %166, %245, %255, %242
  %258 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %258, ptr @PL_stack_sp, align 8, !tbaa !179
  %259 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %260 = load ptr, ptr %259, align 8, !tbaa !188
  br label %266

261:                                              ; preds = %162
  %262 = select i1 %21, ptr @.str.7, ptr @.str.8
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, ptr noundef nonnull %262) #13
  %263 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %263, ptr @PL_stack_sp, align 8, !tbaa !179
  %264 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %265 = load ptr, ptr %264, align 8, !tbaa !188
  br label %266

266:                                              ; preds = %127, %261, %257, %202, %162, %139, %58
  %267 = phi ptr [ %60, %58 ], [ %143, %139 ], [ %164, %162 ], [ %265, %261 ], [ %260, %257 ], [ %204, %202 ], [ %130, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %267
}

declare ptr @Perl_amagic_deref_call(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_softref2xv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_save_ary(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_do_kv() local_unnamed_addr #2

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_aassign() local_unnamed_addr #0 !prof !463 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %5 = load i32, ptr %3, align 4, !tbaa !199
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = getelementptr inbounds i32, ptr %3, i64 -2
  store ptr %8, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %9 = load i32, ptr %4, align 4, !tbaa !199
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds ptr, ptr %7, i64 1
  store i16 256, ptr @PL_delaymagic, align 2, !tbaa !464
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 2, !tbaa !253
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19, !prof !466

19:                                               ; preds = %0
  %20 = zext nneg i8 %17 to i32
  br label %23

21:                                               ; preds = %0
  %22 = tail call i32 @Perl_block_gimme() #13
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %43, !prof !467

26:                                               ; preds = %23
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 2, !tbaa !253
  %30 = and i8 %29, 32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %40, !prof !335

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 6
  %34 = load i8, ptr %33, align 1, !tbaa !203
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @Perl_is_lvalue_sub() #13
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %37, %26
  %41 = phi i1 [ true, %26 ], [ false, %32 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %23
  %44 = phi i32 [ %42, %40 ], [ 0, %23 ]
  %45 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %46 = getelementptr inbounds %struct.op, ptr %45, i64 0, i32 6
  %47 = load i8, ptr %46, align 1, !tbaa !203
  %48 = and i8 %47, 64
  %49 = icmp eq i8 %48, 0
  %50 = load i8, ptr @PL_sawalias, align 1, !range !247
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %49, i1 %51, i1 false, !prof !468
  br i1 %52, label %116, label %53, !prof !469

53:                                               ; preds = %43
  %54 = icmp eq ptr %13, %1
  br i1 %54, label %55, label %88, !prof !470

55:                                               ; preds = %53
  %56 = load ptr, ptr %13, align 8, !tbaa !179
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58, !prof !471

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !216
  %61 = and i32 %60, 14680064
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88, !prof !472

63:                                               ; preds = %58
  %64 = and i32 %60, 255
  %65 = add nsw i32 %64, -11
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %88, !prof !473

67:                                               ; preds = %63
  switch i32 %64, label %116 [
    i32 11, label %68
    i32 12, label %75
  ], !prof !474

68:                                               ; preds = %67
  %69 = load ptr, ptr %56, align 8, !tbaa !311
  %70 = getelementptr inbounds %struct.xpvav, ptr %69, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !313
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %88, !prof !475

73:                                               ; preds = %68
  %74 = icmp eq i32 %64, 12
  br i1 %74, label %75, label %116, !prof !476

75:                                               ; preds = %67, %73
  %76 = load ptr, ptr %56, align 8, !tbaa !477
  %77 = getelementptr inbounds %struct.xpvhv, ptr %76, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !459
  %79 = getelementptr inbounds %struct.xpvmg, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !196
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !478

82:                                               ; preds = %75
  %83 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %56) #13
  br label %84

84:                                               ; preds = %75, %82
  %85 = phi i32 [ %83, %82 ], [ 0, %75 ]
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %78, %86
  br i1 %87, label %116, label %88, !prof !479

88:                                               ; preds = %84, %63, %53, %55, %58, %68
  %89 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %90 = ptrtoint ptr %7 to i64
  %91 = ptrtoint ptr %12 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = add nsw i64 %93, 1
  %95 = add nsw i64 %94, %89
  %96 = load i64, ptr @PL_tmps_max, align 8, !tbaa !197
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %100, label %98, !prof !480

98:                                               ; preds = %88
  %99 = tail call i64 @Perl_tmps_grow_p(i64 noundef %95) #13
  br label %100

100:                                              ; preds = %88, %98
  %101 = icmp ugt ptr %12, %7
  br i1 %101, label %116, label %102, !prof !481

102:                                              ; preds = %100, %113
  %103 = phi ptr [ %114, %113 ], [ %12, %100 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !179
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106, !prof !482

106:                                              ; preds = %102
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %107 = getelementptr inbounds %struct.sv, ptr %104, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !216
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %111, !prof !482

110:                                              ; preds = %106
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef nonnull %104) #13
  br label %111

111:                                              ; preds = %106, %110
  %112 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %104, i32 noundef 1554) #13
  store ptr %112, ptr %103, align 8, !tbaa !179
  br label %113

113:                                              ; preds = %111, %102
  %114 = getelementptr inbounds ptr, ptr %103, i64 1
  %115 = icmp ugt ptr %114, %7
  br i1 %115, label %116, label %102, !prof !483, !llvm.loop !484

116:                                              ; preds = %113, %100, %67, %43, %84, %73
  br label %117

117:                                              ; preds = %403, %116
  %118 = phi ptr [ null, %116 ], [ %404, %403 ]
  %119 = phi ptr [ null, %116 ], [ %405, %403 ]
  %120 = phi ptr [ %13, %116 ], [ %134, %403 ]
  %121 = phi ptr [ %12, %116 ], [ %407, %403 ]
  %122 = phi ptr [ %7, %116 ], [ %408, %403 ]
  %123 = phi ptr [ undef, %116 ], [ %409, %403 ]
  %124 = icmp ugt ptr %120, %1
  br i1 %124, label %410, label %125, !prof !485

125:                                              ; preds = %117
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %126 = getelementptr inbounds ptr, ptr %120, i64 1
  %127 = load ptr, ptr %120, align 8, !tbaa !179
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %132, !prof !486

129:                                              ; preds = %125
  %130 = getelementptr inbounds ptr, ptr %120, i64 2
  %131 = load ptr, ptr %126, align 8, !tbaa !179
  br label %132

132:                                              ; preds = %125, %129
  %133 = phi ptr [ %127, %125 ], [ %131, %129 ]
  %134 = phi ptr [ %126, %125 ], [ %130, %129 ]
  %135 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !199
  %137 = trunc i32 %136 to i8
  switch i8 %137, label %355 [
    i8 11, label %138
    i8 12, label %229
  ], !prof !487

138:                                              ; preds = %132
  %139 = and i32 %136, 14680064
  %140 = icmp eq i32 %139, 0
  tail call void @Perl_push_scope() #13
  %141 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !254
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 8, !tbaa !254
  tail call void @Perl_save_pushptr(ptr noundef %133, i32 noundef 11) #13
  tail call void @Perl_av_clear(ptr noundef %133) #13
  %144 = ptrtoint ptr %122 to i64
  %145 = ptrtoint ptr %121 to i64
  %146 = sub i64 %144, %145
  %147 = ashr exact i64 %146, 3
  tail call void @Perl_av_extend(ptr noundef %133, i64 noundef %147) #13
  br label %148

148:                                              ; preds = %213, %138
  %149 = phi i64 [ 0, %138 ], [ %214, %213 ]
  %150 = phi ptr [ %121, %138 ], [ %216, %213 ]
  %151 = phi ptr [ %123, %138 ], [ %217, %213 ]
  %152 = icmp ugt ptr %150, %122
  br i1 %152, label %218, label %153, !prof !488

153:                                              ; preds = %148
  %154 = load ptr, ptr %150, align 8, !tbaa !179
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156, !prof !489

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !216
  %159 = and i32 %158, 2097152
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !490

161:                                              ; preds = %156
  %162 = tail call i32 @Perl_mg_get(ptr noundef nonnull %154) #13
  br label %163

163:                                              ; preds = %161, %156, %153
  br i1 %128, label %167, label %164, !prof !489

164:                                              ; preds = %163
  %165 = tail call ptr @Perl_newSV(i64 noundef 0) #13
  %166 = load ptr, ptr %150, align 8, !tbaa !179
  tail call void @Perl_sv_setsv_flags(ptr noundef %165, ptr noundef %166, i32 noundef 1536) #13
  store ptr %165, ptr %150, align 8, !tbaa !179
  br label %196

167:                                              ; preds = %163
  %168 = load ptr, ptr %150, align 8, !tbaa !179
  %169 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !216
  %171 = and i32 %170, 2048
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.10) #13
  br label %213

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !196
  %178 = getelementptr inbounds %struct.sv, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !216
  %180 = and i32 %179, 255
  %181 = icmp ugt i32 %180, 10
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.11) #13
  br label %213

184:                                              ; preds = %175
  %185 = icmp eq i32 %44, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %184
  %187 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %168, i32 noundef 1538) #13
  store ptr %187, ptr %150, align 8, !tbaa !179
  br label %188

188:                                              ; preds = %186, %184
  %189 = load ptr, ptr %150, align 8, !tbaa !179
  %190 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !196
  %192 = getelementptr inbounds %struct.sv, ptr %191, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !254
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !254
  %195 = load ptr, ptr %190, align 8, !tbaa !196
  br label %196

196:                                              ; preds = %188, %164
  %197 = phi ptr [ %195, %188 ], [ %165, %164 ]
  %198 = getelementptr inbounds ptr, ptr %150, i64 1
  %199 = add nsw i64 %149, 1
  %200 = tail call ptr @Perl_av_store(ptr noundef %133, i64 noundef %149, ptr noundef %197) #13
  br i1 %140, label %212, label %201, !prof !491

201:                                              ; preds = %196
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %205, !prof !492

203:                                              ; preds = %201
  %204 = tail call ptr @Perl_sv_2mortal(ptr noundef %197) #13
  br label %205

205:                                              ; preds = %203, %201
  %206 = getelementptr inbounds %struct.sv, ptr %197, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !216
  %208 = and i32 %207, 4194304
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210, !prof !492

210:                                              ; preds = %205
  %211 = tail call i32 @Perl_mg_set(ptr noundef %197) #13
  br label %212

212:                                              ; preds = %205, %210, %196
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  br label %213

213:                                              ; preds = %212, %182, %173
  %214 = phi i64 [ %149, %182 ], [ %199, %212 ], [ %149, %173 ]
  %215 = phi i1 [ false, %182 ], [ true, %212 ], [ false, %173 ]
  %216 = phi ptr [ %150, %182 ], [ %198, %212 ], [ %150, %173 ]
  %217 = phi ptr [ %183, %182 ], [ %151, %212 ], [ %174, %173 ]
  br i1 %215, label %148, label %403, !prof !490, !llvm.loop !493

218:                                              ; preds = %148
  %219 = load i16, ptr @PL_delaymagic, align 2, !tbaa !464
  %220 = and i16 %219, 4
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %228, label %222, !prof !494

222:                                              ; preds = %218
  %223 = load i32, ptr %135, align 4, !tbaa !216
  %224 = and i32 %223, 4194304
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226, !prof !495

226:                                              ; preds = %222
  %227 = tail call i32 @Perl_mg_set(ptr noundef %133) #13
  br label %228

228:                                              ; preds = %226, %222, %218
  tail call void @Perl_pop_scope() #13
  br label %403

229:                                              ; preds = %132
  %230 = and i32 %136, 14680064
  %231 = icmp eq i32 %230, 0
  %232 = ptrtoint ptr %122 to i64
  %233 = ptrtoint ptr %121 to i64
  %234 = sub i64 %232, %233
  %235 = and i64 %234, 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %263, !prof !496

237:                                              ; preds = %229
  %238 = load ptr, ptr %122, align 8, !tbaa !179
  %239 = icmp eq ptr %238, null
  br i1 %239, label %261, label %240

240:                                              ; preds = %237
  %241 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #13
  br i1 %241, label %242, label %261

242:                                              ; preds = %240
  %243 = icmp eq ptr %122, %121
  br i1 %243, label %244, label %258

244:                                              ; preds = %242
  %245 = load ptr, ptr %122, align 8, !tbaa !179
  %246 = getelementptr inbounds %struct.sv, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !216
  %248 = and i32 %247, 2048
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.sv, ptr %245, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !196
  %253 = getelementptr inbounds %struct.sv, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !216
  %255 = and i32 %254, 255
  %256 = add nsw i32 %255, -11
  %257 = icmp ult i32 %256, 2
  br i1 %257, label %259, label %258

258:                                              ; preds = %250, %244, %242
  br label %259

259:                                              ; preds = %258, %250
  %260 = phi ptr [ @.str.46, %258 ], [ @.str.45, %250 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.5, ptr noundef nonnull %260) #13
  br label %261

261:                                              ; preds = %237, %240, %259
  %262 = getelementptr inbounds ptr, ptr %122, i64 1
  store ptr @PL_sv_undef, ptr %262, align 8, !tbaa !179
  br label %263

263:                                              ; preds = %229, %261
  tail call void @Perl_push_scope() #13
  %264 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !254
  %266 = add i32 %265, 1
  store i32 %266, ptr %264, align 8, !tbaa !254
  tail call void @Perl_save_pushptr(ptr noundef %133, i32 noundef 11) #13
  tail call void @Perl_hv_clear(ptr noundef %133) #13
  %267 = lshr exact i64 %235, 3
  %268 = xor i64 %267, 1
  %269 = getelementptr inbounds ptr, ptr %122, i64 %268
  %270 = icmp ult ptr %121, %269
  br i1 %270, label %271, label %325, !prof !497

271:                                              ; preds = %263
  %272 = icmp eq i32 %44, 0
  br label %273

273:                                              ; preds = %271, %323
  %274 = phi ptr [ %298, %323 ], [ %121, %271 ]
  %275 = phi ptr [ %310, %323 ], [ %121, %271 ]
  %276 = phi i32 [ %309, %323 ], [ 0, %271 ]
  br i1 %272, label %277, label %283, !prof !498

277:                                              ; preds = %273
  %278 = load ptr, ptr %274, align 8, !tbaa !179
  %279 = getelementptr inbounds %struct.sv, ptr %278, i64 0, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !216
  %281 = and i32 %280, 2097152
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283, !prof !498

283:                                              ; preds = %277, %273
  %284 = load ptr, ptr %274, align 8, !tbaa !179
  %285 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %284, i32 noundef 1538) #13
  br label %286

286:                                              ; preds = %277, %283
  %287 = phi ptr [ %285, %283 ], [ %278, %277 ]
  %288 = getelementptr inbounds ptr, ptr %274, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !179
  %290 = getelementptr inbounds %struct.sv, ptr %289, i64 0, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !216
  %292 = and i32 %291, 2097152
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294, !prof !498

294:                                              ; preds = %286
  %295 = tail call i32 @Perl_mg_get(ptr noundef %289) #13
  br label %296

296:                                              ; preds = %286, %294
  %297 = tail call ptr @Perl_newSV(i64 noundef 0) #13
  %298 = getelementptr inbounds ptr, ptr %274, i64 2
  %299 = load ptr, ptr %288, align 8, !tbaa !179
  tail call void @Perl_sv_setsv_flags(ptr noundef %297, ptr noundef %299, i32 noundef 1536) #13
  br i1 %25, label %300, label %308, !prof !499

300:                                              ; preds = %296
  %301 = tail call ptr @Perl_hv_common(ptr noundef %133, ptr noundef %287, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  %304 = add nsw i32 %276, 2
  br label %308

305:                                              ; preds = %300
  %306 = getelementptr inbounds ptr, ptr %275, i64 1
  store ptr %287, ptr %275, align 8, !tbaa !179
  %307 = getelementptr inbounds ptr, ptr %275, i64 2
  store ptr %297, ptr %306, align 8, !tbaa !179
  br label %308

308:                                              ; preds = %303, %305, %296
  %309 = phi i32 [ %304, %303 ], [ %276, %305 ], [ %276, %296 ]
  %310 = phi ptr [ %275, %303 ], [ %307, %305 ], [ %275, %296 ]
  %311 = tail call ptr @Perl_hv_common(ptr noundef %133, ptr noundef %287, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %297, i32 noundef 0) #13
  br i1 %231, label %323, label %312, !prof !498

312:                                              ; preds = %308
  %313 = icmp eq ptr %311, null
  br i1 %313, label %314, label %316

314:                                              ; preds = %312
  %315 = tail call ptr @Perl_sv_2mortal(ptr noundef %297) #13
  br label %316

316:                                              ; preds = %312, %314
  %317 = getelementptr inbounds %struct.sv, ptr %297, i64 0, i32 2
  %318 = load i32, ptr %317, align 4, !tbaa !216
  %319 = and i32 %318, 4194304
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  %322 = tail call i32 @Perl_mg_set(ptr noundef %297) #13
  br label %323

323:                                              ; preds = %321, %316, %308
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %324 = icmp ult ptr %298, %269
  br i1 %324, label %273, label %325, !prof !500, !llvm.loop !501

325:                                              ; preds = %323, %263
  %326 = phi i32 [ 0, %263 ], [ %309, %323 ]
  %327 = phi ptr [ %121, %263 ], [ %298, %323 ]
  tail call void @Perl_pop_scope() #13
  %328 = icmp ne i32 %326, 0
  %329 = and i1 %25, %328
  br i1 %329, label %330, label %349, !prof !496

330:                                              ; preds = %325
  %331 = sext i32 %326 to i64
  %332 = sub nsw i64 0, %331
  %333 = getelementptr inbounds ptr, ptr %122, i64 %332
  %334 = getelementptr inbounds ptr, ptr %333, i64 %268
  %335 = icmp ult ptr %121, %334
  br i1 %335, label %336, label %349

336:                                              ; preds = %330, %345
  %337 = phi ptr [ %347, %345 ], [ %121, %330 ]
  %338 = getelementptr inbounds ptr, ptr %337, i64 1
  %339 = load ptr, ptr %337, align 8, !tbaa !179
  %340 = tail call ptr @Perl_hv_common(ptr noundef %133, ptr noundef %339, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.he, ptr %340, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !196
  br label %345

345:                                              ; preds = %336, %342
  %346 = phi ptr [ %344, %342 ], [ @PL_sv_undef, %336 ]
  %347 = getelementptr inbounds ptr, ptr %337, i64 2
  store ptr %346, ptr %338, align 8, !tbaa !179
  %348 = icmp ult ptr %347, %334
  br i1 %348, label %336, label %349, !llvm.loop !502

349:                                              ; preds = %345, %330, %325
  %350 = phi ptr [ %327, %325 ], [ %121, %330 ], [ %347, %345 ]
  %351 = phi ptr [ %122, %325 ], [ %333, %330 ], [ %333, %345 ]
  %352 = and i1 %25, %236
  %353 = zext i1 %352 to i64
  %354 = getelementptr inbounds ptr, ptr %351, i64 %353
  br label %403

355:                                              ; preds = %132
  %356 = and i32 %136, 134283264
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %370, label %358, !prof !503

358:                                              ; preds = %355
  %359 = icmp eq ptr %133, @PL_sv_undef
  %360 = icmp eq ptr %133, @PL_sv_yes
  %361 = or i1 %359, %360
  %362 = icmp eq ptr %133, @PL_sv_no
  %363 = or i1 %362, %361
  %364 = icmp eq ptr %133, @PL_sv_placeholder
  %365 = or i1 %364, %363
  br i1 %365, label %366, label %370, !prof !504

366:                                              ; preds = %358
  %367 = icmp ule ptr %121, %122
  %368 = zext i1 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %121, i64 %368
  br label %403

370:                                              ; preds = %358, %355
  %371 = icmp ugt ptr %121, %122
  br i1 %371, label %395, label %372, !prof !505

372:                                              ; preds = %370
  %373 = and i32 %136, 4718592
  %374 = icmp eq i32 %373, 524288
  br i1 %374, label %375, label %392, !prof !506

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 1
  %377 = load i32, ptr %376, align 8, !tbaa !254
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %392

379:                                              ; preds = %375
  %380 = and i32 %136, 49152
  %381 = icmp eq i32 %380, 32768
  br i1 %381, label %382, label %389

382:                                              ; preds = %379
  %383 = and i32 %136, 255
  %384 = add nsw i32 %383, -9
  %385 = icmp ult i32 %384, 2
  %386 = and i32 %136, 16777216
  %387 = icmp eq i32 %386, 0
  %388 = and i1 %387, %385
  br i1 %388, label %392, label %389

389:                                              ; preds = %382, %379
  %390 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #13
  br i1 %390, label %391, label %392

391:                                              ; preds = %389
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str) #13
  br label %392

392:                                              ; preds = %382, %372, %375, %389, %391
  %393 = load ptr, ptr %121, align 8, !tbaa !179
  tail call void @Perl_sv_setsv_flags(ptr noundef %133, ptr noundef %393, i32 noundef 1538) #13
  %394 = getelementptr inbounds ptr, ptr %121, i64 1
  store ptr %133, ptr %121, align 8, !tbaa !179
  br label %396

395:                                              ; preds = %370
  tail call void @Perl_sv_setsv_flags(ptr noundef %133, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #13
  br label %396

396:                                              ; preds = %392, %395
  %397 = phi ptr [ %394, %392 ], [ %121, %395 ]
  %398 = load i32, ptr %135, align 4, !tbaa !216
  %399 = and i32 %398, 4194304
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401, !prof !507

401:                                              ; preds = %396
  %402 = tail call i32 @Perl_mg_set(ptr noundef %133) #13
  br label %403

403:                                              ; preds = %213, %366, %228, %349, %396, %401
  %404 = phi ptr [ %118, %401 ], [ %118, %396 ], [ %133, %349 ], [ %118, %228 ], [ %118, %366 ], [ %118, %213 ]
  %405 = phi ptr [ %119, %401 ], [ %119, %396 ], [ %119, %349 ], [ %133, %228 ], [ %119, %366 ], [ %133, %213 ]
  %406 = phi i1 [ true, %401 ], [ true, %396 ], [ true, %349 ], [ true, %228 ], [ true, %366 ], [ false, %213 ]
  %407 = phi ptr [ %397, %401 ], [ %397, %396 ], [ %350, %349 ], [ %150, %228 ], [ %369, %366 ], [ %216, %213 ]
  %408 = phi ptr [ %122, %401 ], [ %122, %396 ], [ %354, %349 ], [ %122, %228 ], [ %122, %366 ], [ %122, %213 ]
  %409 = phi ptr [ %123, %401 ], [ %123, %396 ], [ %123, %349 ], [ %151, %228 ], [ %123, %366 ], [ %217, %213 ]
  br i1 %406, label %117, label %513, !prof !508, !llvm.loop !509

410:                                              ; preds = %117
  %411 = load i16, ptr @PL_delaymagic, align 2, !tbaa !464
  %412 = and i16 %411, -257
  %413 = icmp eq i16 %412, 0
  br i1 %413, label %462, label %414, !prof !510

414:                                              ; preds = %410
  %415 = tail call i32 @getuid() #13
  %416 = tail call i32 @geteuid() #13
  %417 = tail call i32 @getgid() #13
  %418 = tail call i32 @getegid() #13
  %419 = load i16, ptr @PL_delaymagic, align 2, !tbaa !464
  %420 = and i16 %419, 3
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %432, label %422, !prof !511

422:                                              ; preds = %414
  %423 = load i32, ptr @PL_delaymagic_uid, align 4, !tbaa !199
  %424 = load i32, ptr @PL_delaymagic_euid, align 4, !tbaa !199
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.12) #13
  br label %459

428:                                              ; preds = %422
  %429 = tail call i32 @setuid(i32 noundef %423) #13
  %430 = tail call i32 @getuid() #13
  %431 = tail call i32 @geteuid() #13
  br label %432

432:                                              ; preds = %428, %414
  %433 = phi i32 [ %430, %428 ], [ %415, %414 ]
  %434 = phi i32 [ %431, %428 ], [ %416, %414 ]
  %435 = load i16, ptr @PL_delaymagic, align 2, !tbaa !464
  %436 = and i16 %435, 48
  %437 = icmp eq i16 %436, 0
  br i1 %437, label %448, label %438, !prof !511

438:                                              ; preds = %432
  %439 = load i32, ptr @PL_delaymagic_gid, align 4, !tbaa !199
  %440 = load i32, ptr @PL_delaymagic_egid, align 4, !tbaa !199
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %444, label %442

442:                                              ; preds = %438
  %443 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.13) #13
  br label %459

444:                                              ; preds = %438
  %445 = tail call i32 @setgid(i32 noundef %439) #13
  %446 = tail call i32 @getgid() #13
  %447 = tail call i32 @getegid() #13
  br label %448

448:                                              ; preds = %444, %432
  %449 = phi i32 [ %446, %444 ], [ %417, %432 ]
  %450 = phi i32 [ %447, %444 ], [ %418, %432 ]
  %451 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %452 = icmp ne i32 %433, 0
  %453 = icmp ne i32 %434, %433
  %454 = icmp ne i32 %450, %449
  %455 = select i1 %453, i1 true, i1 %454, !prof !495
  %456 = select i1 %452, i1 %455, i1 false, !prof !511
  %457 = zext i1 %456 to i8
  %458 = or i8 %451, %457
  store i8 %458, ptr @PL_tainting, align 1, !tbaa !191
  br label %459

459:                                              ; preds = %448, %442, %426
  %460 = phi i1 [ false, %426 ], [ false, %442 ], [ true, %448 ]
  %461 = phi ptr [ %427, %426 ], [ %443, %442 ], [ %123, %448 ]
  br i1 %460, label %462, label %513, !prof !511

462:                                              ; preds = %459, %410
  store i16 0, ptr @PL_delaymagic, align 2, !tbaa !464
  switch i32 %24, label %482 [
    i32 1, label %509
    i32 2, label %463
  ], !prof !512

463:                                              ; preds = %462
  %464 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %465 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %466 = getelementptr inbounds %struct.op, ptr %465, i64 0, i32 3
  %467 = load i64, ptr %466, align 8, !tbaa !215
  %468 = getelementptr inbounds ptr, ptr %464, i64 %467
  %469 = load ptr, ptr %468, align 8, !tbaa !179
  %470 = ptrtoint ptr %122 to i64
  %471 = ptrtoint ptr %12 to i64
  %472 = sub i64 %470, %471
  %473 = ashr exact i64 %472, 3
  %474 = add nsw i64 %473, 1
  tail call void @Perl_sv_setiv(ptr noundef %469, i64 noundef %474) #13
  %475 = getelementptr inbounds %struct.sv, ptr %469, i64 0, i32 2
  %476 = load i32, ptr %475, align 4, !tbaa !216
  %477 = and i32 %476, 4194304
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %481, label %479, !prof !513

479:                                              ; preds = %463
  %480 = tail call i32 @Perl_mg_set(ptr noundef %469) #13
  br label %481

481:                                              ; preds = %463, %479
  store ptr %469, ptr %12, align 8, !tbaa !179
  br label %509

482:                                              ; preds = %462
  %483 = icmp ne ptr %119, null
  %484 = icmp ne ptr %118, null
  %485 = select i1 %483, i1 true, i1 %484, !prof !336
  br i1 %485, label %509, label %486, !prof !336

486:                                              ; preds = %482
  %487 = ptrtoint ptr %1 to i64
  %488 = ptrtoint ptr %13 to i64
  %489 = sub i64 %487, %488
  %490 = getelementptr inbounds i8, ptr %12, i64 %489
  %491 = icmp ugt ptr %121, %490
  br i1 %491, label %509, label %492

492:                                              ; preds = %486
  %493 = ptrtoint ptr %121 to i64
  %494 = ptrtoint ptr %12 to i64
  %495 = sub i64 %493, %494
  %496 = getelementptr inbounds i8, ptr %13, i64 %495
  br label %497

497:                                              ; preds = %492, %504
  %498 = phi ptr [ %507, %504 ], [ %121, %492 ]
  %499 = phi ptr [ %505, %504 ], [ %496, %492 ]
  %500 = icmp ugt ptr %499, %1
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds ptr, ptr %499, i64 1
  %503 = load ptr, ptr %499, align 8, !tbaa !179
  br label %504

504:                                              ; preds = %497, %501
  %505 = phi ptr [ %502, %501 ], [ %499, %497 ]
  %506 = phi ptr [ %503, %501 ], [ @PL_sv_undef, %497 ]
  %507 = getelementptr inbounds ptr, ptr %498, i64 1
  store ptr %506, ptr %498, align 8, !tbaa !179
  %508 = icmp ugt ptr %507, %490
  br i1 %508, label %509, label %497, !llvm.loop !514

509:                                              ; preds = %504, %486, %482, %462, %481
  %510 = phi ptr [ %12, %481 ], [ %11, %462 ], [ %122, %482 ], [ %490, %486 ], [ %490, %504 ]
  store ptr %510, ptr @PL_stack_sp, align 8, !tbaa !179
  %511 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %512 = load ptr, ptr %511, align 8, !tbaa !188
  br label %513

513:                                              ; preds = %403, %459, %509
  %514 = phi ptr [ %512, %509 ], [ %461, %459 ], [ %409, %403 ]
  ret ptr %514
}

declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @setuid(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @setgid(i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_qr() local_unnamed_addr #5 !prof !515 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !516
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !518

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.p5rx, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  %9 = getelementptr inbounds %struct.regexp, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !519
  %11 = getelementptr inbounds %struct.regexp_engine, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !521
  %13 = tail call ptr %12(ptr noundef nonnull %4) #13, !prof !523
  br label %14

14:                                               ; preds = %0, %6
  %15 = phi ptr [ %13, %6 ], [ null, %0 ]
  %16 = tail call ptr @Perl_sv_newmortal() #13
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !216
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !524

21:                                               ; preds = %14
  tail call void @Perl_sv_upgrade(ptr noundef %16, i32 noundef 1) #13
  br label %22

22:                                               ; preds = %21, %14
  %23 = tail call ptr @Perl_reg_temp_copy(ptr noundef null, ptr noundef %4) #13
  %24 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !196
  %25 = load i32, ptr %17, align 4, !tbaa !216
  %26 = or i32 %25, 2048
  store i32 %26, ptr %17, align 4, !tbaa !216
  %27 = getelementptr inbounds %struct.p5rx, ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  %29 = getelementptr inbounds %struct.regexp, ptr %28, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !179
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !524

32:                                               ; preds = %22
  %33 = load ptr, ptr %30, align 8, !tbaa !525
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !527
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @Perl_cv_clone(ptr noundef nonnull %30) #13
  store ptr %39, ptr %29, align 8, !tbaa !179
  %40 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !254
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = add i32 %41, -1
  store i32 %44, ptr %40, align 8, !tbaa !254
  br label %46

45:                                               ; preds = %38
  tail call void @Perl_sv_free2(ptr noundef nonnull %30, i32 noundef %41) #13
  br label %46

46:                                               ; preds = %45, %43, %22, %32
  %47 = icmp eq ptr %15, null
  br i1 %47, label %58, label %48, !prof !518

48:                                               ; preds = %46
  %49 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %15, i32 noundef 1) #13
  %50 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !254
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55, !prof !518

53:                                               ; preds = %48
  %54 = add i32 %51, -1
  store i32 %54, ptr %50, align 8, !tbaa !254
  br label %56

55:                                               ; preds = %48
  tail call void @Perl_sv_free2(ptr noundef nonnull %15, i32 noundef %51) #13
  br label %56

56:                                               ; preds = %53, %55
  %57 = tail call ptr @Perl_sv_bless(ptr noundef %16, ptr noundef %49) #13
  br label %58

58:                                               ; preds = %56, %46
  %59 = getelementptr inbounds %struct.p5rx, ptr %4, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = getelementptr inbounds %struct.regexp, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !529
  %63 = and i32 %62, 134217728
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65, !prof !524

65:                                               ; preds = %58
  %66 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @Perl_sv_magic(ptr noundef %16, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %24, align 8, !tbaa !196
  tail call void @Perl_sv_magic(ptr noundef %73, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %74

74:                                               ; preds = %72, %69, %58
  %75 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %1 to i64
  %78 = sub i64 %76, %77
  %79 = icmp slt i64 %78, 8
  br i1 %79, label %80, label %82, !prof !518

80:                                               ; preds = %74
  %81 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %82

82:                                               ; preds = %74, %80
  %83 = phi ptr [ %81, %80 ], [ %1, %74 ]
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %16, ptr %84, align 8, !tbaa !179
  store ptr %84, ptr @PL_stack_sp, align 8, !tbaa !179
  %85 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %86 = load ptr, ptr %85, align 8, !tbaa !188
  ret ptr %86
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_reg_temp_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_cv_clone(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_match() local_unnamed_addr #0 !prof !530 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !516
  %6 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !253
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !531

10:                                               ; preds = %0
  %11 = zext nneg i8 %8 to i32
  br label %14

12:                                               ; preds = %0
  %13 = tail call i32 @Perl_block_gimme() #13
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %16 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !253
  %20 = and i8 %19, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !532

22:                                               ; preds = %14
  %23 = getelementptr inbounds ptr, ptr %2, i64 -1
  %24 = load ptr, ptr %2, align 8, !tbaa !179
  br label %53

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !215
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29, !prof !533

29:                                               ; preds = %25
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %31 = getelementptr inbounds ptr, ptr %30, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !179
  br label %53

33:                                               ; preds = %25
  %34 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %35 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = load ptr, ptr %36, align 8, !tbaa !205
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43, !prof !534

39:                                               ; preds = %33
  %40 = tail call ptr @Perl_gv_add_by_type(ptr noundef %34, i32 noundef 0) #13
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi ptr [ %42, %39 ], [ %36, %33 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !179
  %46 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 8
  br i1 %50, label %51, label %53, !prof !534

51:                                               ; preds = %43
  %52 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #13
  br label %53

53:                                               ; preds = %29, %43, %51, %22
  %54 = phi ptr [ %24, %22 ], [ %32, %29 ], [ %45, %51 ], [ %45, %43 ]
  %55 = phi ptr [ %23, %22 ], [ %2, %29 ], [ %52, %51 ], [ %2, %43 ]
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !179
  %56 = getelementptr inbounds %struct.p5rx, ptr %5, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !196
  %58 = getelementptr inbounds %struct.regexp, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !535
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !216
  %63 = and i32 %62, 2098176
  %64 = icmp eq i32 %63, 1024
  br i1 %60, label %74, label %65, !prof !536

65:                                               ; preds = %53
  br i1 %64, label %66, label %72, !prof !537

66:                                               ; preds = %65
  %67 = load ptr, ptr %54, align 8, !tbaa !232
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !234
  store i64 %69, ptr %1, align 8, !tbaa !197
  %70 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !196
  br label %83

72:                                               ; preds = %65
  %73 = call ptr @Perl_sv_2pv_flags(ptr noundef %54, ptr noundef nonnull %1, i32 noundef 32) #13
  br label %83

74:                                               ; preds = %53
  br i1 %64, label %75, label %81, !prof !538

75:                                               ; preds = %74
  %76 = load ptr, ptr %54, align 8, !tbaa !232
  %77 = getelementptr inbounds %struct.xpv, ptr %76, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !234
  store i64 %78, ptr %1, align 8, !tbaa !197
  %79 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !196
  br label %83

81:                                               ; preds = %74
  %82 = call ptr @Perl_sv_2pv_flags(ptr noundef %54, ptr noundef nonnull %1, i32 noundef 34) #13
  br label %83

83:                                               ; preds = %75, %81, %66, %72
  %84 = phi ptr [ %71, %66 ], [ %73, %72 ], [ %80, %75 ], [ %82, %81 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88, !prof !539

86:                                               ; preds = %83
  %87 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.14) #13
  br label %541

88:                                               ; preds = %83
  %89 = load i64, ptr %1, align 8
  %90 = getelementptr inbounds i8, ptr %84, i64 %89
  %91 = load ptr, ptr %56, align 8, !tbaa !196
  %92 = getelementptr inbounds %struct.regexp, ptr %91, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !529
  %94 = and i32 %93, 134217728
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104, !prof !540

96:                                               ; preds = %88
  %97 = load i8, ptr @PL_tainted, align 1, !tbaa !191, !range !247, !noundef !248
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %104, label %99, !prof !540

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %101 = load i32, ptr %100, align 8, !tbaa !541
  %102 = and i32 %101, 524288
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %96, %99, %88
  %105 = phi i1 [ true, %88 ], [ false, %96 ], [ %103, %99 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %106 = getelementptr inbounds %struct.pmop, ptr %3, i64 0, i32 10
  %107 = load i32, ptr %106, align 8, !tbaa !541
  %108 = and i32 %107, 16777216
  %109 = and i32 %107, 2097152
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %511, !prof !540

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.regexp, ptr %91, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !535
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %131, !prof !536

115:                                              ; preds = %111
  %116 = load ptr, ptr %5, align 8, !tbaa !542
  %117 = getelementptr inbounds %struct.xpv, ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !234
  %119 = getelementptr inbounds %struct.regexp, ptr %91, i64 0, i32 24
  %120 = load i16, ptr %119, align 8
  %121 = and i16 %120, 15
  %122 = add nuw nsw i16 %121, 1
  %123 = zext nneg i16 %122 to i64
  %124 = icmp eq i64 %118, %123
  %125 = load ptr, ptr @PL_curpm, align 8
  %126 = icmp ne ptr %125, null
  %127 = select i1 %124, i1 %126, i1 false, !prof !544
  br i1 %127, label %128, label %131, !prof !544

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.pmop, ptr %125, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !516
  br label %131

131:                                              ; preds = %128, %115, %111
  %132 = phi ptr [ %5, %111 ], [ %130, %128 ], [ %5, %115 ]
  %133 = phi ptr [ %3, %111 ], [ %125, %128 ], [ %3, %115 ]
  %134 = getelementptr inbounds %struct.p5rx, ptr %132, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !196
  %136 = getelementptr inbounds %struct.regexp, ptr %135, i64 0, i32 8
  %137 = load i64, ptr %136, align 8, !tbaa !545
  %138 = icmp sgt i64 %137, -1
  %139 = icmp ugt i64 %137, %89
  %140 = select i1 %138, i1 %139, i1 false, !prof !540
  br i1 %140, label %511, label %141, !prof !546

141:                                              ; preds = %131
  %142 = icmp ne i32 %108, 0
  br i1 %142, label %143, label %231, !prof !547

143:                                              ; preds = %141
  %144 = call ptr @Perl_mg_find_mglob(ptr noundef %54) #13
  %145 = icmp eq ptr %144, null
  br i1 %145, label %231, label %146, !prof !548

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.magic, ptr %144, i64 0, i32 5
  %148 = load i64, ptr %147, align 8, !tbaa !549
  %149 = icmp sgt i64 %148, -1
  br i1 %149, label %150, label %231

150:                                              ; preds = %146
  %151 = load i64, ptr %1, align 8, !tbaa !197
  %152 = getelementptr inbounds %struct.magic, ptr %144, i64 0, i32 4
  %153 = load i8, ptr %152, align 1, !tbaa !551
  %154 = and i8 %153, 64
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %226

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !216
  %159 = and i32 %158, 536870912
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %226, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %163 = getelementptr inbounds %struct.cop, ptr %162, i64 0, i32 10
  %164 = load i32, ptr %163, align 8, !tbaa !283
  %165 = and i32 %164, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %226

167:                                              ; preds = %161
  %168 = and i32 %158, 2097152
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %167
  %171 = and i32 %158, 2048
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %190, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !196
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !216
  %178 = and i32 %177, 1048576
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr %175, align 8, !tbaa !232
  %182 = load ptr, ptr %181, align 8, !tbaa !337
  %183 = getelementptr inbounds %struct.hv, ptr %182, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !339
  %185 = and i32 %184, 268435456
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %180, %167
  %188 = getelementptr inbounds i8, ptr %84, i64 %151
  %189 = call i64 @Perl_utf8_length(ptr noundef nonnull %84, ptr noundef nonnull %188) #13
  br label %192

190:                                              ; preds = %180, %173, %170
  %191 = call i64 @Perl_sv_len_utf8(ptr noundef %54) #13
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi i64 [ %189, %187 ], [ %191, %190 ]
  %194 = icmp ugt i64 %148, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = add i64 %151, 1
  br label %226

197:                                              ; preds = %192
  %198 = load i32, ptr %157, align 4, !tbaa !216
  %199 = and i32 %198, 2097152
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  %202 = and i32 %198, 2048
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %224, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !196
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !216
  %209 = and i32 %208, 1048576
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %204
  %212 = load ptr, ptr %206, align 8, !tbaa !232
  %213 = load ptr, ptr %212, align 8, !tbaa !337
  %214 = getelementptr inbounds %struct.hv, ptr %213, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !339
  %216 = and i32 %215, 268435456
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %211, %197
  %219 = trunc i64 %148 to i32
  %220 = call ptr @Perl_utf8_hop(ptr noundef nonnull %84, i32 noundef %219) #13
  %221 = ptrtoint ptr %220 to i64
  %222 = ptrtoint ptr %84 to i64
  %223 = sub i64 %221, %222
  br label %226

224:                                              ; preds = %211, %204, %201
  %225 = call i64 @Perl_sv_pos_u2b_flags(ptr noundef %54, i64 noundef %148, ptr noundef null, i32 noundef 32) #13
  br label %226

226:                                              ; preds = %150, %156, %161, %195, %218, %224
  %227 = phi i64 [ %196, %195 ], [ %223, %218 ], [ %225, %224 ], [ %148, %161 ], [ %148, %156 ], [ %148, %150 ]
  %228 = load i8, ptr %152, align 1, !tbaa !551
  %229 = and i8 %228, 1
  %230 = zext nneg i8 %229 to i32
  br label %231

231:                                              ; preds = %226, %143, %146, %141
  %232 = phi i64 [ 0, %146 ], [ 0, %143 ], [ 0, %141 ], [ %227, %226 ]
  %233 = phi i32 [ 0, %146 ], [ 0, %143 ], [ 0, %141 ], [ %230, %226 ]
  %234 = phi ptr [ %144, %146 ], [ null, %143 ], [ null, %141 ], [ %144, %226 ]
  %235 = icmp eq i32 %15, 3
  %236 = select i1 %142, i1 %235, i1 false, !prof !547
  %237 = select i1 %236, i8 33, i8 97, !prof !552
  br label %238

238:                                              ; preds = %504, %231
  %239 = phi i8 [ %237, %231 ], [ %505, %504 ]
  %240 = phi i64 [ %232, %231 ], [ %506, %504 ]
  %241 = phi ptr [ %84, %231 ], [ %247, %504 ]
  %242 = phi i32 [ %233, %231 ], [ %507, %504 ]
  %243 = phi ptr [ %234, %231 ], [ %374, %504 ]
  %244 = phi ptr [ %55, %231 ], [ %509, %504 ]
  %245 = phi ptr [ undef, %231 ], [ %510, %504 ]
  %246 = getelementptr inbounds i8, ptr %84, i64 %240
  %247 = select i1 %142, ptr %246, ptr %241, !prof !547
  %248 = load ptr, ptr %134, align 8, !tbaa !196
  %249 = getelementptr inbounds %struct.regexp, ptr %248, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !519
  %251 = getelementptr inbounds %struct.regexp_engine, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !553
  %253 = zext nneg i32 %242 to i64
  %254 = zext nneg i8 %239 to i32
  %255 = call i32 %252(ptr noundef %132, ptr noundef %247, ptr noundef nonnull %90, ptr noundef nonnull %84, i64 noundef %253, ptr noundef %54, ptr noundef null, i32 noundef %254) #13, !prof !554
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %511, label %257, !prof !555

257:                                              ; preds = %238
  store ptr %133, ptr @PL_curpm, align 8, !tbaa !179
  %258 = load i32, ptr %106, align 8, !tbaa !541
  %259 = and i32 %258, 1048576
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261, !prof !556

261:                                              ; preds = %257
  %262 = or i32 %258, 2097152
  store i32 %262, ptr %106, align 8, !tbaa !541
  br label %263

263:                                              ; preds = %261, %257
  br i1 %105, label %264, label %269, !prof !557

264:                                              ; preds = %263
  %265 = load ptr, ptr %134, align 8, !tbaa !196
  %266 = getelementptr inbounds %struct.regexp, ptr %265, i64 0, i32 7
  %267 = load i32, ptr %266, align 8, !tbaa !529
  %268 = or i32 %267, 67108864
  store i32 %268, ptr %266, align 8, !tbaa !529
  br label %269

269:                                              ; preds = %264, %263
  %270 = load ptr, ptr %134, align 8, !tbaa !196
  %271 = getelementptr inbounds %struct.regexp, ptr %270, i64 0, i32 7
  %272 = load i32, ptr %271, align 8, !tbaa !529
  %273 = and i32 %272, 67108864
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275, !prof !556

275:                                              ; preds = %269
  store i8 1, ptr @PL_tainted, align 1, !tbaa !191
  br label %276

276:                                              ; preds = %269, %275
  br i1 %142, label %277, label %373, !prof !557

277:                                              ; preds = %276
  br i1 %235, label %278, label %282

278:                                              ; preds = %277
  %279 = load i32, ptr %106, align 8, !tbaa !541
  %280 = and i32 %279, 33554432
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %373, label %282

282:                                              ; preds = %278, %277
  %283 = icmp eq ptr %243, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %282
  %285 = call ptr @Perl_sv_magicext_mglob(ptr noundef %54) #13
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi ptr [ %243, %282 ], [ %285, %284 ]
  %288 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %289 = load i32, ptr %288, align 4, !tbaa !216
  %290 = and i32 %289, 1024
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %328, label %292

292:                                              ; preds = %286
  %293 = and i32 %289, 2097152
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %318, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %54, align 8, !tbaa !232
  %297 = getelementptr inbounds %struct.xpvmg, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !196
  %299 = icmp eq ptr %298, null
  br i1 %299, label %318, label %300

300:                                              ; preds = %295, %315
  %301 = phi ptr [ %316, %315 ], [ %298, %295 ]
  %302 = getelementptr inbounds %struct.magic, ptr %301, i64 0, i32 3
  %303 = load i8, ptr %302, align 2, !tbaa !558
  %304 = icmp eq i8 %303, 116
  br i1 %304, label %315, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.magic, ptr %301, i64 0, i32 4
  %307 = load i8, ptr %306, align 1, !tbaa !551
  %308 = and i8 %307, 4
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.magic, ptr %301, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !559
  %313 = load ptr, ptr %312, align 8, !tbaa !560
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %310, %305, %300
  %316 = load ptr, ptr %301, align 8, !tbaa !196
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %300, !llvm.loop !562

318:                                              ; preds = %315, %295, %292
  %319 = load ptr, ptr %134, align 8, !tbaa !196
  %320 = getelementptr inbounds %struct.regexp, ptr %319, i64 0, i32 17
  %321 = load ptr, ptr %320, align 8, !tbaa !563
  %322 = getelementptr inbounds %struct.regexp_paren_pair, ptr %321, i64 0, i32 1
  %323 = load i64, ptr %322, align 8, !tbaa !564
  %324 = getelementptr inbounds %struct.magic, ptr %287, i64 0, i32 5
  store i64 %323, ptr %324, align 8, !tbaa !549
  %325 = getelementptr inbounds %struct.magic, ptr %287, i64 0, i32 4
  %326 = load i8, ptr %325, align 1, !tbaa !551
  %327 = or i8 %326, 64
  store i8 %327, ptr %325, align 1, !tbaa !551
  br label %357

328:                                              ; preds = %310, %286
  %329 = and i32 %289, 536870912
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %345, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %333 = getelementptr inbounds %struct.cop, ptr %332, i64 0, i32 10
  %334 = load i32, ptr %333, align 8, !tbaa !283
  %335 = and i32 %334, 8
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %331
  %338 = load ptr, ptr %134, align 8, !tbaa !196
  %339 = getelementptr inbounds %struct.regexp, ptr %338, i64 0, i32 17
  %340 = load ptr, ptr %339, align 8, !tbaa !563
  %341 = getelementptr inbounds %struct.regexp_paren_pair, ptr %340, i64 0, i32 1
  %342 = load i64, ptr %341, align 8, !tbaa !564
  %343 = getelementptr inbounds i8, ptr %84, i64 %342
  %344 = call i64 @Perl_utf8_length(ptr noundef nonnull %84, ptr noundef nonnull %343) #13
  br label %351

345:                                              ; preds = %331, %328
  %346 = load ptr, ptr %134, align 8, !tbaa !196
  %347 = getelementptr inbounds %struct.regexp, ptr %346, i64 0, i32 17
  %348 = load ptr, ptr %347, align 8, !tbaa !563
  %349 = getelementptr inbounds %struct.regexp_paren_pair, ptr %348, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !564
  br label %351

351:                                              ; preds = %345, %337
  %352 = phi i64 [ %344, %337 ], [ %350, %345 ]
  %353 = getelementptr inbounds %struct.magic, ptr %287, i64 0, i32 5
  store i64 %352, ptr %353, align 8, !tbaa !549
  %354 = getelementptr inbounds %struct.magic, ptr %287, i64 0, i32 4
  %355 = load i8, ptr %354, align 1, !tbaa !551
  %356 = and i8 %355, -65
  store i8 %356, ptr %354, align 1, !tbaa !551
  br label %357

357:                                              ; preds = %351, %318
  %358 = load ptr, ptr %134, align 8, !tbaa !196
  %359 = getelementptr inbounds %struct.regexp, ptr %358, i64 0, i32 17
  %360 = load ptr, ptr %359, align 8, !tbaa !563
  %361 = load i64, ptr %360, align 8, !tbaa !566
  %362 = getelementptr inbounds %struct.regexp, ptr %358, i64 0, i32 10
  %363 = load i64, ptr %362, align 8, !tbaa !567
  %364 = add nsw i64 %363, %361
  %365 = getelementptr inbounds %struct.regexp_paren_pair, ptr %360, i64 0, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !564
  %367 = icmp eq i64 %364, %366
  %368 = getelementptr inbounds %struct.magic, ptr %287, i64 0, i32 4
  %369 = load i8, ptr %368, align 1, !tbaa !551
  %370 = and i8 %369, -2
  %371 = zext i1 %367 to i8
  %372 = or disjoint i8 %370, %371
  store i8 %372, ptr %368, align 1, !tbaa !551
  br label %373

373:                                              ; preds = %357, %278, %276
  %374 = phi ptr [ %243, %278 ], [ %243, %276 ], [ %287, %357 ]
  %375 = icmp ne i32 %15, 3
  %376 = load ptr, ptr %134, align 8, !tbaa !196
  %377 = getelementptr inbounds %struct.regexp, ptr %376, i64 0, i32 12
  %378 = load i32, ptr %377, align 8, !tbaa !568
  %379 = or i32 %378, %108
  %380 = icmp eq i32 %379, 0
  %381 = select i1 %380, i1 true, i1 %375, !prof !569
  br i1 %381, label %382, label %390, !prof !570

382:                                              ; preds = %373
  %383 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %384 = icmp sgt i32 %383, %16
  br i1 %384, label %385, label %386, !prof !571

385:                                              ; preds = %382
  call void @Perl_leave_scope(i32 noundef %16) #13
  br label %386

386:                                              ; preds = %385, %382
  %387 = getelementptr inbounds ptr, ptr %244, i64 1
  store ptr @PL_sv_yes, ptr %387, align 8, !tbaa !179
  store ptr %387, ptr @PL_stack_sp, align 8, !tbaa !179
  %388 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %389 = load ptr, ptr %388, align 8, !tbaa !188
  br label %541

390:                                              ; preds = %373
  %391 = icmp eq i32 %378, 0
  %392 = and i1 %142, %391
  %393 = zext i1 %392 to i32
  %394 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %395 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %396 = ptrtoint ptr %395 to i64
  %397 = ptrtoint ptr %394 to i64
  %398 = sub i64 %396, %397
  %399 = ashr exact i64 %398, 3
  %400 = add nsw i32 %378, %393
  %401 = sext i32 %400 to i64
  %402 = icmp slt i64 %399, %401
  br i1 %402, label %403, label %405, !prof !572

403:                                              ; preds = %390
  %404 = call ptr @Perl_stack_grow(ptr noundef %394, ptr noundef %394, i64 noundef %401) #13
  br label %405

405:                                              ; preds = %403, %390
  %406 = phi ptr [ %404, %403 ], [ %394, %390 ]
  %407 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %408 = add nsw i64 %407, %401
  %409 = load i64, ptr @PL_tmps_max, align 8, !tbaa !197
  %410 = icmp slt i64 %408, %409
  br i1 %410, label %413, label %411, !prof !573

411:                                              ; preds = %405
  %412 = call i64 @Perl_tmps_grow_p(i64 noundef %408) #13
  br label %413

413:                                              ; preds = %405, %411
  %414 = xor i1 %392, true
  %415 = zext i1 %414 to i32
  %416 = icmp slt i32 %378, %415
  br i1 %416, label %481, label %417, !prof !574

417:                                              ; preds = %413
  %418 = ptrtoint ptr %90 to i64
  %419 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %420 = zext i1 %414 to i64
  %421 = add i32 %378, 1
  %422 = zext i32 %421 to i64
  br label %423

423:                                              ; preds = %417, %477
  %424 = phi i64 [ %420, %417 ], [ %479, %477 ]
  %425 = phi ptr [ %245, %417 ], [ %478, %477 ]
  %426 = phi ptr [ %406, %417 ], [ %428, %477 ]
  %427 = call ptr @Perl_sv_newmortal() #13
  %428 = getelementptr inbounds ptr, ptr %426, i64 1
  store ptr %427, ptr %428, align 8, !tbaa !179
  %429 = load ptr, ptr %134, align 8, !tbaa !196
  %430 = getelementptr inbounds %struct.regexp, ptr %429, i64 0, i32 17
  %431 = load ptr, ptr %430, align 8, !tbaa !563
  %432 = getelementptr inbounds %struct.regexp_paren_pair, ptr %431, i64 %424
  %433 = load i64, ptr %432, align 8, !tbaa !566
  %434 = icmp eq i64 %433, -1
  br i1 %434, label %477, label %435, !prof !575

435:                                              ; preds = %423
  %436 = getelementptr inbounds %struct.regexp_paren_pair, ptr %431, i64 %424, i32 1
  %437 = load i64, ptr %436, align 8, !tbaa !564
  %438 = icmp eq i64 %437, -1
  br i1 %438, label %477, label %439, !prof !576

439:                                              ; preds = %435
  %440 = sub nsw i64 %437, %433
  %441 = getelementptr inbounds i8, ptr %84, i64 %433
  %442 = icmp slt i64 %437, 0
  br i1 %442, label %453, label %443, !prof !576

443:                                              ; preds = %439
  %444 = icmp slt i64 %433, 0
  %445 = and i64 %440, 2147483648
  %446 = icmp ne i64 %445, 0
  %447 = select i1 %444, i1 true, i1 %446, !prof !576
  br i1 %447, label %453, label %448, !prof !576

448:                                              ; preds = %443
  %449 = and i64 %440, 4294967295
  %450 = ptrtoint ptr %441 to i64
  %451 = sub i64 %418, %450
  %452 = icmp sgt i64 %449, %451
  br i1 %452, label %453, label %457, !prof !576

453:                                              ; preds = %439, %443, %448
  %454 = shl i64 %440, 32
  %455 = ashr exact i64 %454, 32
  %456 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.15, i64 noundef %424, i64 noundef %433, i64 noundef %437, ptr noundef nonnull %441, ptr noundef nonnull %90, i64 noundef %455) #13
  br label %474

457:                                              ; preds = %448
  call void @Perl_sv_setpvn(ptr noundef %427, ptr noundef nonnull %441, i64 noundef %449) #13
  %458 = load i32, ptr %419, align 4, !tbaa !216
  %459 = and i32 %458, 536870912
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %474, label %461, !prof !577

461:                                              ; preds = %457
  %462 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %463 = getelementptr inbounds %struct.cop, ptr %462, i64 0, i32 10
  %464 = load i32, ptr %463, align 8, !tbaa !283
  %465 = and i32 %464, 8
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %461
  %468 = call zeroext i1 @Perl_is_utf8_string(ptr noundef nonnull %441, i64 noundef %449) #13
  br i1 %468, label %469, label %474

469:                                              ; preds = %467
  %470 = load ptr, ptr %428, align 8, !tbaa !179
  %471 = getelementptr inbounds %struct.sv, ptr %470, i64 0, i32 2
  %472 = load i32, ptr %471, align 4, !tbaa !216
  %473 = or i32 %472, 536870912
  store i32 %473, ptr %471, align 4, !tbaa !216
  br label %474

474:                                              ; preds = %457, %461, %467, %469, %453
  %475 = phi i1 [ false, %453 ], [ true, %469 ], [ true, %467 ], [ true, %461 ], [ true, %457 ]
  %476 = phi ptr [ %456, %453 ], [ %425, %469 ], [ %425, %467 ], [ %425, %461 ], [ %425, %457 ]
  br i1 %475, label %477, label %504, !prof !577

477:                                              ; preds = %435, %423, %474
  %478 = phi ptr [ %476, %474 ], [ %425, %435 ], [ %425, %423 ]
  %479 = add nuw nsw i64 %424, 1
  %480 = icmp eq i64 %479, %422
  br i1 %480, label %481, label %423, !prof !578, !llvm.loop !579

481:                                              ; preds = %477, %413
  %482 = phi ptr [ %406, %413 ], [ %428, %477 ]
  %483 = phi ptr [ %245, %413 ], [ %478, %477 ]
  br i1 %142, label %484, label %497, !prof !572

484:                                              ; preds = %481
  %485 = load ptr, ptr %134, align 8, !tbaa !196
  %486 = getelementptr inbounds %struct.regexp, ptr %485, i64 0, i32 17
  %487 = load ptr, ptr %486, align 8, !tbaa !563
  %488 = getelementptr inbounds %struct.regexp_paren_pair, ptr %487, i64 0, i32 1
  %489 = load i64, ptr %488, align 8, !tbaa !564
  %490 = load i64, ptr %487, align 8, !tbaa !566
  %491 = getelementptr inbounds %struct.regexp, ptr %485, i64 0, i32 10
  %492 = load i64, ptr %491, align 8, !tbaa !567
  %493 = add nsw i64 %492, %490
  %494 = icmp eq i64 %493, %489
  %495 = zext i1 %494 to i32
  store ptr %482, ptr @PL_stack_sp, align 8, !tbaa !179
  %496 = or i8 %239, 24
  br label %504

497:                                              ; preds = %481
  %498 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %499 = icmp sgt i32 %498, %16
  br i1 %499, label %500, label %501, !prof !572

500:                                              ; preds = %497
  call void @Perl_leave_scope(i32 noundef %16) #13
  br label %501

501:                                              ; preds = %500, %497
  store ptr %482, ptr @PL_stack_sp, align 8, !tbaa !179
  %502 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %503 = load ptr, ptr %502, align 8, !tbaa !188
  br label %504

504:                                              ; preds = %474, %501, %484
  %505 = phi i8 [ %496, %484 ], [ %239, %501 ], [ %239, %474 ]
  %506 = phi i64 [ %489, %484 ], [ %240, %501 ], [ %240, %474 ]
  %507 = phi i32 [ %495, %484 ], [ %242, %501 ], [ %242, %474 ]
  %508 = phi i1 [ true, %484 ], [ false, %501 ], [ false, %474 ]
  %509 = phi ptr [ %482, %484 ], [ %482, %501 ], [ %428, %474 ]
  %510 = phi ptr [ %483, %484 ], [ %503, %501 ], [ %476, %474 ]
  br i1 %508, label %238, label %541, !prof !572

511:                                              ; preds = %238, %131, %104
  %512 = phi ptr [ null, %104 ], [ null, %131 ], [ %243, %238 ]
  %513 = phi ptr [ %55, %104 ], [ %55, %131 ], [ %244, %238 ]
  %514 = icmp eq i32 %108, 0
  br i1 %514, label %528, label %515, !prof !580

515:                                              ; preds = %511
  %516 = load i32, ptr %106, align 8, !tbaa !541
  %517 = and i32 %516, 33554432
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %528, !prof !581

519:                                              ; preds = %515
  %520 = icmp eq ptr %512, null
  br i1 %520, label %521, label %523, !prof !581

521:                                              ; preds = %519
  %522 = call ptr @Perl_mg_find_mglob(ptr noundef %54) #13
  br label %523

523:                                              ; preds = %521, %519
  %524 = phi ptr [ %512, %519 ], [ %522, %521 ]
  %525 = icmp eq ptr %524, null
  br i1 %525, label %528, label %526, !prof !581

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct.magic, ptr %524, i64 0, i32 5
  store i64 -1, ptr %527, align 8, !tbaa !549
  br label %528

528:                                              ; preds = %511, %515, %526, %523
  %529 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %530 = icmp sgt i32 %529, %16
  br i1 %530, label %531, label %532, !prof !582

531:                                              ; preds = %528
  call void @Perl_leave_scope(i32 noundef %16) #13
  br label %532

532:                                              ; preds = %531, %528
  %533 = icmp eq i32 %15, 3
  br i1 %533, label %534, label %537, !prof !583

534:                                              ; preds = %532
  store ptr %513, ptr @PL_stack_sp, align 8, !tbaa !179
  %535 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %536 = load ptr, ptr %535, align 8, !tbaa !188
  br label %541

537:                                              ; preds = %532
  %538 = getelementptr inbounds ptr, ptr %513, i64 1
  store ptr @PL_sv_no, ptr %538, align 8, !tbaa !179
  store ptr %538, ptr @PL_stack_sp, align 8, !tbaa !179
  %539 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %540 = load ptr, ptr %539, align 8, !tbaa !188
  br label %541

541:                                              ; preds = %504, %537, %534, %386, %86
  %542 = phi ptr [ %536, %534 ], [ %540, %537 ], [ %389, %386 ], [ %87, %86 ], [ %510, %504 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %542
}

declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_do_open6(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_nextargv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @Perl_do_close(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_start_glob(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_unref_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

declare zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_helem() local_unnamed_addr #4 !prof !584 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !179
  %4 = load ptr, ptr %2, align 8, !tbaa !179
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !253
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18, !prof !585

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !203
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15, !prof !586

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_is_lvalue_sub() #13
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %10, %15, %0
  %19 = phi i1 [ true, %0 ], [ false, %10 ], [ %17, %15 ]
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !203
  %23 = and i8 %22, 64
  %24 = icmp sgt i8 %22, -1
  %25 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !339
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %32, label %29, !prof !587

29:                                               ; preds = %18
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  br label %176

32:                                               ; preds = %18
  br i1 %24, label %62, label %33, !prof !587

33:                                               ; preds = %32
  %34 = and i32 %26, 8388608
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @Perl_mg_find(ptr noundef %4, i32 noundef 80) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.magic, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !588
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call ptr @Perl_newRV(ptr noundef %4) #13
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #13
  br label %46

46:                                               ; preds = %39, %43
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  %50 = load ptr, ptr %49, align 8, !tbaa !232
  %51 = load ptr, ptr %50, align 8, !tbaa !337
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %51, ptr noundef nonnull @.str.22, i32 noundef 1) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %51, ptr noundef nonnull @.str.23, i32 noundef 1) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %36, %33
  %60 = tail call ptr @Perl_hv_common(ptr noundef %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %61 = icmp ne ptr %60, null
  br label %62

62:                                               ; preds = %46, %53, %56, %59, %32
  %63 = phi i1 [ true, %32 ], [ %61, %59 ], [ true, %56 ], [ true, %53 ], [ true, %46 ]
  %64 = icmp eq i8 %23, 0
  %65 = select i1 %19, i1 %64, i1 false, !prof !589
  %66 = select i1 %65, i32 16, i32 0, !prof !589
  %67 = tail call ptr @Perl_hv_common(ptr noundef %4, ptr noundef %3, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %66, ptr noundef null, i32 noundef 0) #13
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.he, ptr %67, i64 0, i32 2
  %70 = select i1 %68, ptr null, ptr %69, !prof !590
  br i1 %19, label %71, label %155, !prof !589

71:                                               ; preds = %62
  br i1 %68, label %77, label %72, !prof !591

72:                                               ; preds = %71
  %73 = load ptr, ptr %70, align 8, !tbaa !179
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %73, @PL_sv_undef
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %103, !prof !591

77:                                               ; preds = %72, %71
  br i1 %64, label %78, label %80

78:                                               ; preds = %77
  %79 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %3) #13
  br label %176

80:                                               ; preds = %77
  %81 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_upgrade(ptr noundef %81, i32 noundef 10) #13
  %82 = load ptr, ptr %81, align 8, !tbaa !232
  %83 = getelementptr inbounds %struct.xpvlv, ptr %82, i64 0, i32 9
  store i8 121, ptr %83, align 8, !tbaa !592
  %84 = tail call ptr @Perl_newSVsv(ptr noundef %3) #13
  tail call void @Perl_sv_magic(ptr noundef nonnull %81, ptr noundef %84, i32 noundef 121, ptr noundef null, i32 noundef 0) #13
  %85 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !254
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = add i32 %86, -1
  store i32 %89, ptr %85, align 8, !tbaa !254
  br label %91

90:                                               ; preds = %80
  tail call void @Perl_sv_free2(ptr noundef %84, i32 noundef %86) #13
  br label %91

91:                                               ; preds = %88, %90
  %92 = icmp eq ptr %4, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !254
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !254
  br label %97

97:                                               ; preds = %91, %93
  %98 = load ptr, ptr %81, align 8, !tbaa !232
  %99 = getelementptr inbounds %struct.xpvlv, ptr %98, i64 0, i32 8
  store ptr %4, ptr %99, align 8, !tbaa !594
  %100 = getelementptr inbounds %struct.xpvlv, ptr %98, i64 0, i32 7
  store i64 1, ptr %100, align 8, !tbaa !595
  store ptr %81, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %101 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %102 = load ptr, ptr %101, align 8, !tbaa !188
  br label %176

103:                                              ; preds = %72
  br i1 %24, label %144, label %104, !prof !596

104:                                              ; preds = %103
  %105 = load i32, ptr %25, align 4, !tbaa !339
  %106 = and i32 %105, 33554432
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %136, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !196
  %111 = load ptr, ptr %4, align 8, !tbaa !477
  %112 = getelementptr inbounds %struct.xpvhv, ptr %111, i64 0, i32 3
  %113 = load i64, ptr %112, align 8, !tbaa !597
  %114 = getelementptr ptr, ptr %110, i64 %113
  %115 = getelementptr ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !196
  %117 = icmp eq ptr %116, null
  br i1 %117, label %136, label %118

118:                                              ; preds = %108
  %119 = getelementptr i8, ptr %114, i64 36
  %120 = load i32, ptr %119, align 4, !tbaa !598
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %116, align 8, !tbaa !179
  %124 = icmp eq ptr %123, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %118, %122
  %126 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !216
  %128 = and i32 %127, 255
  %129 = icmp eq i32 %128, 9
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %132 = getelementptr inbounds %struct.op, ptr %131, i64 0, i32 5
  %133 = load i8, ptr %132, align 2, !tbaa !253
  %134 = icmp sgt i8 %133, -1
  %135 = zext i1 %134 to i32
  tail call void @Perl_save_gp(ptr noundef %73, i32 noundef %135) #13
  br label %155

136:                                              ; preds = %122, %104, %108, %125
  br i1 %63, label %137, label %143

137:                                              ; preds = %136
  %138 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %139 = getelementptr inbounds %struct.op, ptr %138, i64 0, i32 5
  %140 = load i8, ptr %139, align 2, !tbaa !253
  %141 = icmp sgt i8 %140, -1
  %142 = zext i1 %141 to i32
  tail call void @Perl_save_helem_flags(ptr noundef %4, ptr noundef %3, ptr noundef nonnull %70, i32 noundef %142) #13
  br label %155

143:                                              ; preds = %136
  tail call void @Perl_save_hdelete(ptr noundef %4, ptr noundef %3) #13
  br label %155

144:                                              ; preds = %103
  %145 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %146 = getelementptr inbounds %struct.op, ptr %145, i64 0, i32 6
  %147 = load i8, ptr %146, align 1, !tbaa !203
  %148 = and i8 %147, 48
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %155, label %150, !prof !600

150:                                              ; preds = %144
  %151 = zext nneg i8 %148 to i32
  %152 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %73, i32 noundef %151)
  store ptr %152, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %153 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %154 = load ptr, ptr %153, align 8, !tbaa !188
  br label %176

155:                                              ; preds = %137, %143, %130, %144, %62
  br i1 %68, label %160, label %156, !prof !601

156:                                              ; preds = %155
  %157 = load ptr, ptr %70, align 8, !tbaa !179
  %158 = icmp eq ptr %157, null
  %159 = select i1 %158, ptr @PL_sv_undef, ptr %157, !prof !601
  br label %160

160:                                              ; preds = %156, %155
  %161 = phi ptr [ @PL_sv_undef, %155 ], [ %159, %156 ]
  br i1 %19, label %173, label %162, !prof !602

162:                                              ; preds = %160
  %163 = load i32, ptr %25, align 4, !tbaa !339
  %164 = and i32 %163, 8388608
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166, !prof !586

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !216
  %169 = and i32 %168, 2097152
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call i32 @Perl_mg_get(ptr noundef nonnull %161) #13
  br label %173

173:                                              ; preds = %171, %166, %162, %160
  store ptr %161, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %174 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %175 = load ptr, ptr %174, align 8, !tbaa !188
  br label %176

176:                                              ; preds = %78, %97, %173, %150, %29
  %177 = phi ptr [ %31, %29 ], [ %175, %173 ], [ %154, %150 ], [ %102, %97 ], [ %79, %78 ]
  ret ptr %177
}

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_gp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_helem_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_hdelete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @S_softref2xv_lite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !603 {
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !203
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9, !prof !604

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !216
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
  %24 = load ptr, ptr %0, align 8, !tbaa !232
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !234
  %27 = icmp ugt i64 %26, 32
  %28 = select i1 %27, ptr @.str.24, ptr @.str.1
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi ptr [ @.str.1, %20 ], [ %28, %23 ]
  %31 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_symref_sv, ptr noundef %0, ptr noundef nonnull %30, ptr noundef %1) #13
  br label %34

32:                                               ; preds = %9
  %33 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef %1) #13
  br label %34

34:                                               ; preds = %29, %32, %3
  %35 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !216
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %47, label %45, !prof !604

45:                                               ; preds = %34
  %46 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef %1) #13
  br label %47

47:                                               ; preds = %45, %34
  %48 = tail call ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef 2049, i32 noundef %2) #13
  ret ptr %48
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_multideref() local_unnamed_addr #0 !prof !605 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %2 = getelementptr inbounds %struct.unop_aux, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !606
  %4 = load i64, ptr %3, align 8, !tbaa !196
  store ptr %3, ptr @PL_multideref_pc, align 8, !tbaa !179
  br label %5

5:                                                ; preds = %889, %0
  %6 = phi i64 [ %893, %889 ], [ %4, %0 ]
  %7 = phi ptr [ %890, %889 ], [ %3, %0 ]
  %8 = phi ptr [ %891, %889 ], [ null, %0 ]
  %9 = phi ptr [ %892, %889 ], [ undef, %0 ]
  br label %10

10:                                               ; preds = %5, %14
  %11 = phi i64 [ %16, %14 ], [ %6, %5 ]
  %12 = phi ptr [ %15, %14 ], [ %7, %5 ]
  %13 = and i64 %11, 15
  switch i64 %13, label %889 [
    i64 0, label %14
    i64 5, label %17
    i64 6, label %22
    i64 1, label %35
    i64 2, label %39
    i64 3, label %50
    i64 4, label %59
    i64 12, label %454
    i64 13, label %459
    i64 8, label %472
    i64 9, label %476
    i64 10, label %487
    i64 11, label %496
  ], !prof !608

14:                                               ; preds = %10
  %15 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %16 = load i64, ptr %15, align 8, !tbaa !196
  br label %10, !llvm.loop !609

17:                                               ; preds = %10
  %18 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %19 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !196
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  br label %204

22:                                               ; preds = %10
  %23 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct.gv, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !295
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %208, !prof !610

30:                                               ; preds = %22
  %31 = tail call ptr @Perl_gv_add_by_type(ptr noundef %24, i32 noundef 11) #13
  %32 = getelementptr inbounds %struct.gv, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = getelementptr inbounds %struct.gp, ptr %33, i64 0, i32 6
  br label %204

35:                                               ; preds = %10
  %36 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %37 = getelementptr inbounds ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %36, align 8, !tbaa !179
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %142

39:                                               ; preds = %10
  %40 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !196
  %42 = getelementptr inbounds %struct.gv, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = load ptr, ptr %43, align 8, !tbaa !205
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = tail call ptr @Perl_gv_add_by_type(ptr noundef %41, i32 noundef 0) #13
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  br label %55

50:                                               ; preds = %10
  %51 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %52 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %53 = load i64, ptr %52, align 8, !tbaa !196
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  br label %55

55:                                               ; preds = %46, %39, %50
  %56 = phi ptr [ %54, %50 ], [ %49, %46 ], [ %43, %39 ]
  %57 = phi ptr [ %52, %50 ], [ %40, %46 ], [ %40, %39 ]
  %58 = load ptr, ptr %56, align 8, !tbaa !179
  br label %59

59:                                               ; preds = %10, %55
  %60 = phi ptr [ %57, %55 ], [ %12, %10 ]
  %61 = phi ptr [ %58, %55 ], [ %8, %10 ]
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !216
  %64 = and i32 %63, 2097152
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !327

66:                                               ; preds = %59
  %67 = tail call i32 @Perl_mg_get(ptr noundef %61) #13
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32, ptr %62, align 4, !tbaa !216
  %70 = and i32 %69, 65280
  %71 = icmp ne i32 %70, 0
  %72 = and i32 %69, 255
  %73 = icmp eq i32 %72, 8
  %74 = or i1 %71, %73
  %75 = and i32 %69, 16777471
  %76 = icmp eq i32 %75, 16777226
  %77 = or i1 %76, %74
  br i1 %77, label %136, label %78, !prof !328

78:                                               ; preds = %68
  %79 = and i32 %69, 134283264
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !329

81:                                               ; preds = %78
  tail call void @Perl_croak_no_modify() #13
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, ptr %62, align 4, !tbaa !216
  %84 = and i32 %83, 255
  %85 = icmp ugt i32 %84, 2
  %86 = icmp eq i32 %84, 1
  %87 = or i1 %85, %86
  br i1 %87, label %89, label %88, !prof !330

88:                                               ; preds = %82
  tail call void @Perl_sv_upgrade(ptr noundef %61, i32 noundef 1) #13
  br label %121

89:                                               ; preds = %82
  br i1 %85, label %90, label %121, !prof !331

90:                                               ; preds = %89
  %91 = load ptr, ptr %61, align 8, !tbaa !232
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 3
  %93 = load i64, ptr %92, align 8, !tbaa !196
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %90
  %96 = and i32 %83, 33554432
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !196
  %101 = getelementptr inbounds i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1, !tbaa !196
  %103 = zext i8 %102 to i64
  %104 = icmp eq i8 %102, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = getelementptr inbounds i8, ptr %100, i64 -9
  %107 = load i64, ptr %106, align 1
  br label %108

108:                                              ; preds = %105, %98
  %109 = phi i64 [ %103, %98 ], [ %107, %105 ]
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i8, ptr %100, i64 %110
  store ptr %111, ptr %99, align 8, !tbaa !196
  %112 = and i32 %83, -33554433
  store i32 %112, ptr %62, align 4, !tbaa !216
  br label %113

113:                                              ; preds = %108, %95
  %114 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef %115) #13
  br label %116

116:                                              ; preds = %113, %90
  %117 = load ptr, ptr %61, align 8, !tbaa !232
  %118 = getelementptr inbounds %struct.xpv, ptr %117, i64 0, i32 3
  store i64 0, ptr %118, align 8, !tbaa !196
  %119 = load ptr, ptr %61, align 8, !tbaa !232
  %120 = getelementptr inbounds %struct.xpv, ptr %119, i64 0, i32 2
  store i64 0, ptr %120, align 8, !tbaa !234
  br label %121

121:                                              ; preds = %116, %89, %88
  %122 = tail call ptr @Perl_newSV_type(i32 noundef 11) #13
  %123 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  store ptr %122, ptr %123, align 8, !tbaa !196
  %124 = load i32, ptr %62, align 4, !tbaa !216
  %125 = or i32 %124, 2048
  store i32 %125, ptr %62, align 4, !tbaa !216
  %126 = and i32 %124, 4194304
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !329

128:                                              ; preds = %121
  %129 = tail call i32 @Perl_mg_set(ptr noundef %61) #13
  br label %130

130:                                              ; preds = %128, %121
  %131 = load i32, ptr %62, align 4, !tbaa !216
  %132 = and i32 %131, 2097152
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !329

134:                                              ; preds = %130
  %135 = tail call i32 @Perl_mg_get(ptr noundef %61) #13
  br label %136

136:                                              ; preds = %134, %130, %68
  %137 = load i32, ptr %62, align 4, !tbaa !216
  %138 = and i32 %137, 2097152
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140, !prof !327

140:                                              ; preds = %136
  %141 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_setsv_flags(ptr noundef %141, ptr noundef %61, i32 noundef 1536) #13
  br label %142

142:                                              ; preds = %140, %136, %35
  %143 = phi ptr [ %12, %35 ], [ %60, %136 ], [ %60, %140 ]
  %144 = phi ptr [ %38, %35 ], [ %61, %136 ], [ %141, %140 ]
  %145 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !216
  %147 = and i32 %146, 2097152
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !611

149:                                              ; preds = %142
  %150 = tail call i32 @Perl_mg_get(ptr noundef %144) #13
  br label %151

151:                                              ; preds = %142, %149
  %152 = load i32, ptr %145, align 4, !tbaa !216
  %153 = and i32 %152, 2048
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %181, label %155, !prof !612

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !196
  %158 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !216
  %160 = and i32 %159, 1048576
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %171, label %162, !prof !613

162:                                              ; preds = %155
  %163 = load ptr, ptr %157, align 8, !tbaa !232
  %164 = load ptr, ptr %163, align 8, !tbaa !337
  %165 = getelementptr inbounds %struct.hv, ptr %164, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !339
  %167 = and i32 %166, 268435456
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169, !prof !614

169:                                              ; preds = %162
  %170 = tail call ptr @Perl_amagic_deref_call(ptr noundef %144, i32 noundef 2) #13
  br label %171

171:                                              ; preds = %155, %162, %169
  %172 = phi ptr [ %170, %169 ], [ %144, %162 ], [ %144, %155 ]
  %173 = getelementptr inbounds %struct.sv, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !196
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !216
  %177 = and i32 %176, 255
  %178 = icmp eq i32 %177, 11
  br i1 %178, label %208, label %179, !prof !611

179:                                              ; preds = %171
  %180 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.25) #13
  br label %894

181:                                              ; preds = %151
  %182 = and i32 %152, 255
  %183 = icmp eq i32 %182, 11
  br i1 %183, label %208, label %184

184:                                              ; preds = %181
  %185 = and i32 %152, 49152
  %186 = icmp eq i32 %185, 32768
  %187 = add nsw i32 %182, -9
  %188 = icmp ult i32 %187, 2
  %189 = and i1 %186, %188
  br i1 %189, label %192, label %190

190:                                              ; preds = %184
  %191 = tail call ptr @S_softref2xv_lite(ptr noundef %144, ptr noundef nonnull @.str.26, i32 noundef 11)
  br label %192

192:                                              ; preds = %184, %190
  %193 = phi ptr [ %191, %190 ], [ %144, %184 ]
  %194 = getelementptr inbounds %struct.gv, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !196
  %196 = getelementptr inbounds %struct.gp, ptr %195, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !295
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %192
  %200 = tail call ptr @Perl_gv_add_by_type(ptr noundef %193, i32 noundef 11) #13
  %201 = getelementptr inbounds %struct.gv, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !196
  %203 = getelementptr inbounds %struct.gp, ptr %202, i64 0, i32 6
  br label %204

204:                                              ; preds = %17, %30, %199
  %205 = phi ptr [ %203, %199 ], [ %34, %30 ], [ %21, %17 ]
  %206 = phi ptr [ %143, %199 ], [ %23, %30 ], [ %19, %17 ]
  %207 = load ptr, ptr %205, align 8, !tbaa !179
  br label %208

208:                                              ; preds = %204, %192, %22, %171, %181
  %209 = phi ptr [ %143, %171 ], [ %143, %181 ], [ %23, %22 ], [ %143, %192 ], [ %206, %204 ]
  %210 = phi ptr [ %174, %171 ], [ %144, %181 ], [ %28, %22 ], [ %197, %192 ], [ %207, %204 ]
  %211 = lshr i64 %11, 4
  %212 = and i64 %211, 3
  switch i64 %212, label %267 [
    i64 0, label %434
    i64 1, label %213
    i64 2, label %216
    i64 3, label %221
  ], !prof !615

213:                                              ; preds = %208
  %214 = getelementptr inbounds %union.UNOP_AUX_item, ptr %209, i64 1
  %215 = load i64, ptr %214, align 8, !tbaa !196
  br label %268

216:                                              ; preds = %208
  %217 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %218 = getelementptr inbounds %union.UNOP_AUX_item, ptr %209, i64 1
  %219 = load i64, ptr %218, align 8, !tbaa !196
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219
  br label %232

221:                                              ; preds = %208
  %222 = getelementptr inbounds %union.UNOP_AUX_item, ptr %209, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !196
  %224 = getelementptr inbounds %struct.gv, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !196
  %226 = load ptr, ptr %225, align 8, !tbaa !205
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %232, !prof !616

228:                                              ; preds = %221
  %229 = tail call ptr @Perl_gv_add_by_type(ptr noundef %223, i32 noundef 0) #13
  %230 = getelementptr inbounds %struct.gv, ptr %229, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !196
  br label %232

232:                                              ; preds = %228, %221, %216
  %233 = phi ptr [ %220, %216 ], [ %231, %228 ], [ %225, %221 ]
  %234 = phi ptr [ %218, %216 ], [ %222, %228 ], [ %222, %221 ]
  %235 = load ptr, ptr %233, align 8, !tbaa !179
  %236 = getelementptr inbounds %struct.sv, ptr %235, i64 0, i32 2
  %237 = load i32, ptr %236, align 4, !tbaa !216
  %238 = and i32 %237, 2099200
  %239 = icmp eq i32 %238, 2048
  br i1 %239, label %240, label %257, !prof !617

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.sv, ptr %235, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !196
  %243 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 2
  %244 = load i32, ptr %243, align 4, !tbaa !216
  %245 = and i32 %244, 1048576
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %240
  %248 = load ptr, ptr %242, align 8, !tbaa !232
  %249 = load ptr, ptr %248, align 8, !tbaa !337
  %250 = getelementptr inbounds %struct.hv, ptr %249, i64 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !339
  %252 = and i32 %251, 268435456
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247, %240
  %255 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #13
  br i1 %255, label %256, label %257

256:                                              ; preds = %254
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef %235) #13
  br label %257

257:                                              ; preds = %247, %232, %254, %256
  store ptr %234, ptr @PL_multideref_pc, align 8, !tbaa !179
  %258 = load i32, ptr %236, align 4, !tbaa !216
  %259 = and i32 %258, 2097408
  %260 = icmp eq i32 %259, 256
  br i1 %260, label %261, label %265, !prof !618

261:                                              ; preds = %257
  %262 = load ptr, ptr %235, align 8, !tbaa !232
  %263 = getelementptr inbounds %struct.xpviv, ptr %262, i64 0, i32 4
  %264 = load i64, ptr %263, align 8, !tbaa !196
  br label %268

265:                                              ; preds = %257
  %266 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %235, i32 noundef 2) #13
  br label %268

267:                                              ; preds = %645, %208
  unreachable

268:                                              ; preds = %261, %265, %213
  %269 = phi i64 [ %215, %213 ], [ %264, %261 ], [ %266, %265 ]
  %270 = phi ptr [ %214, %213 ], [ %234, %261 ], [ %234, %265 ]
  %271 = and i64 %11, 64
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %282, !prof !619

273:                                              ; preds = %268
  %274 = tail call ptr @Perl_av_fetch(ptr noundef %210, i64 noundef %269, i32 noundef 1) #13
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276, !prof !620

276:                                              ; preds = %273
  %277 = load ptr, ptr %274, align 8, !tbaa !179
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %434, !prof !620

279:                                              ; preds = %276, %273
  %280 = phi ptr [ null, %276 ], [ %210, %273 ]
  %281 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %269) #13
  br label %434

282:                                              ; preds = %268
  %283 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %284 = getelementptr inbounds %struct.op, ptr %283, i64 0, i32 6
  %285 = load i8, ptr %284, align 1, !tbaa !203
  %286 = zext i8 %285 to i32
  %287 = and i32 %286, 48
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %318, label %289, !prof !621

289:                                              ; preds = %282
  %290 = and i32 %286, 16
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = tail call zeroext i1 @Perl_av_exists(ptr noundef %210, i64 noundef %269) #13
  %294 = select i1 %293, ptr @PL_sv_yes, ptr @PL_sv_no
  br label %431

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.op, ptr %283, i64 0, i32 5
  %297 = load i8, ptr %296, align 2, !tbaa !253
  %298 = and i8 %297, 3
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %295
  %301 = zext nneg i8 %298 to i32
  br label %304

302:                                              ; preds = %295
  %303 = tail call i32 @Perl_block_gimme() #13
  br label %304

304:                                              ; preds = %302, %300
  %305 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %306 = icmp eq i32 %305, 1
  %307 = select i1 %306, i32 4, i32 0
  %308 = tail call ptr @Perl_av_delete(ptr noundef %210, i64 noundef %269, i32 noundef %307) #13
  br i1 %306, label %309, label %312

309:                                              ; preds = %304
  %310 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %311 = load ptr, ptr %310, align 8, !tbaa !188
  br label %315

312:                                              ; preds = %304
  %313 = icmp eq ptr %308, null
  %314 = select i1 %313, ptr @PL_sv_undef, ptr %308
  br label %315

315:                                              ; preds = %312, %309
  %316 = phi ptr [ %308, %309 ], [ %314, %312 ]
  %317 = phi ptr [ %311, %309 ], [ %9, %312 ]
  br i1 %306, label %434, label %431

318:                                              ; preds = %282
  %319 = getelementptr inbounds %struct.op, ptr %283, i64 0, i32 5
  %320 = load i8, ptr %319, align 2, !tbaa !253
  %321 = and i8 %320, 32
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %329, !prof !622

323:                                              ; preds = %318
  %324 = and i32 %286, 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326, !prof !623

326:                                              ; preds = %323
  %327 = tail call i32 @Perl_is_lvalue_sub() #13
  %328 = icmp ne i32 %327, 0
  br label %329

329:                                              ; preds = %323, %326, %318
  %330 = phi i1 [ true, %318 ], [ false, %323 ], [ %328, %326 ]
  %331 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %332 = getelementptr inbounds %struct.op, ptr %331, i64 0, i32 6
  %333 = load i8, ptr %332, align 1, !tbaa !203
  %334 = and i8 %333, 64
  %335 = icmp sgt i8 %333, -1
  br i1 %335, label %366, label %336, !prof !621

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.av, ptr %210, i64 0, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !316
  %339 = and i32 %338, 8388608
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %364, label %341

341:                                              ; preds = %336
  %342 = tail call ptr @Perl_mg_find(ptr noundef %210, i32 noundef 80) #13
  %343 = icmp eq ptr %342, null
  br i1 %343, label %364, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.magic, ptr %342, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !588
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = tail call ptr @Perl_newRV(ptr noundef %210) #13
  %350 = tail call ptr @Perl_sv_2mortal(ptr noundef %349) #13
  br label %351

351:                                              ; preds = %344, %348
  %352 = phi ptr [ %350, %348 ], [ %346, %344 ]
  %353 = getelementptr inbounds %struct.sv, ptr %352, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !196
  %355 = load ptr, ptr %354, align 8, !tbaa !232
  %356 = load ptr, ptr %355, align 8, !tbaa !337
  %357 = icmp eq ptr %356, null
  br i1 %357, label %366, label %358

358:                                              ; preds = %351
  %359 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %356, ptr noundef nonnull @.str.22, i32 noundef 1) #13
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %358
  %362 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %356, ptr noundef nonnull @.str.23, i32 noundef 1) #13
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364

364:                                              ; preds = %361, %341, %336
  %365 = tail call zeroext i1 @Perl_av_exists(ptr noundef %210, i64 noundef %269) #13
  br label %366

366:                                              ; preds = %351, %358, %361, %364, %329
  %367 = phi i1 [ true, %329 ], [ %365, %364 ], [ true, %361 ], [ true, %358 ], [ true, %351 ]
  %368 = icmp eq i8 %334, 0
  %369 = and i1 %330, %368
  %370 = zext i1 %369 to i32
  %371 = tail call ptr @Perl_av_fetch(ptr noundef %210, i64 noundef %269, i32 noundef %370) #13
  %372 = icmp eq ptr %371, null
  br i1 %330, label %373, label %411, !prof !624

373:                                              ; preds = %366
  br i1 %372, label %377, label %374, !prof !625

374:                                              ; preds = %373
  %375 = load ptr, ptr %371, align 8, !tbaa !179
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %406, !prof !625

377:                                              ; preds = %374, %373
  %378 = phi ptr [ null, %374 ], [ %210, %373 ]
  br i1 %368, label %379, label %381

379:                                              ; preds = %377
  %380 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %269) #13
  br label %402

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.sv, ptr %210, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !216
  %384 = and i32 %383, 8388608
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %381
  %387 = tail call i32 @Perl_mg_size(ptr noundef %210) #13
  %388 = sext i32 %387 to i64
  br label %393

389:                                              ; preds = %381
  %390 = load ptr, ptr %210, align 8, !tbaa !311
  %391 = getelementptr inbounds %struct.xpvav, ptr %390, i64 0, i32 2
  %392 = load i64, ptr %391, align 8, !tbaa !313
  br label %393

393:                                              ; preds = %386, %389
  %394 = phi i64 [ %388, %386 ], [ %392, %389 ]
  %395 = icmp slt i64 %269, 0
  %396 = add nsw i64 %394, %269
  %397 = icmp sgt i64 %396, -1
  %398 = select i1 %395, i1 %397, i1 false
  %399 = select i1 %398, i64 %396, i64 %269
  %400 = tail call ptr @Perl_newSVavdefelem(ptr noundef %210, i64 noundef %399, i1 noundef zeroext true) #13
  %401 = tail call ptr @Perl_sv_2mortal(ptr noundef %400) #13
  br label %402

402:                                              ; preds = %393, %379
  %403 = phi ptr [ %401, %393 ], [ %378, %379 ]
  %404 = phi ptr [ %9, %393 ], [ %380, %379 ]
  %405 = xor i1 %368, true
  br label %427

406:                                              ; preds = %374
  br i1 %335, label %427, label %407, !prof !626

407:                                              ; preds = %406
  br i1 %367, label %408, label %410

408:                                              ; preds = %407
  tail call void @Perl_save_aelem_flags(ptr noundef %210, i64 noundef %269, ptr noundef nonnull %371, i32 noundef 1) #13
  %409 = load ptr, ptr %371, align 8, !tbaa !179
  br label %427

410:                                              ; preds = %407
  tail call void @Perl_save_adelete(ptr noundef %210, i64 noundef %269) #13
  br label %427

411:                                              ; preds = %366
  br i1 %372, label %414, label %412, !prof !627

412:                                              ; preds = %411
  %413 = load ptr, ptr %371, align 8, !tbaa !179
  br label %414

414:                                              ; preds = %411, %412
  %415 = phi ptr [ %413, %412 ], [ @PL_sv_undef, %411 ]
  %416 = getelementptr inbounds %struct.av, ptr %210, i64 0, i32 2
  %417 = load i32, ptr %416, align 4, !tbaa !316
  %418 = and i32 %417, 8388608
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %427, label %420, !prof !623

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.sv, ptr %415, i64 0, i32 2
  %422 = load i32, ptr %421, align 4, !tbaa !216
  %423 = and i32 %422, 2097152
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %420
  %426 = tail call i32 @Perl_mg_get(ptr noundef %415) #13
  br label %427

427:                                              ; preds = %402, %406, %410, %408, %425, %420, %414
  %428 = phi i1 [ true, %414 ], [ true, %420 ], [ true, %425 ], [ true, %408 ], [ true, %410 ], [ true, %406 ], [ %405, %402 ]
  %429 = phi ptr [ %415, %414 ], [ %415, %420 ], [ %415, %425 ], [ %409, %408 ], [ %375, %410 ], [ %375, %406 ], [ %403, %402 ]
  %430 = phi ptr [ %9, %414 ], [ %9, %420 ], [ %9, %425 ], [ %9, %408 ], [ %9, %410 ], [ %9, %406 ], [ %404, %402 ]
  br i1 %428, label %431, label %434, !prof !621

431:                                              ; preds = %315, %427, %292
  %432 = phi ptr [ %294, %292 ], [ %429, %427 ], [ %316, %315 ]
  %433 = phi ptr [ %9, %292 ], [ %430, %427 ], [ %317, %315 ]
  br label %434

434:                                              ; preds = %279, %276, %208, %315, %427, %431
  %435 = phi i32 [ 0, %431 ], [ 1, %315 ], [ 1, %427 ], [ 9, %208 ], [ 1, %279 ], [ 4, %276 ]
  %436 = phi ptr [ %270, %431 ], [ %270, %315 ], [ %270, %427 ], [ %209, %208 ], [ %270, %279 ], [ %270, %276 ]
  %437 = phi ptr [ %432, %431 ], [ %316, %315 ], [ %429, %427 ], [ %210, %208 ], [ %280, %279 ], [ %277, %276 ]
  %438 = phi ptr [ %433, %431 ], [ %317, %315 ], [ %430, %427 ], [ %9, %208 ], [ %281, %279 ], [ %9, %276 ]
  switch i32 %435, label %894 [
    i32 0, label %439
    i32 4, label %889
    i32 9, label %439
  ], !prof !628

439:                                              ; preds = %884, %434, %434
  %440 = phi ptr [ %437, %434 ], [ %437, %434 ], [ %887, %884 ]
  %441 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %442 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %443 = ptrtoint ptr %442 to i64
  %444 = ptrtoint ptr %441 to i64
  %445 = sub i64 %443, %444
  %446 = icmp slt i64 %445, 8
  br i1 %446, label %447, label %449, !prof !629

447:                                              ; preds = %439
  %448 = tail call ptr @Perl_stack_grow(ptr noundef %441, ptr noundef %441, i64 noundef 1) #13
  br label %449

449:                                              ; preds = %439, %447
  %450 = phi ptr [ %448, %447 ], [ %441, %439 ]
  %451 = getelementptr inbounds ptr, ptr %450, i64 1
  store ptr %440, ptr %451, align 8, !tbaa !179
  store ptr %451, ptr @PL_stack_sp, align 8, !tbaa !179
  %452 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %453 = load ptr, ptr %452, align 8, !tbaa !188
  br label %894

454:                                              ; preds = %10
  %455 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %456 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %457 = load i64, ptr %456, align 8, !tbaa !196
  %458 = getelementptr inbounds ptr, ptr %455, i64 %457
  br label %641

459:                                              ; preds = %10
  %460 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %461 = load ptr, ptr %460, align 8, !tbaa !196
  %462 = getelementptr inbounds %struct.gv, ptr %461, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !196
  %464 = getelementptr inbounds %struct.gp, ptr %463, i64 0, i32 5
  %465 = load ptr, ptr %464, align 8, !tbaa !445
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %645, !prof !630

467:                                              ; preds = %459
  %468 = tail call ptr @Perl_gv_add_by_type(ptr noundef %461, i32 noundef 12) #13
  %469 = getelementptr inbounds %struct.gv, ptr %468, i64 0, i32 3
  %470 = load ptr, ptr %469, align 8, !tbaa !196
  %471 = getelementptr inbounds %struct.gp, ptr %470, i64 0, i32 5
  br label %641

472:                                              ; preds = %10
  %473 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %474 = getelementptr inbounds ptr, ptr %473, i64 -1
  %475 = load ptr, ptr %473, align 8, !tbaa !179
  store ptr %474, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %579

476:                                              ; preds = %10
  %477 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %478 = load ptr, ptr %477, align 8, !tbaa !196
  %479 = getelementptr inbounds %struct.gv, ptr %478, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !196
  %481 = load ptr, ptr %480, align 8, !tbaa !205
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %492, !prof !631

483:                                              ; preds = %476
  %484 = tail call ptr @Perl_gv_add_by_type(ptr noundef %478, i32 noundef 0) #13
  %485 = getelementptr inbounds %struct.gv, ptr %484, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !196
  br label %492

487:                                              ; preds = %10
  %488 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %489 = getelementptr inbounds %union.UNOP_AUX_item, ptr %12, i64 1
  %490 = load i64, ptr %489, align 8, !tbaa !196
  %491 = getelementptr inbounds ptr, ptr %488, i64 %490
  br label %492

492:                                              ; preds = %483, %476, %487
  %493 = phi ptr [ %491, %487 ], [ %486, %483 ], [ %480, %476 ]
  %494 = phi ptr [ %489, %487 ], [ %477, %483 ], [ %477, %476 ]
  %495 = load ptr, ptr %493, align 8, !tbaa !179
  br label %496

496:                                              ; preds = %10, %492
  %497 = phi ptr [ %494, %492 ], [ %12, %10 ]
  %498 = phi ptr [ %495, %492 ], [ %8, %10 ]
  %499 = getelementptr inbounds %struct.sv, ptr %498, i64 0, i32 2
  %500 = load i32, ptr %499, align 4, !tbaa !216
  %501 = and i32 %500, 2097152
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %505, label %503, !prof !327

503:                                              ; preds = %496
  %504 = tail call i32 @Perl_mg_get(ptr noundef %498) #13
  br label %505

505:                                              ; preds = %503, %496
  %506 = load i32, ptr %499, align 4, !tbaa !216
  %507 = and i32 %506, 65280
  %508 = icmp ne i32 %507, 0
  %509 = and i32 %506, 255
  %510 = icmp eq i32 %509, 8
  %511 = or i1 %508, %510
  %512 = and i32 %506, 16777471
  %513 = icmp eq i32 %512, 16777226
  %514 = or i1 %513, %511
  br i1 %514, label %573, label %515, !prof !328

515:                                              ; preds = %505
  %516 = and i32 %506, 134283264
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %519, label %518, !prof !329

518:                                              ; preds = %515
  tail call void @Perl_croak_no_modify() #13
  br label %519

519:                                              ; preds = %518, %515
  %520 = load i32, ptr %499, align 4, !tbaa !216
  %521 = and i32 %520, 255
  %522 = icmp ugt i32 %521, 2
  %523 = icmp eq i32 %521, 1
  %524 = or i1 %522, %523
  br i1 %524, label %526, label %525, !prof !330

525:                                              ; preds = %519
  tail call void @Perl_sv_upgrade(ptr noundef %498, i32 noundef 1) #13
  br label %558

526:                                              ; preds = %519
  br i1 %522, label %527, label %558, !prof !331

527:                                              ; preds = %526
  %528 = load ptr, ptr %498, align 8, !tbaa !232
  %529 = getelementptr inbounds %struct.xpv, ptr %528, i64 0, i32 3
  %530 = load i64, ptr %529, align 8, !tbaa !196
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %553, label %532

532:                                              ; preds = %527
  %533 = and i32 %520, 33554432
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %550, label %535

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.sv, ptr %498, i64 0, i32 3
  %537 = load ptr, ptr %536, align 8, !tbaa !196
  %538 = getelementptr inbounds i8, ptr %537, i64 -1
  %539 = load i8, ptr %538, align 1, !tbaa !196
  %540 = zext i8 %539 to i64
  %541 = icmp eq i8 %539, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %535
  %543 = getelementptr inbounds i8, ptr %537, i64 -9
  %544 = load i64, ptr %543, align 1
  br label %545

545:                                              ; preds = %542, %535
  %546 = phi i64 [ %540, %535 ], [ %544, %542 ]
  %547 = sub i64 0, %546
  %548 = getelementptr inbounds i8, ptr %537, i64 %547
  store ptr %548, ptr %536, align 8, !tbaa !196
  %549 = and i32 %520, -33554433
  store i32 %549, ptr %499, align 4, !tbaa !216
  br label %550

550:                                              ; preds = %545, %532
  %551 = getelementptr inbounds %struct.sv, ptr %498, i64 0, i32 3
  %552 = load ptr, ptr %551, align 8, !tbaa !196
  tail call void @Perl_safesysfree(ptr noundef %552) #13
  br label %553

553:                                              ; preds = %550, %527
  %554 = load ptr, ptr %498, align 8, !tbaa !232
  %555 = getelementptr inbounds %struct.xpv, ptr %554, i64 0, i32 3
  store i64 0, ptr %555, align 8, !tbaa !196
  %556 = load ptr, ptr %498, align 8, !tbaa !232
  %557 = getelementptr inbounds %struct.xpv, ptr %556, i64 0, i32 2
  store i64 0, ptr %557, align 8, !tbaa !234
  br label %558

558:                                              ; preds = %553, %526, %525
  %559 = tail call ptr @Perl_newSV_type(i32 noundef 12) #13
  %560 = getelementptr inbounds %struct.sv, ptr %498, i64 0, i32 3
  store ptr %559, ptr %560, align 8, !tbaa !196
  %561 = load i32, ptr %499, align 4, !tbaa !216
  %562 = or i32 %561, 2048
  store i32 %562, ptr %499, align 4, !tbaa !216
  %563 = and i32 %561, 4194304
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %567, label %565, !prof !329

565:                                              ; preds = %558
  %566 = tail call i32 @Perl_mg_set(ptr noundef %498) #13
  br label %567

567:                                              ; preds = %565, %558
  %568 = load i32, ptr %499, align 4, !tbaa !216
  %569 = and i32 %568, 2097152
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %573, label %571, !prof !329

571:                                              ; preds = %567
  %572 = tail call i32 @Perl_mg_get(ptr noundef %498) #13
  br label %573

573:                                              ; preds = %571, %567, %505
  %574 = load i32, ptr %499, align 4, !tbaa !216
  %575 = and i32 %574, 2097152
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %579, label %577, !prof !327

577:                                              ; preds = %573
  %578 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_setsv_flags(ptr noundef %578, ptr noundef %498, i32 noundef 1536) #13
  br label %579

579:                                              ; preds = %577, %573, %472
  %580 = phi ptr [ %12, %472 ], [ %497, %573 ], [ %497, %577 ]
  %581 = phi ptr [ %475, %472 ], [ %498, %573 ], [ %578, %577 ]
  %582 = getelementptr inbounds %struct.sv, ptr %581, i64 0, i32 2
  %583 = load i32, ptr %582, align 4, !tbaa !216
  %584 = and i32 %583, 2097152
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %588, label %586, !prof !632

586:                                              ; preds = %579
  %587 = tail call i32 @Perl_mg_get(ptr noundef %581) #13
  br label %588

588:                                              ; preds = %579, %586
  %589 = load i32, ptr %582, align 4, !tbaa !216
  %590 = and i32 %589, 2048
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %618, label %592, !prof !633

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.sv, ptr %581, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !196
  %595 = getelementptr inbounds %struct.sv, ptr %594, i64 0, i32 2
  %596 = load i32, ptr %595, align 4, !tbaa !216
  %597 = and i32 %596, 1048576
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %608, label %599, !prof !634

599:                                              ; preds = %592
  %600 = load ptr, ptr %594, align 8, !tbaa !232
  %601 = load ptr, ptr %600, align 8, !tbaa !337
  %602 = getelementptr inbounds %struct.hv, ptr %601, i64 0, i32 2
  %603 = load i32, ptr %602, align 4, !tbaa !339
  %604 = and i32 %603, 268435456
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %608, label %606, !prof !635

606:                                              ; preds = %599
  %607 = tail call ptr @Perl_amagic_deref_call(ptr noundef %581, i32 noundef 3) #13
  br label %608

608:                                              ; preds = %592, %599, %606
  %609 = phi ptr [ %607, %606 ], [ %581, %599 ], [ %581, %592 ]
  %610 = getelementptr inbounds %struct.sv, ptr %609, i64 0, i32 3
  %611 = load ptr, ptr %610, align 8, !tbaa !196
  %612 = getelementptr inbounds %struct.sv, ptr %611, i64 0, i32 2
  %613 = load i32, ptr %612, align 4, !tbaa !216
  %614 = and i32 %613, 255
  %615 = icmp eq i32 %614, 12
  br i1 %615, label %645, label %616, !prof !636

616:                                              ; preds = %608
  %617 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.28) #13
  br label %894

618:                                              ; preds = %588
  %619 = and i32 %589, 255
  %620 = icmp eq i32 %619, 12
  br i1 %620, label %645, label %621, !prof !637

621:                                              ; preds = %618
  %622 = and i32 %589, 49152
  %623 = icmp eq i32 %622, 32768
  %624 = add nsw i32 %619, -9
  %625 = icmp ult i32 %624, 2
  %626 = and i1 %623, %625
  br i1 %626, label %629, label %627, !prof !638

627:                                              ; preds = %621
  %628 = tail call ptr @S_softref2xv_lite(ptr noundef %581, ptr noundef nonnull @.str.29, i32 noundef 12)
  br label %629

629:                                              ; preds = %621, %627
  %630 = phi ptr [ %628, %627 ], [ %581, %621 ]
  %631 = getelementptr inbounds %struct.gv, ptr %630, i64 0, i32 3
  %632 = load ptr, ptr %631, align 8, !tbaa !196
  %633 = getelementptr inbounds %struct.gp, ptr %632, i64 0, i32 5
  %634 = load ptr, ptr %633, align 8, !tbaa !445
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %645, !prof !637

636:                                              ; preds = %629
  %637 = tail call ptr @Perl_gv_add_by_type(ptr noundef %630, i32 noundef 12) #13
  %638 = getelementptr inbounds %struct.gv, ptr %637, i64 0, i32 3
  %639 = load ptr, ptr %638, align 8, !tbaa !196
  %640 = getelementptr inbounds %struct.gp, ptr %639, i64 0, i32 5
  br label %641

641:                                              ; preds = %454, %467, %636
  %642 = phi ptr [ %640, %636 ], [ %471, %467 ], [ %458, %454 ]
  %643 = phi ptr [ %580, %636 ], [ %460, %467 ], [ %456, %454 ]
  %644 = load ptr, ptr %642, align 8, !tbaa !179
  br label %645

645:                                              ; preds = %641, %629, %459, %608, %618
  %646 = phi ptr [ %580, %608 ], [ %580, %618 ], [ %460, %459 ], [ %580, %629 ], [ %643, %641 ]
  %647 = phi ptr [ %611, %608 ], [ %581, %618 ], [ %465, %459 ], [ %634, %629 ], [ %644, %641 ]
  %648 = lshr i64 %11, 4
  %649 = and i64 %648, 3
  switch i64 %649, label %267 [
    i64 0, label %884
    i64 1, label %650
    i64 2, label %652
    i64 3, label %657
  ], !prof !639

650:                                              ; preds = %645
  %651 = getelementptr inbounds %union.UNOP_AUX_item, ptr %646, i64 1
  br label %668

652:                                              ; preds = %645
  %653 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %654 = getelementptr inbounds %union.UNOP_AUX_item, ptr %646, i64 1
  %655 = load i64, ptr %654, align 8, !tbaa !196
  %656 = getelementptr inbounds ptr, ptr %653, i64 %655
  br label %668

657:                                              ; preds = %645
  %658 = getelementptr inbounds %union.UNOP_AUX_item, ptr %646, i64 1
  %659 = load ptr, ptr %658, align 8, !tbaa !196
  %660 = getelementptr inbounds %struct.gv, ptr %659, i64 0, i32 3
  %661 = load ptr, ptr %660, align 8, !tbaa !196
  %662 = load ptr, ptr %661, align 8, !tbaa !205
  %663 = icmp eq ptr %662, null
  br i1 %663, label %664, label %668, !prof !640

664:                                              ; preds = %657
  %665 = tail call ptr @Perl_gv_add_by_type(ptr noundef %659, i32 noundef 0) #13
  %666 = getelementptr inbounds %struct.gv, ptr %665, i64 0, i32 3
  %667 = load ptr, ptr %666, align 8, !tbaa !196
  br label %668

668:                                              ; preds = %664, %657, %652, %650
  %669 = phi ptr [ %656, %652 ], [ %651, %650 ], [ %667, %664 ], [ %661, %657 ]
  %670 = phi ptr [ %654, %652 ], [ %651, %650 ], [ %658, %664 ], [ %658, %657 ]
  %671 = load ptr, ptr %669, align 8, !tbaa !196
  store ptr %670, ptr @PL_multideref_pc, align 8, !tbaa !179
  %672 = and i64 %11, 64
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %686, !prof !641

674:                                              ; preds = %668
  %675 = tail call ptr @Perl_hv_common(ptr noundef %647, ptr noundef %671, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #13
  %676 = icmp eq ptr %675, null
  br i1 %676, label %683, label %677, !prof !642

677:                                              ; preds = %674
  %678 = getelementptr inbounds %struct.he, ptr %675, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !196
  %680 = icmp eq ptr %679, null
  %681 = icmp eq ptr %679, @PL_sv_undef
  %682 = or i1 %680, %681
  br i1 %682, label %683, label %884, !prof !642

683:                                              ; preds = %677, %674
  %684 = phi ptr [ %679, %677 ], [ %647, %674 ]
  %685 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %671) #13
  br label %884

686:                                              ; preds = %668
  %687 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %688 = getelementptr inbounds %struct.op, ptr %687, i64 0, i32 6
  %689 = load i8, ptr %688, align 1, !tbaa !203
  %690 = zext i8 %689 to i32
  %691 = and i32 %690, 48
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %723, label %693, !prof !643

693:                                              ; preds = %686
  %694 = and i32 %690, 16
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %700, label %696, !prof !644

696:                                              ; preds = %693
  %697 = tail call ptr @Perl_hv_common(ptr noundef %647, ptr noundef %671, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %698 = icmp eq ptr %697, null
  %699 = select i1 %698, ptr @PL_sv_no, ptr @PL_sv_yes, !prof !645
  br label %881

700:                                              ; preds = %693
  %701 = getelementptr inbounds %struct.op, ptr %687, i64 0, i32 5
  %702 = load i8, ptr %701, align 2, !tbaa !253
  %703 = and i8 %702, 3
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %707, label %705, !prof !646

705:                                              ; preds = %700
  %706 = zext nneg i8 %703 to i32
  br label %709

707:                                              ; preds = %700
  %708 = tail call i32 @Perl_block_gimme() #13
  br label %709

709:                                              ; preds = %707, %705
  %710 = phi i32 [ %706, %705 ], [ %708, %707 ]
  %711 = icmp eq i32 %710, 1
  %712 = select i1 %711, i32 68, i32 64, !prof !647
  %713 = tail call ptr @Perl_hv_common(ptr noundef %647, ptr noundef %671, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %712, ptr noundef null, i32 noundef 0) #13
  br i1 %711, label %714, label %717, !prof !647

714:                                              ; preds = %709
  %715 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %716 = load ptr, ptr %715, align 8, !tbaa !188
  br label %720

717:                                              ; preds = %709
  %718 = icmp eq ptr %713, null
  %719 = select i1 %718, ptr @PL_sv_undef, ptr %713, !prof !648
  br label %720

720:                                              ; preds = %717, %714
  %721 = phi ptr [ %713, %714 ], [ %719, %717 ]
  %722 = phi ptr [ %716, %714 ], [ %9, %717 ]
  br i1 %711, label %884, label %881, !prof !647

723:                                              ; preds = %686
  %724 = getelementptr inbounds %struct.op, ptr %687, i64 0, i32 5
  %725 = load i8, ptr %724, align 2, !tbaa !253
  %726 = and i8 %725, 32
  %727 = icmp eq i8 %726, 0
  br i1 %727, label %728, label %734, !prof !649

728:                                              ; preds = %723
  %729 = and i32 %690, 8
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %734, label %731, !prof !650

731:                                              ; preds = %728
  %732 = tail call i32 @Perl_is_lvalue_sub() #13
  %733 = icmp ne i32 %732, 0
  br label %734

734:                                              ; preds = %728, %731, %723
  %735 = phi i1 [ true, %723 ], [ false, %728 ], [ %733, %731 ]
  %736 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %737 = getelementptr inbounds %struct.op, ptr %736, i64 0, i32 6
  %738 = load i8, ptr %737, align 1, !tbaa !203
  %739 = and i8 %738, 64
  %740 = icmp sgt i8 %738, -1
  br i1 %740, label %772, label %741, !prof !651

741:                                              ; preds = %734
  %742 = getelementptr inbounds %struct.hv, ptr %647, i64 0, i32 2
  %743 = load i32, ptr %742, align 4, !tbaa !339
  %744 = and i32 %743, 8388608
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %769, label %746, !prof !652

746:                                              ; preds = %741
  %747 = tail call ptr @Perl_mg_find(ptr noundef %647, i32 noundef 80) #13
  %748 = icmp eq ptr %747, null
  br i1 %748, label %769, label %749, !prof !653

749:                                              ; preds = %746
  %750 = getelementptr inbounds %struct.magic, ptr %747, i64 0, i32 6
  %751 = load ptr, ptr %750, align 8, !tbaa !588
  %752 = icmp eq ptr %751, null
  br i1 %752, label %753, label %756

753:                                              ; preds = %749
  %754 = tail call ptr @Perl_newRV(ptr noundef %647) #13
  %755 = tail call ptr @Perl_sv_2mortal(ptr noundef %754) #13
  br label %756

756:                                              ; preds = %749, %753
  %757 = phi ptr [ %755, %753 ], [ %751, %749 ]
  %758 = getelementptr inbounds %struct.sv, ptr %757, i64 0, i32 3
  %759 = load ptr, ptr %758, align 8, !tbaa !196
  %760 = load ptr, ptr %759, align 8, !tbaa !232
  %761 = load ptr, ptr %760, align 8, !tbaa !337
  %762 = icmp eq ptr %761, null
  br i1 %762, label %772, label %763

763:                                              ; preds = %756
  %764 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %761, ptr noundef nonnull @.str.22, i32 noundef 1) #13
  %765 = icmp eq ptr %764, null
  br i1 %765, label %772, label %766

766:                                              ; preds = %763
  %767 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %761, ptr noundef nonnull @.str.23, i32 noundef 1) #13
  %768 = icmp eq ptr %767, null
  br i1 %768, label %772, label %769

769:                                              ; preds = %766, %746, %741
  %770 = tail call ptr @Perl_hv_common(ptr noundef %647, ptr noundef %671, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #13
  %771 = icmp ne ptr %770, null
  br label %772

772:                                              ; preds = %756, %763, %766, %769, %734
  %773 = phi i1 [ true, %734 ], [ %771, %769 ], [ true, %766 ], [ true, %763 ], [ true, %756 ]
  %774 = icmp eq i8 %739, 0
  %775 = and i1 %735, %774
  %776 = select i1 %775, i32 16, i32 0, !prof !654
  %777 = tail call ptr @Perl_hv_common(ptr noundef %647, ptr noundef %671, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %776, ptr noundef null, i32 noundef 0) #13
  %778 = icmp eq ptr %777, null
  %779 = getelementptr inbounds %struct.he, ptr %777, i64 0, i32 2
  %780 = select i1 %778, ptr null, ptr %779, !prof !655
  br i1 %735, label %781, label %859, !prof !656

781:                                              ; preds = %772
  br i1 %778, label %787, label %782, !prof !657

782:                                              ; preds = %781
  %783 = load ptr, ptr %780, align 8, !tbaa !179
  %784 = icmp eq ptr %783, null
  %785 = icmp eq ptr %783, @PL_sv_undef
  %786 = or i1 %784, %785
  br i1 %786, label %787, label %816, !prof !658

787:                                              ; preds = %782, %781
  %788 = phi ptr [ %783, %782 ], [ %647, %781 ]
  br i1 %774, label %789, label %791, !prof !659

789:                                              ; preds = %787
  %790 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_helem_sv, ptr noundef %671) #13
  br label %812

791:                                              ; preds = %787
  %792 = tail call ptr @Perl_sv_newmortal() #13
  tail call void @Perl_sv_upgrade(ptr noundef %792, i32 noundef 10) #13
  %793 = load ptr, ptr %792, align 8, !tbaa !232
  %794 = getelementptr inbounds %struct.xpvlv, ptr %793, i64 0, i32 9
  store i8 121, ptr %794, align 8, !tbaa !592
  %795 = tail call ptr @Perl_newSVsv(ptr noundef %671) #13
  tail call void @Perl_sv_magic(ptr noundef nonnull %792, ptr noundef %795, i32 noundef 121, ptr noundef null, i32 noundef 0) #13
  %796 = getelementptr inbounds %struct.sv, ptr %795, i64 0, i32 1
  %797 = load i32, ptr %796, align 8, !tbaa !254
  %798 = icmp ugt i32 %797, 1
  br i1 %798, label %799, label %801, !prof !660

799:                                              ; preds = %791
  %800 = add i32 %797, -1
  store i32 %800, ptr %796, align 8, !tbaa !254
  br label %802

801:                                              ; preds = %791
  tail call void @Perl_sv_free2(ptr noundef %795, i32 noundef %797) #13
  br label %802

802:                                              ; preds = %799, %801
  %803 = icmp eq ptr %647, null
  br i1 %803, label %808, label %804, !prof !659

804:                                              ; preds = %802
  %805 = getelementptr inbounds %struct.sv, ptr %647, i64 0, i32 1
  %806 = load i32, ptr %805, align 8, !tbaa !254
  %807 = add i32 %806, 1
  store i32 %807, ptr %805, align 8, !tbaa !254
  br label %808

808:                                              ; preds = %802, %804
  %809 = load ptr, ptr %792, align 8, !tbaa !232
  %810 = getelementptr inbounds %struct.xpvlv, ptr %809, i64 0, i32 8
  store ptr %647, ptr %810, align 8, !tbaa !594
  %811 = getelementptr inbounds %struct.xpvlv, ptr %809, i64 0, i32 7
  store i64 1, ptr %811, align 8, !tbaa !595
  br label %812

812:                                              ; preds = %808, %789
  %813 = phi ptr [ %792, %808 ], [ %788, %789 ]
  %814 = phi ptr [ %9, %808 ], [ %790, %789 ]
  %815 = xor i1 %774, true
  br label %877

816:                                              ; preds = %782
  br i1 %740, label %877, label %817, !prof !661

817:                                              ; preds = %816
  %818 = getelementptr inbounds %struct.hv, ptr %647, i64 0, i32 2
  %819 = load i32, ptr %818, align 4, !tbaa !339
  %820 = and i32 %819, 33554432
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %850, label %822, !prof !653

822:                                              ; preds = %817
  %823 = getelementptr inbounds %struct.hv, ptr %647, i64 0, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !196
  %825 = load ptr, ptr %647, align 8, !tbaa !477
  %826 = getelementptr inbounds %struct.xpvhv, ptr %825, i64 0, i32 3
  %827 = load i64, ptr %826, align 8, !tbaa !597
  %828 = getelementptr ptr, ptr %824, i64 %827
  %829 = getelementptr ptr, ptr %828, i64 1
  %830 = load ptr, ptr %829, align 8, !tbaa !196
  %831 = icmp eq ptr %830, null
  br i1 %831, label %850, label %832

832:                                              ; preds = %822
  %833 = getelementptr i8, ptr %828, i64 36
  %834 = load i32, ptr %833, align 4, !tbaa !598
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %839, label %836

836:                                              ; preds = %832
  %837 = load ptr, ptr %830, align 8, !tbaa !179
  %838 = icmp eq ptr %837, null
  br i1 %838, label %850, label %839

839:                                              ; preds = %832, %836
  %840 = getelementptr inbounds %struct.sv, ptr %783, i64 0, i32 2
  %841 = load i32, ptr %840, align 4, !tbaa !216
  %842 = and i32 %841, 255
  %843 = icmp eq i32 %842, 9
  br i1 %843, label %844, label %850

844:                                              ; preds = %839
  %845 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %846 = getelementptr inbounds %struct.op, ptr %845, i64 0, i32 5
  %847 = load i8, ptr %846, align 2, !tbaa !253
  %848 = icmp sgt i8 %847, -1
  %849 = zext i1 %848 to i32
  tail call void @Perl_save_gp(ptr noundef %783, i32 noundef %849) #13
  br label %877

850:                                              ; preds = %836, %817, %822, %839
  br i1 %773, label %851, label %858, !prof !652

851:                                              ; preds = %850
  %852 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %853 = getelementptr inbounds %struct.op, ptr %852, i64 0, i32 5
  %854 = load i8, ptr %853, align 2, !tbaa !253
  %855 = icmp sgt i8 %854, -1
  %856 = zext i1 %855 to i32
  tail call void @Perl_save_helem_flags(ptr noundef %647, ptr noundef %671, ptr noundef nonnull %780, i32 noundef %856) #13
  %857 = load ptr, ptr %780, align 8, !tbaa !179
  br label %877

858:                                              ; preds = %850
  tail call void @Perl_save_hdelete(ptr noundef %647, ptr noundef %671) #13
  br label %877

859:                                              ; preds = %772
  br i1 %778, label %864, label %860, !prof !662

860:                                              ; preds = %859
  %861 = load ptr, ptr %780, align 8, !tbaa !179
  %862 = icmp eq ptr %861, null
  %863 = select i1 %862, ptr @PL_sv_undef, ptr %861, !prof !663
  br label %864

864:                                              ; preds = %860, %859
  %865 = phi ptr [ @PL_sv_undef, %859 ], [ %863, %860 ]
  %866 = getelementptr inbounds %struct.hv, ptr %647, i64 0, i32 2
  %867 = load i32, ptr %866, align 4, !tbaa !339
  %868 = and i32 %867, 8388608
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %877, label %870, !prof !664

870:                                              ; preds = %864
  %871 = getelementptr inbounds %struct.sv, ptr %865, i64 0, i32 2
  %872 = load i32, ptr %871, align 4, !tbaa !216
  %873 = and i32 %872, 2097152
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %877, label %875, !prof !665

875:                                              ; preds = %870
  %876 = tail call i32 @Perl_mg_get(ptr noundef nonnull %865) #13
  br label %877

877:                                              ; preds = %812, %816, %851, %858, %844, %875, %870, %864
  %878 = phi i1 [ true, %864 ], [ true, %870 ], [ true, %875 ], [ true, %844 ], [ true, %858 ], [ true, %851 ], [ true, %816 ], [ %815, %812 ]
  %879 = phi ptr [ %865, %864 ], [ %865, %870 ], [ %865, %875 ], [ %783, %844 ], [ %783, %858 ], [ %857, %851 ], [ %783, %816 ], [ %813, %812 ]
  %880 = phi ptr [ %9, %864 ], [ %9, %870 ], [ %9, %875 ], [ %9, %844 ], [ %9, %858 ], [ %9, %851 ], [ %9, %816 ], [ %814, %812 ]
  br i1 %878, label %881, label %884, !prof !666

881:                                              ; preds = %720, %877, %696
  %882 = phi ptr [ %699, %696 ], [ %879, %877 ], [ %721, %720 ]
  %883 = phi ptr [ %9, %696 ], [ %880, %877 ], [ %722, %720 ]
  br label %884

884:                                              ; preds = %683, %677, %645, %720, %877, %881
  %885 = phi i32 [ 9, %881 ], [ 1, %720 ], [ 1, %877 ], [ 9, %645 ], [ 1, %683 ], [ 4, %677 ]
  %886 = phi ptr [ %670, %881 ], [ %670, %720 ], [ %670, %877 ], [ %646, %645 ], [ %670, %683 ], [ %670, %677 ]
  %887 = phi ptr [ %882, %881 ], [ %721, %720 ], [ %879, %877 ], [ %647, %645 ], [ %684, %683 ], [ %679, %677 ]
  %888 = phi ptr [ %883, %881 ], [ %722, %720 ], [ %880, %877 ], [ %9, %645 ], [ %685, %683 ], [ %9, %677 ]
  switch i32 %885, label %894 [
    i32 9, label %439
    i32 4, label %889
  ], !prof !667

889:                                              ; preds = %10, %884, %434
  %890 = phi ptr [ %886, %884 ], [ %436, %434 ], [ %12, %10 ]
  %891 = phi ptr [ %887, %884 ], [ %437, %434 ], [ %8, %10 ]
  %892 = phi ptr [ %888, %884 ], [ %438, %434 ], [ %9, %10 ]
  %893 = lshr i64 %11, 7
  br label %5, !llvm.loop !609

894:                                              ; preds = %434, %884, %616, %449, %179
  %895 = phi ptr [ %617, %616 ], [ %453, %449 ], [ %180, %179 ], [ %888, %884 ], [ %438, %434 ]
  ret ptr %895
}

declare zeroext i1 @Perl_av_exists(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVavdefelem(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_save_aelem_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_adelete(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_iter() local_unnamed_addr #0 !prof !668 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %3 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10, !prof !669

8:                                                ; preds = %0
  %9 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef 1) #13
  br label %10

10:                                               ; preds = %0, %8
  %11 = phi ptr [ %9, %8 ], [ %2, %0 ]
  %12 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = getelementptr inbounds %struct.stackinfo, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !195
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.context, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8
  %20 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23, !prof !669

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !670
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37, !prof !672

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !221
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %37, !prof !673

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  br label %37

37:                                               ; preds = %29, %23, %10, %34
  %38 = phi ptr [ %36, %34 ], [ null, %10 ], [ %21, %23 ], [ %20, %29 ]
  %39 = load i8, ptr %18, align 8, !tbaa !196
  %40 = and i8 %39, 15
  switch i8 %40, label %258 [
    i8 6, label %41
    i8 7, label %103
    i8 4, label %140
  ], !prof !674

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  store i64 0, ptr %1, align 8, !tbaa !197
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !216
  %48 = and i32 %47, 2098176
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load ptr, ptr %45, align 8, !tbaa !232
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !234
  store i64 %53, ptr %1, align 8, !tbaa !197
  %54 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  br label %58

56:                                               ; preds = %41
  %57 = call ptr @Perl_sv_2pv_flags(ptr noundef %45, ptr noundef nonnull %1, i32 noundef 34) #13
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %55, %50 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !216
  %62 = and i32 %61, 768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load ptr, ptr %43, align 8, !tbaa !232
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !234
  %68 = load i64, ptr %1, align 8, !tbaa !197
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %58, %64
  %71 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %71, align 8, !tbaa !179
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !179
  %72 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %73 = load ptr, ptr %72, align 8, !tbaa !188
  br label %99

74:                                               ; preds = %64
  %75 = load ptr, ptr %38, align 8, !tbaa !179
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !254
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !216
  %82 = and i32 %81, 14680064
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  call void @Perl_sv_setsv_flags(ptr noundef %75, ptr noundef nonnull %43, i32 noundef 1538) #13
  br label %92

85:                                               ; preds = %74, %79
  %86 = call ptr @Perl_newSVsv(ptr noundef nonnull %43) #13
  store ptr %86, ptr %38, align 8, !tbaa !179
  %87 = load i32, ptr %76, align 8, !tbaa !254
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = add i32 %87, -1
  store i32 %90, ptr %76, align 8, !tbaa !254
  br label %92

91:                                               ; preds = %85
  call void @Perl_sv_free2(ptr noundef %75, i32 noundef %87) #13
  br label %92

92:                                               ; preds = %91, %89, %84
  %93 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !196
  %95 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(1) %59) #15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  call void @Perl_sv_setiv(ptr noundef nonnull %43, i64 noundef 0) #13
  br label %99

98:                                               ; preds = %92
  call void @Perl_sv_inc(ptr noundef nonnull %43) #13
  br label %99

99:                                               ; preds = %97, %98, %70
  %100 = phi i1 [ false, %70 ], [ true, %98 ], [ true, %97 ]
  %101 = phi ptr [ %71, %70 ], [ %11, %98 ], [ %11, %97 ]
  %102 = phi ptr [ %73, %70 ], [ undef, %98 ], [ undef, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  br i1 %100, label %261, label %266

103:                                              ; preds = %37
  %104 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %105 = load i64, ptr %104, align 8, !tbaa !196
  %106 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %107 = load i64, ptr %106, align 8, !tbaa !196
  %108 = icmp sgt i64 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %110, align 8, !tbaa !179
  store ptr %110, ptr @PL_stack_sp, align 8, !tbaa !179
  %111 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %112 = load ptr, ptr %111, align 8, !tbaa !188
  br label %137

113:                                              ; preds = %103
  %114 = load ptr, ptr %38, align 8, !tbaa !179
  %115 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !254
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !216
  %121 = and i32 %120, 14680064
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  tail call void @Perl_sv_setiv(ptr noundef %114, i64 noundef %105) #13
  br label %131

124:                                              ; preds = %113, %118
  %125 = tail call ptr @Perl_newSViv(i64 noundef %105) #13
  store ptr %125, ptr %38, align 8, !tbaa !179
  %126 = load i32, ptr %115, align 8, !tbaa !254
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = add i32 %126, -1
  store i32 %129, ptr %115, align 8, !tbaa !254
  br label %131

130:                                              ; preds = %124
  tail call void @Perl_sv_free2(ptr noundef %114, i32 noundef %126) #13
  br label %131

131:                                              ; preds = %130, %128, %123
  %132 = icmp eq i64 %105, 9223372036854775807
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  store i64 -9223372036854775808, ptr %106, align 8, !tbaa !196
  br label %137

134:                                              ; preds = %131
  %135 = load i64, ptr %104, align 8, !tbaa !196
  %136 = add nsw i64 %135, 1
  store i64 %136, ptr %104, align 8, !tbaa !196
  br label %137

137:                                              ; preds = %133, %134, %109
  %138 = phi ptr [ %110, %109 ], [ %11, %134 ], [ %11, %133 ]
  %139 = phi ptr [ %112, %109 ], [ undef, %134 ], [ undef, %133 ]
  br i1 %108, label %266, label %261

140:                                              ; preds = %37
  %141 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !196
  %143 = icmp eq ptr %142, null
  %144 = load ptr, ptr @PL_curstack, align 8
  %145 = select i1 %143, ptr %144, ptr %142, !prof !675
  %146 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %147 = getelementptr inbounds %struct.op, ptr %146, i64 0, i32 6
  %148 = load i8, ptr %147, align 1, !tbaa !203
  %149 = and i8 %148, 4
  %150 = icmp eq i8 %149, 0
  %151 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 8, i32 0, i32 4
  %152 = load i64, ptr %151, align 8, !tbaa !196
  br i1 %150, label %165, label %153, !prof !676

153:                                              ; preds = %140
  %154 = add nsw i64 %152, -1
  store i64 %154, ptr %151, align 8, !tbaa !196
  br i1 %143, label %155, label %158

155:                                              ; preds = %153
  %156 = load i32, ptr %19, align 8, !tbaa !196
  %157 = sext i32 %156 to i64
  br label %158

158:                                              ; preds = %153, %155
  %159 = phi i64 [ %157, %155 ], [ -1, %153 ]
  %160 = icmp sgt i64 %154, %159
  br i1 %160, label %190, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %162, align 8, !tbaa !179
  store ptr %162, ptr @PL_stack_sp, align 8, !tbaa !179
  %163 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %164 = load ptr, ptr %163, align 8, !tbaa !188
  br label %254

165:                                              ; preds = %140
  %166 = add nsw i64 %152, 1
  store i64 %166, ptr %151, align 8, !tbaa !196
  br i1 %143, label %167, label %171, !prof !675

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !196
  %170 = sext i32 %169 to i64
  br label %183

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !216
  %174 = and i32 %173, 8388608
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176, !prof !677

176:                                              ; preds = %171
  %177 = tail call i32 @Perl_mg_size(ptr noundef %145) #13
  %178 = sext i32 %177 to i64
  br label %183

179:                                              ; preds = %171
  %180 = load ptr, ptr %145, align 8, !tbaa !311
  %181 = getelementptr inbounds %struct.xpvav, ptr %180, i64 0, i32 2
  %182 = load i64, ptr %181, align 8, !tbaa !313
  br label %183

183:                                              ; preds = %176, %179, %167
  %184 = phi i64 [ %170, %167 ], [ %178, %176 ], [ %182, %179 ]
  %185 = icmp slt i64 %152, %184
  br i1 %185, label %190, label %186, !prof !678

186:                                              ; preds = %183
  %187 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr @PL_sv_no, ptr %187, align 8, !tbaa !179
  store ptr %187, ptr @PL_stack_sp, align 8, !tbaa !179
  %188 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %189 = load ptr, ptr %188, align 8, !tbaa !188
  br label %254

190:                                              ; preds = %183, %158
  %191 = phi i64 [ %154, %158 ], [ %166, %183 ]
  %192 = getelementptr inbounds %struct.av, ptr %145, i64 0, i32 2
  %193 = load i32, ptr %192, align 4, !tbaa !316
  %194 = and i32 %193, -2132803584
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196, !prof !679

196:                                              ; preds = %190
  %197 = tail call ptr @Perl_av_fetch(ptr noundef %145, i64 noundef %191, i32 noundef 0) #13
  %198 = icmp eq ptr %197, null
  br i1 %198, label %206, label %203, !prof !680

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.av, ptr %145, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !196
  %202 = getelementptr inbounds ptr, ptr %201, i64 %191
  br label %203

203:                                              ; preds = %196, %199
  %204 = phi ptr [ %202, %199 ], [ %197, %196 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !179
  br label %206

206:                                              ; preds = %203, %196
  %207 = phi ptr [ null, %196 ], [ %205, %203 ]
  %208 = load i8, ptr %18, align 8, !tbaa !196
  %209 = and i8 %208, 32
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %222, label %211, !prof !681

211:                                              ; preds = %206
  %212 = load ptr, ptr %38, align 8, !tbaa !179
  %213 = icmp eq ptr %212, %207
  br i1 %213, label %254, label %214

214:                                              ; preds = %211
  tail call void @Perl_sv_setsv_flags(ptr noundef %212, ptr noundef %207, i32 noundef 1538) #13
  %215 = load ptr, ptr %38, align 8, !tbaa !179
  %216 = getelementptr inbounds %struct.sv, ptr %215, i64 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !216
  %218 = and i32 %217, 4194304
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %254, label %220

220:                                              ; preds = %214
  %221 = tail call i32 @Perl_mg_set(ptr noundef %215) #13
  br label %254

222:                                              ; preds = %206
  %223 = icmp eq ptr %207, null
  br i1 %223, label %240, label %224, !prof !682

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 2
  %226 = load i32, ptr %225, align 4, !tbaa !216
  %227 = icmp eq i32 %226, 255
  br i1 %227, label %228, label %229, !prof !682

228:                                              ; preds = %224
  store ptr null, ptr %38, align 8, !tbaa !179
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.30) #13
  br label %229

229:                                              ; preds = %224, %228
  %230 = load i32, ptr %225, align 4, !tbaa !216
  %231 = and i32 %230, 131072
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233, !prof !681

233:                                              ; preds = %229
  %234 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %207) #13
  br label %243

235:                                              ; preds = %229
  %236 = and i32 %230, -655361
  store i32 %236, ptr %225, align 4, !tbaa !216
  %237 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !254
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 8, !tbaa !254
  br label %243

240:                                              ; preds = %222
  br i1 %143, label %243, label %241

241:                                              ; preds = %240
  %242 = tail call ptr @Perl_newSVavdefelem(ptr noundef %145, i64 noundef %191, i1 noundef zeroext false) #13
  br label %243

243:                                              ; preds = %240, %241, %233, %235
  %244 = phi ptr [ %234, %233 ], [ %207, %235 ], [ %242, %241 ], [ @PL_sv_undef, %240 ]
  %245 = load ptr, ptr %38, align 8, !tbaa !179
  store ptr %244, ptr %38, align 8, !tbaa !179
  %246 = icmp eq ptr %245, null
  br i1 %246, label %254, label %247, !prof !682

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.sv, ptr %245, i64 0, i32 1
  %249 = load i32, ptr %248, align 8, !tbaa !254
  %250 = icmp ugt i32 %249, 1
  br i1 %250, label %251, label %253, !prof !683

251:                                              ; preds = %247
  %252 = add i32 %249, -1
  store i32 %252, ptr %248, align 8, !tbaa !254
  br label %254

253:                                              ; preds = %247
  tail call void @Perl_sv_free2(ptr noundef nonnull %245, i32 noundef %249) #13
  br label %254

254:                                              ; preds = %253, %251, %243, %211, %214, %220, %186, %161
  %255 = phi i1 [ false, %161 ], [ false, %186 ], [ true, %220 ], [ true, %214 ], [ true, %211 ], [ true, %243 ], [ true, %251 ], [ true, %253 ]
  %256 = phi ptr [ %162, %161 ], [ %187, %186 ], [ %11, %220 ], [ %11, %214 ], [ %11, %211 ], [ %11, %243 ], [ %11, %251 ], [ %11, %253 ]
  %257 = phi ptr [ %164, %161 ], [ %189, %186 ], [ undef, %220 ], [ undef, %214 ], [ undef, %211 ], [ undef, %243 ], [ undef, %251 ], [ undef, %253 ]
  br i1 %255, label %261, label %266, !prof !678

258:                                              ; preds = %37
  %259 = zext nneg i8 %40 to i32
  %260 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.31, i32 noundef %259) #13
  br label %266

261:                                              ; preds = %99, %137, %254
  %262 = phi ptr [ %256, %254 ], [ %138, %137 ], [ %101, %99 ]
  %263 = getelementptr inbounds ptr, ptr %262, i64 1
  store ptr @PL_sv_yes, ptr %263, align 8, !tbaa !179
  store ptr %263, ptr @PL_stack_sp, align 8, !tbaa !179
  %264 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %265 = load ptr, ptr %264, align 8, !tbaa !188
  br label %266

266:                                              ; preds = %254, %99, %137, %261, %258
  %267 = phi ptr [ %260, %258 ], [ %265, %261 ], [ %139, %137 ], [ %102, %99 ], [ %257, %254 ]
  ret ptr %267
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_subst() local_unnamed_addr #0 !prof !684 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %5 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %8 = getelementptr inbounds %struct.pmop, ptr %4, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !541
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12, !prof !685

12:                                               ; preds = %0
  %13 = getelementptr inbounds ptr, ptr %3, i64 -1
  %14 = load ptr, ptr %3, align 8, !tbaa !179
  br label %15

15:                                               ; preds = %0, %12
  %16 = phi ptr [ %13, %12 ], [ %3, %0 ]
  %17 = phi ptr [ %14, %12 ], [ null, %0 ]
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !199
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !686

20:                                               ; preds = %15
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !179
  tail call void %21() #13
  br label %22

22:                                               ; preds = %15, %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %24 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 5
  %25 = load i8, ptr %24, align 2, !tbaa !253
  %26 = and i8 %25, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28, !prof !687

28:                                               ; preds = %22
  %29 = getelementptr inbounds ptr, ptr %16, i64 -1
  %30 = load ptr, ptr %16, align 8, !tbaa !179
  br label %59

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !215
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35, !prof !688

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %37 = getelementptr inbounds ptr, ptr %36, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !179
  br label %59

39:                                               ; preds = %31
  %40 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = load ptr, ptr %42, align 8, !tbaa !205
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49, !prof !689

45:                                               ; preds = %39
  %46 = tail call ptr @Perl_gv_add_by_type(ptr noundef %40, i32 noundef 0) #13
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !196
  br label %49

49:                                               ; preds = %39, %45
  %50 = phi ptr [ %48, %45 ], [ %42, %39 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !179
  %52 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %16 to i64
  %55 = sub i64 %53, %54
  %56 = icmp slt i64 %55, 8
  br i1 %56, label %57, label %59, !prof !689

57:                                               ; preds = %49
  %58 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #13
  br label %59

59:                                               ; preds = %35, %49, %57, %28
  %60 = phi ptr [ %30, %28 ], [ %38, %35 ], [ %51, %57 ], [ %51, %49 ]
  %61 = phi ptr [ %29, %28 ], [ %16, %35 ], [ %58, %57 ], [ %16, %49 ]
  %62 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !216
  %64 = and i32 %63, 2097152
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !686

66:                                               ; preds = %59
  %67 = tail call i32 @Perl_mg_get(ptr noundef %60) #13
  br label %68

68:                                               ; preds = %59, %66
  %69 = load i32, ptr %62, align 4, !tbaa !216
  %70 = and i32 %69, 268435456
  %71 = icmp ne i32 %70, 0
  %72 = load i32, ptr %8, align 8, !tbaa !541
  %73 = and i32 %72, 134217728
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88, !prof !686

75:                                               ; preds = %68
  %76 = and i32 %69, 134283264
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87, !prof !686

78:                                               ; preds = %75
  %79 = and i32 %69, 255
  %80 = and i32 %69, 49407
  %81 = icmp eq i32 %80, 32777
  %82 = icmp ugt i32 %79, 10
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %88, !prof !690

84:                                               ; preds = %78
  %85 = and i32 %69, 16777471
  %86 = icmp eq i32 %85, 16777225
  br i1 %86, label %88, label %87

87:                                               ; preds = %84, %75
  tail call void @Perl_croak_no_modify() #13
  br label %88

88:                                               ; preds = %78, %84, %87, %68
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !179
  %89 = load i32, ptr %62, align 4, !tbaa !216
  %90 = and i32 %89, 2098176
  %91 = icmp eq i32 %90, 1024
  br i1 %91, label %92, label %98, !prof !691

92:                                               ; preds = %88
  %93 = load ptr, ptr %60, align 8, !tbaa !232
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !234
  store i64 %95, ptr %2, align 8, !tbaa !197
  %96 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !196
  br label %100

98:                                               ; preds = %88
  %99 = call ptr @Perl_sv_2pv_flags(ptr noundef %60, ptr noundef nonnull %2, i32 noundef 0) #13
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi ptr [ %97, %92 ], [ %99, %98 ]
  %102 = load i32, ptr %62, align 4, !tbaa !216
  %103 = and i32 %102, 16384
  %104 = icmp eq i32 %103, 0
  %105 = and i32 %102, 255
  %106 = icmp eq i32 %105, 9
  %107 = or i1 %104, %106
  br i1 %107, label %114, label %108, !prof !690

108:                                              ; preds = %100
  %109 = and i32 %102, 14680064
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111, !prof !692

111:                                              ; preds = %108
  %112 = call ptr @Perl_mg_find(ptr noundef %60, i32 noundef 86) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114, !prof !693

114:                                              ; preds = %111, %100
  br label %115

115:                                              ; preds = %114, %111, %108
  %116 = phi i32 [ 1, %114 ], [ 0, %111 ], [ 0, %108 ]
  %117 = load i32, ptr %8, align 8, !tbaa !541
  %118 = and i32 %117, 16777216
  %119 = icmp eq i32 %118, 0
  %120 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %148, label %122, !prof !686

122:                                              ; preds = %115
  %123 = load i32, ptr %62, align 4, !tbaa !216
  %124 = and i32 %123, 14680064
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call zeroext i1 @Perl_sv_tainted(ptr noundef %60) #13
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i1 [ false, %122 ], [ %127, %126 ]
  %130 = zext i1 %129 to i32
  %131 = getelementptr inbounds %struct.p5rx, ptr %6, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !196
  %133 = getelementptr inbounds %struct.regexp, ptr %132, i64 0, i32 7
  %134 = load i32, ptr %133, align 8, !tbaa !529
  %135 = lshr i32 %134, 26
  %136 = and i32 %135, 2
  %137 = or disjoint i32 %136, %130
  %138 = load i32, ptr %8, align 8, !tbaa !541
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 8
  %141 = or disjoint i32 %137, %140
  %142 = and i32 %138, 134217728
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %119, i1 %143, i1 false
  %145 = select i1 %144, i32 16, i32 0
  %146 = or disjoint i32 %141, %145
  %147 = trunc i32 %146 to i8
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  br label %148

148:                                              ; preds = %128, %115
  %149 = phi i8 [ %147, %128 ], [ 0, %115 ]
  %150 = icmp ne ptr %4, null
  %151 = icmp ne ptr %101, null
  %152 = select i1 %150, i1 %151, i1 false, !prof !686
  br i1 %152, label %153, label %163, !prof !336

153:                                              ; preds = %148, %565
  %154 = phi ptr [ %552, %565 ], [ %60, %148 ]
  %155 = phi ptr [ %213, %565 ], [ %4, %148 ]
  %156 = phi ptr [ %322, %565 ], [ null, %148 ]
  %157 = phi i8 [ %321, %565 ], [ %149, %148 ]
  %158 = phi i8 [ %320, %565 ], [ 0, %148 ]
  %159 = phi ptr [ %566, %565 ], [ %101, %148 ]
  %160 = phi ptr [ %212, %565 ], [ %6, %148 ]
  %161 = phi i32 [ 0, %565 ], [ %116, %148 ]
  %162 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 2
  br label %167

163:                                              ; preds = %565, %379, %148
  %164 = phi ptr [ %101, %148 ], [ %380, %379 ], [ %566, %565 ]
  %165 = phi ptr [ %4, %148 ], [ %213, %379 ], [ %213, %565 ]
  %166 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.32, ptr noundef %165, ptr noundef %164) #13
  br label %904

167:                                              ; preds = %153, %379
  %168 = phi ptr [ %155, %153 ], [ %213, %379 ]
  %169 = phi ptr [ %156, %153 ], [ %322, %379 ]
  %170 = phi i8 [ %157, %153 ], [ %321, %379 ]
  %171 = phi i8 [ %158, %153 ], [ %320, %379 ]
  %172 = phi ptr [ %159, %153 ], [ %380, %379 ]
  %173 = phi ptr [ %160, %153 ], [ %212, %379 ]
  %174 = phi i32 [ %161, %153 ], [ 0, %379 ]
  %175 = load i64, ptr %2, align 8, !tbaa !197
  %176 = getelementptr inbounds i8, ptr %172, i64 %175
  %177 = load i32, ptr %162, align 4, !tbaa !216
  %178 = and i32 %177, 536870912
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180, !prof !686

180:                                              ; preds = %167
  %181 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %182 = getelementptr inbounds %struct.cop, ptr %181, i64 0, i32 10
  %183 = load i32, ptr %182, align 8, !tbaa !283
  %184 = and i32 %183, 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i64 @Perl_utf8_length(ptr noundef nonnull %172, ptr noundef nonnull %176) #13
  br label %188

188:                                              ; preds = %167, %180, %186
  %189 = phi i64 [ %187, %186 ], [ %175, %180 ], [ %175, %167 ]
  %190 = load ptr, ptr %173, align 8, !tbaa !542
  %191 = getelementptr inbounds %struct.xpv, ptr %190, i64 0, i32 2
  %192 = load i64, ptr %191, align 8, !tbaa !234
  %193 = getelementptr inbounds %struct.p5rx, ptr %173, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !196
  %195 = getelementptr inbounds %struct.regexp, ptr %194, i64 0, i32 24
  %196 = load i16, ptr %195, align 8
  %197 = and i16 %196, 15
  %198 = add nuw nsw i16 %197, 1
  %199 = zext nneg i16 %198 to i64
  %200 = icmp eq i64 %192, %199
  %201 = load ptr, ptr @PL_curpm, align 8
  %202 = icmp ne ptr %201, null
  %203 = select i1 %200, i1 %202, i1 false, !prof !690
  br i1 %203, label %204, label %211, !prof !690

204:                                              ; preds = %188
  %205 = getelementptr inbounds %struct.regexp, ptr %194, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !535
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.pmop, ptr %201, i64 0, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !516
  br label %211

211:                                              ; preds = %208, %204, %188
  %212 = phi ptr [ %173, %204 ], [ %210, %208 ], [ %173, %188 ]
  %213 = phi ptr [ %168, %204 ], [ %201, %208 ], [ %168, %188 ]
  %214 = getelementptr inbounds %struct.p5rx, ptr %212, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !196
  %216 = getelementptr inbounds %struct.regexp, ptr %215, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !519
  %218 = getelementptr inbounds %struct.regexp_engine, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !553
  %220 = call i32 %219(ptr noundef %212, ptr noundef nonnull %172, ptr noundef nonnull %176, ptr noundef nonnull %172, i64 noundef 0, ptr noundef %154, ptr noundef null, i32 noundef 1) #13, !prof !694
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %235, !prof !695

222:                                              ; preds = %211
  %223 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %224 = load i32, ptr %8, align 8, !tbaa !541
  %225 = and i32 %224, 134217728
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, ptr @PL_sv_no, ptr %154, !prof !696
  %228 = getelementptr inbounds ptr, ptr %223, i64 1
  store ptr %227, ptr %228, align 8, !tbaa !179
  %229 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %230 = icmp sgt i32 %229, %7
  br i1 %230, label %231, label %232, !prof !697

231:                                              ; preds = %222
  call void @Perl_leave_scope(i32 noundef %7) #13
  br label %232

232:                                              ; preds = %231, %222
  store ptr %228, ptr @PL_stack_sp, align 8, !tbaa !179
  %233 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %234 = load ptr, ptr %233, align 8, !tbaa !188
  br label %904

235:                                              ; preds = %211
  %236 = icmp eq ptr %17, null
  store ptr %213, ptr @PL_curpm, align 8, !tbaa !179
  br i1 %236, label %319, label %237, !prof !698

237:                                              ; preds = %235
  %238 = load i32, ptr %162, align 4, !tbaa !216
  %239 = and i32 %238, 536870912
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %280, label %241, !prof !699

241:                                              ; preds = %237
  %242 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %243 = getelementptr inbounds %struct.cop, ptr %242, i64 0, i32 10
  %244 = load i32, ptr %243, align 8, !tbaa !283
  %245 = and i32 %244, 8
  %246 = icmp eq i32 %245, 0
  %247 = icmp eq i8 %171, 0
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %249, label %280

249:                                              ; preds = %241
  %250 = call ptr @Perl_sv_newmortal() #13
  %251 = icmp eq ptr %250, %17
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  call void @Perl_sv_setsv_flags(ptr noundef %250, ptr noundef nonnull %17, i32 noundef 1538) #13
  br label %253

253:                                              ; preds = %249, %252
  %254 = load ptr, ptr @PL_encoding, align 8, !tbaa !179
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %253
  %257 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !179
  %258 = icmp eq ptr %257, null
  br i1 %258, label %265, label %259

259:                                              ; preds = %256
  %260 = call ptr @Perl__get_encoding() #13
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %253, %259
  %263 = call ptr @Perl__get_encoding() #13
  %264 = call ptr @Perl_sv_recode_to_utf8(ptr noundef %250, ptr noundef %263) #13
  br label %267

265:                                              ; preds = %256, %259
  %266 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %250, i32 noundef 2, i64 noundef 0) #13
  br label %267

267:                                              ; preds = %265, %262
  %268 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !216
  %270 = and i32 %269, 2098176
  %271 = icmp eq i32 %270, 1024
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load ptr, ptr %250, align 8, !tbaa !232
  %274 = getelementptr inbounds %struct.xpv, ptr %273, i64 0, i32 2
  %275 = load i64, ptr %274, align 8, !tbaa !234
  store i64 %275, ptr %1, align 8, !tbaa !197
  %276 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !196
  br label %307

278:                                              ; preds = %267
  %279 = call ptr @Perl_sv_2pv_flags(ptr noundef %250, ptr noundef nonnull %1, i32 noundef 34) #13
  br label %307

280:                                              ; preds = %241, %237
  %281 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !216
  %283 = and i32 %282, 2098176
  %284 = icmp eq i32 %283, 1024
  br i1 %284, label %285, label %291, !prof !700

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %287 = load ptr, ptr %17, align 8, !tbaa !232
  %288 = getelementptr inbounds %struct.xpv, ptr %287, i64 0, i32 2
  %289 = load i64, ptr %288, align 8, !tbaa !234
  store i64 %289, ptr %1, align 8, !tbaa !197
  %290 = load ptr, ptr %286, align 8, !tbaa !196
  br label %293

291:                                              ; preds = %280
  %292 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %1, i32 noundef 34) #13
  br label %293

293:                                              ; preds = %291, %285
  %294 = phi ptr [ %290, %285 ], [ %292, %291 ]
  %295 = load i32, ptr %281, align 4, !tbaa !216
  %296 = and i32 %295, 536870912
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %304, label %298, !prof !699

298:                                              ; preds = %293
  %299 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %300 = getelementptr inbounds %struct.cop, ptr %299, i64 0, i32 10
  %301 = load i32, ptr %300, align 8, !tbaa !283
  %302 = and i32 %301, 8
  %303 = icmp eq i32 %302, 0
  br label %304

304:                                              ; preds = %298, %293
  %305 = phi i1 [ false, %293 ], [ %303, %298 ]
  %306 = zext i1 %305 to i8
  br label %307

307:                                              ; preds = %272, %278, %304
  %308 = phi i8 [ %306, %304 ], [ 1, %278 ], [ 1, %272 ]
  %309 = phi ptr [ %169, %304 ], [ %250, %278 ], [ %250, %272 ]
  %310 = phi ptr [ %294, %304 ], [ %279, %278 ], [ %277, %272 ]
  %311 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !216
  %313 = and i32 %312, 14680064
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %319, label %315, !prof !700

315:                                              ; preds = %307
  %316 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %17) #13
  %317 = or i8 %170, 4
  %318 = select i1 %316, i8 %317, i8 %170, !prof !701
  br label %319

319:                                              ; preds = %315, %235, %307
  %320 = phi i8 [ %308, %307 ], [ %308, %315 ], [ 0, %235 ]
  %321 = phi i8 [ %170, %307 ], [ %318, %315 ], [ %170, %235 ]
  %322 = phi ptr [ %309, %307 ], [ %309, %315 ], [ %169, %235 ]
  %323 = phi ptr [ %310, %307 ], [ %310, %315 ], [ null, %235 ]
  %324 = icmp eq ptr %323, null
  %325 = select i1 %324, i1 true, i1 %71, !prof !698
  br i1 %325, label %542, label %326, !prof !702

326:                                              ; preds = %319
  %327 = load i64, ptr %1, align 8, !tbaa !197
  %328 = shl i64 %327, 32
  %329 = ashr exact i64 %328, 32
  %330 = load ptr, ptr %214, align 8, !tbaa !196
  %331 = getelementptr inbounds %struct.regexp, ptr %330, i64 0, i32 9
  %332 = load i64, ptr %331, align 8, !tbaa !703
  %333 = icmp sgt i64 %329, %332
  br i1 %333, label %542, label %334, !prof !704

334:                                              ; preds = %326
  br i1 %119, label %345, label %335, !prof !705

335:                                              ; preds = %334
  %336 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %337 = load i32, ptr %336, align 4, !tbaa !216
  %338 = and i32 %337, 2097152
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %542, !prof !706

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.regexp, ptr %330, i64 0, i32 7
  %342 = load i32, ptr %341, align 8, !tbaa !529
  %343 = and i32 %342, 131072
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %542, !prof !706

345:                                              ; preds = %340, %334
  %346 = getelementptr inbounds %struct.regexp, ptr %330, i64 0, i32 7
  %347 = load i32, ptr %346, align 8, !tbaa !529
  %348 = and i32 %347, 65536
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %542, !prof !707

350:                                              ; preds = %345
  %351 = and i8 %320, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %357, label %353, !prof !708

353:                                              ; preds = %350
  %354 = load i32, ptr %162, align 4, !tbaa !216
  %355 = and i32 %354, 536870912
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %542, label %357

357:                                              ; preds = %353, %350
  %358 = load i32, ptr %8, align 8, !tbaa !541
  %359 = and i32 %358, 134217728
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %542, !prof !708

361:                                              ; preds = %357
  %362 = load i32, ptr %162, align 4, !tbaa !216
  %363 = and i32 %362, 268435456
  %364 = icmp eq i32 %363, 0
  %365 = icmp ne i32 %174, 0
  %366 = or i1 %365, %364
  br i1 %366, label %367, label %570, !prof !709

367:                                              ; preds = %361
  br i1 %365, label %368, label %384, !prof !710

368:                                              ; preds = %367
  %369 = and i32 %362, 430018304
  %370 = icmp eq i32 %369, 1024
  br i1 %370, label %371, label %377

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 3
  %373 = load ptr, ptr %154, align 8, !tbaa !232
  %374 = getelementptr inbounds %struct.xpv, ptr %373, i64 0, i32 2
  %375 = load i64, ptr %374, align 8, !tbaa !234
  store i64 %375, ptr %2, align 8, !tbaa !197
  %376 = load ptr, ptr %372, align 8, !tbaa !196
  br label %379

377:                                              ; preds = %368
  %378 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %154, ptr noundef nonnull %2, i32 noundef 0) #13
  br label %379

379:                                              ; preds = %377, %371
  %380 = phi ptr [ %376, %371 ], [ %378, %377 ]
  %381 = icmp ne ptr %213, null
  %382 = icmp ne ptr %380, null
  %383 = select i1 %381, i1 %382, i1 false, !prof !686
  br i1 %383, label %167, label %163, !prof !686

384:                                              ; preds = %367
  %385 = shl i64 %189, 1
  %386 = add i64 %385, 10
  br i1 %119, label %387, label %442, !prof !711

387:                                              ; preds = %384
  %388 = lshr i32 %347, 25
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 2
  %391 = or i8 %390, %321
  %392 = getelementptr inbounds %struct.regexp, ptr %330, i64 0, i32 17
  %393 = load ptr, ptr %392, align 8, !tbaa !563
  %394 = load i64, ptr %393, align 8, !tbaa !566
  %395 = getelementptr inbounds i8, ptr %172, i64 %394
  %396 = getelementptr inbounds %struct.regexp_paren_pair, ptr %393, i64 0, i32 1
  %397 = load i64, ptr %396, align 8, !tbaa !564
  %398 = getelementptr inbounds i8, ptr %172, i64 %397
  %399 = ptrtoint ptr %172 to i64
  %400 = ptrtoint ptr %176 to i64
  %401 = ptrtoint ptr %398 to i64
  %402 = sub i64 %400, %401
  %403 = icmp sgt i64 %394, %402
  br i1 %403, label %404, label %422, !prof !712

404:                                              ; preds = %387
  %405 = icmp eq i64 %327, 0
  br i1 %405, label %409, label %406, !prof !713

406:                                              ; preds = %404
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %395, ptr nonnull align 1 %323, i64 %327, i1 false), !prof !714
  %407 = load i64, ptr %1, align 8, !tbaa !197
  %408 = getelementptr inbounds i8, ptr %395, i64 %407
  br label %409

409:                                              ; preds = %406, %404
  %410 = phi ptr [ %408, %406 ], [ %395, %404 ]
  %411 = trunc i64 %402 to i32
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %416, !prof !715

413:                                              ; preds = %409
  %414 = and i64 %402, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %410, ptr nonnull align 1 %398, i64 %414, i1 false)
  %415 = getelementptr inbounds i8, ptr %410, i64 %414
  br label %416

416:                                              ; preds = %413, %409
  %417 = phi ptr [ %415, %413 ], [ %410, %409 ]
  store i8 0, ptr %417, align 1, !tbaa !196
  %418 = ptrtoint ptr %417 to i64
  %419 = sub i64 %418, %399
  %420 = load ptr, ptr %154, align 8, !tbaa !232
  %421 = getelementptr inbounds %struct.xpv, ptr %420, i64 0, i32 2
  store i64 %419, ptr %421, align 8, !tbaa !234
  br label %439

422:                                              ; preds = %387
  %423 = trunc i64 %394 to i32
  %424 = sub i64 0, %327
  %425 = getelementptr inbounds i8, ptr %398, i64 %424
  %426 = icmp sgt i32 %423, 0
  br i1 %426, label %427, label %431, !prof !716

427:                                              ; preds = %422
  %428 = and i64 %394, 4294967295
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %425, i64 %429
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %430, ptr nonnull align 1 %172, i64 %428, i1 false), !prof !717
  br label %431

431:                                              ; preds = %427, %422
  %432 = shl i64 %394, 32
  %433 = ashr exact i64 %432, 32
  %434 = sub nsw i64 0, %433
  %435 = getelementptr inbounds i8, ptr %425, i64 %434
  call void @Perl_sv_chop(ptr noundef %154, ptr noundef nonnull %435) #13
  %436 = load i64, ptr %1, align 8, !tbaa !197
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %439, label %438, !prof !718

438:                                              ; preds = %431
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %425, ptr nonnull align 1 %323, i64 %436, i1 false), !prof !719
  br label %439

439:                                              ; preds = %431, %438, %416
  %440 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %441 = getelementptr inbounds ptr, ptr %440, i64 1
  store ptr @PL_sv_yes, ptr %441, align 8, !tbaa !179
  br label %846

442:                                              ; preds = %384
  %443 = getelementptr inbounds %struct.regexp, ptr %330, i64 0, i32 17
  %444 = load ptr, ptr %443, align 8, !tbaa !563
  %445 = load i64, ptr %444, align 8, !tbaa !566
  %446 = getelementptr inbounds i8, ptr %172, i64 %445
  %447 = add i64 %385, 11
  %448 = call i64 @llvm.smax.i64(i64 %447, i64 0)
  br label %449

449:                                              ; preds = %508, %442
  %450 = phi i8 [ %321, %442 ], [ %502, %508 ]
  %451 = phi i64 [ 0, %442 ], [ %456, %508 ]
  %452 = phi ptr [ %446, %442 ], [ %503, %508 ]
  %453 = phi ptr [ undef, %442 ], [ %504, %508 ]
  %454 = phi ptr [ %446, %442 ], [ %505, %508 ]
  %455 = phi ptr [ undef, %442 ], [ %506, %508 ]
  %456 = add nuw i64 %451, 1
  %457 = icmp sgt i64 %451, %386
  br i1 %457, label %458, label %460, !prof !720

458:                                              ; preds = %449
  %459 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #13
  br label %501

460:                                              ; preds = %449
  %461 = load ptr, ptr %214, align 8, !tbaa !196
  %462 = getelementptr inbounds %struct.regexp, ptr %461, i64 0, i32 7
  %463 = load i32, ptr %462, align 8, !tbaa !529
  %464 = lshr i32 %463, 25
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 2
  %467 = or i8 %466, %450
  %468 = getelementptr inbounds %struct.regexp, ptr %461, i64 0, i32 17
  %469 = load ptr, ptr %468, align 8, !tbaa !563
  %470 = load i64, ptr %469, align 8, !tbaa !566
  %471 = getelementptr inbounds i8, ptr %172, i64 %470
  %472 = ptrtoint ptr %471 to i64
  %473 = ptrtoint ptr %454 to i64
  %474 = sub i64 %472, %473
  %475 = and i64 %474, 4294967295
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %486, label %477, !prof !721

477:                                              ; preds = %460
  %478 = icmp eq ptr %454, %452
  br i1 %478, label %482, label %479, !prof !722

479:                                              ; preds = %477
  %480 = shl i64 %474, 32
  %481 = ashr exact i64 %480, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %452, ptr align 1 %454, i64 %481, i1 false)
  br label %482

482:                                              ; preds = %479, %477
  %483 = shl i64 %474, 32
  %484 = ashr exact i64 %483, 32
  %485 = getelementptr inbounds i8, ptr %452, i64 %484
  br label %486

486:                                              ; preds = %482, %460
  %487 = phi ptr [ %485, %482 ], [ %452, %460 ]
  %488 = load i64, ptr %1, align 8, !tbaa !197
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %493, label %490, !prof !723

490:                                              ; preds = %486
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %487, ptr nonnull align 1 %323, i64 %488, i1 false), !prof !724
  %491 = load i64, ptr %1, align 8, !tbaa !197
  %492 = getelementptr inbounds i8, ptr %487, i64 %491
  br label %493

493:                                              ; preds = %490, %486
  %494 = phi ptr [ %492, %490 ], [ %487, %486 ]
  %495 = load ptr, ptr %214, align 8, !tbaa !196
  %496 = getelementptr inbounds %struct.regexp, ptr %495, i64 0, i32 17
  %497 = load ptr, ptr %496, align 8, !tbaa !563
  %498 = getelementptr inbounds %struct.regexp_paren_pair, ptr %497, i64 0, i32 1
  %499 = load i64, ptr %498, align 8, !tbaa !564
  %500 = getelementptr inbounds i8, ptr %172, i64 %499
  br label %501

501:                                              ; preds = %493, %458
  %502 = phi i8 [ %450, %458 ], [ %467, %493 ]
  %503 = phi ptr [ %452, %458 ], [ %494, %493 ]
  %504 = phi ptr [ %453, %458 ], [ %471, %493 ]
  %505 = phi ptr [ %454, %458 ], [ %500, %493 ]
  %506 = phi ptr [ %459, %458 ], [ %455, %493 ]
  %507 = icmp eq i64 %451, %448
  br i1 %507, label %540, label %508, !prof !720

508:                                              ; preds = %501
  %509 = load ptr, ptr %214, align 8, !tbaa !196
  %510 = getelementptr inbounds %struct.regexp, ptr %509, i64 0, i32 4
  %511 = load ptr, ptr %510, align 8, !tbaa !519
  %512 = getelementptr inbounds %struct.regexp_engine, ptr %511, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !553
  %514 = icmp eq ptr %505, %504
  %515 = zext i1 %514 to i64
  %516 = call i32 %513(ptr noundef %212, ptr noundef %505, ptr noundef nonnull %176, ptr noundef nonnull %172, i64 noundef %515, ptr noundef %154, ptr noundef null, i32 noundef 152) #13, !prof !725
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %449, !prof !726, !llvm.loop !727

518:                                              ; preds = %508
  %519 = icmp eq ptr %505, %503
  br i1 %519, label %536, label %520, !prof !728

520:                                              ; preds = %518
  %521 = ptrtoint ptr %176 to i64
  %522 = ptrtoint ptr %505 to i64
  %523 = sub i64 %521, %522
  %524 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !196
  %526 = ptrtoint ptr %503 to i64
  %527 = ptrtoint ptr %525 to i64
  %528 = shl i64 %523, 32
  %529 = ashr exact i64 %528, 32
  %530 = add i64 %529, %526
  %531 = sub i64 %530, %527
  %532 = load ptr, ptr %154, align 8, !tbaa !232
  %533 = getelementptr inbounds %struct.xpv, ptr %532, i64 0, i32 2
  store i64 %531, ptr %533, align 8, !tbaa !234
  %534 = add i64 %528, 4294967296
  %535 = ashr exact i64 %534, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %503, ptr align 1 %505, i64 %535, i1 false), !prof !729
  br label %536

536:                                              ; preds = %520, %518
  %537 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %538 = call ptr @Perl_sv_newmortal() #13
  %539 = getelementptr inbounds ptr, ptr %537, i64 1
  store ptr %538, ptr %539, align 8, !tbaa !179
  call void @Perl_sv_setiv(ptr noundef %538, i64 noundef %456) #13
  br label %540

540:                                              ; preds = %501, %536
  %541 = phi ptr [ %539, %536 ], [ %61, %501 ]
  br i1 %457, label %904, label %846, !prof !730

542:                                              ; preds = %340, %319, %357, %353, %345, %335, %326
  %543 = icmp eq i32 %174, 0
  br i1 %543, label %570, label %544, !prof !731

544:                                              ; preds = %542
  %545 = load i32, ptr %8, align 8, !tbaa !541
  %546 = and i32 %545, 134217728
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %544
  %549 = call ptr @Perl_newSVsv(ptr noundef %154) #13
  %550 = call ptr @Perl_sv_2mortal(ptr noundef %549) #13
  br label %551

551:                                              ; preds = %548, %544
  %552 = phi ptr [ %550, %548 ], [ %154, %544 ]
  %553 = getelementptr inbounds %struct.sv, ptr %552, i64 0, i32 2
  %554 = load i32, ptr %553, align 4, !tbaa !216
  %555 = and i32 %554, 430018304
  %556 = icmp eq i32 %555, 1024
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = load ptr, ptr %552, align 8, !tbaa !232
  %559 = getelementptr inbounds %struct.xpv, ptr %558, i64 0, i32 2
  %560 = load i64, ptr %559, align 8, !tbaa !234
  store i64 %560, ptr %2, align 8, !tbaa !197
  %561 = getelementptr inbounds %struct.sv, ptr %552, i64 0, i32 3
  %562 = load ptr, ptr %561, align 8, !tbaa !196
  br label %565

563:                                              ; preds = %551
  %564 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %552, ptr noundef nonnull %2, i32 noundef 0) #13
  br label %565

565:                                              ; preds = %563, %557
  %566 = phi ptr [ %562, %557 ], [ %564, %563 ]
  %567 = icmp ne ptr %213, null
  %568 = icmp ne ptr %566, null
  %569 = select i1 %567, i1 %568, i1 false, !prof !686
  br i1 %569, label %153, label %163, !prof !336

570:                                              ; preds = %542, %361
  %571 = shl i64 %189, 1
  %572 = add i64 %571, 10
  %573 = load ptr, ptr %214, align 8, !tbaa !196
  %574 = getelementptr inbounds %struct.regexp, ptr %573, i64 0, i32 7
  %575 = load i32, ptr %574, align 8, !tbaa !529
  %576 = lshr i32 %575, 25
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 2
  %579 = or i8 %578, %321
  %580 = getelementptr inbounds %struct.regexp, ptr %573, i64 0, i32 17
  %581 = load ptr, ptr %580, align 8, !tbaa !563
  %582 = load i64, ptr %581, align 8, !tbaa !566
  %583 = getelementptr inbounds i8, ptr %172, i64 %582
  %584 = load i32, ptr %162, align 4, !tbaa !216
  %585 = and i32 %584, 536870912
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %593, label %587, !prof !732

587:                                              ; preds = %570
  %588 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %589 = getelementptr inbounds %struct.cop, ptr %588, i64 0, i32 10
  %590 = load i32, ptr %589, align 8, !tbaa !283
  %591 = and i32 %590, 8
  %592 = icmp eq i32 %591, 0
  br label %593

593:                                              ; preds = %587, %570
  %594 = phi i1 [ false, %570 ], [ %592, %587 ]
  %595 = select i1 %594, i32 537395200, i32 524288, !prof !733
  %596 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %172, i64 noundef %582, i32 noundef %595) #13
  br i1 %324, label %600, label %597, !prof !734

597:                                              ; preds = %593
  %598 = add i64 %571, 11
  %599 = call i64 @llvm.smax.i64(i64 %598, i64 0)
  br label %648

600:                                              ; preds = %593
  %601 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %602 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %603 = getelementptr inbounds %struct.stackinfo, ptr %602, i64 0, i32 4
  %604 = load i32, ptr %603, align 8, !tbaa !195
  %605 = getelementptr inbounds %struct.stackinfo, ptr %602, i64 0, i32 5
  %606 = load i32, ptr %605, align 4, !tbaa !735
  %607 = icmp slt i32 %604, %606
  br i1 %607, label %608, label %610, !prof !736

608:                                              ; preds = %600
  %609 = add nsw i32 %604, 1
  store i32 %609, ptr %603, align 8, !tbaa !195
  br label %614

610:                                              ; preds = %600
  %611 = call i32 @Perl_cxinc() #13
  %612 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %613 = getelementptr inbounds %struct.stackinfo, ptr %612, i64 0, i32 4
  store i32 %611, ptr %613, align 8, !tbaa !195
  br label %614

614:                                              ; preds = %610, %608
  %615 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %616 = getelementptr inbounds %struct.stackinfo, ptr %615, i64 0, i32 1
  %617 = load ptr, ptr %616, align 8, !tbaa !193
  %618 = getelementptr inbounds %struct.stackinfo, ptr %615, i64 0, i32 4
  %619 = load i32, ptr %618, align 8, !tbaa !195
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.context, ptr %617, i64 %620
  %622 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 4
  store i64 0, ptr %622, align 8, !tbaa !196
  %623 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 5
  store i64 %572, ptr %623, align 8, !tbaa !196
  %624 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 1
  store i8 1, ptr %624, align 1, !tbaa !196
  %625 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 3
  store i32 %7, ptr %625, align 4, !tbaa !196
  %626 = zext nneg i8 %579 to i16
  %627 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 2
  store i16 %626, ptr %627, align 2, !tbaa !196
  %628 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 6
  store ptr %172, ptr %628, align 8, !tbaa !196
  %629 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 7
  store ptr %596, ptr %629, align 8, !tbaa !196
  %630 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 8
  store ptr %154, ptr %630, align 8, !tbaa !196
  %631 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 9
  store ptr %583, ptr %631, align 8, !tbaa !196
  %632 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 10
  store ptr %172, ptr %632, align 8, !tbaa !196
  %633 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 11
  store ptr %176, ptr %633, align 8, !tbaa !196
  %634 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 12
  store ptr null, ptr %634, align 8, !tbaa !196
  %635 = getelementptr inbounds %struct.subst, ptr %621, i64 0, i32 13
  store ptr %212, ptr %635, align 8, !tbaa !196
  %636 = lshr exact i32 %118, 20
  %637 = trunc i32 %636 to i8
  %638 = xor i8 %637, 27
  store i8 %638, ptr %621, align 8, !tbaa !196
  call void @Perl_rxres_save(ptr noundef nonnull %634, ptr noundef %212) #13
  %639 = icmp eq ptr %212, null
  br i1 %639, label %644, label %640, !prof !737

640:                                              ; preds = %614
  %641 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 1
  %642 = load i32, ptr %641, align 8, !tbaa !254
  %643 = add i32 %642, 1
  store i32 %643, ptr %641, align 8, !tbaa !254
  br label %644

644:                                              ; preds = %614, %640
  store ptr %601, ptr @PL_stack_sp, align 8, !tbaa !179
  %645 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %646 = getelementptr inbounds %struct.pmop, ptr %645, i64 0, i32 11
  %647 = load ptr, ptr %646, align 8, !tbaa !196
  br label %904

648:                                              ; preds = %597, %763
  %649 = phi ptr [ %683, %763 ], [ %172, %597 ]
  %650 = phi i8 [ %760, %763 ], [ %579, %597 ]
  %651 = phi ptr [ %761, %763 ], [ %322, %597 ]
  %652 = phi i64 [ %656, %763 ], [ 0, %597 ]
  %653 = phi ptr [ %684, %763 ], [ %176, %597 ]
  %654 = phi ptr [ %710, %763 ], [ %583, %597 ]
  %655 = phi i8 [ %762, %763 ], [ 1, %597 ]
  %656 = add nuw i64 %652, 1
  %657 = icmp eq i64 %652, %599
  br i1 %657, label %658, label %660, !prof !738

658:                                              ; preds = %648
  %659 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.33) #13
  br label %904

660:                                              ; preds = %648
  %661 = load ptr, ptr %214, align 8, !tbaa !196
  %662 = getelementptr inbounds %struct.regexp, ptr %661, i64 0, i32 7
  %663 = load i32, ptr %662, align 8, !tbaa !529
  %664 = lshr i32 %663, 25
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 2
  %667 = or i8 %666, %650
  %668 = and i32 %663, 33554432
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %682, label %670, !prof !739

670:                                              ; preds = %660
  %671 = getelementptr inbounds %struct.regexp, ptr %661, i64 0, i32 18
  %672 = load ptr, ptr %671, align 8, !tbaa !740
  %673 = icmp eq ptr %672, %649
  br i1 %673, label %682, label %674, !prof !741

674:                                              ; preds = %670
  %675 = ptrtoint ptr %654 to i64
  %676 = ptrtoint ptr %649 to i64
  %677 = sub i64 %675, %676
  %678 = getelementptr inbounds i8, ptr %672, i64 %677
  %679 = ptrtoint ptr %653 to i64
  %680 = sub i64 %679, %675
  %681 = getelementptr inbounds i8, ptr %678, i64 %680
  br label %682

682:                                              ; preds = %674, %670, %660
  %683 = phi ptr [ %672, %674 ], [ %649, %670 ], [ %649, %660 ]
  %684 = phi ptr [ %681, %674 ], [ %653, %670 ], [ %653, %660 ]
  %685 = phi ptr [ %678, %674 ], [ %654, %670 ], [ %654, %660 ]
  %686 = getelementptr inbounds %struct.regexp, ptr %661, i64 0, i32 17
  %687 = load ptr, ptr %686, align 8, !tbaa !563
  %688 = load i64, ptr %687, align 8, !tbaa !566
  %689 = getelementptr inbounds i8, ptr %683, i64 %688
  %690 = ptrtoint ptr %689 to i64
  %691 = ptrtoint ptr %685 to i64
  %692 = sub i64 %690, %691
  %693 = load i32, ptr %162, align 4, !tbaa !216
  %694 = and i32 %693, 536870912
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %702, label %696, !prof !742

696:                                              ; preds = %682
  %697 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %698 = getelementptr inbounds %struct.cop, ptr %697, i64 0, i32 10
  %699 = load i32, ptr %698, align 8, !tbaa !283
  %700 = and i32 %699, 8
  %701 = icmp eq i32 %700, 0
  br label %702

702:                                              ; preds = %696, %682
  %703 = phi i1 [ false, %682 ], [ %701, %696 ]
  %704 = select i1 %703, i32 32768, i32 16384, !prof !738
  call void @Perl_sv_catpvn_flags(ptr noundef %596, ptr noundef %685, i64 noundef %692, i32 noundef %704) #13
  %705 = load ptr, ptr %214, align 8, !tbaa !196
  %706 = getelementptr inbounds %struct.regexp, ptr %705, i64 0, i32 17
  %707 = load ptr, ptr %706, align 8, !tbaa !563
  %708 = getelementptr inbounds %struct.regexp_paren_pair, ptr %707, i64 0, i32 1
  %709 = load i64, ptr %708, align 8, !tbaa !564
  %710 = getelementptr inbounds i8, ptr %683, i64 %709
  %711 = and i8 %655, 1
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %720, label %713, !prof !743

713:                                              ; preds = %702
  %714 = load i64, ptr %1, align 8, !tbaa !197
  %715 = icmp eq i64 %714, 0
  br i1 %715, label %759, label %716, !prof !744

716:                                              ; preds = %713
  %717 = and i8 %320, 1
  %718 = icmp eq i8 %717, 0
  %719 = select i1 %718, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %596, ptr noundef nonnull %323, i64 noundef %714, i32 noundef %719) #13
  br label %759

720:                                              ; preds = %702
  %721 = load ptr, ptr @PL_encoding, align 8, !tbaa !179
  %722 = icmp eq ptr %721, null
  br i1 %722, label %723, label %729, !prof !745

723:                                              ; preds = %720
  %724 = load ptr, ptr @PL_lex_encoding, align 8, !tbaa !179
  %725 = icmp eq ptr %724, null
  br i1 %725, label %748, label %726, !prof !745

726:                                              ; preds = %723
  %727 = call ptr @Perl__get_encoding() #13
  %728 = icmp eq ptr %727, null
  br i1 %728, label %748, label %729

729:                                              ; preds = %720, %726
  %730 = icmp eq ptr %651, null
  br i1 %730, label %731, label %733

731:                                              ; preds = %729
  %732 = call ptr @Perl_sv_newmortal() #13
  br label %733

733:                                              ; preds = %731, %729
  %734 = phi ptr [ %651, %729 ], [ %732, %731 ]
  call void @Perl_sv_copypv_flags(ptr noundef %734, ptr noundef %17, i32 noundef 2) #13
  %735 = getelementptr inbounds %struct.sv, ptr %734, i64 0, i32 2
  %736 = load i32, ptr %735, align 4, !tbaa !216
  %737 = and i32 %736, 536870912
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %745, label %739

739:                                              ; preds = %733
  %740 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %741 = getelementptr inbounds %struct.cop, ptr %740, i64 0, i32 10
  %742 = load i32, ptr %741, align 8, !tbaa !283
  %743 = and i32 %742, 8
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %748, label %745

745:                                              ; preds = %739, %733
  %746 = call ptr @Perl__get_encoding() #13
  %747 = call ptr @Perl_sv_recode_to_utf8(ptr noundef %734, ptr noundef %746) #13
  br label %748

748:                                              ; preds = %726, %723, %739, %745
  %749 = phi ptr [ %734, %745 ], [ %734, %739 ], [ %17, %723 ], [ %17, %726 ]
  %750 = phi ptr [ %734, %745 ], [ %734, %739 ], [ %651, %723 ], [ %651, %726 ]
  %751 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  call void @Perl_sv_catsv_flags(ptr noundef %596, ptr noundef %749, i32 noundef 2) #13
  %752 = load i32, ptr %751, align 4, !tbaa !216
  %753 = and i32 %752, 14680064
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %759, label %755, !prof !745

755:                                              ; preds = %748
  %756 = call zeroext i1 @Perl_sv_tainted(ptr noundef %17) #13
  %757 = or i8 %667, 4
  %758 = select i1 %756, i8 %757, i8 %667
  br label %759

759:                                              ; preds = %755, %713, %716, %748
  %760 = phi i8 [ %667, %748 ], [ %667, %716 ], [ %667, %713 ], [ %758, %755 ]
  %761 = phi ptr [ %750, %748 ], [ %651, %716 ], [ %651, %713 ], [ %750, %755 ]
  %762 = phi i8 [ %655, %748 ], [ 0, %716 ], [ 0, %713 ], [ %655, %755 ]
  br i1 %119, label %773, label %763, !prof !746

763:                                              ; preds = %759
  %764 = load ptr, ptr %214, align 8, !tbaa !196
  %765 = getelementptr inbounds %struct.regexp, ptr %764, i64 0, i32 4
  %766 = load ptr, ptr %765, align 8, !tbaa !519
  %767 = getelementptr inbounds %struct.regexp_engine, ptr %766, i64 0, i32 1
  %768 = load ptr, ptr %767, align 8, !tbaa !553
  %769 = icmp eq i64 %709, %688
  %770 = zext i1 %769 to i64
  %771 = call i32 %768(ptr noundef %212, ptr noundef %710, ptr noundef %684, ptr noundef %683, i64 noundef %770, ptr noundef %154, ptr noundef null, i32 noundef 152) #13, !prof !747
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %648, !prof !748, !llvm.loop !749

773:                                              ; preds = %759, %763
  %774 = ptrtoint ptr %684 to i64
  %775 = ptrtoint ptr %710 to i64
  %776 = sub i64 %774, %775
  %777 = load i32, ptr %162, align 4, !tbaa !216
  %778 = and i32 %777, 536870912
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %787, label %780, !prof !750

780:                                              ; preds = %773
  %781 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %782 = getelementptr inbounds %struct.cop, ptr %781, i64 0, i32 10
  %783 = load i32, ptr %782, align 8, !tbaa !283
  %784 = and i32 %783, 8
  %785 = icmp eq i32 %784, 0
  %786 = select i1 %785, i32 32768, i32 16384
  br label %787

787:                                              ; preds = %780, %773
  %788 = phi i32 [ 16384, %773 ], [ %786, %780 ]
  call void @Perl_sv_catpvn_flags(ptr noundef %596, ptr noundef %710, i64 noundef %776, i32 noundef %788) #13
  %789 = load i32, ptr %8, align 8, !tbaa !541
  %790 = and i32 %789, 134217728
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %795, label %792, !prof !750

792:                                              ; preds = %787
  %793 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %794 = getelementptr inbounds ptr, ptr %793, i64 1
  store ptr %596, ptr %794, align 8, !tbaa !179
  br label %846

795:                                              ; preds = %787
  %796 = load i32, ptr %162, align 4, !tbaa !216
  %797 = and i32 %796, 268435456
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %800, label %799, !prof !751

799:                                              ; preds = %795
  call void @Perl_sv_force_normal_flags(ptr noundef %154, i32 noundef 4) #13
  br label %826

800:                                              ; preds = %795
  %801 = load ptr, ptr %154, align 8, !tbaa !232
  %802 = getelementptr inbounds %struct.xpv, ptr %801, i64 0, i32 3
  %803 = load i64, ptr %802, align 8, !tbaa !196
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %826, label %805, !prof !752

805:                                              ; preds = %800
  %806 = and i32 %796, 33554432
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %823, label %808, !prof !753

808:                                              ; preds = %805
  %809 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 3
  %810 = load ptr, ptr %809, align 8, !tbaa !196
  %811 = getelementptr inbounds i8, ptr %810, i64 -1
  %812 = load i8, ptr %811, align 1, !tbaa !196
  %813 = zext i8 %812 to i64
  %814 = icmp eq i8 %812, 0
  br i1 %814, label %815, label %818

815:                                              ; preds = %808
  %816 = getelementptr inbounds i8, ptr %810, i64 -9
  %817 = load i64, ptr %816, align 1
  br label %818

818:                                              ; preds = %815, %808
  %819 = phi i64 [ %813, %808 ], [ %817, %815 ]
  %820 = sub i64 0, %819
  %821 = getelementptr inbounds i8, ptr %810, i64 %820
  store ptr %821, ptr %809, align 8, !tbaa !196
  %822 = and i32 %796, -301989889
  store i32 %822, ptr %162, align 4, !tbaa !216
  br label %823

823:                                              ; preds = %805, %818
  %824 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !196
  call void @Perl_safesysfree(ptr noundef %825) #13
  br label %826

826:                                              ; preds = %799, %823, %800
  %827 = getelementptr inbounds %struct.sv, ptr %596, i64 0, i32 3
  %828 = load ptr, ptr %827, align 8, !tbaa !196
  %829 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 3
  store ptr %828, ptr %829, align 8, !tbaa !196
  %830 = load ptr, ptr %596, align 8, !tbaa !232
  %831 = getelementptr inbounds %struct.xpv, ptr %830, i64 0, i32 2
  %832 = load i64, ptr %831, align 8, !tbaa !234
  %833 = load ptr, ptr %154, align 8, !tbaa !232
  %834 = getelementptr inbounds %struct.xpv, ptr %833, i64 0, i32 2
  store i64 %832, ptr %834, align 8, !tbaa !234
  %835 = getelementptr inbounds %struct.xpv, ptr %830, i64 0, i32 3
  %836 = load i64, ptr %835, align 8, !tbaa !196
  %837 = getelementptr inbounds %struct.xpv, ptr %833, i64 0, i32 3
  store i64 %836, ptr %837, align 8, !tbaa !196
  %838 = getelementptr inbounds %struct.sv, ptr %596, i64 0, i32 2
  %839 = load i32, ptr %838, align 4, !tbaa !216
  %840 = and i32 %839, 536870912
  %841 = load i32, ptr %162, align 4, !tbaa !216
  %842 = or i32 %841, %840
  store i32 %842, ptr %162, align 4, !tbaa !216
  store ptr null, ptr %827, align 8, !tbaa !196
  %843 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %844 = call ptr @Perl_sv_newmortal() #13
  %845 = getelementptr inbounds ptr, ptr %843, i64 1
  store ptr %844, ptr %845, align 8, !tbaa !179
  call void @Perl_sv_setiv(ptr noundef %844, i64 noundef %656) #13
  br label %846

846:                                              ; preds = %792, %826, %439, %540
  %847 = phi i8 [ %760, %792 ], [ %760, %826 ], [ %391, %439 ], [ %502, %540 ]
  %848 = phi ptr [ %596, %792 ], [ %154, %826 ], [ %154, %439 ], [ %154, %540 ]
  %849 = phi ptr [ %794, %792 ], [ %845, %826 ], [ %441, %439 ], [ %541, %540 ]
  %850 = load i32, ptr %8, align 8, !tbaa !541
  %851 = and i32 %850, 134217728
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %858, !prof !699

853:                                              ; preds = %846
  %854 = getelementptr inbounds %struct.sv, ptr %848, i64 0, i32 2
  %855 = load i32, ptr %854, align 4, !tbaa !216
  %856 = and i32 %855, 2147418367
  %857 = or disjoint i32 %856, 17408
  store i32 %857, ptr %854, align 4, !tbaa !216
  br label %858

858:                                              ; preds = %853, %846
  %859 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %890, label %861, !prof !699

861:                                              ; preds = %858
  %862 = zext nneg i8 %847 to i32
  %863 = and i32 %862, 2
  %864 = icmp ne i32 %863, 0
  %865 = and i32 %862, 9
  %866 = icmp eq i32 %865, 9
  %867 = or i1 %864, %866
  br i1 %867, label %868, label %873

868:                                              ; preds = %861
  %869 = load ptr, ptr %214, align 8, !tbaa !196
  %870 = getelementptr inbounds %struct.regexp, ptr %869, i64 0, i32 7
  %871 = load i32, ptr %870, align 8, !tbaa !529
  %872 = or i32 %871, 67108864
  store i32 %872, ptr %870, align 8, !tbaa !529
  br label %873

873:                                              ; preds = %861, %868
  %874 = and i32 %862, 16
  %875 = icmp ne i32 %874, 0
  %876 = and i32 %862, 3
  %877 = icmp eq i32 %876, 0
  %878 = or i1 %875, %877
  %879 = load ptr, ptr %849, align 8, !tbaa !179
  br i1 %878, label %881, label %880

880:                                              ; preds = %873
  call void @Perl_sv_magic(ptr noundef %879, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %882

881:                                              ; preds = %873
  call void @Perl_sv_untaint(ptr noundef %879) #13
  br label %882

882:                                              ; preds = %881, %880
  %883 = and i32 %862, 7
  %884 = icmp ne i32 %883, 0
  %885 = zext i1 %884 to i8
  store i8 %885, ptr @PL_tainted, align 1, !tbaa !191
  %886 = load i8, ptr @PL_tainting, align 1, !tbaa !191, !range !247, !noundef !248
  %887 = icmp ne i8 %886, 0
  %888 = and i1 %884, %887
  br i1 %888, label %889, label %890

889:                                              ; preds = %882
  call void @Perl_sv_magic(ptr noundef %848, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #13
  br label %890

890:                                              ; preds = %882, %858, %889
  %891 = getelementptr inbounds %struct.sv, ptr %848, i64 0, i32 2
  %892 = load i32, ptr %891, align 4, !tbaa !216
  %893 = and i32 %892, 4194304
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %897, label %895, !prof !754

895:                                              ; preds = %890
  %896 = call i32 @Perl_mg_set(ptr noundef %848) #13
  br label %897

897:                                              ; preds = %890, %895
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  %898 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %899 = icmp sgt i32 %898, %7
  br i1 %899, label %900, label %901, !prof !755

900:                                              ; preds = %897
  call void @Perl_leave_scope(i32 noundef %7) #13
  br label %901

901:                                              ; preds = %900, %897
  store ptr %849, ptr @PL_stack_sp, align 8, !tbaa !179
  %902 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %903 = load ptr, ptr %902, align 8, !tbaa !188
  br label %904

904:                                              ; preds = %540, %901, %658, %644, %232, %163
  %905 = phi ptr [ %659, %658 ], [ %903, %901 ], [ %647, %644 ], [ %506, %540 ], [ %234, %232 ], [ %166, %163 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %905
}

declare ptr @Perl__get_encoding() local_unnamed_addr #2

declare ptr @Perl_sv_recode_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_cxinc() local_unnamed_addr #2

declare void @Perl_rxres_save(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_grepwhile() local_unnamed_addr #0 !prof !756 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !179
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5, !prof !757

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !216
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !758

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 2) #13
  br label %61

12:                                               ; preds = %5
  %13 = and i32 %7, 65280
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %7, 255
  %16 = icmp eq i32 %15, 8
  %17 = or i1 %14, %16
  %18 = and i32 %7, 16777471
  %19 = icmp eq i32 %18, 16777226
  %20 = or i1 %19, %17
  br i1 %20, label %21, label %75, !prof !758

21:                                               ; preds = %12
  %22 = and i32 %7, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24, !prof !759

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !232
  %26 = icmp eq ptr %25, null
  br i1 %26, label %75, label %27, !prof !760

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !234
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %63, label %31, !prof !760

31:                                               ; preds = %27
  %32 = icmp eq i64 %29, 0
  br i1 %32, label %75, label %33, !prof !761

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !196
  %36 = load i8, ptr %35, align 1, !tbaa !196
  %37 = icmp ne i8 %36, 48
  br label %61

38:                                               ; preds = %21
  %39 = and i32 %7, 768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41, !prof !762

41:                                               ; preds = %38
  %42 = and i32 %7, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44, !prof !762

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 8, !tbaa !232
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !196
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %63, !prof !762

49:                                               ; preds = %44, %41
  %50 = and i32 %7, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8, !tbaa !232
  %54 = getelementptr inbounds %struct.xpvnv, ptr %53, i64 0, i32 5
  %55 = load double, ptr %54, align 8, !tbaa !196
  %56 = fcmp uno double %55, 0.000000e+00
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = fcmp une double %55, 0.000000e+00
  br label %61

59:                                               ; preds = %38
  %60 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 0) #13
  br label %61

61:                                               ; preds = %57, %33, %59, %10
  %62 = phi i1 [ %11, %10 ], [ %60, %59 ], [ %37, %33 ], [ %58, %57 ]
  br i1 %62, label %63, label %75, !prof !763

63:                                               ; preds = %27, %44, %52, %61
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %65 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %66 = load i32, ptr %65, align 4, !tbaa !199
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !179
  %70 = getelementptr inbounds i32, ptr %65, i64 -1
  %71 = load i32, ptr %70, align 4, !tbaa !199
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 4, !tbaa !199
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds ptr, ptr %64, i64 %73
  store ptr %69, ptr %74, align 8, !tbaa !179
  br label %75

75:                                               ; preds = %12, %24, %31, %49, %0, %63, %61
  %76 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %77 = load i32, ptr %76, align 4, !tbaa !199
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %76, align 4, !tbaa !199
  %79 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %80 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %83, !prof !764

82:                                               ; preds = %75
  tail call void @Perl_free_tmps() #13
  br label %83

83:                                               ; preds = %82, %75
  tail call void @Perl_pop_scope() #13
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %85 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %86 = load i32, ptr %85, align 4, !tbaa !199
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = icmp ugt ptr %88, %2
  br i1 %89, label %90, label %153, !prof !765

90:                                               ; preds = %83
  %91 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %92 = getelementptr inbounds %struct.op, ptr %91, i64 0, i32 5
  %93 = load i8, ptr %92, align 2, !tbaa !253
  %94 = and i8 %93, 3
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96, !prof !766

96:                                               ; preds = %90
  %97 = zext nneg i8 %94 to i32
  br label %100

98:                                               ; preds = %90
  %99 = tail call i32 @Perl_block_gimme() #13
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  tail call void @Perl_pop_scope() #13
  %102 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %103 = getelementptr inbounds i32, ptr %102, i64 -1
  store ptr %103, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %104 = load i32, ptr %103, align 4, !tbaa !199
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !199
  %106 = getelementptr inbounds i32, ptr %102, i64 -2
  %107 = load i32, ptr %106, align 4, !tbaa !199
  %108 = sub nsw i32 %105, %107
  store ptr %106, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %109 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %110 = getelementptr inbounds i32, ptr %102, i64 -3
  store ptr %110, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %111 = sext i32 %107 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  switch i32 %101, label %150 [
    i32 2, label %113
    i32 3, label %147
  ], !prof !767

113:                                              ; preds = %100
  %114 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %115 = getelementptr inbounds %struct.op, ptr %114, i64 0, i32 6
  %116 = load i8, ptr %115, align 1, !tbaa !203
  %117 = and i8 %116, 2
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119, !prof !768

119:                                              ; preds = %113
  %120 = tail call ptr @Perl_sv_newmortal() #13
  %121 = sext i32 %108 to i64
  tail call void @Perl_sv_setiv(ptr noundef %120, i64 noundef %121) #13
  %122 = getelementptr inbounds ptr, ptr %112, i64 1
  store ptr %120, ptr %122, align 8, !tbaa !179
  br label %150

123:                                              ; preds = %113
  %124 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %125 = getelementptr inbounds %struct.op, ptr %114, i64 0, i32 3
  %126 = load i64, ptr %125, align 8, !tbaa !215
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !179
  %129 = sext i32 %108 to i64
  tail call void @Perl_sv_setiv(ptr noundef %128, i64 noundef %129) #13
  %130 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !216
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !768

134:                                              ; preds = %123
  %135 = tail call i32 @Perl_mg_set(ptr noundef %128) #13
  br label %136

136:                                              ; preds = %123, %134
  %137 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %138 = ptrtoint ptr %137 to i64
  %139 = ptrtoint ptr %112 to i64
  %140 = sub i64 %138, %139
  %141 = icmp slt i64 %140, 8
  br i1 %141, label %142, label %144, !prof !331

142:                                              ; preds = %136
  %143 = tail call ptr @Perl_stack_grow(ptr noundef %112, ptr noundef %112, i64 noundef 1) #13
  br label %144

144:                                              ; preds = %136, %142
  %145 = phi ptr [ %143, %142 ], [ %112, %136 ]
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  store ptr %128, ptr %146, align 8, !tbaa !179
  br label %150

147:                                              ; preds = %100
  %148 = sext i32 %108 to i64
  %149 = getelementptr inbounds ptr, ptr %112, i64 %148
  br label %150

150:                                              ; preds = %100, %147, %119, %144
  %151 = phi ptr [ %122, %119 ], [ %146, %144 ], [ %149, %147 ], [ %112, %100 ]
  store ptr %151, ptr @PL_stack_sp, align 8, !tbaa !179
  %152 = load ptr, ptr @PL_op, align 8, !tbaa !179
  br label %215

153:                                              ; preds = %83
  tail call void @Perl_push_scope() #13
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpm) #13
  %154 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %155 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %156 = load i32, ptr %155, align 4, !tbaa !199
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !179
  %160 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !216
  %162 = and i32 %161, 131072
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164, !prof !769

164:                                              ; preds = %153
  %165 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %159, i32 noundef 1538) #13
  %166 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %167 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %168 = load i32, ptr %167, align 4, !tbaa !199
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %166, i64 %169
  store ptr %165, ptr %170, align 8, !tbaa !179
  %171 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %172 = add nsw i64 %171, 1
  store i64 %172, ptr @PL_tmps_floor, align 8, !tbaa !197
  br label %173

173:                                              ; preds = %164, %153
  %174 = phi ptr [ %165, %164 ], [ %159, %153 ]
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !216
  %177 = and i32 %176, -524289
  store i32 %177, ptr %175, align 4, !tbaa !216
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %179 = getelementptr inbounds %struct.op, ptr %178, i64 0, i32 6
  %180 = load i8, ptr %179, align 1, !tbaa !203
  %181 = and i8 %180, 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %188, label %183, !prof !769

183:                                              ; preds = %173
  %184 = load ptr, ptr @PL_curpad, align 8, !tbaa !179
  %185 = getelementptr inbounds %struct.op, ptr %178, i64 0, i32 3
  %186 = load i64, ptr %185, align 8, !tbaa !215
  %187 = getelementptr inbounds ptr, ptr %184, i64 %186
  br label %211

188:                                              ; preds = %173
  %189 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %190 = getelementptr inbounds %struct.gv, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !196
  %192 = load ptr, ptr %191, align 8, !tbaa !205
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %194, !prof !770

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !254
  %197 = icmp ugt i32 %196, 1
  br i1 %197, label %198, label %200, !prof !769

198:                                              ; preds = %194
  %199 = add i32 %196, -1
  store i32 %199, ptr %195, align 8, !tbaa !254
  br label %201

200:                                              ; preds = %194
  tail call void @Perl_sv_free2(ptr noundef nonnull %192, i32 noundef %196) #13
  br label %201

201:                                              ; preds = %188, %198, %200
  %202 = icmp eq ptr %174, null
  br i1 %202, label %207, label %203, !prof !770

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !254
  %206 = add i32 %205, 1
  store i32 %206, ptr %204, align 8, !tbaa !254
  br label %207

207:                                              ; preds = %201, %203
  %208 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %209 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !196
  br label %211

211:                                              ; preds = %207, %183
  %212 = phi ptr [ %210, %207 ], [ %187, %183 ]
  store ptr %174, ptr %212, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %213 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %214 = getelementptr inbounds %struct.logop, ptr %213, i64 0, i32 8
  br label %215

215:                                              ; preds = %211, %150
  %216 = phi ptr [ %152, %150 ], [ %214, %211 ]
  %217 = load ptr, ptr %216, align 8, !tbaa !179
  ret ptr %217
}

declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_leavesub() local_unnamed_addr #0 !prof !771 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !195
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.context, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 8, !tbaa !196
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %262, !prof !772

12:                                               ; preds = %0
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr %5, align 8, !tbaa !195
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %15 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !196
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  store ptr %20, ptr @PL_curcop, align 8, !tbaa !179
  %21 = load ptr, ptr @PL_markstack, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !196
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %26 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !196
  store i32 %27, ptr @PL_scopestack_ix, align 4, !tbaa !199
  %28 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 1
  %31 = load i8, ptr %30, align 1, !tbaa !196
  store i32 %6, ptr %5, align 8, !tbaa !195
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  switch i8 %31, label %140 [
    i8 2, label %35
    i8 3, label %32
  ], !prof !773

32:                                               ; preds = %12
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = icmp ugt ptr %33, %1
  br i1 %34, label %140, label %121, !prof !774

35:                                               ; preds = %12
  %36 = getelementptr inbounds ptr, ptr %18, i64 1
  %37 = icmp ugt ptr %36, %1
  br i1 %37, label %107, label %38, !prof !775

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = icmp eq ptr %40, null
  br i1 %41, label %91, label %42, !prof !775

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !525
  %44 = getelementptr inbounds %struct.xpvcv, ptr %43, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !199
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %91, !prof !776

47:                                               ; preds = %42
  %48 = load ptr, ptr %1, align 8, !tbaa !179
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !216
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53, !prof !777

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !254
  %56 = icmp eq i32 %55, 1
  %57 = and i32 %50, 14680064
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = icmp eq ptr %48, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = add i32 %55, 1
  store i32 %63, ptr %54, align 8, !tbaa !254
  br label %64

64:                                               ; preds = %60, %62
  store ptr %48, ptr %36, align 8, !tbaa !179
  %65 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %66 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @Perl_free_tmps() #13
  br label %69

69:                                               ; preds = %68, %64
  %70 = load ptr, ptr %36, align 8, !tbaa !179
  %71 = tail call ptr @Perl_sv_2mortal(ptr noundef %70) #13
  br label %140

72:                                               ; preds = %53, %47
  %73 = icmp eq ptr %48, null
  br i1 %73, label %78, label %74, !prof !778

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !254
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !254
  br label %78

78:                                               ; preds = %72, %74
  %79 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  %80 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !197
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %83, !prof !778

82:                                               ; preds = %78
  tail call void @Perl_free_tmps() #13
  br label %83

83:                                               ; preds = %82, %78
  %84 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %48, i32 noundef 1538) #13
  store ptr %84, ptr %36, align 8, !tbaa !179
  %85 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !254
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %90, !prof !777

88:                                               ; preds = %83
  %89 = add i32 %86, -1
  store i32 %89, ptr %85, align 8, !tbaa !254
  br label %140

90:                                               ; preds = %83
  tail call void @Perl_sv_free2(ptr noundef %48, i32 noundef %86) #13
  br label %140

91:                                               ; preds = %42, %38
  %92 = load ptr, ptr %1, align 8, !tbaa !179
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !216
  %95 = and i32 %94, 524288
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97, !prof !779

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !254
  %100 = icmp eq i32 %99, 1
  %101 = and i32 %94, 14680064
  %102 = icmp eq i32 %101, 0
  %103 = and i1 %102, %100
  br i1 %103, label %104, label %105, !prof !780

104:                                              ; preds = %97
  store ptr %92, ptr %36, align 8, !tbaa !179
  br label %140

105:                                              ; preds = %97, %91
  %106 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %92, i32 noundef 1538) #13
  store ptr %106, ptr %36, align 8, !tbaa !179
  br label %140

107:                                              ; preds = %35
  %108 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %109 = ptrtoint ptr %108 to i64
  %110 = ptrtoint ptr %36 to i64
  %111 = sub i64 %109, %110
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = ptrtoint ptr %14 to i64
  %115 = sub i64 %110, %114
  %116 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef nonnull %36, i64 noundef 0) #13
  %117 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %118 = getelementptr inbounds i8, ptr %117, i64 %115
  br label %119

119:                                              ; preds = %107, %113
  %120 = phi ptr [ %118, %113 ], [ %36, %107 ]
  store ptr @PL_sv_undef, ptr %120, align 8, !tbaa !179
  br label %140

121:                                              ; preds = %32, %137
  %122 = phi ptr [ %138, %137 ], [ %33, %32 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !179
  %124 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !216
  %126 = and i32 %125, 524288
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128, !prof !781

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !254
  %131 = icmp eq i32 %130, 1
  %132 = and i32 %125, 14680064
  %133 = icmp eq i32 %132, 0
  %134 = and i1 %133, %131
  br i1 %134, label %137, label %135, !prof !782

135:                                              ; preds = %128, %121
  %136 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %123, i32 noundef 1538) #13
  store ptr %136, ptr %122, align 8, !tbaa !179
  store i8 0, ptr @PL_tainted, align 1, !tbaa !191
  br label %137

137:                                              ; preds = %128, %135
  %138 = getelementptr inbounds ptr, ptr %122, i64 1
  %139 = icmp ugt ptr %138, %1
  br i1 %139, label %140, label %121, !prof !783, !llvm.loop !784

140:                                              ; preds = %137, %32, %90, %88, %12, %119, %104, %105, %69
  %141 = phi ptr [ %36, %69 ], [ %36, %105 ], [ %36, %104 ], [ %120, %119 ], [ %1, %12 ], [ %36, %88 ], [ %36, %90 ], [ %1, %32 ], [ %1, %137 ]
  store ptr %141, ptr @PL_stack_sp, align 8, !tbaa !179
  tail call void @Perl_pop_scope() #13
  %142 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8
  %143 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !196
  %145 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 2
  %146 = load i16, ptr %145, align 2, !tbaa !196
  %147 = and i16 %146, 256
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %227, !prof !785

149:                                              ; preds = %140
  %150 = or disjoint i16 %146, 256
  store i16 %150, ptr %145, align 2, !tbaa !196
  %151 = load i8, ptr %8, align 8, !tbaa !196
  %152 = and i8 %151, 32
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %227, label %154, !prof !786

154:                                              ; preds = %149
  %155 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %156 = getelementptr inbounds %struct.gv, ptr %155, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !196
  %158 = getelementptr inbounds %struct.gp, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !295
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161, !prof !787

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !254
  %164 = icmp ugt i32 %163, 1
  br i1 %164, label %165, label %167, !prof !788

165:                                              ; preds = %161
  %166 = add i32 %163, -1
  store i32 %166, ptr %162, align 8, !tbaa !254
  br label %168

167:                                              ; preds = %161
  tail call void @Perl_sv_free2(ptr noundef nonnull %159, i32 noundef %163) #13
  br label %168

168:                                              ; preds = %154, %165, %167
  %169 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !196
  %171 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %172 = getelementptr inbounds %struct.gv, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !196
  %174 = getelementptr inbounds %struct.gp, ptr %173, i64 0, i32 6
  store ptr %170, ptr %174, align 8, !tbaa !295
  %175 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !196
  %177 = getelementptr inbounds %struct.av, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !316
  %179 = and i32 %178, 1073741824
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %206, label %181, !prof !789

181:                                              ; preds = %168
  %182 = load ptr, ptr %176, align 8, !tbaa !311
  %183 = getelementptr inbounds %struct.xpvav, ptr %182, i64 0, i32 2
  %184 = load i64, ptr %183, align 8, !tbaa !313
  %185 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !254
  %187 = icmp ugt i32 %186, 1
  br i1 %187, label %188, label %190, !prof !790

188:                                              ; preds = %181
  %189 = add i32 %186, -1
  store i32 %189, ptr %185, align 8, !tbaa !254
  br label %191

190:                                              ; preds = %181
  tail call void @Perl_sv_free2(ptr noundef nonnull %176, i32 noundef %186) #13
  br label %191

191:                                              ; preds = %188, %190
  %192 = tail call ptr @Perl_newSV_type(i32 noundef 11) #13
  store ptr %192, ptr %175, align 8, !tbaa !196
  tail call void @Perl_av_extend(ptr noundef %192, i64 noundef %184) #13
  %193 = load ptr, ptr %175, align 8, !tbaa !196
  %194 = getelementptr inbounds %struct.av, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !316
  %196 = and i32 %195, -1073741825
  store i32 %196, ptr %194, align 4, !tbaa !316
  %197 = load ptr, ptr %175, align 8, !tbaa !196
  %198 = getelementptr inbounds %struct.av, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !316
  %200 = or i32 %199, -2147483648
  store i32 %200, ptr %198, align 4, !tbaa !316
  %201 = load ptr, ptr %175, align 8, !tbaa !196
  %202 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !196
  %204 = getelementptr inbounds %struct.av, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !196
  store ptr %201, ptr %205, align 8, !tbaa !179
  br label %227

206:                                              ; preds = %168
  %207 = getelementptr inbounds %struct.av, ptr %176, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !196
  %209 = load ptr, ptr %176, align 8, !tbaa !311
  %210 = getelementptr inbounds %struct.xpvav, ptr %209, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !791
  %212 = ptrtoint ptr %208 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = ashr exact i64 %214, 3
  %216 = getelementptr inbounds %struct.xpvav, ptr %209, i64 0, i32 3
  %217 = load i64, ptr %216, align 8, !tbaa !387
  %218 = add nsw i64 %215, %217
  store i64 %218, ptr %216, align 8, !tbaa !387
  %219 = load ptr, ptr %175, align 8, !tbaa !196
  %220 = load ptr, ptr %219, align 8, !tbaa !311
  %221 = getelementptr inbounds %struct.xpvav, ptr %220, i64 0, i32 4
  %222 = load ptr, ptr %221, align 8, !tbaa !791
  %223 = getelementptr inbounds %struct.av, ptr %219, i64 0, i32 3
  store ptr %222, ptr %223, align 8, !tbaa !196
  %224 = load ptr, ptr %175, align 8, !tbaa !196
  %225 = load ptr, ptr %224, align 8, !tbaa !311
  %226 = getelementptr inbounds %struct.xpvav, ptr %225, i64 0, i32 2
  store i64 -1, ptr %226, align 8, !tbaa !313
  br label %227

227:                                              ; preds = %149, %206, %191, %140
  %228 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !196
  %230 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !199
  %231 = load ptr, ptr @PL_scopestack, align 8, !tbaa !179
  %232 = load i32, ptr %26, align 4, !tbaa !196
  %233 = sext i32 %232 to i64
  %234 = getelementptr i32, ptr %231, i64 %233
  %235 = getelementptr i32, ptr %234, i64 -1
  %236 = load i32, ptr %235, align 4, !tbaa !199
  %237 = icmp sgt i32 %230, %236
  br i1 %237, label %238, label %239, !prof !792

238:                                              ; preds = %227
  tail call void @Perl_leave_scope(i32 noundef %236) #13
  br label %239

239:                                              ; preds = %238, %227
  %240 = icmp eq ptr %229, null
  br i1 %240, label %246, label %241, !prof !792

241:                                              ; preds = %239
  %242 = load ptr, ptr %229, align 8, !tbaa !525
  %243 = getelementptr inbounds %struct.xpvcv, ptr %242, i64 0, i32 13
  store i32 %144, ptr %243, align 4, !tbaa !199
  %244 = icmp eq i32 %144, 0
  %245 = select i1 %244, ptr %229, ptr null, !prof !793
  br label %246

246:                                              ; preds = %241, %239
  %247 = phi ptr [ null, %239 ], [ %245, %241 ]
  %248 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %249 = getelementptr inbounds %struct.stackinfo, ptr %248, i64 0, i32 4
  %250 = load i32, ptr %249, align 8, !tbaa !195
  %251 = add nsw i32 %250, -1
  store i32 %251, ptr %249, align 8, !tbaa !195
  store ptr %29, ptr @PL_curpm, align 8, !tbaa !179
  %252 = icmp eq ptr %247, null
  br i1 %252, label %260, label %253, !prof !794

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.sv, ptr %247, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !254
  %256 = icmp ugt i32 %255, 1
  br i1 %256, label %257, label %259, !prof !795

257:                                              ; preds = %253
  %258 = add i32 %255, -1
  store i32 %258, ptr %254, align 8, !tbaa !254
  br label %260

259:                                              ; preds = %253
  tail call void @Perl_sv_free2(ptr noundef nonnull %247, i32 noundef %255) #13
  br label %260

260:                                              ; preds = %246, %257, %259
  %261 = load ptr, ptr %142, align 8, !tbaa !196
  br label %262

262:                                              ; preds = %0, %260
  %263 = phi ptr [ %261, %260 ], [ null, %0 ]
  ret ptr %263
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_pp_entersub() local_unnamed_addr #0 !prof !796 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  %7 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %7, ptr %1, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !253
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %16, !prof !797

14:                                               ; preds = %0
  %15 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #13
  br label %668

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !216
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %33, !prof !798

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !799
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30, !prof !800

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !255
  br label %30

30:                                               ; preds = %21, %27
  %31 = phi ptr [ %29, %27 ], [ null, %21 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %157, !prof !801

33:                                               ; preds = %16, %30
  %34 = trunc i32 %18 to i8
  switch i8 %34, label %57 [
    i8 9, label %35
    i8 10, label %54
    i8 12, label %155
    i8 11, label %155
    i8 13, label %157
  ], !prof !802

35:                                               ; preds = %54, %33
  %36 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !799
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !255
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %43, %41 ], [ null, %35 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %48 = call ptr @Perl_sv_2cv(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %45, %44 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %157

52:                                               ; preds = %49
  call void @Perl_push_scope() #13
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #13
  %53 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  store i64 %53, ptr @PL_tmps_floor, align 8, !tbaa !197
  br label %203

54:                                               ; preds = %33
  %55 = and i32 %18, 49152
  %56 = icmp eq i32 %55, 32768
  br i1 %56, label %35, label %57

57:                                               ; preds = %54, %33
  %58 = icmp eq ptr %7, @PL_sv_yes
  br i1 %58, label %59, label %73, !prof !803

59:                                               ; preds = %57
  br i1 %12, label %67, label %60, !prof !518

60:                                               ; preds = %59
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %62 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %63 = getelementptr inbounds i32, ptr %62, i64 -1
  store ptr %63, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %64 = load i32, ptr %62, align 4, !tbaa !199
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %61, i64 %65
  br label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %69 = getelementptr inbounds i32, ptr %68, i64 -1
  store ptr %69, ptr @PL_markstack_ptr, align 8, !tbaa !179
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi ptr [ %66, %60 ], [ %6, %67 ]
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !179
  %72 = load ptr, ptr %8, align 8, !tbaa !188
  br label %668

73:                                               ; preds = %57
  %74 = and i32 %18, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !804

76:                                               ; preds = %73
  %77 = tail call i32 @Perl_mg_get(ptr noundef nonnull %7) #13
  br label %78

78:                                               ; preds = %73, %76
  %79 = load ptr, ptr %1, align 8, !tbaa !179
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !216
  %82 = and i32 %81, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %100, label %84, !prof !805

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !196
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !216
  %89 = and i32 %88, 1048576
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %147, label %91, !prof !806

91:                                               ; preds = %84
  %92 = load ptr, ptr %86, align 8, !tbaa !232
  %93 = load ptr, ptr %92, align 8, !tbaa !337
  %94 = getelementptr inbounds %struct.hv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !339
  %96 = and i32 %95, 268435456
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %147, label %98

98:                                               ; preds = %91
  %99 = tail call ptr @Perl_amagic_deref_call(ptr noundef %79, i32 noundef 5) #13
  store ptr %99, ptr %1, align 8, !tbaa !179
  br label %147

100:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %101 = and i32 %81, 63232
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %81, 255
  %104 = icmp eq i32 %103, 8
  %105 = or i1 %102, %104
  %106 = and i32 %81, 16777471
  %107 = icmp eq i32 %106, 16777226
  %108 = or i1 %107, %105
  br i1 %108, label %111, label %109, !prof !807

109:                                              ; preds = %100
  %110 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_usym, ptr noundef nonnull @.str.35) #13
  br label %143

111:                                              ; preds = %100
  %112 = and i32 %81, 2098176
  %113 = icmp eq i32 %112, 1024
  br i1 %113, label %114, label %120, !prof !807

114:                                              ; preds = %111
  %115 = load ptr, ptr %79, align 8, !tbaa !232
  %116 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !234
  store i64 %117, ptr %4, align 8, !tbaa !197
  %118 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !196
  br label %122

120:                                              ; preds = %111
  %121 = call ptr @Perl_sv_2pv_flags(ptr noundef %79, ptr noundef nonnull %4, i32 noundef 32) #13
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi ptr [ %119, %114 ], [ %121, %120 ]
  %124 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %125 = getelementptr inbounds %struct.op, ptr %124, i64 0, i32 6
  %126 = load i8, ptr %125, align 1, !tbaa !203
  %127 = and i8 %126, 2
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %135, label %129, !prof !807

129:                                              ; preds = %122
  %130 = load ptr, ptr %1, align 8, !tbaa !179
  %131 = load i64, ptr %4, align 8, !tbaa !197
  %132 = icmp ugt i64 %131, 32
  %133 = select i1 %132, ptr @.str.24, ptr @.str.1
  %134 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36, ptr noundef %130, ptr noundef nonnull %133) #13
  br label %143

135:                                              ; preds = %122
  %136 = load i64, ptr %4, align 8, !tbaa !197
  %137 = load ptr, ptr %1, align 8, !tbaa !179
  %138 = getelementptr inbounds %struct.sv, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !216
  %140 = and i32 %139, 536870912
  %141 = or disjoint i32 %140, 1
  %142 = call ptr @Perl_get_cvn_flags(ptr noundef %123, i64 noundef %136, i32 noundef %141) #13
  br label %143

143:                                              ; preds = %135, %129, %109
  %144 = phi i1 [ false, %129 ], [ true, %135 ], [ false, %109 ]
  %145 = phi ptr [ null, %129 ], [ %142, %135 ], [ null, %109 ]
  %146 = phi ptr [ %134, %129 ], [ undef, %135 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %144, label %157, label %668, !prof !807

147:                                              ; preds = %84, %91, %98
  %148 = load ptr, ptr %1, align 8, !tbaa !179
  %149 = getelementptr inbounds %struct.sv, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !196
  %151 = getelementptr inbounds %struct.cv, ptr %150, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !808
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, 13
  br i1 %154, label %157, label %155, !prof !806

155:                                              ; preds = %147, %33, %33
  %156 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.34) #13
  br label %668

157:                                              ; preds = %49, %33, %143, %147, %30
  %158 = phi ptr [ %31, %30 ], [ %150, %147 ], [ %145, %143 ], [ %7, %33 ], [ %50, %49 ]
  call void @Perl_push_scope() #13
  br label %159

159:                                              ; preds = %231, %157
  %160 = phi ptr [ %158, %157 ], [ %232, %231 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !525
  %162 = getelementptr inbounds %struct.xpvcv, ptr %161, i64 0, i32 12
  %163 = load i32, ptr %162, align 4, !tbaa !527
  %164 = and i32 %163, 96
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %168, !prof !809, !irr_loop !810

166:                                              ; preds = %159
  %167 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37) #13
  br label %668

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.xpvcv, ptr %161, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !196
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %234, !prof !809

172:                                              ; preds = %168
  %173 = and i32 %163, 65536
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.xpvcv, ptr %161, i64 0, i32 7
  %177 = load ptr, ptr %176, align 8, !tbaa !196
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = call ptr @Perl_cv_name(ptr noundef nonnull %160, ptr noundef null, i32 noundef 0) #13
  %181 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %180) #13
  br label %668

182:                                              ; preds = %175, %172
  %183 = and i32 %163, 128
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.xpvcv, ptr %161, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !196
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %185, %182
  %190 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.39) #13
  br label %668

191:                                              ; preds = %185
  %192 = and i32 %163, 32768
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %160) #13
  br label %196

196:                                              ; preds = %191, %194
  %197 = phi ptr [ %195, %194 ], [ %187, %191 ]
  store ptr %197, ptr %2, align 8, !tbaa !179
  %198 = getelementptr inbounds %struct.gv, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !196
  %200 = getelementptr inbounds %struct.gp, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !255
  %202 = icmp eq ptr %160, %201
  br i1 %202, label %203, label %231

203:                                              ; preds = %196, %52
  %204 = load ptr, ptr %2, align 8, !tbaa !179
  %205 = load ptr, ptr %204, align 8, !tbaa !811
  %206 = getelementptr inbounds %struct.xpvgv, ptr %205, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !196
  %208 = getelementptr inbounds %struct.xpvgv, ptr %205, i64 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !196
  %210 = getelementptr inbounds %struct.hek, ptr %209, i64 0, i32 2
  %211 = getelementptr inbounds %struct.hek, ptr %209, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !812
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %210, i64 %213
  %215 = getelementptr inbounds i8, ptr %214, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !196
  %217 = and i8 %216, 1
  %218 = zext nneg i8 %217 to i32
  %219 = shl nuw nsw i32 %218, 29
  %220 = call ptr @Perl_gv_autoload_pvn(ptr noundef %207, ptr noundef nonnull %210, i64 noundef %213, i32 noundef %219) #13
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222, !irr_loop !814

222:                                              ; preds = %203
  %223 = getelementptr inbounds %struct.gv, ptr %220, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !196
  %225 = getelementptr inbounds %struct.gp, ptr %224, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !255
  br label %231

227:                                              ; preds = %203, %231
  %228 = call ptr @Perl_sv_newmortal() #13
  %229 = load ptr, ptr %2, align 8, !tbaa !179
  call void @Perl_gv_efullname4(ptr noundef %228, ptr noundef %229, ptr noundef null, i1 noundef zeroext true) #13
  %230 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38, ptr noundef %228) #13
  br label %668

231:                                              ; preds = %196, %222
  %232 = phi ptr [ %226, %222 ], [ %201, %196 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %227, label %159

234:                                              ; preds = %168
  %235 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %236 = getelementptr inbounds %struct.op, ptr %235, i64 0, i32 6
  %237 = load i8, ptr %236, align 1, !tbaa !203
  %238 = and i8 %237, 64
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %291, label %240, !prof !815

240:                                              ; preds = %234
  %241 = load ptr, ptr @PL_DBsub, align 8, !tbaa !179
  %242 = getelementptr inbounds %struct.gv, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !196
  %244 = getelementptr inbounds %struct.gp, ptr %243, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !255
  %246 = icmp ne ptr %245, null
  %247 = and i32 %163, 512
  %248 = icmp eq i32 %247, 0
  %249 = and i1 %248, %246
  br i1 %249, label %250, label %291

250:                                              ; preds = %240
  call void @Perl_get_db_sub(ptr noundef nonnull %1, ptr noundef nonnull %160) #13
  %251 = load ptr, ptr %160, align 8, !tbaa !525
  %252 = getelementptr inbounds %struct.xpvcv, ptr %251, i64 0, i32 12
  %253 = load i32, ptr %252, align 4, !tbaa !527
  %254 = and i32 %253, 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %250
  %257 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  store ptr %257, ptr @PL_curcopdb, align 8, !tbaa !179
  br label %258

258:                                              ; preds = %256, %250
  %259 = load ptr, ptr %160, align 8, !tbaa !525
  %260 = getelementptr inbounds %struct.xpvcv, ptr %259, i64 0, i32 12
  %261 = load i32, ptr %260, align 4, !tbaa !527
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %258
  %265 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 8, i32 noundef 2, i32 noundef 13) #13
  %266 = getelementptr inbounds %struct.gv, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !196
  %268 = getelementptr inbounds %struct.gp, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !255
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %258, %264
  %272 = load ptr, ptr @PL_DBsub, align 8, !tbaa !179
  %273 = getelementptr inbounds %struct.gv, ptr %272, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !196
  %275 = getelementptr inbounds %struct.gp, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !255
  br label %277

277:                                              ; preds = %271, %264
  %278 = phi ptr [ %269, %264 ], [ %276, %271 ]
  %279 = icmp eq ptr %278, null
  br i1 %279, label %289, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %278, align 8, !tbaa !525
  %282 = getelementptr inbounds %struct.xpvcv, ptr %281, i64 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !196
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.xpvcv, ptr %281, i64 0, i32 5
  %287 = load ptr, ptr %286, align 8, !tbaa !196
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %285, %277
  %290 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.41) #13
  br label %668

291:                                              ; preds = %280, %285, %234, %240
  %292 = phi ptr [ %278, %280 ], [ %278, %285 ], [ %160, %240 ], [ %160, %234 ]
  %293 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %294 = getelementptr inbounds %struct.op, ptr %293, i64 0, i32 5
  %295 = load i8, ptr %294, align 2, !tbaa !253
  %296 = and i8 %295, 3
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %300, label %298, !prof !816

298:                                              ; preds = %291
  %299 = zext nneg i8 %296 to i32
  br label %302

300:                                              ; preds = %291
  %301 = call i32 @Perl_block_gimme() #13
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i32 [ %299, %298 ], [ %301, %300 ]
  %304 = load ptr, ptr %292, align 8, !tbaa !525
  %305 = getelementptr inbounds %struct.xpvcv, ptr %304, i64 0, i32 12
  %306 = load i32, ptr %305, align 4, !tbaa !527
  %307 = and i32 %306, 8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %521, !prof !817

309:                                              ; preds = %302
  %310 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %311 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %312 = getelementptr inbounds i32, ptr %311, i64 -1
  store ptr %312, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %313 = load i32, ptr %311, align 4, !tbaa !199
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %310, i64 %314
  %316 = load ptr, ptr %292, align 8, !tbaa !525
  %317 = getelementptr inbounds %struct.xpvcv, ptr %316, i64 0, i32 9
  %318 = load ptr, ptr %317, align 8, !tbaa !196
  %319 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %320 = getelementptr inbounds %struct.stackinfo, ptr %319, i64 0, i32 4
  %321 = load i32, ptr %320, align 8, !tbaa !195
  %322 = getelementptr inbounds %struct.stackinfo, ptr %319, i64 0, i32 5
  %323 = load i32, ptr %322, align 4, !tbaa !735
  %324 = icmp slt i32 %321, %323
  br i1 %324, label %325, label %327, !prof !818

325:                                              ; preds = %309
  %326 = add nsw i32 %321, 1
  store i32 %326, ptr %320, align 8, !tbaa !195
  br label %331

327:                                              ; preds = %309
  %328 = call i32 @Perl_cxinc() #13
  %329 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %330 = getelementptr inbounds %struct.stackinfo, ptr %329, i64 0, i32 4
  store i32 %328, ptr %330, align 8, !tbaa !195
  br label %331

331:                                              ; preds = %327, %325
  %332 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !179
  %333 = getelementptr inbounds %struct.stackinfo, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !193
  %335 = getelementptr inbounds %struct.stackinfo, ptr %332, i64 0, i32 4
  %336 = load i32, ptr %335, align 8, !tbaa !195
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.context, ptr %334, i64 %337
  store i8 8, ptr %338, align 8, !tbaa !196
  %339 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %340 = ptrtoint ptr %315 to i64
  %341 = ptrtoint ptr %339 to i64
  %342 = sub i64 %340, %341
  %343 = lshr exact i64 %342, 3
  %344 = trunc i64 %343 to i32
  %345 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 3
  store i32 %344, ptr %345, align 4, !tbaa !196
  %346 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %347 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 4
  store ptr %346, ptr %347, align 8, !tbaa !196
  %348 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %349 = load ptr, ptr @PL_markstack, align 8, !tbaa !179
  %350 = ptrtoint ptr %348 to i64
  %351 = ptrtoint ptr %349 to i64
  %352 = sub i64 %350, %351
  %353 = lshr exact i64 %352, 2
  %354 = trunc i64 %353 to i32
  %355 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 5
  store i32 %354, ptr %355, align 8, !tbaa !196
  %356 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !199
  %357 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 6
  store i32 %356, ptr %357, align 4, !tbaa !196
  %358 = load ptr, ptr @PL_curpm, align 8, !tbaa !179
  %359 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 7
  store ptr %358, ptr %359, align 8, !tbaa !196
  %360 = trunc i32 %303 to i8
  %361 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 1
  store i8 %360, ptr %361, align 1, !tbaa !196
  %362 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %363 = getelementptr inbounds %struct.op, ptr %362, i64 0, i32 5
  %364 = load i8, ptr %363, align 2, !tbaa !253
  %365 = and i8 %364, 3
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %376, !prof !819

367:                                              ; preds = %331
  %368 = getelementptr inbounds %struct.op, ptr %362, i64 0, i32 6
  %369 = load i8, ptr %368, align 1, !tbaa !203
  %370 = and i8 %369, -127
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %376, label %372, !prof !820

372:                                              ; preds = %367
  %373 = call i32 @Perl_was_lvalue_sub() #13
  %374 = and i32 %373, 207
  %375 = or disjoint i32 %374, 48
  br label %376

376:                                              ; preds = %372, %367, %331
  %377 = phi i32 [ 177, %331 ], [ %375, %372 ], [ 48, %367 ]
  %378 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8
  %379 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8, i32 0, i32 1
  store ptr %292, ptr %379, align 8, !tbaa !196
  %380 = load ptr, ptr %292, align 8, !tbaa !525
  %381 = getelementptr inbounds %struct.xpvcv, ptr %380, i64 0, i32 13
  %382 = load i32, ptr %381, align 4, !tbaa !199
  %383 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8, i32 0, i32 4
  store i32 %382, ptr %383, align 8, !tbaa !196
  %384 = lshr exact i8 %11, 1
  %385 = load i8, ptr %338, align 8, !tbaa !196
  %386 = or i8 %385, %384
  store i8 %386, ptr %338, align 8, !tbaa !196
  store ptr null, ptr %378, align 8, !tbaa !196
  %387 = load ptr, ptr %292, align 8, !tbaa !525
  %388 = getelementptr inbounds %struct.xpvcv, ptr %387, i64 0, i32 13
  %389 = load i32, ptr %388, align 4, !tbaa !199
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %395, !prof !821

391:                                              ; preds = %376
  %392 = getelementptr inbounds %struct.sv, ptr %292, i64 0, i32 1
  %393 = load i32, ptr %392, align 8, !tbaa !254
  %394 = add i32 %393, 2
  store i32 %394, ptr %392, align 8, !tbaa !254
  call void @Perl_save_pushptr(ptr noundef nonnull %292, i32 noundef 11) #13
  br label %395

395:                                              ; preds = %391, %376
  %396 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %397 = getelementptr inbounds %struct.op, ptr %396, i64 0, i32 6
  %398 = load i8, ptr %397, align 1, !tbaa !203
  %399 = zext i8 %398 to i32
  %400 = and i32 %377, %399
  %401 = trunc i32 %400 to i16
  %402 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 2
  store i16 %401, ptr %402, align 2, !tbaa !196
  %403 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %404 = load ptr, ptr %403, align 8, !tbaa !188
  store ptr %404, ptr %378, align 8, !tbaa !196
  %405 = load ptr, ptr %292, align 8, !tbaa !525
  %406 = getelementptr inbounds %struct.xpvcv, ptr %405, i64 0, i32 13
  %407 = load i32, ptr %406, align 4, !tbaa !199
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %406, align 4, !tbaa !199
  %409 = icmp sgt i32 %407, 0
  br i1 %409, label %410, label %411, !prof !822

410:                                              ; preds = %395
  call void @Perl_pad_push(ptr noundef %318, i32 noundef %408) #13
  br label %411

411:                                              ; preds = %395, %410
  %412 = load ptr, ptr @PL_comppad, align 8, !tbaa !179
  call void @Perl_save_pushptr(ptr noundef %412, i32 noundef 7) #13
  %413 = getelementptr inbounds %struct.padlist, ptr %318, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !823
  %415 = sext i32 %408 to i64
  %416 = getelementptr inbounds ptr, ptr %414, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !179
  store ptr %417, ptr @PL_comppad, align 8, !tbaa !179
  %418 = getelementptr inbounds %struct.av, ptr %417, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !196
  store ptr %419, ptr @PL_curpad, align 8, !tbaa !179
  br i1 %12, label %488, label %420, !prof !825

420:                                              ; preds = %411
  %421 = load ptr, ptr %419, align 8, !tbaa !179
  %422 = getelementptr inbounds %struct.av, ptr %421, i64 0, i32 2
  %423 = load i32, ptr %422, align 4, !tbaa !316
  %424 = and i32 %423, 1073741824
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %430, label %426, !prof !826

426:                                              ; preds = %420
  call void @Perl_av_clear(ptr noundef %421) #13
  %427 = load i32, ptr %422, align 4, !tbaa !316
  %428 = and i32 %427, 1073741823
  %429 = or disjoint i32 %428, -2147483648
  store i32 %429, ptr %422, align 4, !tbaa !316
  br label %430

430:                                              ; preds = %420, %426
  %431 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %432 = getelementptr inbounds %struct.gv, ptr %431, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !196
  %434 = getelementptr inbounds %struct.gp, ptr %433, i64 0, i32 6
  %435 = load ptr, ptr %434, align 8, !tbaa !179
  %436 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8, i32 0, i32 2
  store ptr %435, ptr %436, align 8, !tbaa !196
  %437 = getelementptr inbounds %struct.av, ptr %421, i64 0, i32 1
  %438 = load i32, ptr %437, align 8, !tbaa !827
  %439 = add i32 %438, 1
  store i32 %439, ptr %437, align 8, !tbaa !827
  store ptr %421, ptr %434, align 8, !tbaa !179
  %440 = load ptr, ptr @PL_comppad, align 8, !tbaa !179
  %441 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8, i32 0, i32 5
  store ptr %440, ptr %441, align 8, !tbaa !196
  %442 = getelementptr inbounds %struct.block, ptr %338, i64 0, i32 8, i32 0, i32 3
  store ptr %421, ptr %442, align 8, !tbaa !196
  %443 = ptrtoint ptr %6 to i64
  %444 = sub i64 %443, %340
  %445 = ashr exact i64 %444, 3
  %446 = add nsw i64 %445, -1
  %447 = load ptr, ptr %421, align 8, !tbaa !311
  %448 = getelementptr inbounds %struct.xpvav, ptr %447, i64 0, i32 3
  %449 = load i64, ptr %448, align 8, !tbaa !387
  %450 = icmp sgt i64 %446, %449
  br i1 %450, label %451, label %458, !prof !828

451:                                              ; preds = %430
  %452 = getelementptr inbounds %struct.xpvav, ptr %447, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !791
  store i64 %446, ptr %448, align 8, !tbaa !387
  %454 = call ptr @Perl_safesysrealloc(ptr noundef %453, i64 noundef %444) #13
  %455 = load ptr, ptr %421, align 8, !tbaa !311
  %456 = getelementptr inbounds %struct.xpvav, ptr %455, i64 0, i32 4
  store ptr %454, ptr %456, align 8, !tbaa !791
  %457 = getelementptr inbounds %struct.av, ptr %421, i64 0, i32 3
  store ptr %454, ptr %457, align 8, !tbaa !196
  br label %458

458:                                              ; preds = %430, %451
  %459 = getelementptr inbounds %struct.av, ptr %421, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !196
  %461 = getelementptr inbounds ptr, ptr %315, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %460, ptr nonnull align 1 %461, i64 %444, i1 false), !prof !829
  %462 = load ptr, ptr %421, align 8, !tbaa !311
  %463 = getelementptr inbounds %struct.xpvav, ptr %462, i64 0, i32 2
  store i64 %446, ptr %463, align 8, !tbaa !313
  %464 = icmp eq ptr %6, %315
  br i1 %464, label %488, label %465, !prof !830

465:                                              ; preds = %458
  %466 = load ptr, ptr %459, align 8, !tbaa !196
  br label %467

467:                                              ; preds = %465, %485
  %468 = phi i64 [ %470, %485 ], [ %445, %465 ]
  %469 = phi ptr [ %486, %485 ], [ %466, %465 ]
  %470 = add nsw i64 %468, -1
  %471 = load ptr, ptr %469, align 8, !tbaa !179
  %472 = icmp eq ptr %471, null
  br i1 %472, label %485, label %473, !prof !831

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.sv, ptr %471, i64 0, i32 2
  %475 = load i32, ptr %474, align 4, !tbaa !216
  %476 = and i32 %475, 131072
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478, !prof !832

478:                                              ; preds = %473
  %479 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %471, i32 noundef 1538) #13
  store ptr %479, ptr %469, align 8, !tbaa !179
  br label %480

480:                                              ; preds = %478, %473
  %481 = load ptr, ptr %469, align 8, !tbaa !179
  %482 = getelementptr inbounds %struct.sv, ptr %481, i64 0, i32 2
  %483 = load i32, ptr %482, align 4, !tbaa !216
  %484 = and i32 %483, -524289
  store i32 %484, ptr %482, align 4, !tbaa !216
  br label %485

485:                                              ; preds = %480, %467
  %486 = getelementptr inbounds ptr, ptr %469, i64 1
  %487 = icmp eq i64 %470, 0
  br i1 %487, label %488, label %467, !prof !833, !llvm.loop !834

488:                                              ; preds = %485, %458, %411
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #13
  %489 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  store i64 %489, ptr @PL_tmps_floor, align 8, !tbaa !197
  %490 = load i16, ptr %402, align 2, !tbaa !196
  %491 = and i16 %490, 129
  %492 = icmp eq i16 %491, 128
  br i1 %492, label %493, label %501, !prof !835

493:                                              ; preds = %488
  %494 = load ptr, ptr %292, align 8, !tbaa !525
  %495 = getelementptr inbounds %struct.xpvcv, ptr %494, i64 0, i32 12
  %496 = load i32, ptr %495, align 4, !tbaa !527
  %497 = and i32 %496, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #13
  br label %668

501:                                              ; preds = %488, %493
  %502 = icmp eq i32 %408, 100
  br i1 %502, label %503, label %517, !prof !835

503:                                              ; preds = %501
  %504 = call zeroext i1 @Perl_ckwarn(i32 noundef 18) #13
  br i1 %504, label %505, label %517

505:                                              ; preds = %503
  %506 = load i32, ptr @PL_perldb, align 4, !tbaa !199
  %507 = and i32 %506, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %516, label %509

509:                                              ; preds = %505
  %510 = load ptr, ptr @PL_DBsub, align 8, !tbaa !179
  %511 = getelementptr inbounds %struct.gv, ptr %510, i64 0, i32 3
  %512 = load ptr, ptr %511, align 8, !tbaa !196
  %513 = getelementptr inbounds %struct.gp, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !255
  %515 = icmp eq ptr %292, %514
  br i1 %515, label %517, label %516

516:                                              ; preds = %505, %509
  call void @Perl_sub_crush_depth(ptr noundef nonnull %292)
  br label %517

517:                                              ; preds = %501, %503, %509, %516
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !179
  %518 = load ptr, ptr %292, align 8, !tbaa !525
  %519 = getelementptr inbounds %struct.xpvcv, ptr %518, i64 0, i32 5
  %520 = load ptr, ptr %519, align 8, !tbaa !196
  br label %668

521:                                              ; preds = %302
  %522 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %523 = load i32, ptr %522, align 4, !tbaa !199
  %524 = sext i32 %523 to i64
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #13
  %525 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !197
  store i64 %525, ptr @PL_tmps_floor, align 8, !tbaa !197
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !179
  %526 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %527 = getelementptr inbounds %struct.op, ptr %526, i64 0, i32 6
  %528 = load i8, ptr %527, align 1, !tbaa !203
  %529 = zext i8 %528 to i32
  %530 = getelementptr inbounds %struct.op, ptr %526, i64 0, i32 5
  %531 = load i8, ptr %530, align 2, !tbaa !253
  %532 = and i8 %531, 3
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %534, label %540, !prof !836

534:                                              ; preds = %521
  %535 = and i32 %529, 129
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %540, label %537

537:                                              ; preds = %534
  %538 = call i32 @Perl_is_lvalue_sub() #13
  %539 = and i32 %538, 255
  br label %540

540:                                              ; preds = %537, %534, %521
  %541 = phi i32 [ 129, %521 ], [ %539, %537 ], [ 0, %534 ]
  %542 = and i32 %529, 129
  %543 = and i32 %542, %541
  %544 = icmp eq i32 %543, 128
  br i1 %544, label %545, label %553, !prof !836

545:                                              ; preds = %540
  %546 = load ptr, ptr %292, align 8, !tbaa !525
  %547 = getelementptr inbounds %struct.xpvcv, ptr %546, i64 0, i32 12
  %548 = load i32, ptr %547, align 4, !tbaa !527
  %549 = and i32 %548, 2
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %545
  %552 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42) #13
  br label %668

553:                                              ; preds = %540, %545
  br i1 %12, label %554, label %618, !prof !837

554:                                              ; preds = %553
  %555 = load ptr, ptr @PL_defgv, align 8, !tbaa !179
  %556 = getelementptr inbounds %struct.gv, ptr %555, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !196
  %558 = getelementptr inbounds %struct.gp, ptr %557, i64 0, i32 6
  %559 = load ptr, ptr %558, align 8, !tbaa !295
  %560 = icmp eq ptr %559, null
  br i1 %560, label %618, label %561, !prof !838

561:                                              ; preds = %554
  %562 = getelementptr inbounds %struct.sv, ptr %559, i64 0, i32 2
  %563 = load i32, ptr %562, align 4, !tbaa !216
  %564 = and i32 %563, 8388608
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %569, label %566, !prof !839

566:                                              ; preds = %561
  %567 = call i32 @Perl_mg_size(ptr noundef nonnull %559) #13
  %568 = sext i32 %567 to i64
  br label %573

569:                                              ; preds = %561
  %570 = load ptr, ptr %559, align 8, !tbaa !311
  %571 = getelementptr inbounds %struct.xpvav, ptr %570, i64 0, i32 2
  %572 = load i64, ptr %571, align 8, !tbaa !313
  br label %573

573:                                              ; preds = %569, %566
  %574 = phi i64 [ %568, %566 ], [ %572, %569 ]
  %575 = add nsw i64 %574, 1
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %643, label %577, !prof !839

577:                                              ; preds = %573
  %578 = load i32, ptr %562, align 4, !tbaa !316
  %579 = and i32 %578, 8388608
  %580 = icmp eq i32 %579, 0
  %581 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %582 = ptrtoint ptr %581 to i64
  %583 = ptrtoint ptr %6 to i64
  %584 = sub i64 %582, %583
  %585 = ashr exact i64 %584, 3
  %586 = icmp sgt i64 %585, %574
  br i1 %586, label %589, label %587

587:                                              ; preds = %577
  %588 = call ptr @Perl_stack_grow(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef %575) #13
  br label %589

589:                                              ; preds = %577, %587
  %590 = phi ptr [ %588, %587 ], [ %6, %577 ]
  %591 = icmp slt i64 %574, 0
  br i1 %591, label %616, label %592

592:                                              ; preds = %589
  %593 = getelementptr inbounds %struct.av, ptr %559, i64 0, i32 3
  br label %594

594:                                              ; preds = %592, %610
  %595 = phi i64 [ 0, %592 ], [ %614, %610 ]
  br i1 %580, label %599, label %596

596:                                              ; preds = %594
  %597 = call ptr @Perl_av_fetch(ptr noundef nonnull %559, i64 noundef %595, i32 noundef 0) #13
  %598 = icmp eq ptr %597, null
  br i1 %598, label %605, label %602

599:                                              ; preds = %594
  %600 = load ptr, ptr %593, align 8, !tbaa !196
  %601 = getelementptr inbounds ptr, ptr %600, i64 %595
  br label %602

602:                                              ; preds = %596, %599
  %603 = phi ptr [ %601, %599 ], [ %597, %596 ]
  %604 = load ptr, ptr %603, align 8, !tbaa !179
  br label %605

605:                                              ; preds = %602, %596
  %606 = phi ptr [ null, %596 ], [ %604, %602 ]
  %607 = icmp eq ptr %606, null
  br i1 %607, label %608, label %610

608:                                              ; preds = %605
  %609 = call ptr @Perl_newSVavdefelem(ptr noundef nonnull %559, i64 noundef %595, i1 noundef zeroext true) #13
  br label %610

610:                                              ; preds = %605, %608
  %611 = phi ptr [ %609, %608 ], [ %606, %605 ]
  %612 = add nuw nsw i64 %595, 1
  %613 = getelementptr inbounds ptr, ptr %590, i64 %612
  store ptr %611, ptr %613, align 8, !tbaa !179
  %614 = add nuw i64 %595, 1
  %615 = icmp eq i64 %595, %574
  br i1 %615, label %616, label %594, !llvm.loop !840

616:                                              ; preds = %610, %589
  %617 = getelementptr inbounds ptr, ptr %590, i64 %575
  store ptr %617, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %643

618:                                              ; preds = %553, %554
  %619 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %620 = getelementptr inbounds ptr, ptr %619, i64 %524
  %621 = icmp eq ptr %6, %620
  br i1 %621, label %643, label %622, !prof !841

622:                                              ; preds = %618
  %623 = ptrtoint ptr %6 to i64
  %624 = ptrtoint ptr %620 to i64
  %625 = sub i64 %623, %624
  %626 = ashr exact i64 %625, 3
  br label %627

627:                                              ; preds = %622, %641
  %628 = phi i64 [ %630, %641 ], [ %626, %622 ]
  %629 = phi ptr [ %631, %641 ], [ %620, %622 ]
  %630 = add nsw i64 %628, -1
  %631 = getelementptr inbounds ptr, ptr %629, i64 1
  %632 = load ptr, ptr %631, align 8, !tbaa !179
  %633 = icmp eq ptr %632, null
  br i1 %633, label %641, label %634, !prof !842

634:                                              ; preds = %627
  %635 = getelementptr inbounds %struct.sv, ptr %632, i64 0, i32 2
  %636 = load i32, ptr %635, align 4, !tbaa !216
  %637 = and i32 %636, 131072
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %641, label %639, !prof !843

639:                                              ; preds = %634
  %640 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %632, i32 noundef 1538) #13
  store ptr %640, ptr %631, align 8, !tbaa !179
  br label %641

641:                                              ; preds = %639, %634, %627
  %642 = icmp eq i64 %630, 0
  br i1 %642, label %643, label %627, !prof !844, !llvm.loop !845

643:                                              ; preds = %641, %618, %573, %616
  %644 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !179
  %645 = icmp eq ptr %644, null
  br i1 %645, label %648, label %646, !prof !846

646:                                              ; preds = %643
  call void @Perl_save_vptr(ptr noundef nonnull @PL_curcop) #13
  %647 = load ptr, ptr @PL_curcopdb, align 8, !tbaa !179
  store ptr %647, ptr @PL_curcop, align 8, !tbaa !179
  store ptr null, ptr @PL_curcopdb, align 8, !tbaa !179
  br label %648

648:                                              ; preds = %643, %646
  %649 = load ptr, ptr %292, align 8, !tbaa !525
  %650 = getelementptr inbounds %struct.xpvcv, ptr %649, i64 0, i32 6
  %651 = load ptr, ptr %650, align 8, !tbaa !196
  call void %651(ptr noundef nonnull %292) #13, !prof !847
  %652 = icmp eq i32 %303, 2
  br i1 %652, label %653, label %665, !prof !848

653:                                              ; preds = %648
  %654 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %655 = getelementptr inbounds ptr, ptr %654, i64 %524
  %656 = getelementptr inbounds ptr, ptr %655, i64 1
  %657 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %658 = icmp eq ptr %656, %657
  br i1 %658, label %665, label %659, !prof !849

659:                                              ; preds = %653
  %660 = icmp ugt ptr %656, %657
  br i1 %660, label %663, label %661

661:                                              ; preds = %659
  %662 = load ptr, ptr %657, align 8, !tbaa !179
  br label %663

663:                                              ; preds = %659, %661
  %664 = phi ptr [ %662, %661 ], [ @PL_sv_undef, %659 ]
  store ptr %664, ptr %656, align 8, !tbaa !179
  store ptr %656, ptr @PL_stack_sp, align 8, !tbaa !179
  br label %665

665:                                              ; preds = %653, %663, %648
  call void @Perl_pop_scope() #13
  %666 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %667 = load ptr, ptr %666, align 8, !tbaa !188
  br label %668

668:                                              ; preds = %551, %665, %499, %517, %143, %289, %227, %189, %179, %166, %155, %70, %14
  %669 = phi ptr [ %290, %289 ], [ %181, %179 ], [ %190, %189 ], [ %230, %227 ], [ %167, %166 ], [ %72, %70 ], [ %156, %155 ], [ %146, %143 ], [ %15, %14 ], [ %520, %517 ], [ %500, %499 ], [ %667, %665 ], [ %552, %551 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %669
}

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_get_db_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_was_lvalue_sub() local_unnamed_addr #2

declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sub_crush_depth(ptr noundef %0) local_unnamed_addr #5 !prof !850 {
  %2 = load ptr, ptr %0, align 8, !tbaa !525
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !527
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.43) #13
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @Perl_cv_name(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #13
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 18, ptr noundef nonnull @.str.44, ptr noundef %9) #13
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_aelem() local_unnamed_addr #4 !prof !851 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !216
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12, !prof !852

8:                                                ; preds = %0
  %9 = load ptr, ptr %3, align 8, !tbaa !232
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !196
  br label %14

12:                                               ; preds = %0
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %3, i32 noundef 2) #13
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !179
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !253
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30, !prof !853

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !203
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27, !prof !854

27:                                               ; preds = %22
  %28 = tail call i32 @Perl_is_lvalue_sub() #13
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %22, %27, %14
  %31 = phi i1 [ true, %14 ], [ false, %22 ], [ %29, %27 ]
  %32 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %33 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 6
  %34 = load i8, ptr %33, align 1, !tbaa !203
  %35 = and i8 %34, 64
  %36 = icmp sgt i8 %34, -1
  %37 = load i32, ptr %4, align 4, !tbaa !216
  %38 = and i32 %37, 2099200
  %39 = icmp eq i32 %38, 2048
  br i1 %39, label %40, label %57, !prof !855

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !216
  %45 = and i32 %44, 1048576
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !232
  %49 = load ptr, ptr %48, align 8, !tbaa !337
  %50 = getelementptr inbounds %struct.hv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !339
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47, %40
  %55 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #13
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef %3) #13
  br label %57

57:                                               ; preds = %47, %30, %54, %56
  %58 = getelementptr inbounds %struct.av, ptr %16, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !316
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, 11
  br i1 %61, label %65, label %62, !prof !856

62:                                               ; preds = %57
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %64 = load ptr, ptr %63, align 8, !tbaa !188
  br label %165

65:                                               ; preds = %57
  br i1 %36, label %94, label %66, !prof !856

66:                                               ; preds = %65
  %67 = and i32 %59, 8388608
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @Perl_mg_find(ptr noundef %16, i32 noundef 80) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %92, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.magic, ptr %70, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !588
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = tail call ptr @Perl_newRV(ptr noundef %16) #13
  %78 = tail call ptr @Perl_sv_2mortal(ptr noundef %77) #13
  br label %79

79:                                               ; preds = %72, %76
  %80 = phi ptr [ %78, %76 ], [ %74, %72 ]
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !196
  %83 = load ptr, ptr %82, align 8, !tbaa !232
  %84 = load ptr, ptr %83, align 8, !tbaa !337
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %84, ptr noundef nonnull @.str.22, i32 noundef 1) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %84, ptr noundef nonnull @.str.23, i32 noundef 1) #13
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89, %69, %66
  %93 = tail call zeroext i1 @Perl_av_exists(ptr noundef %16, i64 noundef %15) #13
  br label %94

94:                                               ; preds = %79, %86, %89, %92, %65
  %95 = phi i1 [ true, %65 ], [ %93, %92 ], [ true, %89 ], [ true, %86 ], [ true, %79 ]
  %96 = icmp eq i8 %35, 0
  %97 = select i1 %31, i1 %96, i1 false, !prof !857
  %98 = zext i1 %97 to i32
  %99 = tail call ptr @Perl_av_fetch(ptr noundef %16, i64 noundef %15, i32 noundef %98) #13
  br i1 %31, label %100, label %145, !prof !857

100:                                              ; preds = %94
  %101 = icmp eq ptr %99, null
  br i1 %101, label %105, label %102, !prof !858

102:                                              ; preds = %100
  %103 = load ptr, ptr %99, align 8, !tbaa !179
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %130, !prof !858

105:                                              ; preds = %102, %100
  br i1 %96, label %106, label %108

106:                                              ; preds = %105
  %107 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_aelem, i64 noundef %15) #13
  br label %165

108:                                              ; preds = %105
  %109 = load i32, ptr %58, align 4, !tbaa !216
  %110 = and i32 %109, 8388608
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = tail call i32 @Perl_mg_size(ptr noundef %16) #13
  %114 = sext i32 %113 to i64
  br label %119

115:                                              ; preds = %108
  %116 = load ptr, ptr %16, align 8, !tbaa !311
  %117 = getelementptr inbounds %struct.xpvav, ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !313
  br label %119

119:                                              ; preds = %112, %115
  %120 = phi i64 [ %114, %112 ], [ %118, %115 ]
  %121 = icmp slt i64 %15, 0
  %122 = add nsw i64 %120, %15
  %123 = icmp sgt i64 %122, -1
  %124 = select i1 %121, i1 %123, i1 false
  %125 = select i1 %124, i64 %122, i64 %15
  %126 = tail call ptr @Perl_newSVavdefelem(ptr noundef %16, i64 noundef %125, i1 noundef zeroext true) #13
  %127 = tail call ptr @Perl_sv_2mortal(ptr noundef %126) #13
  store ptr %127, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %128 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %129 = load ptr, ptr %128, align 8, !tbaa !188
  br label %165

130:                                              ; preds = %102
  br i1 %36, label %134, label %131, !prof !859

131:                                              ; preds = %130
  br i1 %95, label %132, label %133

132:                                              ; preds = %131
  tail call void @Perl_save_aelem_flags(ptr noundef %16, i64 noundef %15, ptr noundef nonnull %99, i32 noundef 1) #13
  br label %145

133:                                              ; preds = %131
  tail call void @Perl_save_adelete(ptr noundef %16, i64 noundef %15) #13
  br label %145

134:                                              ; preds = %130
  %135 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %136 = getelementptr inbounds %struct.op, ptr %135, i64 0, i32 6
  %137 = load i8, ptr %136, align 1, !tbaa !203
  %138 = and i8 %137, 48
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %145, label %140, !prof !859

140:                                              ; preds = %134
  %141 = zext nneg i8 %138 to i32
  %142 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %103, i32 noundef %141)
  store ptr %142, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %143 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %144 = load ptr, ptr %143, align 8, !tbaa !188
  br label %165

145:                                              ; preds = %133, %132, %134, %94
  %146 = icmp eq ptr %99, null
  br i1 %146, label %149, label %147, !prof !860

147:                                              ; preds = %145
  %148 = load ptr, ptr %99, align 8, !tbaa !179
  br label %149

149:                                              ; preds = %145, %147
  %150 = phi ptr [ %148, %147 ], [ @PL_sv_undef, %145 ]
  br i1 %31, label %162, label %151, !prof !857

151:                                              ; preds = %149
  %152 = load i32, ptr %58, align 4, !tbaa !316
  %153 = and i32 %152, 8388608
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155, !prof !854

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sv, ptr %150, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !216
  %158 = and i32 %157, 2097152
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @Perl_mg_get(ptr noundef %150) #13
  br label %162

162:                                              ; preds = %160, %155, %151, %149
  store ptr %150, ptr %2, align 8, !tbaa !179
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !179
  %163 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %164 = load ptr, ptr %163, align 8, !tbaa !188
  br label %165

165:                                              ; preds = %106, %119, %162, %140, %62
  %166 = phi ptr [ %64, %62 ], [ %164, %162 ], [ %144, %140 ], [ %129, %119 ], [ %107, %106 ]
  ret ptr %166
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_method() local_unnamed_addr #5 !prof !850 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr %1, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !216
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !216
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  store ptr %9, ptr %1, align 8, !tbaa !179
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !179
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %16, %14 ], [ undef, %7 ]
  br i1 %13, label %35, label %19

19:                                               ; preds = %17, %0
  %20 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %2)
  %21 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %20, ptr noundef %2, i32 noundef 768) #13
  %22 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !221
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !196
  %29 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !255
  br label %31

31:                                               ; preds = %19, %26
  %32 = phi ptr [ %30, %26 ], [ %21, %19 ]
  store ptr %32, ptr %1, align 8, !tbaa !179
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !179
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %34 = load ptr, ptr %33, align 8, !tbaa !188
  br label %35

35:                                               ; preds = %17, %31
  %36 = phi ptr [ %34, %31 ], [ %18, %17 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_opmethod_stash(ptr noundef %0) unnamed_addr #4 !prof !861 !PGOFuncName !862 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %5 = load i32, ptr %4, align 4, !tbaa !199
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %11, !prof !863

10:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #13
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds ptr, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ null, %10 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !863

17:                                               ; preds = %43, %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48, ptr noundef %0) #13
  br label %18, !irr_loop !814

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !216
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !864, !irr_loop !865

23:                                               ; preds = %18
  %24 = tail call i32 @Perl_mg_get(ptr noundef %15) #13
  br label %36

25:                                               ; preds = %18
  %26 = and i32 %20, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28, !prof !866

28:                                               ; preds = %25
  %29 = load ptr, ptr %15, align 8, !tbaa !232
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !196
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36, !prof !867

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %15, i32 noundef 4096) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %209, !prof !868

36:                                               ; preds = %25, %28, %33, %23
  %37 = load i32, ptr %19, align 4, !tbaa !216
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !869

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !196
  br label %153

43:                                               ; preds = %36
  %44 = and i32 %37, 63232
  %45 = icmp ne i32 %44, 0
  %46 = and i32 %37, 255
  %47 = icmp eq i32 %46, 8
  %48 = or i1 %45, %47
  %49 = and i32 %37, 16777471
  %50 = icmp eq i32 %49, 16777226
  %51 = or i1 %50, %48
  br i1 %51, label %52, label %17, !prof !768

52:                                               ; preds = %43
  %53 = and i32 %37, 49152
  %54 = icmp eq i32 %53, 32768
  %55 = add nsw i32 %46, -9
  %56 = icmp ult i32 %55, 2
  %57 = and i1 %54, %56
  br i1 %57, label %58, label %90, !prof !331

58:                                               ; preds = %52
  br i1 %16, label %67, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !196
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gp, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !342
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58, %59, %63
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #13
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, ptr %19, align 4, !tbaa !216
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load ptr, ptr %15, align 8, !tbaa !232
  %74 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 9
  %75 = load i8, ptr %74, align 8, !tbaa !592
  %76 = icmp eq i8 %75, 121
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.xpvlv, ptr %73, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !594
  br label %80

80:                                               ; preds = %77, %72, %68
  %81 = phi ptr [ %79, %77 ], [ %15, %72 ], [ %15, %68 ]
  %82 = tail call ptr @Perl_newRV(ptr noundef %81) #13
  %83 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #13
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %85 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %86 = load i32, ptr %85, align 4, !tbaa !199
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %83, ptr %89, align 8, !tbaa !179
  br label %153

90:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %91 = and i32 %37, 2098176
  %92 = icmp eq i32 %91, 1024
  br i1 %92, label %93, label %99, !prof !768

93:                                               ; preds = %90
  %94 = load ptr, ptr %15, align 8, !tbaa !232
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !234
  store i64 %96, ptr %2, align 8, !tbaa !197
  %97 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !196
  br label %101

99:                                               ; preds = %90
  %100 = call ptr @Perl_sv_2pv_flags(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 32) #13
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi ptr [ %98, %93 ], [ %100, %99 ]
  %103 = load i32, ptr %19, align 4, !tbaa !216
  %104 = and i32 %103, 536870912
  %105 = load i64, ptr %2, align 8, !tbaa !197
  %106 = trunc i64 %105 to i32
  %107 = or disjoint i32 %104, 4096
  %108 = call ptr @Perl_gv_stashpvn(ptr noundef %102, i32 noundef %106, i32 noundef %107) #13
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %149, !prof !768

110:                                              ; preds = %101
  %111 = load i64, ptr %2, align 8, !tbaa !197
  %112 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %102, i64 noundef %111, i32 noundef %104, i32 noundef 15) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114, !prof !768

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !216
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -9
  %119 = icmp ult i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.gv, ptr %112, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !196
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.gp, ptr %122, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !342
  br label %127

127:                                              ; preds = %114, %120, %124
  %128 = phi ptr [ %126, %124 ], [ null, %120 ], [ null, %114 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %127, %110
  %131 = load i64, ptr %2, align 8, !tbaa !197
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !331

133:                                              ; preds = %130
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47, ptr noundef %0) #13
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i64, ptr %2, align 8, !tbaa !197
  %136 = trunc i64 %135 to i32
  %137 = call ptr @Perl_gv_stashpvn(ptr noundef %102, i32 noundef %136, i32 noundef %104) #13
  %138 = icmp eq ptr %137, null
  %139 = select i1 %138, ptr %15, ptr %137, !prof !331
  br label %149

140:                                              ; preds = %127
  %141 = call ptr @Perl_newRV(ptr noundef nonnull %112) #13
  %142 = call ptr @Perl_sv_2mortal(ptr noundef %141) #13
  %143 = load ptr, ptr @PL_stack_base, align 8, !tbaa !179
  %144 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !179
  %145 = load i32, ptr %144, align 4, !tbaa !199
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %143, i64 %146
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  store ptr %142, ptr %148, align 8, !tbaa !179
  br label %149

149:                                              ; preds = %134, %101, %140
  %150 = phi i1 [ true, %140 ], [ false, %101 ], [ false, %134 ]
  %151 = phi ptr [ %128, %140 ], [ undef, %101 ], [ null, %134 ]
  %152 = phi ptr [ undef, %140 ], [ %108, %101 ], [ %139, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br i1 %150, label %153, label %209, !prof !331

153:                                              ; preds = %149, %80, %40
  %154 = phi ptr [ %42, %40 ], [ %81, %80 ], [ %151, %149 ]
  %155 = icmp eq ptr %154, null
  br i1 %155, label %183, label %156, !prof !870

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !216
  %159 = and i32 %158, 1048576
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %205, !prof !870

161:                                              ; preds = %156
  %162 = and i32 %158, 49152
  %163 = icmp eq i32 %162, 32768
  br i1 %163, label %164, label %183

164:                                              ; preds = %161
  %165 = and i32 %158, 255
  %166 = add nsw i32 %165, -9
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.gv, ptr %154, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !196
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.gp, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !342
  br label %175

175:                                              ; preds = %168, %172
  %176 = phi ptr [ %174, %172 ], [ null, %168 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !216
  %181 = and i32 %180, 1048576
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %205

183:                                              ; preds = %164, %178, %175, %161, %153
  %184 = phi ptr [ %176, %178 ], [ null, %175 ], [ %154, %161 ], [ null, %153 ], [ %154, %164 ]
  %185 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %186 = load i32, ptr %185, align 4, !tbaa !216
  %187 = and i32 %186, 49152
  %188 = icmp eq i32 %187, 49152
  br i1 %188, label %189, label %203

189:                                              ; preds = %183
  %190 = and i32 %186, 2098176
  %191 = icmp eq i32 %190, 1024
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !196
  br label %197

195:                                              ; preds = %189
  %196 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 34) #13
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi ptr [ %194, %192 ], [ %196, %195 ]
  %199 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %198, ptr noundef nonnull dereferenceable(4) @.str.50) #15
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 524288) #13
  br label %203

203:                                              ; preds = %183, %197, %201
  %204 = phi ptr [ %202, %201 ], [ %0, %197 ], [ %0, %183 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, ptr noundef %204) #13
  br label %205

205:                                              ; preds = %203, %178, %156
  %206 = phi ptr [ %154, %156 ], [ %176, %178 ], [ %184, %203 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !232
  %208 = load ptr, ptr %207, align 8, !tbaa !337
  br label %209

209:                                              ; preds = %33, %149, %205
  %210 = phi ptr [ %208, %205 ], [ %152, %149 ], [ %34, %33 ]
  ret ptr %210
}

declare ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_method_named() local_unnamed_addr #4 !prof !871 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4)
  %6 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !339
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %69, !prof !872

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef %5, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13, !prof !873

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !221
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %65, !prof !874

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !255
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26, !prof !875

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !799
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30, !prof !876

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !199
  %32 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = load ptr, ptr %5, align 8, !tbaa !477
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !597
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !877
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43, !prof !878

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %5) #13
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !879
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %65, !prof !881

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57, !prof !882

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !255
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !179
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !179
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %64 = load ptr, ptr %63, align 8, !tbaa !188
  br label %65

65:                                               ; preds = %10, %43, %20, %13, %57
  %66 = phi ptr [ %62, %57 ], [ %1, %13 ], [ %1, %20 ], [ %1, %43 ], [ %1, %10 ]
  %67 = phi ptr [ %64, %57 ], [ undef, %13 ], [ undef, %20 ], [ undef, %43 ], [ undef, %10 ]
  %68 = phi i1 [ false, %57 ], [ true, %13 ], [ true, %20 ], [ true, %43 ], [ true, %10 ]
  br i1 %68, label %69, label %95, !prof !883

69:                                               ; preds = %65, %0
  %70 = phi ptr [ %66, %65 ], [ %1, %0 ]
  %71 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %5, ptr noundef %4, i32 noundef 768) #13
  %72 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %73 = ptrtoint ptr %72 to i64
  %74 = ptrtoint ptr %70 to i64
  %75 = sub i64 %73, %74
  %76 = icmp slt i64 %75, 8
  br i1 %76, label %77, label %79, !prof !884

77:                                               ; preds = %69
  %78 = tail call ptr @Perl_stack_grow(ptr noundef %70, ptr noundef %70, i64 noundef 1) #13
  br label %79

79:                                               ; preds = %69, %77
  %80 = phi ptr [ %78, %77 ], [ %70, %69 ]
  %81 = getelementptr inbounds %struct.gv, ptr %71, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !221
  %83 = and i32 %82, 255
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %85, label %90, !prof !885

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.gv, ptr %71, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !196
  %88 = getelementptr inbounds %struct.gp, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !255
  br label %90

90:                                               ; preds = %79, %85
  %91 = phi ptr [ %89, %85 ], [ %71, %79 ]
  %92 = getelementptr inbounds ptr, ptr %80, i64 1
  store ptr %91, ptr %92, align 8, !tbaa !179
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !179
  %93 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %94 = load ptr, ptr %93, align 8, !tbaa !188
  br label %95

95:                                               ; preds = %65, %90
  %96 = phi ptr [ %94, %90 ], [ %67, %65 ]
  ret ptr %96
}

declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_method_super() local_unnamed_addr #5 !prof !334 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = load ptr, ptr @PL_curcop, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.cop, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !886
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4)
  %9 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !196
  %11 = load ptr, ptr %7, align 8, !tbaa !477
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !597
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8, !tbaa !877
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !335

18:                                               ; preds = %0
  %19 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #13
  br label %20

20:                                               ; preds = %0, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %0 ]
  %22 = getelementptr inbounds %struct.mro_meta, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !887
  %24 = icmp eq ptr %23, null
  br i1 %24, label %83, label %25, !prof !336

25:                                               ; preds = %20
  %26 = tail call ptr @Perl_hv_common(ptr noundef nonnull %23, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %79, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !196
  %31 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !221
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %79

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !255
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !799
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @PL_sub_generation, align 4, !tbaa !199
  %47 = load ptr, ptr %9, align 8, !tbaa !196
  %48 = load ptr, ptr %7, align 8, !tbaa !477
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !597
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !877
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #13
  br label %57

57:                                               ; preds = %45, %55
  %58 = phi ptr [ %56, %55 ], [ %53, %45 ]
  %59 = getelementptr inbounds %struct.mro_meta, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !879
  %61 = add i32 %60, %46
  %62 = icmp eq i32 %43, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57, %41
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %1 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %71

71:                                               ; preds = %63, %69
  %72 = phi ptr [ %70, %69 ], [ %1, %63 ]
  %73 = load ptr, ptr %36, align 8, !tbaa !196
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !255
  %76 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !179
  store ptr %76, ptr @PL_stack_sp, align 8, !tbaa !179
  %77 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %78 = load ptr, ptr %77, align 8, !tbaa !188
  br label %79

79:                                               ; preds = %25, %57, %35, %28, %71
  %80 = phi ptr [ %76, %71 ], [ %1, %28 ], [ %1, %35 ], [ %1, %57 ], [ %1, %25 ]
  %81 = phi ptr [ %78, %71 ], [ undef, %28 ], [ undef, %35 ], [ undef, %57 ], [ undef, %25 ]
  %82 = phi i1 [ false, %71 ], [ true, %28 ], [ true, %35 ], [ true, %57 ], [ true, %25 ]
  br i1 %82, label %83, label %109

83:                                               ; preds = %79, %20
  %84 = phi ptr [ %80, %79 ], [ %1, %20 ]
  %85 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %7, ptr noundef %4, i32 noundef 4864) #13
  %86 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %87 = ptrtoint ptr %86 to i64
  %88 = ptrtoint ptr %84 to i64
  %89 = sub i64 %87, %88
  %90 = icmp slt i64 %89, 8
  br i1 %90, label %91, label %93, !prof !335

91:                                               ; preds = %83
  %92 = tail call ptr @Perl_stack_grow(ptr noundef %84, ptr noundef %84, i64 noundef 1) #13
  br label %93

93:                                               ; preds = %83, %91
  %94 = phi ptr [ %92, %91 ], [ %84, %83 ]
  %95 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !221
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %104, !prof !336

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !196
  %102 = getelementptr inbounds %struct.gp, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !255
  br label %104

104:                                              ; preds = %93, %99
  %105 = phi ptr [ %103, %99 ], [ %85, %93 ]
  %106 = getelementptr inbounds ptr, ptr %94, i64 1
  store ptr %105, ptr %106, align 8, !tbaa !179
  store ptr %106, ptr @PL_stack_sp, align 8, !tbaa !179
  %107 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %108 = load ptr, ptr %107, align 8, !tbaa !188
  br label %109

109:                                              ; preds = %79, %104
  %110 = phi ptr [ %108, %104 ], [ %81, %79 ]
  ret ptr %110
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_method_redir() local_unnamed_addr #5 !prof !515 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !888
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4)
  %9 = icmp eq ptr %7, null
  br i1 %9, label %69, label %10, !prof !518

10:                                               ; preds = %0
  %11 = tail call ptr @Perl_hv_common(ptr noundef nonnull %7, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13, !prof !518

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !221
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %65, !prof !524

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !196
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !255
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26, !prof !518

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !799
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30, !prof !524

30:                                               ; preds = %26
  %31 = load i32, ptr @PL_sub_generation, align 4, !tbaa !199
  %32 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = load ptr, ptr %7, align 8, !tbaa !477
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !597
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !877
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #13
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %30 ]
  %45 = getelementptr inbounds %struct.mro_meta, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !879
  %47 = add i32 %46, %31
  %48 = icmp eq i32 %28, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43, %26
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %1 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57, !prof !518

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi ptr [ %56, %55 ], [ %1, %49 ]
  %59 = load ptr, ptr %21, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !255
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !179
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !179
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %64 = load ptr, ptr %63, align 8, !tbaa !188
  br label %65

65:                                               ; preds = %10, %43, %20, %13, %57
  %66 = phi ptr [ %62, %57 ], [ %1, %13 ], [ %1, %20 ], [ %1, %43 ], [ %1, %10 ]
  %67 = phi ptr [ %64, %57 ], [ undef, %13 ], [ undef, %20 ], [ undef, %43 ], [ undef, %10 ]
  %68 = phi i1 [ false, %57 ], [ true, %13 ], [ true, %20 ], [ true, %43 ], [ true, %10 ]
  br i1 %68, label %73, label %100, !prof !518

69:                                               ; preds = %0
  %70 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %71 = getelementptr inbounds %struct.methop, ptr %70, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !888
  br label %73

73:                                               ; preds = %65, %69
  %74 = phi ptr [ %66, %65 ], [ %1, %69 ]
  %75 = phi ptr [ %7, %65 ], [ %72, %69 ]
  %76 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %75, ptr noundef %4, i32 noundef 768) #13
  %77 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %74 to i64
  %80 = sub i64 %78, %79
  %81 = icmp slt i64 %80, 8
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = tail call ptr @Perl_stack_grow(ptr noundef %74, ptr noundef %74, i64 noundef 1) #13
  br label %84

84:                                               ; preds = %73, %82
  %85 = phi ptr [ %83, %82 ], [ %74, %73 ]
  %86 = getelementptr inbounds %struct.gv, ptr %76, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !221
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.gv, ptr %76, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !196
  %93 = getelementptr inbounds %struct.gp, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !255
  br label %95

95:                                               ; preds = %84, %90
  %96 = phi ptr [ %94, %90 ], [ %76, %84 ]
  %97 = getelementptr inbounds ptr, ptr %85, i64 1
  store ptr %96, ptr %97, align 8, !tbaa !179
  store ptr %97, ptr @PL_stack_sp, align 8, !tbaa !179
  %98 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %99 = load ptr, ptr %98, align 8, !tbaa !188
  br label %100

100:                                              ; preds = %65, %95
  %101 = phi ptr [ %99, %95 ], [ %67, %65 ]
  ret ptr %101
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pp_method_redir_super() local_unnamed_addr #5 !prof !850 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !179
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.methop, ptr %2, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !888
  %7 = tail call ptr @Perl_gv_stashsv(ptr noundef %6, i32 noundef 0) #13
  %8 = tail call fastcc ptr @S_opmethod_stash(ptr noundef %4)
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.methop, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !888
  br label %89

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = load ptr, ptr %7, align 8, !tbaa !477
  %18 = getelementptr inbounds %struct.xpvhv, ptr %17, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !597
  %20 = getelementptr ptr, ptr %16, i64 %19
  %21 = getelementptr ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8, !tbaa !877
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #13
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi ptr [ %25, %24 ], [ %22, %14 ]
  %28 = getelementptr inbounds %struct.mro_meta, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !887
  %30 = icmp eq ptr %29, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_hv_common(ptr noundef nonnull %29, ptr noundef %4, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %85, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.he, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !221
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !255
  %46 = icmp eq ptr %45, null
  br i1 %46, label %85, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !799
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @PL_sub_generation, align 4, !tbaa !199
  %53 = load ptr, ptr %15, align 8, !tbaa !196
  %54 = load ptr, ptr %7, align 8, !tbaa !477
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !597
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8, !tbaa !877
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %7) #13
  br label %63

63:                                               ; preds = %51, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %51 ]
  %65 = getelementptr inbounds %struct.mro_meta, ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !879
  %67 = add i32 %66, %52
  %68 = icmp eq i32 %49, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63, %47
  %70 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 8
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #13
  br label %77

77:                                               ; preds = %69, %75
  %78 = phi ptr [ %76, %75 ], [ %1, %69 ]
  %79 = load ptr, ptr %42, align 8, !tbaa !196
  %80 = getelementptr inbounds %struct.gp, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !255
  %82 = getelementptr inbounds ptr, ptr %78, i64 1
  store ptr %81, ptr %82, align 8, !tbaa !179
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !179
  %83 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %84 = load ptr, ptr %83, align 8, !tbaa !188
  br label %85

85:                                               ; preds = %31, %63, %41, %34, %77
  %86 = phi ptr [ %82, %77 ], [ %1, %34 ], [ %1, %41 ], [ %1, %63 ], [ %1, %31 ]
  %87 = phi ptr [ %84, %77 ], [ undef, %34 ], [ undef, %41 ], [ undef, %63 ], [ undef, %31 ]
  %88 = phi i1 [ false, %77 ], [ true, %34 ], [ true, %41 ], [ true, %63 ], [ true, %31 ]
  br i1 %88, label %89, label %116

89:                                               ; preds = %26, %85, %10
  %90 = phi ptr [ %86, %85 ], [ %1, %26 ], [ %1, %10 ]
  %91 = phi ptr [ %7, %85 ], [ %7, %26 ], [ %13, %10 ]
  %92 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %91, ptr noundef %4, i32 noundef 4864) #13
  %93 = load ptr, ptr @PL_stack_max, align 8, !tbaa !179
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %90 to i64
  %96 = sub i64 %94, %95
  %97 = icmp slt i64 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = tail call ptr @Perl_stack_grow(ptr noundef %90, ptr noundef %90, i64 noundef 1) #13
  br label %100

100:                                              ; preds = %89, %98
  %101 = phi ptr [ %99, %98 ], [ %90, %89 ]
  %102 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !221
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !196
  %109 = getelementptr inbounds %struct.gp, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !255
  br label %111

111:                                              ; preds = %100, %106
  %112 = phi ptr [ %110, %106 ], [ %92, %100 ]
  %113 = getelementptr inbounds ptr, ptr %101, i64 1
  store ptr %112, ptr %113, align 8, !tbaa !179
  store ptr %113, ptr @PL_stack_sp, align 8, !tbaa !179
  %114 = load ptr, ptr @PL_op, align 8, !tbaa !179
  %115 = load ptr, ptr %114, align 8, !tbaa !188
  br label %116

116:                                              ; preds = %85, %111
  %117 = phi ptr [ %115, %111 ], [ %87, %85 ]
  ret ptr %117
}

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_utf8_hop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_pos_u2b_flags(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!177}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!35 = !{ptr @Perl_pp_const, ptr @Perl_stack_grow, i64 23}
!36 = !{ptr @Perl_pp_nextstate, ptr @Perl_free_tmps, i64 6589630}
!37 = !{ptr @Perl_pp_gvsv, ptr @Perl_save_scalar, i64 139606}
!38 = !{ptr @Perl_pp_stringify, ptr @Perl_sv_copypv_flags, i64 67362}
!39 = !{ptr @Perl_pp_and, ptr @Perl_sv_2bool_flags, i64 164295}
!40 = !{ptr @Perl_pp_sassign, ptr @Perl_gv_fetchsv, i64 555}
!41 = !{ptr @Perl_pp_sassign, ptr @Perl_sv_setsv_flags, i64 74504637}
!42 = !{ptr @Perl_pp_sassign, ptr @Perl_mg_set, i64 81794}
!43 = !{ptr @Perl_pp_cond_expr, ptr @Perl_sv_2bool_flags, i64 49}
!44 = !{ptr @Perl_pp_unstack, ptr @Perl_free_tmps, i64 366200}
!45 = !{ptr @Perl_pp_unstack, ptr @Perl_leave_scope, i64 20619134}
!46 = !{ptr @Perl_pp_concat, ptr @Perl_try_amagic_bin, i64 30762}
!47 = !{ptr @Perl_pp_concat, ptr @Perl_sv_2pv_flags, i64 108464}
!48 = !{ptr @Perl_pp_concat, ptr @Perl_sv_setpvn, i64 879727}
!49 = !{ptr @Perl_pp_concat, ptr @Perl_sv_pvn_force_flags, i64 106529}
!50 = !{ptr @Perl_pp_concat, ptr @Perl_sv_catpvn_flags, i64 2116962}
!51 = !{ptr @Perl_pp_padrange, ptr @S_pushav, i64 674051}
!52 = !{ptr @S_pushav, ptr @Perl_stack_grow, i64 1}
!53 = !{ptr @Perl_pp_padsv, ptr @Perl_save_clearsv, i64 27519170}
!54 = !{ptr @Perl_pp_padsv, ptr @Perl_sv_upgrade, i64 69}
!55 = !{ptr @Perl_pp_padsv, ptr @Perl_newSV_type, i64 69}
!56 = !{ptr @Perl_vivify_ref, ptr @Perl_sv_upgrade, i64 8}
!57 = !{ptr @Perl_vivify_ref, ptr @Perl_newSV_type, i64 8}
!58 = !{ptr @Perl_pp_readline, ptr @Perl_do_readline, i64 1}
!59 = !{ptr @Perl_do_readline, ptr @Perl_newSV, i64 207}
!60 = !{ptr @Perl_do_readline, ptr @Perl_sv_2mortal, i64 207}
!61 = !{ptr @Perl_do_readline, ptr @Perl_sv_gets, i64 207}
!62 = !{ptr @Perl_do_readline, ptr @Perl_PerlIO_clearerr, i64 1}
!63 = !{ptr @Perl_do_readline, ptr @Perl_safesysrealloc, i64 197}
!64 = !{ptr @Perl_pp_preinc, ptr @Perl_sv_inc, i64 56380}
!65 = !{ptr @Perl_pp_preinc, ptr @Perl_sv_dec, i64 31109}
!66 = !{ptr @Perl_pp_or, ptr @Perl_sv_2bool_flags, i64 74781}
!67 = !{ptr @Perl_pp_defined, ptr @Perl_mg_get, i64 10939}
!68 = !{ptr @Perl_pp_add, ptr @Perl_sv_2iv_flags, i64 17434}
!69 = !{ptr @Perl_pp_add, ptr @Perl_sv_setuv, i64 571693}
!70 = !{ptr @Perl_pp_add, ptr @Perl_sv_setiv, i64 22592}
!71 = !{ptr @Perl_pp_aelemfast, ptr @Perl_av_fetch, i64 1082537}
!72 = !{ptr @Perl_pp_join, ptr @Perl_do_join, i64 219397}
!73 = !{ptr @Perl_pp_print, ptr @Perl_do_print, i64 42073}
!74 = !{ptr @Perl_pp_print, ptr @Perl_PerlIO_flush, i64 17906}
!75 = !{ptr @Perl_pp_rv2av, ptr @Perl_amagic_deref_call, i64 1}
!76 = !{ptr @Perl_pp_rv2av, ptr @Perl_softref2xv, i64 126}
!77 = !{ptr @Perl_pp_rv2av, ptr @Perl_save_ary, i64 11156}
!78 = !{ptr @Perl_pp_rv2av, ptr @Perl_save_hash, i64 64}
!79 = !{ptr @Perl_pp_rv2av, ptr @S_pushav, i64 145457}
!80 = !{ptr @Perl_pp_rv2av, ptr @Perl_sv_setiv, i64 21344798}
!81 = !{ptr @Perl_pp_rv2av, ptr @Perl_do_kv, i64 5588}
!82 = !{ptr @Perl_pp_rv2av, ptr @Perl_newSViv, i64 5616}
!83 = !{ptr @Perl_pp_rv2av, ptr @Perl_sv_2mortal, i64 5616}
!84 = !{ptr @Perl_pp_rv2av, ptr @Perl_hv_scalar, i64 1}
!85 = !{ptr @Perl_pp_aassign, ptr @Perl_block_gimme, i64 2}
!86 = !{ptr @Perl_pp_aassign, ptr @Perl_sv_mortalcopy_flags, i64 2248440}
!87 = !{ptr @Perl_pp_aassign, ptr @Perl_push_scope, i64 313188}
!88 = !{ptr @Perl_pp_aassign, ptr @Perl_save_pushptr, i64 313188}
!89 = !{ptr @Perl_pp_aassign, ptr @Perl_av_clear, i64 288149}
!90 = !{ptr @Perl_pp_aassign, ptr @Perl_av_extend, i64 288149}
!91 = !{ptr @Perl_pp_aassign, ptr @Perl_newSV, i64 1554528}
!92 = !{ptr @Perl_pp_aassign, ptr @Perl_sv_setsv_flags, i64 10417556}
!93 = !{ptr @Perl_pp_aassign, ptr @Perl_av_store, i64 1395512}
!94 = !{ptr @Perl_pp_aassign, ptr @Perl_mg_set, i64 39}
!95 = !{ptr @Perl_pp_aassign, ptr @Perl_pop_scope, i64 313188}
!96 = !{ptr @Perl_pp_aassign, ptr @Perl_hv_clear, i64 25039}
!97 = !{ptr @Perl_pp_aassign, ptr @Perl_hv_common, i64 159016}
!98 = !{ptr @Perl_pp_aassign, ptr @getuid, i64 19}
!99 = !{ptr @Perl_pp_aassign, ptr @geteuid, i64 19}
!100 = !{ptr @Perl_pp_aassign, ptr @getgid, i64 19}
!101 = !{ptr @Perl_pp_aassign, ptr @getegid, i64 19}
!102 = !{ptr @Perl_pp_aassign, ptr @Perl_sv_setiv, i64 57770}
!103 = !{ptr @Perl_pp_qr, ptr @Perl_sv_newmortal, i64 3}
!104 = !{ptr @Perl_pp_qr, ptr @Perl_sv_upgrade, i64 3}
!105 = !{ptr @Perl_pp_qr, ptr @Perl_reg_temp_copy, i64 3}
!106 = !{ptr @Perl_pp_qr, ptr @Perl_gv_stashsv, i64 3}
!107 = !{ptr @Perl_pp_qr, ptr @Perl_sv_free2, i64 3}
!108 = !{ptr @Perl_pp_qr, ptr @Perl_sv_bless, i64 3}
!109 = !{ptr @Perl_pp_match, ptr @Perl_block_gimme, i64 16}
!110 = !{ptr @Perl_pp_match, ptr @Perl_sv_2pv_flags, i64 10742}
!111 = !{ptr @Perl_pp_match, ptr @Perl_mg_find_mglob, i64 147335}
!112 = !{ptr @Perl_pp_match, ptr @Perl_sv_newmortal, i64 12496}
!113 = !{ptr @Perl_pp_match, ptr @Perl_sv_setpvn, i64 7776}
!114 = !{ptr @Perl_pp_helem, ptr @Perl_hv_common, i64 547213}
!115 = !{ptr @Perl_pp_helem, ptr @Perl_vivify_ref, i64 314048}
!116 = !{ptr @S_softref2xv_lite, ptr @Perl_gv_fetchsv, i64 11309}
!117 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_upgrade, i64 16732}
!118 = !{ptr @Perl_pp_multideref, ptr @Perl_newSV_type, i64 11214}
!119 = !{ptr @Perl_pp_multideref, ptr @Perl_av_fetch, i64 460091156}
!120 = !{ptr @Perl_pp_multideref, ptr @Perl_amagic_deref_call, i64 2}
!121 = !{ptr @Perl_pp_multideref, ptr @S_softref2xv_lite, i64 11309}
!122 = !{ptr @Perl_pp_multideref, ptr @Perl_hv_common, i64 504419271}
!123 = !{ptr @Perl_pp_multideref, ptr @Perl_mg_find, i64 14107}
!124 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_newmortal, i64 5570}
!125 = !{ptr @Perl_pp_multideref, ptr @Perl_newSVsv, i64 5570}
!126 = !{ptr @Perl_pp_multideref, ptr @Perl_sv_magic, i64 5570}
!127 = !{ptr @Perl_pp_multideref, ptr @Perl_save_hdelete, i64 14107}
!128 = !{ptr @Perl_pp_multideref, ptr @Perl_mg_get, i64 8}
!129 = !{ptr @Perl_pp_iter, ptr @Perl_av_fetch, i64 248741}
!130 = !{ptr @Perl_pp_iter, ptr @Perl_sv_free2, i64 14834}
!131 = !{ptr @Perl_pp_subst, ptr @Perl_sv_2pv_flags, i64 225570}
!132 = !{ptr @Perl_pp_subst, ptr @Perl_mg_find, i64 685138}
!133 = !{ptr @Perl_pp_subst, ptr @Perl_sv_tainted, i64 16}
!134 = !{ptr @Perl_pp_subst, ptr @Perl_sv_chop, i64 9981}
!135 = !{ptr @Perl_pp_subst, ptr @Perl_sv_newmortal, i64 774230}
!136 = !{ptr @Perl_pp_subst, ptr @Perl_sv_setiv, i64 774230}
!137 = !{ptr @Perl_pp_subst, ptr @Perl_newSVpvn_flags, i64 1324781}
!138 = !{ptr @Perl_pp_subst, ptr @Perl_rxres_save, i64 550696}
!139 = !{ptr @Perl_pp_subst, ptr @Perl_sv_catpvn_flags, i64 2004557}
!140 = !{ptr @Perl_pp_subst, ptr @Perl_sv_catsv_flags, i64 238451}
!141 = !{ptr @Perl_pp_subst, ptr @Perl_sv_force_normal_flags, i64 771339}
!142 = !{ptr @Perl_pp_subst, ptr @Perl_safesysfree, i64 2746}
!143 = !{ptr @Perl_pp_subst, ptr @Perl_mg_set, i64 310819}
!144 = !{ptr @Perl_pp_grepwhile, ptr @Perl_free_tmps, i64 104}
!145 = !{ptr @Perl_pp_grepwhile, ptr @Perl_pop_scope, i64 20498363}
!146 = !{ptr @Perl_pp_grepwhile, ptr @Perl_block_gimme, i64 16}
!147 = !{ptr @Perl_pp_grepwhile, ptr @Perl_sv_setiv, i64 52}
!148 = !{ptr @Perl_pp_grepwhile, ptr @Perl_push_scope, i64 20484309}
!149 = !{ptr @Perl_pp_grepwhile, ptr @Perl_save_vptr, i64 20484309}
!150 = !{ptr @Perl_pp_leavesub, ptr @Perl_sv_mortalcopy_flags, i64 3812924}
!151 = !{ptr @Perl_pp_leavesub, ptr @Perl_pop_scope, i64 2611084}
!152 = !{ptr @Perl_pp_leavesub, ptr @Perl_sv_free2, i64 43}
!153 = !{ptr @Perl_pp_leavesub, ptr @Perl_newSV_type, i64 44}
!154 = !{ptr @Perl_pp_leavesub, ptr @Perl_av_extend, i64 44}
!155 = !{ptr @Perl_pp_entersub, ptr @Perl_get_cvn_flags, i64 90985}
!156 = !{ptr @Perl_pp_entersub, ptr @Perl_push_scope, i64 3605945}
!157 = !{ptr @Perl_pp_entersub, ptr @Perl_block_gimme, i64 74856}
!158 = !{ptr @Perl_pp_entersub, ptr @Perl_save_pushptr, i64 6074210}
!159 = !{ptr @Perl_pp_entersub, ptr @Perl_pad_push, i64 51928}
!160 = !{ptr @Perl_pp_entersub, ptr @Perl_safesysrealloc, i64 188}
!161 = !{ptr @Perl_pp_entersub, ptr @Perl_sv_mortalcopy_flags, i64 214903}
!162 = !{ptr @Perl_pp_entersub, ptr @Perl_save_strlen, i64 3605945}
!163 = !{ptr @Perl_pp_entersub, ptr @Perl_pop_scope, i64 542876}
!164 = !{ptr @Perl_pp_aelem, ptr @Perl_sv_2iv_flags, i64 53928}
!165 = !{ptr @Perl_pp_aelem, ptr @Perl_av_fetch, i64 396077}
!166 = !{ptr @S_opmethod_stash, ptr @Perl_gv_stashsv, i64 25027}
!167 = !{ptr @S_opmethod_stash, ptr @Perl_gv_stashpvn, i64 104}
!168 = !{ptr @S_opmethod_stash, ptr @Perl_gv_fetchpvn_flags, i64 52}
!169 = !{ptr @Perl_pp_method_named, ptr @S_opmethod_stash, i64 718982}
!170 = !{ptr @Perl_pp_method_named, ptr @Perl_hv_common, i64 718982}
!171 = !{ptr @Perl_pp_method_named, ptr @Perl_gv_fetchmethod_sv_flags, i64 26}
!172 = !{ptr @Perl_pp_method_super, ptr @S_opmethod_stash, i64 1}
!173 = !{ptr @Perl_pp_method_super, ptr @Perl_gv_fetchmethod_sv_flags, i64 1}
!174 = !{ptr @Perl_pp_method_redir, ptr @Perl_gv_stashsv, i64 3}
!175 = !{ptr @Perl_pp_method_redir, ptr @S_opmethod_stash, i64 3}
!176 = !{ptr @Perl_pp_method_redir, ptr @Perl_hv_common, i64 3}
!177 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!178 = !{!"function_entry_count", i64 110983018}
!179 = !{!180, !180, i64 0}
!180 = !{!"any pointer", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C/C++ TBAA"}
!183 = !{!"branch_weights", i32 23, i32 110982995}
!184 = !{!185, !180, i64 40}
!185 = !{!"svop", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !180, i64 40}
!186 = !{!"long", !181, i64 0}
!187 = !{!"int", !181, i64 0}
!188 = !{!189, !180, i64 0}
!189 = !{!"op", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35}
!190 = !{!"function_entry_count", i64 209457315}
!191 = !{!192, !192, i64 0}
!192 = !{!"_Bool", !181, i64 0}
!193 = !{!194, !180, i64 8}
!194 = !{!"stackinfo", !180, i64 0, !180, i64 8, !180, i64 16, !180, i64 24, !187, i64 32, !187, i64 36, !187, i64 40, !187, i64 44}
!195 = !{!194, !187, i64 32}
!196 = !{!181, !181, i64 0}
!197 = !{!186, !186, i64 0}
!198 = !{!"branch_weights", i32 6589630, i32 202867685}
!199 = !{!187, !187, i64 0}
!200 = !{!"branch_weights", i32 209457315, i32 0}
!201 = !{!"function_entry_count", i64 528717179}
!202 = !{!"branch_weights", i32 0, i32 528717179}
!203 = !{!189, !181, i64 35}
!204 = !{!"branch_weights", i32 528577573, i32 139606}
!205 = !{!206, !180, i64 0}
!206 = !{!"gp", !180, i64 0, !180, i64 8, !180, i64 16, !187, i64 24, !187, i64 28, !180, i64 32, !180, i64 40, !180, i64 48, !180, i64 56, !187, i64 64, !187, i64 67, !180, i64 72}
!207 = !{!"branch_weights", i32 0, i32 528577573}
!208 = !{!206, !187, i64 28}
!209 = !{!"branch_weights", i32 1065949, i32 527651230}
!210 = !{!"branch_weights", i32 527625211, i32 26019}
!211 = !{!"function_entry_count", i64 1905854}
!212 = !{!"function_entry_count", i64 12667207}
!213 = !{!"branch_weights", i32 0, i32 12667207}
!214 = !{!"function_entry_count", i64 67362}
!215 = !{!189, !186, i64 24}
!216 = !{!217, !187, i64 12}
!217 = !{!"sv", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!218 = !{!"branch_weights", i32 67362, i32 0}
!219 = !{!"function_entry_count", i64 3897224}
!220 = !{!"branch_weights", i32 0, i32 3897224}
!221 = !{!222, !187, i64 12}
!222 = !{!"gv", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!223 = !{!"branch_weights", i32 3897224, i32 0}
!224 = !{!"branch_weights", i32 384428, i32 3512796}
!225 = !{!"branch_weights", i32 3512793, i32 3}
!226 = !{!"function_entry_count", i64 160439111}
!227 = !{!"branch_weights", i32 160439111, i32 0}
!228 = !{!"branch_weights", i32 160422035, i32 17076}
!229 = !{!"branch_weights", i32 15, i32 17061}
!230 = !{!"branch_weights", i32 159984779, i32 437256}
!231 = !{!"branch_weights", i32 24702366, i32 135282413}
!232 = !{!217, !180, i64 0}
!233 = !{!"branch_weights", i32 0, i32 135282413}
!234 = !{!235, !186, i64 16}
!235 = !{!"xpv", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24}
!236 = !{!"branch_weights", i32 34666, i32 135247747}
!237 = !{!"branch_weights", i32 71367459, i32 63880288}
!238 = !{!"branch_weights", i32 0, i32 63880288}
!239 = !{!"branch_weights", i32 147219, i32 24555147}
!240 = !{!"branch_weights", i32 0, i32 24555147}
!241 = !{!"branch_weights", i32 23430201, i32 1124946}
!242 = !{!"branch_weights", i32 23430201, i32 0}
!243 = !{!"branch_weights", i32 147219, i32 0}
!244 = !{!"branch_weights", i32 65187134, i32 0}
!245 = !{!"function_entry_count", i64 74504641}
!246 = !{!"branch_weights", i32 74266318, i32 238323}
!247 = !{i8 0, i8 2}
!248 = !{}
!249 = !{!"branch_weights", i32 74504641, i32 0}
!250 = !{!"branch_weights", i32 74504078, i32 563}
!251 = !{!"branch_weights", i32 8, i32 555}
!252 = !{!"branch_weights", i32 563, i32 0}
!253 = !{!189, !181, i64 34}
!254 = !{!217, !187, i64 8}
!255 = !{!206, !180, i64 16}
!256 = !{!"branch_weights", i32 0, i32 74504641}
!257 = !{!"branch_weights", i32 4, i32 74504637}
!258 = !{!"branch_weights", i32 74422843, i32 81794}
!259 = !{!"function_entry_count", i64 8271266}
!260 = !{!"branch_weights", i32 8271266, i32 0}
!261 = !{!"branch_weights", i32 0, i32 8271266}
!262 = !{!"branch_weights", i32 8271256, i32 10}
!263 = !{!"branch_weights", i32 8071579, i32 199677}
!264 = !{!"branch_weights", i32 1368981, i32 6702598}
!265 = !{!"branch_weights", i32 0, i32 6702598}
!266 = !{!"branch_weights", i32 72360, i32 6630238}
!267 = !{!"branch_weights", i32 4971572, i32 1658666}
!268 = !{!"branch_weights", i32 39, i32 1368942}
!269 = !{!"branch_weights", i32 0, i32 1368942}
!270 = !{!"branch_weights", i32 1077692, i32 291250}
!271 = !{!"branch_weights", i32 1077692, i32 0}
!272 = !{!"branch_weights", i32 2022315, i32 6248951}
!273 = !{!"function_entry_count", i64 442530218}
!274 = !{!"branch_weights", i32 442530218, i32 0}
!275 = !{!"branch_weights", i32 366200, i32 442164018}
!276 = !{!"branch_weights", i32 422040304, i32 20489914}
!277 = !{!"branch_weights", i32 20619134, i32 401421170}
!278 = !{!"function_entry_count", i64 2116962}
!279 = !{!"branch_weights", i32 879727, i32 1237235}
!280 = !{!"branch_weights", i32 2086200, i32 30762}
!281 = !{!"branch_weights", i32 0, i32 30762}
!282 = !{!"branch_weights", i32 0, i32 2116962}
!283 = !{!284, !187, i64 56}
!284 = !{!"cop", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !187, i64 36, !180, i64 40, !180, i64 48, !187, i64 56, !187, i64 60, !180, i64 64, !180, i64 72}
!285 = !{!"branch_weights", i32 1237235, i32 879727}
!286 = !{!"branch_weights", i32 856198, i32 23529}
!287 = !{!"branch_weights", i32 879727, i32 0}
!288 = !{!"branch_weights", i32 1237235, i32 0}
!289 = !{!"branch_weights", i32 1130706, i32 106529}
!290 = !{!"branch_weights", i32 2032027, i32 84935}
!291 = !{!"branch_weights", i32 2116962, i32 0}
!292 = !{!"function_entry_count", i64 3453601}
!293 = !{!"branch_weights", i32 2779550, i32 674051}
!294 = !{!"branch_weights", i32 0, i32 674051}
!295 = !{!206, !180, i64 40}
!296 = !{!"branch_weights", i32 685681, i32 2767920}
!297 = !{!"branch_weights", i32 0, i32 2767920}
!298 = !{!"branch_weights", i32 1, i32 2767919}
!299 = !{!"branch_weights", i32 2767919, i32 5051127}
!300 = distinct !{!300, !301, !302}
!301 = !{!"llvm.loop.mustprogress"}
!302 = !{!"llvm.loop.unroll.disable"}
!303 = !{!"branch_weights", i32 1148492, i32 2305109}
!304 = !{!"branch_weights", i32 0, i32 2305109}
!305 = !{!"branch_weights", i32 1, i32 2305108}
!306 = !{!"branch_weights", i32 2305108, i32 6199017}
!307 = distinct !{!307, !301, !302}
!308 = !{!"function_entry_count", i64 819508}
!309 = !{!"pp_hot.c;S_pushav"}
!310 = !{!"branch_weights", i32 819508, i32 0}
!311 = !{!312, !180, i64 0}
!312 = !{!"av", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!313 = !{!314, !186, i64 16}
!314 = !{!"xpvav", !180, i64 0, !181, i64 8, !186, i64 16, !186, i64 24, !180, i64 32}
!315 = !{!"branch_weights", i32 819507, i32 1}
!316 = !{!312, !187, i64 12}
!317 = !{!"branch_weights", i32 1, i32 819507}
!318 = distinct !{!318, !301, !302}
!319 = !{!"branch_weights", i32 0, i32 3899810}
!320 = !{!"branch_weights", i32 819507, i32 3080303}
!321 = distinct !{!321, !301, !302}
!322 = !{!"function_entry_count", i64 210806876}
!323 = !{!"branch_weights", i32 0, i32 210806876}
!324 = !{!"branch_weights", i32 148824739, i32 61982137}
!325 = !{!"branch_weights", i32 27519170, i32 34462967}
!326 = !{!"branch_weights", i32 59132484, i32 2849653}
!327 = !{!"branch_weights", i32 464500736, i32 0}
!328 = !{!"branch_weights", i32 464489445, i32 11291}
!329 = !{!"branch_weights", i32 11291, i32 0}
!330 = !{!"branch_weights", i32 52, i32 11239}
!331 = !{!"branch_weights", i32 0, i32 52}
!332 = !{!"branch_weights", i32 0, i32 0, i32 11236, i32 55}
!333 = !{!"function_entry_count", i64 320269}
!334 = !{!"function_entry_count", i64 1}
!335 = !{!"branch_weights", i32 0, i32 1}
!336 = !{!"branch_weights", i32 1, i32 0}
!337 = !{!338, !180, i64 0}
!338 = !{!"xpvmg", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24, !181, i64 32, !181, i64 40}
!339 = !{!340, !187, i64 12}
!340 = !{!"hv", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!341 = distinct !{!341, !301, !302}
!342 = !{!206, !180, i64 8}
!343 = !{!344, !180, i64 0}
!344 = !{!"io", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!345 = !{!346, !181, i64 129}
!346 = !{!"xpvio", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24, !181, i64 32, !180, i64 40, !181, i64 48, !186, i64 56, !186, i64 64, !186, i64 72, !180, i64 80, !180, i64 88, !180, i64 96, !180, i64 104, !180, i64 112, !180, i64 120, !181, i64 128, !181, i64 129}
!347 = !{!346, !181, i64 128}
!348 = !{!"branch_weights", i32 1, i32 206}
!349 = distinct !{!349, !302}
!350 = !{!"branch_weights", i32 206, i32 0}
!351 = !{!"branch_weights", i32 0, i32 206}
!352 = distinct !{!352, !301, !302}
!353 = !{!"branch_weights", i32 197, i32 9}
!354 = !{!"function_entry_count", i64 401975}
!355 = !{!"branch_weights", i32 401975, i32 0}
!356 = !{!"branch_weights", i32 132713, i32 269262}
!357 = !{!"function_entry_count", i64 420611460}
!358 = !{!"branch_weights", i32 0, i32 420611460}
!359 = !{!"branch_weights", i32 420523971, i32 87489}
!360 = !{!"branch_weights", i32 420134015, i32 389956}
!361 = !{!"branch_weights", i32 0, i32 420523971}
!362 = !{!"branch_weights", i32 56380, i32 31109}
!363 = !{!"branch_weights", i32 420611460, i32 0}
!364 = !{!"function_entry_count", i64 446371688}
!365 = !{!"branch_weights", i32 446371688, i32 0}
!366 = !{!"branch_weights", i32 0, i32 446371688}
!367 = !{!"branch_weights", i32 446350293, i32 21395}
!368 = !{!"branch_weights", i32 21394, i32 1}
!369 = !{!"branch_weights", i32 445618134, i32 732159}
!370 = !{!"branch_weights", i32 816658, i32 444801476}
!371 = !{!"branch_weights", i32 0, i32 444801476}
!372 = !{!"branch_weights", i32 309792, i32 444491684}
!373 = !{!"branch_weights", i32 421789460, i32 22702224}
!374 = !{!"branch_weights", i32 6404, i32 22695820}
!375 = !{!"branch_weights", i32 53386, i32 763272}
!376 = !{!"branch_weights", i32 0, i32 763272}
!377 = !{!"branch_weights", i32 517320, i32 245952}
!378 = !{!"branch_weights", i32 517320, i32 0}
!379 = !{!"branch_weights", i32 53386, i32 0}
!380 = !{!"function_entry_count", i64 4485691}
!381 = !{!"branch_weights", i32 4485678, i32 0, i32 13}
!382 = !{!"branch_weights", i32 13, i32 0}
!383 = !{!"branch_weights", i32 0, i32 13}
!384 = !{!"branch_weights", i32 0, i32 4485678}
!385 = !{!"branch_weights", i32 1046091, i32 3439587}
!386 = !{!"branch_weights", i32 3257606, i32 0, i32 0, i32 181994}
!387 = !{!314, !186, i64 24}
!388 = !{!"branch_weights", i32 3246667, i32 10939}
!389 = !{!"branch_weights", i32 3439587, i32 0, i32 13}
!390 = !{!"branch_weights", i32 3, i32 10}
!391 = !{!"branch_weights", i32 3031210, i32 408377}
!392 = !{!"function_entry_count", i64 594285}
!393 = !{!"branch_weights", i32 555968, i32 38317}
!394 = !{!"branch_weights", i32 594285, i32 0}
!395 = !{!"branch_weights", i32 0, i32 594285}
!396 = !{!"branch_weights", i32 576851, i32 17434}
!397 = !{!"branch_weights", i32 0, i32 17434}
!398 = !{!"branch_weights", i32 0, i32 576851}
!399 = !{!"branch_weights", i32 587869, i32 6416}
!400 = !{!"branch_weights", i32 408820, i32 185465}
!401 = !{!"branch_weights", i32 16176, i32 169289}
!402 = !{!"branch_weights", i32 22592, i32 571693}
!403 = !{!"branch_weights", i32 571693, i32 0}
!404 = !{!"branch_weights", i32 22592, i32 0}
!405 = !{!"function_entry_count", i64 1082537}
!406 = !{!"branch_weights", i32 18970, i32 1063567}
!407 = !{!"branch_weights", i32 0, i32 1063567}
!408 = !{!"branch_weights", i32 533, i32 1082004}
!409 = !{!"branch_weights", i32 0, i32 1082537}
!410 = !{!"branch_weights", i32 6417, i32 1076120}
!411 = !{!"branch_weights", i32 1076120, i32 0}
!412 = !{!"function_entry_count", i64 219397}
!413 = !{!"function_entry_count", i64 598560}
!414 = !{!"branch_weights", i32 0, i32 598560}
!415 = !{!"function_entry_count", i64 30709}
!416 = !{!"branch_weights", i32 18547, i32 12162}
!417 = !{!"branch_weights", i32 0, i32 30709}
!418 = !{!"branch_weights", i32 30709, i32 0}
!419 = !{!206, !180, i64 56}
!420 = !{!346, !180, i64 40}
!421 = distinct !{!421, !301, !302}
!422 = !{!"branch_weights", i32 1, i32 30708}
!423 = !{!"branch_weights", i32 42073, i32 0}
!424 = !{!"branch_weights", i32 30708, i32 11365}
!425 = distinct !{!425, !301, !302}
!426 = !{!"branch_weights", i32 12803, i32 17906}
!427 = !{!"branch_weights", i32 0, i32 17906}
!428 = !{!"branch_weights", i32 0, i32 30709, i32 0}
!429 = !{!"function_entry_count", i64 24481279}
!430 = !{!"branch_weights", i32 0, i32 24481279}
!431 = !{!"branch_weights", i32 23705723, i32 775556}
!432 = !{!"branch_weights", i32 24481279, i32 0}
!433 = !{!"branch_weights", i32 1155430, i32 23325849}
!434 = !{!"branch_weights", i32 23063367, i32 262482}
!435 = !{!"branch_weights", i32 262481, i32 1}
!436 = !{!"branch_weights", i32 23325849, i32 0}
!437 = !{!"branch_weights", i32 21761261, i32 1564588}
!438 = !{!"branch_weights", i32 1564588, i32 0}
!439 = !{!"branch_weights", i32 962, i32 1154468}
!440 = !{!"branch_weights", i32 1154342, i32 126}
!441 = !{!"branch_weights", i32 89, i32 37}
!442 = !{!"branch_weights", i32 0, i32 126}
!443 = !{!"branch_weights", i32 416807, i32 0, i32 737661}
!444 = !{!"branch_weights", i32 0, i32 737661}
!445 = !{!206, !180, i64 32}
!446 = !{!"branch_weights", i32 0, i32 416807}
!447 = !{!"branch_weights", i32 1143248, i32 11220}
!448 = !{!"branch_weights", i32 64, i32 0, i32 11156}
!449 = !{!"branch_weights", i32 1154468, i32 0}
!450 = !{!"branch_weights", i32 21501493, i32 2979786}
!451 = !{!"branch_weights", i32 21501493, i32 0}
!452 = !{!"branch_weights", i32 11222, i32 0, i32 21490271}
!453 = !{!"branch_weights", i32 16, i32 145457, i32 21344798}
!454 = !{!"branch_weights", i32 21344798, i32 0}
!455 = !{!"branch_weights", i32 5588, i32 5634}
!456 = !{!"branch_weights", i32 17, i32 5617}
!457 = !{!"branch_weights", i32 17, i32 0}
!458 = !{!"branch_weights", i32 5617, i32 0}
!459 = !{!460, !186, i64 16}
!460 = !{!"xpvhv", !180, i64 0, !181, i64 8, !186, i64 16, !186, i64 24}
!461 = !{!"branch_weights", i32 5616, i32 1}
!462 = !{!"branch_weights", i32 1, i32 16}
!463 = !{!"function_entry_count", i64 4220262}
!464 = !{!465, !465, i64 0}
!465 = !{!"short", !181, i64 0}
!466 = !{!"branch_weights", i32 2, i32 4220260}
!467 = !{!"branch_weights", i32 1, i32 4220261}
!468 = !{!"branch_weights", i32 3280701, i32 939561}
!469 = !{!"branch_weights", i32 3280692, i32 939570}
!470 = !{!"branch_weights", i32 221754, i32 717816}
!471 = !{!"branch_weights", i32 0, i32 221754}
!472 = !{!"branch_weights", i32 221754, i32 0}
!473 = !{!"branch_weights", i32 221722, i32 32}
!474 = !{!"branch_weights", i32 264010194, i32 -909386070, i32 42301602}
!475 = !{!"branch_weights", i32 114812, i32 88514}
!476 = !{!"branch_weights", i32 18396, i32 114812}
!477 = !{!340, !180, i64 0}
!478 = !{!"branch_weights", i32 18396, i32 0}
!479 = !{!"branch_weights", i32 11997, i32 6399}
!480 = !{!"branch_weights", i32 812761, i32 0}
!481 = !{!"branch_weights", i32 1, i32 812760}
!482 = !{!"branch_weights", i32 0, i32 2248440}
!483 = !{!"branch_weights", i32 812760, i32 1435680}
!484 = distinct !{!484, !301, !302}
!485 = !{!"branch_weights", i32 4220262, i32 9176245}
!486 = !{!"branch_weights", i32 0, i32 9176245}
!487 = !{!"branch_weights", i32 8863057, i32 288149, i32 25039}
!488 = !{!"branch_weights", i32 288149, i32 1395512}
!489 = !{!"branch_weights", i32 0, i32 1395512}
!490 = !{!"branch_weights", i32 1395512, i32 0}
!491 = !{!"branch_weights", i32 1395492, i32 20}
!492 = !{!"branch_weights", i32 0, i32 20}
!493 = distinct !{!493, !301, !302}
!494 = !{!"branch_weights", i32 288130, i32 19}
!495 = !{!"branch_weights", i32 0, i32 19}
!496 = !{!"branch_weights", i32 0, i32 25039}
!497 = !{!"branch_weights", i32 25038, i32 1}
!498 = !{!"branch_weights", i32 159016, i32 0}
!499 = !{!"branch_weights", i32 0, i32 159016}
!500 = !{!"branch_weights", i32 133978, i32 25038}
!501 = distinct !{!501, !301, !302}
!502 = distinct !{!502, !301, !302}
!503 = !{!"branch_weights", i32 8863028, i32 29}
!504 = !{!"branch_weights", i32 29, i32 0}
!505 = !{!"branch_weights", i32 761543, i32 8101485}
!506 = !{!"branch_weights", i32 0, i32 8101485}
!507 = !{!"branch_weights", i32 8863028, i32 0}
!508 = !{!"branch_weights", i32 9176245, i32 0}
!509 = distinct !{!509, !301, !302}
!510 = !{!"branch_weights", i32 4220243, i32 19}
!511 = !{!"branch_weights", i32 19, i32 0}
!512 = !{!"branch_weights", i32 1, i32 4162491, i32 57770}
!513 = !{!"branch_weights", i32 57770, i32 0}
!514 = distinct !{!514, !301, !302}
!515 = !{!"function_entry_count", i64 3}
!516 = !{!517, !180, i64 56}
!517 = !{!"pmop", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !180, i64 40, !180, i64 48, !180, i64 56, !187, i64 64, !181, i64 72, !181, i64 80, !180, i64 88}
!518 = !{!"branch_weights", i32 0, i32 3}
!519 = !{!520, !180, i64 32}
!520 = !{!"regexp", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24, !180, i64 32, !180, i64 40, !180, i64 48, !187, i64 56, !186, i64 64, !186, i64 72, !186, i64 80, !180, i64 88, !187, i64 96, !187, i64 100, !180, i64 104, !187, i64 112, !187, i64 116, !180, i64 120, !180, i64 128, !180, i64 136, !186, i64 144, !186, i64 152, !186, i64 160, !186, i64 168, !187, i64 176, !187, i64 176, !180, i64 184}
!521 = !{!522, !180, i64 80}
!522 = !{!"regexp_engine", !180, i64 0, !180, i64 8, !180, i64 16, !180, i64 24, !180, i64 32, !180, i64 40, !180, i64 48, !180, i64 56, !180, i64 64, !180, i64 72, !180, i64 80, !180, i64 88}
!523 = !{!"VP", i32 0, i64 3, i64 -5891478856711951395, i64 3}
!524 = !{!"branch_weights", i32 3, i32 0}
!525 = !{!526, !180, i64 0}
!526 = !{!"cv", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!527 = !{!528, !187, i64 92}
!528 = !{!"xpvcv", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24, !180, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !180, i64 64, !181, i64 72, !180, i64 80, !187, i64 88, !187, i64 92, !187, i64 96}
!529 = !{!520, !187, i64 56}
!530 = !{!"function_entry_count", i64 424923171}
!531 = !{!"branch_weights", i32 16, i32 424923155}
!532 = !{!"branch_weights", i32 4480128, i32 420443043}
!533 = !{!"branch_weights", i32 874149, i32 3605979}
!534 = !{!"branch_weights", i32 0, i32 874149}
!535 = !{!520, !180, i64 40}
!536 = !{!"branch_weights", i32 424923144, i32 27}
!537 = !{!"branch_weights", i32 27, i32 0}
!538 = !{!"branch_weights", i32 424912402, i32 10742}
!539 = !{!"branch_weights", i32 0, i32 424923171}
!540 = !{!"branch_weights", i32 424923171, i32 0}
!541 = !{!517, !187, i64 64}
!542 = !{!543, !180, i64 0}
!543 = !{!"p5rx", !180, i64 0, !187, i64 8, !187, i64 12, !181, i64 16}
!544 = !{!"branch_weights", i32 0, i32 424923144}
!545 = !{!520, !186, i64 64}
!546 = !{!"branch_weights", i32 701329, i32 424221842}
!547 = !{!"branch_weights", i32 67495, i32 424154347}
!548 = !{!"branch_weights", i32 67495, i32 0}
!549 = !{!550, !186, i64 24}
!550 = !{!"magic", !180, i64 0, !180, i64 8, !465, i64 16, !181, i64 18, !181, i64 19, !186, i64 24, !180, i64 32, !180, i64 40}
!551 = !{!550, !181, i64 19}
!552 = !{!"branch_weights", i32 0, i32 424221842}
!553 = !{!522, !180, i64 8}
!554 = !{!"VP", i32 0, i64 424221842, i64 -3424362592893684620, i64 424221842}
!555 = !{!"branch_weights", i32 402681233, i32 21540609}
!556 = !{!"branch_weights", i32 21540609, i32 0}
!557 = !{!"branch_weights", i32 0, i32 21540609}
!558 = !{!550, !181, i64 18}
!559 = !{!550, !180, i64 8}
!560 = !{!561, !180, i64 0}
!561 = !{!"mgvtbl", !180, i64 0, !180, i64 8, !180, i64 16, !180, i64 24, !180, i64 32, !180, i64 40, !180, i64 48, !180, i64 56}
!562 = distinct !{!562, !301, !302}
!563 = !{!520, !180, i64 120}
!564 = !{!565, !186, i64 8}
!565 = !{!"regexp_paren_pair", !186, i64 0, !186, i64 8, !186, i64 16}
!566 = !{!565, !186, i64 0}
!567 = !{!520, !186, i64 80}
!568 = !{!520, !187, i64 96}
!569 = !{!"branch_weights", i32 21137728, i32 402881}
!570 = !{!"branch_weights", i32 21533976, i32 6633}
!571 = !{!"branch_weights", i32 0, i32 21533976}
!572 = !{!"branch_weights", i32 0, i32 6633}
!573 = !{!"branch_weights", i32 6633, i32 0}
!574 = !{!"branch_weights", i32 1, i32 6632}
!575 = !{!"branch_weights", i32 4720, i32 7776}
!576 = !{!"branch_weights", i32 0, i32 7776}
!577 = !{!"branch_weights", i32 7776, i32 0}
!578 = !{!"branch_weights", i32 6632, i32 5864}
!579 = distinct !{!579, !301, !302}
!580 = !{!"branch_weights", i32 403302722, i32 79840}
!581 = !{!"branch_weights", i32 79840, i32 0}
!582 = !{!"branch_weights", i32 0, i32 403382562}
!583 = !{!"branch_weights", i32 5634, i32 403376928}
!584 = !{!"function_entry_count", i64 547213}
!585 = !{!"branch_weights", i32 210643, i32 336570}
!586 = !{!"branch_weights", i32 210643, i32 0}
!587 = !{!"branch_weights", i32 547213, i32 0}
!588 = !{!550, !180, i64 32}
!589 = !{!"branch_weights", i32 336570, i32 210643}
!590 = !{!"branch_weights", i32 0, i32 547213}
!591 = !{!"branch_weights", i32 0, i32 336570}
!592 = !{!593, !181, i64 72}
!593 = !{!"xpvlv", !180, i64 0, !181, i64 8, !186, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !186, i64 56, !180, i64 64, !181, i64 72, !181, i64 73}
!594 = !{!593, !180, i64 64}
!595 = !{!593, !186, i64 56}
!596 = !{!"branch_weights", i32 336570, i32 0}
!597 = !{!460, !186, i64 24}
!598 = !{!599, !187, i64 28}
!599 = !{!"xpvhv_aux", !181, i64 0, !180, i64 8, !180, i64 16, !187, i64 24, !187, i64 28, !180, i64 32, !187, i64 40, !187, i64 44, !187, i64 48, !187, i64 52}
!600 = !{!"branch_weights", i32 22522, i32 314048}
!601 = !{!"branch_weights", i32 0, i32 233165}
!602 = !{!"branch_weights", i32 22522, i32 210643}
!603 = !{!"function_entry_count", i64 11309}
!604 = !{!"branch_weights", i32 11309, i32 0}
!605 = !{!"function_entry_count", i64 504929099}
!606 = !{!607, !180, i64 48}
!607 = !{!"unop_aux", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !180, i64 40, !180, i64 48}
!608 = !{!"branch_weights", i32 0, i32 0, i32 223574, i32 291011, i32 124841, i32 0, i32 271832, i32 459179899, i32 843251, i32 501682789, i32 41, i32 4, i32 1491756, i32 387324}
!609 = distinct !{!609, !302}
!610 = !{!"branch_weights", i32 0, i32 291011}
!611 = !{!"branch_weights", i32 459576572, i32 0}
!612 = !{!"branch_weights", i32 0, i32 459576572}
!613 = !{!"branch_weights", i32 459557372, i32 19200}
!614 = !{!"branch_weights", i32 19200, i32 0}
!615 = !{!"branch_weights", i32 0, i32 0, i32 338100, i32 733957, i32 459019100}
!616 = !{!"branch_weights", i32 0, i32 459019100}
!617 = !{!"branch_weights", i32 0, i32 459753057}
!618 = !{!"branch_weights", i32 459753057, i32 0}
!619 = !{!"branch_weights", i32 12800, i32 460078357}
!620 = !{!"branch_weights", i32 0, i32 12800}
!621 = !{!"branch_weights", i32 460078357, i32 0}
!622 = !{!"branch_weights", i32 459921484, i32 156873}
!623 = !{!"branch_weights", i32 459921484, i32 0}
!624 = !{!"branch_weights", i32 156873, i32 459921484}
!625 = !{!"branch_weights", i32 0, i32 156873}
!626 = !{!"branch_weights", i32 156873, i32 0}
!627 = !{!"branch_weights", i32 51900, i32 459869584}
!628 = !{!"branch_weights", i32 0, i32 460078357, i32 12800, i32 0}
!629 = !{!"branch_weights", i32 0, i32 504831111}
!630 = !{!"branch_weights", i32 0, i32 501682789}
!631 = !{!"branch_weights", i32 0, i32 4}
!632 = !{!"branch_weights", i32 1879125, i32 0}
!633 = !{!"branch_weights", i32 11313, i32 1867812}
!634 = !{!"branch_weights", i32 955505, i32 912307}
!635 = !{!"branch_weights", i32 912305, i32 2}
!636 = !{!"branch_weights", i32 1867812, i32 0}
!637 = !{!"branch_weights", i32 0, i32 11313}
!638 = !{!"branch_weights", i32 4, i32 11309}
!639 = !{!"branch_weights", i32 0, i32 0, i32 1227078, i32 482068791, i32 21109296}
!640 = !{!"branch_weights", i32 0, i32 21109296}
!641 = !{!"branch_weights", i32 459554423, i32 44850742}
!642 = !{!"branch_weights", i32 0, i32 459554423}
!643 = !{!"branch_weights", i32 24170980, i32 20679762}
!644 = !{!"branch_weights", i32 110789, i32 20568973}
!645 = !{!"branch_weights", i32 20545859, i32 23114}
!646 = !{!"branch_weights", i32 0, i32 110789}
!647 = !{!"branch_weights", i32 97988, i32 12801}
!648 = !{!"branch_weights", i32 6400, i32 6401}
!649 = !{!"branch_weights", i32 23288078, i32 882902}
!650 = !{!"branch_weights", i32 23288078, i32 0}
!651 = !{!"branch_weights", i32 24156873, i32 14107}
!652 = !{!"branch_weights", i32 0, i32 14107}
!653 = !{!"branch_weights", i32 14107, i32 0}
!654 = !{!"branch_weights", i32 677315, i32 23493665}
!655 = !{!"branch_weights", i32 1049714, i32 23121266}
!656 = !{!"branch_weights", i32 882902, i32 23288078}
!657 = !{!"branch_weights", i32 5570, i32 877332}
!658 = !{!"branch_weights", i32 0, i32 877332}
!659 = !{!"branch_weights", i32 0, i32 5570}
!660 = !{!"branch_weights", i32 5570, i32 0}
!661 = !{!"branch_weights", i32 863225, i32 14107}
!662 = !{!"branch_weights", i32 1044144, i32 22243934}
!663 = !{!"branch_weights", i32 0, i32 22243934}
!664 = !{!"branch_weights", i32 23286485, i32 1593}
!665 = !{!"branch_weights", i32 1585, i32 8}
!666 = !{!"branch_weights", i32 24170980, i32 0}
!667 = !{!"branch_weights", i32 97988, i32 44752754, i32 459554423}
!668 = !{!"function_entry_count", i64 21377025}
!669 = !{!"branch_weights", i32 0, i32 21377025}
!670 = !{!671, !186, i64 24}
!671 = !{!"loop", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !180, i64 40, !180, i64 48, !180, i64 56, !180, i64 64, !180, i64 72}
!672 = !{!"branch_weights", i32 83225, i32 21293800}
!673 = !{!"branch_weights", i32 83225, i32 0}
!674 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 21377025}
!675 = !{!"branch_weights", i32 20594483, i32 782542}
!676 = !{!"branch_weights", i32 21377025, i32 0}
!677 = !{!"branch_weights", i32 782542, i32 0}
!678 = !{!"branch_weights", i32 21243454, i32 133571}
!679 = !{!"branch_weights", i32 20994713, i32 248741}
!680 = !{!"branch_weights", i32 0, i32 248741}
!681 = !{!"branch_weights", i32 21243454, i32 0}
!682 = !{!"branch_weights", i32 0, i32 21243454}
!683 = !{!"branch_weights", i32 21228620, i32 14834}
!684 = !{!"function_entry_count", i64 3834864}
!685 = !{!"branch_weights", i32 1200767, i32 2634097}
!686 = !{!"branch_weights", i32 3834864, i32 0}
!687 = !{!"branch_weights", i32 2890242, i32 944622}
!688 = !{!"branch_weights", i32 592732, i32 2297510}
!689 = !{!"branch_weights", i32 0, i32 592732}
!690 = !{!"branch_weights", i32 0, i32 3834864}
!691 = !{!"branch_weights", i32 3609310, i32 225554}
!692 = !{!"branch_weights", i32 3149726, i32 685138}
!693 = !{!"branch_weights", i32 685138, i32 0}
!694 = !{!"VP", i32 0, i64 3834864, i64 -3424362592893684620, i64 3834864}
!695 = !{!"branch_weights", i32 2430699, i32 1404165}
!696 = !{!"branch_weights", i32 2430699, i32 0}
!697 = !{!"branch_weights", i32 0, i32 2430699}
!698 = !{!"branch_weights", i32 550696, i32 853469}
!699 = !{!"branch_weights", i32 853469, i32 0}
!700 = !{!"branch_weights", i32 853453, i32 16}
!701 = !{!"branch_weights", i32 0, i32 16}
!702 = !{!"branch_weights", i32 853039, i32 551126}
!703 = !{!520, !186, i64 72}
!704 = !{!"branch_weights", i32 31013, i32 520113}
!705 = !{!"branch_weights", i32 508658, i32 11455}
!706 = !{!"branch_weights", i32 11455, i32 0}
!707 = !{!"branch_weights", i32 512690, i32 7423}
!708 = !{!"branch_weights", i32 512690, i32 0}
!709 = !{!"branch_weights", i32 79384, i32 433306}
!710 = !{!"branch_weights", i32 0, i32 79384}
!711 = !{!"branch_weights", i32 79239, i32 145}
!712 = !{!"branch_weights", i32 69258, i32 9981}
!713 = !{!"branch_weights", i32 64653, i32 4605}
!714 = !{!"VP", i32 1, i64 4605, i64 1, i64 4605}
!715 = !{!"branch_weights", i32 0, i32 69258}
!716 = !{!"branch_weights", i32 158, i32 9823}
!717 = !{!"VP", i32 1, i64 158, i64 1, i64 158}
!718 = !{!"branch_weights", i32 9810, i32 171}
!719 = !{!"VP", i32 1, i64 171, i64 1, i64 171}
!720 = !{!"branch_weights", i32 0, i32 421}
!721 = !{!"branch_weights", i32 212, i32 209}
!722 = !{!"branch_weights", i32 209, i32 0}
!723 = !{!"branch_weights", i32 177, i32 244}
!724 = !{!"VP", i32 1, i64 244, i64 1, i64 244}
!725 = !{!"VP", i32 0, i64 421, i64 -3424362592893684620, i64 421}
!726 = !{!"branch_weights", i32 145, i32 276}
!727 = distinct !{!727, !301, !302}
!728 = !{!"branch_weights", i32 16, i32 129}
!729 = !{!"VP", i32 1, i64 129, i64 1, i64 129}
!730 = !{!"branch_weights", i32 0, i32 145}
!731 = !{!"branch_weights", i32 891475, i32 0}
!732 = !{!"branch_weights", i32 1324781, i32 0}
!733 = !{!"branch_weights", i32 0, i32 1324781}
!734 = !{!"branch_weights", i32 550696, i32 774085}
!735 = !{!194, !187, i64 36}
!736 = !{!"branch_weights", i32 550696, i32 0}
!737 = !{!"branch_weights", i32 0, i32 550696}
!738 = !{!"branch_weights", i32 0, i32 1012536}
!739 = !{!"branch_weights", i32 1008920, i32 3616}
!740 = !{!520, !180, i64 128}
!741 = !{!"branch_weights", i32 870, i32 2746}
!742 = !{!"branch_weights", i32 1012536, i32 0}
!743 = !{!"branch_weights", i32 238451, i32 774085}
!744 = !{!"branch_weights", i32 556149, i32 217936}
!745 = !{!"branch_weights", i32 238451, i32 0}
!746 = !{!"branch_weights", i32 608465, i32 404071}
!747 = !{!"VP", i32 0, i64 404071, i64 -3424362592893684620, i64 404071}
!748 = !{!"branch_weights", i32 165620, i32 238451}
!749 = distinct !{!749, !301, !302}
!750 = !{!"branch_weights", i32 774085, i32 0}
!751 = !{!"branch_weights", i32 2746, i32 771339}
!752 = !{!"branch_weights", i32 0, i32 2746}
!753 = !{!"branch_weights", i32 2746, i32 0}
!754 = !{!"branch_weights", i32 542650, i32 310819}
!755 = !{!"branch_weights", i32 0, i32 853469}
!756 = !{!"function_entry_count", i64 20491336}
!757 = !{!"branch_weights", i32 0, i32 20491336}
!758 = !{!"branch_weights", i32 20491336, i32 0}
!759 = !{!"branch_weights", i32 532, i32 20490804}
!760 = !{!"branch_weights", i32 0, i32 20490804}
!761 = !{!"branch_weights", i32 13835, i32 20476969}
!762 = !{!"branch_weights", i32 0, i32 532}
!763 = !{!"branch_weights", i32 20477501, i32 13835}
!764 = !{!"branch_weights", i32 104, i32 20491232}
!765 = !{!"branch_weights", i32 7027, i32 20484309}
!766 = !{!"branch_weights", i32 16, i32 7011}
!767 = !{!"branch_weights", i32 0, i32 52, i32 6975}
!768 = !{!"branch_weights", i32 52, i32 0}
!769 = !{!"branch_weights", i32 20484309, i32 0}
!770 = !{!"branch_weights", i32 0, i32 20484309}
!771 = !{!"function_entry_count", i64 2611140}
!772 = !{!"branch_weights", i32 2611084, i32 56}
!773 = !{!"branch_weights", i32 191682, i32 1626523, i32 792879}
!774 = !{!"branch_weights", i32 1, i32 792878}
!775 = !{!"branch_weights", i32 0, i32 1626523}
!776 = !{!"branch_weights", i32 44464, i32 1582059}
!777 = !{!"branch_weights", i32 44464, i32 0}
!778 = !{!"branch_weights", i32 0, i32 44464}
!779 = !{!"branch_weights", i32 1510517, i32 71542}
!780 = !{!"branch_weights", i32 71542, i32 0}
!781 = !{!"branch_weights", i32 2257943, i32 27826}
!782 = !{!"branch_weights", i32 27826, i32 0}
!783 = !{!"branch_weights", i32 792878, i32 1492891}
!784 = distinct !{!784, !301, !302}
!785 = !{!"branch_weights", i32 2611084, i32 0}
!786 = !{!"branch_weights", i32 35, i32 2611049}
!787 = !{!"branch_weights", i32 0, i32 2611049}
!788 = !{!"branch_weights", i32 2611049, i32 0}
!789 = !{!"branch_weights", i32 2611005, i32 44}
!790 = !{!"branch_weights", i32 1, i32 43}
!791 = !{!314, !180, i64 32}
!792 = !{!"branch_weights", i32 0, i32 2611084}
!793 = !{!"branch_weights", i32 2565556, i32 45528}
!794 = !{!"branch_weights", i32 45528, i32 2565556}
!795 = !{!"branch_weights", i32 2565556, i32 0}
!796 = !{!"function_entry_count", i64 3605948}
!797 = !{!"branch_weights", i32 0, i32 3605948}
!798 = !{!"branch_weights", i32 2703081, i32 902867}
!799 = !{!206, !187, i64 24}
!800 = !{!"branch_weights", i32 2703081, i32 0}
!801 = !{!"branch_weights", i32 0, i32 2703081}
!802 = !{!"branch_weights", i32 183660, i32 0, i32 0, i32 0, i32 0, i32 719207}
!803 = !{!"branch_weights", i32 3, i32 183657}
!804 = !{!"branch_weights", i32 183657, i32 0}
!805 = !{!"branch_weights", i32 90985, i32 92672}
!806 = !{!"branch_weights", i32 92672, i32 0}
!807 = !{!"branch_weights", i32 90985, i32 0}
!808 = !{!526, !187, i64 12}
!809 = !{!"branch_weights", i32 0, i32 3605945}
!810 = !{!"loop_header_weight", i64 3605945}
!811 = !{!222, !180, i64 0}
!812 = !{!813, !187, i64 4}
!813 = !{!"hek", !187, i64 0, !187, i64 4, !181, i64 8}
!814 = !{!"loop_header_weight", i64 0}
!815 = !{!"branch_weights", i32 3605945, i32 0}
!816 = !{!"branch_weights", i32 74856, i32 3531089}
!817 = !{!"branch_weights", i32 3063069, i32 542876}
!818 = !{!"branch_weights", i32 3063069, i32 0}
!819 = !{!"branch_weights", i32 74856, i32 2988213}
!820 = !{!"branch_weights", i32 74856, i32 0}
!821 = !{!"branch_weights", i32 3011141, i32 51928}
!822 = !{!"branch_weights", i32 51928, i32 3011141}
!823 = !{!824, !180, i64 8}
!824 = !{!"padlist", !186, i64 0, !180, i64 8, !187, i64 16, !187, i64 20}
!825 = !{!"branch_weights", i32 390288, i32 2672781}
!826 = !{!"branch_weights", i32 2672781, i32 0}
!827 = !{!312, !187, i64 8}
!828 = !{!"branch_weights", i32 188, i32 2672593}
!829 = !{!"VP", i32 1, i64 2672781, i64 8, i64 1663409, i64 16, i64 374521, i64 17, i64 362068, i64 32, i64 158273}
!830 = !{!"branch_weights", i32 1, i32 2672780}
!831 = !{!"branch_weights", i32 0, i32 4681876}
!832 = !{!"branch_weights", i32 4491807, i32 190069}
!833 = !{!"branch_weights", i32 2672780, i32 2009096}
!834 = distinct !{!834, !301, !302}
!835 = !{!"branch_weights", i32 0, i32 3063069}
!836 = !{!"branch_weights", i32 0, i32 542876}
!837 = !{!"branch_weights", i32 34, i32 542842}
!838 = !{!"branch_weights", i32 0, i32 34}
!839 = !{!"branch_weights", i32 34, i32 0}
!840 = distinct !{!840, !301, !302}
!841 = !{!"branch_weights", i32 1, i32 542841}
!842 = !{!"branch_weights", i32 0, i32 567748}
!843 = !{!"branch_weights", i32 542914, i32 24834}
!844 = !{!"branch_weights", i32 542841, i32 24907}
!845 = distinct !{!845, !301, !302}
!846 = !{!"branch_weights", i32 542876, i32 0}
!847 = !{!"VP", i32 0, i64 542876, i64 3281225010484631226, i64 517908, i64 8316829708251162022, i64 12800, i64 -1915777483130180353, i64 12034}
!848 = !{!"branch_weights", i32 537178, i32 5698}
!849 = !{!"branch_weights", i32 537178, i32 0}
!850 = !{!"function_entry_count", i64 0}
!851 = !{!"function_entry_count", i64 396077}
!852 = !{!"branch_weights", i32 342149, i32 53928}
!853 = !{!"branch_weights", i32 251510, i32 144567}
!854 = !{!"branch_weights", i32 251510, i32 0}
!855 = !{!"branch_weights", i32 0, i32 396077}
!856 = !{!"branch_weights", i32 396077, i32 0}
!857 = !{!"branch_weights", i32 144567, i32 251510}
!858 = !{!"branch_weights", i32 0, i32 144567}
!859 = !{!"branch_weights", i32 144567, i32 0}
!860 = !{!"branch_weights", i32 5570, i32 390507}
!861 = !{!"function_entry_count", i64 718986}
!862 = !{!"pp_hot.c;S_opmethod_stash"}
!863 = !{!"branch_weights", i32 0, i32 718986}
!864 = !{!"branch_weights", i32 718986, i32 0}
!865 = !{!"loop_header_weight", i64 718986}
!866 = !{!"branch_weights", i32 693959, i32 25027}
!867 = !{!"branch_weights", i32 25027, i32 0}
!868 = !{!"branch_weights", i32 52, i32 24975}
!869 = !{!"branch_weights", i32 52, i32 693959}
!870 = !{!"branch_weights", i32 0, i32 693959}
!871 = !{!"function_entry_count", i64 718982}
!872 = !{!"branch_weights", i32 718982, i32 0}
!873 = !{!"branch_weights", i32 21, i32 718961}
!874 = !{!"branch_weights", i32 718961, i32 0}
!875 = !{!"branch_weights", i32 5, i32 718956}
!876 = !{!"branch_weights", i32 706137, i32 12819}
!877 = !{!599, !180, i64 32}
!878 = !{!"branch_weights", i32 0, i32 12819}
!879 = !{!880, !187, i64 24}
!880 = !{!"mro_meta", !180, i64 0, !180, i64 8, !180, i64 16, !187, i64 24, !187, i64 28, !180, i64 32, !180, i64 40, !180, i64 48, !187, i64 56}
!881 = !{!"branch_weights", i32 12819, i32 0}
!882 = !{!"branch_weights", i32 0, i32 718956}
!883 = !{!"branch_weights", i32 26, i32 718956}
!884 = !{!"branch_weights", i32 0, i32 26}
!885 = !{!"branch_weights", i32 23, i32 3}
!886 = !{!284, !180, i64 40}
!887 = !{!880, !180, i64 48}
!888 = !{!889, !180, i64 48}
!889 = !{!"methop", !180, i64 0, !180, i64 8, !180, i64 16, !186, i64 24, !187, i64 32, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !187, i64 33, !181, i64 34, !181, i64 35, !181, i64 40, !180, i64 48}
