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
%struct.av = type { ptr, i32, i32, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.15, ptr, %union.anon.16, %union.anon.17, %union.anon.18, ptr, %union.anon.19, ptr, i32, i32, i32 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_mro(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_mro_get_linear_isa, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_mro_set_mro, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_mro_get_mro, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_mro_get_isarev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_mro_is_universal, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_mro_invalidate_all_method_caches, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_mro_get_pkg_gen, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_mro__nextcan) #6
  tail call void @Perl_mro_register(ptr noundef nonnull @c3_alg) #6
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_get_linear_isa(ptr noundef %0) #0 !prof !34 !PGOFuncName !35 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %6, %1 ], [ %18, %17 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = tail call ptr @Perl_gv_stashsv(ptr noundef %23, i32 noundef 0) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %28 = tail call ptr @Perl_newSVsv(ptr noundef %23) #6
  tail call void @Perl_av_push(ptr noundef %27, ptr noundef %28) #6
  %29 = tail call ptr @Perl_newRV_noinc(ptr noundef %27) #6
  %30 = tail call ptr @Perl_sv_2mortal(ptr noundef %29) #6
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %32 = getelementptr inbounds ptr, ptr %31, i64 %21
  store ptr %30, ptr %32, align 8, !tbaa !36
  br label %61

33:                                               ; preds = %19
  %34 = icmp sgt i32 %14, 1
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %37 = add nsw i32 %5, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  %41 = tail call ptr @Perl_mro_get_from_name(ptr noundef %40) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %45 = getelementptr inbounds ptr, ptr %44, i64 %38
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %46) #6
  br label %47

47:                                               ; preds = %43, %35
  %48 = load ptr, ptr %41, align 8, !tbaa !42
  %49 = tail call ptr %48(ptr noundef nonnull %24, i32 noundef 0) #6
  br label %52

50:                                               ; preds = %33
  %51 = tail call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %24) #6
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi ptr [ %49, %47 ], [ %51, %50 ]
  %54 = tail call ptr @Perl_newRV(ptr noundef %53) #6
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %56 = getelementptr inbounds ptr, ptr %55, i64 %21
  store ptr %54, ptr %56, align 8, !tbaa !36
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %58 = getelementptr inbounds ptr, ptr %57, i64 %21
  %59 = load ptr, ptr %58, align 8, !tbaa !36
  %60 = tail call ptr @Perl_sv_2mortal(ptr noundef %59) #6
  br label %61

61:                                               ; preds = %26, %52
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %63 = getelementptr inbounds ptr, ptr %62, i64 %21
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_set_mro(ptr noundef %0) #0 !prof !34 !PGOFuncName !45 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.16) #6
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  %22 = tail call ptr @Perl_gv_stashsv(ptr noundef %21, i32 noundef 1) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, ptr noundef %21) #6
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.hv, ptr %22, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load ptr, ptr %22, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.xpvhv, ptr %28, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !49
  %31 = getelementptr ptr, ptr %27, i64 %30
  %32 = getelementptr ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %22) #6
  br label %37

37:                                               ; preds = %25, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %25 ]
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %40 = getelementptr ptr, ptr %39, i64 %8
  %41 = getelementptr ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  tail call void @Perl_mro_set_mro(ptr noundef %38, ptr noundef %42) #6
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %44 = getelementptr inbounds ptr, ptr %43, i64 %19
  %45 = getelementptr inbounds ptr, ptr %44, i64 -1
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_get_mro(ptr noundef %0) #0 !prof !34 !PGOFuncName !54 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  %22 = tail call ptr @Perl_gv_stashsv(ptr noundef %21, i32 noundef 0) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.hv, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load ptr, ptr %22, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !49
  %30 = getelementptr ptr, ptr %26, i64 %29
  %31 = getelementptr ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %22) #6
  br label %36

36:                                               ; preds = %24, %34
  %37 = phi ptr [ %35, %34 ], [ %32, %24 ]
  %38 = getelementptr inbounds %struct.mro_meta, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.mro_alg, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.mro_alg, ptr %39, i64 0, i32 2
  %43 = load i16, ptr %42, align 8, !tbaa !58
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds %struct.mro_alg, ptr %39, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !59
  %47 = and i16 %46, 1
  %48 = zext nneg i16 %47 to i32
  %49 = shl nuw nsw i32 %48, 29
  %50 = or disjoint i32 %49, 524288
  %51 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %41, i64 noundef %44, i32 noundef %50) #6
  br label %54

52:                                               ; preds = %17
  %53 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.19, i64 noundef 3, i32 noundef 524288) #6
  br label %54

54:                                               ; preds = %36, %52
  %55 = phi ptr [ %51, %36 ], [ %53, %52 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %57 = getelementptr inbounds ptr, ptr %56, i64 %19
  store ptr %55, ptr %57, align 8, !tbaa !36
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %59 = getelementptr inbounds ptr, ptr %58, i64 %19
  store ptr %59, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_get_isarev(ptr noundef %0) #0 !prof !34 !PGOFuncName !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %6, %1 ]
  %22 = getelementptr ptr, ptr %21, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = load ptr, ptr @PL_isarev, align 8, !tbaa !36
  %26 = tail call ptr @Perl_hv_common(ptr noundef %25, ptr noundef %24, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  br label %45

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %34 = icmp eq ptr %32, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %32) #6
  %37 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %32, i32 noundef 0) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %43, %39 ], [ %37, %35 ]
  %41 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %40) #6
  %42 = tail call ptr @Perl_newSVsv(ptr noundef %41) #6
  tail call void @Perl_av_push(ptr noundef %33, ptr noundef %42) #6
  %43 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %32, i32 noundef 0) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %39, !llvm.loop !61

45:                                               ; preds = %39, %35, %28, %30
  %46 = phi ptr [ %29, %28 ], [ %33, %30 ], [ %33, %35 ], [ %33, %39 ]
  %47 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %15 to i64
  %50 = sub i64 %48, %49
  %51 = icmp slt i64 %50, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #6
  br label %54

