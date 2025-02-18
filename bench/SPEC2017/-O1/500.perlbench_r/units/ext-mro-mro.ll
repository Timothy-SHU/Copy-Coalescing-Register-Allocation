; ModuleID = 'ext/mro/mro.c'
source_filename = "ext/mro/mro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mro_alg = type { ptr, ptr, i16, i16, i32 }
%struct.sv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%union._xmgu = type { ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.he = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.5 }
%union.anon.5 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.15, ptr, %union.anon.16, %union.anon.17, %union.anon.18, ptr, %union.anon.19, ptr, i32, i32, i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }

@.str = private unnamed_addr constant [14 x i8] c"ext/mro/mro.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"mro::get_linear_isa\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mro::set_mro\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"mro::get_mro\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"mro::get_isarev\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mro::is_universal\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"mro::invalidate_all_method_caches\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"mro::get_pkg_gen\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"mro::_nextcan\00", align 1
@c3_alg = internal constant %struct.mro_alg { ptr @S_mro_get_linear_isa_c3, ptr @.str.34, i16 2, i16 0, i32 0 }, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"classname [, type ]\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Invalid mro name: '%-p'\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"classname, type\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Cannot create class: '%-p'!\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dfs\00", align 1
@PL_isarev = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"next::method/next::can/maybe::next::method must be used in method context\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [72 x i8] c"next::method/next::can/maybe::next::method cannot find enclosing method\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"__ANON__\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.25 = private unnamed_addr constant [36 x i8] c"No next::method '%-p' found for %2p\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Can't locate package %-p for @%2p::ISA\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Can't linearize anonymous symbol table\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"Recursive inheritance detected in package '%2p'\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@.str.30 = private unnamed_addr constant [81 x i8] c"Inconsistent hierarchy during C3 merge of class '%2p':\0A\09current merge results [\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"\09\09%-p,\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"\09]\0A\09merging failed on '%-p'\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%-p\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"c3\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_mro(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_mro_get_linear_isa, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_mro_set_mro, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_mro_get_mro, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_mro_get_isarev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_mro_is_universal, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_mro_invalidate_all_method_caches, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #5
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_mro_get_pkg_gen, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_mro__nextcan) #5
  tail call void @Perl_mro_register(ptr noundef nonnull @c3_alg) #5
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_get_linear_isa(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #5
  br label %18

18:                                               ; preds = %1, %17
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call ptr @Perl_gv_stashsv(ptr noundef %22, i32 noundef 0) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %27 = tail call ptr @Perl_newSVsv(ptr noundef %22) #5
  tail call void @Perl_av_push(ptr noundef %26, ptr noundef %27) #5
  %28 = tail call ptr @Perl_newRV_noinc(ptr noundef %26) #5
  %29 = tail call ptr @Perl_sv_2mortal(ptr noundef %28) #5
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 %20
  store ptr %29, ptr %31, align 8, !tbaa !35
  br label %60

32:                                               ; preds = %18
  %33 = icmp sgt i32 %14, 1
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %36 = add nsw i32 %5, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = tail call ptr @Perl_mro_get_from_name(ptr noundef %39) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 %37
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %45) #5
  br label %46

46:                                               ; preds = %42, %34
  %47 = load ptr, ptr %40, align 8, !tbaa !41
  %48 = tail call ptr %47(ptr noundef nonnull %23, i32 noundef 0) #5
  br label %51

49:                                               ; preds = %32
  %50 = tail call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %23) #5
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %48, %46 ], [ %50, %49 ]
  %53 = tail call ptr @Perl_newRV(ptr noundef %52) #5
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 %20
  store ptr %53, ptr %55, align 8, !tbaa !35
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %57 = getelementptr inbounds ptr, ptr %56, i64 %20
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = tail call ptr @Perl_sv_2mortal(ptr noundef %58) #5
  br label %60

60:                                               ; preds = %25, %51
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 %20
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_set_mro(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.16) #5
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = tail call ptr @Perl_gv_stashsv(ptr noundef %20, i32 noundef 1) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, ptr noundef %20) #5
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.hv, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = load ptr, ptr %21, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !47
  %30 = getelementptr ptr, ptr %26, i64 %29
  %31 = getelementptr ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %21) #5
  br label %36

36:                                               ; preds = %24, %34
  %37 = phi ptr [ %35, %34 ], [ %32, %24 ]
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %39 = getelementptr ptr, ptr %38, i64 %8
  %40 = getelementptr ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  tail call void @Perl_mro_set_mro(ptr noundef %37, ptr noundef %41) #5
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 %18
  %44 = getelementptr inbounds ptr, ptr %43, i64 -1
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_get_mro(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = tail call ptr @Perl_gv_stashsv(ptr noundef %20, i32 noundef 0) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hv, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = load ptr, ptr %21, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !47
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %21) #5
  br label %35

35:                                               ; preds = %23, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %23 ]
  %37 = getelementptr inbounds %struct.mro_meta, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.mro_alg, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = getelementptr inbounds %struct.mro_alg, ptr %38, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !55
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds %struct.mro_alg, ptr %38, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !56
  %46 = and i16 %45, 1
  %47 = zext nneg i16 %46 to i32
  %48 = shl nuw nsw i32 %47, 29
  %49 = or disjoint i32 %48, 524288
  %50 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %40, i64 noundef %43, i32 noundef %49) #5
  br label %53

51:                                               ; preds = %16
  %52 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.19, i64 noundef 3, i32 noundef 524288) #5
  br label %53

53:                                               ; preds = %35, %51
  %54 = phi ptr [ %50, %35 ], [ %52, %51 ]
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  store ptr %54, ptr %56, align 8, !tbaa !35
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 %18
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_get_isarev(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = load ptr, ptr @PL_isarev, align 8, !tbaa !35
  %25 = tail call ptr @Perl_hv_common(ptr noundef %24, ptr noundef %23, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi ptr [ %29, %27 ], [ null, %19 ]
  %32 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %33 = icmp eq ptr %31, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %31) #5
  %36 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %31, i32 noundef 0) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %42, %38 ], [ %36, %34 ]
  %40 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %39) #5
  %41 = tail call ptr @Perl_newSVsv(ptr noundef %40) #5
  tail call void @Perl_av_push(ptr noundef %32, ptr noundef %41) #5
  %42 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %31, i32 noundef 0) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38, !llvm.loop !57

44:                                               ; preds = %38, %34, %30
  %45 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %15 to i64
  %48 = sub i64 %46, %47
  %49 = icmp slt i64 %48, 8
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #5
  br label %52

52:                                               ; preds = %44, %50
  %53 = phi ptr [ %51, %50 ], [ %15, %44 ]
  %54 = tail call ptr @Perl_newRV_noinc(ptr noundef %32) #5
  %55 = tail call ptr @Perl_sv_2mortal(ptr noundef %54) #5
  %56 = getelementptr inbounds ptr, ptr %53, i64 1
  store ptr %55, ptr %56, align 8, !tbaa !35
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_is_universal(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !39
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !60
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !63
  store i64 %29, ptr %2, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  br label %34

32:                                               ; preds = %17
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = load ptr, ptr @PL_isarev, align 8, !tbaa !35
  %37 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef %21, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.he, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  br label %42

42:                                               ; preds = %34, %39
  %43 = phi ptr [ %41, %39 ], [ null, %34 ]
  %44 = load i64, ptr %2, align 8, !tbaa !65
  %45 = icmp eq i64 %44, 9
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(10) @.str.20) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %42
  %50 = icmp eq ptr %43, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %43, ptr noundef nonnull @.str.20, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %51
  br label %55

