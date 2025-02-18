; ModuleID = 'mro_core.c'
source_filename = "mro_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mro_alg = type { ptr, ptr, i16, i16, i32 }
%struct.sv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%union._xmgu = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.he = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, %union._xnvu }
%union.anon.5 = type { i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }

@.str = private unnamed_addr constant [65 x i8] c"panic: hv_store() failed in set_mro_private_data() for '%.*s' %d\00", align 1
@PL_registered_mros = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"panic: hv_store() failed in mro_register() for '%.*s' %d\00", align 1
@dfs_alg = internal constant %struct.mro_alg { ptr @S_mro_get_linear_isa_dfs, ptr @.str.16, i16 3, i16 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't linearize anonymous symbol table\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"panic: invalid MRO!\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Can't call mro_isa_changed_in() on anonymous symbol table\00", align 1
@PL_isarev = external local_unnamed_addr global ptr, align 8
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Can't call mro_method_changed_in() on anonymous symbol table\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Invalid mro name: '%-p'\00", align 1
@Perl_boot_core_mro.file = internal constant [11 x i8] c"mro_core.c\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"mro::method_changed_in\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"No such class: '%-p'!\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dfs\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Recursive inheritance detected in package '%2p'\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_stashcache = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_mro_get_private_data(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !91
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !93
  %14 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef null, ptr noundef %5, i64 noundef %8, i32 noundef %11, i32 noundef 32, ptr noundef null, i32 noundef %13) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !95
  %22 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !96
  br label %23

23:                                               ; preds = %20, %16
  %24 = load ptr, ptr %14, align 8, !tbaa !95
  br label %25

25:                                               ; preds = %2, %23
  %26 = phi ptr [ %24, %23 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_mro_set_private_data(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef returned %2) local_unnamed_addr #0 !prof !97 {
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %22, !prof !98

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12, !prof !98

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !96
  br label %48

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  store i64 1, ptr %15, align 8, !tbaa !101
  store ptr %13, ptr %0, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !tbaa !94
  %21 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %0, ptr noundef %20, ptr noundef nonnull %17)
  br label %22

22:                                               ; preds = %12, %19, %3
  %23 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %2, ptr %27, align 8, !tbaa !96
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %0, align 8, !tbaa !82
  %30 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !91
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !92
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !93
  %40 = tail call ptr @Perl_hv_common(ptr noundef %29, ptr noundef null, ptr noundef %31, i64 noundef %34, i32 noundef %37, i32 noundef 4, ptr noundef %2, i32 noundef %39) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i16, ptr %32, align 8, !tbaa !91
  %44 = zext i16 %43 to i32
  %45 = load ptr, ptr %30, align 8, !tbaa !88
  %46 = load i16, ptr %35, align 2, !tbaa !92
  %47 = zext i16 %46 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, i32 noundef %44, ptr noundef %45, i32 noundef %47) #7
  br label %48

48:                                               ; preds = %28, %42, %10
  ret ptr %2
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_mro_get_from_name(ptr noundef %0) local_unnamed_addr #0 !prof !81 {
  %2 = load ptr, ptr @PL_registered_mros, align 8, !tbaa !95
  %3 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !95
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.xpvuv, ptr %7, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !106
  %10 = inttoptr i64 %9 to ptr
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_mro_register(ptr noundef %0) local_unnamed_addr #0 !prof !107 {
  %2 = ptrtoint ptr %0 to i64
  %3 = tail call ptr @Perl_newSVuv(i64 noundef %2) #7
  %4 = load ptr, ptr @PL_registered_mros, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !91
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !92
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !93
  %15 = tail call ptr @Perl_hv_common(ptr noundef %4, ptr noundef null, ptr noundef %6, i64 noundef %9, i32 noundef %12, i32 noundef 4, ptr noundef %3, i32 noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30, !prof !108

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !109
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = add i32 %19, -1
  store i32 %22, ptr %18, align 8, !tbaa !109
  br label %24

23:                                               ; preds = %17
  tail call void @Perl_sv_free2(ptr noundef %3, i32 noundef %19) #7
  br label %24

24:                                               ; preds = %21, %23
  %25 = load i16, ptr %7, align 8, !tbaa !91
  %26 = zext i16 %25 to i32
  %27 = load ptr, ptr %5, align 8, !tbaa !88
  %28 = load i16, ptr %10, align 2, !tbaa !92
  %29 = zext i16 %28 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %26, ptr noundef %27, i32 noundef %29) #7
  br label %30

30:                                               ; preds = %24, %1
  ret void
}

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_mro_meta_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !81 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = load ptr, ptr %0, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = getelementptr ptr, ptr %4, i64 %7
  %9 = getelementptr ptr, ptr %8, i64 5
  store ptr %2, ptr %9, align 8, !tbaa !110
  %10 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 3
  store i32 1, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 4
  store i32 1, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 5
  store ptr @dfs_alg, ptr %12, align 8, !tbaa !94
  ret ptr %2
}

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_mro_get_linear_isa(ptr noundef %0) local_unnamed_addr #3 !prof !114 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !116

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = load ptr, ptr %0, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28, !prof !116

17:                                               ; preds = %7
  %18 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %19 = load ptr, ptr %8, align 8, !tbaa !106
  %20 = load ptr, ptr %0, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.xpvhv, ptr %20, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = getelementptr ptr, ptr %19, i64 %22
  %24 = getelementptr ptr, ptr %23, i64 5
  store ptr %18, ptr %24, align 8, !tbaa !110
  %25 = getelementptr inbounds %struct.mro_meta, ptr %18, i64 0, i32 3
  store i32 1, ptr %25, align 8, !tbaa !112
  %26 = getelementptr inbounds %struct.mro_meta, ptr %18, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !113
  %27 = getelementptr inbounds %struct.mro_meta, ptr %18, i64 0, i32 5
  store ptr @dfs_alg, ptr %27, align 8, !tbaa !94
  br label %28

28:                                               ; preds = %7, %17
  %29 = phi ptr [ %18, %17 ], [ %15, %7 ]
  %30 = getelementptr inbounds %struct.mro_meta, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !116

33:                                               ; preds = %28
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #7
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %30, align 8, !tbaa !94
  %36 = load ptr, ptr %35, align 8, !tbaa !117
  %37 = tail call ptr %36(ptr noundef nonnull %0, i32 noundef 0) #7, !prof !118
  %38 = load ptr, ptr %30, align 8, !tbaa !94
  %39 = icmp eq ptr %38, @dfs_alg
  br i1 %39, label %184, label %40, !prof !119

40:                                               ; preds = %34
  %41 = load i32, ptr %2, align 4, !tbaa !115
  %42 = and i32 %41, 33554432
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %129, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %8, align 8, !tbaa !106
  %46 = load ptr, ptr %0, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !101
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = getelementptr i8, ptr %49, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !120
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %74

57:                                               ; preds = %44, %53
  br i1 %43, label %129, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %8, align 8, !tbaa !106
  %60 = load ptr, ptr %0, align 8, !tbaa !99
  %61 = getelementptr inbounds %struct.xpvhv, ptr %60, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !101
  %63 = getelementptr ptr, ptr %59, i64 %62
  %64 = getelementptr ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  %66 = icmp eq ptr %65, null
  br i1 %66, label %129, label %67

67:                                               ; preds = %58
  %68 = getelementptr i8, ptr %63, i64 36
  %69 = load i32, ptr %68, align 4, !tbaa !120
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %65, align 8, !tbaa !95
  %73 = icmp eq ptr %72, null
  br i1 %73, label %129, label %74

74:                                               ; preds = %53, %67, %71
  br i1 %43, label %126, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %8, align 8, !tbaa !106
  %77 = load ptr, ptr %0, align 8, !tbaa !99
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !101
  %80 = getelementptr ptr, ptr %76, i64 %79
  %81 = getelementptr ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !106
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %75
  %85 = getelementptr i8, ptr %80, i64 36
  %86 = load i32, ptr %85, align 4, !tbaa !120
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load ptr, ptr %82, align 8, !tbaa !95
  %90 = icmp eq ptr %89, null
  br i1 %90, label %110, label %99

91:                                               ; preds = %84
  %92 = icmp slt i32 %86, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = getelementptr inbounds ptr, ptr %82, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !95
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %99

97:                                               ; preds = %91
  %98 = icmp eq i32 %86, -1
  br i1 %98, label %110, label %99

99:                                               ; preds = %97, %93, %88
  br i1 %87, label %100, label %102

100:                                              ; preds = %99
  %101 = load ptr, ptr %82, align 8, !tbaa !95
  br label %126

102:                                              ; preds = %99
  %103 = icmp slt i32 %86, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = getelementptr inbounds ptr, ptr %82, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !95
  br label %126

107:                                              ; preds = %102
  %108 = icmp eq i32 %86, -1
  %109 = select i1 %108, ptr null, ptr %82
  br label %126

110:                                              ; preds = %97, %93, %88, %75
  br i1 %43, label %126, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %8, align 8, !tbaa !106
  %113 = load ptr, ptr %0, align 8, !tbaa !99
  %114 = getelementptr inbounds %struct.xpvhv, ptr %113, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !101
  %116 = getelementptr ptr, ptr %112, i64 %115
  %117 = getelementptr ptr, ptr %116, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !106
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %111
  %121 = getelementptr i8, ptr %116, i64 36
  %122 = load i32, ptr %121, align 4, !tbaa !120
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %118, align 8, !tbaa !95
  br label %126

126:                                              ; preds = %74, %107, %120, %124, %111, %110, %104, %100
  %127 = phi ptr [ %101, %100 ], [ %106, %104 ], [ %125, %124 ], [ null, %111 ], [ null, %110 ], [ %109, %107 ], [ %118, %120 ], [ null, %74 ]
  %128 = tail call ptr @Perl_newSVhek(ptr noundef %127) #7
  br label %129

129:                                              ; preds = %40, %71, %58, %57, %126
  %130 = phi ptr [ %128, %126 ], [ null, %57 ], [ null, %58 ], [ null, %71 ], [ null, %40 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %184, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %37, align 8, !tbaa !121
  %134 = getelementptr inbounds %struct.xpvav, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !123
  %136 = icmp eq i64 %135, -1
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.av, ptr %37, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !106
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  %141 = tail call i32 @Perl_sv_eq_flags(ptr noundef %140, ptr noundef nonnull %130, i32 noundef 2) #7
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %137, %132
  %144 = getelementptr inbounds %struct.av, ptr %37, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !106
  %146 = load ptr, ptr %37, align 8, !tbaa !121
  %147 = getelementptr inbounds %struct.xpvav, ptr %146, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !123
  %149 = getelementptr inbounds ptr, ptr %145, i64 %148
  %150 = getelementptr inbounds ptr, ptr %149, i64 1
  %151 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %152 = tail call ptr @Perl_sv_2mortal(ptr noundef %151) #7
  %153 = load ptr, ptr %37, align 8, !tbaa !121
  %154 = getelementptr inbounds %struct.xpvav, ptr %153, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !123
  %156 = add nsw i64 %155, 1
  %157 = load ptr, ptr %152, align 8, !tbaa !121
  %158 = getelementptr inbounds %struct.xpvav, ptr %157, i64 0, i32 2
  store i64 %156, ptr %158, align 8, !tbaa !123
  tail call void @Perl_av_extend(ptr noundef nonnull %152, i64 noundef %156) #7
  %159 = getelementptr inbounds %struct.av, ptr %152, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !106
  store ptr %130, ptr %160, align 8, !tbaa !95
  %161 = icmp ult ptr %145, %150
  br i1 %161, label %162, label %184

162:                                              ; preds = %143
  %163 = load ptr, ptr %159, align 8, !tbaa !106
  br label %164

164:                                              ; preds = %162, %175
  %165 = phi ptr [ %167, %175 ], [ %163, %162 ]
  %166 = phi ptr [ %168, %175 ], [ %145, %162 ]
  %167 = getelementptr inbounds ptr, ptr %165, i64 1
  %168 = getelementptr inbounds ptr, ptr %166, i64 1
  %169 = load ptr, ptr %166, align 8, !tbaa !95
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.sv, ptr %169, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !109
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 8, !tbaa !109
  br label %175

175:                                              ; preds = %164, %171
  store ptr %169, ptr %167, align 8, !tbaa !95
  %176 = icmp ult ptr %166, %149
  br i1 %176, label %164, label %184, !llvm.loop !125

177:                                              ; preds = %137
  %178 = getelementptr inbounds %struct.sv, ptr %130, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !109
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = add i32 %179, -1
  store i32 %182, ptr %178, align 8, !tbaa !109
  br label %184

183:                                              ; preds = %177
  tail call void @Perl_sv_free2(ptr noundef nonnull %130, i32 noundef %179) #7
  br label %184

184:                                              ; preds = %175, %143, %183, %181, %129, %34
  %185 = phi ptr [ %37, %34 ], [ %37, %129 ], [ %37, %181 ], [ %37, %183 ], [ %152, %143 ], [ %152, %175 ]
  %186 = getelementptr inbounds %struct.mro_meta, ptr %29, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !128
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %267, !prof !116

189:                                              ; preds = %184
  %190 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %191 = getelementptr inbounds %struct.av, ptr %185, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !106
  %193 = load ptr, ptr %185, align 8, !tbaa !121
  %194 = getelementptr inbounds %struct.xpvav, ptr %193, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !123
  %196 = getelementptr inbounds ptr, ptr %192, i64 %195
  %197 = getelementptr inbounds ptr, ptr %196, i64 1
  %198 = load i32, ptr %2, align 4, !tbaa !115
  %199 = and i32 %198, 33554432
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %224, label %201

201:                                              ; preds = %189
  %202 = load ptr, ptr %8, align 8, !tbaa !106
  %203 = load ptr, ptr %0, align 8, !tbaa !99
  %204 = getelementptr inbounds %struct.xpvhv, ptr %203, i64 0, i32 3
  %205 = load i64, ptr %204, align 8, !tbaa !101
  %206 = getelementptr ptr, ptr %202, i64 %205
  %207 = getelementptr ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !106
  %209 = icmp eq ptr %208, null
  br i1 %209, label %224, label %210

210:                                              ; preds = %201
  %211 = getelementptr i8, ptr %206, i64 36
  %212 = load i32, ptr %211, align 4, !tbaa !120
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = load ptr, ptr %208, align 8, !tbaa !95
  br label %224

216:                                              ; preds = %210
  %217 = icmp slt i32 %212, -1
  br i1 %217, label %218, label %221

218:                                              ; preds = %216
  %219 = getelementptr inbounds ptr, ptr %208, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !95
  br label %224

221:                                              ; preds = %216
  %222 = icmp eq i32 %212, -1
  %223 = select i1 %222, ptr null, ptr %208
  br label %224

224:                                              ; preds = %221, %189, %201, %214, %218
  %225 = phi ptr [ %215, %214 ], [ %220, %218 ], [ null, %201 ], [ null, %189 ], [ %223, %221 ]
  %226 = icmp ne ptr %225, null
  %227 = or i1 %200, %226
  br i1 %227, label %243, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %8, align 8, !tbaa !106
  %230 = load ptr, ptr %0, align 8, !tbaa !99
  %231 = getelementptr inbounds %struct.xpvhv, ptr %230, i64 0, i32 3
  %232 = load i64, ptr %231, align 8, !tbaa !101
  %233 = getelementptr ptr, ptr %229, i64 %232
  %234 = getelementptr ptr, ptr %233, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !106
  %236 = icmp eq ptr %235, null
  br i1 %236, label %243, label %237

237:                                              ; preds = %228
  %238 = getelementptr i8, ptr %233, i64 36
  %239 = load i32, ptr %238, align 4, !tbaa !120
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr %235, align 8, !tbaa !95
  br label %243

243:                                              ; preds = %224, %241, %228, %237
  %244 = phi ptr [ %225, %224 ], [ %242, %241 ], [ null, %228 ], [ %235, %237 ]
  %245 = icmp ult ptr %192, %197
  br i1 %245, label %246, label %252

246:                                              ; preds = %243, %246
  %247 = phi ptr [ %248, %246 ], [ %192, %243 ]
  %248 = getelementptr inbounds ptr, ptr %247, i64 1
  %249 = load ptr, ptr %247, align 8, !tbaa !95
  %250 = tail call ptr @Perl_hv_common(ptr noundef %190, ptr noundef %249, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %251 = icmp ult ptr %247, %196
  br i1 %251, label %246, label %252, !llvm.loop !129

252:                                              ; preds = %246, %243
  %253 = getelementptr inbounds %struct.hek, ptr %244, i64 0, i32 2
  %254 = getelementptr inbounds %struct.hek, ptr %244, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !130
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %253, i64 %256
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = load i8, ptr %258, align 1, !tbaa !106
  %260 = zext i8 %259 to i32
  %261 = load i32, ptr %244, align 4, !tbaa !132
  %262 = tail call ptr @Perl_hv_common(ptr noundef %190, ptr noundef null, ptr noundef nonnull %253, i64 noundef %256, i32 noundef %260, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef %261) #7
  %263 = tail call ptr @Perl_hv_common_key_len(ptr noundef %190, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %264 = getelementptr inbounds %struct.hv, ptr %190, i64 0, i32 2
  %265 = load i32, ptr %264, align 4, !tbaa !115
  %266 = or i32 %265, 134283264
  store i32 %266, ptr %264, align 4, !tbaa !115
  store ptr %190, ptr %186, align 8, !tbaa !128
  br label %267

267:                                              ; preds = %252, %184
  ret ptr %185
}

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_isa_changed_in(ptr noundef %0) local_unnamed_addr #3 !prof !133 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !115
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7, !prof !134

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = load ptr, ptr %0, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !101
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !134

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !120
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !134

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !95
  br label %31

23:                                               ; preds = %17
  %24 = icmp slt i32 %19, -1
  br i1 %24, label %25, label %28, !prof !134

25:                                               ; preds = %23
  %26 = getelementptr inbounds ptr, ptr %15, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  br label %31

28:                                               ; preds = %23
  %29 = icmp eq i32 %19, -1
  %30 = select i1 %29, ptr null, ptr %15, !prof !134
  br label %31

31:                                               ; preds = %28, %1, %7, %21, %25
  %32 = phi ptr [ %22, %21 ], [ %27, %25 ], [ null, %7 ], [ null, %1 ], [ %30, %28 ]
  br i1 %6, label %59, label %33, !prof !134

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = load ptr, ptr %0, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.xpvhv, ptr %36, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !101
  %39 = getelementptr ptr, ptr %35, i64 %38
  %40 = getelementptr ptr, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43, !prof !134

43:                                               ; preds = %33
  %44 = getelementptr i8, ptr %39, i64 36
  %45 = load i32, ptr %44, align 4, !tbaa !120
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %59, label %47, !prof !134

47:                                               ; preds = %43
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %53, label %49, !prof !134

49:                                               ; preds = %47
  %50 = icmp slt i32 %45, -1
  br i1 %50, label %51, label %56, !prof !134

51:                                               ; preds = %49
  %52 = getelementptr inbounds ptr, ptr %41, i64 1
  br label %53

53:                                               ; preds = %47, %51
  %54 = phi ptr [ %52, %51 ], [ %41, %47 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %41, %49 ], [ %55, %53 ]
  %58 = getelementptr inbounds %struct.hek, ptr %57, i64 0, i32 2
  br label %59

59:                                               ; preds = %31, %33, %43, %56
  %60 = phi ptr [ %58, %56 ], [ null, %43 ], [ null, %33 ], [ null, %31 ]
  br i1 %6, label %88, label %61, !prof !134

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = load ptr, ptr %0, align 8, !tbaa !99
  %65 = getelementptr inbounds %struct.xpvhv, ptr %64, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !101
  %67 = getelementptr ptr, ptr %63, i64 %66
  %68 = getelementptr ptr, ptr %67, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !106
  %70 = icmp eq ptr %69, null
  br i1 %70, label %88, label %71, !prof !134

71:                                               ; preds = %61
  %72 = getelementptr i8, ptr %67, i64 36
  %73 = load i32, ptr %72, align 4, !tbaa !120
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %88, label %75, !prof !134

75:                                               ; preds = %71
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %81, label %77, !prof !134

77:                                               ; preds = %75
  %78 = icmp slt i32 %73, -1
  br i1 %78, label %79, label %84, !prof !134

79:                                               ; preds = %77
  %80 = getelementptr inbounds ptr, ptr %69, i64 1
  br label %81

81:                                               ; preds = %75, %79
  %82 = phi ptr [ %80, %79 ], [ %69, %75 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi ptr [ %69, %77 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !130
  br label %88

88:                                               ; preds = %59, %61, %71, %84
  %89 = phi i32 [ %87, %84 ], [ 0, %71 ], [ 0, %61 ], [ 0, %59 ]
  %90 = sext i32 %89 to i64
  %91 = icmp eq ptr %60, null
  br i1 %91, label %92, label %93, !prof !134

92:                                               ; preds = %88
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #7
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !106
  %96 = load ptr, ptr %0, align 8, !tbaa !99
  %97 = getelementptr inbounds %struct.xpvhv, ptr %96, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !101
  %99 = getelementptr ptr, ptr %95, i64 %98
  %100 = getelementptr ptr, ptr %99, i64 5
  %101 = load ptr, ptr %100, align 8, !tbaa !110
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %114, !prof !135

103:                                              ; preds = %93
  %104 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %105 = load ptr, ptr %94, align 8, !tbaa !106
  %106 = load ptr, ptr %0, align 8, !tbaa !99
  %107 = getelementptr inbounds %struct.xpvhv, ptr %106, i64 0, i32 3
  %108 = load i64, ptr %107, align 8, !tbaa !101
  %109 = getelementptr ptr, ptr %105, i64 %108
  %110 = getelementptr ptr, ptr %109, i64 5
  store ptr %104, ptr %110, align 8, !tbaa !110
  %111 = getelementptr inbounds %struct.mro_meta, ptr %104, i64 0, i32 3
  store i32 1, ptr %111, align 8, !tbaa !112
  %112 = getelementptr inbounds %struct.mro_meta, ptr %104, i64 0, i32 4
  store i32 1, ptr %112, align 4, !tbaa !113
  %113 = getelementptr inbounds %struct.mro_meta, ptr %104, i64 0, i32 5
  store ptr @dfs_alg, ptr %113, align 8, !tbaa !94
  br label %114

114:                                              ; preds = %93, %103
  %115 = phi ptr [ %104, %103 ], [ %101, %93 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !82
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118, !prof !136

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.sv, ptr %116, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !109
  %121 = icmp ugt i32 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = add i32 %120, -1
  store i32 %123, ptr %119, align 8, !tbaa !109
  br label %125

124:                                              ; preds = %118
  tail call void @Perl_sv_free2(ptr noundef nonnull %116, i32 noundef %120) #7
  br label %125

125:                                              ; preds = %122, %124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, i8 0, i64 16, i1 false)
  br label %138

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.mro_meta, ptr %115, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !96
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130, !prof !137

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !109
  %133 = icmp ugt i32 %132, 1
  br i1 %133, label %134, label %136, !prof !138

134:                                              ; preds = %130
  %135 = add i32 %132, -1
  store i32 %135, ptr %131, align 8, !tbaa !109
  br label %137

136:                                              ; preds = %130
  tail call void @Perl_sv_free2(ptr noundef nonnull %128, i32 noundef %132) #7
  br label %137

137:                                              ; preds = %134, %136
  store ptr null, ptr %127, align 8, !tbaa !96
  br label %138

138:                                              ; preds = %126, %137, %125
  %139 = getelementptr inbounds %struct.mro_meta, ptr %115, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !128
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142, !prof !137

142:                                              ; preds = %138
  %143 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %140) #7
  store ptr null, ptr %139, align 8, !tbaa !128
  br label %144

144:                                              ; preds = %142, %138
  %145 = phi ptr [ %143, %142 ], [ null, %138 ]
  %146 = getelementptr inbounds %struct.mro_meta, ptr %115, i64 0, i32 4
  %147 = load i32, ptr %146, align 4, !tbaa !113
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !113
  %149 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %150 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 2
  %151 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !130
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %150, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !106
  %157 = and i8 %156, 1
  %158 = zext nneg i8 %157 to i32
  %159 = load i32, ptr %32, align 4, !tbaa !132
  %160 = tail call ptr @Perl_hv_common(ptr noundef %149, ptr noundef null, ptr noundef nonnull %150, i64 noundef %153, i32 noundef %158, i32 noundef 32, ptr noundef null, i32 noundef %159) #7
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162, !prof !139

162:                                              ; preds = %144
  %163 = load ptr, ptr %160, align 8, !tbaa !95
  br label %164

164:                                              ; preds = %144, %162
  %165 = phi ptr [ %163, %162 ], [ null, %144 ]
  %166 = icmp eq i32 %89, 9
  br i1 %166, label %167, label %170, !prof !134

167:                                              ; preds = %164
  %168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(10) @.str.4) #8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167, %164
  %171 = icmp eq ptr %165, null
  br i1 %171, label %178, label %172, !prof !139

172:                                              ; preds = %170
  %173 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %165, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175, !prof !140

175:                                              ; preds = %167, %172
  %176 = load i32, ptr @PL_sub_generation, align 4, !tbaa !141
  %177 = add i32 %176, 1
  store i32 %177, ptr @PL_sub_generation, align 4, !tbaa !141
  br label %182

178:                                              ; preds = %172, %170
  %179 = getelementptr inbounds %struct.mro_meta, ptr %115, i64 0, i32 3
  %180 = load i32, ptr %179, align 8, !tbaa !112
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 8, !tbaa !112
  br label %182

182:                                              ; preds = %178, %175
  %183 = phi i1 [ true, %175 ], [ false, %178 ]
  %184 = getelementptr inbounds %struct.mro_meta, ptr %115, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !142
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187, !prof !136

187:                                              ; preds = %182
  tail call void @Perl_hv_clear(ptr noundef nonnull %185) #7
  br label %188

188:                                              ; preds = %187, %182
  %189 = load i32, ptr %3, align 4, !tbaa !115
  %190 = or i32 %189, 268435456
  store i32 %190, ptr %3, align 4, !tbaa !115
  %191 = load ptr, ptr %94, align 8, !tbaa !106
  %192 = load ptr, ptr %0, align 8, !tbaa !99
  %193 = getelementptr inbounds %struct.xpvhv, ptr %192, i64 0, i32 3
  %194 = load i64, ptr %193, align 8, !tbaa !101
  %195 = getelementptr ptr, ptr %191, i64 %194
  %196 = getelementptr i8, ptr %195, i64 60
  %197 = load i32, ptr %196, align 4, !tbaa !143
  %198 = and i32 %197, -3
  store i32 %198, ptr %196, align 4, !tbaa !143
  %199 = and i32 %189, 1048576
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202, !prof !136

201:                                              ; preds = %188
  store ptr null, ptr %192, align 8, !tbaa !144
  br label %202

202:                                              ; preds = %201, %188
  %203 = icmp eq ptr %165, null
  br i1 %203, label %438, label %204, !prof !139

204:                                              ; preds = %202
  %205 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %165) #7
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207, !prof !146

207:                                              ; preds = %204
  %208 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %209 = tail call ptr @Perl_sv_2mortal(ptr noundef %208) #7
  br label %210

210:                                              ; preds = %207, %204
  %211 = phi ptr [ %209, %207 ], [ null, %204 ]
  %212 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %165, i32 noundef 0) #7
  %213 = icmp eq ptr %212, null
  br i1 %213, label %291, label %214, !prof !147

