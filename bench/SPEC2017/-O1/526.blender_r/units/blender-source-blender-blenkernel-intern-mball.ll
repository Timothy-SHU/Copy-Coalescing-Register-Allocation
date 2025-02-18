; ModuleID = 'blender/source/blender/blenkernel/intern/mball.c'
source_filename = "blender/source/blender/blenkernel/intern/mball.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.SceneBaseIter = type { ptr, ptr, [4 x [4 x float]], ptr, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.intlists = type { ptr, ptr }
%struct.intlist = type { i32, ptr }
%struct.vertex = type { [3 x float], [3 x float] }
%struct.cube = type { i32, i32, i32, [8 x ptr] }
%struct.process = type { float, i32, ptr, ptr, ptr, float, float, i32, ptr, %struct.vertices, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.ListBase }
%struct.vertices = type { i32, i32, ptr }
%struct.pgn_elements = type { ptr, ptr, ptr }
%struct.octal_node = type { [8 x ptr], ptr, %struct.ListBase, float, float, float, float, float, float, float, float, float, i32, i32, i32 }
%struct.corner = type { i32, i32, i32, [3 x float], float, ptr }
%struct.edgelist = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cubes = type { %struct.cube, ptr }
%struct.octal_tree = type { ptr, i32, i32, i16 }
%struct.ml_pointer = type { ptr, ptr, ptr }
%struct.centerlist = type { i32, i32, i32, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"metaelem\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mb boundbox\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"MballOrco\00", align 1
@cubetable = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"mainb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mbaldisp\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mballverts\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mballnors\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"metaball_octal_tree\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"metaball_octal_node\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ml_pointer\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"octal_node\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"newpgn\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"mbproc->centers\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"mbproc->corners\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"mbproc->edges\00", align 1
@makecubetable.is_done = internal unnamed_addr global i1 false, align 1
@corner1 = internal unnamed_addr constant [12 x i32] [i32 0, i32 2, i32 0, i32 1, i32 4, i32 6, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3], align 16
@corner2 = internal unnamed_addr constant [12 x i32] [i32 1, i32 3, i32 2, i32 3, i32 5, i32 7, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7], align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"mball_intlist\00", align 1
@rightface = internal unnamed_addr constant [12 x i32] [i32 0, i32 3, i32 4, i32 0, i32 2, i32 1, i32 1, i32 5, i32 2, i32 5, i32 4, i32 3], align 16
@leftface = internal unnamed_addr constant [12 x i32] [i32 2, i32 0, i32 0, i32 5, i32 1, i32 3, i32 4, i32 1, i32 4, i32 2, i32 3, i32 5], align 16
@__const.find_first_points.index = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 -1], align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"addtovertices\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"vertindex\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_unlink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 2, !tbaa !34
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !46
  br label %18

18:                                               ; preds = %14, %8
  store ptr null, ptr %11, align 8, !tbaa !45
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %8, !llvm.loop !50

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 2, !tbaa !34
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = zext nneg i16 %3 to i64
  %7 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !46
  br label %18

18:                                               ; preds = %14, %8
  store ptr null, ptr %11, align 8, !tbaa !45
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %8, !llvm.loop !50

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @BKE_free_animdata(ptr noundef %0) #14
  store ptr null, ptr %22, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %33) #14
  %34 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @BKE_displist_free(ptr noundef nonnull %34) #14
  br label %38

38:                                               ; preds = %37, %32
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mball_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16973, ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 13
  %5 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 13, i64 2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 13, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !55
  store float 1.000000e+00, ptr %4, align 4, !tbaa !55
  %7 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 10
  store i16 1, ptr %7, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 15
  store float 0x3FD99999A0000000, ptr %8, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 16
  store float 0x3FC99999A0000000, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 17
  store float 0x3FE3333340000000, ptr %10, align 4, !tbaa !59
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mball_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 2
  %4 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr %5(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 9
  %11 = load i16, ptr %10, align 2, !tbaa !34
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %1 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void @id_us_plus(ptr noundef %17) #14
  %18 = add nuw nsw i64 %14, 1
  %19 = load i16, ptr %10, align 2, !tbaa !34
  %20 = sext i16 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !60

22:                                               ; preds = %13, %1
  %23 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 18
  store ptr null, ptr %24, align 8, !tbaa !62
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_make_local(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @G, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %107, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %107, label %103

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %14, %35
  %19 = phi ptr [ %38, %35 ], [ %16, %14 ]
  %20 = phi i8 [ %37, %35 ], [ 0, %14 ]
  %21 = phi i8 [ %36, %35 ], [ 0, %14 ]
  %22 = icmp eq i8 %20, 0
  %23 = icmp eq i8 %21, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, i8 1, i8 %21
  %34 = select i1 %32, i8 %20, i8 1
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i8 [ %21, %25 ], [ %33, %29 ]
  %37 = phi i8 [ %20, %25 ], [ %34, %29 ]
  %38 = load ptr, ptr %19, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %18, !llvm.loop !72

40:                                               ; preds = %35, %18
  %41 = phi i8 [ %21, %18 ], [ %36, %35 ]
  %42 = phi i8 [ %20, %18 ], [ %37, %35 ]
  %43 = icmp ne i8 %41, 0
  br label %44

44:                                               ; preds = %40, %14
  %45 = phi i1 [ false, %14 ], [ %43, %40 ]
  %46 = phi i8 [ 0, %14 ], [ %42, %40 ]
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #14
  %50 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %107, label %103

53:                                               ; preds = %44
  %54 = icmp ne i8 %46, 0
  %55 = select i1 %45, i1 %54, i1 false
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  %57 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #14
  %58 = getelementptr inbounds %struct.MetaBall, ptr %57, i64 0, i32 2
  %59 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %58, ptr noundef nonnull %59) #14
  %60 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = tail call ptr %60(ptr noundef %62) #14
  %64 = getelementptr inbounds %struct.MetaBall, ptr %57, i64 0, i32 6
  store ptr %63, ptr %64, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.MetaBall, ptr %57, i64 0, i32 9
  %66 = load i16, ptr %65, align 2, !tbaa !34
  %67 = icmp sgt i16 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %56, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %56 ]
  %70 = load ptr, ptr %64, align 8, !tbaa !44
  %71 = getelementptr inbounds ptr, ptr %70, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  tail call void @id_us_plus(ptr noundef %72) #14
  %73 = add nuw nsw i64 %69, 1
  %74 = load i16, ptr %65, align 2, !tbaa !34
  %75 = sext i16 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %68, label %77, !llvm.loop !60

77:                                               ; preds = %68, %56
  %78 = getelementptr inbounds %struct.MetaBall, ptr %57, i64 0, i32 4
  store ptr null, ptr %78, align 8, !tbaa !61
  %79 = getelementptr inbounds %struct.MetaBall, ptr %57, i64 0, i32 18
  store ptr null, ptr %79, align 8, !tbaa !62
  %80 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 6
  store i32 0, ptr %80, align 4, !tbaa !66
  %81 = load ptr, ptr %3, align 8, !tbaa !65
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %81, ptr noundef %57) #14
  %82 = load ptr, ptr @G, align 8, !tbaa !63
  %83 = getelementptr inbounds %struct.Main, ptr %82, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %77, %100
  %87 = phi ptr [ %101, %100 ], [ %84, %77 ]
  %88 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !71
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  store ptr %57, ptr %88, align 8, !tbaa !67
  %96 = load i32, ptr %80, align 4, !tbaa !66
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %80, align 4, !tbaa !66
  %98 = load i32, ptr %7, align 4, !tbaa !66
  %99 = add nsw i32 %98, -1
  store i32 %99, ptr %7, align 4, !tbaa !66
  br label %100

100:                                              ; preds = %86, %95, %91
  %101 = load ptr, ptr %87, align 8, !tbaa !45
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %86, !llvm.loop !73

103:                                              ; preds = %49, %10
  %104 = phi ptr [ %12, %10 ], [ %51, %49 ]
  %105 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 9
  %106 = load i16, ptr %105, align 2, !tbaa !34
  tail call void @extern_local_matarar(ptr noundef nonnull %104, i16 noundef signext %106) #14
  br label %107

107:                                              ; preds = %100, %103, %77, %49, %10, %53, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mball_element_add(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 104, ptr noundef nonnull @.str) #14
  %5 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 10
  tail call void @unit_qt(ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 14
  store float 2.000000e+00, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 16
  store float 2.000000e+00, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 4
  store i16 16, ptr %8, align 2, !tbaa !77
  switch i32 %1, label %36 [
    i32 0, label %9
    i32 4, label %14
    i32 5, label %19
    i32 6, label %24
    i32 7, label %29
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 0, ptr %10, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float 1.000000e+00, ptr %11, align 4, !tbaa !79
  %12 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %12, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %34

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 4, ptr %15, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float 1.000000e+00, ptr %16, align 4, !tbaa !79
  %17 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %34

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 5, ptr %20, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float 1.000000e+00, ptr %21, align 4, !tbaa !79
  %22 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %34

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 6, ptr %25, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  store float 0x3FF3333340000000, ptr %26, align 4, !tbaa !81
  %27 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float 0x3FE99999A0000000, ptr %27, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  br label %34

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 3
  store i16 7, ptr %30, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 13
  store float 1.000000e+00, ptr %31, align 4, !tbaa !79
  %32 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 12
  store float 1.000000e+00, ptr %32, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.MetaElem, ptr %4, i64 0, i32 11
  br label %34

34:                                               ; preds = %9, %14, %19, %24, %29
  %35 = phi ptr [ %33, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %9 ]
  store float 1.000000e+00, ptr %35, align 4, !tbaa !55
  br label %36

36:                                               ; preds = %34, %2
  %37 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %4) #14
  ret ptr %4
}

declare void @unit_qt(ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_texspace_calc(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.1) #14
  store ptr %9, ptr %4, align 8, !tbaa !82
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %4, align 8, !tbaa !82
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float 0x46293E5940000000, ptr %13, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %2, align 4, !tbaa !55
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %3, align 4, !tbaa !55
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %23

20:                                               ; preds = %34, %23
  %21 = load ptr, ptr %24, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23, !llvm.loop !84

23:                                               ; preds = %10, %20
  %24 = phi ptr [ %21, %20 ], [ %18, %10 ]
  %25 = phi i8 [ %29, %20 ], [ 0, %10 ]
  %26 = getelementptr inbounds %struct.DispList, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i8 %25, i8 1
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %20, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.DispList, ptr %24, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %37, %34 ], [ %27, %31 ]
  %36 = phi ptr [ %38, %34 ], [ %33, %31 ]
  %37 = add nsw i32 %35, -1
  call void @minmax_v3v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %36) #14
  %38 = getelementptr inbounds float, ptr %36, i64 3
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %20, label %34, !llvm.loop !88

40:                                               ; preds = %20
  %41 = icmp eq i8 %29, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %10, %40
  store float -1.000000e+00, ptr %12, align 4, !tbaa !55
  store float -1.000000e+00, ptr %13, align 4, !tbaa !55
  store float -1.000000e+00, ptr %2, align 4, !tbaa !55
  store float 1.000000e+00, ptr %14, align 4, !tbaa !55
  store float 1.000000e+00, ptr %15, align 4, !tbaa !55
  store float 1.000000e+00, ptr %3, align 4, !tbaa !55
  br label %43

