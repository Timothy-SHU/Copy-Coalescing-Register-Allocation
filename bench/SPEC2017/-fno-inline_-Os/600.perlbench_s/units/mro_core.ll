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
%struct.gv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.he = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, %union._xnvu }
%union.anon.6 = type { i64 }
%union._xnvu = type { double }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }

@.str = private unnamed_addr constant [65 x i8] c"panic: hv_store() failed in set_mro_private_data() for '%.*s' %d\00", align 1
@PL_registered_mros = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"panic: hv_store() failed in mro_register() for '%.*s' %d\00", align 1
@dfs_alg = internal constant %struct.mro_alg { ptr @S_mro_get_linear_isa_dfs, ptr @.str.2, i16 3, i16 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dfs\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Can't linearize anonymous symbol table\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Recursive inheritance detected in package '%2p'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"panic: invalid MRO!\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Can't call mro_isa_changed_in() on anonymous symbol table\00", align 1
@PL_isarev = external local_unnamed_addr global ptr, align 8
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [61 x i8] c"Can't call mro_method_changed_in() on anonymous symbol table\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Invalid mro name: '%-p'\00", align 1
@Perl_boot_core_mro.file = internal constant [11 x i8] c"mro_core.c\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"mro::method_changed_in\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"No such class: '%-p'!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_mro_get_private_data(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !106 {
  %3 = load ptr, ptr %0, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !116
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !117
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !118
  %14 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef null, ptr noundef %5, i64 noundef %8, i32 noundef %11, i32 noundef 32, ptr noundef null, i32 noundef %13) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = icmp eq ptr %18, %1
  %20 = load ptr, ptr %14, align 8, !tbaa !120
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !121
  br label %23

23:                                               ; preds = %16, %21, %2
  %24 = phi ptr [ null, %2 ], [ %20, %21 ], [ %20, %16 ]
  ret ptr %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_mro_set_private_data(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef returned %2) local_unnamed_addr #0 !prof !122 {
  %4 = load ptr, ptr %0, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %22, !prof !123

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12, !prof !123

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !121
  br label %48

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  store i64 1, ptr %15, align 8, !tbaa !126
  store ptr %13, ptr %0, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !tbaa !119
  %21 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %0, ptr noundef %20, ptr noundef nonnull %17) #8
  br label %22

22:                                               ; preds = %12, %19, %3
  %23 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !119
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  store ptr %2, ptr %27, align 8, !tbaa !121
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %0, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !116
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !117
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.mro_alg, ptr %1, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !118
  %40 = tail call ptr @Perl_hv_common(ptr noundef %29, ptr noundef null, ptr noundef %31, i64 noundef %34, i32 noundef %37, i32 noundef 4, ptr noundef %2, i32 noundef %39) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i16, ptr %32, align 8, !tbaa !116
  %44 = zext i16 %43 to i32
  %45 = load ptr, ptr %30, align 8, !tbaa !113
  %46 = load i16, ptr %35, align 2, !tbaa !117
  %47 = zext i16 %46 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, i32 noundef %44, ptr noundef %45, i32 noundef %47) #7
  br label %48

48:                                               ; preds = %28, %42, %10
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_mro_get_from_name(ptr noundef %0) local_unnamed_addr #0 !prof !106 {
  %2 = load ptr, ptr @PL_registered_mros, align 8, !tbaa !120
  %3 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !120
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.xpvuv, ptr %7, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !131
  %10 = inttoptr i64 %9 to ptr
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mro_register(ptr noundef %0) local_unnamed_addr #0 !prof !132 {
  %2 = ptrtoint ptr %0 to i64
  %3 = tail call ptr @Perl_newSVuv(i64 noundef %2) #7
  %4 = load ptr, ptr @PL_registered_mros, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !116
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !117
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.mro_alg, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !118
  %15 = tail call ptr @Perl_hv_common(ptr noundef %4, ptr noundef null, ptr noundef %6, i64 noundef %9, i32 noundef %12, i32 noundef 4, ptr noundef %3, i32 noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23, !prof !133

17:                                               ; preds = %1
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %3) #8
  %18 = load i16, ptr %7, align 8, !tbaa !116
  %19 = zext i16 %18 to i32
  %20 = load ptr, ptr %5, align 8, !tbaa !113
  %21 = load i16, ptr %10, align 2, !tbaa !117
  %22 = zext i16 %21 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %19, ptr noundef %20, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !106 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !135
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !135
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #7
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_mro_meta_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !136 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 64) #7
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = load ptr, ptr %0, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !126
  %8 = getelementptr ptr, ptr %4, i64 %7
  %9 = getelementptr ptr, ptr %8, i64 5
  store ptr %2, ptr %9, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 3
  store i32 1, ptr %10, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 4
  store i32 1, ptr %11, align 4, !tbaa !140
  %12 = getelementptr inbounds %struct.mro_meta, ptr %2, i64 0, i32 5
  store ptr @dfs_alg, ptr %12, align 8, !tbaa !119
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @S_mro_get_linear_isa_dfs(ptr noundef %0, i32 noundef %1) #0 !prof !141 !PGOFuncName !142 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = load ptr, ptr %0, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !126
  %9 = getelementptr ptr, ptr %5, i64 %8
  %10 = getelementptr ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13, !prof !143

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %9, i64 36
  %15 = load i32, ptr %14, align 4, !tbaa !144
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !143

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %37

20:                                               ; preds = %13
  %21 = icmp slt i32 %15, -1
  br i1 %21, label %22, label %26, !prof !145

22:                                               ; preds = %20
  %23 = getelementptr inbounds ptr, ptr %11, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %37, !prof !146

26:                                               ; preds = %20
  %27 = icmp eq i32 %15, -1
  br i1 %27, label %28, label %37, !prof !145

28:                                               ; preds = %26, %22, %17
  %29 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !147
  %31 = and i32 %30, 33554432
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !145

33:                                               ; preds = %28
  %34 = load ptr, ptr %11, align 8, !tbaa !120
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !148

36:                                               ; preds = %2, %28, %33
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #7
  br label %37

37:                                               ; preds = %17, %22, %26, %36, %33
  %38 = phi ptr [ null, %36 ], [ %34, %33 ], [ %11, %26 ], [ %18, %17 ], [ %24, %22 ]
  %39 = icmp ugt i32 %1, 100
  br i1 %39, label %40, label %41, !prof !143

40:                                               ; preds = %37
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, ptr noundef %38) #7
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr %4, align 8, !tbaa !131
  %43 = load ptr, ptr %0, align 8, !tbaa !124
  %44 = getelementptr inbounds %struct.xpvhv, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !126
  %46 = getelementptr ptr, ptr %42, i64 %45
  %47 = getelementptr ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8, !tbaa !137
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52, !prof !149

50:                                               ; preds = %41
  %51 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #8
  br label %52

52:                                               ; preds = %41, %50
  %53 = phi ptr [ %51, %50 ], [ %48, %41 ]
  %54 = getelementptr inbounds %struct.mro_meta, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = icmp eq ptr %55, @dfs_alg
  br i1 %56, label %57, label %60, !prof !150

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mro_meta, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !121
  br label %62

60:                                               ; preds = %52
  %61 = tail call ptr @Perl_mro_get_private_data(ptr noundef nonnull %53, ptr noundef nonnull @dfs_alg) #8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi ptr [ %59, %57 ], [ %61, %60 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %230, !prof !151

65:                                               ; preds = %62
  %66 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %67 = tail call ptr @Perl_sv_2mortal(ptr noundef %66) #7
  %68 = tail call ptr @Perl_newSVhek(ptr noundef %38) #7
  tail call void @Perl_av_push(ptr noundef %67, ptr noundef %68) #7
  %69 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.5, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %207, label %71, !prof !152

71:                                               ; preds = %65
  %72 = load ptr, ptr %69, align 8, !tbaa !120
  %73 = icmp eq ptr %72, null
  br i1 %73, label %207, label %74, !prof !153

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !154
  %77 = and i32 %76, 49152
  %78 = icmp eq i32 %77, 32768
  br i1 %78, label %79, label %207, !prof !156

79:                                               ; preds = %74
  %80 = and i32 %76, 255
  %81 = add nsw i32 %80, -9
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %83, label %207, !prof !157

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !131
  %86 = getelementptr inbounds %struct.gp, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !158
  %88 = icmp eq ptr %87, null
  br i1 %88, label %207, label %89, !prof !148

89:                                               ; preds = %83
  %90 = load ptr, ptr %87, align 8, !tbaa !160
  %91 = getelementptr inbounds %struct.xpvav, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !162
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %207, !prof !156

94:                                               ; preds = %89
  %95 = trunc i64 %92 to i32
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %211, label %97, !prof !164

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.av, ptr %87, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !131
  %100 = add i32 %1, 1
  br label %101

101:                                              ; preds = %97, %203
  %102 = phi i32 [ %95, %97 ], [ %205, %203 ]
  %103 = phi ptr [ null, %97 ], [ %204, %203 ]
  %104 = phi ptr [ %99, %97 ], [ %109, %203 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %105 = load ptr, ptr %104, align 8, !tbaa !120
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, ptr @PL_sv_undef, ptr %105, !prof !165
  store ptr %107, ptr %3, align 8, !tbaa !120
  %108 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %107, i32 noundef 0) #7
  %109 = getelementptr inbounds ptr, ptr %104, i64 1
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %113, !prof !166

111:                                              ; preds = %101
  %112 = icmp eq ptr %103, null
  br i1 %112, label %195, label %125, !prof !167

113:                                              ; preds = %101
  %114 = tail call ptr @S_mro_get_linear_isa_dfs(ptr noundef nonnull %108, i32 noundef %100) #8
  %115 = getelementptr inbounds %struct.av, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !131
  %117 = load ptr, ptr %114, align 8, !tbaa !160
  %118 = getelementptr inbounds %struct.xpvav, ptr %117, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !162
  %120 = trunc i64 %119 to i32
  %121 = add i32 %120, 1
  %122 = icmp eq ptr %103, null
  br i1 %122, label %143, label %123, !prof !167

123:                                              ; preds = %113
  %124 = icmp eq i32 %121, 0
  br i1 %124, label %203, label %125, !prof !168

125:                                              ; preds = %111, %123
  %126 = phi i32 [ 1, %111 ], [ %121, %123 ]
  %127 = phi ptr [ %3, %111 ], [ %116, %123 ]
  br label %128

128:                                              ; preds = %125, %141
  %129 = phi i32 [ %131, %141 ], [ %126, %125 ]
  %130 = phi ptr [ %132, %141 ], [ %127, %125 ]
  %131 = add nsw i32 %129, -1
  %132 = getelementptr inbounds ptr, ptr %130, i64 1
  %133 = load ptr, ptr %130, align 8, !tbaa !120
  %134 = tail call ptr @Perl_hv_common(ptr noundef nonnull %103, ptr noundef %133, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %135 = getelementptr inbounds %struct.he, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !131
  %137 = icmp eq ptr %136, @PL_sv_undef
  br i1 %137, label %141, label %138, !prof !169

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.he, ptr %134, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !170
  store ptr @PL_sv_undef, ptr %135, align 8, !tbaa !131
  tail call void @Perl_sv_sethek(ptr noundef %136, ptr noundef %140) #7
  tail call void @Perl_av_push(ptr noundef %67, ptr noundef %136) #7
  br label %141

141:                                              ; preds = %138, %128
  %142 = icmp eq i32 %131, 0
  br i1 %142, label %203, label %128, !prof !172, !llvm.loop !173

143:                                              ; preds = %113
  %144 = getelementptr inbounds %struct.hv, ptr %108, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !131
  %146 = load ptr, ptr %108, align 8, !tbaa !124
  %147 = getelementptr inbounds %struct.xpvhv, ptr %146, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !126
  %149 = getelementptr ptr, ptr %145, i64 %148
  %150 = getelementptr ptr, ptr %149, i64 5
  %151 = load ptr, ptr %150, align 8, !tbaa !137
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %155, !prof !175

153:                                              ; preds = %143
  %154 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %108) #8
  br label %155

155:                                              ; preds = %143, %153
  %156 = phi ptr [ %154, %153 ], [ %151, %143 ]
  %157 = getelementptr inbounds %struct.mro_meta, ptr %156, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !176
  %159 = tail call ptr @Perl_newHVhv(ptr noundef %158) #7
  %160 = tail call ptr @Perl_sv_2mortal(ptr noundef %159) #7
  %161 = sext i32 %121 to i64
  tail call void @Perl_av_extend(ptr noundef %67, i64 noundef %161) #7
  %162 = load ptr, ptr %67, align 8, !tbaa !160
  %163 = getelementptr inbounds %struct.xpvav, ptr %162, i64 0, i32 2
  store i64 %161, ptr %163, align 8, !tbaa !162
  %164 = icmp eq i32 %121, 0
  br i1 %164, label %203, label %165, !prof !177

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.av, ptr %67, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !131
  br label %168

168:                                              ; preds = %165, %190
  %169 = phi i32 [ %193, %190 ], [ %120, %165 ]
  %170 = phi ptr [ %192, %190 ], [ %167, %165 ]
  %171 = phi ptr [ %172, %190 ], [ %116, %165 ]
  %172 = getelementptr inbounds ptr, ptr %171, i64 1
  %173 = load ptr, ptr %171, align 8, !tbaa !120
  %174 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !178
  %176 = and i32 %175, 268435456
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %188, label %178, !prof !179

178:                                              ; preds = %168
  %179 = load ptr, ptr %173, align 8, !tbaa !129
  %180 = getelementptr inbounds %struct.xpv, ptr %179, i64 0, i32 3
  %181 = load i64, ptr %180, align 8, !tbaa !131
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %188, !prof !180

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !131
  %186 = getelementptr inbounds i8, ptr %185, i64 -8
  %187 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %186) #7
  br label %190

188:                                              ; preds = %178, %168
  %189 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %173) #7
  br label %190

190:                                              ; preds = %188, %183
  %191 = phi ptr [ %187, %183 ], [ %189, %188 ]
  %192 = getelementptr inbounds ptr, ptr %170, i64 1
  store ptr %191, ptr %192, align 8, !tbaa !120
  %193 = add nsw i32 %169, -1
  %194 = icmp eq i32 %169, 0
  br i1 %194, label %203, label %168, !prof !181, !llvm.loop !182