55:                                               ; preds = %51, %46, %54
  %56 = phi ptr [ @PL_sv_no, %54 ], [ @PL_sv_yes, %46 ], [ @PL_sv_yes, %51 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 %19
  store ptr %56, ptr %58, align 8, !tbaa !35
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 %19
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_invalidate_all_method_caches(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, ptr @PL_sub_generation, align 4, !tbaa !39
  %17 = add i32 %16, 1
  store i32 %17, ptr @PL_sub_generation, align 4, !tbaa !39
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = getelementptr ptr, ptr %18, i64 %7
  store ptr %19, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro_get_pkg_gen(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #5
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = tail call ptr @Perl_gv_stashsv(ptr noundef %23, i32 noundef 0) #5
  %25 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %15 to i64
  %28 = sub i64 %26, %27
  %29 = icmp slt i64 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #5
  br label %32

32:                                               ; preds = %19, %30
  %33 = phi ptr [ %31, %30 ], [ %15, %19 ]
  %34 = tail call ptr @Perl_sv_newmortal() #5
  %35 = getelementptr inbounds ptr, ptr %33, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !35
  %36 = icmp eq ptr %24, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hv, ptr %24, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = load ptr, ptr %24, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.xpvhv, ptr %40, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !47
  %43 = getelementptr ptr, ptr %39, i64 %42
  %44 = getelementptr ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %24) #5
  br label %49

49:                                               ; preds = %37, %47
  %50 = phi ptr [ %48, %47 ], [ %45, %37 ]
  %51 = getelementptr inbounds %struct.mro_meta, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !66
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %32, %49
  %55 = phi i64 [ %53, %49 ], [ 0, %32 ]
  tail call void @Perl_sv_setiv(ptr noundef %34, i64 noundef %55) #5
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_mro__nextcan(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = shl i64 %12, 29
  %14 = ashr i64 %13, 32
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds ptr, ptr %2, i64 %15
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr ptr, ptr %9, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.xpviv, ptr %22, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !44
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = tail call i32 @Perl_sv_isobject(ptr noundef %19) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  br label %40

38:                                               ; preds = %1
  %39 = tail call ptr @Perl_gv_stashsv(ptr noundef %19, i32 noundef 1) #5
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi ptr [ %37, %33 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !72
  %44 = and i32 %43, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = load ptr, ptr %41, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.xpvhv, ptr %49, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !47
  %52 = getelementptr ptr, ptr %48, i64 %51
  %53 = getelementptr ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %52, i64 36
  %58 = load i32, ptr %57, align 4, !tbaa !73
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %54, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %46, %40
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.21) #5
  br label %64

64:                                               ; preds = %56, %60, %63
  br label %65

65:                                               ; preds = %64, %293
  %66 = phi i32 [ %294, %293 ], [ %28, %64 ]
  %67 = phi ptr [ %129, %293 ], [ %30, %64 ]
  %68 = phi ptr [ %128, %293 ], [ %26, %64 ]
  %69 = phi ptr [ %290, %293 ], [ null, %64 ]
  %70 = phi ptr [ %289, %293 ], [ null, %64 ]
  %71 = phi i8 [ %288, %293 ], [ 0, %64 ]
  %72 = phi i64 [ %287, %293 ], [ undef, %64 ]
  %73 = phi ptr [ %286, %293 ], [ undef, %64 ]
  %74 = phi i64 [ %284, %293 ], [ undef, %64 ]
  %75 = phi i32 [ %295, %293 ], [ 0, %64 ]
  %76 = icmp sgt i32 %66, -1
  br i1 %76, label %77, label %87

77:                                               ; preds = %65, %84
  %78 = phi i32 [ %85, %84 ], [ %66, %65 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds %struct.context, ptr %67, i64 %79
  %81 = load i8, ptr %80, align 8, !tbaa !44
  %82 = and i8 %81, 15
  %83 = icmp eq i8 %82, 8
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = add nsw i32 %78, -1
  %86 = icmp sgt i32 %78, 0
  br i1 %86, label %77, label %87, !llvm.loop !74

87:                                               ; preds = %77, %84, %65
  %88 = phi i32 [ %66, %65 ], [ %78, %77 ], [ -1, %84 ]
  br label %89

89:                                               ; preds = %87, %283
  %90 = phi i64 [ %284, %283 ], [ %74, %87 ]
  %91 = phi ptr [ %286, %283 ], [ %73, %87 ]
  %92 = phi i64 [ %287, %283 ], [ %72, %87 ]
  %93 = phi i8 [ %288, %283 ], [ %71, %87 ]
  %94 = phi ptr [ %289, %283 ], [ %70, %87 ]
  %95 = phi ptr [ %290, %283 ], [ %69, %87 ]
  %96 = phi ptr [ %128, %283 ], [ %68, %87 ]
  %97 = phi ptr [ %129, %283 ], [ %67, %87 ]
  %98 = phi i32 [ %291, %283 ], [ %88, %87 ]
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %89, %124
  %101 = phi ptr [ %108, %124 ], [ %96, %89 ]
  %102 = getelementptr inbounds %struct.stackinfo, ptr %101, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !75
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22) #5
  br label %106

106:                                              ; preds = %105, %100
  %107 = getelementptr inbounds %struct.stackinfo, ptr %101, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  %109 = getelementptr inbounds %struct.stackinfo, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  %111 = getelementptr inbounds %struct.stackinfo, ptr %108, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !67
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %124

114:                                              ; preds = %106, %121
  %115 = phi i32 [ %122, %121 ], [ %112, %106 ]
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds %struct.context, ptr %110, i64 %116
  %118 = load i8, ptr %117, align 8, !tbaa !44
  %119 = and i8 %118, 15
  %120 = icmp eq i8 %119, 8
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = add nsw i32 %115, -1
  %123 = icmp sgt i32 %115, 0
  br i1 %123, label %114, label %124, !llvm.loop !74

124:                                              ; preds = %114, %121, %106
  %125 = phi i32 [ %112, %106 ], [ %115, %114 ], [ -1, %121 ]
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %100, label %127, !llvm.loop !77

127:                                              ; preds = %124, %89
  %128 = phi ptr [ %96, %89 ], [ %108, %124 ]
  %129 = phi ptr [ %97, %89 ], [ %110, %124 ]
  %130 = phi i32 [ %98, %89 ], [ %125, %124 ]
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds %struct.context, ptr %129, i64 %131
  %133 = load i8, ptr %132, align 8, !tbaa !44
  %134 = and i8 %133, 15
  %135 = icmp eq i8 %134, 8
  br i1 %135, label %136, label %149

136:                                              ; preds = %127
  %137 = load ptr, ptr @PL_DBsub, align 8, !tbaa !35
  %138 = icmp eq ptr %137, null
  br i1 %138, label %165, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !44
  %142 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !78
  %144 = icmp eq ptr %143, null
  br i1 %144, label %165, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.block, ptr %132, i64 0, i32 8, i32 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !44
  %148 = icmp eq ptr %147, %143
  br i1 %148, label %149, label %165

149:                                              ; preds = %145, %127
  %150 = add nsw i32 %130, -1
  %151 = icmp eq i32 %130, 0
  br i1 %151, label %283, label %152, !llvm.loop !80

152:                                              ; preds = %149
  %153 = tail call i32 @llvm.smin.i32(i32 %150, i32 0)
  %154 = add i32 %153, -1
  br label %158

155:                                              ; preds = %158
  %156 = add nsw i32 %159, -1
  %157 = icmp sgt i32 %159, 0
  br i1 %157, label %158, label %283, !llvm.loop !74

158:                                              ; preds = %152, %155
  %159 = phi i32 [ %156, %155 ], [ %150, %152 ]
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds %struct.context, ptr %129, i64 %160
  %162 = load i8, ptr %161, align 8, !tbaa !44
  %163 = and i8 %162, 15
  %164 = icmp eq i8 %163, 8
  br i1 %164, label %283, label %155, !llvm.loop !80

165:                                              ; preds = %145, %139, %136
  %166 = zext nneg i32 %130 to i64
  br label %167

167:                                              ; preds = %171, %165
  %168 = phi i64 [ %172, %171 ], [ %166, %165 ]
  %169 = trunc i64 %168 to i32
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = add nsw i64 %168, -1
  %173 = and i64 %172, 4294967295
  %174 = getelementptr inbounds %struct.context, ptr %129, i64 %173
  %175 = load i8, ptr %174, align 8, !tbaa !44
  %176 = and i8 %175, 15
  %177 = icmp eq i8 %176, 8
  br i1 %177, label %178, label %167, !llvm.loop !74

178:                                              ; preds = %171
  %179 = trunc i64 %172 to i32
  br label %180

180:                                              ; preds = %167, %178
  %181 = phi i32 [ %179, %178 ], [ -1, %167 ]
  br i1 %138, label %199, label %182

182:                                              ; preds = %180
  %183 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !44
  %185 = getelementptr inbounds %struct.gp, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !78
  %187 = icmp ne ptr %186, null
  %188 = and i1 %170, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = zext nneg i32 %181 to i64
  %191 = getelementptr inbounds %struct.context, ptr %129, i64 %190
  %192 = getelementptr inbounds %struct.block, ptr %191, i64 0, i32 8, i32 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !44
  %194 = icmp eq ptr %193, %186
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i8, ptr %191, align 8, !tbaa !44
  %197 = and i8 %196, 15
  %198 = icmp eq i8 %197, 8
  br i1 %198, label %199, label %200, !llvm.loop !80

199:                                              ; preds = %195, %189, %182, %180
  br label %200

200:                                              ; preds = %195, %199
  %201 = phi i1 [ true, %199 ], [ false, %195 ]
  %202 = phi i32 [ 0, %199 ], [ 6, %195 ]
  %203 = phi i32 [ %130, %199 ], [ %181, %195 ]
  br i1 %201, label %204, label %283

204:                                              ; preds = %200
  %205 = zext nneg i32 %203 to i64
  %206 = getelementptr inbounds %struct.context, ptr %129, i64 %205, i32 0, i32 0, i32 8
  %207 = load ptr, ptr %206, align 8, !tbaa !44
  %208 = load ptr, ptr %207, align 8, !tbaa !81
  %209 = getelementptr inbounds %struct.xpvcv, ptr %208, i64 0, i32 12
  %210 = load i32, ptr %209, align 4, !tbaa !83
  %211 = and i32 %210, 32768
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %204
  %214 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %207) #5
  br label %218

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.xpvcv, ptr %208, i64 0, i32 7
  %217 = load ptr, ptr %216, align 8, !tbaa !44
  br label %218

218:                                              ; preds = %213, %215
  %219 = phi ptr [ %214, %213 ], [ %217, %215 ]
  %220 = getelementptr inbounds %struct.gv, ptr %219, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !85
  %222 = and i32 %221, 255
  %223 = icmp eq i32 %222, 9
  br i1 %223, label %237, label %224

224:                                              ; preds = %218
  %225 = add nsw i32 %203, -1
  %226 = icmp sgt i32 %203, 0
  br i1 %226, label %230, label %283, !llvm.loop !80

227:                                              ; preds = %230
  %228 = add nsw i32 %231, -1
  %229 = icmp sgt i32 %231, 0
  br i1 %229, label %230, label %283, !llvm.loop !74

230:                                              ; preds = %224, %227
  %231 = phi i32 [ %228, %227 ], [ %225, %224 ]
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds %struct.context, ptr %129, i64 %232
  %234 = load i8, ptr %233, align 8, !tbaa !44
  %235 = and i8 %234, 15
  %236 = icmp eq i8 %235, 8
  br i1 %236, label %283, label %227, !llvm.loop !80

237:                                              ; preds = %218
  %238 = tail call ptr @Perl_sv_newmortal() #5
  tail call void @Perl_gv_efullname4(ptr noundef %238, ptr noundef %219, ptr noundef null, i1 noundef zeroext true) #5
  %239 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !60
  %241 = and i32 %240, 1024
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !44
  %246 = load ptr, ptr %238, align 8, !tbaa !62
  %247 = getelementptr inbounds %struct.xpv, ptr %246, i64 0, i32 2
  %248 = load i64, ptr %247, align 8, !tbaa !63
  %249 = lshr i32 %240, 29
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %245, i32 noundef 58) #6
  br label %253

253:                                              ; preds = %237, %243
  %254 = phi i64 [ %248, %243 ], [ %90, %237 ]
  %255 = phi i8 [ %251, %243 ], [ %93, %237 ]
  %256 = phi ptr [ %252, %243 ], [ null, %237 ]
  %257 = phi ptr [ %245, %243 ], [ %95, %237 ]
  %258 = icmp eq ptr %256, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23) #5
  br label %260