54:                                               ; preds = %45, %52
  %55 = phi ptr [ %53, %52 ], [ %15, %45 ]
  %56 = tail call ptr @Perl_newRV_noinc(ptr noundef %46) #6
  %57 = tail call ptr @Perl_sv_2mortal(ptr noundef %56) #6
  %58 = getelementptr inbounds ptr, ptr %55, i64 1
  store ptr %57, ptr %58, align 8, !tbaa !36
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_is_universal(ptr noundef %0) #0 !prof !34 !PGOFuncName !63 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %6 = load i32, ptr %4, align 4, !tbaa !40
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !67
  store i64 %30, ptr %2, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %35

33:                                               ; preds = %18
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #6
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = load ptr, ptr @PL_isarev, align 8, !tbaa !36
  %38 = call ptr @Perl_hv_common(ptr noundef %37, ptr noundef nonnull %22, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.he, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  br label %43

43:                                               ; preds = %35, %40
  %44 = phi ptr [ %42, %40 ], [ null, %35 ]
  %45 = load i64, ptr %2, align 8, !tbaa !69
  %46 = icmp eq i64 %45, 9
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(10) @.str.20) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47, %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %44, ptr noundef nonnull @.str.20, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %52
  br label %56

56:                                               ; preds = %52, %47, %55
  %57 = phi ptr [ @PL_sv_no, %55 ], [ @PL_sv_yes, %47 ], [ @PL_sv_yes, %52 ]
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %59 = getelementptr inbounds ptr, ptr %58, i64 %20
  store ptr %57, ptr %59, align 8, !tbaa !36
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %61 = getelementptr inbounds ptr, ptr %60, i64 %20
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_invalidate_all_method_caches(ptr noundef %0) #0 !prof !34 !PGOFuncName !70 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.11) #6
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = load i32, ptr @PL_sub_generation, align 4, !tbaa !40
  %19 = add i32 %18, 1
  store i32 %19, ptr @PL_sub_generation, align 4, !tbaa !40
  %20 = getelementptr ptr, ptr %17, i64 %7
  store ptr %20, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro_get_pkg_gen(ptr noundef %0) #0 !prof !34 !PGOFuncName !71 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %6, %1 ]
  %22 = getelementptr ptr, ptr %21, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = tail call ptr @Perl_gv_stashsv(ptr noundef %24, i32 noundef 0) #6
  %26 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %27 = ptrtoint ptr %26 to i64
  %28 = ptrtoint ptr %15 to i64
  %29 = sub i64 %27, %28
  %30 = icmp slt i64 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #6
  br label %33

33:                                               ; preds = %20, %31
  %34 = phi ptr [ %32, %31 ], [ %15, %20 ]
  %35 = tail call ptr @Perl_sv_newmortal() #6
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !36
  %37 = icmp eq ptr %25, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.hv, ptr %25, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load ptr, ptr %25, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.xpvhv, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !49
  %44 = getelementptr ptr, ptr %40, i64 %43
  %45 = getelementptr ptr, ptr %44, i64 5
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %25) #6
  br label %50

50:                                               ; preds = %38, %48
  %51 = phi ptr [ %49, %48 ], [ %46, %38 ]
  %52 = getelementptr inbounds %struct.mro_meta, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !72
  %54 = zext i32 %53 to i64
  br label %55