43:                                               ; preds = %42, %40
  call void @BKE_boundbox_init_from_minmax(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mball_make_orco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fadd float %5, %7
  %9 = fmul float %8, 5.000000e-01
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = fadd float %12, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !55
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !55
  %22 = fadd float %19, %21
  %23 = fmul float %22, 5.000000e-01
  %24 = fsub float %21, %23
  %25 = load ptr, ptr %1, align 8, !tbaa !89
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !85
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 12
  %31 = tail call ptr %26(i64 noundef %30, ptr noundef nonnull @.str.2) #14
  %32 = load i32, ptr %27, align 8, !tbaa !85
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.DispList, ptr %25, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i32 [ %41, %37 ], [ %32, %34 ]
  %39 = phi ptr [ %55, %37 ], [ %36, %34 ]
  %40 = phi ptr [ %56, %37 ], [ %31, %34 ]
  %41 = add nsw i32 %38, -1
  %42 = load float, ptr %39, align 4, !tbaa !55
  %43 = fsub float %42, %9
  %44 = fdiv float %43, %10
  store float %44, ptr %40, align 4, !tbaa !55
  %45 = getelementptr inbounds float, ptr %39, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !55
  %47 = fsub float %46, %16
  %48 = fdiv float %47, %17
  %49 = getelementptr inbounds float, ptr %40, i64 1
  store float %48, ptr %49, align 4, !tbaa !55
  %50 = getelementptr inbounds float, ptr %39, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !55
  %52 = fsub float %51, %23
  %53 = fdiv float %52, %24
  %54 = getelementptr inbounds float, ptr %40, i64 2
  store float %53, ptr %54, align 4, !tbaa !55
  %55 = getelementptr inbounds float, ptr %39, i64 3
  %56 = getelementptr inbounds float, ptr %40, i64 3
  %57 = icmp eq i32 %41, 0
  br i1 %57, label %58, label %37, !llvm.loop !90

58:                                               ; preds = %37, %2
  ret ptr %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_mball_is_basis(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %4 = tail call ptr @__ctype_b_loc() #16
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = shl i64 %3, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !91
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %5, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !92
  %14 = and i16 %13, 2048
  %15 = icmp eq i16 %14, 0
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mball_is_basis_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [66 x i8], align 16
  %6 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %8 = call i32 @BLI_split_name_num(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %7, i8 noundef zeroext 46) #14
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %10 = call i32 @BLI_split_name_num(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %9, i8 noundef zeroext 46) #14
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #15
  %16 = tail call ptr @__ctype_b_loc() #16
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = shl i64 %15, 32
  %19 = add i64 %18, -4294967296
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !91
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i16, ptr %17, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !92
  %26 = and i16 %25, 2048
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %2, %13
  %30 = phi i8 [ %28, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i8 %30
}

declare i32 @BLI_split_name_num(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_properties_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca [66 x i8], align 16
  %10 = alloca %struct.SceneBaseIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %0, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #14
  %13 = load ptr, ptr @G, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 46
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %17 = call i32 @BLI_split_name_num(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %16, i8 noundef zeroext 46) #14
  %18 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %19 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 15
  %23 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 16
  %24 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 17
  %25 = getelementptr inbounds %struct.MetaBall, ptr %12, i64 0, i32 7
  br label %26

26:                                               ; preds = %21, %50
  %27 = load ptr, ptr %5, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !95
  %30 = icmp ne i16 %29, 5
  %31 = icmp eq ptr %27, %1
  %32 = or i1 %31, %30
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 4, i64 2
  %35 = call i32 @BLI_split_name_num(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %34, i8 noundef zeroext 46) #14
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load ptr, ptr %5, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = load float, ptr %22, align 4, !tbaa !57
  %43 = getelementptr inbounds %struct.MetaBall, ptr %41, i64 0, i32 15
  store float %42, ptr %43, align 4, !tbaa !57
  %44 = load float, ptr %23, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.MetaBall, ptr %41, i64 0, i32 16
  store float %44, ptr %45, align 8, !tbaa !58
  %46 = load float, ptr %24, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.MetaBall, ptr %41, i64 0, i32 17
  store float %46, ptr %47, align 4, !tbaa !59
  %48 = load i8, ptr %25, align 8, !tbaa !96
  %49 = getelementptr inbounds %struct.MetaBall, ptr %41, i64 0, i32 7
  store i8 %48, ptr %49, align 8, !tbaa !96
  br label %50

50:                                               ; preds = %38, %33, %26
  %51 = call i32 @BKE_scene_base_iter_next(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %26, !llvm.loop !97

53:                                               ; preds = %50, %2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret void
}

declare i32 @BKE_scene_base_iter_next(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_mball_basis_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [66 x i8], align 16
  %9 = alloca [66 x i8], align 16
  %10 = alloca %struct.SceneBaseIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %0, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #14
  %11 = load ptr, ptr @G, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 46
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %15 = call i32 @BLI_split_name_num(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %14, i8 noundef zeroext 46) #14
  %16 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %17 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %2, %44
  %20 = phi ptr [ %45, %44 ], [ %1, %2 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !95
  %24 = icmp eq i16 %23, 5
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !98
  %29 = and i32 %28, 512
  %30 = icmp ne i32 %29, 0
  %31 = icmp eq ptr %21, %1
  %32 = or i1 %31, %30
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  %35 = call i32 @BLI_split_name_num(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %34, i8 noundef zeroext 46) #14
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %8) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, ptr %7, align 4, !tbaa !100
  %40 = load i32, ptr %6, align 4, !tbaa !100
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 8, !tbaa !45
  store i32 %39, ptr %6, align 4, !tbaa !100
  br label %44

44:                                               ; preds = %38, %42, %33, %25, %19
  %45 = phi ptr [ %20, %25 ], [ %43, %42 ], [ %20, %38 ], [ %20, %33 ], [ %20, %19 ]
  %46 = call i32 @BKE_scene_base_iter_next(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %19, !llvm.loop !101

48:                                               ; preds = %44, %2
  %49 = phi ptr [ %1, %2 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_cubeTable_free() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %21
  %2 = phi i64 [ 0, %0 ], [ %22, %21 ]
  %3 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1, %18
  %7 = phi ptr [ %9, %18 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.intlists, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = load ptr, ptr %7, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.intlist, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %13) #14
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %12, !llvm.loop !107

18:                                               ; preds = %12, %6
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %19(ptr noundef nonnull %7) #14
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %6, !llvm.loop !108

21:                                               ; preds = %18, %1
  store ptr null, ptr %3, align 8, !tbaa !45
  %22 = add nuw nsw i64 %2, 1
  %23 = icmp eq i64 %22, 256
  br i1 %23, label %24, label %1, !llvm.loop !109

24:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_polygonize(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.vertex, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.vertex, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [12 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca %struct.cube, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [4 x [4 x float]], align 16
  %19 = alloca [4 x [4 x float]], align 16
  %20 = alloca [3 x float], align 4
  %21 = alloca i32, align 4
  %22 = alloca [66 x i8], align 16
  %23 = alloca %struct.SceneBaseIter, align 8
  %24 = alloca [66 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca [4 x [4 x float]], align 16
  %27 = alloca [4 x [4 x float]], align 16
  %28 = alloca [4 x [4 x float]], align 16
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca [66 x i8], align 16
  %35 = alloca [66 x i8], align 16
  %36 = alloca %struct.SceneBaseIter, align 8
  %37 = alloca %struct.process, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %37) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %37, i8 0, i64 144, i1 false)
  %38 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #14
  store ptr %1, ptr %29, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %34) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %35) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %36) #14
  %40 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %41 = call i32 @BLI_split_name_num(ptr noundef nonnull %34, ptr noundef nonnull %32, ptr noundef nonnull %40, i8 noundef zeroext 46) #14
  %42 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 1
  store i32 0, ptr %42, align 4, !tbaa !110
  %43 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %36, ptr noundef nonnull %29, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %44 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %36, ptr noundef nonnull %29, i32 noundef 1, ptr noundef nonnull %30, ptr noundef nonnull %31) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %91, label %46

46:                                               ; preds = %4, %88
  %47 = load ptr, ptr %31, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !95
  %50 = icmp eq i16 %49, 5
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = icmp eq ptr %47, %2
  br i1 %52, label %60, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 4, i64 2
  %55 = call i32 @BLI_split_name_num(ptr noundef nonnull %35, ptr noundef nonnull %33, ptr noundef nonnull %54, i8 noundef zeroext 46) #14
  %56 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %34) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load ptr, ptr %31, align 8, !tbaa !45
  br label %60

60:                                               ; preds = %51, %58
  %61 = phi ptr [ %59, %58 ], [ %47, %51 ]
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.MetaBall, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.MetaBall, ptr %63, i64 0, i32 2
  %68 = select i1 %66, ptr %67, ptr %65
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  br label %70

70:                                               ; preds = %60, %53
  %71 = phi ptr [ null, %53 ], [ %69, %60 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %42, align 4, !tbaa !110
  br label %75

75:                                               ; preds = %73, %84
  %76 = phi ptr [ %86, %84 ], [ %71, %73 ]
  %77 = phi i32 [ %85, %84 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.MetaElem, ptr %76, i64 0, i32 4
  %79 = load i16, ptr %78, align 2, !tbaa !77
  %80 = and i16 %79, 8
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = add nsw i32 %77, 1
  store i32 %83, ptr %42, align 4, !tbaa !110
  br label %84

84:                                               ; preds = %82, %75
  %85 = phi i32 [ %83, %82 ], [ %77, %75 ]
  %86 = load ptr, ptr %76, align 8, !tbaa !113
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %75, !llvm.loop !114

88:                                               ; preds = %84, %70, %46
  %89 = call i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef nonnull %36, ptr noundef nonnull %29, i32 noundef 1, ptr noundef nonnull %30, ptr noundef nonnull %31) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %46, !llvm.loop !115

91:                                               ; preds = %88, %4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %36) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #14
  %92 = load i32, ptr %42, align 4, !tbaa !110
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %2184, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %0, align 4, !tbaa !116
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 7
  %99 = load i8, ptr %98, align 8, !tbaa !96
  %100 = icmp eq i8 %99, 3
  br i1 %100, label %2184, label %101

101:                                              ; preds = %97, %94
  %102 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !118
  %103 = and i16 %102, 3
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 7
  %107 = load i8, ptr %106, align 8, !tbaa !96
  %108 = icmp eq i8 %107, 2
  br i1 %108, label %2184, label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 17
  %111 = load float, ptr %110, align 4, !tbaa !59
  store float %111, ptr %37, align 8, !tbaa !119
  %112 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %113 = sext i32 %92 to i64
  %114 = shl nsw i64 %113, 3
  %115 = call ptr %112(i64 noundef %114, ptr noundef nonnull @.str.3) #14
  %116 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 2
  store ptr %115, ptr %116, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  store ptr %1, ptr %15, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %23) #14
  %117 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %19, ptr noundef nonnull %117) #14
  %118 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %117) #14
  %119 = call i32 @BLI_split_name_num(ptr noundef nonnull %22, ptr noundef nonnull %21, ptr noundef nonnull %40, i8 noundef zeroext 46) #14
  %120 = call i32 @BKE_scene_base_iter_next(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef nonnull %15, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %121 = call i32 @BKE_scene_base_iter_next(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %109
  %124 = getelementptr inbounds [4 x [4 x float]], ptr %27, i64 0, i64 3
  %125 = getelementptr inbounds [4 x [4 x float]], ptr %27, i64 0, i64 3, i64 1
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %27, i64 0, i64 3, i64 2
  %127 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 17
  %128 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %129 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %130 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %131 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %132 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %133 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %134 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %135 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %136 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %137 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %138 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %139 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  br label %146

140:                                              ; preds = %480, %109
  %141 = load i32, ptr %42, align 4, !tbaa !110
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %484

143:                                              ; preds = %140
  %144 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %145 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  br label %490

146:                                              ; preds = %123, %480
  %147 = phi i32 [ 0, %123 ], [ %481, %480 ]
  %148 = load ptr, ptr %17, align 8, !tbaa !45
  %149 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 3
  %150 = load i16, ptr %149, align 8, !tbaa !95
  %151 = icmp eq i16 %150, 5
  br i1 %151, label %152, label %480

152:                                              ; preds = %146
  %153 = icmp eq ptr %148, %2
  br i1 %153, label %154, label %170

154:                                              ; preds = %152
  %155 = load ptr, ptr %16, align 8, !tbaa !45
  %156 = getelementptr inbounds %struct.Base, ptr %155, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !98
  %158 = and i32 %157, 512
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load ptr, ptr %38, align 8, !tbaa !67
  %162 = getelementptr inbounds %struct.MetaBall, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !61
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %163, align 8, !tbaa !89
  br label %187

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.MetaBall, ptr %161, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !121
  br label %187

170:                                              ; preds = %154, %152
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  %171 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 4, i64 2
  %172 = call i32 @BLI_split_name_num(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %171, i8 noundef zeroext 46) #14
  %173 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24) #15
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load ptr, ptr %17, align 8, !tbaa !45
  %177 = getelementptr inbounds %struct.Object, ptr %176, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !67
  %179 = getelementptr inbounds %struct.MetaBall, ptr %178, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !61
  %181 = icmp eq ptr %180, null
  %182 = getelementptr inbounds %struct.MetaBall, ptr %178, i64 0, i32 2
  %183 = select i1 %181, ptr %182, ptr %180
  %184 = load ptr, ptr %183, align 8, !tbaa !89
  br label %185

185:                                              ; preds = %175, %170
  %186 = phi ptr [ null, %170 ], [ %184, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %24) #14
  br label %187

187:                                              ; preds = %185, %167, %165
  %188 = phi ptr [ %166, %165 ], [ %169, %167 ], [ %186, %185 ]
  %189 = load ptr, ptr %17, align 8, !tbaa !45
  %190 = getelementptr inbounds %struct.Object, ptr %189, i64 0, i32 47
  %191 = call zeroext i8 @has_zero_axis_m4(ptr noundef nonnull %190) #14
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %187
  %194 = load ptr, ptr %17, align 8, !tbaa !45
  %195 = getelementptr inbounds %struct.Object, ptr %194, i64 0, i32 9
  %196 = load ptr, ptr %195, align 8, !tbaa !122
  %197 = icmp eq ptr %196, null
  br i1 %197, label %219, label %198

198:                                              ; preds = %193, %203
  %199 = phi ptr [ %205, %203 ], [ %196, %193 ]
  %200 = getelementptr inbounds %struct.Object, ptr %199, i64 0, i32 47
  %201 = call zeroext i8 @has_zero_axis_m4(ptr noundef nonnull %200) #14
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.Object, ptr %199, i64 0, i32 9
  %205 = load ptr, ptr %204, align 8, !tbaa !122
  %206 = icmp eq ptr %205, null
  br i1 %206, label %219, label %198, !llvm.loop !123

207:                                              ; preds = %198, %187
  %208 = icmp eq ptr %188, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %207, %209
  %210 = phi i32 [ %212, %209 ], [ 0, %207 ]
  %211 = phi ptr [ %213, %209 ], [ %188, %207 ]
  %212 = add i32 %210, 1
  %213 = load ptr, ptr %211, align 8, !tbaa !113
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %209, !llvm.loop !124

215:                                              ; preds = %209, %207
  %216 = phi i32 [ 0, %207 ], [ %212, %209 ]
  %217 = load i32, ptr %42, align 4, !tbaa !110
  %218 = sub i32 %217, %216
  store i32 %218, ptr %42, align 4, !tbaa !110
  br label %480

219:                                              ; preds = %203, %193
  %220 = icmp eq ptr %188, null
  br i1 %220, label %480, label %221

221:                                              ; preds = %219, %476
  %222 = phi i32 [ %477, %476 ], [ %147, %219 ]
  %223 = phi ptr [ %478, %476 ], [ %188, %219 ]
  %224 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 4
  %225 = load i16, ptr %224, align 2, !tbaa !77
  %226 = and i16 %225, 8
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %476

228:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #14
  %229 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 16
  %230 = load float, ptr %229, align 8, !tbaa !76
  %231 = fcmp ogt float %230, 1.000000e+01
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store float 1.000000e+01, ptr %229, align 8, !tbaa !76
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 10
  call void @quat_to_mat4(ptr noundef nonnull %28, ptr noundef nonnull %234) #14
  call void @unit_m4(ptr noundef nonnull %27) #14
  %235 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 7
  %236 = load float, ptr %235, align 8, !tbaa !125
  store float %236, ptr %124, align 16, !tbaa !55
  %237 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 8
  %238 = load float, ptr %237, align 4, !tbaa !126
  store float %238, ptr %125, align 4, !tbaa !55
  %239 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 9
  %240 = load float, ptr %239, align 8, !tbaa !127
  store float %240, ptr %126, align 8, !tbaa !55
  call void @mul_m4_m4m4(ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #14
  %241 = load ptr, ptr %127, align 8, !tbaa !128
  %242 = icmp eq ptr %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %233
  %244 = load i32, ptr %128, align 8, !tbaa !129
  %245 = icmp slt i32 %244, 16280
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = add nsw i32 %244, 104
  %248 = getelementptr inbounds %struct.pgn_elements, ptr %241, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !130
  %250 = sext i32 %244 to i64
  %251 = getelementptr inbounds i8, ptr %249, i64 %250
  store i32 %247, ptr %128, align 8, !tbaa !129
  br label %262

252:                                              ; preds = %243, %233
  %253 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %254 = call ptr %253(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %254, ptr %127, align 8, !tbaa !128
  %255 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %256 = call ptr %255(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %257 = load ptr, ptr %127, align 8, !tbaa !128
  %258 = getelementptr inbounds %struct.pgn_elements, ptr %257, i64 0, i32 2
  store ptr %256, ptr %258, align 8, !tbaa !130
  call void @BLI_addtail(ptr noundef nonnull %129, ptr noundef %257) #14
  store i32 104, ptr %130, align 8, !tbaa !129
  %259 = load ptr, ptr %127, align 8, !tbaa !128
  %260 = getelementptr inbounds %struct.pgn_elements, ptr %259, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !130
  br label %262

262:                                              ; preds = %246, %252
  %263 = phi ptr [ %251, %246 ], [ %261, %252 ]
  %264 = load ptr, ptr %116, align 8, !tbaa !120
  %265 = sext i32 %222 to i64
  %266 = getelementptr inbounds ptr, ptr %264, i64 %265
  store ptr %263, ptr %266, align 8, !tbaa !45
  %267 = load ptr, ptr %116, align 8, !tbaa !120
  %268 = getelementptr inbounds ptr, ptr %267, i64 %265
  %269 = load ptr, ptr %268, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %269, ptr noundef nonnull align 8 dereferenceable(104) %223, i64 104, i1 false), !tbaa.struct !132
  %270 = load ptr, ptr %127, align 8, !tbaa !128
  %271 = icmp eq ptr %270, null
  br i1 %271, label %281, label %272

272:                                              ; preds = %262
  %273 = load i32, ptr %131, align 8, !tbaa !129
  %274 = icmp slt i32 %273, 16280
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = add nsw i32 %273, 104
  %277 = getelementptr inbounds %struct.pgn_elements, ptr %270, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !130
  %279 = sext i32 %273 to i64
  %280 = getelementptr inbounds i8, ptr %278, i64 %279
  store i32 %276, ptr %131, align 8, !tbaa !129
  br label %291

281:                                              ; preds = %272, %262
  %282 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %283 = call ptr %282(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %283, ptr %127, align 8, !tbaa !128
  %284 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %285 = call ptr %284(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %286 = load ptr, ptr %127, align 8, !tbaa !128
  %287 = getelementptr inbounds %struct.pgn_elements, ptr %286, i64 0, i32 2
  store ptr %285, ptr %287, align 8, !tbaa !130
  call void @BLI_addtail(ptr noundef nonnull %132, ptr noundef %286) #14
  store i32 104, ptr %133, align 8, !tbaa !129
  %288 = load ptr, ptr %127, align 8, !tbaa !128
  %289 = getelementptr inbounds %struct.pgn_elements, ptr %288, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !130
  br label %291

291:                                              ; preds = %275, %281
  %292 = phi ptr [ %280, %275 ], [ %290, %281 ]
  %293 = load ptr, ptr %116, align 8, !tbaa !120
  %294 = getelementptr inbounds ptr, ptr %293, i64 %265
  %295 = load ptr, ptr %294, align 8, !tbaa !45
  %296 = getelementptr inbounds %struct.MetaElem, ptr %295, i64 0, i32 2
  store ptr %292, ptr %296, align 8, !tbaa !133
  %297 = load ptr, ptr %127, align 8, !tbaa !128
  %298 = icmp eq ptr %297, null
  br i1 %298, label %308, label %299

299:                                              ; preds = %291
  %300 = load i32, ptr %134, align 8, !tbaa !129
  %301 = icmp slt i32 %300, 16320
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = add nsw i32 %300, 64
  %304 = getelementptr inbounds %struct.pgn_elements, ptr %297, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !130
  %306 = sext i32 %300 to i64
  %307 = getelementptr inbounds i8, ptr %305, i64 %306
  store i32 %303, ptr %134, align 8, !tbaa !129
  br label %318

308:                                              ; preds = %299, %291
  %309 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %310 = call ptr %309(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %310, ptr %127, align 8, !tbaa !128
  %311 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %312 = call ptr %311(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %313 = load ptr, ptr %127, align 8, !tbaa !128
  %314 = getelementptr inbounds %struct.pgn_elements, ptr %313, i64 0, i32 2
  store ptr %312, ptr %314, align 8, !tbaa !130
  call void @BLI_addtail(ptr noundef nonnull %135, ptr noundef %313) #14
  store i32 64, ptr %136, align 8, !tbaa !129
  %315 = load ptr, ptr %127, align 8, !tbaa !128
  %316 = getelementptr inbounds %struct.pgn_elements, ptr %315, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !130
  br label %318

318:                                              ; preds = %302, %308
  %319 = phi ptr [ %307, %302 ], [ %317, %308 ]
  %320 = load ptr, ptr %127, align 8, !tbaa !128
  %321 = icmp eq ptr %320, null
  br i1 %321, label %331, label %322

322:                                              ; preds = %318
  %323 = load i32, ptr %137, align 8, !tbaa !129
  %324 = icmp slt i32 %323, 16320
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = add nsw i32 %323, 64
  %327 = getelementptr inbounds %struct.pgn_elements, ptr %320, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !130
  %329 = sext i32 %323 to i64
  %330 = getelementptr inbounds i8, ptr %328, i64 %329
  store i32 %326, ptr %137, align 8, !tbaa !129
  br label %341

331:                                              ; preds = %322, %318
  %332 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %333 = call ptr %332(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %333, ptr %127, align 8, !tbaa !128
  %334 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %335 = call ptr %334(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %336 = load ptr, ptr %127, align 8, !tbaa !128
  %337 = getelementptr inbounds %struct.pgn_elements, ptr %336, i64 0, i32 2
  store ptr %335, ptr %337, align 8, !tbaa !130
  call void @BLI_addtail(ptr noundef nonnull %138, ptr noundef %336) #14
  store i32 64, ptr %139, align 8, !tbaa !129
  %338 = load ptr, ptr %127, align 8, !tbaa !128
  %339 = getelementptr inbounds %struct.pgn_elements, ptr %338, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !130
  br label %341

341:                                              ; preds = %325, %331
  %342 = phi ptr [ %330, %325 ], [ %340, %331 ]
  %343 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #14
  %344 = load ptr, ptr %17, align 8, !tbaa !45
  %345 = getelementptr inbounds %struct.Object, ptr %344, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %27, ptr noundef nonnull %18, ptr noundef nonnull %345) #14
  call void @mul_m4_m4m4(ptr noundef %319, ptr noundef nonnull %27, ptr noundef nonnull %26) #14
  %346 = call zeroext i8 @invert_m4_m4(ptr noundef %342, ptr noundef %319) #14
  %347 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 14
  %348 = load float, ptr %347, align 8, !tbaa !74
  %349 = fmul float %348, %348
  %350 = load ptr, ptr %116, align 8, !tbaa !120
  %351 = getelementptr inbounds ptr, ptr %350, i64 %265
  %352 = load ptr, ptr %351, align 8, !tbaa !45
  %353 = getelementptr inbounds %struct.MetaElem, ptr %352, i64 0, i32 15
  store float %349, ptr %353, align 4, !tbaa !134
  %354 = getelementptr inbounds %struct.MetaElem, ptr %352, i64 0, i32 18
  store ptr %319, ptr %354, align 8, !tbaa !135
  %355 = load ptr, ptr %351, align 8, !tbaa !45
  %356 = getelementptr inbounds %struct.MetaElem, ptr %355, i64 0, i32 19
  store ptr %342, ptr %356, align 8, !tbaa !136
  %357 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 3
  %358 = load i16, ptr %357, align 8, !tbaa !78
  %359 = icmp eq i16 %358, 6
  %360 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 11
  %361 = load float, ptr %360, align 4, !tbaa !81
  br i1 %359, label %367, label %362

362:                                              ; preds = %341
  %363 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 12
  %364 = load float, ptr %363, align 8, !tbaa !80
  %365 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 13
  %366 = load float, ptr %365, align 4, !tbaa !79
  br label %375

367:                                              ; preds = %341
  %368 = fmul float %361, %361
  %369 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 12
  %370 = load float, ptr %369, align 8, !tbaa !80
  %371 = fmul float %370, %370
  %372 = getelementptr inbounds %struct.MetaElem, ptr %223, i64 0, i32 13
  %373 = load float, ptr %372, align 4, !tbaa !79
  %374 = fmul float %373, %373
  br label %375

375:                                              ; preds = %367, %362
  %376 = phi float [ %368, %367 ], [ %361, %362 ]
  %377 = phi float [ %371, %367 ], [ %364, %362 ]
  %378 = phi float [ %374, %367 ], [ %366, %362 ]
  %379 = load ptr, ptr %351, align 8, !tbaa !45
  %380 = getelementptr inbounds %struct.MetaElem, ptr %379, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !133
  %382 = fneg float %376
  %383 = fneg float %377
  %384 = fneg float %378
  store float %382, ptr %381, align 4, !tbaa !55
  %385 = getelementptr inbounds float, ptr %381, i64 1
  store float %383, ptr %385, align 4, !tbaa !55
  %386 = getelementptr inbounds float, ptr %381, i64 2
  store float %384, ptr %386, align 4, !tbaa !55
  %387 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 1
  store float %376, ptr %387, align 4, !tbaa !55
  %388 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 1, i64 1
  store float %383, ptr %388, align 4, !tbaa !55
  %389 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 1, i64 2
  store float %384, ptr %389, align 4, !tbaa !55
  %390 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 2
  store float %376, ptr %390, align 4, !tbaa !55
  %391 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 2, i64 1
  store float %377, ptr %391, align 4, !tbaa !55
  %392 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 2, i64 2
  store float %384, ptr %392, align 4, !tbaa !55
  %393 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 3
  store float %382, ptr %393, align 4, !tbaa !55
  %394 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 3, i64 1
  store float %377, ptr %394, align 4, !tbaa !55
  %395 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 3, i64 2
  store float %384, ptr %395, align 4, !tbaa !55
  %396 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 4
  store float %382, ptr %396, align 4, !tbaa !55
  %397 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 4, i64 1
  store float %383, ptr %397, align 4, !tbaa !55
  %398 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 4, i64 2
  store float %378, ptr %398, align 4, !tbaa !55
  %399 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 5
  store float %376, ptr %399, align 4, !tbaa !55
  %400 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 5, i64 1
  store float %383, ptr %400, align 4, !tbaa !55
  %401 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 5, i64 2
  store float %378, ptr %401, align 4, !tbaa !55
  %402 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 6
  store float %376, ptr %402, align 4, !tbaa !55
  %403 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 6, i64 1
  store float %377, ptr %403, align 4, !tbaa !55
  %404 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 6, i64 2
  store float %378, ptr %404, align 4, !tbaa !55
  %405 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 7
  store float %382, ptr %405, align 4, !tbaa !55
  %406 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 7, i64 1
  store float %377, ptr %406, align 4, !tbaa !55
  %407 = getelementptr inbounds [8 x [3 x float]], ptr %381, i64 0, i64 7, i64 2
  store float %378, ptr %407, align 4, !tbaa !55
  br label %414

408:                                              ; preds = %414
  %409 = load ptr, ptr %116, align 8, !tbaa !120
  %410 = getelementptr inbounds ptr, ptr %409, i64 %265
  %411 = load ptr, ptr %410, align 8, !tbaa !45
  %412 = getelementptr inbounds %struct.MetaElem, ptr %411, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !133
  br label %424

414:                                              ; preds = %375, %414
  %415 = phi i64 [ 0, %375 ], [ %422, %414 ]
  %416 = load ptr, ptr %116, align 8, !tbaa !120
  %417 = getelementptr inbounds ptr, ptr %416, i64 %265
  %418 = load ptr, ptr %417, align 8, !tbaa !45
  %419 = getelementptr inbounds %struct.MetaElem, ptr %418, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !133
  %421 = getelementptr inbounds [8 x [3 x float]], ptr %420, i64 0, i64 %415
  call void @mul_m4_v3(ptr noundef %319, ptr noundef %421) #14
  %422 = add nuw nsw i64 %415, 1
  %423 = icmp eq i64 %422, 8
  br i1 %423, label %408, label %414, !llvm.loop !137

424:                                              ; preds = %408, %424
  %425 = phi i64 [ 0, %408 ], [ %450, %424 ]
  %426 = phi float [ 0x47EFF933C0000000, %408 ], [ %449, %424 ]
  %427 = phi float [ 0x47EFF933C0000000, %408 ], [ %447, %424 ]
  %428 = phi float [ 0x47EFF933C0000000, %408 ], [ %445, %424 ]
  %429 = phi float [ 0xC7EFF933C0000000, %408 ], [ %443, %424 ]
  %430 = phi float [ 0xC7EFF933C0000000, %408 ], [ %439, %424 ]
  %431 = phi float [ 0xC7EFF933C0000000, %408 ], [ %435, %424 ]
  %432 = getelementptr inbounds [8 x [3 x float]], ptr %413, i64 0, i64 %425
  %433 = load float, ptr %432, align 4, !tbaa !55
  %434 = fcmp ogt float %433, %431
  %435 = select i1 %434, float %433, float %431
  %436 = getelementptr inbounds [8 x [3 x float]], ptr %413, i64 0, i64 %425, i64 1
  %437 = load float, ptr %436, align 4, !tbaa !55
  %438 = fcmp ogt float %437, %430
  %439 = select i1 %438, float %437, float %430
  %440 = getelementptr inbounds [8 x [3 x float]], ptr %413, i64 0, i64 %425, i64 2
  %441 = load float, ptr %440, align 4, !tbaa !55
  %442 = fcmp ogt float %441, %429
  %443 = select i1 %442, float %441, float %429
  %444 = fcmp olt float %433, %428
  %445 = select i1 %444, float %433, float %428
  %446 = fcmp olt float %437, %427
  %447 = select i1 %446, float %437, float %427
  %448 = fcmp olt float %441, %426
  %449 = select i1 %448, float %441, float %426
  %450 = add nuw nsw i64 %425, 1
  %451 = icmp eq i64 %450, 8
  br i1 %451, label %452, label %424, !llvm.loop !138

452:                                              ; preds = %424
  %453 = load float, ptr %347, align 8, !tbaa !74
  %454 = fsub float %445, %453
  %455 = load ptr, ptr %116, align 8, !tbaa !120
  %456 = getelementptr inbounds ptr, ptr %455, i64 %265
  %457 = load ptr, ptr %456, align 8, !tbaa !45
  %458 = getelementptr inbounds %struct.MetaElem, ptr %457, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !133
  store float %454, ptr %459, align 4, !tbaa !55
  %460 = load float, ptr %347, align 8, !tbaa !74
  %461 = fsub float %447, %460
  %462 = getelementptr inbounds [3 x float], ptr %459, i64 0, i64 1
  store float %461, ptr %462, align 4, !tbaa !55
  %463 = load float, ptr %347, align 8, !tbaa !74
  %464 = fsub float %449, %463
  %465 = getelementptr inbounds [3 x float], ptr %459, i64 0, i64 2
  store float %464, ptr %465, align 4, !tbaa !55
  %466 = load float, ptr %347, align 8, !tbaa !74
  %467 = fadd float %435, %466
  %468 = getelementptr inbounds [8 x [3 x float]], ptr %459, i64 0, i64 6
  store float %467, ptr %468, align 4, !tbaa !55
  %469 = load float, ptr %347, align 8, !tbaa !74
  %470 = fadd float %439, %469
  %471 = getelementptr inbounds [8 x [3 x float]], ptr %459, i64 0, i64 6, i64 1
  store float %470, ptr %471, align 4, !tbaa !55
  %472 = load float, ptr %347, align 8, !tbaa !74
  %473 = fadd float %443, %472
  %474 = getelementptr inbounds [8 x [3 x float]], ptr %459, i64 0, i64 6, i64 2
  store float %473, ptr %474, align 4, !tbaa !55
  %475 = add nsw i32 %222, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #14
  br label %476

476:                                              ; preds = %452, %221
  %477 = phi i32 [ %222, %221 ], [ %475, %452 ]
  %478 = load ptr, ptr %223, align 8, !tbaa !113
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %221, !llvm.loop !139

480:                                              ; preds = %476, %219, %215, %146
  %481 = phi i32 [ %147, %215 ], [ %147, %146 ], [ %147, %219 ], [ %477, %476 ]
  %482 = call i32 @BKE_scene_base_iter_next(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %140, label %146, !llvm.loop !140

484:                                              ; preds = %551, %140
  %485 = phi float [ 0.000000e+00, %140 ], [ %563, %551 ]
  %486 = load i32, ptr %42, align 4
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %580

488:                                              ; preds = %484
  %489 = fmul float %485, 2.000000e+00
  br label %568

490:                                              ; preds = %143, %551
  %491 = phi i64 [ 0, %143 ], [ %564, %551 ]
  %492 = phi float [ 0.000000e+00, %143 ], [ %563, %551 ]
  %493 = load ptr, ptr %116, align 8, !tbaa !120
  %494 = getelementptr inbounds ptr, ptr %493, i64 %491
  %495 = load ptr, ptr %494, align 8, !tbaa !45
  %496 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 7
  %497 = load float, ptr %496, align 8, !tbaa !125
  %498 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 14
  %499 = load float, ptr %498, align 8, !tbaa !74
  %500 = fadd float %497, %499
  %501 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 11
  %502 = load float, ptr %501, align 4, !tbaa !81
  %503 = fadd float %500, %502
  store float %503, ptr %20, align 4, !tbaa !55
  %504 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 8
  %505 = load float, ptr %504, align 4, !tbaa !126
  %506 = fadd float %499, %505
  %507 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 12
  %508 = load float, ptr %507, align 8, !tbaa !80
  %509 = fadd float %506, %508
  store float %509, ptr %144, align 4, !tbaa !55
  %510 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 9
  %511 = load float, ptr %510, align 8, !tbaa !127
  %512 = fadd float %499, %511
  %513 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 13
  %514 = load float, ptr %513, align 4, !tbaa !79
  %515 = fadd float %512, %514
  store float %515, ptr %145, align 4, !tbaa !55
  %516 = getelementptr inbounds %struct.MetaElem, ptr %495, i64 0, i32 18
  %517 = load ptr, ptr %516, align 8, !tbaa !135
  %518 = icmp eq ptr %517, null
  br i1 %518, label %520, label %519

519:                                              ; preds = %490
  call void @mul_m4_v3(ptr noundef nonnull %517, ptr noundef nonnull %20) #14
  br label %520

520:                                              ; preds = %519, %490
  %521 = load float, ptr %20, align 4, !tbaa !55
  %522 = call float @llvm.fabs.f32(float %521)
  %523 = fcmp ogt float %522, %492
  %524 = select i1 %523, float %522, float %492
  %525 = load float, ptr %144, align 4, !tbaa !55
  %526 = call float @llvm.fabs.f32(float %525)
  %527 = fcmp ogt float %526, %524
  %528 = select i1 %527, float %526, float %524
  %529 = load float, ptr %145, align 4, !tbaa !55
  %530 = call float @llvm.fabs.f32(float %529)
  %531 = fcmp ogt float %530, %528
  %532 = select i1 %531, float %530, float %528
  %533 = load ptr, ptr %116, align 8, !tbaa !120
  %534 = getelementptr inbounds ptr, ptr %533, i64 %491
  %535 = load ptr, ptr %534, align 8, !tbaa !45
  %536 = getelementptr inbounds %struct.MetaElem, ptr %535, i64 0, i32 7
  %537 = load float, ptr %536, align 8, !tbaa !125
  %538 = getelementptr inbounds %struct.MetaElem, ptr %535, i64 0, i32 14
  %539 = load float, ptr %538, align 8, !tbaa !74
  %540 = fsub float %537, %539
  store float %540, ptr %20, align 4, !tbaa !55
  %541 = getelementptr inbounds %struct.MetaElem, ptr %535, i64 0, i32 8
  %542 = load float, ptr %541, align 4, !tbaa !126
  %543 = fsub float %542, %539
  store float %543, ptr %144, align 4, !tbaa !55
  %544 = getelementptr inbounds %struct.MetaElem, ptr %535, i64 0, i32 9
  %545 = load float, ptr %544, align 8, !tbaa !127
  %546 = fsub float %545, %539
  store float %546, ptr %145, align 4, !tbaa !55
  %547 = getelementptr inbounds %struct.MetaElem, ptr %535, i64 0, i32 18
  %548 = load ptr, ptr %547, align 8, !tbaa !135
  %549 = icmp eq ptr %548, null
  br i1 %549, label %551, label %550

550:                                              ; preds = %520
  call void @mul_m4_v3(ptr noundef nonnull %548, ptr noundef nonnull %20) #14
  br label %551

551:                                              ; preds = %550, %520
  %552 = load float, ptr %20, align 4, !tbaa !55
  %553 = call float @llvm.fabs.f32(float %552)
  %554 = fcmp ogt float %553, %532
  %555 = select i1 %554, float %553, float %532
  %556 = load float, ptr %144, align 4, !tbaa !55
  %557 = call float @llvm.fabs.f32(float %556)
  %558 = fcmp ogt float %557, %555
  %559 = select i1 %558, float %557, float %555
  %560 = load float, ptr %145, align 4, !tbaa !55
  %561 = call float @llvm.fabs.f32(float %560)
  %562 = fcmp ogt float %561, %559
  %563 = select i1 %562, float %561, float %559
  %564 = add nuw nsw i64 %491, 1
  %565 = load i32, ptr %42, align 4, !tbaa !110
  %566 = sext i32 %565 to i64
  %567 = icmp slt i64 %564, %566
  br i1 %567, label %490, label %484, !llvm.loop !141

568:                                              ; preds = %488, %568
  %569 = phi i64 [ 0, %488 ], [ %576, %568 ]
  %570 = load ptr, ptr %116, align 8, !tbaa !120
  %571 = getelementptr inbounds ptr, ptr %570, i64 %569
  %572 = load ptr, ptr %571, align 8, !tbaa !45
  %573 = call fastcc float @densfunc(ptr noundef %572, float noundef %489, float noundef %489, float noundef %489)
  %574 = load float, ptr %37, align 8, !tbaa !119
  %575 = fadd float %573, %574
  store float %575, ptr %37, align 8, !tbaa !119
  %576 = add nuw nsw i64 %569, 1
  %577 = load i32, ptr %42, align 4
  %578 = sext i32 %577 to i64
  %579 = icmp slt i64 %576, %578
  br i1 %579, label %568, label %580, !llvm.loop !142

580:                                              ; preds = %568, %484
  %581 = phi i32 [ %486, %484 ], [ %577, %568 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  %582 = add i32 %581, -2
  %583 = icmp ult i32 %582, 63
  br i1 %583, label %584, label %585

584:                                              ; preds = %580
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %37, i32 noundef 1)
  br label %585

585:                                              ; preds = %584, %580
  %586 = load i32, ptr %42, align 4
  %587 = add i32 %586, -65
  %588 = icmp ult i32 %587, 64
  br i1 %588, label %589, label %590

589:                                              ; preds = %585
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %37, i32 noundef 2)
  br label %590

590:                                              ; preds = %589, %585
  %591 = load i32, ptr %42, align 4
  %592 = add i32 %591, -129
  %593 = icmp ult i32 %592, 384
  br i1 %593, label %594, label %595

594:                                              ; preds = %590
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %37, i32 noundef 3)
  br label %595

595:                                              ; preds = %594, %590
  %596 = load i32, ptr %42, align 4
  %597 = add i32 %596, -513
  %598 = icmp ult i32 %597, 512
  br i1 %598, label %599, label %600

599:                                              ; preds = %595
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %37, i32 noundef 4)
  br label %600

600:                                              ; preds = %599, %595
  %601 = load i32, ptr %42, align 4, !tbaa !110
  %602 = icmp sgt i32 %601, 1024
  br i1 %602, label %603, label %604

603:                                              ; preds = %600
  call fastcc void @init_metaball_octal_tree(ptr noundef nonnull %37, i32 noundef 5)
  br label %604

604:                                              ; preds = %603, %600
  %605 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 3
  %606 = load ptr, ptr %605, align 8, !tbaa !143
  %607 = icmp eq ptr %606, null
  br i1 %607, label %657, label %608

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %610 = load float, ptr %609, align 4, !tbaa !55
  %611 = load ptr, ptr %606, align 8, !tbaa !144
  %612 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 6
  %613 = load float, ptr %612, align 4, !tbaa !146
  %614 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 3
  %615 = load float, ptr %614, align 8, !tbaa !148
  %616 = fsub float %613, %615
  %617 = fmul float %616, 0x3EE4F8B580000000
  %618 = fcmp ugt float %610, %617
  br i1 %618, label %619, label %639

619:                                              ; preds = %608
  %620 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !55
  %622 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 7
  %623 = load float, ptr %622, align 8, !tbaa !149
  %624 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 4
  %625 = load float, ptr %624, align 4, !tbaa !150
  %626 = fsub float %623, %625
  %627 = fmul float %626, 0x3EE4F8B580000000
  %628 = fcmp ugt float %621, %627
  br i1 %628, label %629, label %639

629:                                              ; preds = %619
  %630 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 2
  %631 = load float, ptr %630, align 4, !tbaa !55
  %632 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 8
  %633 = load float, ptr %632, align 4, !tbaa !151
  %634 = getelementptr inbounds %struct.octal_node, ptr %611, i64 0, i32 5
  %635 = load float, ptr %634, align 8, !tbaa !152
  %636 = fsub float %633, %635
  %637 = fmul float %636, 0x3EE4F8B580000000
  %638 = fcmp ugt float %631, %637
  br i1 %638, label %657, label %639

639:                                              ; preds = %629, %619, %608
  %640 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %641 = load ptr, ptr %640, align 8, !tbaa !45
  %642 = icmp eq ptr %641, null
  br i1 %642, label %650, label %643

643:                                              ; preds = %639, %643
  %644 = phi ptr [ %648, %643 ], [ %641, %639 ]
  %645 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %646 = getelementptr inbounds %struct.pgn_elements, ptr %644, i64 0, i32 2
  %647 = load ptr, ptr %646, align 8, !tbaa !130
  call void %645(ptr noundef %647) #14
  %648 = load ptr, ptr %644, align 8, !tbaa !45
  %649 = icmp eq ptr %648, null
  br i1 %649, label %650, label %643, !llvm.loop !153

650:                                              ; preds = %643, %639
  call void @BLI_freelistN(ptr noundef nonnull %640) #14
  %651 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %652 = load ptr, ptr %116, align 8, !tbaa !120
  call void %651(ptr noundef %652) #14
  %653 = load ptr, ptr %605, align 8, !tbaa !143
  %654 = load ptr, ptr %653, align 8, !tbaa !144
  call fastcc void @free_metaball_octal_node(ptr noundef %654)
  %655 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %656 = load ptr, ptr %605, align 8, !tbaa !143
  call void %655(ptr noundef %656) #14
  br label %2184

657:                                              ; preds = %629, %604
  %658 = load i32, ptr %0, align 4, !tbaa !116
  %659 = icmp eq i32 %658, 2
  br i1 %659, label %660, label %663

660:                                              ; preds = %657
  %661 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 16
  %662 = load float, ptr %661, align 8, !tbaa !58
  br label %675

663:                                              ; preds = %657
  %664 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 15
  %665 = load float, ptr %664, align 4, !tbaa !57
  %666 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !118
  %667 = and i16 %666, 3
  %668 = icmp eq i16 %667, 0
  br i1 %668, label %675, label %669

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.MetaBall, ptr %39, i64 0, i32 7
  %671 = load i8, ptr %670, align 8, !tbaa !96
  %672 = icmp eq i8 %671, 1
  br i1 %672, label %673, label %675

673:                                              ; preds = %669
  %674 = fmul float %665, 2.000000e+00
  br label %675

675:                                              ; preds = %663, %669, %673, %660
  %676 = phi float [ %662, %660 ], [ %674, %673 ], [ %665, %669 ], [ %665, %663 ]
  %677 = fdiv float %485, %676
  %678 = fadd float %677, 5.000000e-01
  %679 = fptosi float %678 to i32
  %680 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 4
  store ptr @metaball, ptr %680, align 8, !tbaa !154
  %681 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 5
  store float %676, ptr %681, align 8, !tbaa !155
  %682 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 7
  store i32 %679, ptr %682, align 8, !tbaa !156
  %683 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 8
  store ptr null, ptr %683, align 8, !tbaa !157
  %684 = fdiv float %676, 1.440000e+02
  %685 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 6
  store float %684, ptr %685, align 4, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %14) #14
  %686 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 9
  %687 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 9, i32 1
  %688 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 9, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %686, i8 0, i64 16, i1 false)
  %689 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %690 = call ptr %689(i64 noundef 262144, ptr noundef nonnull @.str.13) #14
  %691 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 10
  store ptr %690, ptr %691, align 8, !tbaa !159
  %692 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %693 = call ptr %692(i64 noundef 262144, ptr noundef nonnull @.str.14) #14
  %694 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 11
  store ptr %693, ptr %694, align 8, !tbaa !160
  %695 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %696 = call ptr %695(i64 noundef 524288, ptr noundef nonnull @.str.15) #14
  %697 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 12
  store ptr %696, ptr %697, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #14
  %698 = load i1, ptr @makecubetable.is_done, align 1
  br i1 %698, label %819, label %699

699:                                              ; preds = %675
  store i1 true, ptr @makecubetable.is_done, align 1
  br label %700

700:                                              ; preds = %699, %816
  %701 = phi i64 [ 0, %699 ], [ %817, %816 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %12, i8 0, i64 48, i1 false), !tbaa !100
  %702 = trunc i64 %701 to i32
  br label %705

703:                                              ; preds = %705
  %704 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %701
  br label %713

705:                                              ; preds = %700, %705
  %706 = phi i64 [ 0, %700 ], [ %711, %705 ]
  %707 = trunc i64 %706 to i32
  %708 = lshr i32 %702, %707
  %709 = and i32 %708, 1
  %710 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %706
  store i32 %709, ptr %710, align 4, !tbaa !100
  %711 = add nuw nsw i64 %706, 1
  %712 = icmp eq i64 %711, 8
  br i1 %712, label %703, label %705, !llvm.loop !162

713:                                              ; preds = %703, %813
  %714 = phi i64 [ 0, %703 ], [ %814, %813 ]
  %715 = getelementptr inbounds [12 x i32], ptr %12, i64 0, i64 %714
  %716 = load i32, ptr %715, align 4, !tbaa !100
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %813

718:                                              ; preds = %713
  %719 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %714
  %720 = load i32, ptr %719, align 4, !tbaa !100
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !100
  %724 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %714
  %725 = load i32, ptr %724, align 4, !tbaa !100
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %726
  %728 = load i32, ptr %727, align 4, !tbaa !100
  %729 = icmp eq i32 %723, %728
  br i1 %729, label %813, label %730

730:                                              ; preds = %718
  %731 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %732 = call ptr %731(i64 noundef 16, ptr noundef nonnull @.str.16) #14
  %733 = icmp eq i32 %723, 0
  %734 = select i1 %733, ptr @leftface, ptr @rightface
  %735 = getelementptr inbounds [12 x i32], ptr %734, i64 0, i64 %714
  %736 = load i32, ptr %735, align 4, !tbaa !100
  %737 = trunc i64 %714 to i32
  br label %738

738:                                              ; preds = %808, %730
  %739 = phi ptr [ %797, %808 ], [ null, %730 ]
  %740 = phi i32 [ %781, %808 ], [ %737, %730 ]
  %741 = phi i32 [ %809, %808 ], [ %736, %730 ]
  %742 = icmp eq i32 %741, 3
  %743 = select i1 %742, i32 5, i32 3
  %744 = icmp eq i32 %741, 3
  %745 = select i1 %744, i32 1, i32 6
  %746 = icmp eq i32 %741, 2
  %747 = select i1 %746, i32 0, i32 7
  %748 = icmp eq i32 %741, 2
  %749 = select i1 %748, i32 4, i32 2
  %750 = icmp eq i32 %741, 1
  %751 = select i1 %750, i32 4, i32 11
  %752 = icmp eq i32 %741, 1
  %753 = select i1 %752, i32 5, i32 8
  %754 = icmp eq i32 %741, 1
  %755 = select i1 %754, i32 7, i32 10
  %756 = icmp eq i32 %741, 1
  %757 = select i1 %756, i32 6, i32 9
  %758 = icmp eq i32 %741, 0
  %759 = select i1 %758, i32 1, i32 9
  %760 = icmp eq i32 %741, 0
  %761 = select i1 %760, i32 0, i32 10
  %762 = icmp eq i32 %741, 0
  %763 = select i1 %762, i32 2, i32 11
  %764 = icmp eq i32 %741, 0
  %765 = select i1 %764, i32 3, i32 8
  br label %766

766:                                              ; preds = %738, %780
  %767 = phi i32 [ %781, %780 ], [ %740, %738 ]
  switch i32 %767, label %780 [
    i32 0, label %768
    i32 1, label %769
    i32 2, label %770
    i32 3, label %771
    i32 4, label %772
    i32 5, label %773
    i32 6, label %774
    i32 7, label %775
    i32 8, label %776
    i32 9, label %777
    i32 10, label %778
    i32 11, label %779
  ]

768:                                              ; preds = %766
  br label %780

769:                                              ; preds = %766
  br label %780

770:                                              ; preds = %766
  br label %780

771:                                              ; preds = %766
  br label %780

772:                                              ; preds = %766
  br label %780

773:                                              ; preds = %766
  br label %780

774:                                              ; preds = %766
  br label %780

775:                                              ; preds = %766
  br label %780

776:                                              ; preds = %766
  br label %780

777:                                              ; preds = %766
  br label %780

778:                                              ; preds = %766
  br label %780

779:                                              ; preds = %766
  br label %780

780:                                              ; preds = %779, %778, %777, %776, %775, %774, %773, %772, %771, %770, %769, %768, %766
  %781 = phi i32 [ %743, %779 ], [ %745, %778 ], [ %747, %777 ], [ %749, %776 ], [ %751, %775 ], [ %753, %774 ], [ %755, %773 ], [ %757, %772 ], [ %759, %771 ], [ %761, %770 ], [ %763, %769 ], [ %765, %768 ], [ 0, %766 ]
  %782 = zext nneg i32 %781 to i64
  %783 = getelementptr inbounds [12 x i32], ptr %12, i64 0, i64 %782
  store i32 1, ptr %783, align 4, !tbaa !100
  %784 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %782
  %785 = load i32, ptr %784, align 4, !tbaa !100
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %786
  %788 = load i32, ptr %787, align 4, !tbaa !100
  %789 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %782
  %790 = load i32, ptr %789, align 4, !tbaa !100
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [8 x i32], ptr %13, i64 0, i64 %791
  %793 = load i32, ptr %792, align 4, !tbaa !100
  %794 = icmp eq i32 %788, %793
  br i1 %794, label %766, label %795, !llvm.loop !163

795:                                              ; preds = %780
  %796 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %797 = call ptr %796(i64 noundef 16, ptr noundef nonnull @.str.16) #14
  store i32 %781, ptr %797, align 8, !tbaa !164
  %798 = getelementptr inbounds %struct.intlist, ptr %797, i64 0, i32 1
  store ptr %739, ptr %798, align 8, !tbaa !105
  %799 = zext nneg i32 %781 to i64
  %800 = icmp eq i64 %714, %799
  br i1 %800, label %808, label %801

801:                                              ; preds = %795
  %802 = getelementptr inbounds [12 x i32], ptr @leftface, i64 0, i64 %782
  %803 = load i32, ptr %802, align 4, !tbaa !100
  %804 = icmp eq i32 %803, %741
  br i1 %804, label %805, label %808

805:                                              ; preds = %801
  %806 = getelementptr inbounds [12 x i32], ptr @rightface, i64 0, i64 %782
  %807 = load i32, ptr %806, align 4, !tbaa !100
  br label %808

808:                                              ; preds = %805, %801, %795
  %809 = phi i32 [ %741, %795 ], [ %803, %801 ], [ %807, %805 ]
  br i1 %800, label %810, label %738, !llvm.loop !163

810:                                              ; preds = %808
  store ptr %797, ptr %732, align 8, !tbaa !104
  %811 = load ptr, ptr %704, align 8, !tbaa !45
  %812 = getelementptr inbounds %struct.intlists, ptr %732, i64 0, i32 1
  store ptr %811, ptr %812, align 8, !tbaa !102
  store ptr %732, ptr %704, align 8, !tbaa !45
  br label %813

813:                                              ; preds = %810, %718, %713
  %814 = add nuw nsw i64 %714, 1
  %815 = icmp eq i64 %814, 12
  br i1 %815, label %816, label %713, !llvm.loop !165

816:                                              ; preds = %813
  %817 = add nuw nsw i64 %701, 1
  %818 = icmp eq i64 %817, 256
  br i1 %818, label %819, label %700, !llvm.loop !166

819:                                              ; preds = %816, %675
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #14
  %820 = load i32, ptr %42, align 4, !tbaa !110
  %821 = icmp sgt i32 %820, 0
  br i1 %821, label %822, label %831

822:                                              ; preds = %819
  %823 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %824 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %825 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %826 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %827 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %828 = getelementptr inbounds float, ptr %11, i64 2
  %829 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %830 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  br label %954

831:                                              ; preds = %1135, %819
  %832 = load ptr, ptr %683, align 8, !tbaa !157
  %833 = icmp eq ptr %832, null
  br i1 %833, label %2101, label %834

834:                                              ; preds = %831
  %835 = getelementptr inbounds float, ptr %6, i64 1
  %836 = getelementptr inbounds float, ptr %6, i64 2
  %837 = getelementptr inbounds float, ptr %7, i64 1
  %838 = getelementptr inbounds float, ptr %7, i64 2
  %839 = getelementptr inbounds float, ptr %6, i64 1
  %840 = getelementptr inbounds float, ptr %6, i64 2
  %841 = getelementptr inbounds float, ptr %7, i64 1
  %842 = getelementptr inbounds float, ptr %7, i64 2
  %843 = getelementptr inbounds float, ptr %6, i64 1
  %844 = getelementptr inbounds float, ptr %7, i64 1
  %845 = getelementptr inbounds float, ptr %6, i64 2
  %846 = getelementptr inbounds float, ptr %7, i64 2
  %847 = getelementptr inbounds float, ptr %8, i64 1
  %848 = getelementptr inbounds float, ptr %8, i64 2
  %849 = getelementptr inbounds float, ptr %8, i64 1
  %850 = getelementptr inbounds float, ptr %8, i64 2
  %851 = getelementptr inbounds float, ptr %8, i64 2
  %852 = getelementptr inbounds float, ptr %8, i64 1
  %853 = getelementptr inbounds float, ptr %8, i64 1
  %854 = getelementptr inbounds float, ptr %8, i64 2
  %855 = getelementptr inbounds float, ptr %8, i64 1
  %856 = getelementptr inbounds float, ptr %8, i64 2
  %857 = getelementptr inbounds float, ptr %8, i64 1
  %858 = getelementptr inbounds float, ptr %8, i64 2
  %859 = getelementptr inbounds float, ptr %8, i64 1
  %860 = getelementptr inbounds float, ptr %8, i64 2
  %861 = getelementptr inbounds %struct.vertex, ptr %8, i64 0, i32 1
  %862 = getelementptr inbounds float, ptr %8, i64 1
  %863 = getelementptr inbounds float, ptr %8, i64 2
  %864 = getelementptr inbounds %struct.vertex, ptr %8, i64 0, i32 1, i64 1
  %865 = getelementptr inbounds %struct.vertex, ptr %8, i64 0, i32 1, i64 2
  %866 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 17
  %867 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %868 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %869 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 16
  %870 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %871 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %872 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %873 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %874 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %875 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %876 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %877 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 5
  %878 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 4
  %879 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %880 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %881 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %882 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %883 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %884 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %885 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %886 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 5
  %887 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 4
  %888 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 6
  %889 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 5
  %890 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %891 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %892 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %893 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %894 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %895 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %896 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %897 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %898 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %899 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %900 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %901 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 5
  %902 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 4
  %903 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %904 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %905 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %906 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %907 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %908 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %909 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %910 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 5
  %911 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 4
  %912 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %913 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %914 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %915 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %916 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %917 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %918 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %919 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %920 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %921 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %922 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %923 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %924 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %925 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %926 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 4
  %927 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %928 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %929 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %930 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %931 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %932 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %933 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %934 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %935 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %936 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %937 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %938 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %939 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 3
  %940 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %941 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %942 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %943 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %944 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %945 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %946 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 2
  %947 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 1
  %948 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 14
  %949 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %950 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %951 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %952 = getelementptr inbounds %struct.cube, ptr %14, i64 0, i32 1
  %953 = getelementptr inbounds %struct.cube, ptr %14, i64 0, i32 2
  br label %1140

954:                                              ; preds = %822, %1135
  %955 = phi i64 [ 0, %822 ], [ %1136, %1135 ]
  %956 = load ptr, ptr %116, align 8, !tbaa !120
  %957 = getelementptr inbounds ptr, ptr %956, i64 %955
  %958 = load ptr, ptr %957, align 8, !tbaa !45
  %959 = load float, ptr %110, align 4, !tbaa !59
  %960 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 16
  %961 = load float, ptr %960, align 8, !tbaa !76
  %962 = fdiv float %959, %961
  %963 = fsub float 1.000000e+00, %962
  %964 = fcmp ogt float %963, 0.000000e+00
  br i1 %964, label %965, label %1135

965:                                              ; preds = %954
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  %966 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 18
  %967 = load ptr, ptr %966, align 8, !tbaa !135
  %968 = icmp eq ptr %967, null
  br i1 %968, label %970, label %969

969:                                              ; preds = %965
  call void @mul_m4_v3(ptr noundef nonnull %967, ptr noundef nonnull %10) #14
  br label %970

970:                                              ; preds = %969, %965
  %971 = load ptr, ptr %680, align 8, !tbaa !154
  %972 = load float, ptr %10, align 4, !tbaa !55
  %973 = load float, ptr %823, align 4, !tbaa !55
  %974 = load float, ptr %824, align 4, !tbaa !55
  %975 = call float %971(ptr noundef nonnull %37, float noundef %972, float noundef %973, float noundef %974) #14
  %976 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 3
  %977 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 13
  %978 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  %979 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  %980 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 4
  %981 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 12
  %982 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  %983 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  %984 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 11
  %985 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  %986 = getelementptr inbounds %struct.MetaElem, ptr %958, i64 0, i32 14
  br label %987

987:                                              ; preds = %970, %1131
  %988 = phi i64 [ 0, %970 ], [ %1132, %1131 ]
  %989 = phi float [ 0.000000e+00, %970 ], [ %1007, %1131 ]
  %990 = phi float [ 0.000000e+00, %970 ], [ %1027, %1131 ]
  %991 = load i16, ptr %976, align 8, !tbaa !78
  switch i16 %991, label %1006 [
    i16 0, label %992
    i16 4, label %998
    i16 5, label %998
    i16 6, label %998
    i16 7, label %998
  ]

992:                                              ; preds = %987
  %993 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %988
  %994 = load i32, ptr %993, align 4, !tbaa !100
  %995 = sitofp i32 %994 to float
  %996 = load float, ptr %986, align 8, !tbaa !74
  %997 = call float @llvm.fmuladd.f32(float %995, float %996, float 0.000000e+00)
  store float %997, ptr %11, align 4, !tbaa !55
  br label %1006

998:                                              ; preds = %987, %987, %987, %987
  %999 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %988
  %1000 = load i32, ptr %999, align 4, !tbaa !100
  %1001 = sitofp i32 %1000 to float
  %1002 = load float, ptr %984, align 4, !tbaa !81
  %1003 = load float, ptr %985, align 8, !tbaa !74
  %1004 = fadd float %1002, %1003
  %1005 = call float @llvm.fmuladd.f32(float %1001, float %1004, float 0.000000e+00)
  store float %1005, ptr %11, align 4, !tbaa !55
  br label %1006

1006:                                             ; preds = %998, %992, %987
  %1007 = phi float [ %989, %987 ], [ %1005, %998 ], [ %997, %992 ]
  br label %1008

1008:                                             ; preds = %1006, %1128
  %1009 = phi i64 [ 0, %1006 ], [ %1129, %1128 ]
  %1010 = phi float [ %990, %1006 ], [ %1027, %1128 ]
  %1011 = load i16, ptr %976, align 8, !tbaa !78
  switch i16 %1011, label %1026 [
    i16 0, label %1012
    i16 4, label %1018
    i16 5, label %1018
    i16 6, label %1018
    i16 7, label %1018
  ]

1012:                                             ; preds = %1008
  %1013 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %1009
  %1014 = load i32, ptr %1013, align 4, !tbaa !100
  %1015 = sitofp i32 %1014 to float
  %1016 = load float, ptr %983, align 8, !tbaa !74
  %1017 = call float @llvm.fmuladd.f32(float %1015, float %1016, float 0.000000e+00)
  store float %1017, ptr %830, align 4, !tbaa !55
  br label %1026

1018:                                             ; preds = %1008, %1008, %1008, %1008
  %1019 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %1009
  %1020 = load i32, ptr %1019, align 4, !tbaa !100
  %1021 = sitofp i32 %1020 to float
  %1022 = load float, ptr %981, align 8, !tbaa !80
  %1023 = load float, ptr %982, align 8, !tbaa !74
  %1024 = fadd float %1022, %1023
  %1025 = call float @llvm.fmuladd.f32(float %1021, float %1024, float 0.000000e+00)
  store float %1025, ptr %829, align 4, !tbaa !55
  br label %1026

1026:                                             ; preds = %1018, %1012, %1008
  %1027 = phi float [ %1010, %1008 ], [ %1025, %1018 ], [ %1017, %1012 ]
  br label %1028

1028:                                             ; preds = %1026, %1125
  %1029 = phi i64 [ 0, %1026 ], [ %1126, %1125 ]
  store float %1007, ptr %11, align 4, !tbaa !55
  store float %1027, ptr %825, align 4, !tbaa !55
  %1030 = load i16, ptr %976, align 8, !tbaa !78
  switch i16 %1030, label %1045 [
    i16 0, label %1031
    i16 4, label %1031
    i16 5, label %1031
    i16 6, label %1037
    i16 7, label %1037
  ]

1031:                                             ; preds = %1028, %1028, %1028
  %1032 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %1029
  %1033 = load i32, ptr %1032, align 4, !tbaa !100
  %1034 = sitofp i32 %1033 to float
  %1035 = load float, ptr %979, align 8, !tbaa !74
  %1036 = call float @llvm.fmuladd.f32(float %1034, float %1035, float 0.000000e+00)
  store float %1036, ptr %827, align 4, !tbaa !55
  br label %1045

1037:                                             ; preds = %1028, %1028
  %1038 = getelementptr inbounds [3 x i32], ptr @__const.find_first_points.index, i64 0, i64 %1029
  %1039 = load i32, ptr %1038, align 4, !tbaa !100
  %1040 = sitofp i32 %1039 to float
  %1041 = load float, ptr %977, align 4, !tbaa !79
  %1042 = load float, ptr %978, align 8, !tbaa !74
  %1043 = fadd float %1041, %1042
  %1044 = call float @llvm.fmuladd.f32(float %1040, float %1043, float 0.000000e+00)
  store float %1044, ptr %826, align 4, !tbaa !55
  br label %1045

1045:                                             ; preds = %1037, %1031, %1028
  %1046 = load ptr, ptr %966, align 8, !tbaa !135
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1049, label %1048

1048:                                             ; preds = %1045
  call void @mul_m4_v3(ptr noundef nonnull %1046, ptr noundef nonnull %11) #14
  br label %1049

1049:                                             ; preds = %1048, %1045
  %1050 = load float, ptr %10, align 4, !tbaa !55
  %1051 = load float, ptr %823, align 4, !tbaa !55
  %1052 = load float, ptr %824, align 4, !tbaa !55
  %1053 = load float, ptr %11, align 4, !tbaa !55
  %1054 = fsub float %1050, %1053
  %1055 = load float, ptr %825, align 4, !tbaa !55
  %1056 = fsub float %1051, %1055
  %1057 = load float, ptr %828, align 4, !tbaa !55
  %1058 = fsub float %1052, %1057
  %1059 = fmul float %1056, %1056
  %1060 = call float @llvm.fmuladd.f32(float %1054, float %1054, float %1059)
  %1061 = call float @llvm.fmuladd.f32(float %1058, float %1058, float %1060)
  %1062 = fsub float %1053, %1050
  %1063 = load float, ptr %681, align 8, !tbaa !155
  %1064 = fdiv float %1062, %1063
  %1065 = call float @llvm.fabs.f32(float %1064)
  %1066 = fsub float %1055, %1051
  %1067 = fdiv float %1066, %1063
  %1068 = call float @llvm.fabs.f32(float %1067)
  %1069 = fsub float %1057, %1052
  %1070 = fdiv float %1069, %1063
  %1071 = call float @llvm.fabs.f32(float %1070)
  %1072 = fcmp ogt float %1065, %1068
  %1073 = select i1 %1072, float %1065, float %1068
  %1074 = fcmp ogt float %1073, %1071
  %1075 = select i1 %1074, float %1073, float %1071
  %1076 = fcmp une float %1075, 0.000000e+00
  br i1 %1076, label %1077, label %1125

1077:                                             ; preds = %1049
  %1078 = fdiv float %1062, %1075
  %1079 = fdiv float %1066, %1075
  %1080 = fdiv float %1069, %1075
  %1081 = fcmp ult float %1061, 0.000000e+00
  br i1 %1081, label %1125, label %1082

1082:                                             ; preds = %1077, %1114
  %1083 = phi float [ %1091, %1114 ], [ %975, %1077 ]
  %1084 = phi float [ %1089, %1114 ], [ %1052, %1077 ]
  %1085 = phi float [ %1088, %1114 ], [ %1051, %1077 ]
  %1086 = phi float [ %1087, %1114 ], [ %1050, %1077 ]
  %1087 = fadd float %1078, %1086
  %1088 = fadd float %1079, %1085
  %1089 = fadd float %1080, %1084
  %1090 = load ptr, ptr %680, align 8, !tbaa !154
  %1091 = call float %1090(ptr noundef nonnull %37, float noundef %1087, float noundef %1088, float noundef %1089) #14
  %1092 = fcmp olt float %1091, 0.000000e+00
  %1093 = fcmp oge float %1083, 0.000000e+00
  %1094 = select i1 %1092, i1 %1093, i1 false
  br i1 %1094, label %1099, label %1095

1095:                                             ; preds = %1082
  %1096 = fcmp ogt float %1091, 0.000000e+00
  %1097 = fcmp ole float %1083, 0.000000e+00
  %1098 = select i1 %1096, i1 %1097, i1 false
  br i1 %1098, label %1099, label %1114

1099:                                             ; preds = %1095, %1082
  %1100 = load float, ptr %681, align 8, !tbaa !155
  %1101 = fdiv float %1087, %1100
  %1102 = call float @llvm.floor.f32(float %1101)
  %1103 = fptosi float %1102 to i32
  %1104 = fdiv float %1088, %1100
  %1105 = call float @llvm.floor.f32(float %1104)
  %1106 = fptosi float %1105 to i32
  %1107 = fdiv float %1089, %1100
  %1108 = call float @llvm.floor.f32(float %1107)
  %1109 = fptosi float %1108 to i32
  %1110 = load i16, ptr %980, align 2, !tbaa !77
  %1111 = and i16 %1110, 2
  %1112 = icmp eq i16 %1111, 0
  %1113 = select i1 %1112, i32 1, i32 2
  call fastcc void @add_cube(ptr noundef nonnull %37, i32 noundef %1103, i32 noundef %1106, i32 noundef %1109, i32 noundef %1113)
  br label %1114

1114:                                             ; preds = %1099, %1095
  %1115 = load float, ptr %10, align 4, !tbaa !55
  %1116 = fsub float %1115, %1087
  %1117 = load float, ptr %823, align 4, !tbaa !55
  %1118 = fsub float %1117, %1088
  %1119 = load float, ptr %824, align 4, !tbaa !55
  %1120 = fsub float %1119, %1089
  %1121 = fmul float %1118, %1118
  %1122 = call float @llvm.fmuladd.f32(float %1116, float %1116, float %1121)
  %1123 = call float @llvm.fmuladd.f32(float %1120, float %1120, float %1122)
  %1124 = fcmp ugt float %1123, %1061
  br i1 %1124, label %1125, label %1082, !llvm.loop !167

1125:                                             ; preds = %1114, %1077, %1049
  %1126 = add nuw nsw i64 %1029, 1
  %1127 = icmp eq i64 %1126, 3
  br i1 %1127, label %1128, label %1028, !llvm.loop !168

1128:                                             ; preds = %1125
  %1129 = add nuw nsw i64 %1009, 1
  %1130 = icmp eq i64 %1129, 3
  br i1 %1130, label %1131, label %1008, !llvm.loop !169

1131:                                             ; preds = %1128
  %1132 = add nuw nsw i64 %988, 1
  %1133 = icmp eq i64 %1132, 3
  br i1 %1133, label %1134, label %987, !llvm.loop !170

1134:                                             ; preds = %1131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %1135

1135:                                             ; preds = %1134, %954
  %1136 = add nuw nsw i64 %955, 1
  %1137 = load i32, ptr %42, align 4, !tbaa !110
  %1138 = sext i32 %1137 to i64
  %1139 = icmp slt i64 %1136, %1138
  br i1 %1139, label %954, label %831, !llvm.loop !171

1140:                                             ; preds = %834, %2086
  %1141 = phi ptr [ %832, %834 ], [ %2099, %2086 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 8 dereferenceable(80) %1141, i64 80, i1 false), !tbaa.struct !172
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  br label %1142

1142:                                             ; preds = %1140, %1142
  %1143 = phi i64 [ 0, %1140 ], [ %1154, %1142 ]
  %1144 = phi i32 [ 0, %1140 ], [ %1153, %1142 ]
  %1145 = getelementptr inbounds %struct.cube, ptr %14, i64 0, i32 3, i64 %1143
  %1146 = load ptr, ptr %1145, align 8, !tbaa !45
  %1147 = getelementptr inbounds %struct.corner, ptr %1146, i64 0, i32 4
  %1148 = load float, ptr %1147, align 8, !tbaa !173
  %1149 = fcmp ogt float %1148, 0.000000e+00
  %1150 = trunc i64 %1143 to i32
  %1151 = shl nuw nsw i32 1, %1150
  %1152 = select i1 %1149, i32 %1151, i32 0
  %1153 = add nuw nsw i32 %1152, %1144
  %1154 = add nuw nsw i64 %1143, 1
  %1155 = icmp eq i64 %1154, 8
  br i1 %1155, label %1156, label %1142, !llvm.loop !175

1156:                                             ; preds = %1142
  %1157 = zext nneg i32 %1153 to i64
  %1158 = getelementptr inbounds [256 x ptr], ptr @cubetable, i64 0, i64 %1157
  %1159 = load ptr, ptr %1158, align 8, !tbaa !45
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %2086, label %1161

1161:                                             ; preds = %1156, %2082
  %1162 = phi ptr [ %2084, %2082 ], [ %1159, %1156 ]
  %1163 = load ptr, ptr %1162, align 8, !tbaa !45
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1570, label %1165

1165:                                             ; preds = %1161, %1561
  %1166 = phi i64 [ %1564, %1561 ], [ 0, %1161 ]
  %1167 = phi ptr [ %1566, %1561 ], [ %1163, %1161 ]
  %1168 = load i32, ptr %1167, align 8, !tbaa !164
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [12 x i32], ptr @corner1, i64 0, i64 %1169
  %1171 = load i32, ptr %1170, align 4, !tbaa !100
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds %struct.cube, ptr %14, i64 0, i32 3, i64 %1172
  %1174 = load ptr, ptr %1173, align 8, !tbaa !45
  %1175 = getelementptr inbounds [12 x i32], ptr @corner2, i64 0, i64 %1169
  %1176 = load i32, ptr %1175, align 4, !tbaa !100
  %1177 = sext i32 %1176 to i64
  %1178 = getelementptr inbounds %struct.cube, ptr %14, i64 0, i32 3, i64 %1177
  %1179 = load ptr, ptr %1178, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  %1180 = load ptr, ptr %697, align 8, !tbaa !161
  %1181 = load i32, ptr %1174, align 8, !tbaa !176
  %1182 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 1
  %1183 = load i32, ptr %1182, align 4, !tbaa !177
  %1184 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 2
  %1185 = load i32, ptr %1184, align 8, !tbaa !178
  %1186 = load i32, ptr %1179, align 8, !tbaa !176
  %1187 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 1
  %1188 = load i32, ptr %1187, align 4, !tbaa !177
  %1189 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 2
  %1190 = load i32, ptr %1189, align 8, !tbaa !178
  %1191 = icmp sgt i32 %1181, %1186
  br i1 %1191, label %1200, label %1192

1192:                                             ; preds = %1165
  %1193 = icmp eq i32 %1181, %1186
  br i1 %1193, label %1194, label %1201

1194:                                             ; preds = %1192
  %1195 = icmp sgt i32 %1183, %1188
  br i1 %1195, label %1200, label %1196

1196:                                             ; preds = %1194
  %1197 = icmp eq i32 %1183, %1188
  %1198 = icmp sgt i32 %1185, %1190
  %1199 = and i1 %1197, %1198
  br i1 %1199, label %1200, label %1201

1200:                                             ; preds = %1196, %1194, %1165
  br label %1201

1201:                                             ; preds = %1200, %1196, %1192
  %1202 = phi i32 [ %1186, %1200 ], [ %1181, %1196 ], [ %1181, %1192 ]
  %1203 = phi i32 [ %1188, %1200 ], [ %1183, %1196 ], [ %1183, %1192 ]
  %1204 = phi i32 [ %1190, %1200 ], [ %1185, %1196 ], [ %1185, %1192 ]
  %1205 = phi i32 [ %1181, %1200 ], [ %1186, %1196 ], [ %1186, %1192 ]
  %1206 = phi i32 [ %1183, %1200 ], [ %1188, %1196 ], [ %1188, %1192 ]
  %1207 = phi i32 [ %1185, %1200 ], [ %1190, %1196 ], [ %1190, %1192 ]
  %1208 = shl i32 %1202, 5
  %1209 = and i32 %1208, 992
  %1210 = and i32 %1203, 31
  %1211 = or disjoint i32 %1209, %1210
  %1212 = shl nuw nsw i32 %1211, 5
  %1213 = and i32 %1204, 31
  %1214 = shl i32 %1205, 5
  %1215 = and i32 %1214, 992
  %1216 = and i32 %1206, 31
  %1217 = or disjoint i32 %1215, %1216
  %1218 = shl nuw nsw i32 %1217, 5
  %1219 = and i32 %1207, 31
  %1220 = or disjoint i32 %1212, %1213
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = add nuw nsw i32 %1221, %1218
  %1223 = zext nneg i32 %1222 to i64
  %1224 = getelementptr inbounds ptr, ptr %1180, i64 %1223
  %1225 = load ptr, ptr %1224, align 8, !tbaa !45
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1258, label %1227

1227:                                             ; preds = %1201, %1254
  %1228 = phi ptr [ %1256, %1254 ], [ %1225, %1201 ]
  %1229 = load i32, ptr %1228, align 8, !tbaa !179
  %1230 = icmp eq i32 %1229, %1202
  br i1 %1230, label %1231, label %1254

1231:                                             ; preds = %1227
  %1232 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 1
  %1233 = load i32, ptr %1232, align 4, !tbaa !181
  %1234 = icmp eq i32 %1233, %1203
  br i1 %1234, label %1235, label %1254

1235:                                             ; preds = %1231
  %1236 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 2
  %1237 = load i32, ptr %1236, align 8, !tbaa !182
  %1238 = icmp eq i32 %1237, %1204
  br i1 %1238, label %1239, label %1254

1239:                                             ; preds = %1235
  %1240 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 3
  %1241 = load i32, ptr %1240, align 4, !tbaa !183
  %1242 = icmp eq i32 %1241, %1205
  br i1 %1242, label %1243, label %1254

1243:                                             ; preds = %1239
  %1244 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 4
  %1245 = load i32, ptr %1244, align 8, !tbaa !184
  %1246 = icmp eq i32 %1245, %1206
  br i1 %1246, label %1247, label %1254

1247:                                             ; preds = %1243
  %1248 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 5
  %1249 = load i32, ptr %1248, align 4, !tbaa !185
  %1250 = icmp eq i32 %1249, %1207
  br i1 %1250, label %1251, label %1254

1251:                                             ; preds = %1247
  %1252 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 6
  %1253 = load i32, ptr %1252, align 8, !tbaa !186
  br label %1258

1254:                                             ; preds = %1247, %1243, %1239, %1235, %1231, %1227
  %1255 = getelementptr inbounds %struct.edgelist, ptr %1228, i64 0, i32 7
  %1256 = load ptr, ptr %1255, align 8, !tbaa !45
  %1257 = icmp eq ptr %1256, null
  br i1 %1257, label %1258, label %1227, !llvm.loop !187

1258:                                             ; preds = %1254, %1201, %1251
  %1259 = phi i32 [ %1253, %1251 ], [ -1, %1201 ], [ -1, %1254 ]
  %1260 = icmp eq i32 %1259, -1
  br i1 %1260, label %1261, label %1561

1261:                                             ; preds = %1258
  %1262 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 3
  %1263 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 3
  %1264 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 4
  %1265 = load float, ptr %1264, align 8, !tbaa !173
  %1266 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 4
  %1267 = load float, ptr %1266, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %1268 = fcmp olt float %1265, 0.000000e+00
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1261
  %1270 = load float, ptr %1263, align 4, !tbaa !55
  store float %1270, ptr %6, align 4, !tbaa !55
  %1271 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 3, i64 1
  %1272 = load float, ptr %1271, align 4, !tbaa !55
  store float %1272, ptr %839, align 4, !tbaa !55
  %1273 = getelementptr inbounds %struct.corner, ptr %1179, i64 0, i32 3, i64 2
  %1274 = load float, ptr %1273, align 4, !tbaa !55
  store float %1274, ptr %840, align 4, !tbaa !55
  br label %1281

1275:                                             ; preds = %1261
  %1276 = load float, ptr %1262, align 4, !tbaa !55
  store float %1276, ptr %6, align 4, !tbaa !55
  %1277 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 3, i64 1
  %1278 = load float, ptr %1277, align 4, !tbaa !55
  store float %1278, ptr %835, align 4, !tbaa !55
  %1279 = getelementptr inbounds %struct.corner, ptr %1174, i64 0, i32 3, i64 2
  %1280 = load float, ptr %1279, align 4, !tbaa !55
  store float %1280, ptr %836, align 4, !tbaa !55
  br label %1281

1281:                                             ; preds = %1275, %1269
  %1282 = phi ptr [ %1263, %1275 ], [ %1262, %1269 ]
  %1283 = phi ptr [ %1179, %1275 ], [ %1174, %1269 ]
  %1284 = phi ptr [ %837, %1275 ], [ %841, %1269 ]
  %1285 = phi ptr [ %838, %1275 ], [ %842, %1269 ]
  %1286 = phi float [ %1265, %1275 ], [ %1267, %1269 ]
  %1287 = phi float [ %1267, %1275 ], [ %1265, %1269 ]
  %1288 = load float, ptr %1282, align 4, !tbaa !55
  store float %1288, ptr %7, align 4, !tbaa !55
  %1289 = getelementptr inbounds %struct.corner, ptr %1283, i64 0, i32 3, i64 1
  %1290 = load float, ptr %1289, align 4, !tbaa !55
  store float %1290, ptr %1284, align 4, !tbaa !55
  %1291 = getelementptr inbounds %struct.corner, ptr %1283, i64 0, i32 3, i64 2
  %1292 = load float, ptr %1291, align 4, !tbaa !55
  store float %1292, ptr %1285, align 4, !tbaa !55
  %1293 = load float, ptr %6, align 4, !tbaa !55
  %1294 = load float, ptr %7, align 4, !tbaa !55
  %1295 = fsub float %1293, %1294
  %1296 = load float, ptr %843, align 4, !tbaa !55
  %1297 = load float, ptr %844, align 4, !tbaa !55
  %1298 = fsub float %1296, %1297
  %1299 = load float, ptr %845, align 4, !tbaa !55
  %1300 = load float, ptr %846, align 4, !tbaa !55
  %1301 = fsub float %1299, %1300
  %1302 = load float, ptr %110, align 4, !tbaa !59
  %1303 = fcmp ogt float %1302, 0x3FC99999A0000000
  br i1 %1303, label %1304, label %1328

1304:                                             ; preds = %1281
  %1305 = fcmp oeq float %1298, 0.000000e+00
  %1306 = fcmp oeq float %1301, 0.000000e+00
  %1307 = select i1 %1305, i1 %1306, i1 false
  br i1 %1307, label %1308, label %1313

1308:                                             ; preds = %1304
  %1309 = fmul float %1287, %1295
  %1310 = fsub float %1286, %1287
  %1311 = fdiv float %1309, %1310
  %1312 = fsub float %1294, %1311
  store float %1312, ptr %8, align 8, !tbaa !55
  store float %1297, ptr %859, align 4, !tbaa !55
  store float %1300, ptr %860, align 8, !tbaa !55
  br label %1406

1313:                                             ; preds = %1304
  %1314 = fcmp oeq float %1295, 0.000000e+00
  %1315 = select i1 %1314, i1 %1306, i1 false
  br i1 %1315, label %1316, label %1321

1316:                                             ; preds = %1313
  store float %1294, ptr %8, align 8, !tbaa !55
  %1317 = fmul float %1287, %1298
  %1318 = fsub float %1286, %1287
  %1319 = fdiv float %1317, %1318
  %1320 = fsub float %1297, %1319
  store float %1320, ptr %857, align 4, !tbaa !55
  store float %1300, ptr %858, align 8, !tbaa !55
  br label %1406

1321:                                             ; preds = %1313
  %1322 = and i1 %1314, %1305
  br i1 %1322, label %1323, label %1328

1323:                                             ; preds = %1321
  store float %1294, ptr %8, align 8, !tbaa !55
  store float %1297, ptr %855, align 4, !tbaa !55
  %1324 = fmul float %1287, %1301
  %1325 = fsub float %1286, %1287
  %1326 = fdiv float %1324, %1325
  %1327 = fsub float %1300, %1326
  store float %1327, ptr %856, align 8, !tbaa !55
  br label %1406

1328:                                             ; preds = %1321, %1281
  %1329 = fcmp oeq float %1298, 0.000000e+00
  %1330 = fcmp oeq float %1301, 0.000000e+00
  %1331 = select i1 %1329, i1 %1330, i1 false
  br i1 %1331, label %1332, label %1350

1332:                                             ; preds = %1328
  store float %1297, ptr %853, align 4, !tbaa !55
  store float %1300, ptr %854, align 8, !tbaa !55
  br label %1333

1333:                                             ; preds = %1332, %1347
  %1334 = phi i32 [ 1, %1332 ], [ %1348, %1347 ]
  %1335 = load float, ptr %6, align 4, !tbaa !55
  %1336 = load float, ptr %7, align 4, !tbaa !55
  %1337 = fadd float %1335, %1336
  %1338 = fmul float %1337, 5.000000e-01
  store float %1338, ptr %8, align 8, !tbaa !55
  %1339 = load ptr, ptr %680, align 8, !tbaa !154
  %1340 = load float, ptr %853, align 4, !tbaa !55
  %1341 = load float, ptr %854, align 8, !tbaa !55
  %1342 = call float %1339(ptr noundef nonnull %37, float noundef %1338, float noundef %1340, float noundef %1341) #14
  %1343 = fcmp ogt float %1342, 0.000000e+00
  %1344 = load float, ptr %8, align 8, !tbaa !55
  br i1 %1343, label %1345, label %1346

1345:                                             ; preds = %1333
  store float %1344, ptr %6, align 4, !tbaa !55
  br label %1347

1346:                                             ; preds = %1333
  store float %1344, ptr %7, align 4, !tbaa !55
  br label %1347

1347:                                             ; preds = %1346, %1345
  %1348 = add nuw nsw i32 %1334, 1
  %1349 = icmp eq i32 %1334, 12
  br i1 %1349, label %1406, label %1333, !llvm.loop !188

1350:                                             ; preds = %1328
  %1351 = fcmp oeq float %1295, 0.000000e+00
  %1352 = select i1 %1351, i1 %1330, i1 false
  br i1 %1352, label %1353, label %1369

1353:                                             ; preds = %1350
  store float %1294, ptr %8, align 8, !tbaa !55
  store float %1300, ptr %851, align 8, !tbaa !55
  br label %1354

1354:                                             ; preds = %1353, %1354
  %1355 = phi i32 [ 1, %1353 ], [ %1367, %1354 ]
  %1356 = load float, ptr %843, align 4, !tbaa !55
  %1357 = load float, ptr %844, align 4, !tbaa !55
  %1358 = fadd float %1356, %1357
  %1359 = fmul float %1358, 5.000000e-01
  store float %1359, ptr %852, align 4, !tbaa !55
  %1360 = load ptr, ptr %680, align 8, !tbaa !154
  %1361 = load float, ptr %8, align 8, !tbaa !55
  %1362 = load float, ptr %851, align 8, !tbaa !55
  %1363 = call float %1360(ptr noundef nonnull %37, float noundef %1361, float noundef %1359, float noundef %1362) #14
  %1364 = fcmp ogt float %1363, 0.000000e+00
  %1365 = load float, ptr %852, align 4, !tbaa !55
  %1366 = select i1 %1364, ptr %843, ptr %844
  store float %1365, ptr %1366, align 4, !tbaa !55
  %1367 = add nuw nsw i32 %1355, 1
  %1368 = icmp eq i32 %1355, 12
  br i1 %1368, label %1406, label %1354, !llvm.loop !189

1369:                                             ; preds = %1350
  %1370 = and i1 %1351, %1329
  br i1 %1370, label %1372, label %1371

1371:                                             ; preds = %1369
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %1388

1372:                                             ; preds = %1369
  store float %1294, ptr %8, align 8, !tbaa !55
  store float %1297, ptr %849, align 4, !tbaa !55
  br label %1373

1373:                                             ; preds = %1372, %1373
  %1374 = phi i32 [ 1, %1372 ], [ %1386, %1373 ]
  %1375 = load float, ptr %845, align 4, !tbaa !55
  %1376 = load float, ptr %846, align 4, !tbaa !55
  %1377 = fadd float %1375, %1376
  %1378 = fmul float %1377, 5.000000e-01
  store float %1378, ptr %850, align 8, !tbaa !55
  %1379 = load ptr, ptr %680, align 8, !tbaa !154
  %1380 = load float, ptr %8, align 8, !tbaa !55
  %1381 = load float, ptr %849, align 4, !tbaa !55
  %1382 = call float %1379(ptr noundef nonnull %37, float noundef %1380, float noundef %1381, float noundef %1378) #14
  %1383 = fcmp ogt float %1382, 0.000000e+00
  %1384 = load float, ptr %850, align 8, !tbaa !55
  %1385 = select i1 %1383, ptr %845, ptr %846
  store float %1384, ptr %1385, align 4, !tbaa !55
  %1386 = add nuw nsw i32 %1374, 1
  %1387 = icmp eq i32 %1374, 12
  br i1 %1387, label %1406, label %1373, !llvm.loop !190

1388:                                             ; preds = %1371, %1399
  %1389 = phi i32 [ 1, %1371 ], [ %1404, %1399 ]
  %1390 = load ptr, ptr %680, align 8, !tbaa !154
  %1391 = load float, ptr %8, align 8, !tbaa !55
  %1392 = load float, ptr %847, align 4, !tbaa !55
  %1393 = load float, ptr %848, align 8, !tbaa !55
  %1394 = call float %1390(ptr noundef nonnull %37, float noundef %1391, float noundef %1392, float noundef %1393) #14
  %1395 = fcmp ogt float %1394, 0.000000e+00
  %1396 = load float, ptr %8, align 8, !tbaa !55
  br i1 %1395, label %1397, label %1398

1397:                                             ; preds = %1388
  store float %1396, ptr %6, align 4, !tbaa !55
  br label %1399

1398:                                             ; preds = %1388
  store float %1396, ptr %7, align 4, !tbaa !55
  br label %1399

1399:                                             ; preds = %1398, %1397
  %1400 = phi ptr [ %844, %1398 ], [ %843, %1397 ]
  %1401 = phi ptr [ %846, %1398 ], [ %845, %1397 ]
  %1402 = load float, ptr %847, align 4, !tbaa !55
  store float %1402, ptr %1400, align 4, !tbaa !55
  %1403 = load float, ptr %848, align 8, !tbaa !55
  store float %1403, ptr %1401, align 4, !tbaa !55
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %1404 = add nuw nsw i32 %1389, 1
  %1405 = icmp eq i32 %1389, 12
  br i1 %1405, label %1406, label %1388, !llvm.loop !191

1406:                                             ; preds = %1399, %1373, %1354, %1347, %1323, %1316, %1308
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  %1407 = load float, ptr %685, align 4, !tbaa !158
  %1408 = fmul float %1407, 0x3FC99999A0000000
  %1409 = load ptr, ptr %680, align 8, !tbaa !154
  %1410 = load float, ptr %8, align 8, !tbaa !55
  %1411 = load float, ptr %862, align 4, !tbaa !55
  %1412 = load float, ptr %863, align 8, !tbaa !55
  %1413 = call float %1409(ptr noundef nonnull %37, float noundef %1410, float noundef %1411, float noundef %1412) #14
  %1414 = load ptr, ptr %680, align 8, !tbaa !154
  %1415 = load float, ptr %8, align 8, !tbaa !55
  %1416 = fadd float %1408, %1415
  %1417 = load float, ptr %862, align 4, !tbaa !55
  %1418 = load float, ptr %863, align 8, !tbaa !55
  %1419 = call float %1414(ptr noundef nonnull %37, float noundef %1416, float noundef %1417, float noundef %1418) #14
  %1420 = fsub float %1419, %1413
  store float %1420, ptr %861, align 4, !tbaa !55
  %1421 = load ptr, ptr %680, align 8, !tbaa !154
  %1422 = load float, ptr %8, align 8, !tbaa !55
  %1423 = load float, ptr %862, align 4, !tbaa !55
  %1424 = fadd float %1408, %1423
  %1425 = load float, ptr %863, align 8, !tbaa !55
  %1426 = call float %1421(ptr noundef nonnull %37, float noundef %1422, float noundef %1424, float noundef %1425) #14
  %1427 = fsub float %1426, %1413
  store float %1427, ptr %864, align 8, !tbaa !55
  %1428 = load ptr, ptr %680, align 8, !tbaa !154
  %1429 = load float, ptr %8, align 8, !tbaa !55
  %1430 = load float, ptr %862, align 4, !tbaa !55
  %1431 = load float, ptr %863, align 8, !tbaa !55
  %1432 = fadd float %1408, %1431
  %1433 = call float %1428(ptr noundef nonnull %37, float noundef %1429, float noundef %1430, float noundef %1432) #14
  %1434 = fsub float %1433, %1413
  store float %1434, ptr %865, align 4, !tbaa !55
  %1435 = load float, ptr %861, align 4, !tbaa !55
  %1436 = load float, ptr %864, align 8, !tbaa !55
  %1437 = fmul float %1436, %1436
  %1438 = call float @llvm.fmuladd.f32(float %1435, float %1435, float %1437)
  %1439 = call float @llvm.fmuladd.f32(float %1434, float %1434, float %1438)
  %1440 = fcmp ogt float %1439, 0x38AA95A5C0000000
  br i1 %1440, label %1441, label %1450

1441:                                             ; preds = %1406
  %1442 = call float @sqrtf(float noundef %1439) #14
  %1443 = fdiv float 1.000000e+00, %1442
  %1444 = load float, ptr %861, align 4, !tbaa !55
  %1445 = fmul float %1444, %1443
  store float %1445, ptr %861, align 4, !tbaa !55
  %1446 = load float, ptr %864, align 8, !tbaa !55
  %1447 = fmul float %1443, %1446
  store float %1447, ptr %864, align 8, !tbaa !55
  %1448 = load float, ptr %865, align 4, !tbaa !55
  %1449 = fmul float %1443, %1448
  br label %1451

1450:                                             ; preds = %1406
  store float 0.000000e+00, ptr %861, align 4, !tbaa !55
  store float 0.000000e+00, ptr %864, align 8, !tbaa !55
  br label %1451

1451:                                             ; preds = %1450, %1441
  %1452 = phi float [ 0.000000e+00, %1450 ], [ %1449, %1441 ]
  store float %1452, ptr %865, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %1453 = load i32, ptr %686, align 8, !tbaa !192
  %1454 = load i32, ptr %687, align 4, !tbaa !193
  %1455 = icmp eq i32 %1453, %1454
  br i1 %1455, label %1456, label %1481

1456:                                             ; preds = %1451
  %1457 = icmp eq i32 %1453, 0
  %1458 = shl nsw i32 %1453, 1
  %1459 = select i1 %1457, i32 10, i32 %1458
  store i32 %1459, ptr %687, align 4, !tbaa !193
  %1460 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1461 = sext i32 %1459 to i64
  %1462 = mul nsw i64 %1461, 24
  %1463 = call ptr %1460(i64 noundef %1462, ptr noundef nonnull @.str.17) #14
  %1464 = load i32, ptr %686, align 8, !tbaa !192
  %1465 = icmp sgt i32 %1464, 0
  br i1 %1465, label %1466, label %1475

1466:                                             ; preds = %1456, %1466
  %1467 = phi i64 [ %1471, %1466 ], [ 0, %1456 ]
  %1468 = getelementptr inbounds %struct.vertex, ptr %1463, i64 %1467
  %1469 = load ptr, ptr %688, align 8, !tbaa !194
  %1470 = getelementptr inbounds %struct.vertex, ptr %1469, i64 %1467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1468, ptr noundef nonnull align 4 dereferenceable(24) %1470, i64 24, i1 false), !tbaa.struct !195
  %1471 = add nuw nsw i64 %1467, 1
  %1472 = load i32, ptr %686, align 8, !tbaa !192
  %1473 = sext i32 %1472 to i64
  %1474 = icmp slt i64 %1471, %1473
  br i1 %1474, label %1466, label %1475, !llvm.loop !196

1475:                                             ; preds = %1466, %1456
  %1476 = load ptr, ptr %688, align 8, !tbaa !194
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1480, label %1478

1478:                                             ; preds = %1475
  %1479 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %1479(ptr noundef nonnull %1476) #14
  br label %1480

1480:                                             ; preds = %1478, %1475
  store ptr %1463, ptr %688, align 8, !tbaa !194
  br label %1481

1481:                                             ; preds = %1480, %1451
  %1482 = load ptr, ptr %688, align 8, !tbaa !194
  %1483 = load i32, ptr %686, align 8, !tbaa !192
  %1484 = add nsw i32 %1483, 1
  store i32 %1484, ptr %686, align 8, !tbaa !192
  %1485 = sext i32 %1483 to i64
  %1486 = getelementptr inbounds %struct.vertex, ptr %1482, i64 %1485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1486, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  %1487 = load i32, ptr %686, align 8, !tbaa !197
  %1488 = add nsw i32 %1487, -1
  %1489 = load ptr, ptr %697, align 8, !tbaa !161
  %1490 = load i32, ptr %1174, align 8, !tbaa !176
  %1491 = load i32, ptr %1182, align 4, !tbaa !177
  %1492 = load i32, ptr %1184, align 8, !tbaa !178
  %1493 = load i32, ptr %1179, align 8, !tbaa !176
  %1494 = load i32, ptr %1187, align 4, !tbaa !177
  %1495 = load i32, ptr %1189, align 8, !tbaa !178
  %1496 = icmp sgt i32 %1490, %1493
  br i1 %1496, label %1505, label %1497

1497:                                             ; preds = %1481
  %1498 = icmp eq i32 %1490, %1493
  br i1 %1498, label %1499, label %1506

1499:                                             ; preds = %1497
  %1500 = icmp sgt i32 %1491, %1494
  br i1 %1500, label %1505, label %1501

1501:                                             ; preds = %1499
  %1502 = icmp eq i32 %1491, %1494
  %1503 = icmp sgt i32 %1492, %1495
  %1504 = and i1 %1502, %1503
  br i1 %1504, label %1505, label %1506

1505:                                             ; preds = %1501, %1499, %1481
  br label %1506

1506:                                             ; preds = %1505, %1501, %1497
  %1507 = phi i32 [ %1491, %1505 ], [ %1494, %1501 ], [ %1494, %1497 ]
  %1508 = phi i32 [ %1492, %1505 ], [ %1495, %1501 ], [ %1495, %1497 ]
  %1509 = phi i32 [ %1490, %1505 ], [ %1493, %1501 ], [ %1493, %1497 ]
  %1510 = phi i32 [ %1495, %1505 ], [ %1492, %1501 ], [ %1492, %1497 ]
  %1511 = phi i32 [ %1494, %1505 ], [ %1491, %1501 ], [ %1491, %1497 ]
  %1512 = phi i32 [ %1493, %1505 ], [ %1490, %1501 ], [ %1490, %1497 ]
  %1513 = shl i32 %1512, 5
  %1514 = and i32 %1513, 992
  %1515 = and i32 %1511, 31
  %1516 = or disjoint i32 %1514, %1515
  %1517 = shl nuw nsw i32 %1516, 5
  %1518 = and i32 %1510, 31
  %1519 = shl i32 %1509, 5
  %1520 = and i32 %1519, 992
  %1521 = and i32 %1507, 31
  %1522 = or disjoint i32 %1520, %1521
  %1523 = shl nuw nsw i32 %1522, 5
  %1524 = and i32 %1508, 31
  %1525 = add nuw nsw i32 %1518, %1524
  %1526 = add nuw nsw i32 %1525, %1523
  %1527 = add nuw nsw i32 %1526, %1517
  %1528 = load ptr, ptr %866, align 8, !tbaa !128
  %1529 = icmp eq ptr %1528, null
  br i1 %1529, label %1539, label %1530

1530:                                             ; preds = %1506
  %1531 = load i32, ptr %867, align 8, !tbaa !129
  %1532 = icmp slt i32 %1531, 16344
  br i1 %1532, label %1533, label %1539

1533:                                             ; preds = %1530
  %1534 = add nsw i32 %1531, 40
  %1535 = getelementptr inbounds %struct.pgn_elements, ptr %1528, i64 0, i32 2
  %1536 = load ptr, ptr %1535, align 8, !tbaa !130
  %1537 = sext i32 %1531 to i64
  %1538 = getelementptr inbounds i8, ptr %1536, i64 %1537
  store i32 %1534, ptr %867, align 8, !tbaa !129
  br label %1549

1539:                                             ; preds = %1530, %1506
  %1540 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1541 = call ptr %1540(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %1541, ptr %866, align 8, !tbaa !128
  %1542 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1543 = call ptr %1542(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %1544 = load ptr, ptr %866, align 8, !tbaa !128
  %1545 = getelementptr inbounds %struct.pgn_elements, ptr %1544, i64 0, i32 2
  store ptr %1543, ptr %1545, align 8, !tbaa !130
  call void @BLI_addtail(ptr noundef nonnull %868, ptr noundef %1544) #14
  store i32 40, ptr %869, align 8, !tbaa !129
  %1546 = load ptr, ptr %866, align 8, !tbaa !128
  %1547 = getelementptr inbounds %struct.pgn_elements, ptr %1546, i64 0, i32 2
  %1548 = load ptr, ptr %1547, align 8, !tbaa !130
  br label %1549

1549:                                             ; preds = %1533, %1539
  %1550 = phi ptr [ %1538, %1533 ], [ %1548, %1539 ]
  store i32 %1512, ptr %1550, align 8, !tbaa !179
  %1551 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 1
  store i32 %1511, ptr %1551, align 4, !tbaa !181
  %1552 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 2
  store i32 %1510, ptr %1552, align 8, !tbaa !182
  %1553 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 3
  store i32 %1509, ptr %1553, align 4, !tbaa !183
  %1554 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 4
  store i32 %1507, ptr %1554, align 8, !tbaa !184
  %1555 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 5
  store i32 %1508, ptr %1555, align 4, !tbaa !185
  %1556 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 6
  store i32 %1488, ptr %1556, align 8, !tbaa !186
  %1557 = zext nneg i32 %1527 to i64
  %1558 = getelementptr inbounds ptr, ptr %1489, i64 %1557
  %1559 = load ptr, ptr %1558, align 8, !tbaa !45
  %1560 = getelementptr inbounds %struct.edgelist, ptr %1550, i64 0, i32 7
  store ptr %1559, ptr %1560, align 8, !tbaa !198
  store ptr %1550, ptr %1558, align 8, !tbaa !45
  br label %1561

1561:                                             ; preds = %1549, %1258
  %1562 = phi i32 [ %1488, %1549 ], [ %1259, %1258 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %1563 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 %1166
  store i32 %1562, ptr %1563, align 4, !tbaa !100
  %1564 = add nuw i64 %1166, 1
  %1565 = getelementptr inbounds %struct.intlist, ptr %1167, i64 0, i32 1
  %1566 = load ptr, ptr %1565, align 8, !tbaa !45
  %1567 = icmp eq ptr %1566, null
  br i1 %1567, label %1568, label %1165, !llvm.loop !199

1568:                                             ; preds = %1561
  %1569 = trunc i64 %1564 to i32
  br label %1570

1570:                                             ; preds = %1568, %1161
  %1571 = phi i32 [ 0, %1161 ], [ %1569, %1568 ]
  %1572 = icmp ugt i32 %1571, 2
  br i1 %1572, label %1573, label %2082

1573:                                             ; preds = %1570
  switch i32 %1571, label %2082 [
    i32 3, label %1574
    i32 4, label %1606
    i32 5, label %1675
    i32 6, label %1778
    i32 7, label %1911
  ]

1574:                                             ; preds = %1573
  %1575 = load i32, ptr %946, align 8, !tbaa !100
  %1576 = load i32, ptr %947, align 4, !tbaa !100
  %1577 = load i32, ptr %9, align 16, !tbaa !100
  %1578 = load i32, ptr %948, align 8, !tbaa !200
  %1579 = load i32, ptr %949, align 4, !tbaa !201
  %1580 = icmp eq i32 %1578, %1579
  br i1 %1580, label %1581, label %1597

1581:                                             ; preds = %1574
  %1582 = add nsw i32 %1578, 256
  store i32 %1582, ptr %948, align 8, !tbaa !200
  %1583 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1584 = sext i32 %1582 to i64
  %1585 = shl nsw i64 %1584, 4
  %1586 = call ptr %1583(i64 noundef %1585, ptr noundef nonnull @.str.18) #14
  %1587 = load ptr, ptr %950, align 8, !tbaa !202
  %1588 = icmp eq ptr %1587, null
  br i1 %1588, label %1596, label %1589

1589:                                             ; preds = %1581
  %1590 = load i32, ptr %948, align 8, !tbaa !200
  %1591 = add nsw i32 %1590, -256
  %1592 = sext i32 %1591 to i64
  %1593 = shl nsw i64 %1592, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1586, ptr nonnull align 4 %1587, i64 %1593, i1 false)
  %1594 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1595 = load ptr, ptr %950, align 8, !tbaa !202
  call void %1594(ptr noundef %1595) #14
  br label %1596

1596:                                             ; preds = %1589, %1581
  store ptr %1586, ptr %950, align 8, !tbaa !202
  br label %1597

1597:                                             ; preds = %1574, %1596
  %1598 = load ptr, ptr %951, align 8, !tbaa !202
  %1599 = load i32, ptr %949, align 4, !tbaa !201
  %1600 = shl nsw i32 %1599, 2
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds i32, ptr %1598, i64 %1601
  store i32 %1575, ptr %1602, align 4, !tbaa !100
  %1603 = getelementptr inbounds i32, ptr %1602, i64 1
  store i32 %1576, ptr %1603, align 4, !tbaa !100
  %1604 = getelementptr inbounds i32, ptr %1602, i64 2
  store i32 %1577, ptr %1604, align 4, !tbaa !100
  %1605 = getelementptr inbounds i32, ptr %1602, i64 3
  store i32 %1577, ptr %1605, align 4, !tbaa !100
  br label %2078

1606:                                             ; preds = %1573
  %1607 = load i32, ptr %9, align 16, !tbaa !100
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1609, label %1643

1609:                                             ; preds = %1606
  %1610 = load i32, ptr %939, align 4, !tbaa !100
  %1611 = load i32, ptr %940, align 8, !tbaa !100
  %1612 = load i32, ptr %941, align 4, !tbaa !100
  %1613 = load i32, ptr %942, align 8, !tbaa !200
  %1614 = load i32, ptr %943, align 4, !tbaa !201
  %1615 = icmp eq i32 %1613, %1614
  br i1 %1615, label %1616, label %1632

1616:                                             ; preds = %1609
  %1617 = add nsw i32 %1613, 256
  store i32 %1617, ptr %942, align 8, !tbaa !200
  %1618 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1619 = sext i32 %1617 to i64
  %1620 = shl nsw i64 %1619, 4
  %1621 = call ptr %1618(i64 noundef %1620, ptr noundef nonnull @.str.18) #14
  %1622 = load ptr, ptr %944, align 8, !tbaa !202
  %1623 = icmp eq ptr %1622, null
  br i1 %1623, label %1631, label %1624

1624:                                             ; preds = %1616
  %1625 = load i32, ptr %942, align 8, !tbaa !200
  %1626 = add nsw i32 %1625, -256
  %1627 = sext i32 %1626 to i64
  %1628 = shl nsw i64 %1627, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1621, ptr nonnull align 4 %1622, i64 %1628, i1 false)
  %1629 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1630 = load ptr, ptr %944, align 8, !tbaa !202
  call void %1629(ptr noundef %1630) #14
  br label %1631

1631:                                             ; preds = %1624, %1616
  store ptr %1621, ptr %944, align 8, !tbaa !202
  br label %1632

1632:                                             ; preds = %1631, %1609
  %1633 = load ptr, ptr %945, align 8, !tbaa !202
  %1634 = load i32, ptr %943, align 4, !tbaa !201
  %1635 = shl nsw i32 %1634, 2
  %1636 = sext i32 %1635 to i64
  %1637 = getelementptr inbounds i32, ptr %1633, i64 %1636
  store i32 0, ptr %1637, align 4, !tbaa !100
  %1638 = getelementptr inbounds i32, ptr %1637, i64 1
  store i32 %1610, ptr %1638, align 4, !tbaa !100
  %1639 = getelementptr inbounds i32, ptr %1637, i64 2
  store i32 %1611, ptr %1639, align 4, !tbaa !100
  %1640 = icmp eq i32 %1612, 0
  %1641 = getelementptr inbounds i32, ptr %1637, i64 3
  %1642 = select i1 %1640, i32 %1611, i32 %1612
  store i32 %1642, ptr %1641, align 4, !tbaa !100
  br label %2078

1643:                                             ; preds = %1606
  %1644 = load i32, ptr %932, align 4, !tbaa !100
  %1645 = load i32, ptr %933, align 8, !tbaa !100
  %1646 = load i32, ptr %934, align 4, !tbaa !100
  %1647 = load i32, ptr %935, align 8, !tbaa !200
  %1648 = load i32, ptr %936, align 4, !tbaa !201
  %1649 = icmp eq i32 %1647, %1648
  br i1 %1649, label %1650, label %1666

1650:                                             ; preds = %1643
  %1651 = add nsw i32 %1647, 256
  store i32 %1651, ptr %935, align 8, !tbaa !200
  %1652 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1653 = sext i32 %1651 to i64
  %1654 = shl nsw i64 %1653, 4
  %1655 = call ptr %1652(i64 noundef %1654, ptr noundef nonnull @.str.18) #14
  %1656 = load ptr, ptr %937, align 8, !tbaa !202
  %1657 = icmp eq ptr %1656, null
  br i1 %1657, label %1665, label %1658

1658:                                             ; preds = %1650
  %1659 = load i32, ptr %935, align 8, !tbaa !200
  %1660 = add nsw i32 %1659, -256
  %1661 = sext i32 %1660 to i64
  %1662 = shl nsw i64 %1661, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1655, ptr nonnull align 4 %1656, i64 %1662, i1 false)
  %1663 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1664 = load ptr, ptr %937, align 8, !tbaa !202
  call void %1663(ptr noundef %1664) #14
  br label %1665

1665:                                             ; preds = %1658, %1650
  store ptr %1655, ptr %937, align 8, !tbaa !202
  br label %1666

1666:                                             ; preds = %1665, %1643
  %1667 = load ptr, ptr %938, align 8, !tbaa !202
  %1668 = load i32, ptr %936, align 4, !tbaa !201
  %1669 = shl nsw i32 %1668, 2
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds i32, ptr %1667, i64 %1670
  store i32 %1644, ptr %1671, align 4, !tbaa !100
  %1672 = getelementptr inbounds i32, ptr %1671, i64 1
  store i32 %1645, ptr %1672, align 4, !tbaa !100
  %1673 = getelementptr inbounds i32, ptr %1671, i64 2
  store i32 %1646, ptr %1673, align 4, !tbaa !100
  %1674 = getelementptr inbounds i32, ptr %1671, i64 3
  store i32 %1607, ptr %1674, align 4, !tbaa !100
  br label %2078

1675:                                             ; preds = %1573
  %1676 = load i32, ptr %9, align 16, !tbaa !100
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1678, label %1712

1678:                                             ; preds = %1675
  %1679 = load i32, ptr %919, align 4, !tbaa !100
  %1680 = load i32, ptr %920, align 8, !tbaa !100
  %1681 = load i32, ptr %921, align 4, !tbaa !100
  %1682 = load i32, ptr %922, align 8, !tbaa !200
  %1683 = load i32, ptr %923, align 4, !tbaa !201
  %1684 = icmp eq i32 %1682, %1683
  br i1 %1684, label %1685, label %1701

1685:                                             ; preds = %1678
  %1686 = add nsw i32 %1682, 256
  store i32 %1686, ptr %922, align 8, !tbaa !200
  %1687 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1688 = sext i32 %1686 to i64
  %1689 = shl nsw i64 %1688, 4
  %1690 = call ptr %1687(i64 noundef %1689, ptr noundef nonnull @.str.18) #14
  %1691 = load ptr, ptr %924, align 8, !tbaa !202
  %1692 = icmp eq ptr %1691, null
  br i1 %1692, label %1700, label %1693

1693:                                             ; preds = %1685
  %1694 = load i32, ptr %922, align 8, !tbaa !200
  %1695 = add nsw i32 %1694, -256
  %1696 = sext i32 %1695 to i64
  %1697 = shl nsw i64 %1696, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1690, ptr nonnull align 4 %1691, i64 %1697, i1 false)
  %1698 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1699 = load ptr, ptr %924, align 8, !tbaa !202
  call void %1698(ptr noundef %1699) #14
  br label %1700

1700:                                             ; preds = %1693, %1685
  store ptr %1690, ptr %924, align 8, !tbaa !202
  br label %1701

1701:                                             ; preds = %1700, %1678
  %1702 = load ptr, ptr %925, align 8, !tbaa !202
  %1703 = load i32, ptr %923, align 4, !tbaa !201
  %1704 = shl nsw i32 %1703, 2
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds i32, ptr %1702, i64 %1705
  store i32 0, ptr %1706, align 4, !tbaa !100
  %1707 = getelementptr inbounds i32, ptr %1706, i64 1
  store i32 %1679, ptr %1707, align 4, !tbaa !100
  %1708 = getelementptr inbounds i32, ptr %1706, i64 2
  store i32 %1680, ptr %1708, align 4, !tbaa !100
  %1709 = icmp eq i32 %1681, 0
  %1710 = getelementptr inbounds i32, ptr %1706, i64 3
  %1711 = select i1 %1709, i32 %1680, i32 %1681
  store i32 %1711, ptr %1710, align 4, !tbaa !100
  br label %1744

1712:                                             ; preds = %1675
  %1713 = load i32, ptr %912, align 4, !tbaa !100
  %1714 = load i32, ptr %913, align 8, !tbaa !100
  %1715 = load i32, ptr %914, align 4, !tbaa !100
  %1716 = load i32, ptr %915, align 8, !tbaa !200
  %1717 = load i32, ptr %916, align 4, !tbaa !201
  %1718 = icmp eq i32 %1716, %1717
  br i1 %1718, label %1719, label %1735

1719:                                             ; preds = %1712
  %1720 = add nsw i32 %1716, 256
  store i32 %1720, ptr %915, align 8, !tbaa !200
  %1721 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1722 = sext i32 %1720 to i64
  %1723 = shl nsw i64 %1722, 4
  %1724 = call ptr %1721(i64 noundef %1723, ptr noundef nonnull @.str.18) #14
  %1725 = load ptr, ptr %917, align 8, !tbaa !202
  %1726 = icmp eq ptr %1725, null
  br i1 %1726, label %1734, label %1727

1727:                                             ; preds = %1719
  %1728 = load i32, ptr %915, align 8, !tbaa !200
  %1729 = add nsw i32 %1728, -256
  %1730 = sext i32 %1729 to i64
  %1731 = shl nsw i64 %1730, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1724, ptr nonnull align 4 %1725, i64 %1731, i1 false)
  %1732 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1733 = load ptr, ptr %917, align 8, !tbaa !202
  call void %1732(ptr noundef %1733) #14
  br label %1734

1734:                                             ; preds = %1727, %1719
  store ptr %1724, ptr %917, align 8, !tbaa !202
  br label %1735

1735:                                             ; preds = %1734, %1712
  %1736 = load ptr, ptr %918, align 8, !tbaa !202
  %1737 = load i32, ptr %916, align 4, !tbaa !201
  %1738 = shl nsw i32 %1737, 2
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds i32, ptr %1736, i64 %1739
  store i32 %1713, ptr %1740, align 4, !tbaa !100
  %1741 = getelementptr inbounds i32, ptr %1740, i64 1
  store i32 %1714, ptr %1741, align 4, !tbaa !100
  %1742 = getelementptr inbounds i32, ptr %1740, i64 2
  store i32 %1715, ptr %1742, align 4, !tbaa !100
  %1743 = getelementptr inbounds i32, ptr %1740, i64 3
  store i32 %1676, ptr %1743, align 4, !tbaa !100
  br label %1744

1744:                                             ; preds = %1735, %1701
  %1745 = phi ptr [ %916, %1735 ], [ %923, %1701 ]
  %1746 = load i32, ptr %1745, align 4, !tbaa !201
  %1747 = add nsw i32 %1746, 1
  store i32 %1747, ptr %1745, align 4, !tbaa !201
  %1748 = load i32, ptr %926, align 16, !tbaa !100
  %1749 = load i32, ptr %927, align 4, !tbaa !100
  %1750 = load i32, ptr %928, align 8, !tbaa !200
  %1751 = load i32, ptr %929, align 4, !tbaa !201
  %1752 = icmp eq i32 %1750, %1751
  br i1 %1752, label %1753, label %1769

1753:                                             ; preds = %1744
  %1754 = add nsw i32 %1750, 256
  store i32 %1754, ptr %928, align 8, !tbaa !200
  %1755 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1756 = sext i32 %1754 to i64
  %1757 = shl nsw i64 %1756, 4
  %1758 = call ptr %1755(i64 noundef %1757, ptr noundef nonnull @.str.18) #14
  %1759 = load ptr, ptr %930, align 8, !tbaa !202
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1768, label %1761

1761:                                             ; preds = %1753
  %1762 = load i32, ptr %928, align 8, !tbaa !200
  %1763 = add nsw i32 %1762, -256
  %1764 = sext i32 %1763 to i64
  %1765 = shl nsw i64 %1764, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1758, ptr nonnull align 4 %1759, i64 %1765, i1 false)
  %1766 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1767 = load ptr, ptr %930, align 8, !tbaa !202
  call void %1766(ptr noundef %1767) #14
  br label %1768