214:                                              ; preds = %210, %288
  %215 = phi ptr [ %289, %288 ], [ %212, %210 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %216 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %215) #7
  %217 = call ptr @Perl_gv_stashsv(ptr noundef %216, i32 noundef 0) #7
  store ptr %217, ptr %2, align 8, !tbaa !95
  %218 = icmp eq ptr %217, null
  br i1 %218, label %288, label %219, !prof !146, !llvm.loop !148

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.hv, ptr %217, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !106
  %222 = load ptr, ptr %217, align 8, !tbaa !99
  %223 = getelementptr inbounds %struct.xpvhv, ptr %222, i64 0, i32 3
  %224 = load i64, ptr %223, align 8, !tbaa !101
  %225 = getelementptr ptr, ptr %221, i64 %224
  %226 = getelementptr ptr, ptr %225, i64 5
  %227 = load ptr, ptr %226, align 8, !tbaa !110
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %240, !prof !146

229:                                              ; preds = %219
  %230 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %231 = load ptr, ptr %220, align 8, !tbaa !106
  %232 = load ptr, ptr %217, align 8, !tbaa !99
  %233 = getelementptr inbounds %struct.xpvhv, ptr %232, i64 0, i32 3
  %234 = load i64, ptr %233, align 8, !tbaa !101
  %235 = getelementptr ptr, ptr %231, i64 %234
  %236 = getelementptr ptr, ptr %235, i64 5
  store ptr %230, ptr %236, align 8, !tbaa !110
  %237 = getelementptr inbounds %struct.mro_meta, ptr %230, i64 0, i32 3
  store i32 1, ptr %237, align 8, !tbaa !112
  %238 = getelementptr inbounds %struct.mro_meta, ptr %230, i64 0, i32 4
  store i32 1, ptr %238, align 4, !tbaa !113
  %239 = getelementptr inbounds %struct.mro_meta, ptr %230, i64 0, i32 5
  store ptr @dfs_alg, ptr %239, align 8, !tbaa !94
  br label %240

240:                                              ; preds = %219, %229
  %241 = phi ptr [ %230, %229 ], [ %227, %219 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !82
  %243 = icmp eq ptr %242, null
  br i1 %243, label %252, label %244, !prof !140

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 1
  %246 = load i32, ptr %245, align 8, !tbaa !109
  %247 = icmp ugt i32 %246, 1
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = add i32 %246, -1
  store i32 %249, ptr %245, align 8, !tbaa !109
  br label %251

250:                                              ; preds = %244
  call void @Perl_sv_free2(ptr noundef nonnull %242, i32 noundef %246) #7
  br label %251

251:                                              ; preds = %248, %250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %241, i8 0, i64 16, i1 false)
  br label %264

252:                                              ; preds = %240
  %253 = getelementptr inbounds %struct.mro_meta, ptr %241, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !96
  %255 = icmp eq ptr %254, null
  br i1 %255, label %264, label %256, !prof !146

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.sv, ptr %254, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !109
  %259 = icmp ugt i32 %258, 1
  br i1 %259, label %260, label %262, !prof !146

260:                                              ; preds = %256
  %261 = add i32 %258, -1
  store i32 %261, ptr %257, align 8, !tbaa !109
  br label %263

262:                                              ; preds = %256
  call void @Perl_sv_free2(ptr noundef nonnull %254, i32 noundef %258) #7
  br label %263

263:                                              ; preds = %260, %262
  store ptr null, ptr %253, align 8, !tbaa !96
  br label %264

264:                                              ; preds = %252, %263, %251
  br i1 %183, label %269, label %265, !prof !146

265:                                              ; preds = %264
  %266 = getelementptr inbounds %struct.mro_meta, ptr %241, i64 0, i32 3
  %267 = load i32, ptr %266, align 8, !tbaa !112
  %268 = add i32 %267, 1
  store i32 %268, ptr %266, align 8, !tbaa !112
  br label %269

269:                                              ; preds = %265, %264
  %270 = getelementptr inbounds %struct.mro_meta, ptr %241, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !142
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273, !prof !140

273:                                              ; preds = %269
  call void @Perl_hv_clear(ptr noundef nonnull %271) #7
  br label %274

274:                                              ; preds = %273, %269
  %275 = load ptr, ptr %2, align 8, !tbaa !95
  %276 = getelementptr inbounds %struct.hv, ptr %275, i64 0, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !115
  %278 = and i32 %277, 1048576
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %282, !prof !140

280:                                              ; preds = %274
  %281 = load ptr, ptr %275, align 8, !tbaa !99
  store ptr null, ptr %281, align 8, !tbaa !144
  br label %282

282:                                              ; preds = %280, %274
  %283 = getelementptr inbounds %struct.mro_meta, ptr %241, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !128
  %285 = icmp eq ptr %284, null
  %286 = select i1 %285, ptr @PL_sv_undef, ptr %284, !prof !146
  %287 = call ptr @Perl_hv_common_key_len(ptr noundef %211, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %286, i32 noundef 0) #7
  store ptr null, ptr %283, align 8, !tbaa !128
  br label %288

288:                                              ; preds = %214, %282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %289 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %165, i32 noundef 0) #7
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %214, !prof !149

291:                                              ; preds = %288, %210
  %292 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %165) #7
  %293 = getelementptr inbounds %struct.sv, ptr %292, i64 0, i32 1
  %294 = load i32, ptr %293, align 8, !tbaa !109
  %295 = add i32 %294, 1
  store i32 %295, ptr %293, align 8, !tbaa !109
  %296 = icmp eq ptr %211, null
  br i1 %296, label %438, label %297, !prof !146

297:                                              ; preds = %291
  %298 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %211) #7
  %299 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %211, i32 noundef 0) #7
  %300 = icmp eq ptr %299, null
  br i1 %300, label %438, label %301, !prof !147

301:                                              ; preds = %297, %435
  %302 = phi ptr [ %436, %435 ], [ %299, %297 ]
  %303 = getelementptr inbounds %struct.he, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !150
  %305 = getelementptr inbounds %struct.hek, ptr %304, i64 0, i32 2
  %306 = load ptr, ptr %305, align 4, !tbaa !95
  %307 = getelementptr inbounds %struct.he, ptr %302, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !106
  %309 = call ptr @Perl_mro_get_linear_isa(ptr noundef %306)
  %310 = getelementptr inbounds %struct.av, ptr %309, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !106
  %312 = load ptr, ptr %309, align 8, !tbaa !121
  %313 = getelementptr inbounds %struct.xpvav, ptr %312, i64 0, i32 2
  %314 = load i64, ptr %313, align 8, !tbaa !123
  %315 = trunc i64 %314 to i32
  %316 = getelementptr inbounds %struct.hv, ptr %306, i64 0, i32 2
  %317 = load i32, ptr %316, align 4, !tbaa !115
  %318 = and i32 %317, 33554432
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %344, label %320, !prof !146

320:                                              ; preds = %301
  %321 = getelementptr inbounds %struct.hv, ptr %306, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !106
  %323 = load ptr, ptr %306, align 8, !tbaa !99
  %324 = getelementptr inbounds %struct.xpvhv, ptr %323, i64 0, i32 3
  %325 = load i64, ptr %324, align 8, !tbaa !101
  %326 = getelementptr ptr, ptr %322, i64 %325
  %327 = getelementptr ptr, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !106
  %329 = icmp eq ptr %328, null
  br i1 %329, label %344, label %330, !prof !146

330:                                              ; preds = %320
  %331 = getelementptr i8, ptr %326, i64 36
  %332 = load i32, ptr %331, align 4, !tbaa !120
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %336, !prof !146

334:                                              ; preds = %330
  %335 = load ptr, ptr %328, align 8, !tbaa !95
  br label %344

336:                                              ; preds = %330
  %337 = icmp slt i32 %332, -1
  br i1 %337, label %338, label %341, !prof !146

338:                                              ; preds = %336
  %339 = getelementptr inbounds ptr, ptr %328, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !95
  br label %344

341:                                              ; preds = %336
  %342 = icmp eq i32 %332, -1
  %343 = select i1 %342, ptr null, ptr %328, !prof !146
  br label %344

344:                                              ; preds = %341, %301, %320, %334, %338
  %345 = phi ptr [ %335, %334 ], [ %340, %338 ], [ null, %320 ], [ null, %301 ], [ %343, %341 ]
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %364, !prof !146

347:                                              ; preds = %344
  br i1 %319, label %364, label %348

348:                                              ; preds = %347
  %349 = getelementptr inbounds %struct.hv, ptr %306, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !106
  %351 = load ptr, ptr %306, align 8, !tbaa !99
  %352 = getelementptr inbounds %struct.xpvhv, ptr %351, i64 0, i32 3
  %353 = load i64, ptr %352, align 8, !tbaa !101
  %354 = getelementptr ptr, ptr %350, i64 %353
  %355 = getelementptr ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !106
  %357 = icmp eq ptr %356, null
  br i1 %357, label %364, label %358

358:                                              ; preds = %348
  %359 = getelementptr i8, ptr %354, i64 36
  %360 = load i32, ptr %359, align 4, !tbaa !120
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %356, align 8, !tbaa !95
  br label %364

364:                                              ; preds = %362, %348, %347, %358, %344
  %365 = phi ptr [ %345, %344 ], [ %363, %362 ], [ null, %348 ], [ null, %347 ], [ %356, %358 ]
  %366 = icmp eq i32 %315, 0
  br i1 %366, label %396, label %367, !prof !147

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.hek, ptr %365, i64 0, i32 2
  %369 = getelementptr inbounds %struct.hek, ptr %365, i64 0, i32 1
  %370 = getelementptr %struct.hek, ptr %365, i64 0, i32 2, i64 1
  br label %371

371:                                              ; preds = %367, %386
  %372 = phi i32 [ %315, %367 ], [ %375, %386 ]
  %373 = phi ptr [ %311, %367 ], [ %374, %386 ]
  %374 = getelementptr inbounds ptr, ptr %373, i64 1
  %375 = add nsw i32 %372, -1
  %376 = load ptr, ptr %374, align 8, !tbaa !95
  %377 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %378 = call ptr @Perl_hv_common(ptr noundef %377, ptr noundef %376, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %379 = getelementptr inbounds %struct.he, ptr %378, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !106
  %381 = getelementptr inbounds %struct.sv, ptr %380, i64 0, i32 2
  %382 = load i32, ptr %381, align 4, !tbaa !152
  %383 = and i32 %382, 252
  %384 = icmp ugt i32 %383, 11
  br i1 %384, label %386, label %385, !prof !153

385:                                              ; preds = %371
  call void @Perl_sv_upgrade(ptr noundef %380, i32 noundef 12) #7
  br label %386

386:                                              ; preds = %385, %371
  %387 = load i32, ptr %369, align 4, !tbaa !130
  %388 = sext i32 %387 to i64
  %389 = getelementptr i8, ptr %370, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !106
  %391 = and i8 %390, 1
  %392 = zext nneg i8 %391 to i32
  %393 = load i32, ptr %365, align 4, !tbaa !132
  %394 = call ptr @Perl_hv_common(ptr noundef %380, ptr noundef null, ptr noundef nonnull %368, i64 noundef %388, i32 noundef %392, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %393) #7
  %395 = icmp eq i32 %375, 0
  br i1 %395, label %396, label %371, !prof !154, !llvm.loop !155

396:                                              ; preds = %386, %364
  %397 = icmp eq ptr %308, @PL_sv_undef
  br i1 %397, label %435, label %398, !prof !146

398:                                              ; preds = %396
  %399 = getelementptr inbounds %struct.hek, ptr %365, i64 0, i32 2
  %400 = getelementptr inbounds %struct.hek, ptr %365, i64 0, i32 1
  %401 = load i32, ptr %400, align 4, !tbaa !130
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.hv, ptr %306, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !106
  %405 = load ptr, ptr %306, align 8, !tbaa !99
  %406 = getelementptr inbounds %struct.xpvhv, ptr %405, i64 0, i32 3
  %407 = load i64, ptr %406, align 8, !tbaa !101
  %408 = getelementptr ptr, ptr %404, i64 %407
  %409 = getelementptr ptr, ptr %408, i64 5
  %410 = load ptr, ptr %409, align 8, !tbaa !110
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %423, !prof !146

412:                                              ; preds = %398
  %413 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %414 = load ptr, ptr %403, align 8, !tbaa !106
  %415 = load ptr, ptr %306, align 8, !tbaa !99
  %416 = getelementptr inbounds %struct.xpvhv, ptr %415, i64 0, i32 3
  %417 = load i64, ptr %416, align 8, !tbaa !101
  %418 = getelementptr ptr, ptr %414, i64 %417
  %419 = getelementptr ptr, ptr %418, i64 5
  store ptr %413, ptr %419, align 8, !tbaa !110
  %420 = getelementptr inbounds %struct.mro_meta, ptr %413, i64 0, i32 3
  store i32 1, ptr %420, align 8, !tbaa !112
  %421 = getelementptr inbounds %struct.mro_meta, ptr %413, i64 0, i32 4
  store i32 1, ptr %421, align 4, !tbaa !113
  %422 = getelementptr inbounds %struct.mro_meta, ptr %413, i64 0, i32 5
  store ptr @dfs_alg, ptr %422, align 8, !tbaa !94
  br label %423

423:                                              ; preds = %398, %412
  %424 = phi ptr [ %413, %412 ], [ %410, %398 ]
  %425 = getelementptr inbounds %struct.mro_meta, ptr %424, i64 0, i32 6
  %426 = load ptr, ptr %425, align 8, !tbaa !128
  %427 = load i32, ptr %365, align 4, !tbaa !132
  %428 = load i32, ptr %400, align 4, !tbaa !130
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, ptr %399, i64 %429
  %431 = getelementptr inbounds i8, ptr %430, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !106
  %433 = and i8 %432, 1
  %434 = zext nneg i8 %433 to i32
  call fastcc void @S_mro_clean_isarev(ptr noundef %308, ptr noundef nonnull %399, i64 noundef %402, ptr noundef %426, i32 noundef %427, i32 noundef %434)
  br label %435

435:                                              ; preds = %423, %396
  %436 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %211, i32 noundef 0) #7
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %301, !prof !149, !llvm.loop !156