195:                                              ; preds = %111
  %196 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %197 = tail call ptr @Perl_sv_2mortal(ptr noundef %196) #7
  %198 = tail call ptr @Perl_hv_common_key_len(ptr noundef %197, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %199 = tail call ptr @Perl_hv_common(ptr noundef %197, ptr noundef nonnull %107, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %200 = getelementptr inbounds %struct.he, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !170
  %202 = tail call ptr @Perl_newSVhek(ptr noundef %201) #7
  tail call void @Perl_av_push(ptr noundef %67, ptr noundef %202) #7
  br label %203

203:                                              ; preds = %190, %141, %155, %123, %195
  %204 = phi ptr [ %197, %195 ], [ %103, %123 ], [ %160, %155 ], [ %103, %141 ], [ %160, %190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %205 = add nsw i32 %102, -1
  %206 = icmp eq i32 %102, 0
  br i1 %206, label %211, label %101, !prof !183, !llvm.loop !184

207:                                              ; preds = %79, %65, %71, %74, %89, %83
  %208 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %209 = tail call ptr @Perl_sv_2mortal(ptr noundef %208) #7
  %210 = tail call ptr @Perl_hv_common_key_len(ptr noundef %209, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  br label %211

211:                                              ; preds = %203, %94, %207
  %212 = phi ptr [ %209, %207 ], [ null, %94 ], [ %204, %203 ]
  %213 = tail call ptr @Perl_hv_common(ptr noundef %212, ptr noundef %68, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %214 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !135
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 8, !tbaa !135
  %217 = getelementptr inbounds %struct.hv, ptr %212, i64 0, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !147
  %219 = and i32 %218, -134807553
  %220 = or disjoint i32 %219, 134283264
  store i32 %220, ptr %217, align 4, !tbaa !147
  %221 = getelementptr inbounds %struct.mro_meta, ptr %53, i64 0, i32 6
  store ptr %212, ptr %221, align 8, !tbaa !176
  %222 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 1
  %223 = load i32, ptr %222, align 8, !tbaa !135
  %224 = add i32 %223, 1
  store i32 %224, ptr %222, align 8, !tbaa !135
  %225 = getelementptr inbounds %struct.av, ptr %67, i64 0, i32 2
  %226 = load i32, ptr %225, align 4, !tbaa !185
  %227 = and i32 %226, -134807553
  %228 = or disjoint i32 %227, 134283264
  store i32 %228, ptr %225, align 4, !tbaa !185
  %229 = tail call ptr @Perl_mro_set_private_data(ptr noundef %53, ptr noundef nonnull @dfs_alg, ptr noundef %67) #8
  br label %230

230:                                              ; preds = %62, %211
  %231 = phi ptr [ %67, %211 ], [ %63, %62 ]
  ret ptr %231
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newHVhv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_mro_get_linear_isa(ptr noundef %0) local_unnamed_addr #0 !prof !186 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !187

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #7
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = load ptr, ptr %0, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !126
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !187

17:                                               ; preds = %7
  %18 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #8
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %7 ]
  %21 = getelementptr inbounds %struct.mro_meta, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !187

24:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #7
  %25 = load ptr, ptr %21, align 8, !tbaa !119
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %22, %19 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = tail call ptr %28(ptr noundef nonnull %0, i32 noundef 0) #7
  %30 = load ptr, ptr %21, align 8, !tbaa !119
  %31 = icmp eq ptr %30, @dfs_alg
  br i1 %31, label %120, label %32, !prof !189

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4, !tbaa !147
  %34 = and i32 %33, 33554432
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %118, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %8, align 8, !tbaa !131
  %38 = load ptr, ptr %0, align 8, !tbaa !124
  %39 = getelementptr inbounds %struct.xpvhv, ptr %38, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !126
  %41 = getelementptr ptr, ptr %37, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  %44 = icmp eq ptr %43, null
  br i1 %44, label %118, label %45

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %41, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !144
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %41, i64 36
  %51 = load i32, ptr %50, align 4, !tbaa !144
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %43, align 8, !tbaa !120
  %55 = icmp eq ptr %54, null
  br i1 %55, label %118, label %56

56:                                               ; preds = %45, %53
  %57 = phi i32 [ %51, %53 ], [ %47, %45 ]
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load ptr, ptr %43, align 8, !tbaa !120
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %72

62:                                               ; preds = %56
  %63 = icmp slt i32 %57, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = getelementptr inbounds ptr, ptr %43, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !120
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %72

68:                                               ; preds = %62
  %69 = icmp eq i32 %57, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %59, %64, %68
  %71 = load ptr, ptr %43, align 8, !tbaa !120
  br label %72

72:                                               ; preds = %49, %64, %59, %68, %70
  %73 = phi ptr [ %71, %70 ], [ %43, %68 ], [ %60, %59 ], [ %66, %64 ], [ %43, %49 ]
  %74 = tail call ptr @Perl_newSVhek(ptr noundef %73) #7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %118, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %29, align 8, !tbaa !160
  %78 = getelementptr inbounds %struct.xpvav, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !162
  %80 = icmp eq i64 %79, -1
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  %84 = load ptr, ptr %83, align 8, !tbaa !120
  %85 = tail call i32 @Perl_sv_eq_flags(ptr noundef %84, ptr noundef nonnull %74, i32 noundef 2) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load ptr, ptr %29, align 8, !tbaa !160
  %89 = getelementptr inbounds %struct.xpvav, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !162
  br label %91

91:                                               ; preds = %87, %76
  %92 = phi i64 [ %90, %87 ], [ -1, %76 ]
  %93 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !131
  %95 = getelementptr inbounds ptr, ptr %94, i64 %92
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %98 = tail call ptr @Perl_sv_2mortal(ptr noundef %97) #7
  %99 = load ptr, ptr %29, align 8, !tbaa !160
  %100 = getelementptr inbounds %struct.xpvav, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !162
  %102 = add nsw i64 %101, 1
  %103 = load ptr, ptr %98, align 8, !tbaa !160
  %104 = getelementptr inbounds %struct.xpvav, ptr %103, i64 0, i32 2
  store i64 %102, ptr %104, align 8, !tbaa !162
  tail call void @Perl_av_extend(ptr noundef nonnull %98, i64 noundef %102) #7
  %105 = getelementptr inbounds %struct.av, ptr %98, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !131
  store ptr %74, ptr %106, align 8, !tbaa !120
  %107 = icmp ult ptr %94, %96
  br i1 %107, label %108, label %120

108:                                              ; preds = %91
  %109 = load ptr, ptr %105, align 8, !tbaa !131
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %113, %110 ], [ %109, %108 ]
  %112 = phi ptr [ %114, %110 ], [ %94, %108 ]
  %113 = getelementptr inbounds ptr, ptr %111, i64 1
  %114 = getelementptr inbounds ptr, ptr %112, i64 1
  %115 = load ptr, ptr %112, align 8, !tbaa !120
  %116 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %115) #8
  store ptr %115, ptr %113, align 8, !tbaa !120
  %117 = icmp ult ptr %112, %95
  br i1 %117, label %110, label %120, !llvm.loop !190

118:                                              ; preds = %36, %32, %53, %81, %72
  %119 = phi ptr [ %74, %81 ], [ null, %72 ], [ null, %53 ], [ null, %32 ], [ null, %36 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %119) #8
  br label %120

120:                                              ; preds = %110, %91, %118, %26
  %121 = phi ptr [ %29, %26 ], [ %29, %118 ], [ %98, %91 ], [ %98, %110 ]
  %122 = getelementptr inbounds %struct.mro_meta, ptr %20, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !176
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %190, !prof !187

125:                                              ; preds = %120
  %126 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %127 = getelementptr inbounds %struct.av, ptr %121, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !131
  %129 = load ptr, ptr %121, align 8, !tbaa !160
  %130 = getelementptr inbounds %struct.xpvav, ptr %129, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !162
  %132 = getelementptr inbounds ptr, ptr %128, i64 %131
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load i32, ptr %2, align 4, !tbaa !147
  %135 = and i32 %134, 33554432
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %166, label %137

137:                                              ; preds = %125
  %138 = load ptr, ptr %8, align 8, !tbaa !131
  %139 = load ptr, ptr %0, align 8, !tbaa !124
  %140 = getelementptr inbounds %struct.xpvhv, ptr %139, i64 0, i32 3
  %141 = load i64, ptr %140, align 8, !tbaa !126
  %142 = getelementptr ptr, ptr %138, i64 %141
  %143 = getelementptr ptr, ptr %142, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !131
  %145 = icmp eq ptr %144, null
  br i1 %145, label %166, label %146

146:                                              ; preds = %137
  %147 = getelementptr i8, ptr %142, i64 36
  %148 = load i32, ptr %147, align 4, !tbaa !144
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = icmp slt i32 %148, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %150
  %153 = getelementptr inbounds ptr, ptr %144, i64 1
  br label %156

154:                                              ; preds = %150
  %155 = icmp eq i32 %148, -1
  br i1 %155, label %160, label %166

156:                                              ; preds = %146, %152
  %157 = phi ptr [ %153, %152 ], [ %144, %146 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !120
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %154, %156
  %161 = getelementptr i8, ptr %142, i64 36
  %162 = load i32, ptr %161, align 4, !tbaa !144
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %144, align 8, !tbaa !120
  br label %166

166:                                              ; preds = %137, %154, %125, %164, %160, %156
  %167 = phi ptr [ %158, %156 ], [ %165, %164 ], [ %144, %160 ], [ null, %125 ], [ %144, %154 ], [ null, %137 ]
  %168 = icmp ult ptr %128, %133
  br i1 %168, label %169, label %175

169:                                              ; preds = %166, %169
  %170 = phi ptr [ %171, %169 ], [ %128, %166 ]
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %170, align 8, !tbaa !120
  %173 = tail call ptr @Perl_hv_common(ptr noundef %126, ptr noundef %172, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %174 = icmp ult ptr %170, %132
  br i1 %174, label %169, label %175, !llvm.loop !191

175:                                              ; preds = %169, %166
  %176 = getelementptr inbounds %struct.hek, ptr %167, i64 0, i32 2
  %177 = getelementptr inbounds %struct.hek, ptr %167, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !192
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %176, i64 %179
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !131
  %183 = zext i8 %182 to i32
  %184 = load i32, ptr %167, align 4, !tbaa !194
  %185 = tail call ptr @Perl_hv_common(ptr noundef %126, ptr noundef null, ptr noundef nonnull %176, i64 noundef %179, i32 noundef %183, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef %184) #7
  %186 = tail call ptr @Perl_hv_common_key_len(ptr noundef %126, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #7
  %187 = getelementptr inbounds %struct.hv, ptr %126, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !147
  %189 = or i32 %188, 134283264
  store i32 %189, ptr %187, align 4, !tbaa !147
  store ptr %126, ptr %122, align 8, !tbaa !176
  br label %190

190:                                              ; preds = %175, %120
  ret ptr %121
}

; Function Attrs: optsize
declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #3 !prof !106 !PGOFuncName !195 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !135
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !135
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !196 !PGOFuncName !197 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !198

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !135
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !199

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !135
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #7
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mro_isa_changed_in(ptr noundef %0) local_unnamed_addr #0 !prof !200 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7, !prof !201

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = load ptr, ptr %0, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !126
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !131
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17, !prof !201

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !144
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !201

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !120
  br label %31

23:                                               ; preds = %17
  %24 = icmp slt i32 %19, -1
  br i1 %24, label %25, label %28, !prof !201

25:                                               ; preds = %23
  %26 = getelementptr inbounds ptr, ptr %15, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !120
  br label %31

28:                                               ; preds = %23
  %29 = icmp eq i32 %19, -1
  %30 = select i1 %29, ptr null, ptr %15, !prof !201
  br label %31

31:                                               ; preds = %28, %21, %25
  %32 = phi ptr [ %22, %21 ], [ %27, %25 ], [ %30, %28 ]
  %33 = getelementptr i8, ptr %13, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !144
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %48, label %36, !prof !201

36:                                               ; preds = %31
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %42, label %38, !prof !201

38:                                               ; preds = %36
  %39 = icmp slt i32 %34, -1
  br i1 %39, label %40, label %45, !prof !201

40:                                               ; preds = %38
  %41 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %42

42:                                               ; preds = %36, %40
  %43 = phi ptr [ %41, %40 ], [ %15, %36 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !120
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %15, %38 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.hek, ptr %46, i64 0, i32 2
  br label %48

48:                                               ; preds = %31, %45
  %49 = phi ptr [ %47, %45 ], [ null, %31 ]
  %50 = getelementptr i8, ptr %13, i64 36
  %51 = load i32, ptr %50, align 4, !tbaa !144
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %66, label %53, !prof !201

53:                                               ; preds = %48
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %59, label %55, !prof !201

55:                                               ; preds = %53
  %56 = icmp slt i32 %51, -1
  br i1 %56, label %57, label %62, !prof !201

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi ptr [ %58, %57 ], [ %15, %53 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !120
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %15, %55 ], [ %61, %59 ]
  %64 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !192
  br label %66

66:                                               ; preds = %48, %62
  %67 = phi i32 [ %65, %62 ], [ 0, %48 ]
  %68 = sext i32 %67 to i64
  %69 = icmp eq ptr %49, null
  br i1 %69, label %70, label %79, !prof !148

70:                                               ; preds = %7, %1, %66
  %71 = phi i64 [ %68, %66 ], [ 0, %1 ], [ 0, %7 ]
  %72 = phi i32 [ %67, %66 ], [ 0, %1 ], [ 0, %7 ]
  %73 = phi ptr [ %32, %66 ], [ null, %1 ], [ null, %7 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8) #7
  %74 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !131
  %76 = load ptr, ptr %0, align 8, !tbaa !124
  %77 = getelementptr inbounds %struct.xpvhv, ptr %76, i64 0, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !126
  br label %79

79:                                               ; preds = %70, %66
  %80 = phi i64 [ %78, %70 ], [ %12, %66 ]
  %81 = phi ptr [ %75, %70 ], [ %9, %66 ]
  %82 = phi i64 [ %71, %70 ], [ %68, %66 ]
  %83 = phi i32 [ %72, %70 ], [ %67, %66 ]
  %84 = phi ptr [ %73, %70 ], [ %32, %66 ]
  %85 = phi ptr [ null, %70 ], [ %49, %66 ]
  %86 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %87 = getelementptr ptr, ptr %81, i64 %80
  %88 = getelementptr ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8, !tbaa !137
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93, !prof !202

91:                                               ; preds = %79
  %92 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #8
  br label %93

93:                                               ; preds = %79, %91
  %94 = phi ptr [ %92, %91 ], [ %89, %79 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !107
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97, !prof !203

97:                                               ; preds = %93
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %95) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, i8 0, i64 16, i1 false)
  br label %103

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.mro_meta, ptr %94, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !121
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !204

102:                                              ; preds = %98
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %100) #8
  store ptr null, ptr %99, align 8, !tbaa !121
  br label %103

103:                                              ; preds = %98, %102, %97
  %104 = getelementptr inbounds %struct.mro_meta, ptr %94, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !176
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107, !prof !204

107:                                              ; preds = %103
  %108 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %105) #7
  store ptr null, ptr %104, align 8, !tbaa !176
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi ptr [ %108, %107 ], [ null, %103 ]
  %111 = getelementptr inbounds %struct.mro_meta, ptr %94, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !140
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4, !tbaa !140
  %114 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %115 = getelementptr inbounds %struct.hek, ptr %84, i64 0, i32 2
  %116 = getelementptr inbounds %struct.hek, ptr %84, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !192
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %115, i64 %118
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !131
  %122 = and i8 %121, 1
  %123 = zext nneg i8 %122 to i32
  %124 = load i32, ptr %84, align 4, !tbaa !194
  %125 = tail call ptr @Perl_hv_common(ptr noundef %114, ptr noundef null, ptr noundef nonnull %115, i64 noundef %118, i32 noundef %123, i32 noundef 32, ptr noundef null, i32 noundef %124) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127, !prof !205

127:                                              ; preds = %109
  %128 = load ptr, ptr %125, align 8, !tbaa !120
  br label %129

129:                                              ; preds = %109, %127
  %130 = phi ptr [ %128, %127 ], [ null, %109 ]
  %131 = icmp eq i32 %83, 9
  br i1 %131, label %132, label %135, !prof !201

132:                                              ; preds = %129
  %133 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.6) #10
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132, %129
  %136 = icmp eq ptr %130, null
  br i1 %136, label %143, label %137, !prof !205

137:                                              ; preds = %135
  %138 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %130, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140, !prof !206

140:                                              ; preds = %137, %132
  %141 = load i32, ptr @PL_sub_generation, align 4, !tbaa !207
  %142 = add i32 %141, 1
  store i32 %142, ptr @PL_sub_generation, align 4, !tbaa !207
  br label %147

143:                                              ; preds = %137, %135
  %144 = getelementptr inbounds %struct.mro_meta, ptr %94, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !139
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 8, !tbaa !139
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ true, %140 ], [ false, %143 ]
  %149 = getelementptr inbounds %struct.mro_meta, ptr %94, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !208
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152, !prof !203

152:                                              ; preds = %147
  tail call void @Perl_hv_clear(ptr noundef nonnull %150) #7
  br label %153

153:                                              ; preds = %152, %147
  %154 = load i32, ptr %3, align 4, !tbaa !147
  %155 = or i32 %154, 268435456
  store i32 %155, ptr %3, align 4, !tbaa !147
  %156 = load ptr, ptr %86, align 8, !tbaa !131
  %157 = load ptr, ptr %0, align 8, !tbaa !124
  %158 = getelementptr inbounds %struct.xpvhv, ptr %157, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !126
  %160 = getelementptr ptr, ptr %156, i64 %159
  %161 = getelementptr i8, ptr %160, i64 60
  %162 = load i32, ptr %161, align 4, !tbaa !209
  %163 = and i32 %162, -3
  store i32 %163, ptr %161, align 4, !tbaa !209
  %164 = and i32 %154, 1048576
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167, !prof !203

166:                                              ; preds = %153
  store ptr null, ptr %157, align 8, !tbaa !210
  br label %167

167:                                              ; preds = %166, %153
  %168 = icmp eq ptr %130, null
  br i1 %168, label %358, label %169, !prof !205

169:                                              ; preds = %167
  %170 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %130) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172, !prof !212

172:                                              ; preds = %169
  %173 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %174 = tail call ptr @Perl_sv_2mortal(ptr noundef %173) #7
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi ptr [ %174, %172 ], [ null, %169 ]
  %177 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %130, i32 noundef 0) #7
  %178 = icmp eq ptr %177, null
  br i1 %178, label %233, label %179, !prof !213

179:                                              ; preds = %175, %230
  %180 = phi ptr [ %231, %230 ], [ %177, %175 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %181 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %180) #7
  %182 = call ptr @Perl_gv_stashsv(ptr noundef %181, i32 noundef 0) #7
  store ptr %182, ptr %2, align 8, !tbaa !120
  %183 = icmp eq ptr %182, null
  br i1 %183, label %230, label %184, !prof !212, !llvm.loop !214

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.hv, ptr %182, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !131
  %187 = load ptr, ptr %182, align 8, !tbaa !124
  %188 = getelementptr inbounds %struct.xpvhv, ptr %187, i64 0, i32 3
  %189 = load i64, ptr %188, align 8, !tbaa !126
  %190 = getelementptr ptr, ptr %186, i64 %189
  %191 = getelementptr ptr, ptr %190, i64 5
  %192 = load ptr, ptr %191, align 8, !tbaa !137
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %196, !prof !212

194:                                              ; preds = %184
  %195 = call ptr @Perl_mro_meta_init(ptr noundef nonnull %182) #8
  br label %196

196:                                              ; preds = %184, %194
  %197 = phi ptr [ %195, %194 ], [ %192, %184 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !107
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200, !prof !206

200:                                              ; preds = %196
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %198) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %197, i8 0, i64 16, i1 false)
  br label %206

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.mro_meta, ptr %197, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !121
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205, !prof !212

205:                                              ; preds = %201
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %203) #8
  store ptr null, ptr %202, align 8, !tbaa !121
  br label %206

206:                                              ; preds = %201, %205, %200
  br i1 %148, label %211, label %207, !prof !212

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.mro_meta, ptr %197, i64 0, i32 3
  %209 = load i32, ptr %208, align 8, !tbaa !139
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 8, !tbaa !139
  br label %211