1768:                                             ; preds = %1761, %1753
  store ptr %1758, ptr %930, align 8, !tbaa !202
  br label %1769

1769:                                             ; preds = %1744, %1768
  %1770 = load ptr, ptr %931, align 8, !tbaa !202
  %1771 = load i32, ptr %929, align 4, !tbaa !201
  %1772 = shl nsw i32 %1771, 2
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i32, ptr %1770, i64 %1773
  store i32 %1748, ptr %1774, align 4, !tbaa !100
  %1775 = getelementptr inbounds i32, ptr %1774, i64 1
  store i32 %1749, ptr %1775, align 4, !tbaa !100
  %1776 = getelementptr inbounds i32, ptr %1774, i64 2
  store i32 %1676, ptr %1776, align 4, !tbaa !100
  %1777 = getelementptr inbounds i32, ptr %1774, i64 3
  store i32 %1676, ptr %1777, align 4, !tbaa !100
  br label %2078

1778:                                             ; preds = %1573
  %1779 = load i32, ptr %9, align 16, !tbaa !100
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1781, label %1848

1781:                                             ; preds = %1778
  %1782 = load i32, ptr %903, align 4, !tbaa !100
  %1783 = load i32, ptr %904, align 8, !tbaa !100
  %1784 = load i32, ptr %905, align 4, !tbaa !100
  %1785 = load i32, ptr %906, align 8, !tbaa !200
  %1786 = load i32, ptr %907, align 4, !tbaa !201
  %1787 = icmp eq i32 %1785, %1786
  br i1 %1787, label %1788, label %1804