438:                                              ; preds = %435, %297, %291, %202
  %439 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %0)
  %440 = load ptr, ptr %439, align 8, !tbaa !121
  %441 = getelementptr inbounds %struct.xpvav, ptr %440, i64 0, i32 2
  %442 = load i64, ptr %441, align 8, !tbaa !123
  %443 = trunc i64 %442 to i32
  %444 = getelementptr %struct.hek, ptr %32, i64 0, i32 2, i64 1
  %445 = icmp eq i32 %443, 0
  br i1 %445, label %474, label %446, !prof !157

446:                                              ; preds = %438
  %447 = getelementptr inbounds %struct.av, ptr %439, i64 0, i32 3
  %448 = load ptr, ptr %447, align 8, !tbaa !106
  br label %449

449:                                              ; preds = %446, %464
  %450 = phi i32 [ %453, %464 ], [ %443, %446 ]
  %451 = phi ptr [ %452, %464 ], [ %448, %446 ]
  %452 = getelementptr inbounds ptr, ptr %451, i64 1
  %453 = add nsw i32 %450, -1
  %454 = load ptr, ptr %452, align 8, !tbaa !95
  %455 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %456 = call ptr @Perl_hv_common(ptr noundef %455, ptr noundef %454, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %457 = getelementptr inbounds %struct.he, ptr %456, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !106
  %459 = getelementptr inbounds %struct.sv, ptr %458, i64 0, i32 2
  %460 = load i32, ptr %459, align 4, !tbaa !152
  %461 = and i32 %460, 252
  %462 = icmp ugt i32 %461, 11
  br i1 %462, label %464, label %463, !prof !158

463:                                              ; preds = %449
  call void @Perl_sv_upgrade(ptr noundef %458, i32 noundef 12) #7
  br label %464

464:                                              ; preds = %463, %449
  %465 = load i32, ptr %151, align 4, !tbaa !130
  %466 = sext i32 %465 to i64
  %467 = getelementptr i8, ptr %444, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !106
  %469 = and i8 %468, 1
  %470 = zext nneg i8 %469 to i32
  %471 = load i32, ptr %32, align 4, !tbaa !132
  %472 = call ptr @Perl_hv_common(ptr noundef %458, ptr noundef null, ptr noundef nonnull %150, i64 noundef %466, i32 noundef %470, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %471) #7
  %473 = icmp eq i32 %453, 0
  br i1 %473, label %474, label %449, !prof !159, !llvm.loop !160

474:                                              ; preds = %464, %438
  %475 = icmp eq ptr %145, null
  br i1 %475, label %490, label %476, !prof !137

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.hv, ptr %145, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !106
  %479 = icmp eq ptr %478, null
  br i1 %479, label %490, label %480, !prof !161

480:                                              ; preds = %476
  %481 = load ptr, ptr %139, align 8, !tbaa !128
  %482 = load i32, ptr %32, align 4, !tbaa !132
  %483 = load i32, ptr %151, align 4, !tbaa !130
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, ptr %150, i64 %484
  %486 = getelementptr inbounds i8, ptr %485, i64 1
  %487 = load i8, ptr %486, align 1, !tbaa !106
  %488 = and i8 %487, 1
  %489 = zext nneg i8 %488 to i32
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %145, ptr noundef %60, i64 noundef %90, ptr noundef %481, i32 noundef %482, i32 noundef %489)
  br label %490

490:                                              ; preds = %480, %476, %474
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_mro_clean_isarev(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !162 !PGOFuncName !163 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11, !prof !164

11:                                               ; preds = %6
  %12 = tail call i32 @Perl_hv_iterinit(ptr noundef %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %95, label %14, !prof !164

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %95, label %17, !prof !147

17:                                               ; preds = %14
  %18 = icmp eq ptr %3, null
  br label %19

19:                                               ; preds = %17, %92
  %20 = phi ptr [ %15, %17 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %21 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %20, ptr noundef nonnull %7) #7
  br i1 %18, label %39, label %22, !prof !165

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 2
  %26 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !130
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !106
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr %7, align 4
  %35 = sub nsw i32 0, %34
  %36 = select i1 %33, i32 %34, i32 %35, !prof !166
  %37 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %3, ptr noundef %21, i32 noundef %36, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %92, !prof !165, !llvm.loop !167

39:                                               ; preds = %22, %19
  %40 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  %43 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 2
  %44 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !130
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !106
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  %52 = load i32, ptr %7, align 4
  %53 = sub nsw i32 0, %52
  %54 = select i1 %51, i32 %52, i32 %53
  %55 = call ptr @Perl_hv_common_key_len(ptr noundef %40, ptr noundef %21, i32 noundef %54, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %92, label %57

57:                                               ; preds = %39
  %58 = load ptr, ptr %55, align 8, !tbaa !95
  %59 = call ptr @Perl_hv_common(ptr noundef %58, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %5, i32 noundef 68, ptr noundef null, i32 noundef %4) #7
  %60 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !106
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %58, align 8, !tbaa !99
  %65 = getelementptr inbounds %struct.xpvhv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !168
  %67 = getelementptr inbounds %struct.xpvmg, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !106
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %58) #7
  br label %72

72:                                               ; preds = %63, %70
  %73 = phi i32 [ %71, %70 ], [ 0, %63 ]
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %66, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72, %57
  %77 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %78 = load ptr, ptr %41, align 8, !tbaa !150
  %79 = getelementptr inbounds %struct.hek, ptr %78, i64 0, i32 2
  %80 = getelementptr inbounds %struct.hek, ptr %78, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !130
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !106
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = load i32, ptr %7, align 4
  %89 = sub nsw i32 0, %88
  %90 = select i1 %87, i32 %88, i32 %89
  %91 = call ptr @Perl_hv_common_key_len(ptr noundef %77, ptr noundef %21, i32 noundef %90, i32 noundef 68, ptr noundef null, i32 noundef 0) #7
  br label %92

92:                                               ; preds = %39, %76, %72, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %93 = call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %19, !prof !169

95:                                               ; preds = %92, %14, %11, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_mro_package_moved(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !81 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.xpvgv, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %10, null
  br i1 %11, label %253, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !115
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %253, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hv, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = load ptr, ptr %10, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.xpvhv, ptr %20, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = getelementptr ptr, ptr %19, i64 %22
  %24 = getelementptr ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = icmp eq ptr %25, null
  br i1 %26, label %253, label %27

27:                                               ; preds = %17
  %28 = getelementptr i8, ptr %23, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !120
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %253, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.xpvgv, ptr %8, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2
  %35 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !130
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !106
  %41 = and i8 %40, 1
  %42 = zext nneg i8 %41 to i32
  %43 = load i32, ptr %33, align 4, !tbaa !132
  %44 = tail call ptr @Perl_hv_common(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %34, i64 noundef %37, i32 noundef %42, i32 noundef 32, ptr noundef null, i32 noundef %43) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %253, label %46

46:                                               ; preds = %31
  %47 = load ptr, ptr %44, align 8, !tbaa !95
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %49, label %253

49:                                               ; preds = %46, %4
  %50 = load ptr, ptr %2, align 8, !tbaa !170
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = getelementptr inbounds %struct.hv, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = load ptr, ptr %52, align 8, !tbaa !99
  %56 = getelementptr inbounds %struct.xpvhv, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !101
  %58 = getelementptr ptr, ptr %54, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = getelementptr i8, ptr %58, i64 36
  %61 = load i32, ptr %60, align 4, !tbaa !120
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %49
  %64 = load ptr, ptr %59, align 8, !tbaa !106
  %65 = icmp slt i32 %61, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds ptr, ptr %64, i64 1
  %68 = xor i32 %61, -1
  br label %69

69:                                               ; preds = %49, %63, %66
  %70 = phi i32 [ %68, %66 ], [ %61, %63 ], [ 1, %49 ]
  %71 = phi ptr [ %67, %66 ], [ %64, %63 ], [ %59, %49 ]
  %72 = icmp eq i32 %70, 1
  br i1 %72, label %73, label %122

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !95
  %75 = getelementptr inbounds %struct.hek, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !130
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.hek, ptr %74, i64 0, i32 2
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !106
  %85 = getelementptr inbounds %struct.hek, ptr %84, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !130
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 524288) #7
  br label %103

90:                                               ; preds = %82
  %91 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 0, i32 noundef 524288) #7
  br label %103

92:                                               ; preds = %78, %73
  %93 = tail call ptr @Perl_newSVhek(ptr noundef %74) #7
  %94 = tail call ptr @Perl_sv_2mortal(ptr noundef %93) #7
  %95 = load ptr, ptr %2, align 8, !tbaa !170
  %96 = getelementptr inbounds %struct.xpvgv, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !106
  %98 = getelementptr inbounds %struct.hek, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !130
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  tail call void @Perl_sv_catpvn_flags(ptr noundef %94, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %103

102:                                              ; preds = %92
  tail call void @Perl_sv_catpvn_flags(ptr noundef %94, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  br label %103

103:                                              ; preds = %88, %90, %101, %102
  %104 = phi ptr [ %94, %101 ], [ %94, %102 ], [ %89, %88 ], [ %91, %90 ]
  %105 = load ptr, ptr %2, align 8, !tbaa !170
  %106 = getelementptr inbounds %struct.xpvgv, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !106
  %108 = getelementptr inbounds %struct.hek, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !130
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %181, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.hek, ptr %107, i64 0, i32 2
  %113 = add nsw i32 %109, -2
  %114 = sext i32 %113 to i64
  %115 = sext i32 %109 to i64
  %116 = getelementptr inbounds i8, ptr %112, i64 %115
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = load i8, ptr %117, align 1, !tbaa !106
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %104, ptr noundef nonnull %112, i64 noundef %114, i32 noundef %121) #7
  br label %181

122:                                              ; preds = %69
  %123 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %124 = tail call ptr @Perl_sv_2mortal(ptr noundef %123) #7
  %125 = icmp eq i32 %70, 0
  br i1 %125, label %181, label %126

126:                                              ; preds = %122, %179
  %127 = phi i32 [ %129, %179 ], [ %70, %122 ]
  %128 = phi ptr [ %161, %179 ], [ %71, %122 ]
  %129 = add nsw i32 %127, -1
  %130 = load ptr, ptr %128, align 8, !tbaa !95
  %131 = getelementptr inbounds %struct.hek, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !130
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.hek, ptr %130, i64 0, i32 2
  %136 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(5) @.str.6, i64 noundef 4) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load ptr, ptr %2, align 8, !tbaa !170
  %140 = getelementptr inbounds %struct.xpvgv, ptr %139, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  %142 = getelementptr inbounds %struct.hek, ptr %141, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !130
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.7, i64 noundef 1) #7
  br label %159

147:                                              ; preds = %138
  %148 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #7
  br label %159

149:                                              ; preds = %134, %126
  %150 = tail call ptr @Perl_newSVhek(ptr noundef %130) #7
  %151 = load ptr, ptr %2, align 8, !tbaa !170
  %152 = getelementptr inbounds %struct.xpvgv, ptr %151, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = getelementptr inbounds %struct.hek, ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !130
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  tail call void @Perl_sv_catpvn_flags(ptr noundef %150, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %159

158:                                              ; preds = %149
  tail call void @Perl_sv_catpvn_flags(ptr noundef %150, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  br label %159

159:                                              ; preds = %145, %147, %157, %158
  %160 = phi ptr [ %150, %157 ], [ %150, %158 ], [ %146, %145 ], [ %148, %147 ]
  %161 = getelementptr inbounds ptr, ptr %128, i64 1
  %162 = load ptr, ptr %2, align 8, !tbaa !170
  %163 = getelementptr inbounds %struct.xpvgv, ptr %162, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !106
  %165 = getelementptr inbounds %struct.hek, ptr %164, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !130
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %179, label %168

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.hek, ptr %164, i64 0, i32 2
  %170 = add nsw i32 %166, -2
  %171 = sext i32 %170 to i64
  %172 = sext i32 %166 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !106
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  %178 = select i1 %177, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %160, ptr noundef nonnull %169, i64 noundef %171, i32 noundef %178) #7
  br label %179

179:                                              ; preds = %168, %159
  tail call void @Perl_av_push(ptr noundef %124, ptr noundef %160) #7
  %180 = icmp eq i32 %129, 0
  br i1 %180, label %181, label %126, !llvm.loop !172

181:                                              ; preds = %179, %122, %103, %111
  %182 = phi ptr [ %104, %111 ], [ %104, %103 ], [ %124, %122 ], [ %124, %179 ]
  %183 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %184 = tail call ptr @Perl_sv_2mortal(ptr noundef %183) #7
  %185 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %186 = tail call ptr @Perl_sv_2mortal(ptr noundef %185) #7
  tail call fastcc void @S_mro_gather_and_rename(ptr noundef %184, ptr noundef %186, ptr noundef %0, ptr noundef %1, ptr noundef %182)
  %187 = tail call i32 @Perl_hv_iterinit(ptr noundef %184) #7
  %188 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %184, i32 noundef 0) #7
  %189 = icmp eq ptr %188, null
  br i1 %189, label %253, label %190

190:                                              ; preds = %181, %250
  %191 = phi ptr [ %251, %250 ], [ %188, %181 ]
  %192 = getelementptr inbounds %struct.he, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !150
  %194 = getelementptr inbounds %struct.hek, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 4, !tbaa !95
  %196 = getelementptr inbounds %struct.hv, ptr %195, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !115
  %198 = and i32 %197, 33554432
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %250, label %200

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.hv, ptr %195, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !106
  %203 = load ptr, ptr %195, align 8, !tbaa !99
  %204 = getelementptr inbounds %struct.xpvhv, ptr %203, i64 0, i32 3
  %205 = load i64, ptr %204, align 8, !tbaa !101
  %206 = getelementptr ptr, ptr %202, i64 %205
  %207 = getelementptr ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !106
  %209 = icmp eq ptr %208, null
  br i1 %209, label %250, label %210

210:                                              ; preds = %200
  %211 = getelementptr i8, ptr %206, i64 36
  %212 = load i32, ptr %211, align 4, !tbaa !120
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %250, label %214

214:                                              ; preds = %210
  %215 = getelementptr ptr, ptr %206, i64 5
  %216 = load ptr, ptr %215, align 8, !tbaa !110
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %220 = load ptr, ptr %201, align 8, !tbaa !106
  %221 = load ptr, ptr %195, align 8, !tbaa !99
  %222 = getelementptr inbounds %struct.xpvhv, ptr %221, i64 0, i32 3
  %223 = load i64, ptr %222, align 8, !tbaa !101
  %224 = getelementptr ptr, ptr %220, i64 %223
  %225 = getelementptr ptr, ptr %224, i64 5
  store ptr %219, ptr %225, align 8, !tbaa !110
  %226 = getelementptr inbounds %struct.mro_meta, ptr %219, i64 0, i32 3
  store i32 1, ptr %226, align 8, !tbaa !112
  %227 = getelementptr inbounds %struct.mro_meta, ptr %219, i64 0, i32 4
  store i32 1, ptr %227, align 4, !tbaa !113
  %228 = getelementptr inbounds %struct.mro_meta, ptr %219, i64 0, i32 5
  store ptr @dfs_alg, ptr %228, align 8, !tbaa !94
  br label %229

229:                                              ; preds = %214, %218
  %230 = phi ptr [ %219, %218 ], [ %216, %214 ]
  %231 = getelementptr inbounds %struct.mro_meta, ptr %230, i64 0, i32 6
  %232 = load ptr, ptr %231, align 8, !tbaa !128
  %233 = getelementptr inbounds %struct.he, ptr %191, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !106
  %235 = icmp eq ptr %232, %234
  br i1 %235, label %249, label %236

236:                                              ; preds = %229
  %237 = icmp eq ptr %232, null
  br i1 %237, label %245, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 1
  %240 = load i32, ptr %239, align 8, !tbaa !109
  %241 = icmp ugt i32 %240, 1
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = add i32 %240, -1
  store i32 %243, ptr %239, align 8, !tbaa !109
  br label %245

244:                                              ; preds = %238
  tail call void @Perl_sv_free2(ptr noundef nonnull %232, i32 noundef %240) #7
  br label %245

245:                                              ; preds = %236, %242, %244
  %246 = load ptr, ptr %233, align 8, !tbaa !106
  %247 = icmp eq ptr %246, @PL_sv_yes
  %248 = select i1 %247, ptr null, ptr %246
  store ptr %248, ptr %231, align 8, !tbaa !128
  store ptr null, ptr %233, align 8, !tbaa !106
  br label %249

249:                                              ; preds = %245, %229
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %195)
  br label %250

250:                                              ; preds = %190, %200, %210, %249
  %251 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %184, i32 noundef 0) #7
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %190, !llvm.loop !173

253:                                              ; preds = %250, %181, %12, %17, %27, %46, %31, %7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !81 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %2, ptr %6, align 8, !tbaa !95
  store ptr %3, ptr %7, align 8, !tbaa !95
  store ptr %4, ptr %8, align 8, !tbaa !95
  %14 = icmp eq ptr %2, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !115
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = load ptr, ptr %2, align 8, !tbaa !99
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !101
  %26 = getelementptr ptr, ptr %22, i64 %25
  %27 = getelementptr ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr i8, ptr %26, i64 36
  %32 = load i32, ptr %31, align 4, !tbaa !120
  %33 = icmp ne i32 %32, -1
  br label %34