55:                                               ; preds = %33, %50
  %56 = phi i64 [ %54, %50 ], [ 0, %33 ]
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %56) #6
  store ptr %36, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_mro__nextcan(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !73 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = getelementptr ptr, ptr %9, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.xpviv, ptr %22, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = tail call i32 @Perl_sv_isobject(ptr noundef %19) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  br label %40

38:                                               ; preds = %1
  %39 = tail call ptr @Perl_gv_stashsv(ptr noundef %19, i32 noundef 1) #6
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi ptr [ %37, %33 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !79
  %44 = and i32 %43, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = load ptr, ptr %41, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.xpvhv, ptr %49, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !49
  %52 = getelementptr ptr, ptr %48, i64 %51
  %53 = getelementptr ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %52, i64 36
  %58 = load i32, ptr %57, align 4, !tbaa !80
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %54, align 8, !tbaa !36
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %46, %40
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.21) #6
  br label %64

64:                                               ; preds = %56, %60, %63
  br label %65

65:                                               ; preds = %64, %191
  %66 = phi i32 [ %192, %191 ], [ %28, %64 ]
  %67 = phi ptr [ %103, %191 ], [ %30, %64 ]
  %68 = phi ptr [ %102, %191 ], [ %26, %64 ]
  %69 = phi ptr [ %172, %191 ], [ null, %64 ]
  %70 = phi i8 [ %174, %191 ], [ 0, %64 ]
  %71 = phi i64 [ %175, %191 ], [ undef, %64 ]
  %72 = phi i1 [ false, %191 ], [ true, %64 ]
  %73 = tail call fastcc i32 @__dopoptosub_at(ptr noundef %67, i32 noundef %66) #9
  br label %74

74:                                               ; preds = %185, %65
  %75 = phi i64 [ %186, %185 ], [ %71, %65 ]
  %76 = phi i8 [ %187, %185 ], [ %70, %65 ]
  %77 = phi ptr [ %188, %185 ], [ %69, %65 ]
  %78 = phi ptr [ %102, %185 ], [ %68, %65 ]
  %79 = phi ptr [ %103, %185 ], [ %67, %65 ]
  %80 = phi i32 [ %190, %185 ], [ %73, %65 ]
  br label %81

81:                                               ; preds = %74, %138
  %82 = phi ptr [ %102, %138 ], [ %78, %74 ]
  %83 = phi ptr [ %103, %138 ], [ %79, %74 ]
  %84 = phi i32 [ %128, %138 ], [ %80, %74 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %81, %92
  %87 = phi ptr [ %94, %92 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 6
  %89 = load i32, ptr %88, align 8, !tbaa !81
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22) #6
  br label %92

92:                                               ; preds = %91, %86
  %93 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !82
  %95 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !76
  %97 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !74
  %99 = tail call fastcc i32 @__dopoptosub_at(ptr noundef %96, i32 noundef %98) #9
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %86, label %101, !llvm.loop !83

101:                                              ; preds = %92, %81
  %102 = phi ptr [ %82, %81 ], [ %94, %92 ]
  %103 = phi ptr [ %83, %81 ], [ %96, %92 ]
  %104 = phi i32 [ %84, %81 ], [ %99, %92 ]
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.context, ptr %103, i64 %105
  %107 = load i8, ptr %106, align 8, !tbaa !46
  %108 = and i8 %107, 15
  %109 = icmp eq i8 %108, 8
  br i1 %109, label %110, label %185

110:                                              ; preds = %101
  %111 = load ptr, ptr @PL_DBsub, align 8, !tbaa !36
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.gv, ptr %111, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = getelementptr inbounds %struct.gp, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !84
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.block, ptr %106, i64 0, i32 8, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp eq ptr %121, %117
  br i1 %122, label %185, label %126

123:                                              ; preds = %110
  %124 = add nsw i32 %104, -1
  %125 = tail call fastcc i32 @__dopoptosub_at(ptr noundef nonnull %103, i32 noundef %124) #9
  br label %142

126:                                              ; preds = %119, %113
  %127 = add nsw i32 %104, -1
  %128 = tail call fastcc i32 @__dopoptosub_at(ptr noundef nonnull %103, i32 noundef %127) #9
  %129 = icmp ne ptr %117, null
  %130 = icmp sgt i32 %128, -1
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = zext nneg i32 %128 to i64
  %134 = getelementptr inbounds %struct.context, ptr %103, i64 %133
  %135 = getelementptr inbounds %struct.block, ptr %134, i64 0, i32 8, i32 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = icmp eq ptr %136, %117
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i8, ptr %134, align 8, !tbaa !46
  %140 = and i8 %139, 15
  %141 = icmp eq i8 %140, 8
  br i1 %141, label %142, label %81

142:                                              ; preds = %126, %132, %138, %123
  %143 = getelementptr inbounds %struct.context, ptr %103, i64 %105, i32 0, i32 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = tail call fastcc ptr @S_CvGV(ptr noundef %144) #9
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !86
  %148 = and i32 %147, 255
  %149 = icmp eq i32 %148, 9
  br i1 %149, label %150, label %185

150:                                              ; preds = %142
  %151 = tail call ptr @Perl_sv_newmortal() #6
  tail call void @Perl_gv_efullname4(ptr noundef %151, ptr noundef nonnull %145, ptr noundef null, i1 noundef zeroext true) #6
  %152 = getelementptr inbounds %struct.sv, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !64
  %154 = and i32 %153, 1024
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.sv, ptr %151, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = load ptr, ptr %151, align 8, !tbaa !66
  %160 = getelementptr inbounds %struct.xpv, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !67
  %162 = lshr i32 %153, 29
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %158, i32 noundef 58) #8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %150, %156
  %168 = phi ptr [ %158, %156 ], [ %77, %150 ]
  %169 = phi i8 [ %164, %156 ], [ %76, %150 ]
  %170 = phi i64 [ %161, %156 ], [ %75, %150 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23) #6
  br label %171

171:                                              ; preds = %167, %156
  %172 = phi ptr [ %168, %167 ], [ %158, %156 ]
  %173 = phi ptr [ null, %167 ], [ %165, %156 ]
  %174 = phi i8 [ %169, %167 ], [ %164, %156 ]
  %175 = phi i64 [ %170, %167 ], [ %161, %156 ]
  %176 = getelementptr inbounds i8, ptr %173, i64 1
  %177 = ptrtoint ptr %176 to i64
  %178 = ptrtoint ptr %172 to i64
  %179 = sub i64 %178, %177
  %180 = add i64 %179, %175
  %181 = icmp eq i64 %180, 8
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(9) @.str.24) #8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %101, %119, %182, %142
  %186 = phi i64 [ %75, %142 ], [ %175, %182 ], [ %75, %119 ], [ %75, %101 ]
  %187 = phi i8 [ %76, %142 ], [ %174, %182 ], [ %76, %119 ], [ %76, %101 ]
  %188 = phi ptr [ %77, %142 ], [ %172, %182 ], [ %77, %119 ], [ %77, %101 ]
  %189 = add nsw i32 %104, -1
  %190 = tail call fastcc i32 @__dopoptosub_at(ptr noundef nonnull %103, i32 noundef %189) #9
  br label %74

191:                                              ; preds = %182, %171
  %192 = add nsw i32 %104, -1
  br i1 %72, label %65, label %193, !llvm.loop !88

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !46
  %196 = load ptr, ptr %41, align 8, !tbaa !47
  %197 = getelementptr inbounds %struct.xpvhv, ptr %196, i64 0, i32 3
  %198 = load i64, ptr %197, align 8, !tbaa !49
  %199 = getelementptr ptr, ptr %195, i64 %198
  %200 = getelementptr ptr, ptr %199, i64 5
  %201 = load ptr, ptr %200, align 8, !tbaa !52
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %41) #6
  br label %205

205:                                              ; preds = %193, %203
  %206 = phi ptr [ %204, %203 ], [ %201, %193 ]
  %207 = getelementptr inbounds %struct.mro_meta, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !89
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  store ptr %211, ptr %207, align 8, !tbaa !89
  br label %266

212:                                              ; preds = %205
  %213 = tail call ptr @Perl_hv_common(ptr noundef nonnull %208, ptr noundef nonnull %151, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %214 = icmp eq ptr %213, null
  br i1 %214, label %266, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.he, ptr %213, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !46
  %218 = icmp eq ptr %217, @PL_sv_undef
  br i1 %218, label %219, label %251

219:                                              ; preds = %215
  %220 = icmp eq i32 %25, 0
  br i1 %220, label %247, label %221

221:                                              ; preds = %219
  %222 = and i8 %174, 1
  %223 = zext nneg i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 29
  %225 = or disjoint i32 %224, 524288
  %226 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %176, i64 noundef %180, i32 noundef %225) #6
  %227 = load i32, ptr %42, align 4, !tbaa !79
  %228 = and i32 %227, 33554432
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %221
  %231 = load ptr, ptr %194, align 8, !tbaa !46
  %232 = load ptr, ptr %41, align 8, !tbaa !47
  %233 = getelementptr inbounds %struct.xpvhv, ptr %232, i64 0, i32 3
  %234 = load i64, ptr %233, align 8, !tbaa !49
  %235 = getelementptr ptr, ptr %231, i64 %234
  %236 = getelementptr ptr, ptr %235, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !46
  %238 = icmp eq ptr %237, null
  br i1 %238, label %245, label %239