260:                                              ; preds = %259, %253
  %261 = getelementptr inbounds i8, ptr %256, i64 1
  %262 = ptrtoint ptr %261 to i64
  %263 = ptrtoint ptr %257 to i64
  %264 = sub i64 %263, %262
  %265 = add i64 %264, %254
  %266 = icmp eq i64 %265, 8
  br i1 %266, label %267, label %283

267:                                              ; preds = %260
  %268 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %261, ptr noundef nonnull dereferenceable(9) @.str.24) #6
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = add nsw i32 %203, -1
  %272 = icmp sgt i32 %203, 0
  br i1 %272, label %276, label %283, !llvm.loop !80

273:                                              ; preds = %276
  %274 = add nsw i32 %277, -1
  %275 = icmp sgt i32 %277, 0
  br i1 %275, label %276, label %283, !llvm.loop !74

276:                                              ; preds = %270, %273
  %277 = phi i32 [ %274, %273 ], [ %271, %270 ]
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds %struct.context, ptr %129, i64 %278
  %280 = load i8, ptr %279, align 8, !tbaa !44
  %281 = and i8 %280, 15
  %282 = icmp eq i8 %281, 8
  br i1 %282, label %283, label %273, !llvm.loop !80

283:                                              ; preds = %155, %158, %227, %230, %273, %276, %149, %224, %270, %260, %267, %200
  %284 = phi i64 [ %90, %200 ], [ %254, %267 ], [ %254, %260 ], [ %254, %270 ], [ %90, %224 ], [ %90, %149 ], [ %254, %276 ], [ %254, %273 ], [ %90, %230 ], [ %90, %227 ], [ %90, %158 ], [ %90, %155 ]
  %285 = phi i32 [ %202, %200 ], [ 5, %267 ], [ 5, %260 ], [ 6, %270 ], [ 6, %224 ], [ 6, %149 ], [ 6, %276 ], [ 6, %273 ], [ 6, %230 ], [ 6, %227 ], [ 6, %158 ], [ 6, %155 ]
  %286 = phi ptr [ %91, %200 ], [ %238, %267 ], [ %238, %260 ], [ %238, %270 ], [ %91, %224 ], [ %91, %149 ], [ %238, %276 ], [ %238, %273 ], [ %91, %230 ], [ %91, %227 ], [ %91, %158 ], [ %91, %155 ]
  %287 = phi i64 [ %92, %200 ], [ %265, %267 ], [ %265, %260 ], [ 8, %270 ], [ %92, %224 ], [ %92, %149 ], [ 8, %276 ], [ 8, %273 ], [ %92, %230 ], [ %92, %227 ], [ %92, %158 ], [ %92, %155 ]
  %288 = phi i8 [ %93, %200 ], [ %255, %267 ], [ %255, %260 ], [ %255, %270 ], [ %93, %224 ], [ %93, %149 ], [ %255, %276 ], [ %255, %273 ], [ %93, %230 ], [ %93, %227 ], [ %93, %158 ], [ %93, %155 ]
  %289 = phi ptr [ %94, %200 ], [ %261, %267 ], [ %261, %260 ], [ %261, %270 ], [ %94, %224 ], [ %94, %149 ], [ %261, %276 ], [ %261, %273 ], [ %94, %230 ], [ %94, %227 ], [ %94, %158 ], [ %94, %155 ]
  %290 = phi ptr [ %95, %200 ], [ %257, %267 ], [ %257, %260 ], [ %257, %270 ], [ %95, %224 ], [ %95, %149 ], [ %257, %276 ], [ %257, %273 ], [ %95, %230 ], [ %95, %227 ], [ %95, %158 ], [ %95, %155 ]
  %291 = phi i32 [ %203, %200 ], [ %203, %267 ], [ %203, %260 ], [ %271, %270 ], [ %225, %224 ], [ %150, %149 ], [ -1, %273 ], [ %277, %276 ], [ -1, %227 ], [ %231, %230 ], [ %154, %155 ], [ %159, %158 ]
  %292 = icmp eq i32 %285, 6
  br i1 %292, label %89, label %293