34:                                               ; preds = %30, %20, %15, %5
  %35 = phi i1 [ false, %5 ], [ false, %20 ], [ false, %15 ], [ %33, %30 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %247, label %37

37:                                               ; preds = %34
  %38 = call ptr @Perl_hv_common(ptr noundef %1, ptr noundef null, ptr noundef nonnull %7, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7
  %39 = getelementptr inbounds %struct.he, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = icmp eq ptr %40, @PL_sv_undef
  %42 = icmp eq ptr %40, @PL_sv_yes
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store ptr null, ptr %7, align 8, !tbaa !95
  br label %247

45:                                               ; preds = %37
  %46 = icmp eq ptr %40, @PL_sv_no
  %47 = select i1 %46, ptr @PL_sv_yes, ptr @PL_sv_undef
  store ptr %47, ptr %39, align 8, !tbaa !106
  %48 = load ptr, ptr %7, align 8, !tbaa !95
  %49 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !106
  %51 = load ptr, ptr %48, align 8, !tbaa !99
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !101
  %54 = getelementptr ptr, ptr %50, i64 %53
  %55 = getelementptr ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8, !tbaa !110
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %45
  %59 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %60 = load ptr, ptr %49, align 8, !tbaa !106
  %61 = load ptr, ptr %48, align 8, !tbaa !99
  %62 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !101
  %64 = getelementptr ptr, ptr %60, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 5
  store ptr %59, ptr %65, align 8, !tbaa !110
  %66 = getelementptr inbounds %struct.mro_meta, ptr %59, i64 0, i32 3
  store i32 1, ptr %66, align 8, !tbaa !112
  %67 = getelementptr inbounds %struct.mro_meta, ptr %59, i64 0, i32 4
  store i32 1, ptr %67, align 4, !tbaa !113
  %68 = getelementptr inbounds %struct.mro_meta, ptr %59, i64 0, i32 5
  store ptr @dfs_alg, ptr %68, align 8, !tbaa !94
  br label %69

69:                                               ; preds = %45, %58
  %70 = phi ptr [ %59, %58 ], [ %56, %45 ]
  %71 = getelementptr inbounds %struct.mro_meta, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !128
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !109
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !109
  br label %78

78:                                               ; preds = %69, %74
  %79 = phi ptr [ %72, %74 ], [ @PL_sv_yes, %69 ]
  %80 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %79, i32 noundef 0) #7
  %81 = load ptr, ptr %70, align 8, !tbaa !82
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !109
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = add i32 %85, -1
  store i32 %88, ptr %84, align 8, !tbaa !109
  br label %90

89:                                               ; preds = %83
  call void @Perl_sv_free2(ptr noundef nonnull %81, i32 noundef %85) #7
  br label %90

90:                                               ; preds = %87, %89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  br label %103

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.mro_meta, ptr %70, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !96
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !109
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = add i32 %97, -1
  store i32 %100, ptr %96, align 8, !tbaa !109
  br label %102

101:                                              ; preds = %95
  call void @Perl_sv_free2(ptr noundef nonnull %93, i32 noundef %97) #7
  br label %102

102:                                              ; preds = %99, %101
  store ptr null, ptr %92, align 8, !tbaa !96
  br label %103

103:                                              ; preds = %91, %102, %90
  %104 = load ptr, ptr %7, align 8, !tbaa !95
  %105 = getelementptr inbounds %struct.hv, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !115
  %107 = and i32 %106, 33554432
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %247, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.hv, ptr %104, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !106
  %112 = load ptr, ptr %104, align 8, !tbaa !99
  %113 = getelementptr inbounds %struct.xpvhv, ptr %112, i64 0, i32 3
  %114 = load i64, ptr %113, align 8, !tbaa !101
  %115 = getelementptr ptr, ptr %111, i64 %114
  %116 = getelementptr ptr, ptr %115, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !106
  %118 = icmp eq ptr %117, null
  br i1 %118, label %247, label %119

119:                                              ; preds = %109
  %120 = getelementptr i8, ptr %115, i64 36
  %121 = load i32, ptr %120, align 4, !tbaa !120
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %247, label %123

123:                                              ; preds = %119
  %124 = icmp sgt i32 %121, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %123
  %126 = icmp slt i32 %121, -1
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = getelementptr inbounds ptr, ptr %117, i64 1
  br label %129

129:                                              ; preds = %123, %127
  %130 = phi ptr [ %128, %127 ], [ %117, %123 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !95
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi ptr [ %117, %125 ], [ %131, %129 ]
  %134 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !152
  %136 = and i32 %135, 255
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load ptr, ptr %4, align 8, !tbaa !121
  %140 = getelementptr inbounds %struct.xpvav, ptr %139, i64 0, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !123
  %142 = trunc i64 %141 to i32
  %143 = add i32 %142, 1
  %144 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !106
  br label %146

146:                                              ; preds = %132, %138
  %147 = phi ptr [ %145, %138 ], [ %8, %132 ]
  %148 = phi i32 [ %143, %138 ], [ 1, %132 ]
  %149 = add nsw i32 %148, -1
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %247, label %151

151:                                              ; preds = %146, %242
  %152 = phi i32 [ %245, %242 ], [ %149, %146 ]
  %153 = phi i8 [ %244, %242 ], [ 0, %146 ]
  %154 = phi ptr [ %243, %242 ], [ null, %146 ]
  %155 = phi ptr [ %185, %242 ], [ %147, %146 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !95
  %157 = getelementptr inbounds %struct.sv, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !152
  %159 = and i32 %158, 536870912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  %160 = load ptr, ptr %155, align 8, !tbaa !95
  store ptr %160, ptr @PL_Sv, align 8, !tbaa !95
  %161 = getelementptr inbounds %struct.sv, ptr %160, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !152
  %163 = and i32 %162, 2098176
  %164 = icmp eq i32 %163, 1024
  br i1 %164, label %165, label %171

165:                                              ; preds = %151
  %166 = load ptr, ptr %160, align 8, !tbaa !104
  %167 = getelementptr inbounds %struct.xpv, ptr %166, i64 0, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !174
  store i64 %168, ptr %9, align 8, !tbaa !176
  %169 = getelementptr inbounds %struct.sv, ptr %160, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !106
  br label %173

171:                                              ; preds = %151
  %172 = call ptr @Perl_sv_2pv_flags(ptr noundef %160, ptr noundef nonnull %9, i32 noundef 34) #7
  br label %173

173:                                              ; preds = %171, %165
  %174 = phi ptr [ %170, %165 ], [ %172, %171 ]
  %175 = load ptr, ptr @PL_stashcache, align 8, !tbaa !95
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = icmp eq i32 %159, 0
  %179 = load i64, ptr %9, align 8
  %180 = trunc i64 %179 to i32
  %181 = sub nsw i32 0, %180
  %182 = select i1 %178, i32 %180, i32 %181
  %183 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %175, ptr noundef %174, i32 noundef %182, i32 noundef 68, ptr noundef null, i32 noundef 0) #7
  br label %184

184:                                              ; preds = %177, %173
  %185 = getelementptr inbounds ptr, ptr %155, i64 1
  %186 = load ptr, ptr %7, align 8, !tbaa !95
  %187 = load i64, ptr %9, align 8, !tbaa !176
  %188 = trunc i64 %187 to i32
  call void @Perl_hv_ename_delete(ptr noundef %186, ptr noundef %174, i32 noundef %188, i32 noundef %159) #7
  %189 = and i8 %153, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %242

191:                                              ; preds = %184
  %192 = load ptr, ptr %7, align 8, !tbaa !95
  %193 = getelementptr inbounds %struct.hv, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !115
  %195 = and i32 %194, 33554432
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %221, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.hv, ptr %192, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !106
  %200 = load ptr, ptr %192, align 8, !tbaa !99
  %201 = getelementptr inbounds %struct.xpvhv, ptr %200, i64 0, i32 3
  %202 = load i64, ptr %201, align 8, !tbaa !101
  %203 = getelementptr ptr, ptr %199, i64 %202
  %204 = getelementptr ptr, ptr %203, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !106
  %206 = icmp eq ptr %205, null
  br i1 %206, label %221, label %207

207:                                              ; preds = %197
  %208 = getelementptr i8, ptr %203, i64 36
  %209 = load i32, ptr %208, align 4, !tbaa !120
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load ptr, ptr %205, align 8, !tbaa !95
  br label %221

213:                                              ; preds = %207
  %214 = icmp slt i32 %209, -1
  br i1 %214, label %215, label %218

215:                                              ; preds = %213
  %216 = getelementptr inbounds ptr, ptr %205, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !95
  br label %221

218:                                              ; preds = %213
  %219 = icmp eq i32 %209, -1
  %220 = select i1 %219, ptr null, ptr %205
  br label %221

221:                                              ; preds = %218, %191, %197, %211, %215
  %222 = phi ptr [ %212, %211 ], [ %217, %215 ], [ null, %197 ], [ null, %191 ], [ %220, %218 ]
  %223 = icmp eq ptr %222, %133
  br i1 %223, label %242, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %71, align 8, !tbaa !128
  %226 = icmp eq ptr %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.hv, ptr %225, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !106
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = load i64, ptr %9, align 8, !tbaa !176
  %233 = lshr exact i32 %159, 29
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %225, ptr noundef %174, i64 noundef %232, ptr noundef null, i32 noundef 0, i32 noundef %233)
  br label %234

234:                                              ; preds = %231, %227, %224
  %235 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %236 = icmp eq i32 %159, 0
  %237 = load i64, ptr %9, align 8
  %238 = trunc i64 %237 to i32
  %239 = sub nsw i32 0, %238
  %240 = select i1 %236, i32 %238, i32 %239
  %241 = call ptr @Perl_hv_common_key_len(ptr noundef %235, ptr noundef %174, i32 noundef %240, i32 noundef 64, ptr noundef null, i32 noundef 0) #7
  br label %242

242:                                              ; preds = %221, %234, %184
  %243 = phi ptr [ %154, %184 ], [ %241, %234 ], [ %154, %221 ]
  %244 = phi i8 [ %153, %184 ], [ 1, %234 ], [ %153, %221 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  %245 = add nsw i32 %152, -1
  %246 = icmp eq i32 %152, 0
  br i1 %246, label %247, label %151, !llvm.loop !177

247:                                              ; preds = %242, %146, %44, %103, %109, %119, %34
  %248 = phi ptr [ null, %34 ], [ null, %44 ], [ null, %119 ], [ null, %109 ], [ null, %103 ], [ %147, %146 ], [ %185, %242 ]
  %249 = phi ptr [ null, %34 ], [ null, %44 ], [ null, %119 ], [ null, %109 ], [ null, %103 ], [ null, %146 ], [ %243, %242 ]
  %250 = phi i8 [ 0, %34 ], [ 0, %44 ], [ 0, %119 ], [ 0, %109 ], [ 0, %103 ], [ 0, %146 ], [ %244, %242 ]
  %251 = phi i32 [ 0, %34 ], [ 0, %44 ], [ 0, %119 ], [ 0, %109 ], [ 0, %103 ], [ %149, %146 ], [ -1, %242 ]
  %252 = load ptr, ptr %6, align 8, !tbaa !95
  %253 = icmp eq ptr %252, null
  br i1 %253, label %369, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !152
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load ptr, ptr %4, align 8, !tbaa !121
  %261 = getelementptr inbounds %struct.xpvav, ptr %260, i64 0, i32 2
  %262 = load i64, ptr %261, align 8, !tbaa !123
  %263 = trunc i64 %262 to i32
  %264 = add i32 %263, 1
  %265 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !106
  br label %267

267:                                              ; preds = %254, %259
  %268 = phi ptr [ %266, %259 ], [ %8, %254 ]
  %269 = phi i32 [ %264, %259 ], [ 1, %254 ]
  %270 = add nsw i32 %269, -1
  %271 = icmp eq i32 %269, 0
  br i1 %271, label %300, label %272

272:                                              ; preds = %267, %293
  %273 = phi i32 [ %298, %293 ], [ %270, %267 ]
  %274 = phi ptr [ %279, %293 ], [ %268, %267 ]
  %275 = load ptr, ptr %274, align 8, !tbaa !95
  %276 = getelementptr inbounds %struct.sv, ptr %275, i64 0, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !152
  %278 = and i32 %277, 536870912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  %279 = getelementptr inbounds ptr, ptr %274, i64 1
  %280 = load ptr, ptr %274, align 8, !tbaa !95
  store ptr %280, ptr @PL_Sv, align 8, !tbaa !95
  %281 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !152
  %283 = and i32 %282, 2098176
  %284 = icmp eq i32 %283, 1024
  br i1 %284, label %285, label %291

285:                                              ; preds = %272
  %286 = load ptr, ptr %280, align 8, !tbaa !104
  %287 = getelementptr inbounds %struct.xpv, ptr %286, i64 0, i32 2
  %288 = load i64, ptr %287, align 8, !tbaa !174
  store i64 %288, ptr %10, align 8, !tbaa !176
  %289 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !106
  br label %293

291:                                              ; preds = %272
  %292 = call ptr @Perl_sv_2pv_flags(ptr noundef %280, ptr noundef nonnull %10, i32 noundef 34) #7
  br label %293

293:                                              ; preds = %291, %285
  %294 = phi ptr [ %290, %285 ], [ %292, %291 ]
  %295 = load ptr, ptr %6, align 8, !tbaa !95
  %296 = load i64, ptr %10, align 8, !tbaa !176
  %297 = trunc i64 %296 to i32
  call void @Perl_hv_ename_add(ptr noundef %295, ptr noundef %294, i32 noundef %297, i32 noundef %278) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  %298 = add nsw i32 %273, -1
  %299 = icmp eq i32 %273, 0
  br i1 %299, label %300, label %272, !llvm.loop !178

300:                                              ; preds = %293, %267
  %301 = phi ptr [ %268, %267 ], [ %279, %293 ]
  %302 = phi i32 [ %270, %267 ], [ -1, %293 ]
  %303 = call ptr @Perl_hv_common(ptr noundef %1, ptr noundef null, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7
  %304 = getelementptr inbounds %struct.he, ptr %303, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !106
  %306 = icmp eq ptr %305, @PL_sv_yes
  %307 = icmp eq ptr %305, @PL_sv_no
  %308 = or i1 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  store ptr null, ptr %6, align 8, !tbaa !95
  br label %369

310:                                              ; preds = %300
  %311 = icmp eq ptr %305, @PL_sv_undef
  %312 = select i1 %311, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %312, ptr %304, align 8, !tbaa !106
  br i1 %35, label %369, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %6, align 8, !tbaa !95
  %315 = getelementptr inbounds %struct.hv, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !106
  %317 = load ptr, ptr %314, align 8, !tbaa !99
  %318 = getelementptr inbounds %struct.xpvhv, ptr %317, i64 0, i32 3
  %319 = load i64, ptr %318, align 8, !tbaa !101
  %320 = getelementptr ptr, ptr %316, i64 %319
  %321 = getelementptr ptr, ptr %320, i64 5
  %322 = load ptr, ptr %321, align 8, !tbaa !110
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %335

324:                                              ; preds = %313
  %325 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %326 = load ptr, ptr %315, align 8, !tbaa !106
  %327 = load ptr, ptr %314, align 8, !tbaa !99
  %328 = getelementptr inbounds %struct.xpvhv, ptr %327, i64 0, i32 3
  %329 = load i64, ptr %328, align 8, !tbaa !101
  %330 = getelementptr ptr, ptr %326, i64 %329
  %331 = getelementptr ptr, ptr %330, i64 5
  store ptr %325, ptr %331, align 8, !tbaa !110
  %332 = getelementptr inbounds %struct.mro_meta, ptr %325, i64 0, i32 3
  store i32 1, ptr %332, align 8, !tbaa !112
  %333 = getelementptr inbounds %struct.mro_meta, ptr %325, i64 0, i32 4
  store i32 1, ptr %333, align 4, !tbaa !113
  %334 = getelementptr inbounds %struct.mro_meta, ptr %325, i64 0, i32 5
  store ptr @dfs_alg, ptr %334, align 8, !tbaa !94
  br label %335

335:                                              ; preds = %313, %324
  %336 = phi ptr [ %325, %324 ], [ %322, %313 ]
  %337 = getelementptr inbounds %struct.mro_meta, ptr %336, i64 0, i32 6
  %338 = load ptr, ptr %337, align 8, !tbaa !128
  %339 = icmp eq ptr %338, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.sv, ptr %338, i64 0, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !109
  %343 = add i32 %342, 1
  store i32 %343, ptr %341, align 8, !tbaa !109
  br label %344

344:                                              ; preds = %335, %340
  %345 = phi ptr [ %338, %340 ], [ @PL_sv_yes, %335 ]
  %346 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %345, i32 noundef 0) #7
  %347 = load ptr, ptr %336, align 8, !tbaa !82
  %348 = icmp eq ptr %347, null
  br i1 %348, label %357, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.sv, ptr %347, i64 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !109
  %352 = icmp ugt i32 %351, 1
  br i1 %352, label %353, label %355

353:                                              ; preds = %349
  %354 = add i32 %351, -1
  store i32 %354, ptr %350, align 8, !tbaa !109
  br label %356

355:                                              ; preds = %349
  call void @Perl_sv_free2(ptr noundef nonnull %347, i32 noundef %351) #7
  br label %356

356:                                              ; preds = %353, %355
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %336, i8 0, i64 16, i1 false)
  br label %369

357:                                              ; preds = %344
  %358 = getelementptr inbounds %struct.mro_meta, ptr %336, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !96
  %360 = icmp eq ptr %359, null
  br i1 %360, label %369, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.sv, ptr %359, i64 0, i32 1
  %363 = load i32, ptr %362, align 8, !tbaa !109
  %364 = icmp ugt i32 %363, 1
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = add i32 %363, -1
  store i32 %366, ptr %362, align 8, !tbaa !109
  br label %368

367:                                              ; preds = %361
  call void @Perl_sv_free2(ptr noundef nonnull %359, i32 noundef %363) #7
  br label %368

368:                                              ; preds = %365, %367
  store ptr null, ptr %358, align 8, !tbaa !96
  br label %369

369:                                              ; preds = %356, %368, %357, %309, %310, %247
  %370 = phi ptr [ %301, %309 ], [ %301, %310 ], [ %248, %247 ], [ %301, %357 ], [ %301, %368 ], [ %301, %356 ]
  %371 = phi i32 [ %302, %309 ], [ %302, %310 ], [ %251, %247 ], [ %302, %357 ], [ %302, %368 ], [ %302, %356 ]
  %372 = load ptr, ptr %6, align 8, !tbaa !95
  %373 = icmp ne ptr %372, null
  %374 = load ptr, ptr %7, align 8
  %375 = icmp ne ptr %374, null
  %376 = select i1 %373, i1 true, i1 %375
  br i1 %376, label %377, label %1004

377:                                              ; preds = %369
  %378 = and i8 %250, 1
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %436

380:                                              ; preds = %377
  br i1 %375, label %381, label %423

381:                                              ; preds = %380
  %382 = getelementptr inbounds %struct.hv, ptr %374, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !115
  %384 = and i32 %383, 33554432
  %385 = icmp ne i32 %384, 0
  call void @llvm.assume(i1 %385)
  %386 = getelementptr inbounds %struct.hv, ptr %374, i64 0, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !106
  %388 = load ptr, ptr %374, align 8, !tbaa !99
  %389 = getelementptr inbounds %struct.xpvhv, ptr %388, i64 0, i32 3
  %390 = load i64, ptr %389, align 8, !tbaa !101
  %391 = getelementptr ptr, ptr %387, i64 %390
  %392 = getelementptr ptr, ptr %391, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !106, !nonnull !179, !noundef !179
  %394 = getelementptr i8, ptr %391, i64 36
  %395 = load i32, ptr %394, align 4, !tbaa !120
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %381
  %398 = load ptr, ptr %393, align 8, !tbaa !95
  br label %406

399:                                              ; preds = %381
  %400 = icmp slt i32 %395, -1
  br i1 %400, label %401, label %404

401:                                              ; preds = %399
  %402 = getelementptr inbounds ptr, ptr %393, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !95
  br label %406

404:                                              ; preds = %399
  %405 = icmp ne i32 %395, -1
  call void @llvm.assume(i1 %405)
  br label %406

406:                                              ; preds = %397, %404, %401
  %407 = phi ptr [ %398, %397 ], [ %403, %401 ], [ %393, %404 ]
  %408 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %409 = getelementptr inbounds %struct.hek, ptr %407, i64 0, i32 2
  %410 = getelementptr inbounds %struct.hek, ptr %407, i64 0, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !130
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %409, i64 %412
  %414 = getelementptr inbounds i8, ptr %413, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !106
  %416 = and i8 %415, 1
  %417 = zext nneg i8 %416 to i32
  %418 = load i32, ptr %407, align 4, !tbaa !132
  %419 = call ptr @Perl_hv_common(ptr noundef %408, ptr noundef null, ptr noundef nonnull %409, i64 noundef %412, i32 noundef %417, i32 noundef 32, ptr noundef null, i32 noundef %418) #7
  %420 = icmp eq ptr %419, null
  br i1 %420, label %436, label %421

421:                                              ; preds = %406
  %422 = load ptr, ptr %419, align 8, !tbaa !95
  br label %436

423:                                              ; preds = %380
  %424 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %425 = load i32, ptr %424, align 4, !tbaa !152
  %426 = and i32 %425, 255
  %427 = icmp eq i32 %426, 11
  br i1 %427, label %428, label %436

428:                                              ; preds = %423
  %429 = load ptr, ptr %4, align 8, !tbaa !121
  %430 = getelementptr inbounds %struct.xpvav, ptr %429, i64 0, i32 2
  %431 = load i64, ptr %430, align 8, !tbaa !123
  %432 = trunc i64 %431 to i32
  %433 = add i32 %432, 1
  %434 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %435 = load ptr, ptr %434, align 8, !tbaa !106
  br label %436

436:                                              ; preds = %423, %406, %421, %428, %377
  %437 = phi ptr [ %370, %377 ], [ %435, %428 ], [ %419, %421 ], [ %419, %406 ], [ %8, %423 ]
  %438 = phi ptr [ %249, %377 ], [ %249, %428 ], [ %422, %421 ], [ %249, %406 ], [ %249, %423 ]
  %439 = phi i8 [ %250, %377 ], [ %250, %428 ], [ 1, %421 ], [ 1, %406 ], [ %250, %423 ]
  %440 = phi i32 [ %371, %377 ], [ %433, %428 ], [ %371, %421 ], [ %371, %406 ], [ 1, %423 ]
  %441 = icmp ne ptr %438, null
  %442 = and i8 %439, 1
  %443 = icmp eq i8 %442, 0
  %444 = select i1 %441, i1 true, i1 %443
  br i1 %444, label %445, label %546

445:                                              ; preds = %436
  %446 = shl nuw nsw i8 %442, 3
  %447 = zext nneg i8 %446 to i32
  br label %448

448:                                              ; preds = %445, %541
  %449 = phi ptr [ %543, %541 ], [ %437, %445 ]
  %450 = phi ptr [ %544, %541 ], [ %438, %445 ]
  %451 = phi i32 [ %456, %541 ], [ %440, %445 ]
  br i1 %443, label %452, label %455

452:                                              ; preds = %448
  %453 = add nsw i32 %451, -1
  %454 = icmp eq i32 %451, 0
  br i1 %454, label %546, label %455

455:                                              ; preds = %448, %452
  %456 = phi i32 [ %451, %448 ], [ %453, %452 ]
  br i1 %443, label %457, label %472

457:                                              ; preds = %455
  %458 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  %459 = getelementptr inbounds ptr, ptr %449, i64 1
  %460 = load ptr, ptr %449, align 8, !tbaa !95
  %461 = call ptr @Perl_hv_common(ptr noundef %458, ptr noundef %460, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %462 = icmp eq ptr %461, null
  br i1 %462, label %468, label %463, !llvm.loop !180

463:                                              ; preds = %457
  %464 = getelementptr inbounds %struct.he, ptr %461, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !106
  %466 = icmp eq ptr %465, null
  br i1 %466, label %468, label %467, !llvm.loop !180

467:                                              ; preds = %463
  br label %468

468:                                              ; preds = %457, %463, %467
  %469 = phi i1 [ true, %467 ], [ false, %463 ], [ false, %457 ]
  %470 = phi i32 [ 0, %467 ], [ 7, %463 ], [ 7, %457 ]
  %471 = phi ptr [ %465, %467 ], [ null, %463 ], [ %450, %457 ]
  br i1 %469, label %472, label %541

472:                                              ; preds = %468, %455
  %473 = phi ptr [ %449, %455 ], [ %459, %468 ]
  %474 = phi ptr [ %450, %455 ], [ %471, %468 ]
  %475 = call i32 @Perl_hv_iterinit(ptr noundef %474) #7
  %476 = call ptr @Perl_hv_iternext_flags(ptr noundef %474, i32 noundef 0) #7
  %477 = icmp eq ptr %476, null
  br i1 %477, label %541, label %478

478:                                              ; preds = %472, %538
  %479 = phi ptr [ %539, %538 ], [ %476, %472 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  %480 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %479) #7
  %481 = call ptr @Perl_gv_stashsv(ptr noundef %480, i32 noundef 0) #7
  store ptr %481, ptr %11, align 8, !tbaa !95
  %482 = icmp eq ptr %481, null
  br i1 %482, label %538, label %483, !llvm.loop !181

483:                                              ; preds = %478
  %484 = getelementptr inbounds %struct.hv, ptr %481, i64 0, i32 3
  %485 = load ptr, ptr %484, align 8, !tbaa !106
  %486 = load ptr, ptr %481, align 8, !tbaa !99
  %487 = getelementptr inbounds %struct.xpvhv, ptr %486, i64 0, i32 3
  %488 = load i64, ptr %487, align 8, !tbaa !101
  %489 = getelementptr ptr, ptr %485, i64 %488
  %490 = getelementptr ptr, ptr %489, i64 5
  %491 = load ptr, ptr %490, align 8, !tbaa !110
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %504

493:                                              ; preds = %483
  %494 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %495 = load ptr, ptr %484, align 8, !tbaa !106
  %496 = load ptr, ptr %481, align 8, !tbaa !99
  %497 = getelementptr inbounds %struct.xpvhv, ptr %496, i64 0, i32 3
  %498 = load i64, ptr %497, align 8, !tbaa !101
  %499 = getelementptr ptr, ptr %495, i64 %498
  %500 = getelementptr ptr, ptr %499, i64 5
  store ptr %494, ptr %500, align 8, !tbaa !110
  %501 = getelementptr inbounds %struct.mro_meta, ptr %494, i64 0, i32 3
  store i32 1, ptr %501, align 8, !tbaa !112
  %502 = getelementptr inbounds %struct.mro_meta, ptr %494, i64 0, i32 4
  store i32 1, ptr %502, align 4, !tbaa !113
  %503 = getelementptr inbounds %struct.mro_meta, ptr %494, i64 0, i32 5
  store ptr @dfs_alg, ptr %503, align 8, !tbaa !94
  br label %504

504:                                              ; preds = %483, %493
  %505 = phi ptr [ %494, %493 ], [ %491, %483 ]
  %506 = getelementptr inbounds %struct.mro_meta, ptr %505, i64 0, i32 6
  %507 = load ptr, ptr %506, align 8, !tbaa !128
  %508 = icmp eq ptr %507, null
  br i1 %508, label %513, label %509

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.sv, ptr %507, i64 0, i32 1
  %511 = load i32, ptr %510, align 8, !tbaa !109
  %512 = add i32 %511, 1
  store i32 %512, ptr %510, align 8, !tbaa !109
  br label %513

513:                                              ; preds = %504, %509
  %514 = phi ptr [ %507, %509 ], [ @PL_sv_yes, %504 ]
  %515 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %514, i32 noundef 0) #7
  %516 = load ptr, ptr %505, align 8, !tbaa !82
  %517 = icmp eq ptr %516, null
  br i1 %517, label %526, label %518

518:                                              ; preds = %513
  %519 = getelementptr inbounds %struct.sv, ptr %516, i64 0, i32 1
  %520 = load i32, ptr %519, align 8, !tbaa !109
  %521 = icmp ugt i32 %520, 1
  br i1 %521, label %522, label %524

522:                                              ; preds = %518
  %523 = add i32 %520, -1
  store i32 %523, ptr %519, align 8, !tbaa !109
  br label %525

524:                                              ; preds = %518
  call void @Perl_sv_free2(ptr noundef nonnull %516, i32 noundef %520) #7
  br label %525

525:                                              ; preds = %522, %524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %505, i8 0, i64 16, i1 false)
  br label %538