1788:                                             ; preds = %1781
  %1789 = add nsw i32 %1785, 256
  store i32 %1789, ptr %906, align 8, !tbaa !200
  %1790 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1791 = sext i32 %1789 to i64
  %1792 = shl nsw i64 %1791, 4
  %1793 = call ptr %1790(i64 noundef %1792, ptr noundef nonnull @.str.18) #14
  %1794 = load ptr, ptr %908, align 8, !tbaa !202
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1803, label %1796

1796:                                             ; preds = %1788
  %1797 = load i32, ptr %906, align 8, !tbaa !200
  %1798 = add nsw i32 %1797, -256
  %1799 = sext i32 %1798 to i64
  %1800 = shl nsw i64 %1799, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1793, ptr nonnull align 4 %1794, i64 %1800, i1 false)
  %1801 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1802 = load ptr, ptr %908, align 8, !tbaa !202
  call void %1801(ptr noundef %1802) #14
  br label %1803

1803:                                             ; preds = %1796, %1788
  store ptr %1793, ptr %908, align 8, !tbaa !202
  br label %1804

1804:                                             ; preds = %1803, %1781
  %1805 = load ptr, ptr %909, align 8, !tbaa !202
  %1806 = load i32, ptr %907, align 4, !tbaa !201
  %1807 = shl nsw i32 %1806, 2
  %1808 = sext i32 %1807 to i64
  %1809 = getelementptr inbounds i32, ptr %1805, i64 %1808
  store i32 0, ptr %1809, align 4, !tbaa !100
  %1810 = getelementptr inbounds i32, ptr %1809, i64 1
  store i32 %1782, ptr %1810, align 4, !tbaa !100
  %1811 = getelementptr inbounds i32, ptr %1809, i64 2
  store i32 %1783, ptr %1811, align 4, !tbaa !100
  %1812 = icmp eq i32 %1784, 0
  %1813 = getelementptr inbounds i32, ptr %1809, i64 3
  %1814 = select i1 %1812, i32 %1783, i32 %1784
  store i32 %1814, ptr %1813, align 4, !tbaa !100
  %1815 = load i32, ptr %907, align 4, !tbaa !201
  %1816 = add nsw i32 %1815, 1
  store i32 %1816, ptr %907, align 4, !tbaa !201
  %1817 = load i32, ptr %910, align 4, !tbaa !100
  %1818 = load i32, ptr %911, align 16, !tbaa !100
  %1819 = load i32, ptr %906, align 8, !tbaa !200
  %1820 = icmp eq i32 %1819, %1816
  br i1 %1820, label %1821, label %1837

1821:                                             ; preds = %1804
  %1822 = add nsw i32 %1819, 256
  store i32 %1822, ptr %906, align 8, !tbaa !200
  %1823 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1824 = sext i32 %1822 to i64
  %1825 = shl nsw i64 %1824, 4
  %1826 = call ptr %1823(i64 noundef %1825, ptr noundef nonnull @.str.18) #14
  %1827 = load ptr, ptr %909, align 8, !tbaa !202
  %1828 = icmp eq ptr %1827, null
  br i1 %1828, label %1836, label %1829

1829:                                             ; preds = %1821
  %1830 = load i32, ptr %906, align 8, !tbaa !200
  %1831 = add nsw i32 %1830, -256
  %1832 = sext i32 %1831 to i64
  %1833 = shl nsw i64 %1832, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1826, ptr nonnull align 4 %1827, i64 %1833, i1 false)
  %1834 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1835 = load ptr, ptr %909, align 8, !tbaa !202
  call void %1834(ptr noundef %1835) #14
  br label %1836

1836:                                             ; preds = %1829, %1821
  store ptr %1826, ptr %909, align 8, !tbaa !202
  br label %1837

1837:                                             ; preds = %1836, %1804
  %1838 = load ptr, ptr %909, align 8, !tbaa !202
  %1839 = load i32, ptr %907, align 4, !tbaa !201
  %1840 = shl nsw i32 %1839, 2
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds i32, ptr %1838, i64 %1841
  store i32 %1779, ptr %1842, align 4, !tbaa !100
  %1843 = getelementptr inbounds i32, ptr %1842, i64 1
  store i32 %1817, ptr %1843, align 4, !tbaa !100
  %1844 = getelementptr inbounds i32, ptr %1842, i64 2
  store i32 %1818, ptr %1844, align 4, !tbaa !100
  %1845 = icmp eq i32 %1782, 0
  %1846 = getelementptr inbounds i32, ptr %1842, i64 3
  %1847 = select i1 %1845, i32 %1818, i32 %1782
  store i32 %1847, ptr %1846, align 4, !tbaa !100
  br label %2078

1848:                                             ; preds = %1778
  %1849 = load i32, ptr %894, align 4, !tbaa !100
  %1850 = load i32, ptr %895, align 8, !tbaa !100
  %1851 = load i32, ptr %896, align 4, !tbaa !100
  %1852 = load i32, ptr %897, align 8, !tbaa !200
  %1853 = load i32, ptr %898, align 4, !tbaa !201
  %1854 = icmp eq i32 %1852, %1853
  br i1 %1854, label %1855, label %1871