239:                                              ; preds = %230
  %240 = getelementptr i8, ptr %235, i64 36
  %241 = load i32, ptr %240, align 4, !tbaa !80
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = load ptr, ptr %237, align 8, !tbaa !36
  br label %245

245:                                              ; preds = %239, %221, %230, %243
  %246 = phi ptr [ %244, %243 ], [ null, %230 ], [ null, %221 ], [ %237, %239 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef %226, ptr noundef %246) #6
  br label %247

247:                                              ; preds = %245, %219
  %248 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %249 = getelementptr inbounds ptr, ptr %248, i64 %17
  %250 = getelementptr inbounds ptr, ptr %249, i64 -1
  br label %408

251:                                              ; preds = %215
  %252 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %253 = ptrtoint ptr %252 to i64
  %254 = ptrtoint ptr %16 to i64
  %255 = sub i64 %253, %254
  %256 = icmp slt i64 %255, 8
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #6
  br label %259

259:                                              ; preds = %251, %257
  %260 = phi ptr [ %258, %257 ], [ %16, %251 ]
  %261 = tail call ptr @Perl_newRV(ptr noundef %217) #6
  %262 = tail call ptr @Perl_sv_2mortal(ptr noundef %261) #6
  %263 = getelementptr inbounds ptr, ptr %260, i64 1
  store ptr %262, ptr %263, align 8, !tbaa !36
  %264 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %265 = getelementptr inbounds ptr, ptr %264, i64 %17
  br label %408

266:                                              ; preds = %212, %210
  %267 = phi ptr [ %211, %210 ], [ %208, %212 ]
  %268 = add i64 %177, -2
  %269 = sub i64 %268, %178
  %270 = and i8 %174, 1
  %271 = icmp eq i8 %270, 0
  %272 = zext nneg i8 %270 to i32
  %273 = shl nuw nsw i32 %272, 29
  %274 = or disjoint i32 %273, 524288
  %275 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %172, i64 noundef %269, i32 noundef %274) #6
  %276 = tail call ptr @S_mro_get_linear_isa_c3(ptr noundef nonnull %41, i32 noundef 0) #9
  %277 = getelementptr inbounds %struct.av, ptr %276, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !46
  %279 = load ptr, ptr %276, align 8, !tbaa !90
  %280 = getelementptr inbounds %struct.xpvav, ptr %279, i64 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !92
  %282 = trunc i64 %281 to i32
  %283 = add i32 %282, 1
  br label %284

284:                                              ; preds = %288, %266
  %285 = phi i32 [ %283, %266 ], [ %289, %288 ]
  %286 = phi ptr [ %278, %266 ], [ %290, %288 ]
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %379, label %288

288:                                              ; preds = %284
  %289 = add nsw i32 %285, -1
  %290 = getelementptr inbounds ptr, ptr %286, i64 1
  %291 = load ptr, ptr %286, align 8, !tbaa !36
  %292 = tail call i32 @Perl_sv_eq_flags(ptr noundef %291, ptr noundef %275, i32 noundef 2) #6
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %284, label %294

294:                                              ; preds = %288
  %295 = icmp sgt i32 %285, 1
  br i1 %295, label %296, label %379

296:                                              ; preds = %294
  %297 = add nsw i32 %285, -2
  %298 = trunc i64 %180 to i32
  %299 = sub nsw i32 0, %298
  %300 = select i1 %271, i32 %298, i32 %299
  %301 = or disjoint i32 %273, 2
  br label %302

302:                                              ; preds = %296, %376
  %303 = phi i32 [ %297, %296 ], [ %377, %376 ]
  %304 = phi ptr [ %290, %296 ], [ %305, %376 ]
  %305 = getelementptr inbounds ptr, ptr %304, i64 1
  %306 = load ptr, ptr %304, align 8, !tbaa !36
  %307 = tail call ptr @Perl_gv_stashsv(ptr noundef %306, i32 noundef 0) #6
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %332

309:                                              ; preds = %302
  %310 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 28) #6
  br i1 %310, label %311, label %376, !llvm.loop !94

311:                                              ; preds = %309
  %312 = load i32, ptr %42, align 4, !tbaa !79
  %313 = and i32 %312, 33554432
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %194, align 8, !tbaa !46
  %317 = load ptr, ptr %41, align 8, !tbaa !47
  %318 = getelementptr inbounds %struct.xpvhv, ptr %317, i64 0, i32 3
  %319 = load i64, ptr %318, align 8, !tbaa !49
  %320 = getelementptr ptr, ptr %316, i64 %319
  %321 = getelementptr ptr, ptr %320, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  %323 = icmp eq ptr %322, null
  br i1 %323, label %330, label %324

324:                                              ; preds = %315
  %325 = getelementptr i8, ptr %320, i64 36
  %326 = load i32, ptr %325, align 4, !tbaa !80
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %324
  %329 = load ptr, ptr %322, align 8, !tbaa !36
  br label %330

330:                                              ; preds = %324, %311, %315, %328
  %331 = phi ptr [ %329, %328 ], [ null, %315 ], [ null, %311 ], [ %322, %324 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 28, ptr noundef nonnull @.str.26, ptr noundef %306, ptr noundef %331) #6
  br label %376, !llvm.loop !94

332:                                              ; preds = %302
  %333 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %307, ptr noundef nonnull %176, i32 noundef %300, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %334 = icmp eq ptr %333, null
  br i1 %334, label %376, label %335, !llvm.loop !94

335:                                              ; preds = %332
  %336 = load ptr, ptr %333, align 8, !tbaa !36
  %337 = getelementptr inbounds %struct.gv, ptr %336, i64 0, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !86
  %339 = and i32 %338, 255
  %340 = icmp eq i32 %339, 9
  br i1 %340, label %343, label %341