526:                                              ; preds = %513
  %527 = getelementptr inbounds %struct.mro_meta, ptr %505, i64 0, i32 1
  %528 = load ptr, ptr %527, align 8, !tbaa !96
  %529 = icmp eq ptr %528, null
  br i1 %529, label %538, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.sv, ptr %528, i64 0, i32 1
  %532 = load i32, ptr %531, align 8, !tbaa !109
  %533 = icmp ugt i32 %532, 1
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = add i32 %532, -1
  store i32 %535, ptr %531, align 8, !tbaa !109
  br label %537

536:                                              ; preds = %530
  call void @Perl_sv_free2(ptr noundef nonnull %528, i32 noundef %532) #7
  br label %537

537:                                              ; preds = %534, %536
  store ptr null, ptr %527, align 8, !tbaa !96
  br label %538

538:                                              ; preds = %525, %537, %526, %478
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  %539 = call ptr @Perl_hv_iternext_flags(ptr noundef %474, i32 noundef 0) #7
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %478

541:                                              ; preds = %538, %472, %468
  %542 = phi i32 [ %470, %468 ], [ %447, %472 ], [ %447, %538 ]
  %543 = phi ptr [ %459, %468 ], [ %473, %472 ], [ %473, %538 ]
  %544 = phi ptr [ %471, %468 ], [ %474, %472 ], [ %474, %538 ]
  %545 = icmp eq i32 %542, 8
  br i1 %545, label %546, label %448

546:                                              ; preds = %541, %452, %436
  %547 = load ptr, ptr %7, align 8, !tbaa !95
  %548 = icmp eq ptr %547, null
  br i1 %548, label %808, label %549

549:                                              ; preds = %546
  %550 = load ptr, ptr %547, align 8, !tbaa !99
  %551 = getelementptr inbounds %struct.xpvhv, ptr %550, i64 0, i32 2
  %552 = load i64, ptr %551, align 8, !tbaa !168
  %553 = getelementptr inbounds %struct.xpvmg, ptr %550, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !106
  %555 = icmp eq ptr %554, null
  br i1 %555, label %559, label %556

556:                                              ; preds = %549
  %557 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %547) #7
  %558 = sext i32 %557 to i64
  br label %559

559:                                              ; preds = %549, %556
  %560 = phi i64 [ %558, %556 ], [ 0, %549 ]
  %561 = icmp eq i64 %552, %560
  br i1 %561, label %808, label %562

562:                                              ; preds = %559
  %563 = load ptr, ptr %7, align 8, !tbaa !95
  %564 = load ptr, ptr %563, align 8, !tbaa !99
  %565 = call ptr @Perl_newSV_type(i32 noundef 12) #7
  %566 = call ptr @Perl_sv_2mortal(ptr noundef %565) #7
  %567 = getelementptr inbounds %struct.xpvhv, ptr %564, i64 0, i32 3
  %568 = load i64, ptr %567, align 8, !tbaa !101
  %569 = and i64 %568, 2147483648
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %571, label %808

571:                                              ; preds = %562
  %572 = load ptr, ptr %8, align 8
  %573 = getelementptr inbounds %struct.sv, ptr %572, i64 0, i32 2
  br label %580

574:                                              ; preds = %805, %580
  %575 = add nuw nsw i64 %581, 1
  %576 = load i64, ptr %567, align 8, !tbaa !101
  %577 = shl i64 %576, 32
  %578 = ashr exact i64 %577, 32
  %579 = icmp slt i64 %581, %578
  br i1 %579, label %580, label %808, !llvm.loop !182

580:                                              ; preds = %571, %574
  %581 = phi i64 [ 0, %571 ], [ %575, %574 ]
  %582 = load ptr, ptr %7, align 8, !tbaa !95
  %583 = getelementptr inbounds %struct.hv, ptr %582, i64 0, i32 3
  %584 = load ptr, ptr %583, align 8, !tbaa !106
  %585 = getelementptr inbounds ptr, ptr %584, i64 %581
  %586 = load ptr, ptr %585, align 8, !tbaa !95
  %587 = icmp eq ptr %586, null
  br i1 %587, label %574, label %588

588:                                              ; preds = %580, %805
  %589 = phi ptr [ %806, %805 ], [ %586, %580 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  %590 = getelementptr inbounds %struct.he, ptr %589, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !106
  %592 = getelementptr inbounds %struct.sv, ptr %591, i64 0, i32 2
  %593 = load i32, ptr %592, align 4, !tbaa !152
  %594 = and i32 %593, 255
  %595 = icmp eq i32 %594, 9
  br i1 %595, label %596, label %805

596:                                              ; preds = %588
  %597 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %589, ptr noundef nonnull %12) #7
  %598 = load i32, ptr %12, align 4, !tbaa !141
  %599 = icmp sgt i32 %598, 1
  br i1 %599, label %600, label %610

600:                                              ; preds = %596
  %601 = zext nneg i32 %598 to i64
  %602 = getelementptr i8, ptr %597, i64 %601
  %603 = getelementptr i8, ptr %602, i64 -2
  %604 = load i8, ptr %603, align 1, !tbaa !106
  %605 = icmp eq i8 %604, 58
  br i1 %605, label %606, label %610

606:                                              ; preds = %600
  %607 = getelementptr i8, ptr %602, i64 -1
  %608 = load i8, ptr %607, align 1, !tbaa !106
  %609 = icmp eq i8 %608, 58
  br i1 %609, label %615, label %610

610:                                              ; preds = %606, %600, %596
  %611 = icmp eq i32 %598, 1
  br i1 %611, label %612, label %805

612:                                              ; preds = %610
  %613 = load i8, ptr %597, align 1, !tbaa !106
  %614 = icmp eq i8 %613, 58
  br i1 %614, label %615, label %805

615:                                              ; preds = %612, %606
  %616 = load ptr, ptr %590, align 8, !tbaa !106
  %617 = getelementptr inbounds %struct.sv, ptr %616, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !106
  %619 = getelementptr inbounds %struct.gp, ptr %618, i64 0, i32 5
  %620 = load ptr, ptr %619, align 8, !tbaa !183
  %621 = load ptr, ptr %6, align 8, !tbaa !95
  %622 = icmp eq ptr %621, null
  br i1 %622, label %648, label %623

623:                                              ; preds = %615
  %624 = getelementptr inbounds %struct.he, ptr %589, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !150
  %626 = getelementptr inbounds %struct.hek, ptr %625, i64 0, i32 1
  %627 = load i32, ptr %626, align 4, !tbaa !130
  %628 = icmp eq i32 %627, -2
  %629 = getelementptr inbounds %struct.hek, ptr %625, i64 0, i32 2
  br i1 %628, label %630, label %636

630:                                              ; preds = %623
  %631 = load ptr, ptr %629, align 4, !tbaa !95
  %632 = getelementptr inbounds %struct.sv, ptr %631, i64 0, i32 2
  %633 = load i32, ptr %632, align 4, !tbaa !152
  %634 = and i32 %633, 536870912
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %645, label %643

636:                                              ; preds = %623
  %637 = sext i32 %627 to i64
  %638 = getelementptr inbounds i8, ptr %629, i64 %637
  %639 = getelementptr inbounds i8, ptr %638, i64 1
  %640 = load i8, ptr %639, align 1, !tbaa !106
  %641 = and i8 %640, 1
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %636, %630
  %644 = sub nsw i32 0, %598
  br label %645

645:                                              ; preds = %630, %636, %643
  %646 = phi i32 [ %644, %643 ], [ %598, %636 ], [ %598, %630 ]
  %647 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %621, ptr noundef %597, i32 noundef %646, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  br label %648

648:                                              ; preds = %615, %645
  %649 = phi ptr [ %647, %645 ], [ null, %615 ]
  %650 = load ptr, ptr %7, align 8, !tbaa !95
  %651 = icmp eq ptr %620, %650
  br i1 %651, label %805, label %652

652:                                              ; preds = %648
  %653 = icmp eq ptr %649, null
  br i1 %653, label %668, label %654

654:                                              ; preds = %652
  %655 = load ptr, ptr %649, align 8, !tbaa !95
  %656 = icmp eq ptr %655, null
  br i1 %656, label %668, label %657

657:                                              ; preds = %654
  %658 = getelementptr inbounds %struct.sv, ptr %655, i64 0, i32 2
  %659 = load i32, ptr %658, align 4, !tbaa !152
  %660 = and i32 %659, 255
  %661 = icmp eq i32 %660, 9
  br i1 %661, label %662, label %668

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.sv, ptr %655, i64 0, i32 3
  %664 = load ptr, ptr %663, align 8, !tbaa !106
  %665 = getelementptr inbounds %struct.gp, ptr %664, i64 0, i32 5
  %666 = load ptr, ptr %665, align 8, !tbaa !183
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %689

668:                                              ; preds = %662, %657, %654, %652
  %669 = icmp eq ptr %620, null
  br i1 %669, label %777, label %670

670:                                              ; preds = %668
  %671 = getelementptr inbounds %struct.hv, ptr %620, i64 0, i32 2
  %672 = load i32, ptr %671, align 4, !tbaa !115
  %673 = and i32 %672, 33554432
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %777, label %675

675:                                              ; preds = %670
  %676 = getelementptr inbounds %struct.hv, ptr %620, i64 0, i32 3
  %677 = load ptr, ptr %676, align 8, !tbaa !106
  %678 = load ptr, ptr %620, align 8, !tbaa !99
  %679 = getelementptr inbounds %struct.xpvhv, ptr %678, i64 0, i32 3
  %680 = load i64, ptr %679, align 8, !tbaa !101
  %681 = getelementptr ptr, ptr %677, i64 %680
  %682 = getelementptr ptr, ptr %681, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !106
  %684 = icmp eq ptr %683, null
  br i1 %684, label %777, label %685

685:                                              ; preds = %675
  %686 = getelementptr i8, ptr %681, i64 36
  %687 = load i32, ptr %686, align 4, !tbaa !120
  %688 = icmp eq i32 %687, -1
  br i1 %688, label %777, label %689

689:                                              ; preds = %685, %662
  %690 = phi ptr [ %666, %662 ], [ null, %685 ]
  %691 = load i32, ptr %573, align 4, !tbaa !152
  %692 = and i32 %691, 255
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %743

694:                                              ; preds = %689
  %695 = getelementptr inbounds %struct.av, ptr %572, i64 0, i32 3
  %696 = load ptr, ptr %572, align 8, !tbaa !121
  %697 = getelementptr inbounds %struct.xpvav, ptr %696, i64 0, i32 2
  %698 = load i64, ptr %697, align 8, !tbaa !123
  %699 = trunc i64 %698 to i32
  %700 = load ptr, ptr %695, align 8, !tbaa !106
  %701 = call ptr @Perl_newSV_type(i32 noundef 11) #7
  %702 = call ptr @Perl_sv_2mortal(ptr noundef %701) #7
  %703 = icmp eq i32 %699, -1
  br i1 %703, label %775, label %704

704:                                              ; preds = %694
  %705 = getelementptr inbounds %struct.he, ptr %589, i64 0, i32 1
  br label %706

706:                                              ; preds = %704, %740
  %707 = phi i32 [ %699, %704 ], [ %741, %740 ]
  %708 = phi ptr [ %700, %704 ], [ %709, %740 ]
  %709 = getelementptr inbounds ptr, ptr %708, i64 1
  %710 = load ptr, ptr %708, align 8, !tbaa !95
  %711 = call ptr @Perl_newSVsv(ptr noundef %710) #7
  %712 = load i32, ptr %12, align 4, !tbaa !141
  %713 = icmp eq i32 %712, 1
  br i1 %713, label %714, label %715