1855:                                             ; preds = %1848
  %1856 = add nsw i32 %1852, 256
  store i32 %1856, ptr %897, align 8, !tbaa !200
  %1857 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1858 = sext i32 %1856 to i64
  %1859 = shl nsw i64 %1858, 4
  %1860 = call ptr %1857(i64 noundef %1859, ptr noundef nonnull @.str.18) #14
  %1861 = load ptr, ptr %899, align 8, !tbaa !202
  %1862 = icmp eq ptr %1861, null
  br i1 %1862, label %1870, label %1863

1863:                                             ; preds = %1855
  %1864 = load i32, ptr %897, align 8, !tbaa !200
  %1865 = add nsw i32 %1864, -256
  %1866 = sext i32 %1865 to i64
  %1867 = shl nsw i64 %1866, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1860, ptr nonnull align 4 %1861, i64 %1867, i1 false)
  %1868 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1869 = load ptr, ptr %899, align 8, !tbaa !202
  call void %1868(ptr noundef %1869) #14
  br label %1870

1870:                                             ; preds = %1863, %1855
  store ptr %1860, ptr %899, align 8, !tbaa !202
  br label %1871

1871:                                             ; preds = %1870, %1848
  %1872 = load ptr, ptr %900, align 8, !tbaa !202
  %1873 = load i32, ptr %898, align 4, !tbaa !201
  %1874 = shl nsw i32 %1873, 2
  %1875 = sext i32 %1874 to i64
  %1876 = getelementptr inbounds i32, ptr %1872, i64 %1875
  store i32 %1849, ptr %1876, align 4, !tbaa !100
  %1877 = getelementptr inbounds i32, ptr %1876, i64 1
  store i32 %1850, ptr %1877, align 4, !tbaa !100
  %1878 = getelementptr inbounds i32, ptr %1876, i64 2
  store i32 %1851, ptr %1878, align 4, !tbaa !100
  %1879 = getelementptr inbounds i32, ptr %1876, i64 3
  store i32 %1779, ptr %1879, align 4, !tbaa !100
  %1880 = load i32, ptr %898, align 4, !tbaa !201
  %1881 = add nsw i32 %1880, 1
  store i32 %1881, ptr %898, align 4, !tbaa !201
  %1882 = load i32, ptr %901, align 4, !tbaa !100
  %1883 = load i32, ptr %902, align 16, !tbaa !100
  %1884 = load i32, ptr %897, align 8, !tbaa !200
  %1885 = icmp eq i32 %1884, %1881
  br i1 %1885, label %1886, label %1902

1886:                                             ; preds = %1871
  %1887 = add nsw i32 %1884, 256
  store i32 %1887, ptr %897, align 8, !tbaa !200
  %1888 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1889 = sext i32 %1887 to i64
  %1890 = shl nsw i64 %1889, 4
  %1891 = call ptr %1888(i64 noundef %1890, ptr noundef nonnull @.str.18) #14
  %1892 = load ptr, ptr %900, align 8, !tbaa !202
  %1893 = icmp eq ptr %1892, null
  br i1 %1893, label %1901, label %1894

1894:                                             ; preds = %1886
  %1895 = load i32, ptr %897, align 8, !tbaa !200
  %1896 = add nsw i32 %1895, -256
  %1897 = sext i32 %1896 to i64
  %1898 = shl nsw i64 %1897, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1891, ptr nonnull align 4 %1892, i64 %1898, i1 false)
  %1899 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1900 = load ptr, ptr %900, align 8, !tbaa !202
  call void %1899(ptr noundef %1900) #14
  br label %1901

1901:                                             ; preds = %1894, %1886
  store ptr %1891, ptr %900, align 8, !tbaa !202
  br label %1902

1902:                                             ; preds = %1901, %1871
  %1903 = load ptr, ptr %900, align 8, !tbaa !202
  %1904 = load i32, ptr %898, align 4, !tbaa !201
  %1905 = shl nsw i32 %1904, 2
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds i32, ptr %1903, i64 %1906
  store i32 %1882, ptr %1907, align 4, !tbaa !100
  %1908 = getelementptr inbounds i32, ptr %1907, i64 1
  store i32 %1883, ptr %1908, align 4, !tbaa !100
  %1909 = getelementptr inbounds i32, ptr %1907, i64 2
  store i32 %1849, ptr %1909, align 4, !tbaa !100
  %1910 = getelementptr inbounds i32, ptr %1907, i64 3
  store i32 %1779, ptr %1910, align 4, !tbaa !100
  br label %2078

1911:                                             ; preds = %1573
  %1912 = load i32, ptr %9, align 16, !tbaa !100
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1914, label %1981

1914:                                             ; preds = %1911
  %1915 = load i32, ptr %879, align 4, !tbaa !100
  %1916 = load i32, ptr %880, align 8, !tbaa !100
  %1917 = load i32, ptr %881, align 4, !tbaa !100
  %1918 = load i32, ptr %882, align 8, !tbaa !200
  %1919 = load i32, ptr %883, align 4, !tbaa !201
  %1920 = icmp eq i32 %1918, %1919
  br i1 %1920, label %1921, label %1937

1921:                                             ; preds = %1914
  %1922 = add nsw i32 %1918, 256
  store i32 %1922, ptr %882, align 8, !tbaa !200
  %1923 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1924 = sext i32 %1922 to i64
  %1925 = shl nsw i64 %1924, 4
  %1926 = call ptr %1923(i64 noundef %1925, ptr noundef nonnull @.str.18) #14
  %1927 = load ptr, ptr %884, align 8, !tbaa !202
  %1928 = icmp eq ptr %1927, null
  br i1 %1928, label %1936, label %1929

1929:                                             ; preds = %1921
  %1930 = load i32, ptr %882, align 8, !tbaa !200
  %1931 = add nsw i32 %1930, -256
  %1932 = sext i32 %1931 to i64
  %1933 = shl nsw i64 %1932, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1926, ptr nonnull align 4 %1927, i64 %1933, i1 false)
  %1934 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1935 = load ptr, ptr %884, align 8, !tbaa !202
  call void %1934(ptr noundef %1935) #14
  br label %1936

1936:                                             ; preds = %1929, %1921
  store ptr %1926, ptr %884, align 8, !tbaa !202
  br label %1937

1937:                                             ; preds = %1936, %1914
  %1938 = load ptr, ptr %885, align 8, !tbaa !202
  %1939 = load i32, ptr %883, align 4, !tbaa !201
  %1940 = shl nsw i32 %1939, 2
  %1941 = sext i32 %1940 to i64
  %1942 = getelementptr inbounds i32, ptr %1938, i64 %1941
  store i32 0, ptr %1942, align 4, !tbaa !100
  %1943 = getelementptr inbounds i32, ptr %1942, i64 1
  store i32 %1915, ptr %1943, align 4, !tbaa !100
  %1944 = getelementptr inbounds i32, ptr %1942, i64 2
  store i32 %1916, ptr %1944, align 4, !tbaa !100
  %1945 = icmp eq i32 %1917, 0
  %1946 = getelementptr inbounds i32, ptr %1942, i64 3
  %1947 = select i1 %1945, i32 %1916, i32 %1917
  store i32 %1947, ptr %1946, align 4, !tbaa !100
  %1948 = load i32, ptr %883, align 4, !tbaa !201
  %1949 = add nsw i32 %1948, 1
  store i32 %1949, ptr %883, align 4, !tbaa !201
  %1950 = load i32, ptr %886, align 4, !tbaa !100
  %1951 = load i32, ptr %887, align 16, !tbaa !100
  %1952 = load i32, ptr %882, align 8, !tbaa !200
  %1953 = icmp eq i32 %1952, %1949
  br i1 %1953, label %1954, label %1970

1954:                                             ; preds = %1937
  %1955 = add nsw i32 %1952, 256
  store i32 %1955, ptr %882, align 8, !tbaa !200
  %1956 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1957 = sext i32 %1955 to i64
  %1958 = shl nsw i64 %1957, 4
  %1959 = call ptr %1956(i64 noundef %1958, ptr noundef nonnull @.str.18) #14
  %1960 = load ptr, ptr %885, align 8, !tbaa !202
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1969, label %1962

1962:                                             ; preds = %1954
  %1963 = load i32, ptr %882, align 8, !tbaa !200
  %1964 = add nsw i32 %1963, -256
  %1965 = sext i32 %1964 to i64
  %1966 = shl nsw i64 %1965, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1959, ptr nonnull align 4 %1960, i64 %1966, i1 false)
  %1967 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %1968 = load ptr, ptr %885, align 8, !tbaa !202
  call void %1967(ptr noundef %1968) #14
  br label %1969

1969:                                             ; preds = %1962, %1954
  store ptr %1959, ptr %885, align 8, !tbaa !202
  br label %1970

1970:                                             ; preds = %1969, %1937
  %1971 = load ptr, ptr %885, align 8, !tbaa !202
  %1972 = load i32, ptr %883, align 4, !tbaa !201
  %1973 = shl nsw i32 %1972, 2
  %1974 = sext i32 %1973 to i64
  %1975 = getelementptr inbounds i32, ptr %1971, i64 %1974
  store i32 %1912, ptr %1975, align 4, !tbaa !100
  %1976 = getelementptr inbounds i32, ptr %1975, i64 1
  store i32 %1950, ptr %1976, align 4, !tbaa !100
  %1977 = getelementptr inbounds i32, ptr %1975, i64 2
  store i32 %1951, ptr %1977, align 4, !tbaa !100
  %1978 = icmp eq i32 %1915, 0
  %1979 = getelementptr inbounds i32, ptr %1975, i64 3
  %1980 = select i1 %1978, i32 %1951, i32 %1915
  store i32 %1980, ptr %1979, align 4, !tbaa !100
  br label %2044

1981:                                             ; preds = %1911
  %1982 = load i32, ptr %870, align 4, !tbaa !100
  %1983 = load i32, ptr %871, align 8, !tbaa !100
  %1984 = load i32, ptr %872, align 4, !tbaa !100
  %1985 = load i32, ptr %873, align 8, !tbaa !200
  %1986 = load i32, ptr %874, align 4, !tbaa !201
  %1987 = icmp eq i32 %1985, %1986
  br i1 %1987, label %1988, label %2004

1988:                                             ; preds = %1981
  %1989 = add nsw i32 %1985, 256
  store i32 %1989, ptr %873, align 8, !tbaa !200
  %1990 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1991 = sext i32 %1989 to i64
  %1992 = shl nsw i64 %1991, 4
  %1993 = call ptr %1990(i64 noundef %1992, ptr noundef nonnull @.str.18) #14
  %1994 = load ptr, ptr %875, align 8, !tbaa !202
  %1995 = icmp eq ptr %1994, null
  br i1 %1995, label %2003, label %1996

1996:                                             ; preds = %1988
  %1997 = load i32, ptr %873, align 8, !tbaa !200
  %1998 = add nsw i32 %1997, -256
  %1999 = sext i32 %1998 to i64
  %2000 = shl nsw i64 %1999, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1993, ptr nonnull align 4 %1994, i64 %2000, i1 false)
  %2001 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2002 = load ptr, ptr %875, align 8, !tbaa !202
  call void %2001(ptr noundef %2002) #14
  br label %2003

2003:                                             ; preds = %1996, %1988
  store ptr %1993, ptr %875, align 8, !tbaa !202
  br label %2004

2004:                                             ; preds = %2003, %1981
  %2005 = load ptr, ptr %876, align 8, !tbaa !202
  %2006 = load i32, ptr %874, align 4, !tbaa !201
  %2007 = shl nsw i32 %2006, 2
  %2008 = sext i32 %2007 to i64
  %2009 = getelementptr inbounds i32, ptr %2005, i64 %2008
  store i32 %1982, ptr %2009, align 4, !tbaa !100
  %2010 = getelementptr inbounds i32, ptr %2009, i64 1
  store i32 %1983, ptr %2010, align 4, !tbaa !100
  %2011 = getelementptr inbounds i32, ptr %2009, i64 2
  store i32 %1984, ptr %2011, align 4, !tbaa !100
  %2012 = getelementptr inbounds i32, ptr %2009, i64 3
  store i32 %1912, ptr %2012, align 4, !tbaa !100
  %2013 = load i32, ptr %874, align 4, !tbaa !201
  %2014 = add nsw i32 %2013, 1
  store i32 %2014, ptr %874, align 4, !tbaa !201
  %2015 = load i32, ptr %877, align 4, !tbaa !100
  %2016 = load i32, ptr %878, align 16, !tbaa !100
  %2017 = load i32, ptr %873, align 8, !tbaa !200
  %2018 = icmp eq i32 %2017, %2014
  br i1 %2018, label %2019, label %2035

2019:                                             ; preds = %2004
  %2020 = add nsw i32 %2017, 256
  store i32 %2020, ptr %873, align 8, !tbaa !200
  %2021 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %2022 = sext i32 %2020 to i64
  %2023 = shl nsw i64 %2022, 4
  %2024 = call ptr %2021(i64 noundef %2023, ptr noundef nonnull @.str.18) #14
  %2025 = load ptr, ptr %876, align 8, !tbaa !202
  %2026 = icmp eq ptr %2025, null
  br i1 %2026, label %2034, label %2027

2027:                                             ; preds = %2019
  %2028 = load i32, ptr %873, align 8, !tbaa !200
  %2029 = add nsw i32 %2028, -256
  %2030 = sext i32 %2029 to i64
  %2031 = shl nsw i64 %2030, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2024, ptr nonnull align 4 %2025, i64 %2031, i1 false)
  %2032 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2033 = load ptr, ptr %876, align 8, !tbaa !202
  call void %2032(ptr noundef %2033) #14
  br label %2034

2034:                                             ; preds = %2027, %2019
  store ptr %2024, ptr %876, align 8, !tbaa !202
  br label %2035

2035:                                             ; preds = %2034, %2004
  %2036 = load ptr, ptr %876, align 8, !tbaa !202
  %2037 = load i32, ptr %874, align 4, !tbaa !201
  %2038 = shl nsw i32 %2037, 2
  %2039 = sext i32 %2038 to i64
  %2040 = getelementptr inbounds i32, ptr %2036, i64 %2039
  store i32 %2015, ptr %2040, align 4, !tbaa !100
  %2041 = getelementptr inbounds i32, ptr %2040, i64 1
  store i32 %2016, ptr %2041, align 4, !tbaa !100
  %2042 = getelementptr inbounds i32, ptr %2040, i64 2
  store i32 %1982, ptr %2042, align 4, !tbaa !100
  %2043 = getelementptr inbounds i32, ptr %2040, i64 3
  store i32 %1912, ptr %2043, align 4, !tbaa !100
  br label %2044

2044:                                             ; preds = %2035, %1970
  %2045 = phi ptr [ %874, %2035 ], [ %883, %1970 ]
  %2046 = load i32, ptr %2045, align 4, !tbaa !201
  %2047 = add nsw i32 %2046, 1
  store i32 %2047, ptr %2045, align 4, !tbaa !201
  %2048 = load i32, ptr %888, align 8, !tbaa !100
  %2049 = load i32, ptr %889, align 4, !tbaa !100
  %2050 = load i32, ptr %890, align 8, !tbaa !200
  %2051 = load i32, ptr %891, align 4, !tbaa !201
  %2052 = icmp eq i32 %2050, %2051
  br i1 %2052, label %2053, label %2069

2053:                                             ; preds = %2044
  %2054 = add nsw i32 %2050, 256
  store i32 %2054, ptr %890, align 8, !tbaa !200
  %2055 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %2056 = sext i32 %2054 to i64
  %2057 = shl nsw i64 %2056, 4
  %2058 = call ptr %2055(i64 noundef %2057, ptr noundef nonnull @.str.18) #14
  %2059 = load ptr, ptr %892, align 8, !tbaa !202
  %2060 = icmp eq ptr %2059, null
  br i1 %2060, label %2068, label %2061

2061:                                             ; preds = %2053
  %2062 = load i32, ptr %890, align 8, !tbaa !200
  %2063 = add nsw i32 %2062, -256
  %2064 = sext i32 %2063 to i64
  %2065 = shl nsw i64 %2064, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2058, ptr nonnull align 4 %2059, i64 %2065, i1 false)
  %2066 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2067 = load ptr, ptr %892, align 8, !tbaa !202
  call void %2066(ptr noundef %2067) #14
  br label %2068

2068:                                             ; preds = %2061, %2053
  store ptr %2058, ptr %892, align 8, !tbaa !202
  br label %2069

2069:                                             ; preds = %2044, %2068
  %2070 = load ptr, ptr %893, align 8, !tbaa !202
  %2071 = load i32, ptr %891, align 4, !tbaa !201
  %2072 = shl nsw i32 %2071, 2
  %2073 = sext i32 %2072 to i64
  %2074 = getelementptr inbounds i32, ptr %2070, i64 %2073
  store i32 %2048, ptr %2074, align 4, !tbaa !100
  %2075 = getelementptr inbounds i32, ptr %2074, i64 1
  store i32 %2049, ptr %2075, align 4, !tbaa !100
  %2076 = getelementptr inbounds i32, ptr %2074, i64 2
  store i32 %1912, ptr %2076, align 4, !tbaa !100
  %2077 = getelementptr inbounds i32, ptr %2074, i64 3
  store i32 %1912, ptr %2077, align 4, !tbaa !100
  br label %2078

2078:                                             ; preds = %1597, %1632, %1666, %1769, %1837, %1902, %2069
  %2079 = phi ptr [ %891, %2069 ], [ %898, %1902 ], [ %907, %1837 ], [ %929, %1769 ], [ %936, %1666 ], [ %943, %1632 ], [ %949, %1597 ]
  %2080 = load i32, ptr %2079, align 4, !tbaa !201
  %2081 = add nsw i32 %2080, 1
  store i32 %2081, ptr %2079, align 4, !tbaa !201
  br label %2082

2082:                                             ; preds = %2078, %1573, %1570
  %2083 = getelementptr inbounds %struct.intlists, ptr %1162, i64 0, i32 1
  %2084 = load ptr, ptr %2083, align 8, !tbaa !45
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2086, label %1161, !llvm.loop !203

2086:                                             ; preds = %2082, %1156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  %2087 = load ptr, ptr %683, align 8, !tbaa !157
  %2088 = getelementptr inbounds %struct.cubes, ptr %2087, i64 0, i32 1
  %2089 = load ptr, ptr %2088, align 8, !tbaa !204
  store ptr %2089, ptr %683, align 8, !tbaa !157
  %2090 = load i32, ptr %14, align 8, !tbaa !207
  %2091 = add nsw i32 %2090, -1
  %2092 = load i32, ptr %952, align 4, !tbaa !208
  %2093 = load i32, ptr %953, align 8, !tbaa !209
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2091, i32 noundef %2092, i32 noundef %2093, ptr noundef nonnull %14, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3)
  %2094 = add nsw i32 %2090, 1
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2094, i32 noundef %2092, i32 noundef %2093, ptr noundef nonnull %14, i32 noundef 2, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7)
  %2095 = add nsw i32 %2092, -1
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2090, i32 noundef %2095, i32 noundef %2093, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 4, i32 noundef 5)
  %2096 = add nsw i32 %2092, 1
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2090, i32 noundef %2096, i32 noundef %2093, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 6, i32 noundef 7)
  %2097 = add nsw i32 %2093, -1
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2090, i32 noundef %2092, i32 noundef %2097, ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 6)
  %2098 = add nsw i32 %2093, 1
  call fastcc void @testface(ptr noundef nonnull %37, i32 noundef %2090, i32 noundef %2092, i32 noundef %2098, ptr noundef nonnull %14, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 5, i32 noundef 7)
  %2099 = load ptr, ptr %683, align 8, !tbaa !157
  %2100 = icmp eq ptr %2099, null
  br i1 %2100, label %2101, label %1140, !llvm.loop !210

2101:                                             ; preds = %2086, %831
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %14) #14
  %2102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2103 = load ptr, ptr %116, align 8, !tbaa !120
  call void %2102(ptr noundef %2103) #14
  %2104 = load i32, ptr %42, align 4, !tbaa !110
  %2105 = icmp sgt i32 %2104, 1
  br i1 %2105, label %2106, label %2111

2106:                                             ; preds = %2101
  %2107 = load ptr, ptr %605, align 8, !tbaa !143
  %2108 = load ptr, ptr %2107, align 8, !tbaa !144
  call fastcc void @free_metaball_octal_node(ptr noundef %2108)
  %2109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2110 = load ptr, ptr %605, align 8, !tbaa !143
  call void %2109(ptr noundef %2110) #14
  store ptr null, ptr %605, align 8, !tbaa !143
  br label %2111

2111:                                             ; preds = %2106, %2101
  %2112 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 15
  %2113 = load i32, ptr %2112, align 4, !tbaa !201
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2162, label %2115

2115:                                             ; preds = %2111
  %2116 = load ptr, ptr %688, align 8, !tbaa !211
  %2117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %2118 = call ptr %2117(i64 noundef 72, ptr noundef nonnull @.str.4) #14
  call void @BLI_addtail(ptr noundef %3, ptr noundef %2118) #14
  %2119 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 2
  store i16 5, ptr %2119, align 8, !tbaa !212
  %2120 = load i32, ptr %686, align 8, !tbaa !197
  %2121 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 5
  store i32 %2120, ptr %2121, align 8, !tbaa !85
  %2122 = load i32, ptr %2112, align 4, !tbaa !201
  %2123 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 4
  store i32 %2122, ptr %2123, align 4, !tbaa !213
  %2124 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 13
  %2125 = load ptr, ptr %2124, align 8, !tbaa !202
  %2126 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 10
  store ptr %2125, ptr %2126, align 8, !tbaa !214
  store ptr null, ptr %2124, align 8, !tbaa !202
  %2127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %2128 = sext i32 %2120 to i64
  %2129 = mul nsw i64 %2128, 12
  %2130 = call ptr %2127(i64 noundef %2129, ptr noundef nonnull @.str.5) #14
  %2131 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 8
  store ptr %2130, ptr %2131, align 8, !tbaa !87
  %2132 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %2133 = call ptr %2132(i64 noundef %2129, ptr noundef nonnull @.str.6) #14
  %2134 = getelementptr inbounds %struct.DispList, ptr %2118, i64 0, i32 9
  store ptr %2133, ptr %2134, align 8, !tbaa !215
  %2135 = load i32, ptr %686, align 8, !tbaa !197
  %2136 = icmp sgt i32 %2135, 0
  br i1 %2136, label %2137, label %2162

2137:                                             ; preds = %2115, %2137
  %2138 = phi ptr [ %2157, %2137 ], [ %2116, %2115 ]
  %2139 = phi i32 [ %2158, %2137 ], [ 0, %2115 ]
  %2140 = phi ptr [ %2159, %2137 ], [ %2133, %2115 ]
  %2141 = phi ptr [ %2160, %2137 ], [ %2130, %2115 ]
  %2142 = load float, ptr %2138, align 4, !tbaa !55
  store float %2142, ptr %2141, align 4, !tbaa !55
  %2143 = getelementptr inbounds float, ptr %2138, i64 1
  %2144 = load float, ptr %2143, align 4, !tbaa !55
  %2145 = getelementptr inbounds float, ptr %2141, i64 1
  store float %2144, ptr %2145, align 4, !tbaa !55
  %2146 = getelementptr inbounds float, ptr %2138, i64 2
  %2147 = load float, ptr %2146, align 4, !tbaa !55
  %2148 = getelementptr inbounds float, ptr %2141, i64 2
  store float %2147, ptr %2148, align 4, !tbaa !55
  %2149 = getelementptr inbounds %struct.vertex, ptr %2138, i64 0, i32 1
  %2150 = load float, ptr %2149, align 4, !tbaa !55
  store float %2150, ptr %2140, align 4, !tbaa !55
  %2151 = getelementptr inbounds %struct.vertex, ptr %2138, i64 0, i32 1, i64 1
  %2152 = load float, ptr %2151, align 4, !tbaa !55
  %2153 = getelementptr inbounds float, ptr %2140, i64 1
  store float %2152, ptr %2153, align 4, !tbaa !55
  %2154 = getelementptr inbounds %struct.vertex, ptr %2138, i64 0, i32 1, i64 2
  %2155 = load float, ptr %2154, align 4, !tbaa !55
  %2156 = getelementptr inbounds float, ptr %2140, i64 2
  store float %2155, ptr %2156, align 4, !tbaa !55
  %2157 = getelementptr inbounds %struct.vertex, ptr %2138, i64 1
  %2158 = add nuw nsw i32 %2139, 1
  %2159 = getelementptr inbounds float, ptr %2140, i64 3
  %2160 = getelementptr inbounds float, ptr %2141, i64 3
  %2161 = icmp eq i32 %2158, %2135
  br i1 %2161, label %2162, label %2137, !llvm.loop !216

2162:                                             ; preds = %2137, %2115, %2111
  %2163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2164 = load ptr, ptr %694, align 8, !tbaa !160
  call void %2163(ptr noundef %2164) #14
  %2165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2166 = load ptr, ptr %697, align 8, !tbaa !161
  call void %2165(ptr noundef %2166) #14
  %2167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2168 = load ptr, ptr %691, align 8, !tbaa !159
  call void %2167(ptr noundef %2168) #14
  %2169 = getelementptr inbounds %struct.process, ptr %37, i64 0, i32 18
  %2170 = load ptr, ptr %2169, align 8, !tbaa !45
  %2171 = icmp eq ptr %2170, null
  br i1 %2171, label %2179, label %2172

2172:                                             ; preds = %2162, %2172
  %2173 = phi ptr [ %2177, %2172 ], [ %2170, %2162 ]
  %2174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %2175 = getelementptr inbounds %struct.pgn_elements, ptr %2173, i64 0, i32 2
  %2176 = load ptr, ptr %2175, align 8, !tbaa !130
  call void %2174(ptr noundef %2176) #14
  %2177 = load ptr, ptr %2173, align 8, !tbaa !45
  %2178 = icmp eq ptr %2177, null
  br i1 %2178, label %2179, label %2172, !llvm.loop !153

2179:                                             ; preds = %2172, %2162
  call void @BLI_freelistN(ptr noundef nonnull %2169) #14
  %2180 = load ptr, ptr %688, align 8, !tbaa !211
  %2181 = icmp eq ptr %2180, null
  br i1 %2181, label %2184, label %2182

2182:                                             ; preds = %2179
  %2183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %2183(ptr noundef nonnull %2180) #14
  br label %2184

2184:                                             ; preds = %2182, %2179, %105, %97, %91, %650
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %37) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @init_metaball_octal_tree(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 24, ptr noundef nonnull @.str.7) #14
  %5 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !143
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 136, ptr noundef nonnull @.str.8) #14
  %8 = load ptr, ptr %5, align 8, !tbaa !143
  store ptr %7, ptr %8, align 8, !tbaa !144
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !217
  %11 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 13
  store i32 0, ptr %11, align 8, !tbaa !218
  %12 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !219
  %13 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 12
  store i32 0, ptr %13, align 4, !tbaa !220
  %14 = getelementptr inbounds %struct.octal_tree, ptr %8, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 2
  %16 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 14
  store i32 0, ptr %16, align 4, !tbaa !222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 5
  store float 0x47EFFFFFE0000000, ptr %17, align 8, !tbaa !152
  %18 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 4
  store float 0x47EFFFFFE0000000, ptr %18, align 4, !tbaa !150
  %19 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %19, align 8, !tbaa !148
  %20 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 8
  store float 0xC7EFFFFFE0000000, ptr %20, align 4, !tbaa !151
  %21 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 7
  store float 0xC7EFFFFFE0000000, ptr %21, align 8, !tbaa !149
  %22 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 6
  store float 0xC7EFFFFFE0000000, ptr %22, align 4, !tbaa !146
  %23 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !110
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %92
  %29 = phi i64 [ 0, %26 ], [ %93, %92 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !120
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.MetaElem, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !133
  %35 = load float, ptr %34, align 4, !tbaa !55
  %36 = load float, ptr %19, align 8, !tbaa !148
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store float %35, ptr %19, align 8, !tbaa !148
  br label %39

39:                                               ; preds = %38, %28
  %40 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !55
  %42 = load float, ptr %18, align 4, !tbaa !150
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float %41, ptr %18, align 4, !tbaa !150
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !55
  %48 = load float, ptr %17, align 8, !tbaa !152
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store float %47, ptr %17, align 8, !tbaa !152
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds [8 x [3 x float]], ptr %34, i64 0, i64 6
  %53 = load float, ptr %52, align 4, !tbaa !55
  %54 = load float, ptr %22, align 4, !tbaa !146
  %55 = fcmp ogt float %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store float %53, ptr %22, align 4, !tbaa !146
  br label %57

57:                                               ; preds = %56, %51
  %58 = getelementptr inbounds [8 x [3 x float]], ptr %34, i64 0, i64 6, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !55
  %60 = load float, ptr %21, align 8, !tbaa !149
  %61 = fcmp ogt float %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store float %59, ptr %21, align 8, !tbaa !149
  br label %63

63:                                               ; preds = %62, %57
  %64 = getelementptr inbounds [8 x [3 x float]], ptr %34, i64 0, i64 6, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !55
  %66 = load float, ptr %20, align 4, !tbaa !151
  %67 = fcmp ogt float %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store float %65, ptr %20, align 4, !tbaa !151
  br label %69

69:                                               ; preds = %68, %63
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %71 = tail call ptr %70(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %72 = load ptr, ptr %27, align 8, !tbaa !120
  %73 = getelementptr inbounds ptr, ptr %72, i64 %29
  %74 = load ptr, ptr %73, align 8, !tbaa !45
  %75 = getelementptr inbounds %struct.ml_pointer, ptr %71, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !223
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %71) #14
  %76 = load ptr, ptr %27, align 8, !tbaa !120
  %77 = getelementptr inbounds ptr, ptr %76, i64 %29
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = getelementptr inbounds %struct.MetaElem, ptr %78, i64 0, i32 4
  %80 = load i16, ptr %79, align 2, !tbaa !77
  %81 = and i16 %80, 2
  %82 = icmp eq i16 %81, 0
  %83 = load ptr, ptr %5, align 8, !tbaa !143
  br i1 %82, label %84, label %88

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.octal_tree, ptr %83, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !221
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !221
  br label %92

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.octal_tree, ptr %83, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !219
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %89, align 4, !tbaa !219
  br label %92

92:                                               ; preds = %84, %88
  %93 = add nuw nsw i64 %29, 1
  %94 = load i32, ptr %23, align 4, !tbaa !110
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %28, label %97, !llvm.loop !225

97:                                               ; preds = %92, %2
  %98 = load float, ptr %22, align 4, !tbaa !146
  %99 = load float, ptr %19, align 8, !tbaa !148
  %100 = fsub float %98, %99
  %101 = load float, ptr %21, align 8, !tbaa !149
  %102 = load float, ptr %18, align 4, !tbaa !150
  %103 = fsub float %101, %102
  %104 = load float, ptr %20, align 4, !tbaa !151
  %105 = load float, ptr %17, align 8, !tbaa !152
  %106 = fsub float %104, %105
  %107 = load ptr, ptr %5, align 8, !tbaa !143
  %108 = getelementptr inbounds %struct.octal_tree, ptr %107, i64 0, i32 3
  %109 = load i16, ptr %108, align 8, !tbaa !217
  tail call fastcc void @subdivide_metaball_octal_node(ptr noundef %7, float noundef %100, float noundef %103, float noundef %106, i16 noundef signext %109)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_metaball_octal_node(ptr noundef %0) unnamed_addr #2 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @free_metaball_octal_node(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %2, !llvm.loop !226

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %12) #14
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %13(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @metaball(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) #2 {
  %5 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !144
  %12 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !217
  %14 = tail call fastcc ptr @find_metaball_octal_node(ptr noundef %11, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, ptr %7, align 4, !tbaa !110
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  br label %50

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %32, %25 ], [ %23, %21 ]
  %27 = phi float [ %31, %25 ], [ 0.000000e+00, %21 ]
  %28 = getelementptr inbounds %struct.ml_pointer, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  %30 = tail call fastcc float @densfunc(ptr noundef %29, float noundef %1, float noundef %2, float noundef %3)
  %31 = fadd float %27, %30
  %32 = load ptr, ptr %26, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %25, !llvm.loop !227

34:                                               ; preds = %25, %21
  %35 = phi float [ 0.000000e+00, %21 ], [ %31, %25 ]
  %36 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !221
  %38 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 12
  %39 = load i32, ptr %38, align 4, !tbaa !220
  %40 = sub nsw i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = tail call float @llvm.fmuladd.f32(float %41, float -5.000000e-01, float %35)
  %43 = getelementptr inbounds %struct.octal_tree, ptr %6, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !219
  %45 = getelementptr inbounds %struct.octal_node, ptr %14, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !218
  %47 = sub nsw i32 %44, %46
  %48 = sitofp i32 %47 to float
  %49 = tail call float @llvm.fmuladd.f32(float %48, float 5.000000e-01, float %42)
  br label %68

50:                                               ; preds = %19, %50
  %51 = phi i64 [ 0, %19 ], [ %58, %50 ]
  %52 = phi float [ 0.000000e+00, %19 ], [ %57, %50 ]
  %53 = load ptr, ptr %20, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 %51
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = tail call fastcc float @densfunc(ptr noundef %55, float noundef %1, float noundef %2, float noundef %3)
  %57 = fadd float %52, %56
  %58 = add nuw nsw i64 %51, 1
  %59 = load i32, ptr %7, align 4, !tbaa !110
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %50, label %68, !llvm.loop !228

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !120
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = tail call fastcc float @densfunc(ptr noundef %65, float noundef %1, float noundef %2, float noundef %3)
  %67 = fadd float %66, 0.000000e+00
  br label %68

68:                                               ; preds = %50, %16, %34, %62
  %69 = phi float [ %49, %34 ], [ %67, %62 ], [ 0.000000e+00, %16 ], [ %57, %50 ]
  %70 = load float, ptr %0, align 8, !tbaa !119
  %71 = fsub float %70, %69
  ret float %71
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mball_minmax_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call float @mat4_to_scale(ptr noundef nonnull %3) #14
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi float [ %10, %9 ], [ 1.000000e+00, %5 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %13 = getelementptr inbounds float, ptr %1, i64 2
  store float 0x46293E5940000000, ptr %13, align 4, !tbaa !55
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float 0x46293E5940000000, ptr %14, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %1, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  store float 0xC6293E5940000000, ptr %15, align 4, !tbaa !55
  %16 = getelementptr inbounds float, ptr %2, i64 1
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %2, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = getelementptr inbounds float, ptr %6, i64 2
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = getelementptr inbounds float, ptr %7, i64 1
  %25 = getelementptr inbounds float, ptr %6, i64 2
  %26 = getelementptr inbounds float, ptr %7, i64 2
  br label %27

27:                                               ; preds = %20, %60
  %28 = phi ptr [ %18, %20 ], [ %62, %60 ]
  %29 = phi i8 [ 0, %20 ], [ %61, %60 ]
  %30 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !77
  %32 = and i16 %31, %4
  %33 = icmp eq i16 %32, %4
  br i1 %33, label %34, label %60

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 14
  %36 = load float, ptr %35, align 8, !tbaa !74
  %37 = fmul float %36, 5.000000e-01
  %38 = fmul float %12, %37
  %39 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 7
  br i1 %8, label %41, label %40

40:                                               ; preds = %34
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %39) #14
  br label %47

41:                                               ; preds = %34
  %42 = load float, ptr %39, align 4, !tbaa !55
  store float %42, ptr %6, align 4, !tbaa !55
  %43 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 8
  %44 = load float, ptr %43, align 4, !tbaa !55
  store float %44, ptr %21, align 4, !tbaa !55
  %45 = getelementptr inbounds %struct.MetaElem, ptr %28, i64 0, i32 9
  %46 = load float, ptr %45, align 4, !tbaa !55
  store float %46, ptr %22, align 4, !tbaa !55
  br label %47

47:                                               ; preds = %41, %40
  br label %48

48:                                               ; preds = %47, %48
  %49 = phi i32 [ %58, %48 ], [ -1, %47 ]
  %50 = load float, ptr %6, align 4, !tbaa !55
  store float %50, ptr %7, align 4, !tbaa !55
  %51 = load float, ptr %23, align 4, !tbaa !55
  store float %51, ptr %24, align 4, !tbaa !55
  %52 = load float, ptr %25, align 4, !tbaa !55
  store float %52, ptr %26, align 4, !tbaa !55
  %53 = sitofp i32 %49 to float
  %54 = fmul float %38, %53
  %55 = fadd float %54, %50
  store float %55, ptr %7, align 4, !tbaa !55
  %56 = fadd float %54, %51
  store float %56, ptr %24, align 4, !tbaa !55
  %57 = fadd float %54, %52
  store float %57, ptr %26, align 4, !tbaa !55
  call void @minmax_v3v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7) #14
  %58 = add nsw i32 %49, 2
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %48, !llvm.loop !229