341:                                              ; preds = %335
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %336, ptr noundef nonnull %307, ptr noundef nonnull %176, i64 noundef %180, i32 noundef %301) #6
  %342 = load i32, ptr %337, align 4, !tbaa !86
  br label %343

343:                                              ; preds = %341, %335
  %344 = phi i32 [ %342, %341 ], [ %338, %335 ]
  %345 = and i32 %344, 255
  %346 = icmp eq i32 %345, 9
  br i1 %346, label %347, label %376

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.gv, ptr %336, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !46
  %350 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !84
  %352 = icmp eq ptr %351, null
  br i1 %352, label %376, label %353

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 3
  %355 = load i32, ptr %354, align 8, !tbaa !95
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %376

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.sv, ptr %351, i64 0, i32 1
  %359 = load i32, ptr %358, align 8, !tbaa !96
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !96
  %361 = tail call ptr @Perl_hv_common(ptr noundef %267, ptr noundef %151, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %351, i32 noundef 0) #6
  %362 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %363 = ptrtoint ptr %362 to i64
  %364 = ptrtoint ptr %16 to i64
  %365 = sub i64 %363, %364
  %366 = icmp slt i64 %365, 8
  br i1 %366, label %367, label %369

367:                                              ; preds = %357
  %368 = tail call ptr @Perl_stack_grow(ptr noundef %16, ptr noundef %16, i64 noundef 1) #6
  br label %369

369:                                              ; preds = %367, %357
  %370 = phi ptr [ %368, %367 ], [ %16, %357 ]
  %371 = tail call ptr @Perl_newRV(ptr noundef nonnull %351) #6
  %372 = tail call ptr @Perl_sv_2mortal(ptr noundef %371) #6
  %373 = getelementptr inbounds ptr, ptr %370, i64 1
  store ptr %372, ptr %373, align 8, !tbaa !36
  %374 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %375 = getelementptr inbounds ptr, ptr %374, i64 %17
  br label %408

376:                                              ; preds = %343, %347, %353, %332, %309, %330
  %377 = add nsw i32 %303, -1
  %378 = icmp eq i32 %303, 0
  br i1 %378, label %379, label %302

379:                                              ; preds = %284, %376, %294
  %380 = tail call ptr @Perl_hv_common(ptr noundef %267, ptr noundef %151, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #6
  %381 = icmp eq i32 %25, 0
  br i1 %381, label %404, label %382

382:                                              ; preds = %379
  %383 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %176, i64 noundef %180, i32 noundef %274) #6
  %384 = load i32, ptr %42, align 4, !tbaa !79
  %385 = and i32 %384, 33554432
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %402, label %387

387:                                              ; preds = %382
  %388 = load ptr, ptr %194, align 8, !tbaa !46
  %389 = load ptr, ptr %41, align 8, !tbaa !47
  %390 = getelementptr inbounds %struct.xpvhv, ptr %389, i64 0, i32 3
  %391 = load i64, ptr %390, align 8, !tbaa !49
  %392 = getelementptr ptr, ptr %388, i64 %391
  %393 = getelementptr ptr, ptr %392, i64 1
  %394 = load ptr, ptr %393, align 8, !tbaa !46
  %395 = icmp eq ptr %394, null
  br i1 %395, label %402, label %396

396:                                              ; preds = %387
  %397 = getelementptr i8, ptr %392, i64 36
  %398 = load i32, ptr %397, align 4, !tbaa !80
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %396
  %401 = load ptr, ptr %394, align 8, !tbaa !36
  br label %402

402:                                              ; preds = %396, %382, %387, %400
  %403 = phi ptr [ %401, %400 ], [ null, %387 ], [ null, %382 ], [ %394, %396 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef %383, ptr noundef %403) #6
  br label %404

404:                                              ; preds = %402, %379
  %405 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %406 = getelementptr inbounds ptr, ptr %405, i64 %17
  %407 = getelementptr inbounds ptr, ptr %406, i64 -1
  br label %408