211:                                              ; preds = %207, %206
  %212 = getelementptr inbounds %struct.mro_meta, ptr %197, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !208
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215, !prof !206

215:                                              ; preds = %211
  call void @Perl_hv_clear(ptr noundef nonnull %213) #7
  br label %216

216:                                              ; preds = %215, %211
  %217 = load ptr, ptr %2, align 8, !tbaa !120
  %218 = getelementptr inbounds %struct.hv, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !147
  %220 = and i32 %219, 1048576
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224, !prof !206

222:                                              ; preds = %216
  %223 = load ptr, ptr %217, align 8, !tbaa !124
  store ptr null, ptr %223, align 8, !tbaa !210
  br label %224

224:                                              ; preds = %222, %216
  %225 = getelementptr inbounds %struct.mro_meta, ptr %197, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !176
  %227 = icmp eq ptr %226, null
  %228 = select i1 %227, ptr @PL_sv_undef, ptr %226, !prof !212
  %229 = call ptr @Perl_hv_common_key_len(ptr noundef %176, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %228, i32 noundef 0) #7
  store ptr null, ptr %225, align 8, !tbaa !176
  br label %230

230:                                              ; preds = %179, %224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %231 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %130, i32 noundef 0) #7
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %179, !prof !215

233:                                              ; preds = %230, %175
  %234 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %130) #7
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 8, !tbaa !135
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 8, !tbaa !135
  %238 = icmp eq ptr %176, null
  br i1 %238, label %358, label %239, !prof !212

239:                                              ; preds = %233
  %240 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %176) #7
  %241 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %176, i32 noundef 0) #7
  %242 = icmp eq ptr %241, null
  br i1 %242, label %358, label %243, !prof !213

243:                                              ; preds = %239, %355
  %244 = phi ptr [ %356, %355 ], [ %241, %239 ]
  %245 = getelementptr inbounds %struct.he, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !170
  %247 = getelementptr inbounds %struct.hek, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 4, !tbaa !120
  %249 = getelementptr inbounds %struct.he, ptr %244, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !131
  %251 = call ptr @Perl_mro_get_linear_isa(ptr noundef %248) #8
  %252 = getelementptr inbounds %struct.av, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !131
  %254 = load ptr, ptr %251, align 8, !tbaa !160
  %255 = getelementptr inbounds %struct.xpvav, ptr %254, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !162
  %257 = trunc i64 %256 to i32
  %258 = getelementptr inbounds %struct.hv, ptr %248, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !147
  %260 = and i32 %259, 33554432
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %292, label %262, !prof !212

262:                                              ; preds = %243
  %263 = getelementptr inbounds %struct.hv, ptr %248, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !131
  %265 = load ptr, ptr %248, align 8, !tbaa !124
  %266 = getelementptr inbounds %struct.xpvhv, ptr %265, i64 0, i32 3
  %267 = load i64, ptr %266, align 8, !tbaa !126
  %268 = getelementptr ptr, ptr %264, i64 %267
  %269 = getelementptr ptr, ptr %268, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !131
  %271 = icmp eq ptr %270, null
  br i1 %271, label %292, label %272, !prof !212

272:                                              ; preds = %262
  %273 = getelementptr i8, ptr %268, i64 36
  %274 = load i32, ptr %273, align 4, !tbaa !144
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %282, label %276, !prof !212

276:                                              ; preds = %272
  %277 = icmp slt i32 %274, -1
  br i1 %277, label %278, label %280, !prof !212

278:                                              ; preds = %276
  %279 = getelementptr inbounds ptr, ptr %270, i64 1
  br label %282

280:                                              ; preds = %276
  %281 = icmp eq i32 %274, -1
  br i1 %281, label %286, label %292, !prof !212

282:                                              ; preds = %272, %278
  %283 = phi ptr [ %279, %278 ], [ %270, %272 ]
  %284 = load ptr, ptr %283, align 8, !tbaa !120
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %292, !prof !148

286:                                              ; preds = %280, %282
  %287 = getelementptr i8, ptr %268, i64 36
  %288 = load i32, ptr %287, align 4, !tbaa !144
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = load ptr, ptr %270, align 8, !tbaa !120
  br label %292

292:                                              ; preds = %262, %280, %243, %290, %286, %282
  %293 = phi ptr [ %284, %282 ], [ %291, %290 ], [ %270, %286 ], [ null, %243 ], [ %270, %280 ], [ null, %262 ]
  %294 = icmp eq i32 %257, 0
  br i1 %294, label %324, label %295, !prof !213

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.hek, ptr %293, i64 0, i32 2
  %297 = getelementptr inbounds %struct.hek, ptr %293, i64 0, i32 1
  %298 = getelementptr %struct.hek, ptr %293, i64 0, i32 2, i64 1
  br label %299

299:                                              ; preds = %295, %314
  %300 = phi i32 [ %257, %295 ], [ %303, %314 ]
  %301 = phi ptr [ %253, %295 ], [ %302, %314 ]
  %302 = getelementptr inbounds ptr, ptr %301, i64 1
  %303 = add nsw i32 %300, -1
  %304 = load ptr, ptr %302, align 8, !tbaa !120
  %305 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %306 = call ptr @Perl_hv_common(ptr noundef %305, ptr noundef %304, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %307 = getelementptr inbounds %struct.he, ptr %306, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !131
  %309 = getelementptr inbounds %struct.sv, ptr %308, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !178
  %311 = and i32 %310, 252
  %312 = icmp ugt i32 %311, 11
  br i1 %312, label %314, label %313, !prof !216

313:                                              ; preds = %299
  call void @Perl_sv_upgrade(ptr noundef nonnull %308, i32 noundef 12) #7
  br label %314

314:                                              ; preds = %313, %299
  %315 = load i32, ptr %297, align 4, !tbaa !192
  %316 = sext i32 %315 to i64
  %317 = getelementptr i8, ptr %298, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !131
  %319 = and i8 %318, 1
  %320 = zext nneg i8 %319 to i32
  %321 = load i32, ptr %293, align 4, !tbaa !194
  %322 = call ptr @Perl_hv_common(ptr noundef nonnull %308, ptr noundef null, ptr noundef nonnull %296, i64 noundef %316, i32 noundef %320, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %321) #7
  %323 = icmp eq i32 %303, 0
  br i1 %323, label %324, label %299, !prof !217, !llvm.loop !218

324:                                              ; preds = %314, %292
  %325 = icmp eq ptr %250, @PL_sv_undef
  br i1 %325, label %355, label %326, !prof !212

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.hek, ptr %293, i64 0, i32 2
  %328 = getelementptr inbounds %struct.hek, ptr %293, i64 0, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !192
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.hv, ptr %248, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !131
  %333 = load ptr, ptr %248, align 8, !tbaa !124
  %334 = getelementptr inbounds %struct.xpvhv, ptr %333, i64 0, i32 3
  %335 = load i64, ptr %334, align 8, !tbaa !126
  %336 = getelementptr ptr, ptr %332, i64 %335
  %337 = getelementptr ptr, ptr %336, i64 5
  %338 = load ptr, ptr %337, align 8, !tbaa !137
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %344, !prof !212

340:                                              ; preds = %326
  %341 = call ptr @Perl_mro_meta_init(ptr noundef nonnull %248) #8
  %342 = load i32, ptr %328, align 4, !tbaa !192
  %343 = sext i32 %342 to i64
  br label %344

344:                                              ; preds = %326, %340
  %345 = phi i64 [ %330, %326 ], [ %343, %340 ]
  %346 = phi ptr [ %338, %326 ], [ %341, %340 ]
  %347 = getelementptr inbounds %struct.mro_meta, ptr %346, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !176
  %349 = load i32, ptr %293, align 4, !tbaa !194
  %350 = getelementptr inbounds i8, ptr %327, i64 %345
  %351 = getelementptr inbounds i8, ptr %350, i64 1
  %352 = load i8, ptr %351, align 1, !tbaa !131
  %353 = and i8 %352, 1
  %354 = zext nneg i8 %353 to i32
  call fastcc void @S_mro_clean_isarev(ptr noundef %250, ptr noundef nonnull %327, i64 noundef %330, ptr noundef %348, i32 noundef %349, i32 noundef %354) #8
  br label %355

355:                                              ; preds = %344, %324
  %356 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %176, i32 noundef 0) #7
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %243, !prof !215, !llvm.loop !219

358:                                              ; preds = %355, %239, %233, %167
  %359 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %0) #8
  %360 = load ptr, ptr %359, align 8, !tbaa !160
  %361 = getelementptr inbounds %struct.xpvav, ptr %360, i64 0, i32 2
  %362 = load i64, ptr %361, align 8, !tbaa !162
  %363 = trunc i64 %362 to i32
  %364 = getelementptr %struct.hek, ptr %84, i64 0, i32 2, i64 1
  %365 = icmp eq i32 %363, 0
  br i1 %365, label %394, label %366, !prof !220

366:                                              ; preds = %358
  %367 = getelementptr inbounds %struct.av, ptr %359, i64 0, i32 3
  %368 = load ptr, ptr %367, align 8, !tbaa !131
  br label %369

369:                                              ; preds = %366, %384
  %370 = phi i32 [ %373, %384 ], [ %363, %366 ]
  %371 = phi ptr [ %372, %384 ], [ %368, %366 ]
  %372 = getelementptr inbounds ptr, ptr %371, i64 1
  %373 = add nsw i32 %370, -1
  %374 = load ptr, ptr %372, align 8, !tbaa !120
  %375 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %376 = call ptr @Perl_hv_common(ptr noundef %375, ptr noundef %374, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #7
  %377 = getelementptr inbounds %struct.he, ptr %376, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !131
  %379 = getelementptr inbounds %struct.sv, ptr %378, i64 0, i32 2
  %380 = load i32, ptr %379, align 4, !tbaa !178
  %381 = and i32 %380, 252
  %382 = icmp ugt i32 %381, 11
  br i1 %382, label %384, label %383, !prof !221

383:                                              ; preds = %369
  call void @Perl_sv_upgrade(ptr noundef nonnull %378, i32 noundef 12) #7
  br label %384

384:                                              ; preds = %383, %369
  %385 = load i32, ptr %116, align 4, !tbaa !192
  %386 = sext i32 %385 to i64
  %387 = getelementptr i8, ptr %364, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !131
  %389 = and i8 %388, 1
  %390 = zext nneg i8 %389 to i32
  %391 = load i32, ptr %84, align 4, !tbaa !194
  %392 = call ptr @Perl_hv_common(ptr noundef nonnull %378, ptr noundef null, ptr noundef nonnull %115, i64 noundef %386, i32 noundef %390, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef %391) #7
  %393 = icmp eq i32 %373, 0
  br i1 %393, label %394, label %369, !prof !222, !llvm.loop !223

394:                                              ; preds = %384, %358
  %395 = icmp eq ptr %110, null
  br i1 %395, label %410, label %396, !prof !204

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.hv, ptr %110, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !131
  %399 = icmp eq ptr %398, null
  br i1 %399, label %410, label %400, !prof !224

400:                                              ; preds = %396
  %401 = load ptr, ptr %104, align 8, !tbaa !176
  %402 = load i32, ptr %84, align 4, !tbaa !194
  %403 = load i32, ptr %116, align 4, !tbaa !192
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %115, i64 %404
  %406 = getelementptr inbounds i8, ptr %405, i64 1
  %407 = load i8, ptr %406, align 1, !tbaa !131
  %408 = and i8 %407, 1
  %409 = zext nneg i8 %408 to i32
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %110, ptr noundef %85, i64 noundef %82, ptr noundef %401, i32 noundef %402, i32 noundef %409) #8
  br label %410

410:                                              ; preds = %400, %396, %394
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_mro_clean_isarev(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !196 !PGOFuncName !225 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11, !prof !199

11:                                               ; preds = %6
  %12 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %95, label %14, !prof !199

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %95, label %17, !prof !226

17:                                               ; preds = %14
  %18 = icmp eq ptr %3, null
  br label %19

19:                                               ; preds = %17, %92
  %20 = phi ptr [ %15, %17 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %21 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %20, ptr noundef nonnull %7) #7
  br i1 %18, label %39, label %22, !prof !153

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !170
  %25 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 2
  %26 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !192
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !131
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = load i32, ptr %7, align 4
  %35 = sub nsw i32 0, %34
  %36 = select i1 %33, i32 %34, i32 %35, !prof !156
  %37 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %3, ptr noundef %21, i32 noundef %36, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %92, !prof !156, !llvm.loop !227

39:                                               ; preds = %22, %19
  %40 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %41 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !170
  %43 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 2
  %44 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !192
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !131
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  %52 = load i32, ptr %7, align 4
  %53 = sub nsw i32 0, %52
  %54 = select i1 %51, i32 %52, i32 %53
  %55 = call ptr @Perl_hv_common_key_len(ptr noundef %40, ptr noundef %21, i32 noundef %54, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %92, label %57

57:                                               ; preds = %39
  %58 = load ptr, ptr %55, align 8, !tbaa !120
  %59 = call ptr @Perl_hv_common(ptr noundef %58, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %5, i32 noundef 68, ptr noundef null, i32 noundef %4) #7
  %60 = getelementptr inbounds %struct.hv, ptr %58, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !131
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %58, align 8, !tbaa !124
  %65 = getelementptr inbounds %struct.xpvhv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !228
  %67 = getelementptr inbounds %struct.xpvmg, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !131
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
  %77 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %78 = load ptr, ptr %41, align 8, !tbaa !170
  %79 = getelementptr inbounds %struct.hek, ptr %78, i64 0, i32 2
  %80 = getelementptr inbounds %struct.hek, ptr %78, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !192
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !131
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = load i32, ptr %7, align 4
  %89 = sub nsw i32 0, %88
  %90 = select i1 %87, i32 %88, i32 %89
  %91 = call ptr @Perl_hv_common_key_len(ptr noundef %77, ptr noundef %21, i32 noundef %90, i32 noundef 68, ptr noundef null, i32 noundef 0) #7
  br label %92

92:                                               ; preds = %39, %76, %72, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %93 = call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %19, !prof !229

95:                                               ; preds = %92, %14, %11, %6
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_hv_iterkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mro_package_moved(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !106 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !230
  %9 = getelementptr inbounds %struct.xpvgv, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = icmp eq ptr %10, null
  br i1 %11, label %234, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !147
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %234, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hv, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !131
  %20 = load ptr, ptr %10, align 8, !tbaa !124
  %21 = getelementptr inbounds %struct.xpvhv, ptr %20, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !126
  %23 = getelementptr ptr, ptr %19, i64 %22
  %24 = getelementptr ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %234, label %27

27:                                               ; preds = %17
  %28 = getelementptr i8, ptr %23, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !144
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %234, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.xpvgv, ptr %8, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2
  %35 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !192
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !131
  %41 = and i8 %40, 1
  %42 = zext nneg i8 %41 to i32
  %43 = load i32, ptr %33, align 4, !tbaa !194
  %44 = tail call ptr @Perl_hv_common(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %34, i64 noundef %37, i32 noundef %42, i32 noundef 32, ptr noundef null, i32 noundef %43) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %234, label %46

46:                                               ; preds = %31
  %47 = load ptr, ptr %44, align 8, !tbaa !120
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %49, label %234

49:                                               ; preds = %46, %4
  %50 = load ptr, ptr %2, align 8, !tbaa !230
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !131
  %53 = getelementptr inbounds %struct.hv, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !131
  %55 = load ptr, ptr %52, align 8, !tbaa !124
  %56 = getelementptr inbounds %struct.xpvhv, ptr %55, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !126
  %58 = getelementptr ptr, ptr %54, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  %60 = getelementptr i8, ptr %58, i64 36
  %61 = load i32, ptr %60, align 4, !tbaa !144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %49
  %64 = load ptr, ptr %59, align 8, !tbaa !131
  %65 = ashr i32 %61, 31
  %66 = xor i32 %65, %61
  %67 = lshr i32 %61, 31
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %64, i64 %68
  %70 = icmp eq i32 %66, 1
  br i1 %70, label %71, label %121

71:                                               ; preds = %49, %63
  %72 = phi ptr [ %69, %63 ], [ %59, %49 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !120
  %74 = getelementptr inbounds %struct.hek, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !192
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hek, ptr %73, i64 0, i32 2
  %79 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  %84 = getelementptr inbounds %struct.hek, ptr %83, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !192
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 524288) #7
  br label %102

89:                                               ; preds = %81
  %90 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.11, i64 noundef 0, i32 noundef 524288) #7
  br label %102

91:                                               ; preds = %77, %71
  %92 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %73) #7
  %93 = tail call ptr @Perl_sv_2mortal(ptr noundef %92) #7
  %94 = load ptr, ptr %2, align 8, !tbaa !230
  %95 = getelementptr inbounds %struct.xpvgv, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !131
  %97 = getelementptr inbounds %struct.hek, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !192
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  tail call void @Perl_sv_catpvn_flags(ptr noundef %93, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %102

101:                                              ; preds = %91
  tail call void @Perl_sv_catpvn_flags(ptr noundef %93, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  br label %102

102:                                              ; preds = %87, %89, %100, %101
  %103 = phi ptr [ %93, %100 ], [ %93, %101 ], [ %88, %87 ], [ %90, %89 ]
  %104 = load ptr, ptr %2, align 8, !tbaa !230
  %105 = getelementptr inbounds %struct.xpvgv, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !131
  %107 = getelementptr inbounds %struct.hek, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !192
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %180, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.hek, ptr %106, i64 0, i32 2
  %112 = add nsw i32 %108, -2
  %113 = sext i32 %112 to i64
  %114 = sext i32 %108 to i64
  %115 = getelementptr inbounds i8, ptr %111, i64 %114
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !131
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %103, ptr noundef nonnull %111, i64 noundef %113, i32 noundef %120) #7
  br label %180

121:                                              ; preds = %63
  %122 = tail call ptr @Perl_newSV_type(i32 noundef 11) #7
  %123 = tail call ptr @Perl_sv_2mortal(ptr noundef %122) #7
  %124 = icmp eq i32 %66, 0
  br i1 %124, label %180, label %125

125:                                              ; preds = %121, %178
  %126 = phi i32 [ %128, %178 ], [ %66, %121 ]
  %127 = phi ptr [ %160, %178 ], [ %69, %121 ]
  %128 = add nsw i32 %126, -1
  %129 = load ptr, ptr %127, align 8, !tbaa !120
  %130 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !192
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 2
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(5) @.str.9, i64 noundef 4) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load ptr, ptr %2, align 8, !tbaa !230
  %139 = getelementptr inbounds %struct.xpvgv, ptr %138, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !131
  %141 = getelementptr inbounds %struct.hek, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !192
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.10, i64 noundef 1) #7
  br label %158