714:                                              ; preds = %706
  call void @Perl_sv_catpvn_flags(ptr noundef %711, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %740

715:                                              ; preds = %706
  call void @Perl_sv_catpvn_flags(ptr noundef %711, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  %716 = load i32, ptr %12, align 4, !tbaa !141
  %717 = add nsw i32 %716, -2
  %718 = sext i32 %717 to i64
  %719 = load ptr, ptr %705, align 8, !tbaa !150
  %720 = getelementptr inbounds %struct.hek, ptr %719, i64 0, i32 1
  %721 = load i32, ptr %720, align 4, !tbaa !130
  %722 = icmp eq i32 %721, -2
  %723 = getelementptr inbounds %struct.hek, ptr %719, i64 0, i32 2
  br i1 %722, label %724, label %729

724:                                              ; preds = %715
  %725 = load ptr, ptr %723, align 4, !tbaa !95
  %726 = getelementptr inbounds %struct.sv, ptr %725, i64 0, i32 2
  %727 = load i32, ptr %726, align 4, !tbaa !152
  %728 = and i32 %727, 536870912
  br label %736

729:                                              ; preds = %715
  %730 = sext i32 %721 to i64
  %731 = getelementptr inbounds i8, ptr %723, i64 %730
  %732 = getelementptr inbounds i8, ptr %731, i64 1
  %733 = load i8, ptr %732, align 1, !tbaa !106
  %734 = and i8 %733, 1
  %735 = zext nneg i8 %734 to i32
  br label %736

736:                                              ; preds = %729, %724
  %737 = phi i32 [ %728, %724 ], [ %735, %729 ]
  %738 = icmp eq i32 %737, 0
  %739 = select i1 %738, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %711, ptr noundef %597, i64 noundef %718, i32 noundef %739) #7
  br label %740

740:                                              ; preds = %736, %714
  call void @Perl_av_push(ptr noundef %702, ptr noundef %711) #7
  %741 = add nsw i32 %707, -1
  %742 = icmp eq i32 %707, 0
  br i1 %742, label %775, label %706, !llvm.loop !185

743:                                              ; preds = %689
  %744 = call ptr @Perl_newSVsv(ptr noundef %572) #7
  %745 = call ptr @Perl_sv_2mortal(ptr noundef %744) #7
  %746 = load i32, ptr %12, align 4, !tbaa !141
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %749

748:                                              ; preds = %743
  call void @Perl_sv_catpvn_flags(ptr noundef %745, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %775

749:                                              ; preds = %743
  call void @Perl_sv_catpvn_flags(ptr noundef %745, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  %750 = load i32, ptr %12, align 4, !tbaa !141
  %751 = add nsw i32 %750, -2
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.he, ptr %589, i64 0, i32 1
  %754 = load ptr, ptr %753, align 8, !tbaa !150
  %755 = getelementptr inbounds %struct.hek, ptr %754, i64 0, i32 1
  %756 = load i32, ptr %755, align 4, !tbaa !130
  %757 = icmp eq i32 %756, -2
  %758 = getelementptr inbounds %struct.hek, ptr %754, i64 0, i32 2
  br i1 %757, label %759, label %764

759:                                              ; preds = %749
  %760 = load ptr, ptr %758, align 4, !tbaa !95
  %761 = getelementptr inbounds %struct.sv, ptr %760, i64 0, i32 2
  %762 = load i32, ptr %761, align 4, !tbaa !152
  %763 = and i32 %762, 536870912
  br label %771

764:                                              ; preds = %749
  %765 = sext i32 %756 to i64
  %766 = getelementptr inbounds i8, ptr %758, i64 %765
  %767 = getelementptr inbounds i8, ptr %766, i64 1
  %768 = load i8, ptr %767, align 1, !tbaa !106
  %769 = and i8 %768, 1
  %770 = zext nneg i8 %769 to i32
  br label %771

771:                                              ; preds = %764, %759
  %772 = phi i32 [ %763, %759 ], [ %770, %764 ]
  %773 = icmp eq i32 %772, 0
  %774 = select i1 %773, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %745, ptr noundef %597, i64 noundef %752, i32 noundef %774) #7
  br label %775

775:                                              ; preds = %740, %694, %748, %771
  %776 = phi ptr [ %745, %748 ], [ %745, %771 ], [ %702, %694 ], [ %702, %740 ]
  call fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef %690, ptr noundef %620, ptr noundef %776)
  br label %777

777:                                              ; preds = %685, %670, %675, %775, %668
  %778 = getelementptr inbounds %struct.he, ptr %589, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !150
  %780 = getelementptr inbounds %struct.hek, ptr %779, i64 0, i32 1
  %781 = load i32, ptr %780, align 4, !tbaa !130
  %782 = icmp eq i32 %781, -2
  %783 = getelementptr inbounds %struct.hek, ptr %779, i64 0, i32 2
  br i1 %782, label %784, label %790

784:                                              ; preds = %777
  %785 = load ptr, ptr %783, align 4, !tbaa !95
  %786 = getelementptr inbounds %struct.sv, ptr %785, i64 0, i32 2
  %787 = load i32, ptr %786, align 4, !tbaa !152
  %788 = and i32 %787, 536870912
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %800, label %797

790:                                              ; preds = %777
  %791 = sext i32 %781 to i64
  %792 = getelementptr inbounds i8, ptr %783, i64 %791
  %793 = getelementptr inbounds i8, ptr %792, i64 1
  %794 = load i8, ptr %793, align 1, !tbaa !106
  %795 = and i8 %794, 1
  %796 = icmp eq i8 %795, 0
  br i1 %796, label %800, label %797

797:                                              ; preds = %790, %784
  %798 = load i32, ptr %12, align 4, !tbaa !141
  %799 = sub nsw i32 0, %798
  br label %802

800:                                              ; preds = %790, %784
  %801 = load i32, ptr %12, align 4, !tbaa !141
  br label %802

802:                                              ; preds = %800, %797
  %803 = phi i32 [ %799, %797 ], [ %801, %800 ]
  %804 = call ptr @Perl_hv_common_key_len(ptr noundef %566, ptr noundef %597, i32 noundef %803, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef 0) #7
  br label %805

805:                                              ; preds = %648, %802, %610, %612, %588
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  %806 = load ptr, ptr %589, align 8, !tbaa !95
  %807 = icmp eq ptr %806, null
  br i1 %807, label %574, label %588, !llvm.loop !186

808:                                              ; preds = %574, %562, %559, %546
  %809 = phi ptr [ null, %559 ], [ null, %546 ], [ %566, %562 ], [ %566, %574 ]
  %810 = load ptr, ptr %6, align 8, !tbaa !95
  %811 = icmp eq ptr %810, null
  br i1 %811, label %1004, label %812

812:                                              ; preds = %808
  %813 = load ptr, ptr %810, align 8, !tbaa !99
  %814 = getelementptr inbounds %struct.xpvhv, ptr %813, i64 0, i32 2
  %815 = load i64, ptr %814, align 8, !tbaa !168
  %816 = getelementptr inbounds %struct.xpvmg, ptr %813, i64 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !106
  %818 = icmp eq ptr %817, null
  br i1 %818, label %822, label %819

819:                                              ; preds = %812
  %820 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %810) #7
  %821 = sext i32 %820 to i64
  br label %822

822:                                              ; preds = %812, %819
  %823 = phi i64 [ %821, %819 ], [ 0, %812 ]
  %824 = icmp eq i64 %815, %823
  br i1 %824, label %1004, label %825

825:                                              ; preds = %822
  %826 = load ptr, ptr %6, align 8, !tbaa !95
  %827 = load ptr, ptr %826, align 8, !tbaa !99
  %828 = getelementptr inbounds %struct.xpvhv, ptr %827, i64 0, i32 3
  %829 = load i64, ptr %828, align 8, !tbaa !101
  %830 = and i64 %829, 2147483648
  %831 = icmp eq i64 %830, 0
  br i1 %831, label %832, label %1004

832:                                              ; preds = %825
  %833 = icmp eq ptr %809, null
  %834 = load ptr, ptr %8, align 8
  %835 = getelementptr inbounds %struct.sv, ptr %834, i64 0, i32 2
  %836 = getelementptr inbounds %struct.av, ptr %834, i64 0, i32 3
  br label %843

837:                                              ; preds = %1001, %843
  %838 = add nuw nsw i64 %844, 1
  %839 = load i64, ptr %828, align 8, !tbaa !101
  %840 = shl i64 %839, 32
  %841 = ashr exact i64 %840, 32
  %842 = icmp slt i64 %844, %841
  br i1 %842, label %843, label %1004, !llvm.loop !187

843:                                              ; preds = %832, %837
  %844 = phi i64 [ 0, %832 ], [ %838, %837 ]
  %845 = load ptr, ptr %6, align 8, !tbaa !95
  %846 = getelementptr inbounds %struct.hv, ptr %845, i64 0, i32 3
  %847 = load ptr, ptr %846, align 8, !tbaa !106
  %848 = getelementptr inbounds ptr, ptr %847, i64 %844
  %849 = load ptr, ptr %848, align 8, !tbaa !95
  %850 = icmp eq ptr %849, null
  br i1 %850, label %837, label %851

851:                                              ; preds = %843, %1001
  %852 = phi ptr [ %1002, %1001 ], [ %849, %843 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  %853 = getelementptr inbounds %struct.he, ptr %852, i64 0, i32 2
  %854 = load ptr, ptr %853, align 8, !tbaa !106
  %855 = getelementptr inbounds %struct.sv, ptr %854, i64 0, i32 2
  %856 = load i32, ptr %855, align 4, !tbaa !152
  %857 = and i32 %856, 255
  %858 = icmp eq i32 %857, 9
  br i1 %858, label %859, label %1001

859:                                              ; preds = %851
  %860 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %852, ptr noundef nonnull %13) #7
  %861 = load i32, ptr %13, align 4, !tbaa !141
  %862 = icmp sgt i32 %861, 1
  br i1 %862, label %863, label %873

863:                                              ; preds = %859
  %864 = zext nneg i32 %861 to i64
  %865 = getelementptr i8, ptr %860, i64 %864
  %866 = getelementptr i8, ptr %865, i64 -2
  %867 = load i8, ptr %866, align 1, !tbaa !106
  %868 = icmp eq i8 %867, 58
  br i1 %868, label %869, label %873

869:                                              ; preds = %863
  %870 = getelementptr i8, ptr %865, i64 -1
  %871 = load i8, ptr %870, align 1, !tbaa !106
  %872 = icmp eq i8 %871, 58
  br i1 %872, label %878, label %873

873:                                              ; preds = %869, %863, %859
  %874 = icmp eq i32 %861, 1
  br i1 %874, label %875, label %1001

875:                                              ; preds = %873
  %876 = load i8, ptr %860, align 1, !tbaa !106
  %877 = icmp eq i8 %876, 58
  br i1 %877, label %878, label %1001

878:                                              ; preds = %875, %869
  br i1 %833, label %905, label %879

879:                                              ; preds = %878
  %880 = getelementptr inbounds %struct.he, ptr %852, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !150
  %882 = getelementptr inbounds %struct.hek, ptr %881, i64 0, i32 1
  %883 = load i32, ptr %882, align 4, !tbaa !130
  %884 = icmp eq i32 %883, -2
  %885 = getelementptr inbounds %struct.hek, ptr %881, i64 0, i32 2
  br i1 %884, label %886, label %892

886:                                              ; preds = %879
  %887 = load ptr, ptr %885, align 4, !tbaa !95
  %888 = getelementptr inbounds %struct.sv, ptr %887, i64 0, i32 2
  %889 = load i32, ptr %888, align 4, !tbaa !152
  %890 = and i32 %889, 536870912
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %901, label %899

892:                                              ; preds = %879
  %893 = sext i32 %883 to i64
  %894 = getelementptr inbounds i8, ptr %885, i64 %893
  %895 = getelementptr inbounds i8, ptr %894, i64 1
  %896 = load i8, ptr %895, align 1, !tbaa !106
  %897 = and i8 %896, 1
  %898 = icmp eq i8 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %892, %886
  %900 = sub nsw i32 0, %861
  br label %901

901:                                              ; preds = %886, %892, %899
  %902 = phi i32 [ %900, %899 ], [ %861, %892 ], [ %861, %886 ]
  %903 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %809, ptr noundef %860, i32 noundef %902, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %904 = icmp eq ptr %903, null
  br i1 %904, label %905, label %1001

905:                                              ; preds = %901, %878
  %906 = load ptr, ptr %853, align 8, !tbaa !106
  %907 = getelementptr inbounds %struct.sv, ptr %906, i64 0, i32 3
  %908 = load ptr, ptr %907, align 8, !tbaa !106
  %909 = getelementptr inbounds %struct.gp, ptr %908, i64 0, i32 5
  %910 = load ptr, ptr %909, align 8, !tbaa !183
  %911 = icmp eq ptr %910, null
  %912 = load ptr, ptr %6, align 8
  %913 = icmp eq ptr %910, %912
  %914 = select i1 %911, i1 true, i1 %913
  br i1 %914, label %1001, label %915

915:                                              ; preds = %905
  %916 = load i32, ptr %835, align 4, !tbaa !152
  %917 = and i32 %916, 255
  %918 = icmp eq i32 %917, 11
  br i1 %918, label %919, label %967

919:                                              ; preds = %915
  %920 = load ptr, ptr %834, align 8, !tbaa !121
  %921 = getelementptr inbounds %struct.xpvav, ptr %920, i64 0, i32 2
  %922 = load i64, ptr %921, align 8, !tbaa !123
  %923 = trunc i64 %922 to i32
  %924 = load ptr, ptr %836, align 8, !tbaa !106
  %925 = call ptr @Perl_newSV_type(i32 noundef 11) #7
  %926 = call ptr @Perl_sv_2mortal(ptr noundef %925) #7
  %927 = icmp eq i32 %923, -1
  br i1 %927, label %999, label %928

928:                                              ; preds = %919
  %929 = getelementptr inbounds %struct.he, ptr %852, i64 0, i32 1
  br label %930

930:                                              ; preds = %928, %964
  %931 = phi i32 [ %923, %928 ], [ %965, %964 ]
  %932 = phi ptr [ %924, %928 ], [ %933, %964 ]
  %933 = getelementptr inbounds ptr, ptr %932, i64 1
  %934 = load ptr, ptr %932, align 8, !tbaa !95
  %935 = call ptr @Perl_newSVsv(ptr noundef %934) #7
  %936 = load i32, ptr %13, align 4, !tbaa !141
  %937 = icmp eq i32 %936, 1
  br i1 %937, label %938, label %939

938:                                              ; preds = %930
  call void @Perl_sv_catpvn_flags(ptr noundef %935, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %964

939:                                              ; preds = %930
  call void @Perl_sv_catpvn_flags(ptr noundef %935, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  %940 = load i32, ptr %13, align 4, !tbaa !141
  %941 = add nsw i32 %940, -2
  %942 = sext i32 %941 to i64
  %943 = load ptr, ptr %929, align 8, !tbaa !150
  %944 = getelementptr inbounds %struct.hek, ptr %943, i64 0, i32 1
  %945 = load i32, ptr %944, align 4, !tbaa !130
  %946 = icmp eq i32 %945, -2
  %947 = getelementptr inbounds %struct.hek, ptr %943, i64 0, i32 2
  br i1 %946, label %948, label %953

948:                                              ; preds = %939
  %949 = load ptr, ptr %947, align 4, !tbaa !95
  %950 = getelementptr inbounds %struct.sv, ptr %949, i64 0, i32 2
  %951 = load i32, ptr %950, align 4, !tbaa !152
  %952 = and i32 %951, 536870912
  br label %960

953:                                              ; preds = %939
  %954 = sext i32 %945 to i64
  %955 = getelementptr inbounds i8, ptr %947, i64 %954
  %956 = getelementptr inbounds i8, ptr %955, i64 1
  %957 = load i8, ptr %956, align 1, !tbaa !106
  %958 = and i8 %957, 1
  %959 = zext nneg i8 %958 to i32
  br label %960

960:                                              ; preds = %953, %948
  %961 = phi i32 [ %952, %948 ], [ %959, %953 ]
  %962 = icmp eq i32 %961, 0
  %963 = select i1 %962, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %935, ptr noundef %860, i64 noundef %942, i32 noundef %963) #7
  br label %964

964:                                              ; preds = %960, %938
  call void @Perl_av_push(ptr noundef %926, ptr noundef %935) #7
  %965 = add nsw i32 %931, -1
  %966 = icmp eq i32 %931, 0
  br i1 %966, label %999, label %930, !llvm.loop !188

967:                                              ; preds = %915
  %968 = call ptr @Perl_newSVsv(ptr noundef %834) #7
  %969 = call ptr @Perl_sv_2mortal(ptr noundef %968) #7
  %970 = load i32, ptr %13, align 4, !tbaa !141
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %973

972:                                              ; preds = %967
  call void @Perl_sv_catpvn_flags(ptr noundef %969, ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 2) #7
  br label %999

973:                                              ; preds = %967
  call void @Perl_sv_catpvn_flags(ptr noundef %969, ptr noundef nonnull @.str.9, i64 noundef 2, i32 noundef 2) #7
  %974 = load i32, ptr %13, align 4, !tbaa !141
  %975 = add nsw i32 %974, -2
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds %struct.he, ptr %852, i64 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !150
  %979 = getelementptr inbounds %struct.hek, ptr %978, i64 0, i32 1
  %980 = load i32, ptr %979, align 4, !tbaa !130
  %981 = icmp eq i32 %980, -2
  %982 = getelementptr inbounds %struct.hek, ptr %978, i64 0, i32 2
  br i1 %981, label %983, label %988

983:                                              ; preds = %973
  %984 = load ptr, ptr %982, align 4, !tbaa !95
  %985 = getelementptr inbounds %struct.sv, ptr %984, i64 0, i32 2
  %986 = load i32, ptr %985, align 4, !tbaa !152
  %987 = and i32 %986, 536870912
  br label %995

988:                                              ; preds = %973
  %989 = sext i32 %980 to i64
  %990 = getelementptr inbounds i8, ptr %982, i64 %989
  %991 = getelementptr inbounds i8, ptr %990, i64 1
  %992 = load i8, ptr %991, align 1, !tbaa !106
  %993 = and i8 %992, 1
  %994 = zext nneg i8 %993 to i32
  br label %995

995:                                              ; preds = %988, %983
  %996 = phi i32 [ %987, %983 ], [ %994, %988 ]
  %997 = icmp eq i32 %996, 0
  %998 = select i1 %997, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %969, ptr noundef %860, i64 noundef %976, i32 noundef %998) #7
  br label %999

999:                                              ; preds = %964, %919, %972, %995
  %1000 = phi ptr [ %969, %972 ], [ %969, %995 ], [ %926, %919 ], [ %926, %964 ]
  call fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %910, ptr noundef null, ptr noundef %1000)
  br label %1001

1001:                                             ; preds = %905, %999, %901, %873, %875, %851
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  %1002 = load ptr, ptr %852, align 8, !tbaa !95
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %837, label %851, !llvm.loop !189