408:                                              ; preds = %259, %247, %369, %404
  %409 = phi ptr [ %375, %369 ], [ %407, %404 ], [ %265, %259 ], [ %250, %247 ]
  store ptr %409, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @Perl_mro_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_get_from_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_mro_set_mro(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @__dopoptosub_at(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !97 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %14

4:                                                ; preds = %2, %11
  %5 = phi i32 [ %12, %11 ], [ %1, %2 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.context, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 8, !tbaa !46
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 8
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %5, -1
  %13 = icmp sgt i32 %5, 0
  br i1 %13, label %4, label %14, !llvm.loop !98

14:                                               ; preds = %4, %11, %2
  %15 = phi i32 [ %1, %2 ], [ -1, %11 ], [ %5, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !99 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !102
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #6
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @S_mro_get_linear_isa_c3(ptr noundef %0, i32 noundef %1) #0 !prof !34 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !80
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = icmp slt i32 %19, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %27

25:                                               ; preds = %21
  %26 = icmp eq i32 %19, -1
  br i1 %26, label %31, label %39

27:                                               ; preds = %17, %23
  %28 = phi ptr [ %24, %23 ], [ %15, %17 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25, %27
  %32 = getelementptr i8, ptr %13, i64 36
  %33 = load i32, ptr %32, align 4, !tbaa !80
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %15, align 8, !tbaa !36
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %7, %2, %35
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #6
  br label %39

39:                                               ; preds = %25, %31, %27, %38, %35
  %40 = phi ptr [ null, %38 ], [ %36, %35 ], [ %15, %31 ], [ %29, %27 ], [ %15, %25 ]
  %41 = icmp ugt i32 %1, 100
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28, ptr noundef %40) #6
  br label %43

43:                                               ; preds = %42, %39
  %44 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load ptr, ptr %0, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !49
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #6
  br label %55

55:                                               ; preds = %43, %53
  %56 = phi ptr [ %54, %53 ], [ %51, %43 ]
  %57 = getelementptr inbounds %struct.mro_meta, ptr %56, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = icmp eq ptr %58, @c3_alg
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.mro_meta, ptr %56, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !105
  br label %65

63:                                               ; preds = %55
  %64 = tail call ptr @Perl_mro_get_private_data(ptr noundef nonnull %56, ptr noundef nonnull @c3_alg) #6
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ %62, %60 ], [ %64, %63 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %315

68:                                               ; preds = %65
  %69 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.29, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %306, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %69, align 8, !tbaa !36
  %73 = icmp eq ptr %72, null
  br i1 %73, label %306, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !86
  %77 = and i32 %76, 49152
  %78 = icmp eq i32 %77, 32768
  br i1 %78, label %79, label %306

79:                                               ; preds = %74
  %80 = and i32 %76, 255
  %81 = add nsw i32 %80, -9
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %83, label %306

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.gp, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !106
  %88 = icmp eq ptr %87, null
  br i1 %88, label %306, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %87, align 8, !tbaa !90
  %91 = getelementptr inbounds %struct.xpvav, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !92
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %306

94:                                               ; preds = %89
  %95 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %96 = tail call ptr @Perl_sv_2mortal(ptr noundef %95) #6
  %97 = load ptr, ptr %87, align 8, !tbaa !90
  %98 = getelementptr inbounds %struct.xpvav, ptr %97, i64 0, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !92
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %160, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.av, ptr %87, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = add i32 %1, 1
  br label %105

105:                                              ; preds = %101, %156
  %106 = phi i64 [ %99, %101 ], [ %158, %156 ]
  %107 = phi ptr [ %103, %101 ], [ %112, %156 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !36
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, ptr @PL_sv_undef, ptr %108
  %111 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %110, i32 noundef 0) #6
  %112 = getelementptr inbounds ptr, ptr %107, i64 1
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %116 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %110) #6
  tail call void @Perl_av_push(ptr noundef %115, ptr noundef %116) #6
  br label %156

117:                                              ; preds = %105
  %118 = tail call ptr @S_mro_get_linear_isa_c3(ptr noundef nonnull %111, i32 noundef %104) #9
  %119 = icmp eq i64 %106, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %117
  %121 = load ptr, ptr %96, align 8, !tbaa !90
  %122 = getelementptr inbounds %struct.xpvav, ptr %121, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !92
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %125, label %152

125:                                              ; preds = %120
  %126 = load ptr, ptr %118, align 8, !tbaa !90
  %127 = getelementptr inbounds %struct.xpvav, ptr %126, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !92
  %129 = trunc i64 %128 to i32
  %130 = add i32 %129, 1
  %131 = getelementptr inbounds %struct.av, ptr %118, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = sext i32 %130 to i64
  tail call void @Perl_av_extend(ptr noundef nonnull %96, i64 noundef %133) #6
  %134 = load ptr, ptr %96, align 8, !tbaa !90
  %135 = getelementptr inbounds %struct.xpvav, ptr %134, i64 0, i32 2
  store i64 %133, ptr %135, align 8, !tbaa !92
  %136 = getelementptr inbounds %struct.av, ptr %96, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = tail call ptr @Perl_newSVhek(ptr noundef %40) #6
  store ptr %138, ptr %137, align 8, !tbaa !36
  %139 = icmp eq i32 %130, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %125, %140
  %141 = phi ptr [ %144, %140 ], [ %137, %125 ]
  %142 = phi i32 [ %145, %140 ], [ %130, %125 ]
  %143 = phi ptr [ %146, %140 ], [ %132, %125 ]
  %144 = getelementptr inbounds ptr, ptr %141, i64 1
  %145 = add nsw i32 %142, -1
  %146 = getelementptr inbounds ptr, ptr %143, i64 1
  %147 = load ptr, ptr %143, align 8, !tbaa !36
  %148 = tail call ptr @Perl_newSVsv(ptr noundef %147) #6
  store ptr %148, ptr %144, align 8, !tbaa !36
  %149 = icmp eq i32 %145, 0
  br i1 %149, label %150, label %140, !llvm.loop !107

150:                                              ; preds = %140, %125
  %151 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %96) #9
  br label %309

152:                                              ; preds = %117, %120
  %153 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !96
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !96
  br label %156

156:                                              ; preds = %152, %114
  %157 = phi ptr [ %118, %152 ], [ %115, %114 ]
  tail call void @Perl_av_push(ptr noundef %96, ptr noundef %157) #6
  %158 = add nsw i64 %106, -1
  %159 = icmp eq i64 %106, 0
  br i1 %159, label %160, label %105, !llvm.loop !108

160:                                              ; preds = %156, %94
  %161 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !96
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !96
  tail call void @Perl_av_push(ptr noundef %96, ptr noundef nonnull %87) #6
  %164 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  %165 = tail call ptr @Perl_sv_2mortal(ptr noundef %164) #6
  %166 = load ptr, ptr %96, align 8, !tbaa !90
  %167 = getelementptr inbounds %struct.xpvav, ptr %166, i64 0, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !92
  %169 = add nsw i64 %168, 1
  %170 = tail call ptr @Perl_safesyscalloc(i64 noundef %169, i64 noundef 4) #6
  %171 = getelementptr inbounds %struct.av, ptr %96, i64 0, i32 3
  %172 = load ptr, ptr %96, align 8, !tbaa !90
  %173 = getelementptr inbounds %struct.xpvav, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !92
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %218, label %177

177:                                              ; preds = %160
  %178 = load ptr, ptr %171, align 8, !tbaa !46
  br label %179

179:                                              ; preds = %177, %215
  %180 = phi i32 [ %216, %215 ], [ %175, %177 ]
  %181 = phi ptr [ %182, %215 ], [ %178, %177 ]
  %182 = getelementptr inbounds ptr, ptr %181, i64 1
  %183 = load ptr, ptr %181, align 8, !tbaa !36
  %184 = load ptr, ptr %183, align 8, !tbaa !90
  %185 = getelementptr inbounds %struct.xpvav, ptr %184, i64 0, i32 2
  %186 = load i64, ptr %185, align 8, !tbaa !92
  %187 = trunc i64 %186 to i32
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.av, ptr %183, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  br label %192

192:                                              ; preds = %189, %213
  %193 = phi i32 [ %187, %189 ], [ %196, %213 ]
  %194 = phi ptr [ %191, %189 ], [ %195, %213 ]
  %195 = getelementptr inbounds ptr, ptr %194, i64 1
  %196 = add nsw i32 %193, -1
  %197 = load ptr, ptr %195, align 8, !tbaa !36
  %198 = tail call ptr @Perl_hv_common(ptr noundef %165, ptr noundef %197, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #6
  %199 = icmp eq ptr %198, null
  br i1 %199, label %213, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.he, ptr %198, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = getelementptr inbounds %struct.sv, ptr %202, i64 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !64
  %205 = and i32 %204, 256
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load ptr, ptr %202, align 8, !tbaa !66
  %209 = getelementptr inbounds %struct.xpviv, ptr %208, i64 0, i32 4
  %210 = load i64, ptr %209, align 8, !tbaa !46
  %211 = add nsw i64 %210, 1
  store i64 %211, ptr %209, align 8, !tbaa !46
  br label %213

212:                                              ; preds = %200
  tail call void @Perl_sv_setiv(ptr noundef nonnull %202, i64 noundef 1) #6
  br label %213

213:                                              ; preds = %207, %212, %192
  %214 = icmp eq i32 %196, 0
  br i1 %214, label %215, label %192, !llvm.loop !109

215:                                              ; preds = %213, %179
  %216 = add nsw i32 %180, -1
  %217 = icmp eq i32 %180, 0
  br i1 %217, label %218, label %179, !llvm.loop !110

218:                                              ; preds = %215, %160
  %219 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %220 = tail call ptr @Perl_newSVhek(ptr noundef %40) #6
  tail call void @Perl_av_push(ptr noundef %219, ptr noundef %220) #6
  %221 = load ptr, ptr %96, align 8, !tbaa !90
  %222 = getelementptr inbounds %struct.xpvav, ptr %221, i64 0, i32 2
  %223 = load i64, ptr %222, align 8, !tbaa !92
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %286, label %225

225:                                              ; preds = %218, %301
  %226 = load ptr, ptr %171, align 8, !tbaa !46
  br label %227

227:                                              ; preds = %225, %276
  %228 = phi i64 [ %279, %276 ], [ 0, %225 ]
  %229 = phi ptr [ %278, %276 ], [ null, %225 ]
  %230 = phi ptr [ %277, %276 ], [ null, %225 ]
  %231 = getelementptr inbounds ptr, ptr %226, i64 %228
  %232 = load ptr, ptr %231, align 8, !tbaa !36
  %233 = icmp eq ptr %232, null
  br i1 %233, label %276, label %234

234:                                              ; preds = %227
  %235 = getelementptr inbounds i32, ptr %170, i64 %228
  %236 = load i32, ptr %235, align 4, !tbaa !40
  %237 = sext i32 %236 to i64
  %238 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %232, i64 noundef %237, i32 noundef 0) #6
  %239 = load ptr, ptr %238, align 8, !tbaa !36
  %240 = icmp eq ptr %229, null
  br i1 %240, label %241, label %255

241:                                              ; preds = %234
  %242 = tail call ptr @Perl_hv_common(ptr noundef %165, ptr noundef %239, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %243 = icmp eq ptr %242, null
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.he, ptr %242, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = icmp eq ptr %246, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %246, align 8, !tbaa !66
  %250 = getelementptr inbounds %struct.xpviv, ptr %249, i64 0, i32 4
  %251 = load i64, ptr %250, align 8, !tbaa !46
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %241, %244, %248
  %254 = tail call ptr @Perl_newSVsv(ptr noundef %239) #6
  tail call void @Perl_av_push(ptr noundef %219, ptr noundef %254) #6
  br label %255

255:                                              ; preds = %253, %234
  %256 = phi ptr [ %230, %234 ], [ %239, %253 ]
  %257 = phi ptr [ %229, %234 ], [ %254, %253 ]
  %258 = tail call i32 @Perl_sv_cmp_flags(ptr noundef %239, ptr noundef %257, i32 noundef 2) #6
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %255
  %261 = load i32, ptr %235, align 4, !tbaa !40
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %235, align 4, !tbaa !40
  %263 = sext i32 %262 to i64
  %264 = load ptr, ptr %232, align 8, !tbaa !90
  %265 = getelementptr inbounds %struct.xpvav, ptr %264, i64 0, i32 2
  %266 = load i64, ptr %265, align 8, !tbaa !92
  %267 = icmp slt i64 %266, %263
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load ptr, ptr %231, align 8, !tbaa !36
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %269) #9
  store ptr null, ptr %231, align 8, !tbaa !36
  br label %276

270:                                              ; preds = %260
  %271 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %232, i64 noundef %263, i32 noundef 0) #6
  %272 = load ptr, ptr %271, align 8, !tbaa !36
  %273 = tail call ptr @Perl_hv_common(ptr noundef %165, ptr noundef %272, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %274 = getelementptr inbounds %struct.he, ptr %273, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  tail call void @Perl_sv_dec(ptr noundef %275) #6
  br label %276

276:                                              ; preds = %248, %255, %270, %268, %227
  %277 = phi ptr [ %230, %227 ], [ %256, %268 ], [ %256, %270 ], [ %256, %255 ], [ %239, %248 ]
  %278 = phi ptr [ %229, %227 ], [ %257, %268 ], [ %257, %270 ], [ %257, %255 ], [ null, %248 ]
  %279 = add nuw i64 %228, 1
  %280 = load ptr, ptr %96, align 8, !tbaa !90
  %281 = getelementptr inbounds %struct.xpvav, ptr %280, i64 0, i32 2
  %282 = load i64, ptr %281, align 8, !tbaa !92
  %283 = icmp slt i64 %282, %279
  br i1 %283, label %284, label %227, !llvm.loop !111

284:                                              ; preds = %276
  %285 = icmp eq ptr %277, null
  br i1 %285, label %286, label %287

286:                                              ; preds = %284, %301, %218
  tail call void @Perl_safesysfree(ptr noundef %170) #6
  br label %309

287:                                              ; preds = %284
  %288 = icmp eq ptr %278, null
  br i1 %288, label %289, label %301

289:                                              ; preds = %287
  %290 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.30, ptr noundef %40) #6
  %291 = tail call fastcc i64 @S_av_top_index(ptr noundef %219) #9
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %289, %293
  %294 = phi i64 [ %297, %293 ], [ 0, %289 ]
  %295 = tail call ptr @Perl_av_fetch(ptr noundef %219, i64 noundef %294, i32 noundef 0) #6
  %296 = load ptr, ptr %295, align 8, !tbaa !36
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %290, ptr noundef nonnull @.str.31, ptr noundef %296) #6
  %297 = add nuw i64 %294, 1
  %298 = tail call fastcc i64 @S_av_top_index(ptr noundef %219) #9
  %299 = icmp slt i64 %298, %297
  br i1 %299, label %300, label %293, !llvm.loop !112