146:                                              ; preds = %137
  %147 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.11, i64 noundef 0) #7
  br label %158

148:                                              ; preds = %133, %125
  %149 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %129) #7
  %150 = load ptr, ptr %2, align 8, !tbaa !230
  %151 = getelementptr inbounds %struct.xpvgv, ptr %150, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !131
  %153 = getelementptr inbounds %struct.hek, ptr %152, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !192
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  tail call void @Perl_sv_catpvn_flags(ptr noundef %149, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %158

157:                                              ; preds = %148
  tail call void @Perl_sv_catpvn_flags(ptr noundef %149, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  br label %158

158:                                              ; preds = %144, %146, %156, %157
  %159 = phi ptr [ %149, %156 ], [ %149, %157 ], [ %145, %144 ], [ %147, %146 ]
  %160 = getelementptr inbounds ptr, ptr %127, i64 1
  %161 = load ptr, ptr %2, align 8, !tbaa !230
  %162 = getelementptr inbounds %struct.xpvgv, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !131
  %164 = getelementptr inbounds %struct.hek, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !192
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %178, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.hek, ptr %163, i64 0, i32 2
  %169 = add nsw i32 %165, -2
  %170 = sext i32 %169 to i64
  %171 = sext i32 %165 to i64
  %172 = getelementptr inbounds i8, ptr %168, i64 %171
  %173 = getelementptr inbounds i8, ptr %172, i64 1
  %174 = load i8, ptr %173, align 1, !tbaa !131
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %159, ptr noundef nonnull %168, i64 noundef %170, i32 noundef %177) #7
  br label %178

178:                                              ; preds = %167, %158
  tail call void @Perl_av_push(ptr noundef %123, ptr noundef %159) #7
  %179 = icmp eq i32 %128, 0
  br i1 %179, label %180, label %125, !llvm.loop !231

180:                                              ; preds = %178, %121, %102, %110
  %181 = phi ptr [ %103, %110 ], [ %103, %102 ], [ %123, %121 ], [ %123, %178 ]
  %182 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %183 = tail call ptr @Perl_sv_2mortal(ptr noundef %182) #7
  %184 = tail call ptr @Perl_newSV_type(i32 noundef 12) #7
  %185 = tail call ptr @Perl_sv_2mortal(ptr noundef %184) #7
  tail call fastcc void @S_mro_gather_and_rename(ptr noundef %183, ptr noundef %185, ptr noundef %0, ptr noundef %1, ptr noundef %181) #8
  %186 = tail call i32 @Perl_hv_iterinit(ptr noundef %183) #7
  %187 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %183, i32 noundef 0) #7
  %188 = icmp eq ptr %187, null
  br i1 %188, label %234, label %189

189:                                              ; preds = %180, %231
  %190 = phi ptr [ %232, %231 ], [ %187, %180 ]
  %191 = getelementptr inbounds %struct.he, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !170
  %193 = getelementptr inbounds %struct.hek, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 4, !tbaa !120
  %195 = getelementptr inbounds %struct.hv, ptr %194, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !147
  %197 = and i32 %196, 33554432
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %231, label %199

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.hv, ptr %194, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !131
  %202 = load ptr, ptr %194, align 8, !tbaa !124
  %203 = getelementptr inbounds %struct.xpvhv, ptr %202, i64 0, i32 3
  %204 = load i64, ptr %203, align 8, !tbaa !126
  %205 = getelementptr ptr, ptr %201, i64 %204
  %206 = getelementptr ptr, ptr %205, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !131
  %208 = icmp eq ptr %207, null
  br i1 %208, label %231, label %209

209:                                              ; preds = %199
  %210 = getelementptr i8, ptr %205, i64 36
  %211 = load i32, ptr %210, align 4, !tbaa !144
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %231, label %213

213:                                              ; preds = %209
  %214 = getelementptr ptr, ptr %205, i64 5
  %215 = load ptr, ptr %214, align 8, !tbaa !137
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %194) #8
  br label %219

219:                                              ; preds = %213, %217
  %220 = phi ptr [ %218, %217 ], [ %215, %213 ]
  %221 = getelementptr inbounds %struct.mro_meta, ptr %220, i64 0, i32 6
  %222 = load ptr, ptr %221, align 8, !tbaa !176
  %223 = getelementptr inbounds %struct.he, ptr %190, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !131
  %225 = icmp eq ptr %222, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %219
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %222) #8
  %227 = load ptr, ptr %223, align 8, !tbaa !131
  %228 = icmp eq ptr %227, @PL_sv_yes
  %229 = select i1 %228, ptr null, ptr %227
  store ptr %229, ptr %221, align 8, !tbaa !176
  store ptr null, ptr %223, align 8, !tbaa !131
  br label %230

230:                                              ; preds = %226, %219
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %194) #8
  br label %231

231:                                              ; preds = %189, %199, %209, %230
  %232 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %183, i32 noundef 0) #7
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %189, !llvm.loop !232

234:                                              ; preds = %231, %180, %12, %17, %27, %46, %31, %7
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !106 !PGOFuncName !233 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %2, ptr %6, align 8, !tbaa !120
  store ptr %3, ptr %7, align 8, !tbaa !120
  store ptr %4, ptr %8, align 8, !tbaa !120
  %14 = icmp eq ptr %2, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = load ptr, ptr %2, align 8, !tbaa !124
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !126
  %26 = getelementptr ptr, ptr %22, i64 %25
  %27 = getelementptr ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr i8, ptr %26, i64 36
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = icmp ne i32 %32, -1
  br label %34

34:                                               ; preds = %30, %20, %15, %5
  %35 = phi i1 [ false, %5 ], [ false, %20 ], [ false, %15 ], [ %33, %30 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %222, label %37

37:                                               ; preds = %34
  %38 = call ptr @Perl_hv_common(ptr noundef %1, ptr noundef null, ptr noundef nonnull %7, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7
  %39 = getelementptr inbounds %struct.he, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !131
  %41 = icmp eq ptr %40, @PL_sv_undef
  %42 = icmp eq ptr %40, @PL_sv_yes
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store ptr null, ptr %7, align 8, !tbaa !120
  br label %222

45:                                               ; preds = %37
  %46 = icmp eq ptr %40, @PL_sv_no
  %47 = select i1 %46, ptr @PL_sv_yes, ptr @PL_sv_undef
  store ptr %47, ptr %39, align 8, !tbaa !131
  %48 = load ptr, ptr %7, align 8, !tbaa !120
  %49 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  %51 = load ptr, ptr %48, align 8, !tbaa !124
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !126
  %54 = getelementptr ptr, ptr %50, i64 %53
  %55 = getelementptr ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = call ptr @Perl_mro_meta_init(ptr noundef nonnull %48) #8
  br label %60

60:                                               ; preds = %45, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %45 ]
  %62 = getelementptr inbounds %struct.mro_meta, ptr %61, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !176
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !135
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !135
  br label %69

69:                                               ; preds = %60, %65
  %70 = phi ptr [ %63, %65 ], [ @PL_sv_yes, %60 ]
  %71 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %70, i32 noundef 0) #7
  %72 = load ptr, ptr %61, align 8, !tbaa !107
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %72) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %80

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.mro_meta, ptr %61, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !121
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %77) #8
  store ptr null, ptr %76, align 8, !tbaa !121
  br label %80

80:                                               ; preds = %75, %79, %74
  %81 = load ptr, ptr %7, align 8, !tbaa !120
  %82 = getelementptr inbounds %struct.hv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !147
  %84 = and i32 %83, 33554432
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %222, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.hv, ptr %81, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !131
  %89 = load ptr, ptr %81, align 8, !tbaa !124
  %90 = getelementptr inbounds %struct.xpvhv, ptr %89, i64 0, i32 3
  %91 = load i64, ptr %90, align 8, !tbaa !126
  %92 = getelementptr ptr, ptr %88, i64 %91
  %93 = getelementptr ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !131
  %95 = icmp eq ptr %94, null
  br i1 %95, label %222, label %96

96:                                               ; preds = %86
  %97 = getelementptr i8, ptr %92, i64 36
  %98 = load i32, ptr %97, align 4, !tbaa !144
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %222, label %100

100:                                              ; preds = %96
  %101 = icmp sgt i32 %98, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = icmp slt i32 %98, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = getelementptr inbounds ptr, ptr %94, i64 1
  br label %106

106:                                              ; preds = %100, %104
  %107 = phi ptr [ %105, %104 ], [ %94, %100 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !120
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %94, %102 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !178
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 11
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load ptr, ptr %4, align 8, !tbaa !160
  %117 = getelementptr inbounds %struct.xpvav, ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !162
  %119 = trunc i64 %118 to i32
  %120 = add i32 %119, 1
  %121 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !131
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %222, label %124

124:                                              ; preds = %109, %115
  %125 = phi i32 [ 1, %109 ], [ %120, %115 ]
  %126 = phi ptr [ %8, %109 ], [ %122, %115 ]
  br label %127

127:                                              ; preds = %124, %218
  %128 = phi i32 [ %132, %218 ], [ %125, %124 ]
  %129 = phi i8 [ %220, %218 ], [ 0, %124 ]
  %130 = phi ptr [ %219, %218 ], [ null, %124 ]
  %131 = phi ptr [ %162, %218 ], [ %126, %124 ]
  %132 = add nsw i32 %128, -1
  %133 = load ptr, ptr %131, align 8, !tbaa !120
  %134 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !178
  %136 = and i32 %135, 536870912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store ptr %133, ptr @PL_Sv, align 8, !tbaa !120
  %137 = and i32 %135, 2098176
  %138 = icmp eq i32 %137, 1024
  br i1 %138, label %139, label %145

139:                                              ; preds = %127
  %140 = load ptr, ptr %133, align 8, !tbaa !129
  %141 = getelementptr inbounds %struct.xpv, ptr %140, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !234
  store i64 %142, ptr %9, align 8, !tbaa !236
  %143 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !131
  br label %148

145:                                              ; preds = %127
  %146 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %133, ptr noundef nonnull %9, i32 noundef 34) #7
  %147 = load i64, ptr %9, align 8
  br label %148

148:                                              ; preds = %145, %139
  %149 = phi i64 [ %142, %139 ], [ %147, %145 ]
  %150 = phi ptr [ %144, %139 ], [ %146, %145 ]
  %151 = load ptr, ptr @PL_stashcache, align 8, !tbaa !120
  %152 = icmp eq ptr %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = icmp eq i32 %136, 0
  %155 = trunc i64 %149 to i32
  %156 = sub nsw i32 0, %155
  %157 = select i1 %154, i32 %155, i32 %156
  %158 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %151, ptr noundef %150, i32 noundef %157, i32 noundef 68, ptr noundef null, i32 noundef 0) #7
  %159 = load i64, ptr %9, align 8, !tbaa !236
  br label %160

160:                                              ; preds = %153, %148
  %161 = phi i64 [ %159, %153 ], [ %149, %148 ]
  %162 = getelementptr inbounds ptr, ptr %131, i64 1
  %163 = load ptr, ptr %7, align 8, !tbaa !120
  %164 = trunc i64 %161 to i32
  call void @Perl_hv_ename_delete(ptr noundef %163, ptr noundef %150, i32 noundef %164, i32 noundef %136) #7
  %165 = and i8 %129, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %218

167:                                              ; preds = %160
  %168 = load ptr, ptr %7, align 8, !tbaa !120
  %169 = getelementptr inbounds %struct.hv, ptr %168, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !147
  %171 = and i32 %170, 33554432
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.hv, ptr %168, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !131
  %176 = load ptr, ptr %168, align 8, !tbaa !124
  %177 = getelementptr inbounds %struct.xpvhv, ptr %176, i64 0, i32 3
  %178 = load i64, ptr %177, align 8, !tbaa !126
  %179 = getelementptr ptr, ptr %175, i64 %178
  %180 = getelementptr ptr, ptr %179, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !131
  %182 = icmp eq ptr %181, null
  br i1 %182, label %197, label %183

183:                                              ; preds = %173
  %184 = getelementptr i8, ptr %179, i64 36
  %185 = load i32, ptr %184, align 4, !tbaa !144
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load ptr, ptr %181, align 8, !tbaa !120
  br label %197

189:                                              ; preds = %183
  %190 = icmp slt i32 %185, -1
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = getelementptr inbounds ptr, ptr %181, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !120
  br label %197

194:                                              ; preds = %189
  %195 = icmp eq i32 %185, -1
  %196 = select i1 %195, ptr null, ptr %181
  br label %197

197:                                              ; preds = %194, %167, %173, %187, %191
  %198 = phi ptr [ %188, %187 ], [ %193, %191 ], [ null, %173 ], [ null, %167 ], [ %196, %194 ]
  %199 = icmp eq ptr %198, %110
  br i1 %199, label %218, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %62, align 8, !tbaa !176
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.hv, ptr %201, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !131
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i64, ptr %9, align 8, !tbaa !236
  %209 = lshr exact i32 %136, 29
  call fastcc void @S_mro_clean_isarev(ptr noundef nonnull %201, ptr noundef %150, i64 noundef %208, ptr noundef null, i32 noundef 0, i32 noundef %209) #8
  br label %210

210:                                              ; preds = %207, %203, %200
  %211 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %212 = icmp eq i32 %136, 0
  %213 = load i64, ptr %9, align 8
  %214 = trunc i64 %213 to i32
  %215 = sub nsw i32 0, %214
  %216 = select i1 %212, i32 %214, i32 %215
  %217 = call ptr @Perl_hv_common_key_len(ptr noundef %211, ptr noundef %150, i32 noundef %216, i32 noundef 64, ptr noundef null, i32 noundef 0) #7
  br label %218

218:                                              ; preds = %197, %210, %160
  %219 = phi ptr [ %130, %160 ], [ %217, %210 ], [ %130, %197 ]
  %220 = phi i8 [ %129, %160 ], [ 1, %210 ], [ %129, %197 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %221 = icmp eq i32 %132, 0
  br i1 %221, label %222, label %127, !llvm.loop !237

222:                                              ; preds = %218, %115, %44, %80, %86, %96, %34
  %223 = phi ptr [ null, %34 ], [ null, %44 ], [ null, %96 ], [ null, %86 ], [ null, %80 ], [ %122, %115 ], [ %162, %218 ]
  %224 = phi ptr [ null, %34 ], [ null, %44 ], [ null, %96 ], [ null, %86 ], [ null, %80 ], [ null, %115 ], [ %219, %218 ]
  %225 = phi i8 [ 0, %34 ], [ 0, %44 ], [ 0, %96 ], [ 0, %86 ], [ 0, %80 ], [ 0, %115 ], [ %220, %218 ]
  %226 = phi i32 [ 0, %34 ], [ 0, %44 ], [ 0, %96 ], [ 0, %86 ], [ 0, %80 ], [ -1, %115 ], [ -1, %218 ]
  %227 = load ptr, ptr %6, align 8, !tbaa !120
  %228 = icmp eq ptr %227, null
  br i1 %228, label %317, label %229

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %231 = load i32, ptr %230, align 4, !tbaa !178
  %232 = and i32 %231, 255
  %233 = icmp eq i32 %232, 11
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load ptr, ptr %4, align 8, !tbaa !160
  %236 = getelementptr inbounds %struct.xpvav, ptr %235, i64 0, i32 2
  %237 = load i64, ptr %236, align 8, !tbaa !162
  %238 = trunc i64 %237 to i32
  %239 = add i32 %238, 1
  %240 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !131
  %242 = icmp eq i32 %239, 0
  br i1 %242, label %272, label %243

243:                                              ; preds = %229, %234
  %244 = phi i32 [ 1, %229 ], [ %239, %234 ]
  %245 = phi ptr [ %8, %229 ], [ %241, %234 ]
  br label %246

246:                                              ; preds = %243, %266
  %247 = phi i32 [ %249, %266 ], [ %244, %243 ]
  %248 = phi ptr [ %254, %266 ], [ %245, %243 ]
  %249 = add nsw i32 %247, -1
  %250 = load ptr, ptr %248, align 8, !tbaa !120
  %251 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 2
  %252 = load i32, ptr %251, align 4, !tbaa !178
  %253 = and i32 %252, 536870912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %254 = getelementptr inbounds ptr, ptr %248, i64 1
  store ptr %250, ptr @PL_Sv, align 8, !tbaa !120
  %255 = and i32 %252, 2098176
  %256 = icmp eq i32 %255, 1024
  br i1 %256, label %257, label %263

257:                                              ; preds = %246
  %258 = load ptr, ptr %250, align 8, !tbaa !129
  %259 = getelementptr inbounds %struct.xpv, ptr %258, i64 0, i32 2
  %260 = load i64, ptr %259, align 8, !tbaa !234
  store i64 %260, ptr %10, align 8, !tbaa !236
  %261 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !131
  br label %266

263:                                              ; preds = %246
  %264 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %250, ptr noundef nonnull %10, i32 noundef 34) #7
  %265 = load i64, ptr %10, align 8, !tbaa !236
  br label %266