293:                                              ; preds = %283
  %294 = add nsw i32 %291, -1
  %295 = add nuw nsw i32 %75, 1
  %296 = icmp eq i32 %75, 0
  br i1 %296, label %65, label %297, !llvm.loop !87

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  %300 = load ptr, ptr %41, align 8, !tbaa !45
  %301 = getelementptr inbounds %struct.xpvhv, ptr %300, i64 0, i32 3
  %302 = load i64, ptr %301, align 8, !tbaa !47
  %303 = getelementptr ptr, ptr %299, i64 %302
  %304 = getelementptr ptr, ptr %303, i64 5
  %305 = load ptr, ptr %304, align 8, !tbaa !50
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %297
  %308 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %41) #5
  br label %309

309:                                              ; preds = %297, %307
  %310 = phi ptr [ %308, %307 ], [ %305, %297 ]
  %311 = getelementptr inbounds %struct.mro_meta, ptr %310, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !88
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  %315 = tail call ptr @Perl_newSV_type(i32 noundef 12) #5
  store ptr %315, ptr %311, align 8, !tbaa !88
  br label %375

316:                                              ; preds = %309
  %317 = tail call ptr @Perl_hv_common(ptr noundef nonnull %312, ptr noundef %286, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %318 = icmp eq ptr %317, null
  br i1 %318, label %373, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.he, ptr %317, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !44
  %322 = icmp eq ptr %321, @PL_sv_undef
  br i1 %322, label %323, label %355

323:                                              ; preds = %319
  %324 = icmp eq i32 %25, 0
  br i1 %324, label %351, label %325

325:                                              ; preds = %323
  %326 = and i8 %288, 1
  %327 = zext nneg i8 %326 to i32
  %328 = shl nuw nsw i32 %327, 29
  %329 = or disjoint i32 %328, 524288
  %330 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %289, i64 noundef %287, i32 noundef %329) #5
  %331 = load i32, ptr %42, align 4, !tbaa !72
  %332 = and i32 %331, 33554432
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %349, label %334

334:                                              ; preds = %325
  %335 = load ptr, ptr %298, align 8, !tbaa !44
  %336 = load ptr, ptr %41, align 8, !tbaa !45
  %337 = getelementptr inbounds %struct.xpvhv, ptr %336, i64 0, i32 3
  %338 = load i64, ptr %337, align 8, !tbaa !47
  %339 = getelementptr ptr, ptr %335, i64 %338
  %340 = getelementptr ptr, ptr %339, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !44
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %334
  %344 = getelementptr i8, ptr %339, i64 36
  %345 = load i32, ptr %344, align 4, !tbaa !73
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %343
  %348 = load ptr, ptr %341, align 8, !tbaa !35
  br label %349

349:                                              ; preds = %343, %325, %334, %347
  %350 = phi ptr [ %348, %347 ], [ null, %334 ], [ null, %325 ], [ %341, %343 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef %330, ptr noundef %350) #5
  br label %351

351:                                              ; preds = %349, %323
  %352 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %353 = getelementptr inbounds ptr, ptr %352, i64 %17
  %354 = getelementptr inbounds ptr, ptr %353, i64 -1
  br label %370

355:                                              ; preds = %319
  %356 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %357 = ptrtoint ptr %356 to i64
  %358 = ptrtoint ptr %16 to i64
  %359 = sub i64 %357, %358
  %360 = icmp slt i64 %359, 8
  br i1 %360, label %361, label %363

361:                                              ; preds = %355
  %362 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #5
  br label %363

363:                                              ; preds = %355, %361
  %364 = phi ptr [ %362, %361 ], [ %16, %355 ]
  %365 = tail call ptr @Perl_newRV(ptr noundef %321) #5
  %366 = tail call ptr @Perl_sv_2mortal(ptr noundef %365) #5
  %367 = getelementptr inbounds ptr, ptr %364, i64 1
  store ptr %366, ptr %367, align 8, !tbaa !35
  %368 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %369 = getelementptr inbounds ptr, ptr %368, i64 %17
  br label %370

370:                                              ; preds = %363, %351
  %371 = phi ptr [ %369, %363 ], [ %354, %351 ]
  %372 = phi ptr [ %367, %363 ], [ %16, %351 ]
  store ptr %371, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %373

373:                                              ; preds = %316, %370
  %374 = phi ptr [ %372, %370 ], [ %16, %316 ]
  br i1 %318, label %375, label %528

375:                                              ; preds = %373, %314
  %376 = phi ptr [ %312, %373 ], [ %315, %314 ]
  %377 = phi ptr [ %374, %373 ], [ %16, %314 ]
  %378 = ptrtoint ptr %289 to i64
  %379 = ptrtoint ptr %290 to i64
  %380 = add i64 %378, -2
  %381 = sub i64 %380, %379
  %382 = and i8 %288, 1
  %383 = icmp eq i8 %382, 0
  %384 = zext nneg i8 %382 to i32
  %385 = shl nuw nsw i32 %384, 29
  %386 = or disjoint i32 %385, 524288
  %387 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %290, i64 noundef %381, i32 noundef %386) #5
  %388 = tail call ptr @S_mro_get_linear_isa_c3(ptr noundef nonnull %41, i32 noundef 0)
  %389 = getelementptr inbounds %struct.av, ptr %388, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !44
  %391 = load ptr, ptr %388, align 8, !tbaa !89
  %392 = getelementptr inbounds %struct.xpvav, ptr %391, i64 0, i32 2
  %393 = load i64, ptr %392, align 8, !tbaa !91
  %394 = trunc i64 %393 to i32
  %395 = add i32 %394, 1
  br label %396

396:                                              ; preds = %400, %375
  %397 = phi i32 [ %395, %375 ], [ %401, %400 ]
  %398 = phi ptr [ %390, %375 ], [ %402, %400 ]
  %399 = icmp eq i32 %397, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %396
  %401 = add nsw i32 %397, -1
  %402 = getelementptr inbounds ptr, ptr %398, i64 1
  %403 = load ptr, ptr %398, align 8, !tbaa !35
  %404 = tail call i32 @Perl_sv_eq_flags(ptr noundef %403, ptr noundef %387, i32 noundef 2) #5
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %396, label %406

406:                                              ; preds = %400, %396
  %407 = phi i32 [ %397, %400 ], [ 0, %396 ]
  %408 = phi i32 [ %401, %400 ], [ -1, %396 ]
  %409 = phi ptr [ %402, %400 ], [ %398, %396 ]
  %410 = icmp slt i32 %407, 2
  %411 = icmp eq i32 %408, 0
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %499, label %413