300:                                              ; preds = %293, %289
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %290, ptr noundef nonnull @.str.32, ptr noundef nonnull %277) #6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %219) #9
  tail call void @Perl_safesysfree(ptr noundef %170) #6
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.33, ptr noundef %290) #6
  br label %301

301:                                              ; preds = %287, %300
  %302 = load ptr, ptr %96, align 8, !tbaa !90
  %303 = getelementptr inbounds %struct.xpvav, ptr %302, i64 0, i32 2
  %304 = load i64, ptr %303, align 8, !tbaa !92
  %305 = icmp slt i64 %304, 0
  br i1 %305, label %286, label %225

306:                                              ; preds = %79, %68, %71, %74, %89, %83
  %307 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %308 = tail call ptr @Perl_newSVhek(ptr noundef %40) #6
  tail call void @Perl_av_push(ptr noundef %307, ptr noundef %308) #6
  br label %309

309:                                              ; preds = %150, %286, %306
  %310 = phi ptr [ %307, %306 ], [ %96, %150 ], [ %219, %286 ]
  %311 = getelementptr inbounds %struct.av, ptr %310, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !113
  %313 = or i32 %312, 134283264
  store i32 %313, ptr %311, align 4, !tbaa !113
  %314 = tail call ptr @Perl_mro_set_private_data(ptr noundef %56, ptr noundef nonnull @c3_alg, ptr noundef %310) #6
  br label %315