60:                                               ; preds = %48, %27
  %61 = phi i8 [ %29, %27 ], [ 1, %48 ]
  %62 = load ptr, ptr %28, align 8, !tbaa !45
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %27, !llvm.loop !230

64:                                               ; preds = %60, %11
  %65 = phi i8 [ 0, %11 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret i8 %65
}

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #3

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mball_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %1, i64 2
  store float 0x46293E5940000000, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %1, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %2, i64 2
  store float 0xC6293E5940000000, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %2, i64 1
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %2, align 4, !tbaa !55
  %8 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.MetaElem, ptr %12, i64 0, i32 7
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %13) #14
  %14 = load ptr, ptr %12, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !231

16:                                               ; preds = %11, %3
  %17 = load ptr, ptr %8, align 8, !tbaa !89
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_mball_center_median(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  store float 0.000000e+00, ptr %1, align 4, !tbaa !55
  %3 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %3, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = load float, ptr %1, align 4, !tbaa !55
  %10 = load float, ptr %3, align 4, !tbaa !55
  %11 = load float, ptr %4, align 4, !tbaa !55
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi float [ %11, %8 ], [ %26, %12 ]
  %14 = phi float [ %10, %8 ], [ %23, %12 ]
  %15 = phi float [ %9, %8 ], [ %20, %12 ]
  %16 = phi ptr [ %6, %8 ], [ %28, %12 ]
  %17 = phi i32 [ 0, %8 ], [ %27, %12 ]
  %18 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !55
  %20 = fadd float %19, %15
  store float %20, ptr %1, align 4, !tbaa !55
  %21 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 8
  %22 = load float, ptr %21, align 4, !tbaa !55
  %23 = fadd float %22, %14
  store float %23, ptr %3, align 4, !tbaa !55
  %24 = getelementptr inbounds %struct.MetaElem, ptr %16, i64 0, i32 9
  %25 = load float, ptr %24, align 4, !tbaa !55
  %26 = fadd float %25, %13
  store float %26, ptr %4, align 4, !tbaa !55
  %27 = add nuw nsw i32 %17, 1
  %28 = load ptr, ptr %16, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !llvm.loop !232

30:                                               ; preds = %12, %2
  %31 = phi i32 [ 0, %2 ], [ %27, %12 ]
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = sitofp i32 %31 to float
  %35 = fdiv float 1.000000e+00, %34
  %36 = load float, ptr %1, align 4, !tbaa !55
  %37 = fmul float %35, %36
  store float %37, ptr %1, align 4, !tbaa !55
  %38 = load float, ptr %3, align 4, !tbaa !55
  %39 = fmul float %35, %38
  store float %39, ptr %3, align 4, !tbaa !55
  %40 = load float, ptr %4, align 4, !tbaa !55
  %41 = fmul float %35, %40
  store float %41, ptr %4, align 4, !tbaa !55
  br label %42

42:                                               ; preds = %33, %30
  %43 = zext i1 %32 to i8
  ret i8 %43
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_mball_center_bounds(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = getelementptr inbounds float, ptr %3, i64 2
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %3, i64 1
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %4, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.MetaElem, ptr %13, i64 0, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %14) #14
  %15 = load ptr, ptr %13, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !231

17:                                               ; preds = %12, %2
  %18 = load ptr, ptr %9, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  br label %21

21:                                               ; preds = %17, %20
  %22 = phi i8 [ 1, %20 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i8 %22
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mball_transform(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = tail call float @mat4_to_scale(ptr noundef %1) #14
  %5 = tail call float @sqrtf(float noundef %4) #14
  call void @mat4_to_quat(ptr noundef nonnull %3, ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %29, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %11) #14
  %12 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 10
  call void @mul_qt_qtqt(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %12) #14
  %13 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 14
  %14 = load float, ptr %13, align 8, !tbaa !74
  %15 = fmul float %4, %14
  store float %15, ptr %13, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i16 %17, 6
  %19 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 11
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 12
  %22 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 13
  %23 = select i1 %18, float %5, float %4
  %24 = fmul float %23, %20
  store float %24, ptr %19, align 4, !tbaa !55
  %25 = load float, ptr %21, align 4, !tbaa !55
  %26 = fmul float %23, %25
  store float %26, ptr %21, align 4, !tbaa !55
  %27 = load float, ptr %22, align 4, !tbaa !55
  %28 = fmul float %23, %27
  store float %28, ptr %22, align 4, !tbaa !55
  %29 = load ptr, ptr %10, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !233

31:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds float, ptr %1, i64 2
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %4, %6 ], [ %23, %9 ]
  %11 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 7
  %12 = load float, ptr %1, align 4, !tbaa !55
  %13 = load float, ptr %11, align 4, !tbaa !55
  %14 = fadd float %12, %13
  store float %14, ptr %11, align 4, !tbaa !55
  %15 = load float, ptr %7, align 4, !tbaa !55
  %16 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = fadd float %15, %17
  store float %18, ptr %16, align 4, !tbaa !55
  %19 = load float, ptr %8, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.MetaElem, ptr %10, i64 0, i32 9
  %21 = load float, ptr %20, align 4, !tbaa !55
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !55
  %23 = load ptr, ptr %10, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !234

25:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !77
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !77
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !235

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !77
  %10 = and i16 %9, -2
  store i16 %10, ptr %8, align 2, !tbaa !77
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !236

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_mball_select_swap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MetaBall, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.MetaElem, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !77
  %10 = xor i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !77
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !237

13:                                               ; preds = %6, %1
  ret void
}

declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_axis_m4(ptr noundef) local_unnamed_addr #3

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nounwind uwtable
define internal fastcc float @densfunc(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  store float %1, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %5, i64 1
  store float %2, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %5, i64 2
  store float %3, ptr %7, align 4, !tbaa !55
  %8 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  call void @mul_m4_v3(ptr noundef %9, ptr noundef nonnull %5) #14
  %10 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !78
  switch i16 %11, label %142 [
    i16 3, label %129
    i16 4, label %12
    i16 5, label %25
    i16 6, label %51
    i16 7, label %64
    i16 1, label %103
    i16 2, label %116
  ]

12:                                               ; preds = %4
  %13 = load float, ptr %5, align 4, !tbaa !55
  %14 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %15 = load float, ptr %14, align 4, !tbaa !81
  %16 = fcmp ogt float %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = fsub float %13, %15
  store float %18, ptr %5, align 4, !tbaa !55
  br label %142

19:                                               ; preds = %12
  %20 = fneg float %15
  %21 = fcmp olt float %13, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = fadd float %13, %15
  store float %23, ptr %5, align 4, !tbaa !55
  br label %142

24:                                               ; preds = %19
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  br label %142

25:                                               ; preds = %4
  %26 = load float, ptr %5, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !81
  %29 = fcmp ogt float %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = fsub float %26, %28
  store float %31, ptr %5, align 4, !tbaa !55
  br label %38

32:                                               ; preds = %25
  %33 = fneg float %28
  %34 = fcmp olt float %26, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = fadd float %26, %28
  store float %36, ptr %5, align 4, !tbaa !55
  br label %38

37:                                               ; preds = %32
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  br label %38

38:                                               ; preds = %35, %37, %30
  %39 = load float, ptr %6, align 4, !tbaa !55
  %40 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 12
  %41 = load float, ptr %40, align 8, !tbaa !80
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = fsub float %39, %41
  store float %44, ptr %6, align 4, !tbaa !55
  br label %142

45:                                               ; preds = %38
  %46 = fneg float %41
  %47 = fcmp olt float %39, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = fadd float %39, %41
  store float %49, ptr %6, align 4, !tbaa !55
  br label %142

50:                                               ; preds = %45
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  br label %142

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %53 = load float, ptr %52, align 4, !tbaa !81
  %54 = load float, ptr %5, align 4, !tbaa !55
  %55 = fdiv float %54, %53
  store float %55, ptr %5, align 4, !tbaa !55
  %56 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 12
  %57 = load float, ptr %56, align 8, !tbaa !80
  %58 = load float, ptr %6, align 4, !tbaa !55
  %59 = fdiv float %58, %57
  store float %59, ptr %6, align 4, !tbaa !55
  %60 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 13
  %61 = load float, ptr %60, align 4, !tbaa !79
  %62 = load float, ptr %7, align 4, !tbaa !55
  %63 = fdiv float %62, %61
  store float %63, ptr %7, align 4, !tbaa !55
  br label %142

64:                                               ; preds = %4
  %65 = load float, ptr %5, align 4, !tbaa !55
  %66 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 11
  %67 = load float, ptr %66, align 4, !tbaa !81
  %68 = fcmp ogt float %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = fsub float %65, %67
  store float %70, ptr %5, align 4, !tbaa !55
  br label %77

71:                                               ; preds = %64
  %72 = fneg float %67
  %73 = fcmp olt float %65, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = fadd float %65, %67
  store float %75, ptr %5, align 4, !tbaa !55
  br label %77

76:                                               ; preds = %71
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  br label %77

77:                                               ; preds = %74, %76, %69
  %78 = load float, ptr %6, align 4, !tbaa !55
  %79 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 12
  %80 = load float, ptr %79, align 8, !tbaa !80
  %81 = fcmp ogt float %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = fsub float %78, %80
  br label %89

84:                                               ; preds = %77
  %85 = fneg float %80
  %86 = fcmp olt float %78, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = fadd float %78, %80
  br label %89

89:                                               ; preds = %84, %87, %82
  %90 = phi float [ %88, %87 ], [ %83, %82 ], [ 0.000000e+00, %84 ]
  store float %90, ptr %6, align 4, !tbaa !55
  %91 = load float, ptr %7, align 4, !tbaa !55
  %92 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 13
  %93 = load float, ptr %92, align 4, !tbaa !79
  %94 = fcmp ogt float %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = fsub float %91, %93
  store float %96, ptr %7, align 4, !tbaa !55
  br label %142

97:                                               ; preds = %89
  %98 = fneg float %93
  %99 = fcmp olt float %91, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = fadd float %91, %93
  store float %101, ptr %7, align 4, !tbaa !55
  br label %142

102:                                              ; preds = %97
  store float 0.000000e+00, ptr %7, align 4, !tbaa !55
  br label %142

103:                                              ; preds = %4
  %104 = load float, ptr %5, align 4, !tbaa !55
  %105 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %106 = load float, ptr %105, align 4, !tbaa !238
  %107 = fcmp ogt float %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = fsub float %104, %106
  store float %109, ptr %5, align 4, !tbaa !55
  br label %142

110:                                              ; preds = %103
  %111 = fneg float %106
  %112 = fcmp olt float %104, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = fadd float %104, %106
  store float %114, ptr %5, align 4, !tbaa !55
  br label %142

115:                                              ; preds = %110
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  br label %142

116:                                              ; preds = %4
  %117 = load float, ptr %6, align 4, !tbaa !55
  %118 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %119 = load float, ptr %118, align 4, !tbaa !238
  %120 = fcmp ogt float %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = fsub float %117, %119
  store float %122, ptr %6, align 4, !tbaa !55
  br label %142

123:                                              ; preds = %116
  %124 = fneg float %119
  %125 = fcmp olt float %117, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = fadd float %117, %119
  store float %127, ptr %6, align 4, !tbaa !55
  br label %142

128:                                              ; preds = %123
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  br label %142

129:                                              ; preds = %4
  %130 = load float, ptr %7, align 4, !tbaa !55
  %131 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 17
  %132 = load float, ptr %131, align 4, !tbaa !238
  %133 = fcmp ogt float %130, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = fsub float %130, %132
  store float %135, ptr %7, align 4, !tbaa !55
  br label %142

136:                                              ; preds = %129
  %137 = fneg float %132
  %138 = fcmp olt float %130, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = fadd float %130, %132
  store float %140, ptr %7, align 4, !tbaa !55
  br label %142

141:                                              ; preds = %136
  store float 0.000000e+00, ptr %7, align 4, !tbaa !55
  br label %142

142:                                              ; preds = %134, %141, %139, %121, %128, %126, %108, %115, %113, %95, %102, %100, %43, %50, %48, %17, %24, %22, %4, %51
  %143 = load float, ptr %5, align 4, !tbaa !55
  %144 = load float, ptr %6, align 4, !tbaa !55
  %145 = fmul float %144, %144
  %146 = call float @llvm.fmuladd.f32(float %143, float %143, float %145)
  %147 = load float, ptr %7, align 4, !tbaa !55
  %148 = call float @llvm.fmuladd.f32(float %147, float %147, float %146)
  %149 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 15
  %150 = load float, ptr %149, align 4, !tbaa !134
  %151 = fdiv float %148, %150
  %152 = fsub float 1.000000e+00, %151
  %153 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 4
  %154 = load i16, ptr %153, align 2, !tbaa !77
  %155 = and i16 %154, 2
  %156 = icmp eq i16 %155, 0
  %157 = fcmp olt float %152, 0.000000e+00
  br i1 %156, label %158, label %165

158:                                              ; preds = %142
  br i1 %157, label %173, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 16
  %161 = load float, ptr %160, align 8, !tbaa !76
  %162 = fmul float %152, %161
  %163 = fmul float %152, %162
  %164 = call float @llvm.fmuladd.f32(float %163, float %152, float -5.000000e-01)
  br label %173

165:                                              ; preds = %142
  br i1 %157, label %173, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.MetaElem, ptr %0, i64 0, i32 16
  %168 = load float, ptr %167, align 8, !tbaa !76
  %169 = fneg float %168
  %170 = fmul float %152, %169
  %171 = fmul float %152, %170
  %172 = call float @llvm.fmuladd.f32(float %171, float %152, float 5.000000e-01)
  br label %173

173:                                              ; preds = %166, %165, %159, %158
  %174 = phi float [ %164, %159 ], [ -5.000000e-01, %158 ], [ %172, %166 ], [ 5.000000e-01, %165 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret float %174
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @subdivide_metaball_octal_node(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %4) unnamed_addr #2 {
  br label %6

6:                                                ; preds = %5, %17
  %7 = phi i64 [ 0, %5 ], [ %26, %17 ]
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %9 = tail call ptr %8(i64 noundef 136, ptr noundef nonnull @.str.10) #14
  %10 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %7
  store ptr %9, ptr %10, align 8, !tbaa !45
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %15, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !45
  %14 = getelementptr inbounds [8 x ptr], ptr %13, i64 0, i64 %12
  store ptr null, ptr %14, align 8, !tbaa !45
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %11, !llvm.loop !239

17:                                               ; preds = %11
  %18 = load ptr, ptr %10, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.octal_node, ptr %18, i64 0, i32 1
  store ptr %0, ptr %19, align 8, !tbaa !240
  %20 = load ptr, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.octal_node, ptr %20, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load ptr, ptr %10, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 14
  store i32 0, ptr %23, align 4, !tbaa !222
  %24 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 13
  store i32 0, ptr %24, align 8, !tbaa !218
  %25 = getelementptr inbounds %struct.octal_node, ptr %22, i64 0, i32 12
  store i32 0, ptr %25, align 4, !tbaa !220
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %6, !llvm.loop !241

28:                                               ; preds = %17
  %29 = fmul float %1, 5.000000e-01
  %30 = fmul float %2, 5.000000e-01
  %31 = fmul float %3, 5.000000e-01
  %32 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 3
  %33 = load float, ptr %32, align 8, !tbaa !148
  %34 = fadd float %29, %33
  %35 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !242
  %36 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 4
  %37 = load float, ptr %36, align 4, !tbaa !150
  %38 = fadd float %30, %37
  %39 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 10
  store float %38, ptr %39, align 4, !tbaa !243
  %40 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 5
  %41 = load float, ptr %40, align 8, !tbaa !152
  %42 = fadd float %31, %41
  %43 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 11
  store float %42, ptr %43, align 8, !tbaa !244
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 3
  store float %33, ptr %45, align 8, !tbaa !148
  %46 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 4
  store float %37, ptr %46, align 4, !tbaa !150
  %47 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 5
  store float %41, ptr %47, align 8, !tbaa !152
  %48 = fmul float %29, 5.000000e-01
  %49 = fadd float %48, %33
  %50 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 9
  store float %49, ptr %50, align 8, !tbaa !242
  %51 = fmul float %30, 5.000000e-01
  %52 = fadd float %51, %37
  %53 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 10
  store float %52, ptr %53, align 4, !tbaa !243
  %54 = fmul float %31, 5.000000e-01
  %55 = fadd float %54, %41
  %56 = getelementptr inbounds %struct.octal_node, ptr %44, i64 0, i32 11
  store float %55, ptr %56, align 8, !tbaa !244
  %57 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 3
  store float %34, ptr %59, align 8, !tbaa !148
  %60 = load float, ptr %36, align 4, !tbaa !150
  %61 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 4
  store float %60, ptr %61, align 4, !tbaa !150
  %62 = load float, ptr %40, align 8, !tbaa !152
  %63 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 5
  store float %62, ptr %63, align 8, !tbaa !152
  %64 = fadd float %48, %34
  %65 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 9
  store float %64, ptr %65, align 8, !tbaa !242
  %66 = fadd float %51, %60
  %67 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 10
  store float %66, ptr %67, align 4, !tbaa !243
  %68 = fadd float %54, %62
  %69 = getelementptr inbounds %struct.octal_node, ptr %58, i64 0, i32 11
  store float %68, ptr %69, align 8, !tbaa !244
  %70 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 3
  store float %34, ptr %72, align 8, !tbaa !148
  %73 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 4
  store float %38, ptr %73, align 4, !tbaa !150
  %74 = load float, ptr %40, align 8, !tbaa !152
  %75 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 5
  store float %74, ptr %75, align 8, !tbaa !152
  %76 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 9
  store float %64, ptr %76, align 8, !tbaa !242
  %77 = fadd float %51, %38
  %78 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 10
  store float %77, ptr %78, align 4, !tbaa !243
  %79 = fadd float %54, %74
  %80 = getelementptr inbounds %struct.octal_node, ptr %71, i64 0, i32 11
  store float %79, ptr %80, align 8, !tbaa !244
  %81 = load float, ptr %32, align 8, !tbaa !148
  %82 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 3
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 3
  store float %81, ptr %84, align 8, !tbaa !148
  %85 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 4
  store float %38, ptr %85, align 4, !tbaa !150
  %86 = load float, ptr %40, align 8, !tbaa !152
  %87 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 5
  store float %86, ptr %87, align 8, !tbaa !152
  %88 = fadd float %48, %81
  %89 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 9
  store float %88, ptr %89, align 8, !tbaa !242
  %90 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 10
  store float %77, ptr %90, align 4, !tbaa !243
  %91 = fadd float %54, %86
  %92 = getelementptr inbounds %struct.octal_node, ptr %83, i64 0, i32 11
  store float %91, ptr %92, align 8, !tbaa !244
  %93 = load float, ptr %32, align 8, !tbaa !148
  %94 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 4
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  %96 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 3
  store float %93, ptr %96, align 8, !tbaa !148
  %97 = load float, ptr %36, align 4, !tbaa !150
  %98 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 4
  store float %97, ptr %98, align 4, !tbaa !150
  %99 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 5
  store float %42, ptr %99, align 8, !tbaa !152
  %100 = fadd float %48, %93
  %101 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 9
  store float %100, ptr %101, align 8, !tbaa !242
  %102 = fadd float %51, %97
  %103 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 10
  store float %102, ptr %103, align 4, !tbaa !243
  %104 = fadd float %54, %42
  %105 = getelementptr inbounds %struct.octal_node, ptr %95, i64 0, i32 11
  store float %104, ptr %105, align 8, !tbaa !244
  %106 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 5
  %107 = load ptr, ptr %106, align 8, !tbaa !45
  %108 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 3
  store float %34, ptr %108, align 8, !tbaa !148
  %109 = load float, ptr %36, align 4, !tbaa !150
  %110 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 4
  store float %109, ptr %110, align 4, !tbaa !150
  %111 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 5
  store float %42, ptr %111, align 8, !tbaa !152
  %112 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 9
  store float %64, ptr %112, align 8, !tbaa !242
  %113 = fadd float %51, %109
  %114 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 10
  store float %113, ptr %114, align 4, !tbaa !243
  %115 = getelementptr inbounds %struct.octal_node, ptr %107, i64 0, i32 11
  store float %104, ptr %115, align 8, !tbaa !244
  %116 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 6
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 3
  store float %34, ptr %118, align 8, !tbaa !148
  %119 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 4
  store float %38, ptr %119, align 4, !tbaa !150
  %120 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 5
  store float %42, ptr %120, align 8, !tbaa !152
  %121 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 9
  store float %64, ptr %121, align 8, !tbaa !242
  %122 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 10
  store float %77, ptr %122, align 4, !tbaa !243
  %123 = getelementptr inbounds %struct.octal_node, ptr %117, i64 0, i32 11
  store float %104, ptr %123, align 8, !tbaa !244
  %124 = load float, ptr %32, align 8, !tbaa !148
  %125 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 7
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  %127 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 3
  store float %124, ptr %127, align 8, !tbaa !148
  %128 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 4
  store float %38, ptr %128, align 4, !tbaa !150
  %129 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 5
  store float %42, ptr %129, align 8, !tbaa !152
  %130 = fadd float %48, %124
  %131 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 9
  store float %130, ptr %131, align 8, !tbaa !242
  %132 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 10
  store float %77, ptr %132, align 4, !tbaa !243
  %133 = getelementptr inbounds %struct.octal_node, ptr %126, i64 0, i32 11
  store float %104, ptr %133, align 8, !tbaa !244
  %134 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !45
  %136 = icmp eq ptr %135, null
  br i1 %136, label %828, label %137

137:                                              ; preds = %28
  %138 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %139 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %140 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %141 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %142 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %143 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %144 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  %145 = getelementptr inbounds %struct.octal_node, ptr %0, i64 0, i32 14
  br label %146

146:                                              ; preds = %137, %825
  %147 = phi ptr [ %135, %137 ], [ %826, %825 ]
  %148 = getelementptr inbounds %struct.ml_pointer, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !223
  %150 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !133
  %152 = getelementptr inbounds [3 x float], ptr %151, i64 0, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !55
  %154 = fcmp olt float %153, %42
  %155 = getelementptr inbounds [3 x float], ptr %151, i64 0, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !55
  %157 = fcmp olt float %156, %38
  %158 = load float, ptr %151, align 4, !tbaa !55
  %159 = fcmp olt float %158, %34
  br i1 %154, label %160, label %605

160:                                              ; preds = %146
  br i1 %157, label %161, label %454

161:                                              ; preds = %160
  %162 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %163 = tail call ptr %162(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %164 = getelementptr inbounds %struct.ml_pointer, ptr %163, i64 0, i32 2
  store ptr %149, ptr %164, align 8, !tbaa !223
  %165 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  br i1 %159, label %166, label %362

166:                                              ; preds = %161
  %167 = load ptr, ptr %0, align 8, !tbaa !45
  %168 = getelementptr inbounds %struct.octal_node, ptr %167, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %168, ptr noundef %163) #14
  %169 = load i32, ptr %144, align 4, !tbaa !222
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %144, align 4, !tbaa !222
  %171 = load i16, ptr %165, align 2, !tbaa !77
  %172 = and i16 %171, 2
  %173 = icmp eq i16 %172, 0
  %174 = load ptr, ptr %0, align 8, !tbaa !45
  br i1 %173, label %175, label %179

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.octal_node, ptr %174, i64 0, i32 12
  %177 = load i32, ptr %176, align 4, !tbaa !220
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %176, align 4, !tbaa !220
  br label %183

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.octal_node, ptr %174, i64 0, i32 13
  %181 = load i32, ptr %180, align 8, !tbaa !218
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %180, align 8, !tbaa !218
  br label %183

183:                                              ; preds = %175, %179
  %184 = load ptr, ptr %150, align 8, !tbaa !133
  %185 = getelementptr inbounds [8 x [3 x float]], ptr %184, i64 0, i64 6, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !55
  %187 = fcmp ult float %186, %38
  br i1 %187, label %233, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %190 = tail call ptr %189(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %191 = getelementptr inbounds %struct.ml_pointer, ptr %190, i64 0, i32 2
  store ptr %149, ptr %191, align 8, !tbaa !223
  %192 = load ptr, ptr %82, align 8, !tbaa !45
  %193 = getelementptr inbounds %struct.octal_node, ptr %192, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %193, ptr noundef %190) #14
  %194 = load i32, ptr %144, align 4, !tbaa !222
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %144, align 4, !tbaa !222
  %196 = load i16, ptr %165, align 2, !tbaa !77
  %197 = and i16 %196, 2
  %198 = icmp eq i16 %197, 0
  %199 = load ptr, ptr %82, align 8, !tbaa !45
  br i1 %198, label %200, label %204

200:                                              ; preds = %188
  %201 = getelementptr inbounds %struct.octal_node, ptr %199, i64 0, i32 12
  %202 = load i32, ptr %201, align 4, !tbaa !220
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %201, align 4, !tbaa !220
  br label %208

204:                                              ; preds = %188
  %205 = getelementptr inbounds %struct.octal_node, ptr %199, i64 0, i32 13
  %206 = load i32, ptr %205, align 8, !tbaa !218
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %205, align 8, !tbaa !218
  br label %208

208:                                              ; preds = %200, %204
  %209 = load ptr, ptr %150, align 8, !tbaa !133
  %210 = getelementptr inbounds [8 x [3 x float]], ptr %209, i64 0, i64 6, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !55
  %212 = fcmp ult float %211, %42
  br i1 %212, label %233, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %215 = tail call ptr %214(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %216 = getelementptr inbounds %struct.ml_pointer, ptr %215, i64 0, i32 2
  store ptr %149, ptr %216, align 8, !tbaa !223
  %217 = load ptr, ptr %125, align 8, !tbaa !45
  %218 = getelementptr inbounds %struct.octal_node, ptr %217, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %218, ptr noundef %215) #14
  %219 = load i32, ptr %144, align 4, !tbaa !222
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr %144, align 4, !tbaa !222
  %221 = load i16, ptr %165, align 2, !tbaa !77
  %222 = and i16 %221, 2
  %223 = icmp eq i16 %222, 0
  %224 = load ptr, ptr %125, align 8, !tbaa !45
  br i1 %223, label %225, label %229

225:                                              ; preds = %213
  %226 = getelementptr inbounds %struct.octal_node, ptr %224, i64 0, i32 12
  %227 = load i32, ptr %226, align 4, !tbaa !220
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %226, align 4, !tbaa !220
  br label %233

229:                                              ; preds = %213
  %230 = getelementptr inbounds %struct.octal_node, ptr %224, i64 0, i32 13
  %231 = load i32, ptr %230, align 8, !tbaa !218
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr %230, align 8, !tbaa !218
  br label %233

233:                                              ; preds = %229, %225, %208, %183
  %234 = load ptr, ptr %150, align 8, !tbaa !133
  %235 = getelementptr inbounds [8 x [3 x float]], ptr %234, i64 0, i64 6
  %236 = load float, ptr %235, align 4, !tbaa !55
  %237 = fcmp ult float %236, %34
  br i1 %237, label %283, label %238

238:                                              ; preds = %233
  %239 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %240 = tail call ptr %239(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %241 = getelementptr inbounds %struct.ml_pointer, ptr %240, i64 0, i32 2
  store ptr %149, ptr %241, align 8, !tbaa !223
  %242 = load ptr, ptr %57, align 8, !tbaa !45
  %243 = getelementptr inbounds %struct.octal_node, ptr %242, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %243, ptr noundef %240) #14
  %244 = load i32, ptr %144, align 4, !tbaa !222
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %144, align 4, !tbaa !222
  %246 = load i16, ptr %165, align 2, !tbaa !77
  %247 = and i16 %246, 2
  %248 = icmp eq i16 %247, 0
  %249 = load ptr, ptr %57, align 8, !tbaa !45
  br i1 %248, label %250, label %254

250:                                              ; preds = %238
  %251 = getelementptr inbounds %struct.octal_node, ptr %249, i64 0, i32 12
  %252 = load i32, ptr %251, align 4, !tbaa !220
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %251, align 4, !tbaa !220
  br label %258

254:                                              ; preds = %238
  %255 = getelementptr inbounds %struct.octal_node, ptr %249, i64 0, i32 13
  %256 = load i32, ptr %255, align 8, !tbaa !218
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %255, align 8, !tbaa !218
  br label %258

258:                                              ; preds = %250, %254
  %259 = load ptr, ptr %150, align 8, !tbaa !133
  %260 = getelementptr inbounds [8 x [3 x float]], ptr %259, i64 0, i64 6, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !55
  %262 = fcmp ult float %261, %42
  br i1 %262, label %283, label %263

263:                                              ; preds = %258
  %264 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %265 = tail call ptr %264(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %266 = getelementptr inbounds %struct.ml_pointer, ptr %265, i64 0, i32 2
  store ptr %149, ptr %266, align 8, !tbaa !223
  %267 = load ptr, ptr %106, align 8, !tbaa !45
  %268 = getelementptr inbounds %struct.octal_node, ptr %267, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %268, ptr noundef %265) #14
  %269 = load i32, ptr %144, align 4, !tbaa !222
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %144, align 4, !tbaa !222
  %271 = load i16, ptr %165, align 2, !tbaa !77
  %272 = and i16 %271, 2
  %273 = icmp eq i16 %272, 0
  %274 = load ptr, ptr %106, align 8, !tbaa !45
  br i1 %273, label %275, label %279

275:                                              ; preds = %263
  %276 = getelementptr inbounds %struct.octal_node, ptr %274, i64 0, i32 12
  %277 = load i32, ptr %276, align 4, !tbaa !220
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %276, align 4, !tbaa !220
  br label %283

279:                                              ; preds = %263
  %280 = getelementptr inbounds %struct.octal_node, ptr %274, i64 0, i32 13
  %281 = load i32, ptr %280, align 8, !tbaa !218
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %280, align 8, !tbaa !218
  br label %283

283:                                              ; preds = %279, %275, %258, %233
  %284 = load ptr, ptr %150, align 8, !tbaa !133
  %285 = getelementptr inbounds [8 x [3 x float]], ptr %284, i64 0, i64 6
  %286 = load float, ptr %285, align 4, !tbaa !55
  %287 = fcmp ult float %286, %34
  br i1 %287, label %337, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds [8 x [3 x float]], ptr %284, i64 0, i64 6, i64 1
  %290 = load float, ptr %289, align 4, !tbaa !55
  %291 = fcmp ult float %290, %38
  br i1 %291, label %337, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %294 = tail call ptr %293(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %295 = getelementptr inbounds %struct.ml_pointer, ptr %294, i64 0, i32 2
  store ptr %149, ptr %295, align 8, !tbaa !223
  %296 = load ptr, ptr %70, align 8, !tbaa !45
  %297 = getelementptr inbounds %struct.octal_node, ptr %296, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %297, ptr noundef %294) #14
  %298 = load i32, ptr %144, align 4, !tbaa !222
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr %144, align 4, !tbaa !222
  %300 = load i16, ptr %165, align 2, !tbaa !77
  %301 = and i16 %300, 2
  %302 = icmp eq i16 %301, 0
  %303 = load ptr, ptr %70, align 8, !tbaa !45
  br i1 %302, label %304, label %308

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.octal_node, ptr %303, i64 0, i32 12
  %306 = load i32, ptr %305, align 4, !tbaa !220
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %305, align 4, !tbaa !220
  br label %312

308:                                              ; preds = %292
  %309 = getelementptr inbounds %struct.octal_node, ptr %303, i64 0, i32 13
  %310 = load i32, ptr %309, align 8, !tbaa !218
  %311 = add nsw i32 %310, 1
  store i32 %311, ptr %309, align 8, !tbaa !218
  br label %312

312:                                              ; preds = %304, %308
  %313 = load ptr, ptr %150, align 8, !tbaa !133
  %314 = getelementptr inbounds [8 x [3 x float]], ptr %313, i64 0, i64 6, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !55
  %316 = fcmp ult float %315, %42
  br i1 %316, label %337, label %317

317:                                              ; preds = %312
  %318 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %319 = tail call ptr %318(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %320 = getelementptr inbounds %struct.ml_pointer, ptr %319, i64 0, i32 2
  store ptr %149, ptr %320, align 8, !tbaa !223
  %321 = load ptr, ptr %116, align 8, !tbaa !45
  %322 = getelementptr inbounds %struct.octal_node, ptr %321, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %322, ptr noundef %319) #14
  %323 = load i32, ptr %144, align 4, !tbaa !222
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %144, align 4, !tbaa !222
  %325 = load i16, ptr %165, align 2, !tbaa !77
  %326 = and i16 %325, 2
  %327 = icmp eq i16 %326, 0
  %328 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %327, label %329, label %333

329:                                              ; preds = %317
  %330 = getelementptr inbounds %struct.octal_node, ptr %328, i64 0, i32 12
  %331 = load i32, ptr %330, align 4, !tbaa !220
  %332 = add nsw i32 %331, 1
  store i32 %332, ptr %330, align 4, !tbaa !220
  br label %337

333:                                              ; preds = %317
  %334 = getelementptr inbounds %struct.octal_node, ptr %328, i64 0, i32 13
  %335 = load i32, ptr %334, align 8, !tbaa !218
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %334, align 8, !tbaa !218
  br label %337

337:                                              ; preds = %333, %329, %312, %288, %283
  %338 = load ptr, ptr %150, align 8, !tbaa !133
  %339 = getelementptr inbounds [8 x [3 x float]], ptr %338, i64 0, i64 6, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !55
  %341 = fcmp ult float %340, %42
  br i1 %341, label %551, label %342

342:                                              ; preds = %337
  %343 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %344 = tail call ptr %343(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %345 = getelementptr inbounds %struct.ml_pointer, ptr %344, i64 0, i32 2
  store ptr %149, ptr %345, align 8, !tbaa !223
  %346 = load ptr, ptr %94, align 8, !tbaa !45
  %347 = getelementptr inbounds %struct.octal_node, ptr %346, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %347, ptr noundef %344) #14
  %348 = load i32, ptr %144, align 4, !tbaa !222
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr %144, align 4, !tbaa !222
  %350 = load i16, ptr %165, align 2, !tbaa !77
  %351 = and i16 %350, 2
  %352 = icmp eq i16 %351, 0
  %353 = load ptr, ptr %94, align 8, !tbaa !45
  br i1 %352, label %354, label %358

354:                                              ; preds = %342
  %355 = getelementptr inbounds %struct.octal_node, ptr %353, i64 0, i32 12
  %356 = load i32, ptr %355, align 4, !tbaa !220
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %355, align 4, !tbaa !220
  br label %551

358:                                              ; preds = %342
  %359 = getelementptr inbounds %struct.octal_node, ptr %353, i64 0, i32 13
  %360 = load i32, ptr %359, align 8, !tbaa !218
  %361 = add nsw i32 %360, 1
  store i32 %361, ptr %359, align 8, !tbaa !218
  br label %551

362:                                              ; preds = %161
  %363 = load ptr, ptr %57, align 8, !tbaa !45
  %364 = getelementptr inbounds %struct.octal_node, ptr %363, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %364, ptr noundef %163) #14
  %365 = load i32, ptr %143, align 4, !tbaa !222
  %366 = add nsw i32 %365, 1
  store i32 %366, ptr %143, align 4, !tbaa !222
  %367 = load i16, ptr %165, align 2, !tbaa !77
  %368 = and i16 %367, 2
  %369 = icmp eq i16 %368, 0
  %370 = load ptr, ptr %57, align 8, !tbaa !45
  br i1 %369, label %371, label %375

371:                                              ; preds = %362
  %372 = getelementptr inbounds %struct.octal_node, ptr %370, i64 0, i32 12
  %373 = load i32, ptr %372, align 4, !tbaa !220
  %374 = add nsw i32 %373, 1
  store i32 %374, ptr %372, align 4, !tbaa !220
  br label %379

375:                                              ; preds = %362
  %376 = getelementptr inbounds %struct.octal_node, ptr %370, i64 0, i32 13
  %377 = load i32, ptr %376, align 8, !tbaa !218
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %376, align 8, !tbaa !218
  br label %379

379:                                              ; preds = %371, %375
  %380 = load ptr, ptr %150, align 8, !tbaa !133
  %381 = getelementptr inbounds [8 x [3 x float]], ptr %380, i64 0, i64 6, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !55
  %383 = fcmp ult float %382, %38
  br i1 %383, label %429, label %384

384:                                              ; preds = %379
  %385 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %386 = tail call ptr %385(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %387 = getelementptr inbounds %struct.ml_pointer, ptr %386, i64 0, i32 2
  store ptr %149, ptr %387, align 8, !tbaa !223
  %388 = load ptr, ptr %70, align 8, !tbaa !45
  %389 = getelementptr inbounds %struct.octal_node, ptr %388, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %389, ptr noundef %386) #14
  %390 = load i32, ptr %143, align 4, !tbaa !222
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %143, align 4, !tbaa !222
  %392 = load i16, ptr %165, align 2, !tbaa !77
  %393 = and i16 %392, 2
  %394 = icmp eq i16 %393, 0
  %395 = load ptr, ptr %70, align 8, !tbaa !45
  br i1 %394, label %396, label %400

396:                                              ; preds = %384
  %397 = getelementptr inbounds %struct.octal_node, ptr %395, i64 0, i32 12
  %398 = load i32, ptr %397, align 4, !tbaa !220
  %399 = add nsw i32 %398, 1
  store i32 %399, ptr %397, align 4, !tbaa !220
  br label %404

400:                                              ; preds = %384
  %401 = getelementptr inbounds %struct.octal_node, ptr %395, i64 0, i32 13
  %402 = load i32, ptr %401, align 8, !tbaa !218
  %403 = add nsw i32 %402, 1
  store i32 %403, ptr %401, align 8, !tbaa !218
  br label %404

404:                                              ; preds = %396, %400
  %405 = load ptr, ptr %150, align 8, !tbaa !133
  %406 = getelementptr inbounds [8 x [3 x float]], ptr %405, i64 0, i64 6, i64 2
  %407 = load float, ptr %406, align 4, !tbaa !55
  %408 = fcmp ult float %407, %42
  br i1 %408, label %429, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %411 = tail call ptr %410(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %412 = getelementptr inbounds %struct.ml_pointer, ptr %411, i64 0, i32 2
  store ptr %149, ptr %412, align 8, !tbaa !223
  %413 = load ptr, ptr %116, align 8, !tbaa !45
  %414 = getelementptr inbounds %struct.octal_node, ptr %413, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %414, ptr noundef %411) #14
  %415 = load i32, ptr %143, align 4, !tbaa !222
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr %143, align 4, !tbaa !222
  %417 = load i16, ptr %165, align 2, !tbaa !77
  %418 = and i16 %417, 2
  %419 = icmp eq i16 %418, 0
  %420 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %419, label %421, label %425

421:                                              ; preds = %409
  %422 = getelementptr inbounds %struct.octal_node, ptr %420, i64 0, i32 12
  %423 = load i32, ptr %422, align 4, !tbaa !220
  %424 = add nsw i32 %423, 1
  store i32 %424, ptr %422, align 4, !tbaa !220
  br label %429

425:                                              ; preds = %409
  %426 = getelementptr inbounds %struct.octal_node, ptr %420, i64 0, i32 13
  %427 = load i32, ptr %426, align 8, !tbaa !218
  %428 = add nsw i32 %427, 1
  store i32 %428, ptr %426, align 8, !tbaa !218
  br label %429

429:                                              ; preds = %425, %421, %404, %379
  %430 = load ptr, ptr %150, align 8, !tbaa !133
  %431 = getelementptr inbounds [8 x [3 x float]], ptr %430, i64 0, i64 6, i64 2
  %432 = load float, ptr %431, align 4, !tbaa !55
  %433 = fcmp ult float %432, %42
  br i1 %433, label %551, label %434

434:                                              ; preds = %429
  %435 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %436 = tail call ptr %435(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %437 = getelementptr inbounds %struct.ml_pointer, ptr %436, i64 0, i32 2
  store ptr %149, ptr %437, align 8, !tbaa !223
  %438 = load ptr, ptr %106, align 8, !tbaa !45
  %439 = getelementptr inbounds %struct.octal_node, ptr %438, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %439, ptr noundef %436) #14
  %440 = load i32, ptr %143, align 4, !tbaa !222
  %441 = add nsw i32 %440, 1
  store i32 %441, ptr %143, align 4, !tbaa !222
  %442 = load i16, ptr %165, align 2, !tbaa !77
  %443 = and i16 %442, 2
  %444 = icmp eq i16 %443, 0
  %445 = load ptr, ptr %106, align 8, !tbaa !45
  br i1 %444, label %446, label %450

446:                                              ; preds = %434
  %447 = getelementptr inbounds %struct.octal_node, ptr %445, i64 0, i32 12
  %448 = load i32, ptr %447, align 4, !tbaa !220
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr %447, align 4, !tbaa !220
  br label %551

450:                                              ; preds = %434
  %451 = getelementptr inbounds %struct.octal_node, ptr %445, i64 0, i32 13
  %452 = load i32, ptr %451, align 8, !tbaa !218
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr %451, align 8, !tbaa !218
  br label %551

454:                                              ; preds = %160
  br i1 %159, label %455, label %551

455:                                              ; preds = %454
  %456 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %457 = tail call ptr %456(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %458 = getelementptr inbounds %struct.ml_pointer, ptr %457, i64 0, i32 2
  store ptr %149, ptr %458, align 8, !tbaa !223
  %459 = load ptr, ptr %82, align 8, !tbaa !45
  %460 = getelementptr inbounds %struct.octal_node, ptr %459, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %460, ptr noundef %457) #14
  %461 = load i32, ptr %142, align 4, !tbaa !222
  %462 = add nsw i32 %461, 1
  store i32 %462, ptr %142, align 4, !tbaa !222
  %463 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  %464 = load i16, ptr %463, align 2, !tbaa !77
  %465 = and i16 %464, 2
  %466 = icmp eq i16 %465, 0
  %467 = load ptr, ptr %82, align 8, !tbaa !45
  br i1 %466, label %468, label %472

468:                                              ; preds = %455
  %469 = getelementptr inbounds %struct.octal_node, ptr %467, i64 0, i32 12
  %470 = load i32, ptr %469, align 4, !tbaa !220
  %471 = add nsw i32 %470, 1
  store i32 %471, ptr %469, align 4, !tbaa !220
  br label %476

472:                                              ; preds = %455
  %473 = getelementptr inbounds %struct.octal_node, ptr %467, i64 0, i32 13
  %474 = load i32, ptr %473, align 8, !tbaa !218
  %475 = add nsw i32 %474, 1
  store i32 %475, ptr %473, align 8, !tbaa !218
  br label %476

476:                                              ; preds = %468, %472
  %477 = load ptr, ptr %150, align 8, !tbaa !133
  %478 = getelementptr inbounds [8 x [3 x float]], ptr %477, i64 0, i64 6, i64 2
  %479 = load float, ptr %478, align 4, !tbaa !55
  %480 = fcmp ult float %479, %42
  br i1 %480, label %501, label %481

481:                                              ; preds = %476
  %482 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %483 = tail call ptr %482(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %484 = getelementptr inbounds %struct.ml_pointer, ptr %483, i64 0, i32 2
  store ptr %149, ptr %484, align 8, !tbaa !223
  %485 = load ptr, ptr %125, align 8, !tbaa !45
  %486 = getelementptr inbounds %struct.octal_node, ptr %485, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %486, ptr noundef %483) #14
  %487 = load i32, ptr %142, align 4, !tbaa !222
  %488 = add nsw i32 %487, 1
  store i32 %488, ptr %142, align 4, !tbaa !222
  %489 = load i16, ptr %463, align 2, !tbaa !77
  %490 = and i16 %489, 2
  %491 = icmp eq i16 %490, 0
  %492 = load ptr, ptr %125, align 8, !tbaa !45
  br i1 %491, label %493, label %497

493:                                              ; preds = %481
  %494 = getelementptr inbounds %struct.octal_node, ptr %492, i64 0, i32 12
  %495 = load i32, ptr %494, align 4, !tbaa !220
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %494, align 4, !tbaa !220
  br label %501

497:                                              ; preds = %481
  %498 = getelementptr inbounds %struct.octal_node, ptr %492, i64 0, i32 13
  %499 = load i32, ptr %498, align 8, !tbaa !218
  %500 = add nsw i32 %499, 1
  store i32 %500, ptr %498, align 8, !tbaa !218
  br label %501

501:                                              ; preds = %497, %493, %476
  %502 = load ptr, ptr %150, align 8, !tbaa !133
  %503 = getelementptr inbounds [8 x [3 x float]], ptr %502, i64 0, i64 6
  %504 = load float, ptr %503, align 4, !tbaa !55
  %505 = fcmp ult float %504, %34
  br i1 %505, label %551, label %506

506:                                              ; preds = %501
  %507 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %508 = tail call ptr %507(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %509 = getelementptr inbounds %struct.ml_pointer, ptr %508, i64 0, i32 2
  store ptr %149, ptr %509, align 8, !tbaa !223
  %510 = load ptr, ptr %70, align 8, !tbaa !45
  %511 = getelementptr inbounds %struct.octal_node, ptr %510, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %511, ptr noundef %508) #14
  %512 = load i32, ptr %142, align 4, !tbaa !222
  %513 = add nsw i32 %512, 1
  store i32 %513, ptr %142, align 4, !tbaa !222
  %514 = load i16, ptr %463, align 2, !tbaa !77
  %515 = and i16 %514, 2
  %516 = icmp eq i16 %515, 0
  %517 = load ptr, ptr %70, align 8, !tbaa !45
  br i1 %516, label %518, label %522

518:                                              ; preds = %506
  %519 = getelementptr inbounds %struct.octal_node, ptr %517, i64 0, i32 12
  %520 = load i32, ptr %519, align 4, !tbaa !220
  %521 = add nsw i32 %520, 1
  store i32 %521, ptr %519, align 4, !tbaa !220
  br label %526

522:                                              ; preds = %506
  %523 = getelementptr inbounds %struct.octal_node, ptr %517, i64 0, i32 13
  %524 = load i32, ptr %523, align 8, !tbaa !218
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr %523, align 8, !tbaa !218
  br label %526

526:                                              ; preds = %518, %522
  %527 = load ptr, ptr %150, align 8, !tbaa !133
  %528 = getelementptr inbounds [8 x [3 x float]], ptr %527, i64 0, i64 6, i64 2
  %529 = load float, ptr %528, align 4, !tbaa !55
  %530 = fcmp ult float %529, %42
  br i1 %530, label %551, label %531

531:                                              ; preds = %526
  %532 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %533 = tail call ptr %532(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %534 = getelementptr inbounds %struct.ml_pointer, ptr %533, i64 0, i32 2
  store ptr %149, ptr %534, align 8, !tbaa !223
  %535 = load ptr, ptr %116, align 8, !tbaa !45
  %536 = getelementptr inbounds %struct.octal_node, ptr %535, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %536, ptr noundef %533) #14
  %537 = load i32, ptr %142, align 4, !tbaa !222
  %538 = add nsw i32 %537, 1
  store i32 %538, ptr %142, align 4, !tbaa !222
  %539 = load i16, ptr %463, align 2, !tbaa !77
  %540 = and i16 %539, 2
  %541 = icmp eq i16 %540, 0
  %542 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %541, label %543, label %547

543:                                              ; preds = %531
  %544 = getelementptr inbounds %struct.octal_node, ptr %542, i64 0, i32 12
  %545 = load i32, ptr %544, align 4, !tbaa !220
  %546 = add nsw i32 %545, 1
  store i32 %546, ptr %544, align 4, !tbaa !220
  br label %551

547:                                              ; preds = %531
  %548 = getelementptr inbounds %struct.octal_node, ptr %542, i64 0, i32 13
  %549 = load i32, ptr %548, align 8, !tbaa !218
  %550 = add nsw i32 %549, 1
  store i32 %550, ptr %548, align 8, !tbaa !218
  br label %551

551:                                              ; preds = %547, %543, %450, %446, %358, %354, %454, %526, %501, %337, %429
  %552 = load ptr, ptr %150, align 8, !tbaa !133
  %553 = load float, ptr %552, align 4, !tbaa !55
  %554 = fcmp ult float %553, %34
  br i1 %554, label %825, label %555

555:                                              ; preds = %551
  %556 = getelementptr inbounds [3 x float], ptr %552, i64 0, i64 1
  %557 = load float, ptr %556, align 4, !tbaa !55
  %558 = fcmp ult float %557, %38
  br i1 %558, label %825, label %559

559:                                              ; preds = %555
  %560 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %561 = tail call ptr %560(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %562 = getelementptr inbounds %struct.ml_pointer, ptr %561, i64 0, i32 2
  store ptr %149, ptr %562, align 8, !tbaa !223
  %563 = load ptr, ptr %70, align 8, !tbaa !45
  %564 = getelementptr inbounds %struct.octal_node, ptr %563, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %564, ptr noundef %561) #14
  %565 = load i32, ptr %145, align 4, !tbaa !222
  %566 = add nsw i32 %565, 1
  store i32 %566, ptr %145, align 4, !tbaa !222
  %567 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  %568 = load i16, ptr %567, align 2, !tbaa !77
  %569 = and i16 %568, 2
  %570 = icmp eq i16 %569, 0
  %571 = load ptr, ptr %70, align 8, !tbaa !45
  br i1 %570, label %572, label %576

572:                                              ; preds = %559
  %573 = getelementptr inbounds %struct.octal_node, ptr %571, i64 0, i32 12
  %574 = load i32, ptr %573, align 4, !tbaa !220
  %575 = add nsw i32 %574, 1
  store i32 %575, ptr %573, align 4, !tbaa !220
  br label %580

576:                                              ; preds = %559
  %577 = getelementptr inbounds %struct.octal_node, ptr %571, i64 0, i32 13
  %578 = load i32, ptr %577, align 8, !tbaa !218
  %579 = add nsw i32 %578, 1
  store i32 %579, ptr %577, align 8, !tbaa !218
  br label %580

580:                                              ; preds = %572, %576
  %581 = load ptr, ptr %150, align 8, !tbaa !133
  %582 = getelementptr inbounds [8 x [3 x float]], ptr %581, i64 0, i64 6, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !55
  %584 = fcmp ult float %583, %42
  br i1 %584, label %825, label %585

585:                                              ; preds = %580
  %586 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %587 = tail call ptr %586(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %588 = getelementptr inbounds %struct.ml_pointer, ptr %587, i64 0, i32 2
  store ptr %149, ptr %588, align 8, !tbaa !223
  %589 = load ptr, ptr %116, align 8, !tbaa !45
  %590 = getelementptr inbounds %struct.octal_node, ptr %589, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %590, ptr noundef %587) #14
  %591 = load i32, ptr %145, align 4, !tbaa !222
  %592 = add nsw i32 %591, 1
  store i32 %592, ptr %145, align 4, !tbaa !222
  %593 = load i16, ptr %567, align 2, !tbaa !77
  %594 = and i16 %593, 2
  %595 = icmp eq i16 %594, 0
  %596 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %595, label %597, label %601

597:                                              ; preds = %585
  %598 = getelementptr inbounds %struct.octal_node, ptr %596, i64 0, i32 12
  %599 = load i32, ptr %598, align 4, !tbaa !220
  %600 = add nsw i32 %599, 1
  store i32 %600, ptr %598, align 4, !tbaa !220
  br label %825

601:                                              ; preds = %585
  %602 = getelementptr inbounds %struct.octal_node, ptr %596, i64 0, i32 13
  %603 = load i32, ptr %602, align 8, !tbaa !218
  %604 = add nsw i32 %603, 1
  store i32 %604, ptr %602, align 8, !tbaa !218
  br label %825

605:                                              ; preds = %146
  br i1 %157, label %606, label %749

606:                                              ; preds = %605
  %607 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %608 = tail call ptr %607(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %609 = getelementptr inbounds %struct.ml_pointer, ptr %608, i64 0, i32 2
  store ptr %149, ptr %609, align 8, !tbaa !223
  %610 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  br i1 %159, label %611, label %707

611:                                              ; preds = %606
  %612 = load ptr, ptr %94, align 8, !tbaa !45
  %613 = getelementptr inbounds %struct.octal_node, ptr %612, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %613, ptr noundef %608) #14
  %614 = load i32, ptr %140, align 4, !tbaa !222
  %615 = add nsw i32 %614, 1
  store i32 %615, ptr %140, align 4, !tbaa !222
  %616 = load i16, ptr %610, align 2, !tbaa !77
  %617 = and i16 %616, 2
  %618 = icmp eq i16 %617, 0
  %619 = load ptr, ptr %94, align 8, !tbaa !45
  br i1 %618, label %620, label %624

620:                                              ; preds = %611
  %621 = getelementptr inbounds %struct.octal_node, ptr %619, i64 0, i32 12
  %622 = load i32, ptr %621, align 4, !tbaa !220
  %623 = add nsw i32 %622, 1
  store i32 %623, ptr %621, align 4, !tbaa !220
  br label %628

624:                                              ; preds = %611
  %625 = getelementptr inbounds %struct.octal_node, ptr %619, i64 0, i32 13
  %626 = load i32, ptr %625, align 8, !tbaa !218
  %627 = add nsw i32 %626, 1
  store i32 %627, ptr %625, align 8, !tbaa !218
  br label %628

628:                                              ; preds = %620, %624
  %629 = load ptr, ptr %150, align 8, !tbaa !133
  %630 = getelementptr inbounds [8 x [3 x float]], ptr %629, i64 0, i64 6
  %631 = load float, ptr %630, align 4, !tbaa !55
  %632 = fcmp ult float %631, %34
  br i1 %632, label %653, label %633

633:                                              ; preds = %628
  %634 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %635 = tail call ptr %634(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %636 = getelementptr inbounds %struct.ml_pointer, ptr %635, i64 0, i32 2
  store ptr %149, ptr %636, align 8, !tbaa !223
  %637 = load ptr, ptr %106, align 8, !tbaa !45
  %638 = getelementptr inbounds %struct.octal_node, ptr %637, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %638, ptr noundef %635) #14
  %639 = load i32, ptr %140, align 4, !tbaa !222
  %640 = add nsw i32 %639, 1
  store i32 %640, ptr %140, align 4, !tbaa !222
  %641 = load i16, ptr %610, align 2, !tbaa !77
  %642 = and i16 %641, 2
  %643 = icmp eq i16 %642, 0
  %644 = load ptr, ptr %106, align 8, !tbaa !45
  br i1 %643, label %645, label %649

645:                                              ; preds = %633
  %646 = getelementptr inbounds %struct.octal_node, ptr %644, i64 0, i32 12
  %647 = load i32, ptr %646, align 4, !tbaa !220
  %648 = add nsw i32 %647, 1
  store i32 %648, ptr %646, align 4, !tbaa !220
  br label %653

649:                                              ; preds = %633
  %650 = getelementptr inbounds %struct.octal_node, ptr %644, i64 0, i32 13
  %651 = load i32, ptr %650, align 8, !tbaa !218
  %652 = add nsw i32 %651, 1
  store i32 %652, ptr %650, align 8, !tbaa !218
  br label %653

653:                                              ; preds = %649, %645, %628
  %654 = load ptr, ptr %150, align 8, !tbaa !133
  %655 = getelementptr inbounds [8 x [3 x float]], ptr %654, i64 0, i64 6, i64 1
  %656 = load float, ptr %655, align 4, !tbaa !55
  %657 = fcmp ult float %656, %38
  br i1 %657, label %678, label %658

658:                                              ; preds = %653
  %659 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %660 = tail call ptr %659(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %661 = getelementptr inbounds %struct.ml_pointer, ptr %660, i64 0, i32 2
  store ptr %149, ptr %661, align 8, !tbaa !223
  %662 = load ptr, ptr %125, align 8, !tbaa !45
  %663 = getelementptr inbounds %struct.octal_node, ptr %662, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %663, ptr noundef %660) #14
  %664 = load i32, ptr %140, align 4, !tbaa !222
  %665 = add nsw i32 %664, 1
  store i32 %665, ptr %140, align 4, !tbaa !222
  %666 = load i16, ptr %610, align 2, !tbaa !77
  %667 = and i16 %666, 2
  %668 = icmp eq i16 %667, 0
  %669 = load ptr, ptr %125, align 8, !tbaa !45
  br i1 %668, label %670, label %674

670:                                              ; preds = %658
  %671 = getelementptr inbounds %struct.octal_node, ptr %669, i64 0, i32 12
  %672 = load i32, ptr %671, align 4, !tbaa !220
  %673 = add nsw i32 %672, 1
  store i32 %673, ptr %671, align 4, !tbaa !220
  br label %678

674:                                              ; preds = %658
  %675 = getelementptr inbounds %struct.octal_node, ptr %669, i64 0, i32 13
  %676 = load i32, ptr %675, align 8, !tbaa !218
  %677 = add nsw i32 %676, 1
  store i32 %677, ptr %675, align 8, !tbaa !218
  br label %678

678:                                              ; preds = %674, %670, %653
  %679 = load ptr, ptr %150, align 8, !tbaa !133
  %680 = getelementptr inbounds [8 x [3 x float]], ptr %679, i64 0, i64 6
  %681 = load float, ptr %680, align 4, !tbaa !55
  %682 = fcmp ult float %681, %34
  br i1 %682, label %796, label %683

683:                                              ; preds = %678
  %684 = getelementptr inbounds [8 x [3 x float]], ptr %679, i64 0, i64 6, i64 1
  %685 = load float, ptr %684, align 4, !tbaa !55
  %686 = fcmp ult float %685, %38
  br i1 %686, label %796, label %687

687:                                              ; preds = %683
  %688 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %689 = tail call ptr %688(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %690 = getelementptr inbounds %struct.ml_pointer, ptr %689, i64 0, i32 2
  store ptr %149, ptr %690, align 8, !tbaa !223
  %691 = load ptr, ptr %116, align 8, !tbaa !45
  %692 = getelementptr inbounds %struct.octal_node, ptr %691, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %692, ptr noundef %689) #14
  %693 = load i32, ptr %140, align 4, !tbaa !222
  %694 = add nsw i32 %693, 1
  store i32 %694, ptr %140, align 4, !tbaa !222
  %695 = load i16, ptr %610, align 2, !tbaa !77
  %696 = and i16 %695, 2
  %697 = icmp eq i16 %696, 0
  %698 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %697, label %699, label %703

699:                                              ; preds = %687
  %700 = getelementptr inbounds %struct.octal_node, ptr %698, i64 0, i32 12
  %701 = load i32, ptr %700, align 4, !tbaa !220
  %702 = add nsw i32 %701, 1
  store i32 %702, ptr %700, align 4, !tbaa !220
  br label %796

703:                                              ; preds = %687
  %704 = getelementptr inbounds %struct.octal_node, ptr %698, i64 0, i32 13
  %705 = load i32, ptr %704, align 8, !tbaa !218
  %706 = add nsw i32 %705, 1
  store i32 %706, ptr %704, align 8, !tbaa !218
  br label %796

707:                                              ; preds = %606
  %708 = load ptr, ptr %106, align 8, !tbaa !45
  %709 = getelementptr inbounds %struct.octal_node, ptr %708, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %709, ptr noundef %608) #14
  %710 = load i32, ptr %139, align 4, !tbaa !222
  %711 = add nsw i32 %710, 1
  store i32 %711, ptr %139, align 4, !tbaa !222
  %712 = load i16, ptr %610, align 2, !tbaa !77
  %713 = and i16 %712, 2
  %714 = icmp eq i16 %713, 0
  %715 = load ptr, ptr %106, align 8, !tbaa !45
  br i1 %714, label %716, label %720

716:                                              ; preds = %707
  %717 = getelementptr inbounds %struct.octal_node, ptr %715, i64 0, i32 12
  %718 = load i32, ptr %717, align 4, !tbaa !220
  %719 = add nsw i32 %718, 1
  store i32 %719, ptr %717, align 4, !tbaa !220
  br label %724

720:                                              ; preds = %707
  %721 = getelementptr inbounds %struct.octal_node, ptr %715, i64 0, i32 13
  %722 = load i32, ptr %721, align 8, !tbaa !218
  %723 = add nsw i32 %722, 1
  store i32 %723, ptr %721, align 8, !tbaa !218
  br label %724

724:                                              ; preds = %716, %720
  %725 = load ptr, ptr %150, align 8, !tbaa !133
  %726 = getelementptr inbounds [8 x [3 x float]], ptr %725, i64 0, i64 6, i64 1
  %727 = load float, ptr %726, align 4, !tbaa !55
  %728 = fcmp ult float %727, %38
  br i1 %728, label %796, label %729

729:                                              ; preds = %724
  %730 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %731 = tail call ptr %730(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %732 = getelementptr inbounds %struct.ml_pointer, ptr %731, i64 0, i32 2
  store ptr %149, ptr %732, align 8, !tbaa !223
  %733 = load ptr, ptr %116, align 8, !tbaa !45
  %734 = getelementptr inbounds %struct.octal_node, ptr %733, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %734, ptr noundef %731) #14
  %735 = load i32, ptr %139, align 4, !tbaa !222
  %736 = add nsw i32 %735, 1
  store i32 %736, ptr %139, align 4, !tbaa !222
  %737 = load i16, ptr %610, align 2, !tbaa !77
  %738 = and i16 %737, 2
  %739 = icmp eq i16 %738, 0
  %740 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %739, label %741, label %745

741:                                              ; preds = %729
  %742 = getelementptr inbounds %struct.octal_node, ptr %740, i64 0, i32 12
  %743 = load i32, ptr %742, align 4, !tbaa !220
  %744 = add nsw i32 %743, 1
  store i32 %744, ptr %742, align 4, !tbaa !220
  br label %796

745:                                              ; preds = %729
  %746 = getelementptr inbounds %struct.octal_node, ptr %740, i64 0, i32 13
  %747 = load i32, ptr %746, align 8, !tbaa !218
  %748 = add nsw i32 %747, 1
  store i32 %748, ptr %746, align 8, !tbaa !218
  br label %796

749:                                              ; preds = %605
  br i1 %159, label %750, label %796

750:                                              ; preds = %749
  %751 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %752 = tail call ptr %751(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %753 = getelementptr inbounds %struct.ml_pointer, ptr %752, i64 0, i32 2
  store ptr %149, ptr %753, align 8, !tbaa !223
  %754 = load ptr, ptr %125, align 8, !tbaa !45
  %755 = getelementptr inbounds %struct.octal_node, ptr %754, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %755, ptr noundef %752) #14
  %756 = load i32, ptr %138, align 4, !tbaa !222
  %757 = add nsw i32 %756, 1
  store i32 %757, ptr %138, align 4, !tbaa !222
  %758 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  %759 = load i16, ptr %758, align 2, !tbaa !77
  %760 = and i16 %759, 2
  %761 = icmp eq i16 %760, 0
  %762 = load ptr, ptr %125, align 8, !tbaa !45
  br i1 %761, label %763, label %767

763:                                              ; preds = %750
  %764 = getelementptr inbounds %struct.octal_node, ptr %762, i64 0, i32 12
  %765 = load i32, ptr %764, align 4, !tbaa !220
  %766 = add nsw i32 %765, 1
  store i32 %766, ptr %764, align 4, !tbaa !220
  br label %771

767:                                              ; preds = %750
  %768 = getelementptr inbounds %struct.octal_node, ptr %762, i64 0, i32 13
  %769 = load i32, ptr %768, align 8, !tbaa !218
  %770 = add nsw i32 %769, 1
  store i32 %770, ptr %768, align 8, !tbaa !218
  br label %771

771:                                              ; preds = %763, %767
  %772 = load ptr, ptr %150, align 8, !tbaa !133
  %773 = getelementptr inbounds [8 x [3 x float]], ptr %772, i64 0, i64 6
  %774 = load float, ptr %773, align 4, !tbaa !55
  %775 = fcmp ult float %774, %34
  br i1 %775, label %796, label %776

776:                                              ; preds = %771
  %777 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %778 = tail call ptr %777(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %779 = getelementptr inbounds %struct.ml_pointer, ptr %778, i64 0, i32 2
  store ptr %149, ptr %779, align 8, !tbaa !223
  %780 = load ptr, ptr %116, align 8, !tbaa !45
  %781 = getelementptr inbounds %struct.octal_node, ptr %780, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %781, ptr noundef %778) #14
  %782 = load i32, ptr %138, align 4, !tbaa !222
  %783 = add nsw i32 %782, 1
  store i32 %783, ptr %138, align 4, !tbaa !222
  %784 = load i16, ptr %758, align 2, !tbaa !77
  %785 = and i16 %784, 2
  %786 = icmp eq i16 %785, 0
  %787 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %786, label %788, label %792

788:                                              ; preds = %776
  %789 = getelementptr inbounds %struct.octal_node, ptr %787, i64 0, i32 12
  %790 = load i32, ptr %789, align 4, !tbaa !220
  %791 = add nsw i32 %790, 1
  store i32 %791, ptr %789, align 4, !tbaa !220
  br label %796

792:                                              ; preds = %776
  %793 = getelementptr inbounds %struct.octal_node, ptr %787, i64 0, i32 13
  %794 = load i32, ptr %793, align 8, !tbaa !218
  %795 = add nsw i32 %794, 1
  store i32 %795, ptr %793, align 8, !tbaa !218
  br label %796

796:                                              ; preds = %792, %788, %745, %741, %703, %699, %749, %771, %683, %678, %724
  %797 = load ptr, ptr %150, align 8, !tbaa !133
  %798 = load float, ptr %797, align 4, !tbaa !55
  %799 = fcmp ult float %798, %34
  br i1 %799, label %825, label %800

800:                                              ; preds = %796
  %801 = getelementptr inbounds [3 x float], ptr %797, i64 0, i64 1
  %802 = load float, ptr %801, align 4, !tbaa !55
  %803 = fcmp ult float %802, %38
  br i1 %803, label %825, label %804

804:                                              ; preds = %800
  %805 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %806 = tail call ptr %805(i64 noundef 24, ptr noundef nonnull @.str.9) #14
  %807 = getelementptr inbounds %struct.ml_pointer, ptr %806, i64 0, i32 2
  store ptr %149, ptr %807, align 8, !tbaa !223
  %808 = load ptr, ptr %116, align 8, !tbaa !45
  %809 = getelementptr inbounds %struct.octal_node, ptr %808, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %809, ptr noundef %806) #14
  %810 = load i32, ptr %141, align 4, !tbaa !222
  %811 = add nsw i32 %810, 1
  store i32 %811, ptr %141, align 4, !tbaa !222
  %812 = getelementptr inbounds %struct.MetaElem, ptr %149, i64 0, i32 4
  %813 = load i16, ptr %812, align 2, !tbaa !77
  %814 = and i16 %813, 2
  %815 = icmp eq i16 %814, 0
  %816 = load ptr, ptr %116, align 8, !tbaa !45
  br i1 %815, label %817, label %821