413:                                              ; preds = %406
  %414 = add nsw i32 %407, -2
  %415 = trunc i64 %287 to i32
  %416 = sub nsw i32 0, %415
  %417 = select i1 %383, i32 %415, i32 %416
  %418 = or disjoint i32 %385, 2
  br label %419

419:                                              ; preds = %413, %496
  %420 = phi i32 [ %414, %413 ], [ %497, %496 ]
  %421 = phi ptr [ %377, %413 ], [ %495, %496 ]
  %422 = phi ptr [ %409, %413 ], [ %423, %496 ]
  %423 = getelementptr inbounds ptr, ptr %422, i64 1
  %424 = load ptr, ptr %422, align 8, !tbaa !35
  %425 = tail call ptr @Perl_gv_stashsv(ptr noundef %424, i32 noundef 0) #5
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %450

427:                                              ; preds = %419
  %428 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 28) #5
  br i1 %428, label %429, label %493, !llvm.loop !93

429:                                              ; preds = %427
  %430 = load i32, ptr %42, align 4, !tbaa !72
  %431 = and i32 %430, 33554432
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %448, label %433

433:                                              ; preds = %429
  %434 = load ptr, ptr %298, align 8, !tbaa !44
  %435 = load ptr, ptr %41, align 8, !tbaa !45
  %436 = getelementptr inbounds %struct.xpvhv, ptr %435, i64 0, i32 3
  %437 = load i64, ptr %436, align 8, !tbaa !47
  %438 = getelementptr ptr, ptr %434, i64 %437
  %439 = getelementptr ptr, ptr %438, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !44
  %441 = icmp eq ptr %440, null
  br i1 %441, label %448, label %442

442:                                              ; preds = %433
  %443 = getelementptr i8, ptr %438, i64 36
  %444 = load i32, ptr %443, align 4, !tbaa !73
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %442
  %447 = load ptr, ptr %440, align 8, !tbaa !35
  br label %448

448:                                              ; preds = %442, %429, %433, %446
  %449 = phi ptr [ %447, %446 ], [ null, %433 ], [ null, %429 ], [ %440, %442 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 28, ptr noundef nonnull @.str.26, ptr noundef %424, ptr noundef %449) #5
  br label %493, !llvm.loop !93

450:                                              ; preds = %419
  %451 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %425, ptr noundef %289, i32 noundef %417, i32 noundef 32, ptr noundef null, i32 noundef 0) #5
  %452 = icmp eq ptr %451, null
  br i1 %452, label %493, label %453, !llvm.loop !93

453:                                              ; preds = %450
  %454 = load ptr, ptr %451, align 8, !tbaa !35
  %455 = getelementptr inbounds %struct.gv, ptr %454, i64 0, i32 2
  %456 = load i32, ptr %455, align 4, !tbaa !85
  %457 = and i32 %456, 255
  %458 = icmp eq i32 %457, 9
  br i1 %458, label %460, label %459

459:                                              ; preds = %453
  tail call void @Perl_gv_init_pvn(ptr noundef %454, ptr noundef nonnull %425, ptr noundef %289, i64 noundef %287, i32 noundef %418) #5
  br label %460

460:                                              ; preds = %459, %453
  %461 = load i32, ptr %455, align 4, !tbaa !85
  %462 = and i32 %461, 255
  %463 = icmp eq i32 %462, 9
  br i1 %463, label %464, label %493

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.gv, ptr %454, i64 0, i32 3
  %466 = load ptr, ptr %465, align 8, !tbaa !44
  %467 = getelementptr inbounds %struct.gp, ptr %466, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !78
  %469 = icmp eq ptr %468, null
  br i1 %469, label %493, label %470

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.gp, ptr %466, i64 0, i32 3
  %472 = load i32, ptr %471, align 8, !tbaa !94
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %493

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.sv, ptr %468, i64 0, i32 1
  %476 = load i32, ptr %475, align 8, !tbaa !95
  %477 = add i32 %476, 1
  store i32 %477, ptr %475, align 8, !tbaa !95
  %478 = tail call ptr @Perl_hv_common(ptr noundef %376, ptr noundef %286, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %468, i32 noundef 0) #5
  %479 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %480 = ptrtoint ptr %479 to i64
  %481 = ptrtoint ptr %421 to i64
  %482 = sub i64 %480, %481
  %483 = icmp slt i64 %482, 8
  br i1 %483, label %484, label %486

484:                                              ; preds = %474
  %485 = tail call ptr @Perl_stack_grow(ptr noundef %421, ptr noundef %421, i64 noundef 1) #5
  br label %486

486:                                              ; preds = %474, %484
  %487 = phi ptr [ %485, %484 ], [ %421, %474 ]
  %488 = tail call ptr @Perl_newRV(ptr noundef nonnull %468) #5
  %489 = tail call ptr @Perl_sv_2mortal(ptr noundef %488) #5
  %490 = getelementptr inbounds ptr, ptr %487, i64 1
  store ptr %489, ptr %490, align 8, !tbaa !35
  %491 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %492 = getelementptr inbounds ptr, ptr %491, i64 %17
  store ptr %492, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %493

493:                                              ; preds = %460, %464, %470, %450, %427, %448, %486
  %494 = phi i32 [ 1, %486 ], [ 21, %448 ], [ 21, %427 ], [ 21, %450 ], [ 0, %470 ], [ 0, %464 ], [ 0, %460 ]
  %495 = phi ptr [ %490, %486 ], [ %421, %448 ], [ %421, %427 ], [ %421, %450 ], [ %421, %470 ], [ %421, %464 ], [ %421, %460 ]
  switch i32 %494, label %528 [
    i32 0, label %496
    i32 21, label %496
  ]

496:                                              ; preds = %493, %493
  %497 = add nsw i32 %420, -1
  %498 = icmp eq i32 %420, 0
  br i1 %498, label %499, label %419, !llvm.loop !93

499:                                              ; preds = %496, %406
  %500 = tail call ptr @Perl_hv_common(ptr noundef %376, ptr noundef %286, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #5
  %501 = icmp eq i32 %25, 0
  br i1 %501, label %524, label %502

502:                                              ; preds = %499
  %503 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %289, i64 noundef %287, i32 noundef %386) #5
  %504 = load i32, ptr %42, align 4, !tbaa !72
  %505 = and i32 %504, 33554432
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %522, label %507

507:                                              ; preds = %502
  %508 = load ptr, ptr %298, align 8, !tbaa !44
  %509 = load ptr, ptr %41, align 8, !tbaa !45
  %510 = getelementptr inbounds %struct.xpvhv, ptr %509, i64 0, i32 3
  %511 = load i64, ptr %510, align 8, !tbaa !47
  %512 = getelementptr ptr, ptr %508, i64 %511
  %513 = getelementptr ptr, ptr %512, i64 1
  %514 = load ptr, ptr %513, align 8, !tbaa !44
  %515 = icmp eq ptr %514, null
  br i1 %515, label %522, label %516

516:                                              ; preds = %507
  %517 = getelementptr i8, ptr %512, i64 36
  %518 = load i32, ptr %517, align 4, !tbaa !73
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  %521 = load ptr, ptr %514, align 8, !tbaa !35
  br label %522

522:                                              ; preds = %516, %502, %507, %520
  %523 = phi ptr [ %521, %520 ], [ null, %507 ], [ null, %502 ], [ %514, %516 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef %503, ptr noundef %523) #5
  br label %524

524:                                              ; preds = %522, %499
  %525 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %526 = getelementptr inbounds ptr, ptr %525, i64 %17
  %527 = getelementptr inbounds ptr, ptr %526, i64 -1
  store ptr %527, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %528