1004:                                             ; preds = %837, %825, %808, %822, %369
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_mro_method_changed_in(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !190 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6, !prof !191

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = load ptr, ptr %0, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !101
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16, !prof !191

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %12, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !120
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %32, label %20, !prof !191

20:                                               ; preds = %16
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %26, label %22, !prof !191

22:                                               ; preds = %20
  %23 = icmp slt i32 %18, -1
  br i1 %23, label %24, label %29, !prof !191

24:                                               ; preds = %22
  %25 = getelementptr inbounds ptr, ptr %14, i64 1
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %14, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %14, %22 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  br label %32

32:                                               ; preds = %1, %6, %16, %29
  %33 = phi ptr [ %31, %29 ], [ null, %16 ], [ null, %6 ], [ null, %1 ]
  br i1 %5, label %61, label %34, !prof !191

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  %37 = load ptr, ptr %0, align 8, !tbaa !99
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !101
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !106
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44, !prof !191

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !120
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %61, label %48, !prof !191

48:                                               ; preds = %44
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %54, label %50, !prof !191

50:                                               ; preds = %48
  %51 = icmp slt i32 %46, -1
  br i1 %51, label %52, label %57, !prof !191

52:                                               ; preds = %50
  %53 = getelementptr inbounds ptr, ptr %42, i64 1
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %53, %52 ], [ %42, %48 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !95
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi ptr [ %42, %50 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !130
  br label %61

61:                                               ; preds = %32, %34, %44, %57
  %62 = phi i32 [ %60, %57 ], [ 0, %44 ], [ 0, %34 ], [ 0, %32 ]
  %63 = load ptr, ptr @PL_isarev, align 8, !tbaa !95
  br i1 %5, label %88, label %64, !prof !191

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = load ptr, ptr %0, align 8, !tbaa !99
  %68 = getelementptr inbounds %struct.xpvhv, ptr %67, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !101
  %70 = getelementptr ptr, ptr %66, i64 %69
  %71 = getelementptr ptr, ptr %70, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !106
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74, !prof !191

74:                                               ; preds = %64
  %75 = getelementptr i8, ptr %70, i64 36
  %76 = load i32, ptr %75, align 4, !tbaa !120
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80, !prof !191

78:                                               ; preds = %74
  %79 = load ptr, ptr %72, align 8, !tbaa !95
  br label %88

80:                                               ; preds = %74
  %81 = icmp slt i32 %76, -1
  br i1 %81, label %82, label %85, !prof !191

82:                                               ; preds = %80
  %83 = getelementptr inbounds ptr, ptr %72, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !95
  br label %88

85:                                               ; preds = %80
  %86 = icmp eq i32 %76, -1
  %87 = select i1 %86, ptr null, ptr %72, !prof !191
  br label %88

88:                                               ; preds = %85, %61, %64, %78, %82
  %89 = phi ptr [ %79, %78 ], [ %84, %82 ], [ null, %64 ], [ null, %61 ], [ %87, %85 ]
  %90 = getelementptr inbounds %struct.hek, ptr %89, i64 0, i32 2
  %91 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %91)
  %92 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !106
  %94 = load ptr, ptr %0, align 8, !tbaa !99
  %95 = getelementptr inbounds %struct.xpvhv, ptr %94, i64 0, i32 3
  %96 = load i64, ptr %95, align 8, !tbaa !101
  %97 = getelementptr ptr, ptr %93, i64 %96
  %98 = getelementptr ptr, ptr %97, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !106, !nonnull !179, !noundef !179
  %100 = getelementptr i8, ptr %97, i64 36
  %101 = load i32, ptr %100, align 4, !tbaa !120
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %105, !prof !191

103:                                              ; preds = %88
  %104 = load ptr, ptr %99, align 8, !tbaa !95
  br label %112

105:                                              ; preds = %88
  %106 = icmp slt i32 %101, -1
  br i1 %106, label %107, label %110, !prof !191

107:                                              ; preds = %105
  %108 = getelementptr inbounds ptr, ptr %99, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !95
  br label %112

110:                                              ; preds = %105
  %111 = icmp ne i32 %101, -1
  tail call void @llvm.assume(i1 %111)
  br label %112

112:                                              ; preds = %103, %110, %107
  %113 = phi ptr [ %104, %103 ], [ %109, %107 ], [ %99, %110 ]
  %114 = getelementptr inbounds %struct.hek, ptr %113, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !130
  %116 = sext i32 %115 to i64
  br i1 %102, label %117, label %119, !prof !191

117:                                              ; preds = %112
  %118 = load ptr, ptr %99, align 8, !tbaa !95
  br label %127

119:                                              ; preds = %112
  %120 = icmp slt i32 %101, -1
  br i1 %120, label %121, label %124, !prof !191

121:                                              ; preds = %119
  %122 = getelementptr inbounds ptr, ptr %99, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  br label %127

124:                                              ; preds = %119
  %125 = icmp eq i32 %101, -1
  %126 = select i1 %125, ptr null, ptr %99, !prof !191
  br label %127

127:                                              ; preds = %124, %117, %121
  %128 = phi ptr [ %118, %117 ], [ %123, %121 ], [ %126, %124 ]
  %129 = getelementptr inbounds %struct.hek, ptr %128, i64 0, i32 2
  br i1 %102, label %130, label %132, !prof !191

130:                                              ; preds = %127
  %131 = load ptr, ptr %99, align 8, !tbaa !95
  br label %139

132:                                              ; preds = %127
  %133 = icmp slt i32 %101, -1
  br i1 %133, label %134, label %137, !prof !191

134:                                              ; preds = %132
  %135 = getelementptr inbounds ptr, ptr %99, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !95
  br label %139

137:                                              ; preds = %132
  %138 = icmp ne i32 %101, -1
  tail call void @llvm.assume(i1 %138)
  br label %139

139:                                              ; preds = %130, %137, %134
  %140 = phi ptr [ %131, %130 ], [ %136, %134 ], [ %99, %137 ]
  %141 = getelementptr inbounds %struct.hek, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !130
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %129, i64 %143
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !106
  %147 = and i8 %146, 1
  %148 = zext nneg i8 %147 to i32
  br i1 %102, label %149, label %151, !prof !191

149:                                              ; preds = %139
  %150 = load ptr, ptr %99, align 8, !tbaa !95
  br label %158

151:                                              ; preds = %139
  %152 = icmp slt i32 %101, -1
  br i1 %152, label %153, label %156, !prof !191

153:                                              ; preds = %151
  %154 = getelementptr inbounds ptr, ptr %99, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !95
  br label %158

156:                                              ; preds = %151
  %157 = icmp ne i32 %101, -1
  tail call void @llvm.assume(i1 %157)
  br label %158

158:                                              ; preds = %149, %156, %153
  %159 = phi ptr [ %150, %149 ], [ %155, %153 ], [ %99, %156 ]
  %160 = load i32, ptr %159, align 4, !tbaa !132
  %161 = tail call ptr @Perl_hv_common(ptr noundef %63, ptr noundef null, ptr noundef nonnull %90, i64 noundef %116, i32 noundef %148, i32 noundef 32, ptr noundef null, i32 noundef %160) #7
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163, !prof !192

163:                                              ; preds = %158
  %164 = load ptr, ptr %161, align 8, !tbaa !95
  br label %165

165:                                              ; preds = %158, %163
  %166 = phi ptr [ %164, %163 ], [ null, %158 ]
  %167 = icmp eq ptr %33, null
  br i1 %167, label %168, label %169, !prof !191

168:                                              ; preds = %165
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #7
  br label %169

169:                                              ; preds = %168, %165
  %170 = load ptr, ptr %92, align 8, !tbaa !106
  %171 = load ptr, ptr %0, align 8, !tbaa !99
  %172 = getelementptr inbounds %struct.xpvhv, ptr %171, i64 0, i32 3
  %173 = load i64, ptr %172, align 8, !tbaa !101
  %174 = getelementptr ptr, ptr %170, i64 %173
  %175 = getelementptr ptr, ptr %174, i64 5
  %176 = load ptr, ptr %175, align 8, !tbaa !110
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %189, !prof !193

178:                                              ; preds = %169
  %179 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %180 = load ptr, ptr %92, align 8, !tbaa !106
  %181 = load ptr, ptr %0, align 8, !tbaa !99
  %182 = getelementptr inbounds %struct.xpvhv, ptr %181, i64 0, i32 3
  %183 = load i64, ptr %182, align 8, !tbaa !101
  %184 = getelementptr ptr, ptr %180, i64 %183
  %185 = getelementptr ptr, ptr %184, i64 5
  store ptr %179, ptr %185, align 8, !tbaa !110
  %186 = getelementptr inbounds %struct.mro_meta, ptr %179, i64 0, i32 3
  store i32 1, ptr %186, align 8, !tbaa !112
  %187 = getelementptr inbounds %struct.mro_meta, ptr %179, i64 0, i32 4
  store i32 1, ptr %187, align 4, !tbaa !113
  %188 = getelementptr inbounds %struct.mro_meta, ptr %179, i64 0, i32 5
  store ptr @dfs_alg, ptr %188, align 8, !tbaa !94
  br label %189

189:                                              ; preds = %169, %178
  %190 = phi ptr [ %179, %178 ], [ %176, %169 ]
  %191 = getelementptr inbounds %struct.mro_meta, ptr %190, i64 0, i32 4
  %192 = load i32, ptr %191, align 4, !tbaa !113
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 4, !tbaa !113
  %194 = load i32, ptr %2, align 4, !tbaa !115
  %195 = and i32 %194, 1048576
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199, !prof !194

197:                                              ; preds = %189
  %198 = load ptr, ptr %0, align 8, !tbaa !99
  store ptr null, ptr %198, align 8, !tbaa !144
  br label %199

199:                                              ; preds = %197, %189
  %200 = icmp eq i32 %62, 9
  br i1 %200, label %201, label %204, !prof !195

201:                                              ; preds = %199
  %202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(10) @.str.4) #8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204, !prof !196

204:                                              ; preds = %201, %199
  %205 = icmp eq ptr %166, null
  br i1 %205, label %261, label %206, !prof !197

206:                                              ; preds = %204
  %207 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %166, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %208 = icmp eq ptr %207, null
  br i1 %208, label %212, label %209, !prof !198

209:                                              ; preds = %206, %201
  %210 = load i32, ptr @PL_sub_generation, align 4, !tbaa !141
  %211 = add i32 %210, 1
  store i32 %211, ptr @PL_sub_generation, align 4, !tbaa !141
  br label %272

212:                                              ; preds = %206
  %213 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %166) #7
  %214 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %166, i32 noundef 0) #7
  %215 = icmp eq ptr %214, null
  br i1 %215, label %261, label %216, !prof !199

216:                                              ; preds = %212, %258
  %217 = phi ptr [ %259, %258 ], [ %214, %212 ]
  %218 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %217) #7
  %219 = tail call ptr @Perl_gv_stashsv(ptr noundef %218, i32 noundef 0) #7
  %220 = icmp eq ptr %219, null
  br i1 %220, label %258, label %221, !prof !200, !llvm.loop !201

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.hv, ptr %219, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !106
  %224 = load ptr, ptr %219, align 8, !tbaa !99
  %225 = getelementptr inbounds %struct.xpvhv, ptr %224, i64 0, i32 3
  %226 = load i64, ptr %225, align 8, !tbaa !101
  %227 = getelementptr ptr, ptr %223, i64 %226
  %228 = getelementptr ptr, ptr %227, i64 5
  %229 = load ptr, ptr %228, align 8, !tbaa !110
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %242, !prof !200

231:                                              ; preds = %221
  %232 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %233 = load ptr, ptr %222, align 8, !tbaa !106
  %234 = load ptr, ptr %219, align 8, !tbaa !99
  %235 = getelementptr inbounds %struct.xpvhv, ptr %234, i64 0, i32 3
  %236 = load i64, ptr %235, align 8, !tbaa !101
  %237 = getelementptr ptr, ptr %233, i64 %236
  %238 = getelementptr ptr, ptr %237, i64 5
  store ptr %232, ptr %238, align 8, !tbaa !110
  %239 = getelementptr inbounds %struct.mro_meta, ptr %232, i64 0, i32 3
  store i32 1, ptr %239, align 8, !tbaa !112
  %240 = getelementptr inbounds %struct.mro_meta, ptr %232, i64 0, i32 4
  store i32 1, ptr %240, align 4, !tbaa !113
  %241 = getelementptr inbounds %struct.mro_meta, ptr %232, i64 0, i32 5
  store ptr @dfs_alg, ptr %241, align 8, !tbaa !94
  br label %242

242:                                              ; preds = %221, %231
  %243 = phi ptr [ %232, %231 ], [ %229, %221 ]
  %244 = getelementptr inbounds %struct.mro_meta, ptr %243, i64 0, i32 3
  %245 = load i32, ptr %244, align 8, !tbaa !112
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 8, !tbaa !112
  %247 = getelementptr inbounds %struct.mro_meta, ptr %243, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !142
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250, !prof !198

250:                                              ; preds = %242
  tail call void @Perl_hv_clear(ptr noundef nonnull %248) #7
  br label %251

251:                                              ; preds = %250, %242
  %252 = getelementptr inbounds %struct.hv, ptr %219, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !115
  %254 = and i32 %253, 1048576
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258, !prof !198

256:                                              ; preds = %251
  %257 = load ptr, ptr %219, align 8, !tbaa !99
  store ptr null, ptr %257, align 8, !tbaa !144
  br label %258

258:                                              ; preds = %251, %256, %216
  %259 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %166, i32 noundef 0) #7
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %216, !prof !202

261:                                              ; preds = %258, %212, %204
  %262 = load i32, ptr %2, align 4, !tbaa !115
  %263 = or i32 %262, 268435456
  store i32 %263, ptr %2, align 4, !tbaa !115
  %264 = load ptr, ptr %92, align 8, !tbaa !106
  %265 = load ptr, ptr %0, align 8, !tbaa !99
  %266 = getelementptr inbounds %struct.xpvhv, ptr %265, i64 0, i32 3
  %267 = load i64, ptr %266, align 8, !tbaa !101
  %268 = getelementptr ptr, ptr %264, i64 %267
  %269 = getelementptr i8, ptr %268, i64 60
  %270 = load i32, ptr %269, align 4, !tbaa !143
  %271 = and i32 %270, -3
  store i32 %271, ptr %269, align 4, !tbaa !143
  br label %272

272:                                              ; preds = %261, %209
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_mro_set_mro(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !81 {
  %3 = load ptr, ptr @PL_registered_mros, align 8, !tbaa !95
  %4 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !95
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.xpvuv, ptr %8, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !106
  %11 = inttoptr i64 %10 to ptr
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi ptr [ %11, %6 ], [ null, %2 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, ptr noundef %1) #7
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  %19 = icmp eq ptr %18, %13
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %0, ptr noundef %18, ptr noundef nonnull %22)
  br label %29

29:                                               ; preds = %27, %24, %20
  store ptr %13, ptr %17, align 8, !tbaa !94
  store ptr null, ptr %21, align 8, !tbaa !96
  %30 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !112
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !112
  %33 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !142
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call void @Perl_hv_clear(ptr noundef nonnull %34) #7
  br label %37

37:                                               ; preds = %29, %36, %16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_boot_core_mro() local_unnamed_addr #0 !prof !107 {
  tail call void @Perl_mro_register(ptr noundef nonnull @dfs_alg)
  %1 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_mro_method_changed_in, ptr noundef nonnull @Perl_boot_core_mro.file, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @XS_mro_method_changed_in(ptr noundef %0) #0 !prof !203 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !95
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !95
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !95
  %5 = load i32, ptr %3, align 4, !tbaa !141
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !95
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15, !prof !166

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !95
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = tail call ptr @Perl_gv_stashsv(ptr noundef %20, i32 noundef 0) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !165

23:                                               ; preds = %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %20) #7
  br label %24

24:                                               ; preds = %23, %16
  tail call void @Perl_mro_method_changed_in(ptr noundef %21)
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !95
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  %27 = getelementptr inbounds ptr, ptr %26, i64 -1
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !95
  ret void
}

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @S_mro_get_linear_isa_dfs(ptr noundef %0, i32 noundef %1) #3 !prof !204 !PGOFuncName !205 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = load ptr, ptr %0, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !101
  %9 = getelementptr ptr, ptr %5, i64 %8
  %10 = getelementptr ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13, !prof !206

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %9, i64 36
  %15 = load i32, ptr %14, align 4, !tbaa !120
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !206

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %28

20:                                               ; preds = %13
  %21 = icmp slt i32 %15, -1
  br i1 %21, label %22, label %26, !prof !206

22:                                               ; preds = %20
  %23 = getelementptr inbounds ptr, ptr %11, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %28

26:                                               ; preds = %20
  %27 = icmp eq i32 %15, -1
  br i1 %27, label %39, label %28, !prof !206

28:                                               ; preds = %26, %22, %17
  br i1 %16, label %29, label %31, !prof !206

29:                                               ; preds = %28
  %30 = load ptr, ptr %11, align 8, !tbaa !95
  br label %51

31:                                               ; preds = %28
  %32 = icmp slt i32 %15, -1
  br i1 %32, label %33, label %36, !prof !206

33:                                               ; preds = %31
  %34 = getelementptr inbounds ptr, ptr %11, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  br label %51

36:                                               ; preds = %31
  %37 = icmp eq i32 %15, -1
  %38 = select i1 %37, ptr null, ptr %11, !prof !206
  br label %51

39:                                               ; preds = %26, %22, %17, %2
  %40 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !115
  %42 = and i32 %41, 33554432
  %43 = icmp eq i32 %42, 0
  %44 = or i1 %12, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %9, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !120
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %11, align 8, !tbaa !95
  br label %51

51:                                               ; preds = %36, %39, %45, %49, %29, %33
  %52 = phi ptr [ %30, %29 ], [ %35, %33 ], [ %50, %49 ], [ null, %39 ], [ %11, %45 ], [ %38, %36 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55, !prof !206

54:                                               ; preds = %51
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #7
  br label %55

55:                                               ; preds = %54, %51
  %56 = icmp ugt i32 %1, 100
  br i1 %56, label %57, label %58, !prof !206

57:                                               ; preds = %55
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, ptr noundef %52) #7
  br label %58

58:                                               ; preds = %57, %55
  %59 = load ptr, ptr %4, align 8, !tbaa !106
  %60 = load ptr, ptr %0, align 8, !tbaa !99
  %61 = getelementptr inbounds %struct.xpvhv, ptr %60, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !101
  %63 = getelementptr ptr, ptr %59, i64 %62
  %64 = getelementptr ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8, !tbaa !110
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %78, !prof !207

67:                                               ; preds = %58
  %68 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %69 = load ptr, ptr %4, align 8, !tbaa !106
  %70 = load ptr, ptr %0, align 8, !tbaa !99
  %71 = getelementptr inbounds %struct.xpvhv, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !101
  %73 = getelementptr ptr, ptr %69, i64 %72
  %74 = getelementptr ptr, ptr %73, i64 5
  store ptr %68, ptr %74, align 8, !tbaa !110
  %75 = getelementptr inbounds %struct.mro_meta, ptr %68, i64 0, i32 3
  store i32 1, ptr %75, align 8, !tbaa !112
  %76 = getelementptr inbounds %struct.mro_meta, ptr %68, i64 0, i32 4
  store i32 1, ptr %76, align 4, !tbaa !113
  %77 = getelementptr inbounds %struct.mro_meta, ptr %68, i64 0, i32 5
  store ptr @dfs_alg, ptr %77, align 8, !tbaa !94
  br label %78

78:                                               ; preds = %58, %67
  %79 = phi ptr [ %68, %67 ], [ %65, %58 ]
  %80 = getelementptr inbounds %struct.mro_meta, ptr %79, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !94
  %82 = icmp eq ptr %81, @dfs_alg
  br i1 %82, label %83, label %86, !prof !208

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.mro_meta, ptr %79, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !96
  br label %88