817:                                              ; preds = %804
  %818 = getelementptr inbounds %struct.octal_node, ptr %816, i64 0, i32 12
  %819 = load i32, ptr %818, align 4, !tbaa !220
  %820 = add nsw i32 %819, 1
  store i32 %820, ptr %818, align 4, !tbaa !220
  br label %825

821:                                              ; preds = %804
  %822 = getelementptr inbounds %struct.octal_node, ptr %816, i64 0, i32 13
  %823 = load i32, ptr %822, align 8, !tbaa !218
  %824 = add nsw i32 %823, 1
  store i32 %824, ptr %822, align 8, !tbaa !218
  br label %825

825:                                              ; preds = %821, %817, %601, %597, %796, %800, %551, %555, %580
  %826 = load ptr, ptr %147, align 8, !tbaa !45
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %146, !llvm.loop !245

828:                                              ; preds = %825, %28
  tail call void @BLI_freelistN(ptr noundef nonnull %134) #14
  %829 = add i16 %4, -1
  %830 = icmp sgt i16 %829, 0
  br i1 %830, label %831, label %842

831:                                              ; preds = %828, %839
  %832 = phi i64 [ %840, %839 ], [ 0, %828 ]
  %833 = getelementptr inbounds [8 x ptr], ptr %0, i64 0, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !45
  %835 = getelementptr inbounds %struct.octal_node, ptr %834, i64 0, i32 14
  %836 = load i32, ptr %835, align 4, !tbaa !222
  %837 = icmp sgt i32 %836, 0
  br i1 %837, label %838, label %839