528:                                              ; preds = %493, %373, %524
  ret void
}

declare void @Perl_mro_register(ptr noundef) local_unnamed_addr #2

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mro_get_from_name(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

declare void @Perl_mro_set_mro(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @S_mro_get_linear_isa_c3(ptr noundef %0, i32 noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !35
  br label %31

23:                                               ; preds = %17
  %24 = icmp slt i32 %19, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds ptr, ptr %15, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %31

28:                                               ; preds = %23
  %29 = icmp eq i32 %19, -1
  %30 = select i1 %29, ptr null, ptr %15
  br label %31

31:                                               ; preds = %28, %2, %7, %21, %25
  %32 = phi ptr [ %22, %21 ], [ %27, %25 ], [ null, %7 ], [ null, %2 ], [ %30, %28 ]
  %33 = icmp ne ptr %32, null
  %34 = or i1 %6, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = load ptr, ptr %0, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.xpvhv, ptr %38, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !47
  %41 = getelementptr ptr, ptr %37, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = getelementptr i8, ptr %41, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !73
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %43, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %31, %49, %35, %45
  %52 = phi ptr [ %32, %31 ], [ %50, %49 ], [ null, %35 ], [ %43, %45 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #5
  br label %55

55:                                               ; preds = %54, %51
  %56 = icmp ugt i32 %1, 100
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28, ptr noundef %52) #5
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = load ptr, ptr %0, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !47
  %64 = getelementptr ptr, ptr %60, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #5
  br label %70

70:                                               ; preds = %58, %68
  %71 = phi ptr [ %69, %68 ], [ %66, %58 ]
  %72 = getelementptr inbounds %struct.mro_meta, ptr %71, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = icmp eq ptr %73, @c3_alg
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mro_meta, ptr %71, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !96
  br label %80

78:                                               ; preds = %70
  %79 = tail call ptr @Perl_mro_get_private_data(ptr noundef %71, ptr noundef nonnull @c3_alg) #5
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi ptr [ %77, %75 ], [ %79, %78 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %370

83:                                               ; preds = %80
  %84 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.29, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %103, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %84, align 8, !tbaa !35
  %88 = icmp eq ptr %87, null
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.gv, ptr %87, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !85
  %92 = and i32 %91, 49152
  %93 = icmp eq i32 %92, 32768
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = and i32 %91, 255
  %96 = add nsw i32 %95, -9
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.gv, ptr %87, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.gp, ptr %100, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !97
  br label %103

103:                                              ; preds = %94, %83, %86, %89, %98
  %104 = phi ptr [ %102, %98 ], [ null, %89 ], [ null, %86 ], [ null, %83 ], [ null, %94 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %361, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %104, align 8, !tbaa !89
  %108 = getelementptr inbounds %struct.xpvav, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !91
  %110 = icmp sgt i64 %109, -1
  br i1 %110, label %111, label %361

111:                                              ; preds = %106
  %112 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %113 = tail call ptr @Perl_sv_2mortal(ptr noundef %112) #5
  %114 = load ptr, ptr %104, align 8, !tbaa !89
  %115 = getelementptr inbounds %struct.xpvav, ptr %114, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !91
  %117 = add nsw i64 %116, 1
  %118 = getelementptr inbounds %struct.av, ptr %104, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !44
  br label %120

120:                                              ; preds = %178, %111
  %121 = phi ptr [ %119, %111 ], [ %131, %178 ]
  %122 = phi i64 [ %117, %111 ], [ %124, %178 ]
  %123 = phi ptr [ null, %111 ], [ %181, %178 ]
  %124 = add nsw i64 %122, -1
  %125 = icmp eq i64 %122, 0
  br i1 %125, label %182, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %121, align 8, !tbaa !35
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr @PL_sv_undef, ptr %127
  %130 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %129, i32 noundef 0) #5
  %131 = getelementptr inbounds ptr, ptr %121, i64 1
  %132 = icmp eq ptr %130, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %135 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %129) #5
  tail call void @Perl_av_push(ptr noundef %134, ptr noundef %135) #5
  tail call void @Perl_av_push(ptr noundef %113, ptr noundef %134) #5
  br label %178

136:                                              ; preds = %126
  %137 = add i32 %1, 1
  %138 = tail call ptr @S_mro_get_linear_isa_c3(ptr noundef nonnull %130, i32 noundef %137)
  %139 = icmp eq i64 %124, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %136
  %141 = load ptr, ptr %113, align 8, !tbaa !89
  %142 = getelementptr inbounds %struct.xpvav, ptr %141, i64 0, i32 2
  %143 = load i64, ptr %142, align 8, !tbaa !91
  %144 = icmp eq i64 %143, -1
  br i1 %144, label %145, label %174

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.av, ptr %113, i64 0, i32 3
  %147 = load ptr, ptr %138, align 8, !tbaa !89
  %148 = getelementptr inbounds %struct.xpvav, ptr %147, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !91
  %150 = trunc i64 %149 to i32
  %151 = add i32 %150, 1
  %152 = getelementptr inbounds %struct.av, ptr %138, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !44
  %154 = sext i32 %151 to i64
  tail call void @Perl_av_extend(ptr noundef nonnull %113, i64 noundef %154) #5
  %155 = load ptr, ptr %113, align 8, !tbaa !89
  %156 = getelementptr inbounds %struct.xpvav, ptr %155, i64 0, i32 2
  store i64 %154, ptr %156, align 8, !tbaa !91
  %157 = load ptr, ptr %146, align 8, !tbaa !44
  %158 = tail call ptr @Perl_newSVhek(ptr noundef %52) #5
  store ptr %158, ptr %157, align 8, !tbaa !35
  %159 = icmp eq i32 %151, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %145, %160
  %161 = phi ptr [ %164, %160 ], [ %157, %145 ]
  %162 = phi i32 [ %165, %160 ], [ %151, %145 ]
  %163 = phi ptr [ %166, %160 ], [ %153, %145 ]
  %164 = getelementptr inbounds ptr, ptr %161, i64 1
  %165 = add nsw i32 %162, -1
  %166 = getelementptr inbounds ptr, ptr %163, i64 1
  %167 = load ptr, ptr %163, align 8, !tbaa !35
  %168 = tail call ptr @Perl_newSVsv(ptr noundef %167) #5
  store ptr %168, ptr %164, align 8, !tbaa !35
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %170, label %160, !llvm.loop !98

170:                                              ; preds = %160, %145
  %171 = getelementptr inbounds %struct.sv, ptr %113, i64 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !95
  %173 = add i32 %172, 1
  store i32 %173, ptr %171, align 8, !tbaa !95
  br label %178

174:                                              ; preds = %140, %136
  %175 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !95
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 8, !tbaa !95
  tail call void @Perl_av_push(ptr noundef %113, ptr noundef %138) #5
  br label %178

178:                                              ; preds = %170, %174, %133
  %179 = phi i1 [ true, %133 ], [ false, %170 ], [ true, %174 ]
  %180 = phi i32 [ 0, %133 ], [ 6, %170 ], [ 0, %174 ]
  %181 = phi ptr [ %123, %133 ], [ %113, %170 ], [ %123, %174 ]
  br i1 %179, label %120, label %358, !llvm.loop !99

182:                                              ; preds = %120
  %183 = getelementptr inbounds %struct.sv, ptr %104, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !95
  %185 = add i32 %184, 1
  store i32 %185, ptr %183, align 8, !tbaa !95
  tail call void @Perl_av_push(ptr noundef %113, ptr noundef nonnull %104) #5
  %186 = tail call ptr @Perl_newSV_type(i32 noundef 12) #5
  %187 = tail call ptr @Perl_sv_2mortal(ptr noundef %186) #5
  %188 = load ptr, ptr %113, align 8, !tbaa !89
  %189 = getelementptr inbounds %struct.xpvav, ptr %188, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !91
  %191 = add nsw i64 %190, 1
  %192 = tail call ptr @Perl_safesyscalloc(i64 noundef %191, i64 noundef 4) #5
  %193 = getelementptr inbounds %struct.av, ptr %113, i64 0, i32 3
  %194 = load ptr, ptr %113, align 8, !tbaa !89
  %195 = getelementptr inbounds %struct.xpvav, ptr %194, i64 0, i32 2
  %196 = load i64, ptr %195, align 8, !tbaa !91
  %197 = trunc i64 %196 to i32
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %240, label %199

199:                                              ; preds = %182
  %200 = load ptr, ptr %193, align 8, !tbaa !44
  br label %201

201:                                              ; preds = %199, %237
  %202 = phi i32 [ %238, %237 ], [ %197, %199 ]
  %203 = phi ptr [ %204, %237 ], [ %200, %199 ]
  %204 = getelementptr inbounds ptr, ptr %203, i64 1
  %205 = load ptr, ptr %203, align 8, !tbaa !35
  %206 = load ptr, ptr %205, align 8, !tbaa !89
  %207 = getelementptr inbounds %struct.xpvav, ptr %206, i64 0, i32 2
  %208 = load i64, ptr %207, align 8, !tbaa !91
  %209 = trunc i64 %208 to i32
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %237

211:                                              ; preds = %201
  %212 = getelementptr inbounds %struct.av, ptr %205, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !44
  br label %214

214:                                              ; preds = %211, %235
  %215 = phi i32 [ %209, %211 ], [ %218, %235 ]
  %216 = phi ptr [ %213, %211 ], [ %217, %235 ]
  %217 = getelementptr inbounds ptr, ptr %216, i64 1
  %218 = add nsw i32 %215, -1
  %219 = load ptr, ptr %217, align 8, !tbaa !35
  %220 = tail call ptr @Perl_hv_common(ptr noundef %187, ptr noundef %219, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #5
  %221 = icmp eq ptr %220, null
  br i1 %221, label %235, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.he, ptr %220, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !44
  %225 = getelementptr inbounds %struct.sv, ptr %224, i64 0, i32 2
  %226 = load i32, ptr %225, align 4, !tbaa !60
  %227 = and i32 %226, 256
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %222
  %230 = load ptr, ptr %224, align 8, !tbaa !62
  %231 = getelementptr inbounds %struct.xpviv, ptr %230, i64 0, i32 4
  %232 = load i64, ptr %231, align 8, !tbaa !44
  %233 = add nsw i64 %232, 1
  store i64 %233, ptr %231, align 8, !tbaa !44
  br label %235

234:                                              ; preds = %222
  tail call void @Perl_sv_setiv(ptr noundef %224, i64 noundef 1) #5
  br label %235

235:                                              ; preds = %229, %234, %214
  %236 = icmp eq i32 %218, 0
  br i1 %236, label %237, label %214, !llvm.loop !100

237:                                              ; preds = %235, %201
  %238 = add nsw i32 %202, -1
  %239 = icmp eq i32 %202, 0
  br i1 %239, label %240, label %201, !llvm.loop !101

240:                                              ; preds = %237, %182
  %241 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %242 = tail call ptr @Perl_newSVhek(ptr noundef %52) #5
  tail call void @Perl_av_push(ptr noundef %241, ptr noundef %242) #5
  %243 = getelementptr inbounds %struct.sv, ptr %241, i64 0, i32 2
  %244 = icmp eq ptr %241, null
  %245 = getelementptr inbounds %struct.sv, ptr %241, i64 0, i32 1
  br label %246

246:                                              ; preds = %357, %240
  %247 = load ptr, ptr %193, align 8, !tbaa !44
  %248 = load ptr, ptr %113, align 8, !tbaa !89
  %249 = getelementptr inbounds %struct.xpvav, ptr %248, i64 0, i32 2
  %250 = load i64, ptr %249, align 8, !tbaa !91
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %321, label %252

252:                                              ; preds = %246, %313
  %253 = phi i64 [ %316, %313 ], [ 0, %246 ]
  %254 = phi ptr [ %315, %313 ], [ null, %246 ]
  %255 = phi ptr [ %314, %313 ], [ null, %246 ]
  %256 = getelementptr inbounds ptr, ptr %247, i64 %253
  %257 = load ptr, ptr %256, align 8, !tbaa !35
  %258 = icmp eq ptr %257, null
  br i1 %258, label %313, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds i32, ptr %192, i64 %253
  %261 = load i32, ptr %260, align 4, !tbaa !39
  %262 = sext i32 %261 to i64
  %263 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %257, i64 noundef %262, i32 noundef 0) #5
  %264 = load ptr, ptr %263, align 8, !tbaa !35
  %265 = icmp eq ptr %254, null
  br i1 %265, label %266, label %283

266:                                              ; preds = %259
  %267 = tail call ptr @Perl_hv_common(ptr noundef %187, ptr noundef %264, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %268 = icmp eq ptr %267, null
  br i1 %268, label %278, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.he, ptr %267, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !44
  %272 = icmp eq ptr %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr %271, align 8, !tbaa !62
  %275 = getelementptr inbounds %struct.xpviv, ptr %274, i64 0, i32 4
  %276 = load i64, ptr %275, align 8, !tbaa !44
  %277 = icmp sgt i64 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %273, %269, %266
  %279 = tail call ptr @Perl_newSVsv(ptr noundef %264) #5
  tail call void @Perl_av_push(ptr noundef %241, ptr noundef %279) #5
  br label %280

280:                                              ; preds = %273, %278
  %281 = phi ptr [ %279, %278 ], [ null, %273 ]
  %282 = phi i1 [ true, %278 ], [ false, %273 ]
  br i1 %282, label %283, label %313

283:                                              ; preds = %280, %259
  %284 = phi ptr [ %255, %259 ], [ %264, %280 ]
  %285 = phi ptr [ %254, %259 ], [ %281, %280 ]
  %286 = tail call i32 @Perl_sv_cmp_flags(ptr noundef %264, ptr noundef %285, i32 noundef 2) #5
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %313

288:                                              ; preds = %283
  %289 = load i32, ptr %260, align 4, !tbaa !39
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr %260, align 4, !tbaa !39
  %291 = sext i32 %290 to i64
  %292 = load ptr, ptr %257, align 8, !tbaa !89
  %293 = getelementptr inbounds %struct.xpvav, ptr %292, i64 0, i32 2
  %294 = load i64, ptr %293, align 8, !tbaa !91
  %295 = icmp slt i64 %294, %291
  br i1 %295, label %296, label %307

296:                                              ; preds = %288
  %297 = load ptr, ptr %256, align 8, !tbaa !35
  %298 = icmp eq ptr %297, null
  br i1 %298, label %306, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.sv, ptr %297, i64 0, i32 1
  %301 = load i32, ptr %300, align 8, !tbaa !95
  %302 = icmp ugt i32 %301, 1
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = add i32 %301, -1
  store i32 %304, ptr %300, align 8, !tbaa !95
  br label %306

305:                                              ; preds = %299
  tail call void @Perl_sv_free2(ptr noundef nonnull %297, i32 noundef %301) #5
  br label %306

306:                                              ; preds = %296, %303, %305
  store ptr null, ptr %256, align 8, !tbaa !35
  br label %313

307:                                              ; preds = %288
  %308 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %257, i64 noundef %291, i32 noundef 0) #5
  %309 = load ptr, ptr %308, align 8, !tbaa !35
  %310 = tail call ptr @Perl_hv_common(ptr noundef %187, ptr noundef %309, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %311 = getelementptr inbounds %struct.he, ptr %310, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !44
  tail call void @Perl_sv_dec(ptr noundef %312) #5
  br label %313

313:                                              ; preds = %280, %283, %307, %306, %252
  %314 = phi ptr [ %255, %252 ], [ %284, %306 ], [ %284, %307 ], [ %284, %283 ], [ %264, %280 ]
  %315 = phi ptr [ %254, %252 ], [ %285, %306 ], [ %285, %307 ], [ %285, %283 ], [ %281, %280 ]
  %316 = add nuw i64 %253, 1
  %317 = load ptr, ptr %113, align 8, !tbaa !89
  %318 = getelementptr inbounds %struct.xpvav, ptr %317, i64 0, i32 2
  %319 = load i64, ptr %318, align 8, !tbaa !91
  %320 = icmp slt i64 %319, %316
  br i1 %320, label %321, label %252, !llvm.loop !102

321:                                              ; preds = %313, %246
  %322 = phi ptr [ null, %246 ], [ %314, %313 ]
  %323 = phi ptr [ null, %246 ], [ %315, %313 ]
  %324 = icmp eq ptr %322, null
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  tail call void @Perl_safesysfree(ptr noundef %192) #5
  br label %357

326:                                              ; preds = %321
  %327 = icmp eq ptr %323, null
  br i1 %327, label %328, label %357

328:                                              ; preds = %326
  %329 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.30, ptr noundef %52) #5
  br label %330

330:                                              ; preds = %345, %328
  %331 = phi i64 [ %348, %345 ], [ 0, %328 ]
  %332 = load i32, ptr %243, align 4, !tbaa !60
  %333 = and i32 %332, 8388608
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %330
  %336 = tail call i32 @Perl_mg_size(ptr noundef %241) #5
  %337 = sext i32 %336 to i64
  br label %342

338:                                              ; preds = %330
  %339 = load ptr, ptr %241, align 8, !tbaa !89
  %340 = getelementptr inbounds %struct.xpvav, ptr %339, i64 0, i32 2
  %341 = load i64, ptr %340, align 8, !tbaa !91
  br label %342

342:                                              ; preds = %335, %338
  %343 = phi i64 [ %337, %335 ], [ %341, %338 ]
  %344 = icmp slt i64 %343, %331
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = tail call ptr @Perl_av_fetch(ptr noundef %241, i64 noundef %331, i32 noundef 0) #5
  %347 = load ptr, ptr %346, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %329, ptr noundef nonnull @.str.31, ptr noundef %347) #5
  %348 = add nuw i64 %331, 1
  br label %330, !llvm.loop !103

349:                                              ; preds = %342
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %329, ptr noundef nonnull @.str.32, ptr noundef nonnull %322) #5
  br i1 %244, label %356, label %350

350:                                              ; preds = %349
  %351 = load i32, ptr %245, align 8, !tbaa !95
  %352 = icmp ugt i32 %351, 1
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = add i32 %351, -1
  store i32 %354, ptr %245, align 8, !tbaa !95
  br label %356

355:                                              ; preds = %350
  tail call void @Perl_sv_free2(ptr noundef nonnull %241, i32 noundef %351) #5
  br label %356

356:                                              ; preds = %349, %353, %355
  tail call void @Perl_safesysfree(ptr noundef %192) #5
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.33, ptr noundef %329) #5
  br label %357