86:                                               ; preds = %78
  %87 = tail call ptr @Perl_mro_get_private_data(ptr noundef %79, ptr noundef nonnull @dfs_alg)
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi ptr [ %85, %83 ], [ %87, %86 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %266, !prof !209

91:                                               ; preds = %88
  %92 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %93 = tail call ptr @Perl_sv_2mortal(ptr noundef %92) #7
  %94 = tail call ptr @Perl_newSVhek(ptr noundef %52) #7
  tail call void @Perl_av_push(ptr noundef %93, ptr noundef %94) #7
  %95 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.18, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %96 = icmp eq ptr %95, null
  br i1 %96, label %114, label %97, !prof !210

97:                                               ; preds = %91
  %98 = load ptr, ptr %95, align 8, !tbaa !95
  %99 = icmp eq ptr %98, null
  br i1 %99, label %114, label %100, !prof !165

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !211
  %103 = and i32 %102, 49152
  %104 = icmp eq i32 %103, 32768
  br i1 %104, label %105, label %114, !prof !166

105:                                              ; preds = %100
  %106 = and i32 %102, 255
  %107 = add nsw i32 %106, -9
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %114, !prof !166

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !106
  %112 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !212
  br label %114

114:                                              ; preds = %105, %91, %97, %100, %109
  %115 = phi ptr [ %113, %109 ], [ null, %100 ], [ null, %97 ], [ null, %91 ], [ null, %105 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %243, label %117, !prof !210

117:                                              ; preds = %114
  %118 = load ptr, ptr %115, align 8, !tbaa !121
  %119 = getelementptr inbounds %struct.xpvav, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !123
  %121 = icmp sgt i64 %120, -1
  br i1 %121, label %122, label %243, !prof !166

122:                                              ; preds = %117
  %123 = trunc i64 %120 to i32
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %247, label %125, !prof !213

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.av, ptr %115, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !106
  %128 = add i32 %1, 1
  br label %129

129:                                              ; preds = %125, %239
  %130 = phi i32 [ %123, %125 ], [ %241, %239 ]
  %131 = phi ptr [ null, %125 ], [ %240, %239 ]
  %132 = phi ptr [ %127, %125 ], [ %137, %239 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %133 = load ptr, ptr %132, align 8, !tbaa !95
  %134 = icmp eq ptr %133, null
  %135 = select i1 %134, ptr @PL_sv_undef, ptr %133, !prof !214
  store ptr %135, ptr %3, align 8, !tbaa !95
  %136 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %135, i32 noundef 0) #7
  %137 = getelementptr inbounds ptr, ptr %132, i64 1
  %138 = icmp eq ptr %136, null
  br i1 %138, label %148, label %139, !prof !215

139:                                              ; preds = %129
  %140 = tail call ptr @S_mro_get_linear_isa_dfs(ptr noundef nonnull %136, i32 noundef %128)
  %141 = getelementptr inbounds %struct.av, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !106
  %143 = load ptr, ptr %140, align 8, !tbaa !121
  %144 = getelementptr inbounds %struct.xpvav, ptr %143, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !123
  %146 = trunc i64 %145 to i32
  %147 = add i32 %146, 1
  br label %148

148:                                              ; preds = %129, %139
  %149 = phi ptr [ %142, %139 ], [ %3, %129 ]
  %150 = phi i32 [ %147, %139 ], [ 1, %129 ]
  %151 = icmp eq ptr %131, null
  br i1 %151, label %169, label %152, !prof !216

152:                                              ; preds = %148
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %239, label %154, !prof !217

154:                                              ; preds = %152, %167
  %155 = phi i32 [ %157, %167 ], [ %150, %152 ]
  %156 = phi ptr [ %158, %167 ], [ %149, %152 ]
  %157 = add nsw i32 %155, -1
  %158 = getelementptr inbounds ptr, ptr %156, i64 1
  %159 = load ptr, ptr %156, align 8, !tbaa !95
  %160 = tail call ptr @Perl_hv_common(ptr noundef nonnull %131, ptr noundef %159, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %161 = getelementptr inbounds %struct.he, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !106
  %163 = icmp eq ptr %162, @PL_sv_undef
  br i1 %163, label %167, label %164, !prof !218

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.he, ptr %160, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !150
  store ptr @PL_sv_undef, ptr %161, align 8, !tbaa !106
  tail call void @Perl_sv_sethek(ptr noundef %162, ptr noundef %166) #7
  tail call void @Perl_av_push(ptr noundef %93, ptr noundef %162) #7
  br label %167

167:                                              ; preds = %164, %154
  %168 = icmp eq i32 %157, 0
  br i1 %168, label %239, label %154, !prof !219, !llvm.loop !220

169:                                              ; preds = %148
  br i1 %138, label %231, label %170, !prof !221

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.hv, ptr %136, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !106
  %173 = load ptr, ptr %136, align 8, !tbaa !99
  %174 = getelementptr inbounds %struct.xpvhv, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !101
  %176 = getelementptr ptr, ptr %172, i64 %175
  %177 = getelementptr ptr, ptr %176, i64 5
  %178 = load ptr, ptr %177, align 8, !tbaa !110
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %191, !prof !222

180:                                              ; preds = %170
  %181 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %182 = load ptr, ptr %171, align 8, !tbaa !106
  %183 = load ptr, ptr %136, align 8, !tbaa !99
  %184 = getelementptr inbounds %struct.xpvhv, ptr %183, i64 0, i32 3
  %185 = load i64, ptr %184, align 8, !tbaa !101
  %186 = getelementptr ptr, ptr %182, i64 %185
  %187 = getelementptr ptr, ptr %186, i64 5
  store ptr %181, ptr %187, align 8, !tbaa !110
  %188 = getelementptr inbounds %struct.mro_meta, ptr %181, i64 0, i32 3
  store i32 1, ptr %188, align 8, !tbaa !112
  %189 = getelementptr inbounds %struct.mro_meta, ptr %181, i64 0, i32 4
  store i32 1, ptr %189, align 4, !tbaa !113
  %190 = getelementptr inbounds %struct.mro_meta, ptr %181, i64 0, i32 5
  store ptr @dfs_alg, ptr %190, align 8, !tbaa !94
  br label %191

191:                                              ; preds = %170, %180
  %192 = phi ptr [ %181, %180 ], [ %178, %170 ]
  %193 = getelementptr inbounds %struct.mro_meta, ptr %192, i64 0, i32 6
  %194 = load ptr, ptr %193, align 8, !tbaa !128
  %195 = tail call ptr @Perl_newHVhv(ptr noundef %194) #7
  %196 = tail call ptr @Perl_sv_2mortal(ptr noundef %195) #7
  %197 = sext i32 %150 to i64
  tail call void @Perl_av_extend(ptr noundef %93, i64 noundef %197) #7
  %198 = load ptr, ptr %93, align 8, !tbaa !121
  %199 = getelementptr inbounds %struct.xpvav, ptr %198, i64 0, i32 2
  store i64 %197, ptr %199, align 8, !tbaa !123
  %200 = icmp eq i32 %150, 0
  br i1 %200, label %239, label %201, !prof !223

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.av, ptr %93, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  br label %204

204:                                              ; preds = %201, %227
  %205 = phi i32 [ %208, %227 ], [ %150, %201 ]
  %206 = phi ptr [ %229, %227 ], [ %203, %201 ]
  %207 = phi ptr [ %209, %227 ], [ %149, %201 ]
  %208 = add nsw i32 %205, -1
  %209 = getelementptr inbounds ptr, ptr %207, i64 1
  %210 = load ptr, ptr %207, align 8, !tbaa !95
  %211 = getelementptr inbounds %struct.sv, ptr %210, i64 0, i32 2
  %212 = load i32, ptr %211, align 4, !tbaa !152
  %213 = and i32 %212, 268435456
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %225, label %215, !prof !224

215:                                              ; preds = %204
  %216 = load ptr, ptr %210, align 8, !tbaa !104
  %217 = getelementptr inbounds %struct.xpv, ptr %216, i64 0, i32 3
  %218 = load i64, ptr %217, align 8, !tbaa !106
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %225, !prof !225

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.sv, ptr %210, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !106
  %223 = getelementptr inbounds i8, ptr %222, i64 -8
  %224 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %223) #7
  br label %227

225:                                              ; preds = %215, %204
  %226 = tail call ptr @Perl_newSVsv(ptr noundef %210) #7
  br label %227

227:                                              ; preds = %225, %220
  %228 = phi ptr [ %224, %220 ], [ %226, %225 ]
  %229 = getelementptr inbounds ptr, ptr %206, i64 1
  store ptr %228, ptr %229, align 8, !tbaa !95
  %230 = icmp eq i32 %208, 0
  br i1 %230, label %239, label %204, !prof !226, !llvm.loop !227

231:                                              ; preds = %169
  %232 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %233 = tail call ptr @Perl_sv_2mortal(ptr noundef %232) #7
  %234 = tail call ptr @Perl_hv_common_key_len(ptr noundef %233, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %235 = tail call ptr @Perl_hv_common(ptr noundef %233, ptr noundef nonnull %135, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %236 = getelementptr inbounds %struct.he, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !150
  %238 = tail call ptr @Perl_newSVhek(ptr noundef %237) #7
  tail call void @Perl_av_push(ptr noundef %93, ptr noundef %238) #7
  br label %239

239:                                              ; preds = %167, %227, %152, %191, %231
  %240 = phi ptr [ %233, %231 ], [ %196, %191 ], [ %131, %152 ], [ %196, %227 ], [ %131, %167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %241 = add nsw i32 %130, -1
  %242 = icmp eq i32 %130, 0
  br i1 %242, label %247, label %129, !prof !228, !llvm.loop !229

243:                                              ; preds = %117, %114
  %244 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %245 = tail call ptr @Perl_sv_2mortal(ptr noundef %244) #7
  %246 = tail call ptr @Perl_hv_common_key_len(ptr noundef %245, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  br label %247

247:                                              ; preds = %239, %122, %243
  %248 = phi ptr [ %245, %243 ], [ null, %122 ], [ %240, %239 ]
  %249 = tail call ptr @Perl_hv_common(ptr noundef %248, ptr noundef %94, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %250 = getelementptr inbounds %struct.sv, ptr %248, i64 0, i32 1
  %251 = load i32, ptr %250, align 8, !tbaa !109
  %252 = add i32 %251, 1
  store i32 %252, ptr %250, align 8, !tbaa !109
  %253 = getelementptr inbounds %struct.hv, ptr %248, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !115
  %255 = and i32 %254, -134807553
  %256 = or disjoint i32 %255, 134283264
  store i32 %256, ptr %253, align 4, !tbaa !115
  %257 = getelementptr inbounds %struct.mro_meta, ptr %79, i64 0, i32 6
  store ptr %248, ptr %257, align 8, !tbaa !128
  %258 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 1
  %259 = load i32, ptr %258, align 8, !tbaa !109
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 8, !tbaa !109
  %261 = getelementptr inbounds %struct.av, ptr %93, i64 0, i32 2
  %262 = load i32, ptr %261, align 4, !tbaa !230
  %263 = and i32 %262, -134807553
  %264 = or disjoint i32 %263, 134283264
  store i32 %264, ptr %261, align 4, !tbaa !230
  %265 = tail call ptr @Perl_mro_set_private_data(ptr noundef %79, ptr noundef nonnull @dfs_alg, ptr noundef %93)
  br label %266

266:                                              ; preds = %88, %247
  %267 = phi ptr [ %93, %247 ], [ %89, %88 ]
  ret ptr %267
}

declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newHVhv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_hv_ename_delete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_hv_ename_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @Perl_mro_register, ptr @Perl_newSVuv, i64 1}
!36 = !{ptr @Perl_mro_register, ptr @Perl_hv_common, i64 1}
!37 = !{ptr @Perl_mro_get_linear_isa, ptr @S_mro_get_linear_isa_dfs, i64 219}
!38 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_safesyscalloc, i64 1}
!39 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_sv_free2, i64 6}
!40 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_sv_2mortal, i64 10}
!41 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_common, i64 103}
!42 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_common_key_len, i64 4}
!43 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iterinit, i64 4}
!44 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_newSV_type, i64 2}
!45 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iternext_flags, i64 8}
!46 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iterkeysv, i64 2}
!47 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_gv_stashsv, i64 2}
!48 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_mro_get_linear_isa, i64 27}
!49 = !{ptr @Perl_mro_isa_changed_in, ptr @S_mro_clean_isarev, i64 8}
!50 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_sv_upgrade, i64 6}
!51 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iterinit, i64 8}
!52 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iternext_flags, i64 35}
!53 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iterkey, i64 27}
!54 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_common_key_len, i64 27}
!55 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_common, i64 1886}
!56 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_safesyscalloc, i64 80}
!57 = !{ptr @Perl_mro_method_changed_in, ptr @strcmp, i64 11}
!58 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_common_key_len, i64 94}
!59 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iterinit, i64 94}
!60 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iternext_flags, i64 188}
!61 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iterkeysv, i64 94}
!62 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_gv_stashsv, i64 94}
!63 = !{ptr @Perl_boot_core_mro, ptr @Perl_mro_register, i64 1}
!64 = !{ptr @Perl_boot_core_mro, ptr @Perl_newXS_flags, i64 1}
!65 = !{ptr @XS_mro_method_changed_in, ptr @Perl_gv_stashsv, i64 27}
!66 = !{ptr @XS_mro_method_changed_in, ptr @Perl_mro_method_changed_in, i64 27}
!67 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_safesyscalloc, i64 2}
!68 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newSV_type, i64 60}
!69 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_sv_2mortal, i64 86}
!70 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newSVhek, i64 73}
!71 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_av_push, i64 53}
!72 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_hv_common, i64 100}
!73 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_gv_stashsv, i64 38}
!74 = !{ptr @S_mro_get_linear_isa_dfs, ptr @S_mro_get_linear_isa_dfs, i64 35}
!75 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_sv_sethek, i64 9}
!76 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newHVhv, i64 26}
!77 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_av_extend, i64 26}
!78 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_hv_common_key_len, i64 17}
!79 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_mro_set_private_data, i64 43}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !84, i64 0}
!83 = !{!"mro_meta", !84, i64 0, !84, i64 8, !84, i64 16, !87, i64 24, !87, i64 28, !84, i64 32, !84, i64 40, !84, i64 48, !87, i64 56}
!84 = !{!"any pointer", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!"int", !85, i64 0}
!88 = !{!89, !84, i64 8}
!89 = !{!"mro_alg", !84, i64 0, !84, i64 8, !90, i64 16, !90, i64 18, !87, i64 20}
!90 = !{!"short", !85, i64 0}
!91 = !{!89, !90, i64 16}
!92 = !{!89, !90, i64 18}
!93 = !{!89, !87, i64 20}
!94 = !{!83, !84, i64 32}
!95 = !{!84, !84, i64 0}
!96 = !{!83, !84, i64 8}
!97 = !{!"function_entry_count", i64 43}
!98 = !{!"branch_weights", i32 43, i32 0}
!99 = !{!100, !84, i64 0}
!100 = !{!"hv", !84, i64 0, !87, i64 8, !87, i64 12, !85, i64 16}
!101 = !{!102, !103, i64 24}
!102 = !{!"xpvhv", !84, i64 0, !85, i64 8, !103, i64 16, !103, i64 24}
!103 = !{!"long", !85, i64 0}
!104 = !{!105, !84, i64 0}
!105 = !{!"sv", !84, i64 0, !87, i64 8, !87, i64 12, !85, i64 16}
!106 = !{!85, !85, i64 0}
!107 = !{!"function_entry_count", i64 1}
!108 = !{!"branch_weights", i32 0, i32 1}
!109 = !{!105, !87, i64 8}
!110 = !{!111, !84, i64 32}
!111 = !{!"xpvhv_aux", !85, i64 0, !84, i64 8, !84, i64 16, !87, i64 24, !87, i64 28, !84, i64 32, !87, i64 40, !87, i64 44, !87, i64 48, !87, i64 52}
!112 = !{!83, !87, i64 24}
!113 = !{!83, !87, i64 28}
!114 = !{!"function_entry_count", i64 219}
!115 = !{!100, !87, i64 12}
!116 = !{!"branch_weights", i32 0, i32 219}
!117 = !{!89, !84, i64 0}
!118 = !{!"VP", i32 0, i64 219, i64 -6346082742637051466, i64 219}
!119 = !{!"branch_weights", i32 219, i32 0}
!120 = !{!111, !87, i64 28}
!121 = !{!122, !84, i64 0}
!122 = !{!"av", !84, i64 0, !87, i64 8, !87, i64 12, !85, i64 16}
!123 = !{!124, !103, i64 16}
!124 = !{!"xpvav", !84, i64 0, !85, i64 8, !103, i64 16, !103, i64 24, !84, i64 32}
!125 = distinct !{!125, !126, !127}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!83, !84, i64 40}
!129 = distinct !{!129, !126, !127}
!130 = !{!131, !87, i64 4}
!131 = !{!"hek", !87, i64 0, !87, i64 4, !85, i64 8}
!132 = !{!131, !87, i64 0}
!133 = !{!"function_entry_count", i64 25}
!134 = !{!"branch_weights", i32 0, i32 25}
!135 = !{!"branch_weights", i32 1, i32 24}
!136 = !{!"branch_weights", i32 25, i32 0}
!137 = !{!"branch_weights", i32 19, i32 6}
!138 = !{!"branch_weights", i32 2, i32 4}
!139 = !{!"branch_weights", i32 23, i32 2}
!140 = !{!"branch_weights", i32 2, i32 0}
!141 = !{!87, !87, i64 0}
!142 = !{!83, !84, i64 16}
!143 = !{!111, !87, i64 52}
!144 = !{!145, !84, i64 0}
!145 = !{!"xpvmg", !84, i64 0, !85, i64 8, !103, i64 16, !85, i64 24, !85, i64 32, !85, i64 40}
!146 = !{!"branch_weights", i32 0, i32 2}
!147 = !{!"branch_weights", i32 1, i32 127}
!148 = distinct !{!148, !126, !127}
!149 = !{!"branch_weights", i32 127, i32 1}
!150 = !{!151, !84, i64 8}
!151 = !{!"he", !84, i64 0, !84, i64 8, !85, i64 16}
!152 = !{!105, !87, i64 12}
!153 = !{!"branch_weights", i32 6, i32 0}
!154 = !{!"branch_weights", i32 127, i32 257}
!155 = distinct !{!155, !126, !127}
!156 = distinct !{!156, !126, !127}
!157 = !{!"branch_weights", i32 1, i32 199}
!158 = !{!"branch_weights", i32 27, i32 6}
!159 = !{!"branch_weights", i32 199, i32 65}
!160 = distinct !{!160, !126, !127}
!161 = !{!"branch_weights", i32 0, i32 6}
!162 = !{!"function_entry_count", i64 8}
!163 = !{!"mro_core.c;S_mro_clean_isarev"}
!164 = !{!"branch_weights", i32 0, i32 8}
!165 = !{!"branch_weights", i32 0, i32 27}
!166 = !{!"branch_weights", i32 27, i32 0}
!167 = distinct !{!167, !126, !127}
!168 = !{!102, !103, i64 16}
!169 = !{!"branch_weights", i32 127, i32 305}
!170 = !{!171, !84, i64 0}
!171 = !{!"gv", !84, i64 0, !87, i64 8, !87, i64 12, !85, i64 16}
!172 = distinct !{!172, !126, !127}
!173 = distinct !{!173, !126, !127}
!174 = !{!175, !103, i64 16}
!175 = !{!"xpv", !84, i64 0, !85, i64 8, !103, i64 16, !85, i64 24}
!176 = !{!103, !103, i64 0}
!177 = distinct !{!177, !126, !127}
!178 = distinct !{!178, !126, !127}
!179 = !{}
!180 = distinct !{!180, !126, !127}
!181 = distinct !{!181, !126, !127}
!182 = distinct !{!182, !126, !127}
!183 = !{!184, !84, i64 32}
!184 = !{!"gp", !84, i64 0, !84, i64 8, !84, i64 16, !87, i64 24, !87, i64 28, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !87, i64 64, !87, i64 67, !84, i64 72}
!185 = distinct !{!185, !126, !127}
!186 = distinct !{!186, !126, !127}
!187 = distinct !{!187, !126, !127}
!188 = distinct !{!188, !126, !127}
!189 = distinct !{!189, !126, !127}
!190 = !{!"function_entry_count", i64 1886}
!191 = !{!"branch_weights", i32 0, i32 1886}
!192 = !{!"branch_weights", i32 1792, i32 94}
!193 = !{!"branch_weights", i32 80, i32 1806}
!194 = !{!"branch_weights", i32 1886, i32 0}
!195 = !{!"branch_weights", i32 11, i32 1875}
!196 = !{!"branch_weights", i32 4, i32 7}
!197 = !{!"branch_weights", i32 1788, i32 94}
!198 = !{!"branch_weights", i32 94, i32 0}
!199 = !{!"branch_weights", i32 1, i32 187}
!200 = !{!"branch_weights", i32 0, i32 94}
!201 = distinct !{!201, !126, !127}
!202 = !{!"branch_weights", i32 187, i32 1}
!203 = !{!"function_entry_count", i64 27}
!204 = !{!"function_entry_count", i64 254}
!205 = !{!"mro_core.c;S_mro_get_linear_isa_dfs"}
!206 = !{!"branch_weights", i32 0, i32 254}
!207 = !{!"branch_weights", i32 2, i32 252}
!208 = !{!"branch_weights", i32 254, i32 0}
!209 = !{!"branch_weights", i32 43, i32 211}
!210 = !{!"branch_weights", i32 16, i32 27}
!211 = !{!171, !87, i64 12}
!212 = !{!184, !84, i64 40}
!213 = !{!"branch_weights", i32 1, i32 215}
!214 = !{!"branch_weights", i32 0, i32 38}
!215 = !{!"branch_weights", i32 3, i32 35}
!216 = !{!"branch_weights", i32 27, i32 11}
!217 = !{!"branch_weights", i32 1, i32 175}
!218 = !{!"branch_weights", i32 4, i32 9}
!219 = !{!"branch_weights", i32 175, i32 33}
!220 = distinct !{!220, !126, !127}
!221 = !{!"branch_weights", i32 1, i32 26}
!222 = !{!"branch_weights", i32 0, i32 26}
!223 = !{!"branch_weights", i32 1, i32 207}
!224 = !{!"branch_weights", i32 0, i32 29}
!225 = !{!"branch_weights", i32 29, i32 0}
!226 = !{!"branch_weights", i32 207, i32 25}
!227 = distinct !{!227, !126, !127}
!228 = !{!"branch_weights", i32 215, i32 89}
!229 = distinct !{!229, !126, !127}
!230 = !{!122, !87, i64 12}