266:                                              ; preds = %263, %257
  %267 = phi i64 [ %260, %257 ], [ %265, %263 ]
  %268 = phi ptr [ %262, %257 ], [ %264, %263 ]
  %269 = load ptr, ptr %6, align 8, !tbaa !120
  %270 = trunc i64 %267 to i32
  call void @Perl_hv_ename_add(ptr noundef %269, ptr noundef %268, i32 noundef %270, i32 noundef %253) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %271 = icmp eq i32 %249, 0
  br i1 %271, label %272, label %246, !llvm.loop !238

272:                                              ; preds = %266, %234
  %273 = phi ptr [ %241, %234 ], [ %254, %266 ]
  %274 = call ptr @Perl_hv_common(ptr noundef %1, ptr noundef null, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0, i32 noundef 144, ptr noundef null, i32 noundef 0) #7
  %275 = getelementptr inbounds %struct.he, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !131
  %277 = icmp eq ptr %276, @PL_sv_yes
  %278 = icmp eq ptr %276, @PL_sv_no
  %279 = or i1 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  store ptr null, ptr %6, align 8, !tbaa !120
  br label %317

281:                                              ; preds = %272
  %282 = icmp eq ptr %276, @PL_sv_undef
  %283 = select i1 %282, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %283, ptr %275, align 8, !tbaa !131
  br i1 %35, label %317, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr %6, align 8, !tbaa !120
  %286 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !131
  %288 = load ptr, ptr %285, align 8, !tbaa !124
  %289 = getelementptr inbounds %struct.xpvhv, ptr %288, i64 0, i32 3
  %290 = load i64, ptr %289, align 8, !tbaa !126
  %291 = getelementptr ptr, ptr %287, i64 %290
  %292 = getelementptr ptr, ptr %291, i64 5
  %293 = load ptr, ptr %292, align 8, !tbaa !137
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %284
  %296 = call ptr @Perl_mro_meta_init(ptr noundef nonnull %285) #8
  br label %297

297:                                              ; preds = %284, %295
  %298 = phi ptr [ %296, %295 ], [ %293, %284 ]
  %299 = getelementptr inbounds %struct.mro_meta, ptr %298, i64 0, i32 6
  %300 = load ptr, ptr %299, align 8, !tbaa !176
  %301 = icmp eq ptr %300, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.sv, ptr %300, i64 0, i32 1
  %304 = load i32, ptr %303, align 8, !tbaa !135
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 8, !tbaa !135
  br label %306

306:                                              ; preds = %297, %302
  %307 = phi ptr [ %300, %302 ], [ @PL_sv_yes, %297 ]
  %308 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %307, i32 noundef 0) #7
  %309 = load ptr, ptr %298, align 8, !tbaa !107
  %310 = icmp eq ptr %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %306
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %309) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %298, i8 0, i64 16, i1 false)
  br label %317

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.mro_meta, ptr %298, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !121
  %315 = icmp eq ptr %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %314) #8
  store ptr null, ptr %313, align 8, !tbaa !121
  br label %317

317:                                              ; preds = %311, %316, %312, %280, %281, %222
  %318 = phi ptr [ %273, %280 ], [ %273, %281 ], [ %223, %222 ], [ %273, %312 ], [ %273, %316 ], [ %273, %311 ]
  %319 = phi i32 [ -1, %280 ], [ -1, %281 ], [ %226, %222 ], [ -1, %312 ], [ -1, %316 ], [ -1, %311 ]
  %320 = load ptr, ptr %6, align 8, !tbaa !120
  %321 = icmp ne ptr %320, null
  %322 = load ptr, ptr %7, align 8
  %323 = icmp ne ptr %322, null
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %930

325:                                              ; preds = %317
  %326 = and i8 %225, 1
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %384

328:                                              ; preds = %325
  br i1 %323, label %329, label %371

329:                                              ; preds = %328
  %330 = getelementptr inbounds %struct.hv, ptr %322, i64 0, i32 2
  %331 = load i32, ptr %330, align 4, !tbaa !147
  %332 = and i32 %331, 33554432
  %333 = icmp ne i32 %332, 0
  call void @llvm.assume(i1 %333)
  %334 = getelementptr inbounds %struct.hv, ptr %322, i64 0, i32 3
  %335 = load ptr, ptr %334, align 8, !tbaa !131
  %336 = load ptr, ptr %322, align 8, !tbaa !124
  %337 = getelementptr inbounds %struct.xpvhv, ptr %336, i64 0, i32 3
  %338 = load i64, ptr %337, align 8, !tbaa !126
  %339 = getelementptr ptr, ptr %335, i64 %338
  %340 = getelementptr ptr, ptr %339, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !131, !nonnull !239, !noundef !239
  %342 = getelementptr i8, ptr %339, i64 36
  %343 = load i32, ptr %342, align 4, !tbaa !144
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %329
  %346 = load ptr, ptr %341, align 8, !tbaa !120
  br label %354

347:                                              ; preds = %329
  %348 = icmp slt i32 %343, -1
  br i1 %348, label %349, label %352

349:                                              ; preds = %347
  %350 = getelementptr inbounds ptr, ptr %341, i64 1
  %351 = load ptr, ptr %350, align 8, !tbaa !120
  br label %354

352:                                              ; preds = %347
  %353 = icmp ne i32 %343, -1
  call void @llvm.assume(i1 %353)
  br label %354

354:                                              ; preds = %345, %352, %349
  %355 = phi ptr [ %346, %345 ], [ %351, %349 ], [ %341, %352 ]
  %356 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %357 = getelementptr inbounds %struct.hek, ptr %355, i64 0, i32 2
  %358 = getelementptr inbounds %struct.hek, ptr %355, i64 0, i32 1
  %359 = load i32, ptr %358, align 4, !tbaa !192
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, ptr %357, i64 %360
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  %363 = load i8, ptr %362, align 1, !tbaa !131
  %364 = and i8 %363, 1
  %365 = zext nneg i8 %364 to i32
  %366 = load i32, ptr %355, align 4, !tbaa !194
  %367 = call ptr @Perl_hv_common(ptr noundef %356, ptr noundef null, ptr noundef nonnull %357, i64 noundef %360, i32 noundef %365, i32 noundef 32, ptr noundef null, i32 noundef %366) #7
  %368 = icmp eq ptr %367, null
  br i1 %368, label %384, label %369

369:                                              ; preds = %354
  %370 = load ptr, ptr %367, align 8, !tbaa !120
  br label %384

371:                                              ; preds = %328
  %372 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %373 = load i32, ptr %372, align 4, !tbaa !178
  %374 = and i32 %373, 255
  %375 = icmp eq i32 %374, 11
  br i1 %375, label %376, label %384

376:                                              ; preds = %371
  %377 = load ptr, ptr %4, align 8, !tbaa !160
  %378 = getelementptr inbounds %struct.xpvav, ptr %377, i64 0, i32 2
  %379 = load i64, ptr %378, align 8, !tbaa !162
  %380 = trunc i64 %379 to i32
  %381 = add i32 %380, 1
  %382 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !131
  br label %384

384:                                              ; preds = %371, %354, %369, %376, %325
  %385 = phi ptr [ %318, %325 ], [ %383, %376 ], [ %367, %369 ], [ null, %354 ], [ %8, %371 ]
  %386 = phi ptr [ %224, %325 ], [ %224, %376 ], [ %370, %369 ], [ %224, %354 ], [ %224, %371 ]
  %387 = phi i8 [ %225, %325 ], [ %225, %376 ], [ 1, %369 ], [ 1, %354 ], [ %225, %371 ]
  %388 = phi i32 [ %319, %325 ], [ %381, %376 ], [ %319, %369 ], [ %319, %354 ], [ 1, %371 ]
  %389 = icmp ne ptr %386, null
  %390 = and i8 %387, 1
  %391 = icmp eq i8 %390, 0
  %392 = select i1 %389, i1 true, i1 %391
  br i1 %392, label %393, label %465

393:                                              ; preds = %384
  %394 = shl nuw nsw i8 %390, 3
  br label %395

395:                                              ; preds = %393, %459
  %396 = phi ptr [ %462, %459 ], [ %385, %393 ]
  %397 = phi ptr [ %463, %459 ], [ %386, %393 ]
  %398 = phi i32 [ %460, %459 ], [ %388, %393 ]
  br i1 %391, label %399, label %412

399:                                              ; preds = %395
  %400 = add nsw i32 %398, -1
  %401 = icmp eq i32 %398, 0
  br i1 %401, label %465, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %404 = getelementptr inbounds ptr, ptr %396, i64 1
  %405 = load ptr, ptr %396, align 8, !tbaa !120
  %406 = call ptr @Perl_hv_common(ptr noundef %403, ptr noundef %405, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %407 = icmp eq ptr %406, null
  br i1 %407, label %459, label %408, !llvm.loop !240

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.he, ptr %406, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !131
  %411 = icmp eq ptr %410, null
  br i1 %411, label %459, label %412, !llvm.loop !240

412:                                              ; preds = %408, %395
  %413 = phi i32 [ %398, %395 ], [ %400, %408 ]
  %414 = phi ptr [ %396, %395 ], [ %404, %408 ]
  %415 = phi ptr [ %397, %395 ], [ %410, %408 ]
  %416 = call i32 @Perl_hv_iterinit(ptr noundef %415) #7
  %417 = call ptr @Perl_hv_iternext_flags(ptr noundef %415, i32 noundef 0) #7
  %418 = icmp eq ptr %417, null
  br i1 %418, label %459, label %419

419:                                              ; preds = %412, %456
  %420 = phi ptr [ %457, %456 ], [ %417, %412 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  %421 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %420) #7
  %422 = call ptr @Perl_gv_stashsv(ptr noundef %421, i32 noundef 0) #7
  store ptr %422, ptr %11, align 8, !tbaa !120
  %423 = icmp eq ptr %422, null
  br i1 %423, label %456, label %424, !llvm.loop !241

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.hv, ptr %422, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !131
  %427 = load ptr, ptr %422, align 8, !tbaa !124
  %428 = getelementptr inbounds %struct.xpvhv, ptr %427, i64 0, i32 3
  %429 = load i64, ptr %428, align 8, !tbaa !126
  %430 = getelementptr ptr, ptr %426, i64 %429
  %431 = getelementptr ptr, ptr %430, i64 5
  %432 = load ptr, ptr %431, align 8, !tbaa !137
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %436

434:                                              ; preds = %424
  %435 = call ptr @Perl_mro_meta_init(ptr noundef nonnull %422) #8
  br label %436

436:                                              ; preds = %424, %434
  %437 = phi ptr [ %435, %434 ], [ %432, %424 ]
  %438 = getelementptr inbounds %struct.mro_meta, ptr %437, i64 0, i32 6
  %439 = load ptr, ptr %438, align 8, !tbaa !176
  %440 = icmp eq ptr %439, null
  br i1 %440, label %445, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.sv, ptr %439, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !135
  %444 = add i32 %443, 1
  store i32 %444, ptr %442, align 8, !tbaa !135
  br label %445

445:                                              ; preds = %436, %441
  %446 = phi ptr [ %439, %441 ], [ @PL_sv_yes, %436 ]
  %447 = call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 8, i32 noundef 36, ptr noundef nonnull %446, i32 noundef 0) #7
  %448 = load ptr, ptr %437, align 8, !tbaa !107
  %449 = icmp eq ptr %448, null
  br i1 %449, label %451, label %450

450:                                              ; preds = %445
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %448) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %437, i8 0, i64 16, i1 false)
  br label %456

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.mro_meta, ptr %437, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !121
  %454 = icmp eq ptr %453, null
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %453) #8
  store ptr null, ptr %452, align 8, !tbaa !121
  br label %456

456:                                              ; preds = %450, %455, %451, %419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  %457 = call ptr @Perl_hv_iternext_flags(ptr noundef %415, i32 noundef 0) #7
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %419

459:                                              ; preds = %456, %412, %402, %408
  %460 = phi i32 [ %400, %408 ], [ %400, %402 ], [ %413, %412 ], [ %413, %456 ]
  %461 = phi i8 [ 7, %408 ], [ 7, %402 ], [ %394, %412 ], [ %394, %456 ]
  %462 = phi ptr [ %404, %408 ], [ %404, %402 ], [ %414, %412 ], [ %414, %456 ]
  %463 = phi ptr [ null, %408 ], [ %397, %402 ], [ %415, %412 ], [ %415, %456 ]
  %464 = icmp eq i8 %461, 8
  br i1 %464, label %465, label %395

465:                                              ; preds = %459, %399, %384
  %466 = load ptr, ptr %7, align 8, !tbaa !120
  %467 = icmp eq ptr %466, null
  br i1 %467, label %731, label %468

468:                                              ; preds = %465
  %469 = load ptr, ptr %466, align 8, !tbaa !124
  %470 = getelementptr inbounds %struct.xpvhv, ptr %469, i64 0, i32 2
  %471 = load i64, ptr %470, align 8, !tbaa !228
  %472 = getelementptr inbounds %struct.xpvmg, ptr %469, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !131
  %474 = icmp eq ptr %473, null
  br i1 %474, label %478, label %475

475:                                              ; preds = %468
  %476 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %466) #7
  %477 = sext i32 %476 to i64
  br label %478

478:                                              ; preds = %468, %475
  %479 = phi i64 [ %477, %475 ], [ 0, %468 ]
  %480 = icmp eq i64 %471, %479
  br i1 %480, label %731, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr %7, align 8, !tbaa !120
  %483 = load ptr, ptr %482, align 8, !tbaa !124
  %484 = call ptr @Perl_newSV_type(i32 noundef 12) #7
  %485 = call ptr @Perl_sv_2mortal(ptr noundef %484) #7
  %486 = getelementptr inbounds %struct.xpvhv, ptr %483, i64 0, i32 3
  %487 = load i64, ptr %486, align 8, !tbaa !126
  %488 = and i64 %487, 2147483648
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %731

490:                                              ; preds = %481
  %491 = load ptr, ptr %8, align 8
  %492 = getelementptr inbounds %struct.sv, ptr %491, i64 0, i32 2
  %493 = getelementptr inbounds %struct.av, ptr %491, i64 0, i32 3
  br label %502

494:                                              ; preds = %728
  %495 = load i64, ptr %486, align 8, !tbaa !126
  br label %496

496:                                              ; preds = %494, %502
  %497 = phi i64 [ %495, %494 ], [ %503, %502 ]
  %498 = add nuw nsw i64 %504, 1
  %499 = shl i64 %497, 32
  %500 = ashr exact i64 %499, 32
  %501 = icmp slt i64 %504, %500
  br i1 %501, label %502, label %731, !llvm.loop !242

502:                                              ; preds = %490, %496
  %503 = phi i64 [ %487, %490 ], [ %497, %496 ]
  %504 = phi i64 [ 0, %490 ], [ %498, %496 ]
  %505 = load ptr, ptr %7, align 8, !tbaa !120
  %506 = getelementptr inbounds %struct.hv, ptr %505, i64 0, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !131
  %508 = getelementptr inbounds ptr, ptr %507, i64 %504
  %509 = load ptr, ptr %508, align 8, !tbaa !120
  %510 = icmp eq ptr %509, null
  br i1 %510, label %496, label %511

511:                                              ; preds = %502, %728
  %512 = phi ptr [ %729, %728 ], [ %509, %502 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  %513 = getelementptr inbounds %struct.he, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !131
  %515 = getelementptr inbounds %struct.sv, ptr %514, i64 0, i32 2
  %516 = load i32, ptr %515, align 4, !tbaa !178
  %517 = and i32 %516, 255
  %518 = icmp eq i32 %517, 9
  br i1 %518, label %519, label %728

519:                                              ; preds = %511
  %520 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %512, ptr noundef nonnull %12) #7
  %521 = load i32, ptr %12, align 4, !tbaa !207
  %522 = icmp sgt i32 %521, 1
  br i1 %522, label %523, label %533

523:                                              ; preds = %519
  %524 = zext nneg i32 %521 to i64
  %525 = getelementptr i8, ptr %520, i64 %524
  %526 = getelementptr i8, ptr %525, i64 -2
  %527 = load i8, ptr %526, align 1, !tbaa !131
  %528 = icmp eq i8 %527, 58
  br i1 %528, label %529, label %728

529:                                              ; preds = %523
  %530 = getelementptr i8, ptr %525, i64 -1
  %531 = load i8, ptr %530, align 1, !tbaa !131
  %532 = icmp eq i8 %531, 58
  br i1 %532, label %538, label %728