357:                                              ; preds = %326, %356, %325
  br i1 %324, label %358, label %246

358:                                              ; preds = %178, %357
  %359 = phi i32 [ 0, %357 ], [ %180, %178 ]
  %360 = phi ptr [ %241, %357 ], [ %181, %178 ]
  switch i32 %359, label %370 [
    i32 0, label %364
    i32 6, label %364
  ]

361:                                              ; preds = %106, %103
  %362 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %363 = tail call ptr @Perl_newSVhek(ptr noundef %52) #5
  tail call void @Perl_av_push(ptr noundef %362, ptr noundef %363) #5
  br label %364

364:                                              ; preds = %358, %361, %358
  %365 = phi ptr [ %360, %358 ], [ %362, %361 ], [ %360, %358 ]
  %366 = getelementptr inbounds %struct.av, ptr %365, i64 0, i32 2
  %367 = load i32, ptr %366, align 4, !tbaa !104
  %368 = or i32 %367, 134283264
  store i32 %368, ptr %366, align 4, !tbaa !104
  %369 = tail call ptr @Perl_mro_set_private_data(ptr noundef %71, ptr noundef nonnull @c3_alg, ptr noundef %365) #5
  br label %370

370:                                              ; preds = %80, %364, %358
  %371 = phi ptr [ undef, %358 ], [ %369, %364 ], [ %81, %80 ]
  ret ptr %371
}

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_gv_init_pvn(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mro_get_private_data(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_dec(ptr noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_mro_set_private_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"mro_alg", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 18, !40, i64 20}
!43 = !{!"short", !37, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !36, i64 0}
!46 = !{!"hv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!47 = !{!48, !49, i64 24}
!48 = !{!"xpvhv", !36, i64 0, !37, i64 8, !49, i64 16, !49, i64 24}
!49 = !{!"long", !37, i64 0}
!50 = !{!51, !36, i64 32}
!51 = !{!"xpvhv_aux", !37, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!52 = !{!53, !36, i64 32}
!53 = !{!"mro_meta", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56}
!54 = !{!42, !36, i64 8}
!55 = !{!42, !43, i64 16}
!56 = !{!42, !43, i64 18}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !40, i64 12}
!61 = !{!"sv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!62 = !{!61, !36, i64 0}
!63 = !{!64, !49, i64 16}
!64 = !{!"xpv", !36, i64 0, !37, i64 8, !49, i64 16, !37, i64 24}
!65 = !{!49, !49, i64 0}
!66 = !{!53, !40, i64 28}
!67 = !{!68, !40, i64 32}
!68 = !{!"stackinfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!69 = !{!68, !36, i64 8}
!70 = !{!71, !36, i64 0}
!71 = !{!"xpvmg", !36, i64 0, !37, i64 8, !49, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!72 = !{!46, !40, i64 12}
!73 = !{!51, !40, i64 28}
!74 = distinct !{!74, !58, !59}
!75 = !{!68, !40, i64 40}
!76 = !{!68, !36, i64 16}
!77 = distinct !{!77, !58, !59}
!78 = !{!79, !36, i64 16}
!79 = !{!"gp", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !40, i64 67, !36, i64 72}
!80 = distinct !{!80, !59}
!81 = !{!82, !36, i64 0}
!82 = !{!"cv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!83 = !{!84, !40, i64 92}
!84 = !{!"xpvcv", !36, i64 0, !37, i64 8, !49, i64 16, !37, i64 24, !36, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !36, i64 64, !37, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96}
!85 = !{!86, !40, i64 12}
!86 = !{!"gv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!87 = distinct !{!87, !58, !59}
!88 = !{!53, !36, i64 16}
!89 = !{!90, !36, i64 0}
!90 = !{!"av", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!91 = !{!92, !49, i64 16}
!92 = !{!"xpvav", !36, i64 0, !37, i64 8, !49, i64 16, !49, i64 24, !36, i64 32}
!93 = distinct !{!93, !58, !59}
!94 = !{!79, !40, i64 24}
!95 = !{!61, !40, i64 8}
!96 = !{!53, !36, i64 8}
!97 = !{!79, !36, i64 40}
!98 = distinct !{!98, !58, !59}
!99 = distinct !{!99, !58, !59}
!100 = distinct !{!100, !58, !59}
!101 = distinct !{!101, !58, !59}
!102 = distinct !{!102, !58, !59}
!103 = distinct !{!103, !58, !59}
!104 = !{!90, !40, i64 12}