838:                                              ; preds = %831
  tail call fastcc void @subdivide_metaball_octal_node(ptr noundef %834, float noundef %29, float noundef %30, float noundef %31, i16 noundef signext %829)
  br label %839

839:                                              ; preds = %831, %838
  %840 = add nuw nsw i64 %832, 1
  %841 = icmp eq i64 %840, 8
  br i1 %841, label %842, label %831, !llvm.loop !246

842:                                              ; preds = %839, %828
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_metaball_octal_node(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i16 noundef signext %4) unnamed_addr #12 {
  br label %6

6:                                                ; preds = %56, %5
  %7 = phi ptr [ %0, %5 ], [ %57, %56 ]
  %8 = icmp eq i16 %4, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 11
  %11 = load float, ptr %10, align 8, !tbaa !244
  %12 = fcmp ogt float %11, %3
  %13 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 10
  %14 = load float, ptr %13, align 4, !tbaa !243
  %15 = fcmp ogt float %14, %2
  %16 = getelementptr inbounds %struct.octal_node, ptr %7, i64 0, i32 9
  %17 = load float, ptr %16, align 8, !tbaa !242
  %18 = fcmp ogt float %17, %1
  br i1 %12, label %19, label %37

19:                                               ; preds = %9
  br i1 %15, label %20, label %28

20:                                               ; preds = %19
  br i1 %18, label %21, label %24

21:                                               ; preds = %20
  %22 = load ptr, ptr %7, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %58, label %56

24:                                               ; preds = %20
  %25 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %56

28:                                               ; preds = %19
  br i1 %18, label %29, label %33

29:                                               ; preds = %28
  %30 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 3
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %56

33:                                               ; preds = %28
  %34 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %56

37:                                               ; preds = %9
  br i1 %15, label %38, label %47

38:                                               ; preds = %37
  br i1 %18, label %39, label %43

39:                                               ; preds = %38
  %40 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 4
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 5
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %56

47:                                               ; preds = %37
  br i1 %18, label %48, label %52

48:                                               ; preds = %47
  %49 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 7
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds [8 x ptr], ptr %7, i64 0, i64 6
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %48, %43, %39, %33, %29, %24, %21
  %57 = phi ptr [ %22, %21 ], [ %26, %24 ], [ %31, %29 ], [ %35, %33 ], [ %41, %39 ], [ %45, %43 ], [ %50, %48 ], [ %54, %52 ]
  br label %6

58:                                               ; preds = %52, %48, %43, %39, %33, %29, %24, %21, %6
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @testface(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #2 {
  %11 = alloca %struct.cube, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %11) #14
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = zext nneg i32 %6 to i64
  %15 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = zext nneg i32 %7 to i64
  %18 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = zext nneg i32 %9 to i64
  %24 = getelementptr inbounds %struct.cube, ptr %4, i64 0, i32 3, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.corner, ptr %16, i64 0, i32 4
  %27 = load float, ptr %26, align 8, !tbaa !173
  %28 = fcmp ogt float %27, 0.000000e+00
  %29 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 4
  %30 = load float, ptr %29, align 8, !tbaa !173
  %31 = fcmp ule float %30, 0.000000e+00
  %32 = xor i1 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.corner, ptr %22, i64 0, i32 4
  %35 = load float, ptr %34, align 8, !tbaa !173
  %36 = fcmp ule float %35, 0.000000e+00
  %37 = xor i1 %28, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.corner, ptr %25, i64 0, i32 4
  %40 = load float, ptr %39, align 8, !tbaa !173
  %41 = fcmp ule float %40, 0.000000e+00
  %42 = xor i1 %28, %41
  br i1 %42, label %154, label %43

43:                                               ; preds = %38, %33, %10
  %44 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !159
  %46 = tail call fastcc i32 @setcenter(ptr noundef %0, ptr noundef %45, i32 noundef %1, i32 noundef %2, i32 noundef %3), !range !247
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %154

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %54 = load i32, ptr %53, align 8, !tbaa !129
  %55 = icmp slt i32 %54, 16296
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = add nsw i32 %54, 88
  %58 = getelementptr inbounds %struct.pgn_elements, ptr %50, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !130
  %60 = sext i32 %54 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store i32 %57, ptr %53, align 8, !tbaa !129
  br label %74

62:                                               ; preds = %52, %48
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %64 = tail call ptr %63(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %64, ptr %49, align 8, !tbaa !128
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %66 = tail call ptr %65(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %67 = load ptr, ptr %49, align 8, !tbaa !128
  %68 = getelementptr inbounds %struct.pgn_elements, ptr %67, i64 0, i32 2
  store ptr %66, ptr %68, align 8, !tbaa !130
  %69 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %69, ptr noundef %67) #14
  %70 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  store i32 88, ptr %70, align 8, !tbaa !129
  %71 = load ptr, ptr %49, align 8, !tbaa !128
  %72 = getelementptr inbounds %struct.pgn_elements, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !130
  br label %74

74:                                               ; preds = %56, %62
  %75 = phi ptr [ %61, %56 ], [ %73, %62 ]
  store ptr %75, ptr %12, align 8, !tbaa !157
  %76 = getelementptr inbounds %struct.cubes, ptr %75, i64 0, i32 1
  store ptr %13, ptr %76, align 8, !tbaa !204
  store i32 %1, ptr %11, align 8, !tbaa !207
  %77 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 1
  store i32 %2, ptr %77, align 4, !tbaa !208
  %78 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 2
  store i32 %3, ptr %78, align 8, !tbaa !209
  %79 = getelementptr inbounds i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %79, i8 0, i64 64, i1 false), !tbaa !45
  %80 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3
  %81 = shl nuw nsw i32 1, %5
  %82 = xor i32 %81, %6
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %83
  store ptr %16, ptr %84, align 8, !tbaa !45
  %85 = xor i32 %81, %7
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %86
  store ptr %19, ptr %87, align 8, !tbaa !45
  %88 = xor i32 %81, %8
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %89
  store ptr %22, ptr %90, align 8, !tbaa !45
  %91 = xor i32 %81, %9
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 %92
  store ptr %25, ptr %93, align 8, !tbaa !45
  %94 = load ptr, ptr %80, align 8, !tbaa !45
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %74
  %97 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  store ptr %97, ptr %80, align 8, !tbaa !45
  br label %98

98:                                               ; preds = %96, %74
  %99 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !45
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = add nsw i32 %3, 1
  %104 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %103)
  store ptr %104, ptr %99, align 8, !tbaa !45
  br label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 2
  %107 = load ptr, ptr %106, align 8, !tbaa !45
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = add nsw i32 %2, 1
  %111 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %110, i32 noundef %3)
  store ptr %111, ptr %106, align 8, !tbaa !45
  br label %112

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 3
  %114 = load ptr, ptr %113, align 8, !tbaa !45
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = add nsw i32 %2, 1
  %118 = add nsw i32 %3, 1
  %119 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %117, i32 noundef %118)
  store ptr %119, ptr %113, align 8, !tbaa !45
  br label %120

120:                                              ; preds = %116, %112
  %121 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 4
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = add nsw i32 %1, 1
  %126 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %125, i32 noundef %2, i32 noundef %3)
  store ptr %126, ptr %121, align 8, !tbaa !45
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 5
  %129 = load ptr, ptr %128, align 8, !tbaa !45
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = add nsw i32 %1, 1
  %133 = add nsw i32 %3, 1
  %134 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %132, i32 noundef %2, i32 noundef %133)
  store ptr %134, ptr %128, align 8, !tbaa !45
  br label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 6
  %137 = load ptr, ptr %136, align 8, !tbaa !45
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = add nsw i32 %1, 1
  %141 = add nsw i32 %2, 1
  %142 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %140, i32 noundef %141, i32 noundef %3)
  store ptr %142, ptr %136, align 8, !tbaa !45
  br label %143

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.cube, ptr %11, i64 0, i32 3, i64 7
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = add nsw i32 %1, 1
  %149 = add nsw i32 %2, 1
  %150 = add nsw i32 %3, 1
  %151 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %148, i32 noundef %149, i32 noundef %150)
  store ptr %151, ptr %144, align 8, !tbaa !45
  br label %152

152:                                              ; preds = %147, %143
  %153 = load ptr, ptr %12, align 8, !tbaa !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %153, ptr noundef nonnull align 8 dereferenceable(80) %11, i64 80, i1 false), !tbaa.struct !172
  br label %154

154:                                              ; preds = %43, %38, %152
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %11) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_cube(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = icmp sgt i32 %4, -1
  br i1 %6, label %7, label %85

7:                                                ; preds = %5
  %8 = add i32 %4, %1
  %9 = add nsw i32 %1, -1
  %10 = add nsw i32 %2, -1
  %11 = add i32 %4, %2
  %12 = add nsw i32 %3, -1
  %13 = add i32 %4, %3
  %14 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 17
  %16 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  %18 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %19 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 8
  %20 = tail call i32 @llvm.smax.i32(i32 %3, i32 %13)
  %21 = tail call i32 @llvm.smax.i32(i32 %2, i32 %11)
  %22 = tail call i32 @llvm.smax.i32(i32 %1, i32 %8)
  br label %23

23:                                               ; preds = %7, %82
  %24 = phi i32 [ %9, %7 ], [ %83, %82 ]
  br label %25

25:                                               ; preds = %23, %79
  %26 = phi i32 [ %80, %79 ], [ %10, %23 ]
  br label %27

27:                                               ; preds = %25, %76
  %28 = phi i32 [ %77, %76 ], [ %12, %25 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !159
  %30 = tail call fastcc i32 @setcenter(ptr noundef %0, ptr noundef %29, i32 noundef %24, i32 noundef %26, i32 noundef %28), !range !247
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %27
  %33 = load ptr, ptr %15, align 8, !tbaa !128
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %16, align 8, !tbaa !129
  %37 = icmp slt i32 %36, 16296
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = add nsw i32 %36, 88
  %40 = getelementptr inbounds %struct.pgn_elements, ptr %33, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !130
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  store i32 %39, ptr %16, align 8, !tbaa !129
  br label %54

44:                                               ; preds = %35, %32
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %46 = tail call ptr %45(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %46, ptr %15, align 8, !tbaa !128
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = tail call ptr %47(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %49 = load ptr, ptr %15, align 8, !tbaa !128
  %50 = getelementptr inbounds %struct.pgn_elements, ptr %49, i64 0, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !130
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %49) #14
  store i32 88, ptr %18, align 8, !tbaa !129
  %51 = load ptr, ptr %15, align 8, !tbaa !128
  %52 = getelementptr inbounds %struct.pgn_elements, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !130
  br label %54

54:                                               ; preds = %38, %44
  %55 = phi ptr [ %43, %38 ], [ %53, %44 ]
  %56 = load ptr, ptr %19, align 8, !tbaa !157
  %57 = getelementptr inbounds %struct.cubes, ptr %55, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !204
  store ptr %55, ptr %19, align 8, !tbaa !157
  store i32 %24, ptr %55, align 8, !tbaa !248
  %58 = getelementptr inbounds %struct.cube, ptr %55, i64 0, i32 1
  store i32 %26, ptr %58, align 4, !tbaa !249
  %59 = getelementptr inbounds %struct.cube, ptr %55, i64 0, i32 2
  store i32 %28, ptr %59, align 8, !tbaa !250
  br label %60

60:                                               ; preds = %54, %60
  %61 = phi i64 [ 0, %54 ], [ %74, %60 ]
  %62 = trunc i64 %61 to i32
  %63 = lshr i32 %62, 2
  %64 = add nsw i32 %63, %24
  %65 = trunc i64 %61 to i32
  %66 = lshr i32 %65, 1
  %67 = and i32 %66, 1
  %68 = add nsw i32 %67, %26
  %69 = trunc i64 %61 to i32
  %70 = and i32 %69, 1
  %71 = add nsw i32 %70, %28
  %72 = tail call fastcc ptr @setcorner(ptr noundef %0, i32 noundef %64, i32 noundef %68, i32 noundef %71)
  %73 = getelementptr inbounds %struct.cube, ptr %55, i64 0, i32 3, i64 %61
  store ptr %72, ptr %73, align 8, !tbaa !45
  %74 = add nuw nsw i64 %61, 1
  %75 = icmp eq i64 %74, 8
  br i1 %75, label %76, label %60, !llvm.loop !251

76:                                               ; preds = %60, %27
  %77 = add i32 %28, 1
  %78 = icmp eq i32 %77, %20
  br i1 %78, label %79, label %27, !llvm.loop !252

79:                                               ; preds = %76
  %80 = add i32 %26, 1
  %81 = icmp eq i32 %80, %21
  br i1 %81, label %82, label %25, !llvm.loop !253

82:                                               ; preds = %79
  %83 = add i32 %24, 1
  %84 = icmp eq i32 %83, %22
  br i1 %84, label %85, label %23, !llvm.loop !254

85:                                               ; preds = %82, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @setcenter(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = shl i32 %2, 5
  %7 = and i32 %6, 992
  %8 = and i32 %3, 31
  %9 = or disjoint i32 %7, %8
  %10 = shl nuw nsw i32 %9, 5
  %11 = and i32 %4, 31
  %12 = or disjoint i32 %10, %11
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %5, %29
  %18 = phi ptr [ %31, %29 ], [ %15, %5 ]
  %19 = load i32, ptr %18, align 8, !tbaa !255
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !257
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !258
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %64, label %29

29:                                               ; preds = %17, %21, %25
  %30 = getelementptr inbounds %struct.centerlist, ptr %18, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !259
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !260

33:                                               ; preds = %29, %5
  %34 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !128
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !129
  %40 = icmp slt i32 %39, 16360
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = add nsw i32 %39, 24
  %43 = getelementptr inbounds %struct.pgn_elements, ptr %35, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !130
  %45 = sext i32 %39 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store i32 %42, ptr %38, align 8, !tbaa !129
  br label %59

47:                                               ; preds = %37, %33
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %49 = tail call ptr %48(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %49, ptr %34, align 8, !tbaa !128
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %51 = tail call ptr %50(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %52 = load ptr, ptr %34, align 8, !tbaa !128
  %53 = getelementptr inbounds %struct.pgn_elements, ptr %52, i64 0, i32 2
  store ptr %51, ptr %53, align 8, !tbaa !130
  %54 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %54, ptr noundef %52) #14
  %55 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  store i32 24, ptr %55, align 8, !tbaa !129
  %56 = load ptr, ptr %34, align 8, !tbaa !128
  %57 = getelementptr inbounds %struct.pgn_elements, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  br label %59

59:                                               ; preds = %41, %47
  %60 = phi ptr [ %46, %41 ], [ %58, %47 ]
  store i32 %2, ptr %60, align 8, !tbaa !255
  %61 = getelementptr inbounds %struct.centerlist, ptr %60, i64 0, i32 1
  store i32 %3, ptr %61, align 4, !tbaa !257
  %62 = getelementptr inbounds %struct.centerlist, ptr %60, i64 0, i32 2
  store i32 %4, ptr %62, align 8, !tbaa !258
  %63 = getelementptr inbounds %struct.centerlist, ptr %60, i64 0, i32 3
  store ptr %15, ptr %63, align 8, !tbaa !259
  store ptr %60, ptr %14, align 8, !tbaa !45
  br label %64

64:                                               ; preds = %25, %59
  %65 = phi i32 [ 0, %59 ], [ 1, %25 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @setcorner(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = shl i32 %1, 5
  %6 = and i32 %5, 992
  %7 = and i32 %2, 31
  %8 = or disjoint i32 %6, %7
  %9 = shl nuw nsw i32 %8, 5
  %10 = and i32 %3, 31
  %11 = or disjoint i32 %9, %10
  %12 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %4, %30
  %19 = phi ptr [ %32, %30 ], [ %16, %4 ]
  %20 = load i32, ptr %19, align 8, !tbaa !176
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !177
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !178
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %88, label %30

30:                                               ; preds = %18, %22, %26
  %31 = getelementptr inbounds %struct.corner, ptr %19, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !261

34:                                               ; preds = %30, %4
  %35 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !128
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !129
  %41 = icmp slt i32 %40, 16344
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = add nsw i32 %40, 40
  %44 = getelementptr inbounds %struct.pgn_elements, ptr %36, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  store i32 %43, ptr %39, align 8, !tbaa !129
  br label %60

48:                                               ; preds = %38, %34
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %50 = tail call ptr %49(i64 noundef 24, ptr noundef nonnull @.str.12) #14
  store ptr %50, ptr %35, align 8, !tbaa !128
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %52 = tail call ptr %51(i64 noundef 16384, ptr noundef nonnull @.str.12) #14
  %53 = load ptr, ptr %35, align 8, !tbaa !128
  %54 = getelementptr inbounds %struct.pgn_elements, ptr %53, i64 0, i32 2
  store ptr %52, ptr %54, align 8, !tbaa !130
  %55 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %55, ptr noundef %53) #14
  %56 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 16
  store i32 40, ptr %56, align 8, !tbaa !129
  %57 = load ptr, ptr %35, align 8, !tbaa !128
  %58 = getelementptr inbounds %struct.pgn_elements, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !130
  br label %60

60:                                               ; preds = %42, %48
  %61 = phi ptr [ %47, %42 ], [ %59, %48 ]
  store i32 %1, ptr %61, align 8, !tbaa !176
  %62 = sitofp i32 %1 to float
  %63 = fadd float %62, -5.000000e-01
  %64 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 5
  %65 = load float, ptr %64, align 8, !tbaa !155
  %66 = fmul float %63, %65
  %67 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 3
  store float %66, ptr %67, align 4, !tbaa !55
  %68 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 1
  store i32 %2, ptr %68, align 4, !tbaa !177
  %69 = sitofp i32 %2 to float
  %70 = fadd float %69, -5.000000e-01
  %71 = load float, ptr %64, align 8, !tbaa !155
  %72 = fmul float %70, %71
  %73 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 3, i64 1
  store float %72, ptr %73, align 4, !tbaa !55
  %74 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 2
  store i32 %3, ptr %74, align 8, !tbaa !178
  %75 = sitofp i32 %3 to float
  %76 = fadd float %75, -5.000000e-01
  %77 = load float, ptr %64, align 8, !tbaa !155
  %78 = fmul float %76, %77
  %79 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 3, i64 2
  store float %78, ptr %79, align 4, !tbaa !55
  %80 = getelementptr inbounds %struct.process, ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !154
  %82 = tail call float %81(ptr noundef %0, float noundef %66, float noundef %72, float noundef %78) #14
  %83 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 4
  store float %82, ptr %83, align 8, !tbaa !173
  %84 = load ptr, ptr %12, align 8, !tbaa !160
  %85 = getelementptr inbounds ptr, ptr %84, i64 %14
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.corner, ptr %61, i64 0, i32 5
  store ptr %86, ptr %87, align 8, !tbaa !262
  store ptr %61, ptr %85, align 8, !tbaa !45
  br label %88

88:                                               ; preds = %26, %60
  %89 = phi ptr [ %61, %60 ], [ %19, %26 ]
  ret ptr %89
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !40, i64 186}
!35 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !37, i64 240}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!35, !37, i64 176}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !41, i64 100}
!47 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !48, i64 224, !49, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!48 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!49 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!35, !37, i64 120}
!54 = !{!35, !37, i64 144}
!55 = !{!43, !43, i64 0}
!56 = !{!35, !40, i64 188}
!57 = !{!35, !43, i64 228}
!58 = !{!35, !43, i64 232}
!59 = !{!35, !43, i64 236}
!60 = distinct !{!60, !51, !52}
!61 = !{!35, !37, i64 160}
!62 = !{!35, !37, i64 240}
!63 = !{!64, !37, i64 0}
!64 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!65 = !{!35, !37, i64 24}
!66 = !{!35, !41, i64 100}
!67 = !{!68, !37, i64 296}
!68 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !69, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !70, i64 1304, !70, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!69 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!70 = !{!"long", !38, i64 0}
!71 = !{!68, !37, i64 24}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = !{!75, !43, i64 72}
!75 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !38, i64 44, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !37, i64 88, !37, i64 96}
!76 = !{!75, !43, i64 80}
!77 = !{!75, !40, i64 26}
!78 = !{!75, !40, i64 24}
!79 = !{!75, !43, i64 68}
!80 = !{!75, !43, i64 64}
!81 = !{!75, !43, i64 60}
!82 = !{!68, !37, i64 264}
!83 = !{!68, !37, i64 1280}
!84 = distinct !{!84, !51, !52}
!85 = !{!86, !41, i64 24}
!86 = !{!"DispList", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!87 = !{!86, !37, i64 32}
!88 = distinct !{!88, !51, !52}
!89 = !{!42, !37, i64 0}
!90 = distinct !{!90, !51, !52}
!91 = !{!38, !38, i64 0}
!92 = !{!40, !40, i64 0}
!93 = !{!94, !37, i64 1888}
!94 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !70, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!95 = !{!68, !40, i64 136}
!96 = !{!35, !38, i64 184}
!97 = distinct !{!97, !51, !52}
!98 = !{!99, !41, i64 24}
!99 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!100 = !{!41, !41, i64 0}
!101 = distinct !{!101, !51, !52}
!102 = !{!103, !37, i64 8}
!103 = !{!"intlists", !37, i64 0, !37, i64 8}
!104 = !{!103, !37, i64 0}
!105 = !{!106, !37, i64 8}
!106 = !{!"intlist", !41, i64 0, !37, i64 8}
!107 = distinct !{!107, !51, !52}
!108 = distinct !{!108, !51, !52}
!109 = distinct !{!109, !51, !52}
!110 = !{!111, !41, i64 4}
!111 = !{!"process", !43, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !43, i64 36, !41, i64 40, !37, i64 48, !112, i64 56, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !37, i64 120, !42, i64 128}
!112 = !{!"vertices", !41, i64 0, !41, i64 4, !37, i64 8}
!113 = !{!75, !37, i64 0}
!114 = distinct !{!114, !51, !52}
!115 = distinct !{!115, !51, !52}
!116 = !{!117, !41, i64 0}
!117 = !{!"EvaluationContext", !41, i64 0}
!118 = !{!64, !40, i64 2084}
!119 = !{!111, !43, i64 0}
!120 = !{!111, !37, i64 8}
!121 = !{!35, !37, i64 128}
!122 = !{!68, !37, i64 216}
!123 = distinct !{!123, !51, !52}
!124 = distinct !{!124, !51, !52}
!125 = !{!75, !43, i64 32}
!126 = !{!75, !43, i64 36}
!127 = !{!75, !43, i64 40}
!128 = !{!111, !37, i64 120}
!129 = !{!111, !41, i64 112}
!130 = !{!131, !37, i64 16}
!131 = !{!"pgn_elements", !37, i64 0, !37, i64 8, !37, i64 16}
!132 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 2, !92, i64 26, i64 2, !92, i64 28, i64 2, !92, i64 30, i64 2, !92, i64 32, i64 4, !55, i64 36, i64 4, !55, i64 40, i64 4, !55, i64 44, i64 16, !91, i64 60, i64 4, !55, i64 64, i64 4, !55, i64 68, i64 4, !55, i64 72, i64 4, !55, i64 76, i64 4, !55, i64 80, i64 4, !55, i64 84, i64 4, !55, i64 88, i64 8, !45, i64 96, i64 8, !45}
!133 = !{!75, !37, i64 16}
!134 = !{!75, !43, i64 76}
!135 = !{!75, !37, i64 88}
!136 = !{!75, !37, i64 96}
!137 = distinct !{!137, !51, !52}
!138 = distinct !{!138, !51, !52}
!139 = distinct !{!139, !51, !52}
!140 = distinct !{!140, !51, !52}
!141 = distinct !{!141, !51, !52}
!142 = distinct !{!142, !51, !52}
!143 = !{!111, !37, i64 16}
!144 = !{!145, !37, i64 0}
!145 = !{!"octal_tree", !37, i64 0, !41, i64 8, !41, i64 12, !40, i64 16}
!146 = !{!147, !43, i64 100}
!147 = !{!"octal_node", !38, i64 0, !37, i64 64, !42, i64 72, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !41, i64 124, !41, i64 128, !41, i64 132}
!148 = !{!147, !43, i64 88}
!149 = !{!147, !43, i64 104}
!150 = !{!147, !43, i64 92}
!151 = !{!147, !43, i64 108}
!152 = !{!147, !43, i64 96}
!153 = distinct !{!153, !51, !52}
!154 = !{!111, !37, i64 24}
!155 = !{!111, !43, i64 32}
!156 = !{!111, !41, i64 40}
!157 = !{!111, !37, i64 48}
!158 = !{!111, !43, i64 36}
!159 = !{!111, !37, i64 72}
!160 = !{!111, !37, i64 80}
!161 = !{!111, !37, i64 88}
!162 = distinct !{!162, !51, !52}
!163 = distinct !{!163, !52}
!164 = !{!106, !41, i64 0}
!165 = distinct !{!165, !51, !52}
!166 = distinct !{!166, !51, !52}
!167 = distinct !{!167, !51, !52}
!168 = distinct !{!168, !51, !52}
!169 = distinct !{!169, !51, !52}
!170 = distinct !{!170, !51, !52}
!171 = distinct !{!171, !51, !52}
!172 = !{i64 0, i64 4, !100, i64 4, i64 4, !100, i64 8, i64 4, !100, i64 16, i64 64, !91}
!173 = !{!174, !43, i64 24}
!174 = !{!"corner", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 12, !43, i64 24, !37, i64 32}
!175 = distinct !{!175, !51, !52}
!176 = !{!174, !41, i64 0}
!177 = !{!174, !41, i64 4}
!178 = !{!174, !41, i64 8}
!179 = !{!180, !41, i64 0}
!180 = !{!"edgelist", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 32}
!181 = !{!180, !41, i64 4}
!182 = !{!180, !41, i64 8}
!183 = !{!180, !41, i64 12}
!184 = !{!180, !41, i64 16}
!185 = !{!180, !41, i64 20}
!186 = !{!180, !41, i64 24}
!187 = distinct !{!187, !51, !52}
!188 = distinct !{!188, !52}
!189 = distinct !{!189, !52}
!190 = distinct !{!190, !52}
!191 = distinct !{!191, !52}
!192 = !{!112, !41, i64 0}
!193 = !{!112, !41, i64 4}
!194 = !{!112, !37, i64 8}
!195 = !{i64 0, i64 12, !91, i64 12, i64 12, !91}
!196 = distinct !{!196, !51, !52}
!197 = !{!111, !41, i64 56}
!198 = !{!180, !37, i64 32}
!199 = distinct !{!199, !51, !52}
!200 = !{!111, !41, i64 104}
!201 = !{!111, !41, i64 108}
!202 = !{!111, !37, i64 96}
!203 = distinct !{!203, !51, !52}
!204 = !{!205, !37, i64 80}
!205 = !{!"cubes", !206, i64 0, !37, i64 80}
!206 = !{!"cube", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 16}
!207 = !{!206, !41, i64 0}
!208 = !{!206, !41, i64 4}
!209 = !{!206, !41, i64 8}
!210 = distinct !{!210, !51, !52}
!211 = !{!111, !37, i64 64}
!212 = !{!86, !40, i64 16}
!213 = !{!86, !41, i64 20}
!214 = !{!86, !37, i64 48}
!215 = !{!86, !37, i64 40}
!216 = distinct !{!216, !51, !52}
!217 = !{!145, !40, i64 16}
!218 = !{!147, !41, i64 128}
!219 = !{!145, !41, i64 12}
!220 = !{!147, !41, i64 124}
!221 = !{!145, !41, i64 8}
!222 = !{!147, !41, i64 132}
!223 = !{!224, !37, i64 16}
!224 = !{!"ml_pointer", !37, i64 0, !37, i64 8, !37, i64 16}
!225 = distinct !{!225, !51, !52}
!226 = distinct !{!226, !51, !52}
!227 = distinct !{!227, !51, !52}
!228 = distinct !{!228, !51, !52}
!229 = distinct !{!229, !51, !52}
!230 = distinct !{!230, !51, !52}
!231 = distinct !{!231, !51, !52}
!232 = distinct !{!232, !51, !52}
!233 = distinct !{!233, !51, !52}
!234 = distinct !{!234, !51, !52}
!235 = distinct !{!235, !51, !52}
!236 = distinct !{!236, !51, !52}
!237 = distinct !{!237, !51, !52}
!238 = !{!75, !43, i64 84}
!239 = distinct !{!239, !51, !52}
!240 = !{!147, !37, i64 64}
!241 = distinct !{!241, !51, !52}
!242 = !{!147, !43, i64 112}
!243 = !{!147, !43, i64 116}
!244 = !{!147, !43, i64 120}
!245 = distinct !{!245, !51, !52}
!246 = distinct !{!246, !51, !52}
!247 = !{i32 0, i32 2}
!248 = !{!205, !41, i64 0}
!249 = !{!205, !41, i64 4}
!250 = !{!205, !41, i64 8}
!251 = distinct !{!251, !51, !52}
!252 = distinct !{!252, !51, !52}
!253 = distinct !{!253, !51, !52}
!254 = distinct !{!254, !51, !52}
!255 = !{!256, !41, i64 0}
!256 = !{!"centerlist", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 16}
!257 = !{!256, !41, i64 4}
!258 = !{!256, !41, i64 8}
!259 = !{!256, !37, i64 16}
!260 = distinct !{!260, !51, !52}
!261 = distinct !{!261, !51, !52}
!262 = !{!174, !37, i64 32}