533:                                              ; preds = %519
  %534 = icmp eq i32 %521, 1
  br i1 %534, label %535, label %728

535:                                              ; preds = %533
  %536 = load i8, ptr %520, align 1, !tbaa !131
  %537 = icmp eq i8 %536, 58
  br i1 %537, label %538, label %728

538:                                              ; preds = %535, %529
  %539 = load ptr, ptr %513, align 8, !tbaa !131
  %540 = getelementptr inbounds %struct.sv, ptr %539, i64 0, i32 3
  %541 = load ptr, ptr %540, align 8, !tbaa !131
  %542 = getelementptr inbounds %struct.gp, ptr %541, i64 0, i32 5
  %543 = load ptr, ptr %542, align 8, !tbaa !243
  %544 = load ptr, ptr %6, align 8, !tbaa !120
  %545 = icmp eq ptr %544, null
  br i1 %545, label %573, label %546

546:                                              ; preds = %538
  %547 = getelementptr inbounds %struct.he, ptr %512, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !170
  %549 = getelementptr inbounds %struct.hek, ptr %548, i64 0, i32 1
  %550 = load i32, ptr %549, align 4, !tbaa !192
  %551 = icmp eq i32 %550, -2
  %552 = getelementptr inbounds %struct.hek, ptr %548, i64 0, i32 2
  br i1 %551, label %553, label %559

553:                                              ; preds = %546
  %554 = load ptr, ptr %552, align 4, !tbaa !120
  %555 = getelementptr inbounds %struct.sv, ptr %554, i64 0, i32 2
  %556 = load i32, ptr %555, align 4, !tbaa !178
  %557 = and i32 %556, 536870912
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %568, label %566

559:                                              ; preds = %546
  %560 = sext i32 %550 to i64
  %561 = getelementptr inbounds i8, ptr %552, i64 %560
  %562 = getelementptr inbounds i8, ptr %561, i64 1
  %563 = load i8, ptr %562, align 1, !tbaa !131
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %559, %553
  %567 = sub nsw i32 0, %521
  br label %568

568:                                              ; preds = %566, %559, %553
  %569 = phi i32 [ %567, %566 ], [ %521, %559 ], [ %521, %553 ]
  %570 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %544, ptr noundef nonnull %520, i32 noundef %569, i32 noundef 32, ptr noundef null, i32 noundef 0) #7
  %571 = load ptr, ptr %7, align 8, !tbaa !120
  %572 = icmp eq ptr %543, %571
  br i1 %572, label %728, label %576

573:                                              ; preds = %538
  %574 = load ptr, ptr %7, align 8, !tbaa !120
  %575 = icmp eq ptr %543, %574
  br i1 %575, label %728, label %592

576:                                              ; preds = %568
  %577 = icmp eq ptr %570, null
  br i1 %577, label %592, label %578

578:                                              ; preds = %576
  %579 = load ptr, ptr %570, align 8, !tbaa !120
  %580 = icmp eq ptr %579, null
  br i1 %580, label %592, label %581

581:                                              ; preds = %578
  %582 = getelementptr inbounds %struct.sv, ptr %579, i64 0, i32 2
  %583 = load i32, ptr %582, align 4, !tbaa !178
  %584 = and i32 %583, 255
  %585 = icmp eq i32 %584, 9
  br i1 %585, label %586, label %592

586:                                              ; preds = %581
  %587 = getelementptr inbounds %struct.sv, ptr %579, i64 0, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !131
  %589 = getelementptr inbounds %struct.gp, ptr %588, i64 0, i32 5
  %590 = load ptr, ptr %589, align 8, !tbaa !243
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %613

592:                                              ; preds = %573, %586, %581, %578, %576
  %593 = icmp eq ptr %543, null
  br i1 %593, label %700, label %594

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.hv, ptr %543, i64 0, i32 2
  %596 = load i32, ptr %595, align 4, !tbaa !147
  %597 = and i32 %596, 33554432
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %700, label %599

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.hv, ptr %543, i64 0, i32 3
  %601 = load ptr, ptr %600, align 8, !tbaa !131
  %602 = load ptr, ptr %543, align 8, !tbaa !124
  %603 = getelementptr inbounds %struct.xpvhv, ptr %602, i64 0, i32 3
  %604 = load i64, ptr %603, align 8, !tbaa !126
  %605 = getelementptr ptr, ptr %601, i64 %604
  %606 = getelementptr ptr, ptr %605, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !131
  %608 = icmp eq ptr %607, null
  br i1 %608, label %700, label %609

609:                                              ; preds = %599
  %610 = getelementptr i8, ptr %605, i64 36
  %611 = load i32, ptr %610, align 4, !tbaa !144
  %612 = icmp eq i32 %611, -1
  br i1 %612, label %700, label %613

613:                                              ; preds = %609, %586
  %614 = phi ptr [ %590, %586 ], [ null, %609 ]
  %615 = load i32, ptr %492, align 4, !tbaa !178
  %616 = and i32 %615, 255
  %617 = icmp eq i32 %616, 11
  br i1 %617, label %618, label %666

618:                                              ; preds = %613
  %619 = load ptr, ptr %491, align 8, !tbaa !160
  %620 = getelementptr inbounds %struct.xpvav, ptr %619, i64 0, i32 2
  %621 = load i64, ptr %620, align 8, !tbaa !162
  %622 = trunc i64 %621 to i32
  %623 = load ptr, ptr %493, align 8, !tbaa !131
  %624 = call ptr @Perl_newSV_type(i32 noundef 11) #7
  %625 = call ptr @Perl_sv_2mortal(ptr noundef %624) #7
  %626 = icmp eq i32 %622, -1
  br i1 %626, label %698, label %627

627:                                              ; preds = %618
  %628 = getelementptr inbounds %struct.he, ptr %512, i64 0, i32 1
  br label %629

629:                                              ; preds = %627, %663
  %630 = phi i32 [ %622, %627 ], [ %664, %663 ]
  %631 = phi ptr [ %623, %627 ], [ %632, %663 ]
  %632 = getelementptr inbounds ptr, ptr %631, i64 1
  %633 = load ptr, ptr %631, align 8, !tbaa !120
  %634 = call ptr @Perl_newSVsv(ptr noundef %633) #7
  %635 = load i32, ptr %12, align 4, !tbaa !207
  %636 = icmp eq i32 %635, 1
  br i1 %636, label %637, label %638

637:                                              ; preds = %629
  call void @Perl_sv_catpvn_flags(ptr noundef %634, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %663

638:                                              ; preds = %629
  call void @Perl_sv_catpvn_flags(ptr noundef %634, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  %639 = load i32, ptr %12, align 4, !tbaa !207
  %640 = add nsw i32 %639, -2
  %641 = sext i32 %640 to i64
  %642 = load ptr, ptr %628, align 8, !tbaa !170
  %643 = getelementptr inbounds %struct.hek, ptr %642, i64 0, i32 1
  %644 = load i32, ptr %643, align 4, !tbaa !192
  %645 = icmp eq i32 %644, -2
  %646 = getelementptr inbounds %struct.hek, ptr %642, i64 0, i32 2
  br i1 %645, label %647, label %652

647:                                              ; preds = %638
  %648 = load ptr, ptr %646, align 4, !tbaa !120
  %649 = getelementptr inbounds %struct.sv, ptr %648, i64 0, i32 2
  %650 = load i32, ptr %649, align 4, !tbaa !178
  %651 = and i32 %650, 536870912
  br label %659

652:                                              ; preds = %638
  %653 = sext i32 %644 to i64
  %654 = getelementptr inbounds i8, ptr %646, i64 %653
  %655 = getelementptr inbounds i8, ptr %654, i64 1
  %656 = load i8, ptr %655, align 1, !tbaa !131
  %657 = and i8 %656, 1
  %658 = zext nneg i8 %657 to i32
  br label %659

659:                                              ; preds = %652, %647
  %660 = phi i32 [ %651, %647 ], [ %658, %652 ]
  %661 = icmp eq i32 %660, 0
  %662 = select i1 %661, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %634, ptr noundef %520, i64 noundef %641, i32 noundef %662) #7
  br label %663

663:                                              ; preds = %659, %637
  call void @Perl_av_push(ptr noundef %625, ptr noundef %634) #7
  %664 = add nsw i32 %630, -1
  %665 = icmp eq i32 %630, 0
  br i1 %665, label %698, label %629, !llvm.loop !244

666:                                              ; preds = %613
  %667 = call ptr @Perl_newSVsv(ptr noundef nonnull %491) #7
  %668 = call ptr @Perl_sv_2mortal(ptr noundef %667) #7
  %669 = load i32, ptr %12, align 4, !tbaa !207
  %670 = icmp eq i32 %669, 1
  br i1 %670, label %671, label %672

671:                                              ; preds = %666
  call void @Perl_sv_catpvn_flags(ptr noundef %668, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %698

672:                                              ; preds = %666
  call void @Perl_sv_catpvn_flags(ptr noundef %668, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  %673 = load i32, ptr %12, align 4, !tbaa !207
  %674 = add nsw i32 %673, -2
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.he, ptr %512, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !170
  %678 = getelementptr inbounds %struct.hek, ptr %677, i64 0, i32 1
  %679 = load i32, ptr %678, align 4, !tbaa !192
  %680 = icmp eq i32 %679, -2
  %681 = getelementptr inbounds %struct.hek, ptr %677, i64 0, i32 2
  br i1 %680, label %682, label %687

682:                                              ; preds = %672
  %683 = load ptr, ptr %681, align 4, !tbaa !120
  %684 = getelementptr inbounds %struct.sv, ptr %683, i64 0, i32 2
  %685 = load i32, ptr %684, align 4, !tbaa !178
  %686 = and i32 %685, 536870912
  br label %694

687:                                              ; preds = %672
  %688 = sext i32 %679 to i64
  %689 = getelementptr inbounds i8, ptr %681, i64 %688
  %690 = getelementptr inbounds i8, ptr %689, i64 1
  %691 = load i8, ptr %690, align 1, !tbaa !131
  %692 = and i8 %691, 1
  %693 = zext nneg i8 %692 to i32
  br label %694

694:                                              ; preds = %687, %682
  %695 = phi i32 [ %686, %682 ], [ %693, %687 ]
  %696 = icmp eq i32 %695, 0
  %697 = select i1 %696, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %668, ptr noundef nonnull %520, i64 noundef %675, i32 noundef %697) #7
  br label %698

698:                                              ; preds = %663, %618, %671, %694
  %699 = phi ptr [ %668, %671 ], [ %668, %694 ], [ %625, %618 ], [ %625, %663 ]
  call fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef %614, ptr noundef %543, ptr noundef %699) #8
  br label %700

700:                                              ; preds = %594, %599, %609, %698, %592
  %701 = getelementptr inbounds %struct.he, ptr %512, i64 0, i32 1
  %702 = load ptr, ptr %701, align 8, !tbaa !170
  %703 = getelementptr inbounds %struct.hek, ptr %702, i64 0, i32 1
  %704 = load i32, ptr %703, align 4, !tbaa !192
  %705 = icmp eq i32 %704, -2
  %706 = getelementptr inbounds %struct.hek, ptr %702, i64 0, i32 2
  br i1 %705, label %707, label %713

707:                                              ; preds = %700
  %708 = load ptr, ptr %706, align 4, !tbaa !120
  %709 = getelementptr inbounds %struct.sv, ptr %708, i64 0, i32 2
  %710 = load i32, ptr %709, align 4, !tbaa !178
  %711 = and i32 %710, 536870912
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %723, label %720

713:                                              ; preds = %700
  %714 = sext i32 %704 to i64
  %715 = getelementptr inbounds i8, ptr %706, i64 %714
  %716 = getelementptr inbounds i8, ptr %715, i64 1
  %717 = load i8, ptr %716, align 1, !tbaa !131
  %718 = and i8 %717, 1
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %723, label %720

720:                                              ; preds = %713, %707
  %721 = load i32, ptr %12, align 4, !tbaa !207
  %722 = sub nsw i32 0, %721
  br label %725

723:                                              ; preds = %713, %707
  %724 = load i32, ptr %12, align 4, !tbaa !207
  br label %725

725:                                              ; preds = %723, %720
  %726 = phi i32 [ %722, %720 ], [ %724, %723 ]
  %727 = call ptr @Perl_hv_common_key_len(ptr noundef %485, ptr noundef %520, i32 noundef %726, i32 noundef 36, ptr noundef nonnull @PL_sv_yes, i32 noundef 0) #7
  br label %728

728:                                              ; preds = %523, %529, %573, %725, %568, %533, %535, %511
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  %729 = load ptr, ptr %512, align 8, !tbaa !120
  %730 = icmp eq ptr %729, null
  br i1 %730, label %494, label %511, !llvm.loop !245

731:                                              ; preds = %496, %481, %478, %465
  %732 = phi ptr [ null, %478 ], [ null, %465 ], [ %485, %481 ], [ %485, %496 ]
  %733 = load ptr, ptr %6, align 8, !tbaa !120
  %734 = icmp eq ptr %733, null
  br i1 %734, label %930, label %735

735:                                              ; preds = %731
  %736 = load ptr, ptr %733, align 8, !tbaa !124
  %737 = getelementptr inbounds %struct.xpvhv, ptr %736, i64 0, i32 2
  %738 = load i64, ptr %737, align 8, !tbaa !228
  %739 = getelementptr inbounds %struct.xpvmg, ptr %736, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !131
  %741 = icmp eq ptr %740, null
  br i1 %741, label %745, label %742

742:                                              ; preds = %735
  %743 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %733) #7
  %744 = sext i32 %743 to i64
  br label %745

745:                                              ; preds = %735, %742
  %746 = phi i64 [ %744, %742 ], [ 0, %735 ]
  %747 = icmp eq i64 %738, %746
  br i1 %747, label %930, label %748

748:                                              ; preds = %745
  %749 = load ptr, ptr %6, align 8, !tbaa !120
  %750 = load ptr, ptr %749, align 8, !tbaa !124
  %751 = getelementptr inbounds %struct.xpvhv, ptr %750, i64 0, i32 3
  %752 = load i64, ptr %751, align 8, !tbaa !126
  %753 = and i64 %752, 2147483648
  %754 = icmp eq i64 %753, 0
  br i1 %754, label %755, label %930

755:                                              ; preds = %748
  %756 = icmp eq ptr %732, null
  %757 = load ptr, ptr %8, align 8
  %758 = getelementptr inbounds %struct.sv, ptr %757, i64 0, i32 2
  %759 = getelementptr inbounds %struct.av, ptr %757, i64 0, i32 3
  br label %768

760:                                              ; preds = %927
  %761 = load i64, ptr %751, align 8, !tbaa !126
  br label %762

762:                                              ; preds = %760, %768
  %763 = phi i64 [ %761, %760 ], [ %769, %768 ]
  %764 = add nuw nsw i64 %770, 1
  %765 = shl i64 %763, 32
  %766 = ashr exact i64 %765, 32
  %767 = icmp slt i64 %770, %766
  br i1 %767, label %768, label %930, !llvm.loop !246

768:                                              ; preds = %755, %762
  %769 = phi i64 [ %752, %755 ], [ %763, %762 ]
  %770 = phi i64 [ 0, %755 ], [ %764, %762 ]
  %771 = load ptr, ptr %6, align 8, !tbaa !120
  %772 = getelementptr inbounds %struct.hv, ptr %771, i64 0, i32 3
  %773 = load ptr, ptr %772, align 8, !tbaa !131
  %774 = getelementptr inbounds ptr, ptr %773, i64 %770
  %775 = load ptr, ptr %774, align 8, !tbaa !120
  %776 = icmp eq ptr %775, null
  br i1 %776, label %762, label %777