315:                                              ; preds = %65, %309
  %316 = phi ptr [ %314, %309 ], [ %66, %65 ]
  ret ptr %316
}

; Function Attrs: optsize
declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_init_pvn(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_get_private_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #5 !prof !34 !PGOFuncName !114 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !96
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !115 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !96
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #6
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !92
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mro_set_private_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize willreturn memory(read) }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"mro.c:XS_mro_get_linear_isa"}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"mro_alg", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 18, !41, i64 20}
!44 = !{!"short", !38, i64 0}
!45 = !{!"mro.c:XS_mro_set_mro"}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !37, i64 0}
!48 = !{!"hv", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!49 = !{!50, !51, i64 24}
!50 = !{!"xpvhv", !37, i64 0, !38, i64 8, !51, i64 16, !51, i64 24}
!51 = !{!"long", !38, i64 0}
!52 = !{!53, !37, i64 32}
!53 = !{!"xpvhv_aux", !38, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!54 = !{!"mro.c:XS_mro_get_mro"}
!55 = !{!56, !37, i64 32}
!56 = !{!"mro_meta", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56}
!57 = !{!43, !37, i64 8}
!58 = !{!43, !44, i64 16}
!59 = !{!43, !44, i64 18}
!60 = !{!"mro.c:XS_mro_get_isarev"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"mro.c:XS_mro_is_universal"}
!64 = !{!65, !41, i64 12}
!65 = !{!"sv", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!66 = !{!65, !37, i64 0}
!67 = !{!68, !51, i64 16}
!68 = !{!"xpv", !37, i64 0, !38, i64 8, !51, i64 16, !38, i64 24}
!69 = !{!51, !51, i64 0}
!70 = !{!"mro.c:XS_mro_invalidate_all_method_caches"}
!71 = !{!"mro.c:XS_mro_get_pkg_gen"}
!72 = !{!56, !41, i64 28}
!73 = !{!"mro.c:XS_mro__nextcan"}
!74 = !{!75, !41, i64 32}
!75 = !{!"stackinfo", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!76 = !{!75, !37, i64 8}
!77 = !{!78, !37, i64 0}
!78 = !{!"xpvmg", !37, i64 0, !38, i64 8, !51, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!79 = !{!48, !41, i64 12}
!80 = !{!53, !41, i64 28}
!81 = !{!75, !41, i64 40}
!82 = !{!75, !37, i64 16}
!83 = distinct !{!83, !62}
!84 = !{!85, !37, i64 16}
!85 = !{!"gp", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !41, i64 64, !41, i64 67, !37, i64 72}
!86 = !{!87, !41, i64 12}
!87 = !{!"gv", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!88 = distinct !{!88, !62}
!89 = !{!56, !37, i64 16}
!90 = !{!91, !37, i64 0}
!91 = !{!"av", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!92 = !{!93, !51, i64 16}
!93 = !{!"xpvav", !37, i64 0, !38, i64 8, !51, i64 16, !51, i64 24, !37, i64 32}
!94 = distinct !{!94, !62}
!95 = !{!85, !41, i64 24}
!96 = !{!65, !41, i64 8}
!97 = !{!"mro.c:__dopoptosub_at"}
!98 = distinct !{!98, !62}
!99 = !{!"mro.c:S_CvGV"}
!100 = !{!101, !37, i64 0}
!101 = !{!"cv", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!102 = !{!103, !41, i64 92}
!103 = !{!"xpvcv", !37, i64 0, !38, i64 8, !51, i64 16, !38, i64 24, !37, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !37, i64 64, !38, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96}
!104 = !{!"mro.c:S_mro_get_linear_isa_c3"}
!105 = !{!56, !37, i64 8}
!106 = !{!85, !37, i64 40}
!107 = distinct !{!107, !62}
!108 = distinct !{!108, !62}
!109 = distinct !{!109, !62}
!110 = distinct !{!110, !62}
!111 = distinct !{!111, !62}
!112 = distinct !{!112, !62}
!113 = !{!91, !41, i64 12}
!114 = !{!"mro.c:S_SvREFCNT_inc"}
!115 = !{!"mro.c:S_SvREFCNT_dec"}
!116 = !{!"mro.c:S_av_top_index"}