777:                                              ; preds = %768, %927
  %778 = phi ptr [ %928, %927 ], [ %775, %768 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  %779 = getelementptr inbounds %struct.he, ptr %778, i64 0, i32 2
  %780 = load ptr, ptr %779, align 8, !tbaa !131
  %781 = getelementptr inbounds %struct.sv, ptr %780, i64 0, i32 2
  %782 = load i32, ptr %781, align 4, !tbaa !178
  %783 = and i32 %782, 255
  %784 = icmp eq i32 %783, 9
  br i1 %784, label %785, label %927

785:                                              ; preds = %777
  %786 = call ptr @Perl_hv_iterkey(ptr noundef nonnull %778, ptr noundef nonnull %13) #7
  %787 = load i32, ptr %13, align 4, !tbaa !207
  %788 = icmp sgt i32 %787, 1
  br i1 %788, label %789, label %799

789:                                              ; preds = %785
  %790 = zext nneg i32 %787 to i64
  %791 = getelementptr i8, ptr %786, i64 %790
  %792 = getelementptr i8, ptr %791, i64 -2
  %793 = load i8, ptr %792, align 1, !tbaa !131
  %794 = icmp eq i8 %793, 58
  br i1 %794, label %795, label %927

795:                                              ; preds = %789
  %796 = getelementptr i8, ptr %791, i64 -1
  %797 = load i8, ptr %796, align 1, !tbaa !131
  %798 = icmp eq i8 %797, 58
  br i1 %798, label %804, label %927

799:                                              ; preds = %785
  %800 = icmp eq i32 %787, 1
  br i1 %800, label %801, label %927

801:                                              ; preds = %799
  %802 = load i8, ptr %786, align 1, !tbaa !131
  %803 = icmp eq i8 %802, 58
  br i1 %803, label %804, label %927

804:                                              ; preds = %801, %795
  br i1 %756, label %831, label %805

805:                                              ; preds = %804
  %806 = getelementptr inbounds %struct.he, ptr %778, i64 0, i32 1
  %807 = load ptr, ptr %806, align 8, !tbaa !170
  %808 = getelementptr inbounds %struct.hek, ptr %807, i64 0, i32 1
  %809 = load i32, ptr %808, align 4, !tbaa !192
  %810 = icmp eq i32 %809, -2
  %811 = getelementptr inbounds %struct.hek, ptr %807, i64 0, i32 2
  br i1 %810, label %812, label %818

812:                                              ; preds = %805
  %813 = load ptr, ptr %811, align 4, !tbaa !120
  %814 = getelementptr inbounds %struct.sv, ptr %813, i64 0, i32 2
  %815 = load i32, ptr %814, align 4, !tbaa !178
  %816 = and i32 %815, 536870912
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %827, label %825

818:                                              ; preds = %805
  %819 = sext i32 %809 to i64
  %820 = getelementptr inbounds i8, ptr %811, i64 %819
  %821 = getelementptr inbounds i8, ptr %820, i64 1
  %822 = load i8, ptr %821, align 1, !tbaa !131
  %823 = and i8 %822, 1
  %824 = icmp eq i8 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %818, %812
  %826 = sub nsw i32 0, %787
  br label %827

827:                                              ; preds = %812, %818, %825
  %828 = phi i32 [ %826, %825 ], [ %787, %818 ], [ %787, %812 ]
  %829 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %732, ptr noundef nonnull %786, i32 noundef %828, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %927

831:                                              ; preds = %827, %804
  %832 = load ptr, ptr %779, align 8, !tbaa !131
  %833 = getelementptr inbounds %struct.sv, ptr %832, i64 0, i32 3
  %834 = load ptr, ptr %833, align 8, !tbaa !131
  %835 = getelementptr inbounds %struct.gp, ptr %834, i64 0, i32 5
  %836 = load ptr, ptr %835, align 8, !tbaa !243
  %837 = icmp eq ptr %836, null
  %838 = load ptr, ptr %6, align 8
  %839 = icmp eq ptr %836, %838
  %840 = select i1 %837, i1 true, i1 %839
  br i1 %840, label %927, label %841

841:                                              ; preds = %831
  %842 = load i32, ptr %758, align 4, !tbaa !178
  %843 = and i32 %842, 255
  %844 = icmp eq i32 %843, 11
  br i1 %844, label %845, label %893

845:                                              ; preds = %841
  %846 = load ptr, ptr %757, align 8, !tbaa !160
  %847 = getelementptr inbounds %struct.xpvav, ptr %846, i64 0, i32 2
  %848 = load i64, ptr %847, align 8, !tbaa !162
  %849 = trunc i64 %848 to i32
  %850 = load ptr, ptr %759, align 8, !tbaa !131
  %851 = call ptr @Perl_newSV_type(i32 noundef 11) #7
  %852 = call ptr @Perl_sv_2mortal(ptr noundef %851) #7
  %853 = icmp eq i32 %849, -1
  br i1 %853, label %925, label %854

854:                                              ; preds = %845
  %855 = getelementptr inbounds %struct.he, ptr %778, i64 0, i32 1
  br label %856

856:                                              ; preds = %854, %890
  %857 = phi i32 [ %849, %854 ], [ %891, %890 ]
  %858 = phi ptr [ %850, %854 ], [ %859, %890 ]
  %859 = getelementptr inbounds ptr, ptr %858, i64 1
  %860 = load ptr, ptr %858, align 8, !tbaa !120
  %861 = call ptr @Perl_newSVsv(ptr noundef %860) #7
  %862 = load i32, ptr %13, align 4, !tbaa !207
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %864, label %865

864:                                              ; preds = %856
  call void @Perl_sv_catpvn_flags(ptr noundef %861, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %890

865:                                              ; preds = %856
  call void @Perl_sv_catpvn_flags(ptr noundef %861, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  %866 = load i32, ptr %13, align 4, !tbaa !207
  %867 = add nsw i32 %866, -2
  %868 = sext i32 %867 to i64
  %869 = load ptr, ptr %855, align 8, !tbaa !170
  %870 = getelementptr inbounds %struct.hek, ptr %869, i64 0, i32 1
  %871 = load i32, ptr %870, align 4, !tbaa !192
  %872 = icmp eq i32 %871, -2
  %873 = getelementptr inbounds %struct.hek, ptr %869, i64 0, i32 2
  br i1 %872, label %874, label %879

874:                                              ; preds = %865
  %875 = load ptr, ptr %873, align 4, !tbaa !120
  %876 = getelementptr inbounds %struct.sv, ptr %875, i64 0, i32 2
  %877 = load i32, ptr %876, align 4, !tbaa !178
  %878 = and i32 %877, 536870912
  br label %886

879:                                              ; preds = %865
  %880 = sext i32 %871 to i64
  %881 = getelementptr inbounds i8, ptr %873, i64 %880
  %882 = getelementptr inbounds i8, ptr %881, i64 1
  %883 = load i8, ptr %882, align 1, !tbaa !131
  %884 = and i8 %883, 1
  %885 = zext nneg i8 %884 to i32
  br label %886

886:                                              ; preds = %879, %874
  %887 = phi i32 [ %878, %874 ], [ %885, %879 ]
  %888 = icmp eq i32 %887, 0
  %889 = select i1 %888, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %861, ptr noundef %786, i64 noundef %868, i32 noundef %889) #7
  br label %890

890:                                              ; preds = %886, %864
  call void @Perl_av_push(ptr noundef %852, ptr noundef %861) #7
  %891 = add nsw i32 %857, -1
  %892 = icmp eq i32 %857, 0
  br i1 %892, label %925, label %856, !llvm.loop !247

893:                                              ; preds = %841
  %894 = call ptr @Perl_newSVsv(ptr noundef nonnull %757) #7
  %895 = call ptr @Perl_sv_2mortal(ptr noundef %894) #7
  %896 = load i32, ptr %13, align 4, !tbaa !207
  %897 = icmp eq i32 %896, 1
  br i1 %897, label %898, label %899

898:                                              ; preds = %893
  call void @Perl_sv_catpvn_flags(ptr noundef %895, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #7
  br label %925

899:                                              ; preds = %893
  call void @Perl_sv_catpvn_flags(ptr noundef %895, ptr noundef nonnull @.str.12, i64 noundef 2, i32 noundef 2) #7
  %900 = load i32, ptr %13, align 4, !tbaa !207
  %901 = add nsw i32 %900, -2
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds %struct.he, ptr %778, i64 0, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !170
  %905 = getelementptr inbounds %struct.hek, ptr %904, i64 0, i32 1
  %906 = load i32, ptr %905, align 4, !tbaa !192
  %907 = icmp eq i32 %906, -2
  %908 = getelementptr inbounds %struct.hek, ptr %904, i64 0, i32 2
  br i1 %907, label %909, label %914

909:                                              ; preds = %899
  %910 = load ptr, ptr %908, align 4, !tbaa !120
  %911 = getelementptr inbounds %struct.sv, ptr %910, i64 0, i32 2
  %912 = load i32, ptr %911, align 4, !tbaa !178
  %913 = and i32 %912, 536870912
  br label %921

914:                                              ; preds = %899
  %915 = sext i32 %906 to i64
  %916 = getelementptr inbounds i8, ptr %908, i64 %915
  %917 = getelementptr inbounds i8, ptr %916, i64 1
  %918 = load i8, ptr %917, align 1, !tbaa !131
  %919 = and i8 %918, 1
  %920 = zext nneg i8 %919 to i32
  br label %921

921:                                              ; preds = %914, %909
  %922 = phi i32 [ %913, %909 ], [ %920, %914 ]
  %923 = icmp eq i32 %922, 0
  %924 = select i1 %923, i32 16384, i32 32768
  call void @Perl_sv_catpvn_flags(ptr noundef %895, ptr noundef nonnull %786, i64 noundef %902, i32 noundef %924) #7
  br label %925

925:                                              ; preds = %890, %845, %898, %921
  %926 = phi ptr [ %895, %898 ], [ %895, %921 ], [ %852, %845 ], [ %852, %890 ]
  call fastcc void @S_mro_gather_and_rename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %836, ptr noundef null, ptr noundef %926) #8
  br label %927

927:                                              ; preds = %789, %795, %925, %831, %827, %799, %801, %777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  %928 = load ptr, ptr %778, align 8, !tbaa !120
  %929 = icmp eq ptr %928, null
  br i1 %929, label %760, label %777, !llvm.loop !248

930:                                              ; preds = %762, %748, %731, %745, %317
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_ename_delete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_ename_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mro_method_changed_in(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !249 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %50, label %6, !prof !250

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = load ptr, ptr %0, align 8, !tbaa !124
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !126
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !131
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16, !prof !250

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %12, i64 36
  %18 = load i32, ptr %17, align 4, !tbaa !144
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %32, label %20, !prof !250

20:                                               ; preds = %16
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %26, label %22, !prof !250

22:                                               ; preds = %20
  %23 = icmp slt i32 %18, -1
  br i1 %23, label %24, label %29, !prof !250

24:                                               ; preds = %22
  %25 = getelementptr inbounds ptr, ptr %14, i64 1
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %14, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %14, %22 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  br label %32

32:                                               ; preds = %16, %29
  %33 = phi ptr [ %31, %29 ], [ null, %16 ]
  %34 = getelementptr i8, ptr %12, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !144
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %62, label %37, !prof !250

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %43, label %39, !prof !250

39:                                               ; preds = %37
  %40 = icmp slt i32 %35, -1
  br i1 %40, label %41, label %46, !prof !250

41:                                               ; preds = %39
  %42 = getelementptr inbounds ptr, ptr %14, i64 1
  br label %43

43:                                               ; preds = %37, %41
  %44 = phi ptr [ %42, %41 ], [ %14, %37 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %14, %39 ], [ %45, %43 ]
  %48 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !192
  br label %62

50:                                               ; preds = %1
  %51 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !131
  %54 = load ptr, ptr %0, align 8, !tbaa !124
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !126
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !131
  br label %78

60:                                               ; preds = %6
  %61 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  br label %78

62:                                               ; preds = %32, %46
  %63 = phi i32 [ %49, %46 ], [ 0, %32 ]
  %64 = load ptr, ptr @PL_isarev, align 8, !tbaa !120
  %65 = getelementptr i8, ptr %12, i64 36
  %66 = load i32, ptr %65, align 4, !tbaa !144
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70, !prof !250

68:                                               ; preds = %62
  %69 = load ptr, ptr %14, align 8, !tbaa !120
  br label %78

70:                                               ; preds = %62
  %71 = icmp slt i32 %66, -1
  br i1 %71, label %72, label %75, !prof !250

72:                                               ; preds = %70
  %73 = getelementptr inbounds ptr, ptr %14, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !120
  br label %78

75:                                               ; preds = %70
  %76 = icmp eq i32 %66, -1
  %77 = select i1 %76, ptr null, ptr %14, !prof !250
  br label %78

78:                                               ; preds = %60, %50, %75, %68, %72
  %79 = phi ptr [ %14, %68 ], [ %14, %72 ], [ null, %60 ], [ %59, %50 ], [ %14, %75 ]
  %80 = phi i64 [ %11, %68 ], [ %11, %72 ], [ %11, %60 ], [ %56, %50 ], [ %11, %75 ]
  %81 = phi ptr [ %8, %68 ], [ %8, %72 ], [ %8, %60 ], [ %53, %50 ], [ %8, %75 ]
  %82 = phi ptr [ %64, %68 ], [ %64, %72 ], [ %61, %60 ], [ %51, %50 ], [ %64, %75 ]
  %83 = phi i32 [ %63, %68 ], [ %63, %72 ], [ 0, %60 ], [ 0, %50 ], [ %63, %75 ]
  %84 = phi ptr [ %33, %68 ], [ %33, %72 ], [ null, %60 ], [ null, %50 ], [ %33, %75 ]
  %85 = phi ptr [ %69, %68 ], [ %74, %72 ], [ null, %60 ], [ null, %50 ], [ %77, %75 ]
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2
  %87 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %87)
  %88 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %89 = getelementptr ptr, ptr %81, i64 %80
  %90 = getelementptr i8, ptr %89, i64 36
  %91 = load i32, ptr %90, align 4, !tbaa !144
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %95, label %93, !prof !250

93:                                               ; preds = %78
  %94 = icmp slt i32 %91, -1
  br i1 %94, label %103, label %112, !prof !250

95:                                               ; preds = %78
  %96 = load ptr, ptr %79, align 8, !tbaa !120
  %97 = getelementptr inbounds %struct.hek, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !192
  %99 = getelementptr inbounds %struct.hek, ptr %96, i64 0, i32 2
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  br label %120

103:                                              ; preds = %93
  %104 = getelementptr inbounds ptr, ptr %79, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !120
  %106 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !192
  %108 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %108, i64 %109
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  br label %120

112:                                              ; preds = %93
  %113 = getelementptr inbounds %struct.hek, ptr %79, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !192
  %115 = getelementptr inbounds %struct.hek, ptr %79, i64 0, i32 2
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = icmp ne i32 %91, -1
  tail call void @llvm.assume(i1 %119)
  br label %120

120:                                              ; preds = %95, %112, %103
  %121 = phi i64 [ %100, %95 ], [ %116, %112 ], [ %109, %103 ]
  %122 = phi ptr [ %102, %95 ], [ %118, %112 ], [ %111, %103 ]
  %123 = phi ptr [ %96, %95 ], [ %79, %112 ], [ %105, %103 ]
  %124 = load i8, ptr %122, align 1, !tbaa !131
  %125 = and i8 %124, 1
  %126 = zext nneg i8 %125 to i32
  %127 = load i32, ptr %123, align 4, !tbaa !194
  %128 = tail call ptr @Perl_hv_common(ptr noundef %82, ptr noundef null, ptr noundef nonnull %86, i64 noundef %121, i32 noundef %126, i32 noundef 32, ptr noundef null, i32 noundef %127) #7
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !251

130:                                              ; preds = %120
  %131 = load ptr, ptr %128, align 8, !tbaa !120
  br label %132

132:                                              ; preds = %120, %130
  %133 = phi ptr [ %131, %130 ], [ null, %120 ]
  %134 = icmp eq ptr %84, null
  br i1 %134, label %135, label %136, !prof !250

135:                                              ; preds = %132
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #7
  br label %136

136:                                              ; preds = %135, %132
  %137 = load ptr, ptr %88, align 8, !tbaa !131
  %138 = load ptr, ptr %0, align 8, !tbaa !124
  %139 = getelementptr inbounds %struct.xpvhv, ptr %138, i64 0, i32 3
  %140 = load i64, ptr %139, align 8, !tbaa !126
  %141 = getelementptr ptr, ptr %137, i64 %140
  %142 = getelementptr ptr, ptr %141, i64 5
  %143 = load ptr, ptr %142, align 8, !tbaa !137
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147, !prof !252

145:                                              ; preds = %136
  %146 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #8
  br label %147

147:                                              ; preds = %136, %145
  %148 = phi ptr [ %146, %145 ], [ %143, %136 ]
  %149 = getelementptr inbounds %struct.mro_meta, ptr %148, i64 0, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !140
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 4, !tbaa !140
  %152 = load i32, ptr %2, align 4, !tbaa !147
  %153 = and i32 %152, 1048576
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157, !prof !253

155:                                              ; preds = %147
  %156 = load ptr, ptr %0, align 8, !tbaa !124
  store ptr null, ptr %156, align 8, !tbaa !210
  br label %157

157:                                              ; preds = %155, %147
  %158 = icmp eq i32 %83, 9
  br i1 %158, label %159, label %162, !prof !254

159:                                              ; preds = %157
  %160 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(10) @.str.6) #10
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162, !prof !255

162:                                              ; preds = %159, %157
  %163 = icmp eq ptr %133, null
  br i1 %163, label %210, label %164, !prof !256

164:                                              ; preds = %162
  %165 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %133, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167, !prof !257

167:                                              ; preds = %164, %159
  %168 = load i32, ptr @PL_sub_generation, align 4, !tbaa !207
  %169 = add i32 %168, 1
  store i32 %169, ptr @PL_sub_generation, align 4, !tbaa !207
  br label %221

170:                                              ; preds = %164
  %171 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %133) #7
  %172 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %133, i32 noundef 0) #7
  %173 = icmp eq ptr %172, null
  br i1 %173, label %210, label %174, !prof !258

174:                                              ; preds = %170, %207
  %175 = phi ptr [ %208, %207 ], [ %172, %170 ]
  %176 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %175) #7
  %177 = tail call ptr @Perl_gv_stashsv(ptr noundef %176, i32 noundef 0) #7
  %178 = icmp eq ptr %177, null
  br i1 %178, label %207, label %179, !prof !259, !llvm.loop !260

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.hv, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !131
  %182 = load ptr, ptr %177, align 8, !tbaa !124
  %183 = getelementptr inbounds %struct.xpvhv, ptr %182, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !126
  %185 = getelementptr ptr, ptr %181, i64 %184
  %186 = getelementptr ptr, ptr %185, i64 5
  %187 = load ptr, ptr %186, align 8, !tbaa !137
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %191, !prof !259

189:                                              ; preds = %179
  %190 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %177) #8
  br label %191

191:                                              ; preds = %179, %189
  %192 = phi ptr [ %190, %189 ], [ %187, %179 ]
  %193 = getelementptr inbounds %struct.mro_meta, ptr %192, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !139
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 8, !tbaa !139
  %196 = getelementptr inbounds %struct.mro_meta, ptr %192, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !208
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199, !prof !257

199:                                              ; preds = %191
  tail call void @Perl_hv_clear(ptr noundef nonnull %197) #7
  br label %200

200:                                              ; preds = %199, %191
  %201 = getelementptr inbounds %struct.hv, ptr %177, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !147
  %203 = and i32 %202, 1048576
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207, !prof !257

205:                                              ; preds = %200
  %206 = load ptr, ptr %177, align 8, !tbaa !124
  store ptr null, ptr %206, align 8, !tbaa !210
  br label %207

207:                                              ; preds = %200, %205, %174
  %208 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %133, i32 noundef 0) #7
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %174, !prof !261

210:                                              ; preds = %207, %170, %162
  %211 = load i32, ptr %2, align 4, !tbaa !147
  %212 = or i32 %211, 268435456
  store i32 %212, ptr %2, align 4, !tbaa !147
  %213 = load ptr, ptr %88, align 8, !tbaa !131
  %214 = load ptr, ptr %0, align 8, !tbaa !124
  %215 = getelementptr inbounds %struct.xpvhv, ptr %214, i64 0, i32 3
  %216 = load i64, ptr %215, align 8, !tbaa !126
  %217 = getelementptr ptr, ptr %213, i64 %216
  %218 = getelementptr i8, ptr %217, i64 60
  %219 = load i32, ptr %218, align 4, !tbaa !209
  %220 = and i32 %219, -3
  store i32 %220, ptr %218, align 4, !tbaa !209
  br label %221

221:                                              ; preds = %210, %167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_mro_set_mro(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !106 {
  %3 = tail call ptr @Perl_mro_get_from_name(ptr noundef %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, ptr noundef %1) #7
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @Perl_mro_set_private_data(ptr noundef nonnull %0, ptr noundef %8, ptr noundef nonnull %12) #8
  br label %19

19:                                               ; preds = %17, %14, %10
  store ptr %3, ptr %7, align 8, !tbaa !119
  store ptr null, ptr %11, align 8, !tbaa !121
  %20 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !139
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !139
  %23 = getelementptr inbounds %struct.mro_meta, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !208
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @Perl_hv_clear(ptr noundef nonnull %24) #7
  br label %27

27:                                               ; preds = %19, %26, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_boot_core_mro() local_unnamed_addr #0 !prof !132 {
  tail call void @Perl_mro_register(ptr noundef nonnull @dfs_alg) #8
  %1 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_mro_method_changed_in, ptr noundef nonnull @Perl_boot_core_mro.file, ptr noundef nonnull @.str.16, i32 noundef 0) #7
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @XS_mro_method_changed_in(ptr noundef %0) #0 !prof !262 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !120
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !120
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !120
  %5 = load i32, ptr %3, align 4, !tbaa !207
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !120
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15, !prof !156

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.17) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !120
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = tail call ptr @Perl_gv_stashsv(ptr noundef %21, i32 noundef 0) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !153

24:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef %21) #7
  br label %25

25:                                               ; preds = %24, %17
  tail call void @Perl_mro_method_changed_in(ptr noundef %22) #8
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !120
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  %28 = getelementptr inbounds ptr, ptr %27, i64 -1
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!105}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!36 = !{ptr @Perl_mro_set_private_data, ptr @Perl_newSV_type, i64 1}
!37 = !{ptr @Perl_mro_set_private_data, ptr @Perl_mro_set_private_data, i64 1}
!38 = !{ptr @Perl_mro_set_private_data, ptr @Perl_hv_common, i64 2}
!39 = !{ptr @Perl_mro_set_private_data, ptr @Perl_croak, i64 1}
!40 = !{ptr @Perl_mro_register, ptr @Perl_newSVuv, i64 1}
!41 = !{ptr @Perl_mro_register, ptr @Perl_hv_common, i64 1}
!42 = !{ptr @Perl_mro_meta_init, ptr @Perl_safesyscalloc, i64 83}
!43 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_croak, i64 3}
!44 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_mro_meta_init, i64 4}
!45 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_mro_get_private_data, i64 2}
!46 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newSV_type, i64 66}
!47 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_sv_2mortal, i64 87}
!48 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newSVhek, i64 68}
!49 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_av_push, i64 54}
!50 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_hv_common, i64 102}
!51 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_gv_stashsv, i64 33}
!52 = !{ptr @S_mro_get_linear_isa_dfs, ptr @S_mro_get_linear_isa_dfs, i64 30}
!53 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_sv_sethek, i64 8}
!54 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newHVhv, i64 21}
!55 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_av_extend, i64 21}
!56 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_newSVsv, i64 1}
!57 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_hv_common_key_len, i64 22}
!58 = !{ptr @S_mro_get_linear_isa_dfs, ptr @Perl_mro_set_private_data, i64 44}
!59 = !{ptr @Perl_mro_get_linear_isa, ptr @Perl_croak, i64 2}
!60 = !{ptr @Perl_mro_get_linear_isa, ptr @Perl_mro_meta_init, i64 1}
!61 = !{ptr @Perl_mro_get_linear_isa, ptr @S_SvREFCNT_inc, i64 2}
!62 = !{ptr @Perl_mro_get_linear_isa, ptr @S_SvREFCNT_dec, i64 1}
!63 = !{ptr @Perl_mro_get_linear_isa, ptr @Perl_newSV_type, i64 1}
!64 = !{ptr @Perl_mro_get_linear_isa, ptr @Perl_hv_common, i64 17}
!65 = !{ptr @Perl_mro_get_linear_isa, ptr @Perl_hv_common_key_len, i64 1}
!66 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!67 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_croak, i64 2}
!68 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_mro_meta_init, i64 3}
!69 = !{ptr @Perl_mro_isa_changed_in, ptr @S_SvREFCNT_dec, i64 9}
!70 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_sv_2mortal, i64 11}
!71 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_common, i64 101}
!72 = !{ptr @Perl_mro_isa_changed_in, ptr @strcmp, i64 1}
!73 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_common_key_len, i64 5}
!74 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_clear, i64 2}
!75 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iterinit, i64 5}
!76 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_newSV_type, i64 2}
!77 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iternext_flags, i64 10}
!78 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_hv_iterkeysv, i64 3}
!79 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_gv_stashsv, i64 3}
!80 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_mro_get_linear_isa, i64 27}
!81 = !{ptr @Perl_mro_isa_changed_in, ptr @Perl_sv_upgrade, i64 8}
!82 = !{ptr @Perl_mro_isa_changed_in, ptr @S_mro_clean_isarev, i64 8}
!83 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iterinit, i64 7}
!84 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iternext_flags, i64 26}
!85 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_iterkey, i64 20}
!86 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_common_key_len, i64 46}
!87 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_common, i64 12}
!88 = !{ptr @S_mro_clean_isarev, ptr @Perl_hv_placeholders_get, i64 5}
!89 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_common, i64 1886}
!90 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_croak, i64 1}
!91 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_mro_meta_init, i64 82}
!92 = !{ptr @Perl_mro_method_changed_in, ptr @strcmp, i64 12}
!93 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_common_key_len, i64 95}
!94 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iterinit, i64 94}
!95 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iternext_flags, i64 188}
!96 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_iterkeysv, i64 94}
!97 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_gv_stashsv, i64 94}
!98 = !{ptr @Perl_mro_method_changed_in, ptr @Perl_hv_clear, i64 1}
!99 = !{ptr @Perl_boot_core_mro, ptr @Perl_mro_register, i64 1}
!100 = !{ptr @Perl_boot_core_mro, ptr @Perl_newXS_flags, i64 1}
!101 = !{ptr @XS_mro_method_changed_in, ptr @Perl_croak_xs_usage, i64 1}
!102 = !{ptr @XS_mro_method_changed_in, ptr @Perl_gv_stashsv, i64 27}
!103 = !{ptr @XS_mro_method_changed_in, ptr @Perl_croak, i64 1}
!104 = !{ptr @XS_mro_method_changed_in, ptr @Perl_mro_method_changed_in, i64 27}
!105 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!106 = !{!"function_entry_count", i64 0}
!107 = !{!108, !109, i64 0}
!108 = !{!"mro_meta", !109, i64 0, !109, i64 8, !109, i64 16, !112, i64 24, !112, i64 28, !109, i64 32, !109, i64 40, !109, i64 48, !112, i64 56}
!109 = !{!"any pointer", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!"int", !110, i64 0}
!113 = !{!114, !109, i64 8}
!114 = !{!"mro_alg", !109, i64 0, !109, i64 8, !115, i64 16, !115, i64 18, !112, i64 20}
!115 = !{!"short", !110, i64 0}
!116 = !{!114, !115, i64 16}
!117 = !{!114, !115, i64 18}
!118 = !{!114, !112, i64 20}
!119 = !{!108, !109, i64 32}
!120 = !{!109, !109, i64 0}
!121 = !{!108, !109, i64 8}
!122 = !{!"function_entry_count", i64 43}
!123 = !{!"branch_weights", i32 44, i32 1}
!124 = !{!125, !109, i64 0}
!125 = !{!"hv", !109, i64 0, !112, i64 8, !112, i64 12, !110, i64 16}
!126 = !{!127, !128, i64 24}
!127 = !{!"xpvhv", !109, i64 0, !110, i64 8, !128, i64 16, !128, i64 24}
!128 = !{!"long", !110, i64 0}
!129 = !{!130, !109, i64 0}
!130 = !{!"sv", !109, i64 0, !112, i64 8, !112, i64 12, !110, i64 16}
!131 = !{!110, !110, i64 0}
!132 = !{!"function_entry_count", i64 1}
!133 = !{!"branch_weights", i32 1, i32 2}
!134 = !{!"mro_core.c:S_SvREFCNT_dec_NN"}
!135 = !{!130, !112, i64 8}
!136 = !{!"function_entry_count", i64 83}
!137 = !{!138, !109, i64 32}
!138 = !{!"xpvhv_aux", !110, i64 0, !109, i64 8, !109, i64 16, !112, i64 24, !112, i64 28, !109, i64 32, !112, i64 40, !112, i64 44, !112, i64 48, !112, i64 52}
!139 = !{!108, !112, i64 24}
!140 = !{!108, !112, i64 28}
!141 = !{!"function_entry_count", i64 254}
!142 = !{!"mro_core.c:S_mro_get_linear_isa_dfs"}
!143 = !{!"branch_weights", i32 1, i32 255}
!144 = !{!138, !112, i64 28}
!145 = !{!"branch_weights", i32 255, i32 1}
!146 = !{!"branch_weights", i32 1, i32 -1}
!147 = !{!125, !112, i64 12}
!148 = !{!"branch_weights", i32 0, i32 -2147483648}
!149 = !{!"branch_weights", i32 3, i32 253}
!150 = !{!"branch_weights", i32 65025, i32 511}
!151 = !{!"branch_weights", i32 44, i32 212}
!152 = !{!"branch_weights", i32 17, i32 28}
!153 = !{!"branch_weights", i32 1, i32 28}
!154 = !{!155, !112, i64 12}
!155 = !{!"gv", !109, i64 0, !112, i64 8, !112, i64 12, !110, i64 16}
!156 = !{!"branch_weights", i32 28, i32 1}
!157 = !{!"branch_weights", i32 57, i32 1}
!158 = !{!159, !109, i64 40}
!159 = !{!"gp", !109, i64 0, !109, i64 8, !109, i64 16, !112, i64 24, !112, i64 28, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !112, i64 64, !112, i64 67, !109, i64 72}
!160 = !{!161, !109, i64 0}
!161 = !{!"av", !109, i64 0, !112, i64 8, !112, i64 12, !110, i64 16}
!162 = !{!163, !128, i64 16}
!163 = !{!"xpvav", !109, i64 0, !110, i64 8, !128, i64 16, !128, i64 24, !109, i64 32}
!164 = !{!"branch_weights", i32 1, i32 223}
!165 = !{!"branch_weights", i32 1, i32 39}
!166 = !{!"branch_weights", i32 4, i32 36}
!167 = !{!"branch_weights", i32 28, i32 12}
!168 = !{!"branch_weights", i32 12427568, i32 2135056080}
!169 = !{!"branch_weights", i32 5, i32 10}
!170 = !{!171, !109, i64 8}
!171 = !{!"he", !109, i64 0, !109, i64 8, !110, i64 16}
!172 = !{!"branch_weights", i32 191, i32 33}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = !{!"branch_weights", i32 1, i32 27}
!176 = !{!108, !109, i64 40}
!177 = !{!"branch_weights", i32 1, i32 215}
!178 = !{!130, !112, i64 12}
!179 = !{!"branch_weights", i32 1, i32 30}
!180 = !{!"branch_weights", i32 30, i32 1}
!181 = !{!"branch_weights", i32 215, i32 25}
!182 = distinct !{!182, !174}
!183 = !{!"branch_weights", i32 223, i32 89}
!184 = distinct !{!184, !174}
!185 = !{!161, !112, i64 12}
!186 = !{!"function_entry_count", i64 219}
!187 = !{!"branch_weights", i32 1, i32 220}
!188 = !{!114, !109, i64 0}
!189 = !{!"branch_weights", i32 220, i32 1}
!190 = distinct !{!190, !174}
!191 = distinct !{!191, !174}
!192 = !{!193, !112, i64 4}
!193 = !{!"hek", !112, i64 0, !112, i64 4, !110, i64 8}
!194 = !{!193, !112, i64 0}
!195 = !{!"mro_core.c:S_SvREFCNT_inc"}
!196 = !{!"function_entry_count", i64 8}
!197 = !{!"mro_core.c:S_SvREFCNT_dec"}
!198 = !{!"branch_weights", i32 9, i32 1}
!199 = !{!"branch_weights", i32 1, i32 9}
!200 = !{!"function_entry_count", i64 25}
!201 = !{!"branch_weights", i32 1, i32 26}
!202 = !{!"branch_weights", i32 2, i32 25}
!203 = !{!"branch_weights", i32 26, i32 1}
!204 = !{!"branch_weights", i32 20, i32 7}
!205 = !{!"branch_weights", i32 24, i32 3}
!206 = !{!"branch_weights", i32 3, i32 1}
!207 = !{!112, !112, i64 0}
!208 = !{!108, !109, i64 16}
!209 = !{!138, !112, i64 52}
!210 = !{!211, !109, i64 0}
!211 = !{!"xpvmg", !109, i64 0, !110, i64 8, !128, i64 16, !110, i64 24, !110, i64 32, !110, i64 40}
!212 = !{!"branch_weights", i32 1, i32 3}
!213 = !{!"branch_weights", i32 1, i32 191}
!214 = distinct !{!214, !174}
!215 = !{!"branch_weights", i32 191, i32 1}
!216 = !{!"branch_weights", i32 7, i32 1}
!217 = !{!"branch_weights", i32 191, i32 257}
!218 = distinct !{!218, !174}
!219 = distinct !{!219, !174}
!220 = !{!"branch_weights", i32 1, i32 207}
!221 = !{!"branch_weights", i32 28, i32 7}
!222 = !{!"branch_weights", i32 207, i32 65}
!223 = distinct !{!223, !174}
!224 = !{!"branch_weights", i32 1, i32 7}
!225 = !{!"mro_core.c:S_mro_clean_isarev"}
!226 = !{!"branch_weights", i32 1, i32 143}
!227 = distinct !{!227, !174}
!228 = !{!127, !128, i64 16}
!229 = !{!"branch_weights", i32 143, i32 305}
!230 = !{!155, !109, i64 0}
!231 = distinct !{!231, !174}
!232 = distinct !{!232, !174}
!233 = !{!"mro_core.c:S_mro_gather_and_rename"}
!234 = !{!235, !128, i64 16}
!235 = !{!"xpv", !109, i64 0, !110, i64 8, !128, i64 16, !110, i64 24}
!236 = !{!128, !128, i64 0}
!237 = distinct !{!237, !174}
!238 = distinct !{!238, !174}
!239 = !{}
!240 = distinct !{!240, !174}
!241 = distinct !{!241, !174}
!242 = distinct !{!242, !174}
!243 = !{!159, !109, i64 32}
!244 = distinct !{!244, !174}
!245 = distinct !{!245, !174}
!246 = distinct !{!246, !174}
!247 = distinct !{!247, !174}
!248 = distinct !{!248, !174}
!249 = !{!"function_entry_count", i64 1886}
!250 = !{!"branch_weights", i32 1, i32 1887}
!251 = !{!"branch_weights", i32 1793, i32 95}
!252 = !{!"branch_weights", i32 81, i32 1807}
!253 = !{!"branch_weights", i32 1887, i32 1}
!254 = !{!"branch_weights", i32 12, i32 1876}
!255 = !{!"branch_weights", i32 5, i32 8}
!256 = !{!"branch_weights", i32 1789, i32 95}
!257 = !{!"branch_weights", i32 95, i32 1}
!258 = !{!"branch_weights", i32 1, i32 189}
!259 = !{!"branch_weights", i32 1, i32 95}
!260 = distinct !{!260, !174}
!261 = !{!"branch_weights", i32 189, i32 1}
!262 = !{!"function_entry_count", i64 27}
