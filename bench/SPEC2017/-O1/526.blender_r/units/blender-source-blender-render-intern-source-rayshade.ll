; ModuleID = 'blender/source/blender/render/intern/source/rayshade.c'
source_filename = "blender/source/blender/render/intern/source/rayshade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.VlakPrimitive = type { ptr, ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.QMCSampler = type { ptr, ptr, i32, i32, i32, ptr, [1 x [2 x double]] }
%struct.RayHint = type { %union.anon }
%union.anon = type { %struct.LCTSHint }
%struct.LCTSHint = type { i32, [256 x ptr] }

@.str = private unnamed_addr constant [55 x i8] c"Warning: Using VBVH (SSE was disabled at compile time)\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ObjectRen primitives\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ObjectRen faces\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Raytree.. preparing\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Raytree building canceled\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Raytree finished\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"lamp jitter tab\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"QMCListBase\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"AO sphere\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"AO tables\00", align 1
@R = external local_unnamed_addr global %struct.Render, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Raytrace vlak-primitives\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Render ray faces\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Raytree.. building\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"qmc sampler\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"qmc sample table\00", align 1
@threadsafe_table_sphere.xso = internal unnamed_addr global [1 x i32] zeroinitializer, align 4
@threadsafe_table_sphere.yso = internal unnamed_addr global [1 x i32] zeroinitializer, align 4
@threadsafe_table_sphere.firsttime = internal unnamed_addr global i1 false, align 4
@__const.ray_shadow_jittered_coords.order8 = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 5, i32 6, i32 2, i32 3, i32 4, i32 7], align 16
@__const.ray_shadow_jittered_coords.order11 = private unnamed_addr constant [11 x i32] [i32 1, i32 3, i32 8, i32 10, i32 0, i32 2, i32 4, i32 5, i32 6, i32 7, i32 9], align 16
@__const.ray_shadow_jittered_coords.order16 = private unnamed_addr constant [16 x i32] [i32 1, i32 3, i32 9, i32 12, i32 0, i32 6, i32 7, i32 8, i32 13, i32 2, i32 4, i32 5, i32 10, i32 11, i32 14, i32 15], align 16
@__const.ray_shadow_jitter.col = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_rayobject_create(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 3, i32 %0
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str)
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ 3, %8 ], [ %5, %3 ]
  switch i32 %11, label %18 [
    i32 1, label %12
    i32 3, label %14
    i32 4, label %16
  ]

12:                                               ; preds = %10
  %13 = tail call ptr @RE_rayobject_octree_create(i32 noundef %2, i32 noundef %1) #9
  br label %20

14:                                               ; preds = %10
  %15 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %1) #9
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr @RE_rayobject_svbvh_create(i32 noundef %1) #9
  br label %20

18:                                               ; preds = %10
  %19 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %1) #9
  br label %20

20:                                               ; preds = %14, %18, %16, %12
  %21 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %17, %16 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

declare ptr @RE_rayobject_octree_create(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RE_rayobject_vbvh_create(i32 noundef) local_unnamed_addr #3

declare ptr @RE_rayobject_svbvh_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @freeraytree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RE_rayobject_free(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 53
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %11(ptr noundef nonnull %8) #9
  store ptr null, ptr %7, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #9
  store ptr null, ptr %13, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18, %41
  %23 = phi ptr [ %42, %41 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.ObjectRen, ptr %25, i64 0, i32 29
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @RE_rayobject_free(ptr noundef nonnull %27) #9
  store ptr null, ptr %26, align 8, !tbaa !61
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %25, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %35(ptr noundef nonnull %32) #9
  store ptr null, ptr %31, align 8, !tbaa !63
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @RE_rayobject_free(ptr noundef nonnull %38) #9
  store ptr null, ptr %37, align 8, !tbaa !64
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %23, align 8, !tbaa !57
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !65

44:                                               ; preds = %41, %18
  ret void
}

declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @makeraytree_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %172

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !70
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br label %19

19:                                               ; preds = %12, %45
  %20 = phi i32 [ 0, %12 ], [ %47, %45 ]
  %21 = phi i32 [ 0, %12 ], [ %48, %45 ]
  %22 = lshr i32 %21, 8
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.VlakTableNode, ptr %14, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = and i32 %21, 255
  %27 = zext nneg i32 %26 to i64
  br i1 %18, label %28, label %38

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.VlakRen, ptr %25, i64 %27, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !73
  %31 = icmp sgt i8 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.VlakRen, ptr %25, i64 %27, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !76
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %28, %19
  %39 = getelementptr inbounds %struct.VlakRen, ptr %25, i64 %27, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.Material, ptr %40, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !76
  %43 = icmp eq i16 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %38, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %38 ]
  %47 = add nuw nsw i32 %46, %20
  %48 = add nuw nsw i32 %21, 1
  %49 = icmp eq i32 %48, %10
  br i1 %49, label %50, label %19, !llvm.loop !80

50:                                               ; preds = %45, %8
  %51 = phi i32 [ 0, %8 ], [ %47, %45 ]
  %52 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %199, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 49
  %56 = load i16, ptr %55, align 8, !tbaa !81
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 51
  %58 = load i16, ptr %57, align 4, !tbaa !82
  %59 = sext i16 %58 to i32
  %60 = icmp eq i16 %56, 0
  %61 = select i1 %60, i16 3, i16 %56
  %62 = sext i16 %61 to i32
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str)
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i32 [ 3, %65 ], [ %62, %54 ]
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 3, label %71
    i32 4, label %73
  ]

69:                                               ; preds = %67
  %70 = tail call ptr @RE_rayobject_octree_create(i32 noundef %59, i32 noundef %51) #9
  br label %77

71:                                               ; preds = %67
  %72 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %51) #9
  br label %77

73:                                               ; preds = %67
  %74 = tail call ptr @RE_rayobject_svbvh_create(i32 noundef %51) #9
  br label %77

75:                                               ; preds = %67
  %76 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %51) #9
  br label %77

77:                                               ; preds = %69, %71, %73, %75
  %78 = phi ptr [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i64
  %82 = and i64 %81, 3
  %83 = icmp eq i64 %82, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = and i64 %81, -4
  %86 = inttoptr i64 %85 to ptr
  %87 = getelementptr inbounds %struct.RayObject, ptr %86, i64 0, i32 1
  store ptr %0, ptr %87, align 8, !tbaa !83
  %88 = getelementptr inbounds %struct.RayObject, ptr %86, i64 0, i32 1, i32 1
  store ptr @test_break, ptr %88, align 8, !tbaa !86
  br label %89

89:                                               ; preds = %77, %80, %84
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %91 = load i32, ptr %90, align 4, !tbaa !87
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %95 = zext nneg i32 %51 to i64
  br i1 %93, label %100, label %96

96:                                               ; preds = %89
  %97 = shl nuw nsw i64 %95, 4
  %98 = tail call ptr %94(i64 noundef %97, ptr noundef nonnull @.str.1) #9
  %99 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 31
  store ptr %98, ptr %99, align 8, !tbaa !88
  br label %104

100:                                              ; preds = %89
  %101 = mul nuw nsw i64 %95, 80
  %102 = tail call ptr %94(i64 noundef %101, ptr noundef nonnull @.str.2) #9
  %103 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 30
  store ptr %102, ptr %103, align 8, !tbaa !63
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi ptr [ %98, %96 ], [ null, %100 ]
  %106 = phi ptr [ null, %96 ], [ %102, %100 ]
  %107 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 32
  store ptr %1, ptr %107, align 8, !tbaa !89
  %108 = load i32, ptr %52, align 4, !tbaa !68
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %163

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 19
  %112 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  br label %113

113:                                              ; preds = %110, %157
  %114 = phi ptr [ %106, %110 ], [ %159, %157 ]
  %115 = phi i32 [ 0, %110 ], [ %160, %157 ]
  %116 = phi ptr [ %105, %110 ], [ %158, %157 ]
  %117 = load ptr, ptr %111, align 8, !tbaa !69
  %118 = lshr i32 %115, 8
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds %struct.VlakTableNode, ptr %117, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !71
  %122 = and i32 %115, 255
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct.VlakRen, ptr %121, i64 %123
  %125 = load i16, ptr %112, align 8, !tbaa !70
  %126 = and i16 %125, 32
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.VlakRen, ptr %121, i64 %123, i32 7
  %130 = load i8, ptr %129, align 1, !tbaa !73
  %131 = icmp sgt i8 %130, -1
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.VlakRen, ptr %121, i64 %123, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !75
  %135 = getelementptr inbounds %struct.Material, ptr %134, i64 0, i32 2
  %136 = load i16, ptr %135, align 8, !tbaa !76
  %137 = icmp eq i16 %136, 2
  br i1 %137, label %138, label %157

138:                                              ; preds = %132, %128, %113
  %139 = getelementptr inbounds %struct.VlakRen, ptr %121, i64 %123, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  %141 = getelementptr inbounds %struct.Material, ptr %140, i64 0, i32 2
  %142 = load i16, ptr %141, align 8, !tbaa !76
  %143 = icmp eq i16 %142, 3
  br i1 %143, label %157, label %144

144:                                              ; preds = %138
  %145 = load i32, ptr %90, align 4, !tbaa !87
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call ptr @RE_vlakprimitive_from_vlak(ptr noundef %116, ptr noundef %1, ptr noundef %124) #9
  tail call void @RE_rayobject_add(ptr noundef %78, ptr noundef %149) #9
  %150 = getelementptr inbounds %struct.VlakPrimitive, ptr %116, i64 1
  br label %157

151:                                              ; preds = %144
  %152 = tail call ptr @RE_rayface_from_vlak(ptr noundef %114, ptr noundef %1, ptr noundef %124) #9
  %153 = ptrtoint ptr %114 to i64
  %154 = or i64 %153, 1
  %155 = inttoptr i64 %154 to ptr
  tail call void @RE_rayobject_add(ptr noundef %78, ptr noundef nonnull %155) #9
  %156 = getelementptr inbounds %struct.RayFace, ptr %114, i64 1
  br label %157

157:                                              ; preds = %132, %138, %148, %151
  %158 = phi ptr [ %150, %148 ], [ %116, %151 ], [ %116, %138 ], [ %116, %132 ]
  %159 = phi ptr [ %114, %148 ], [ %156, %151 ], [ %114, %138 ], [ %114, %132 ]
  %160 = add nuw nsw i32 %115, 1
  %161 = load i32, ptr %52, align 4, !tbaa !68
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %113, label %163, !llvm.loop !90

163:                                              ; preds = %157, %104
  tail call void @RE_rayobject_done(ptr noundef %78) #9
  %164 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %165 = load ptr, ptr %164, align 8, !tbaa !91
  %166 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %167 = load ptr, ptr %166, align 8, !tbaa !92
  %168 = tail call i32 %165(ptr noundef %167) #9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  tail call void @RE_rayobject_free(ptr noundef %78) #9
  br label %172

171:                                              ; preds = %163
  store ptr %78, ptr %5, align 8, !tbaa !61
  br label %172

172:                                              ; preds = %171, %170, %2
  %173 = load ptr, ptr %5, align 8, !tbaa !61
  %174 = icmp eq ptr %173, null
  br i1 %174, label %191, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %177 = load i16, ptr %176, align 8, !tbaa !93
  %178 = and i16 %177, 3
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 18
  %182 = load ptr, ptr %181, align 8, !tbaa !64
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 19
  store i32 0, ptr %185, align 8, !tbaa !94
  %186 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  %187 = load ptr, ptr %3, align 8, !tbaa !59
  %188 = getelementptr inbounds %struct.ObjectRen, ptr %187, i64 0, i32 32
  %189 = load ptr, ptr %188, align 8, !tbaa !89
  %190 = tail call ptr @RE_rayobject_instance_create(ptr noundef nonnull %173, ptr noundef nonnull %186, ptr noundef %1, ptr noundef %189) #9
  store ptr %190, ptr %181, align 8, !tbaa !64
  br label %191

191:                                              ; preds = %175, %180, %184, %172
  %192 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 18
  %193 = load ptr, ptr %192, align 8, !tbaa !64
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load ptr, ptr %3, align 8, !tbaa !59
  %197 = getelementptr inbounds %struct.ObjectRen, ptr %196, i64 0, i32 29
  %198 = load ptr, ptr %197, align 8, !tbaa !61
  br label %199

199:                                              ; preds = %50, %191, %195
  %200 = phi ptr [ %198, %195 ], [ %193, %191 ], [ null, %50 ]
  ret ptr %200
}

declare void @RE_rayobject_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_vlakprimitive_from_vlak(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_rayface_from_vlak(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RE_rayobject_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @test_break(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = tail call i32 %3(ptr noundef %5) #9
  ret i32 %6
}

declare ptr @RE_rayobject_instance_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @makeraytree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.3, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  tail call void %8(ptr noundef %10, ptr noundef nonnull %5) #9
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 49
  %12 = load i16, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %16 = load i32, ptr %15, align 4, !tbaa !87
  %17 = and i32 %16, -4
  store i32 %17, ptr %15, align 4, !tbaa !87
  br label %18

18:                                               ; preds = %14, %1
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %183, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  br label %30

30:                                               ; preds = %22, %178
  %31 = phi ptr [ %20, %22 ], [ %181, %178 ]
  %32 = phi i32 [ 0, %22 ], [ %180, %178 ]
  %33 = phi i32 [ 0, %22 ], [ %179, %178 ]
  %34 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  br i1 %25, label %40, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = icmp eq ptr %38, %24
  br i1 %39, label %178, label %40

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %178

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = load i16, ptr %26, align 8, !tbaa !70
  %48 = and i16 %47, 32
  %49 = icmp eq i16 %48, 0
  br label %50

50:                                               ; preds = %74, %44
  %51 = phi i32 [ 0, %44 ], [ %75, %74 ]
  %52 = lshr i32 %51, 8
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.VlakTableNode, ptr %46, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  %56 = and i32 %51, 255
  %57 = zext nneg i32 %56 to i64
  br i1 %49, label %58, label %68

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.VlakRen, ptr %55, i64 %57, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !73
  %61 = icmp sgt i8 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.VlakRen, ptr %55, i64 %57, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !75
  %65 = getelementptr inbounds %struct.Material, ptr %64, i64 0, i32 2
  %66 = load i16, ptr %65, align 8, !tbaa !76
  %67 = icmp eq i16 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %58, %50
  %69 = getelementptr inbounds %struct.VlakRen, ptr %55, i64 %57, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.Material, ptr %70, i64 0, i32 2
  %72 = load i16, ptr %71, align 8, !tbaa !76
  %73 = icmp eq i16 %72, 3
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %62
  %75 = add nuw nsw i32 %51, 1
  %76 = icmp eq i32 %75, %42
  br i1 %76, label %178, label %50, !llvm.loop !100

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %31, i64 0, i32 11
  %79 = load i16, ptr %78, align 8, !tbaa !93
  %80 = and i16 %79, 3
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %135, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %27, align 4, !tbaa !87
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %135, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 11
  %88 = load i32, ptr %87, align 4, !tbaa !68
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  %93 = load i16, ptr %28, align 8, !tbaa !70
  %94 = and i16 %93, 32
  %95 = icmp eq i16 %94, 0
  br label %96

96:                                               ; preds = %127, %90
  %97 = phi i1 [ true, %90 ], [ %132, %127 ]
  %98 = phi i32 [ 0, %90 ], [ %130, %127 ]
  %99 = phi i32 [ 0, %90 ], [ %131, %127 ]
  %100 = lshr i32 %99, 8
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.VlakTableNode, ptr %92, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !71
  %104 = and i32 %99, 255
  %105 = zext nneg i32 %104 to i64
  br i1 %95, label %106, label %116

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.VlakRen, ptr %103, i64 %105, i32 7
  %108 = load i8, ptr %107, align 1, !tbaa !73
  %109 = icmp sgt i8 %108, -1
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.VlakRen, ptr %103, i64 %105, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.Material, ptr %112, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !76
  %115 = icmp eq i16 %114, 2
  br i1 %115, label %116, label %122

116:                                              ; preds = %110, %106, %96
  %117 = getelementptr inbounds %struct.VlakRen, ptr %103, i64 %105, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !75
  %119 = getelementptr inbounds %struct.Material, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !76
  %121 = icmp eq i16 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i1 [ true, %122 ], [ false, %116 ]
  %125 = icmp ult i32 %98, 4
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = xor i1 %124, true
  %129 = zext i1 %128 to i32
  %130 = add nuw nsw i32 %98, %129
  %131 = add nuw nsw i32 %99, 1
  %132 = icmp slt i32 %131, %88
  %133 = icmp eq i32 %131, %88
  br i1 %133, label %135, label %96, !llvm.loop !101

134:                                              ; preds = %123
  br i1 %97, label %145, label %135

135:                                              ; preds = %127, %134, %86, %82, %77
  %136 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 11
  %137 = load i32, ptr %136, align 4, !tbaa !68
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ObjectRen, ptr %35, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  %142 = load i16, ptr %29, align 8, !tbaa !70
  %143 = and i16 %142, 32
  %144 = icmp eq i16 %143, 0
  br label %147

145:                                              ; preds = %134
  %146 = add nsw i32 %33, 1
  br label %178

147:                                              ; preds = %139, %173
  %148 = phi i32 [ %32, %139 ], [ %175, %173 ]
  %149 = phi i32 [ 0, %139 ], [ %176, %173 ]
  %150 = lshr i32 %149, 8
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds %struct.VlakTableNode, ptr %141, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !71
  %154 = and i32 %149, 255
  %155 = zext nneg i32 %154 to i64
  br i1 %144, label %156, label %166

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 %155, i32 7
  %158 = load i8, ptr %157, align 1, !tbaa !73
  %159 = icmp sgt i8 %158, -1
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 %155, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !75
  %163 = getelementptr inbounds %struct.Material, ptr %162, i64 0, i32 2
  %164 = load i16, ptr %163, align 8, !tbaa !76
  %165 = icmp eq i16 %164, 2
  br i1 %165, label %166, label %172

166:                                              ; preds = %160, %156, %147
  %167 = getelementptr inbounds %struct.VlakRen, ptr %153, i64 %155, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !75
  %169 = getelementptr inbounds %struct.Material, ptr %168, i64 0, i32 2
  %170 = load i16, ptr %169, align 8, !tbaa !76
  %171 = icmp eq i16 %170, 3
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %160
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i32 [ 0, %172 ], [ 1, %166 ]
  %175 = add nsw i32 %174, %148
  %176 = add nuw nsw i32 %149, 1
  %177 = icmp eq i32 %176, %137
  br i1 %177, label %178, label %147, !llvm.loop !102

178:                                              ; preds = %74, %173, %135, %36, %40, %145
  %179 = phi i32 [ %146, %145 ], [ %33, %40 ], [ %33, %36 ], [ %33, %135 ], [ %33, %173 ], [ %33, %74 ]
  %180 = phi i32 [ %32, %145 ], [ %32, %40 ], [ %32, %36 ], [ %32, %135 ], [ %175, %173 ], [ %32, %74 ]
  %181 = load ptr, ptr %31, align 8, !tbaa !57
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %30, !llvm.loop !103

183:                                              ; preds = %178, %18
  %184 = phi i32 [ 0, %18 ], [ %179, %178 ]
  %185 = phi i32 [ 0, %18 ], [ %180, %178 ]
  %186 = add nsw i32 %185, %184
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = tail call ptr @RE_rayobject_empty_create() #9
  %190 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  store ptr %189, ptr %190, align 8, !tbaa !34
  br label %464

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 51
  %193 = load i16, ptr %192, align 4, !tbaa !82
  %194 = sext i16 %193 to i32
  %195 = icmp eq i16 %12, 0
  %196 = select i1 %195, i16 3, i16 %12
  %197 = sext i16 %196 to i32
  %198 = and i32 %197, -2
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str)
  br label %202

202:                                              ; preds = %200, %191
  %203 = phi i32 [ 3, %200 ], [ %197, %191 ]
  switch i32 %203, label %210 [
    i32 1, label %204
    i32 3, label %206
    i32 4, label %208
  ]

204:                                              ; preds = %202
  %205 = tail call ptr @RE_rayobject_octree_create(i32 noundef %194, i32 noundef %186) #9
  br label %212

206:                                              ; preds = %202
  %207 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %186) #9
  br label %212

208:                                              ; preds = %202
  %209 = tail call ptr @RE_rayobject_svbvh_create(i32 noundef %186) #9
  br label %212

210:                                              ; preds = %202
  %211 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %186) #9
  br label %212

212:                                              ; preds = %204, %206, %208, %210
  %213 = phi ptr [ %205, %204 ], [ %207, %206 ], [ %209, %208 ], [ %211, %210 ]
  %214 = icmp eq ptr %213, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %212
  %216 = ptrtoint ptr %213 to i64
  %217 = and i64 %216, 3
  %218 = icmp eq i64 %217, 2
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = and i64 %216, -4
  %221 = inttoptr i64 %220 to ptr
  %222 = getelementptr inbounds %struct.RayObject, ptr %221, i64 0, i32 1
  store ptr %0, ptr %222, align 8, !tbaa !83
  %223 = getelementptr inbounds %struct.RayObject, ptr %221, i64 0, i32 1, i32 1
  store ptr @test_break, ptr %223, align 8, !tbaa !86
  br label %224

224:                                              ; preds = %219, %215, %212
  %225 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  store ptr %213, ptr %225, align 8, !tbaa !34
  %226 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %227 = load i32, ptr %226, align 4, !tbaa !87
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, 0
  %230 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %231 = sext i32 %185 to i64
  br i1 %229, label %236, label %232

232:                                              ; preds = %224
  %233 = shl nsw i64 %231, 4
  %234 = tail call ptr %230(i64 noundef %233, ptr noundef nonnull @.str.10) #9
  %235 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 54
  store ptr %234, ptr %235, align 8, !tbaa !58
  br label %240

236:                                              ; preds = %224
  %237 = mul nsw i64 %231, 80
  %238 = tail call ptr %230(i64 noundef %237, ptr noundef nonnull @.str.11) #9
  %239 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 53
  store ptr %238, ptr %239, align 8, !tbaa !56
  br label %240

240:                                              ; preds = %236, %232
  %241 = phi ptr [ %234, %232 ], [ null, %236 ]
  %242 = phi ptr [ null, %232 ], [ %238, %236 ]
  %243 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %244 = load ptr, ptr %19, align 8, !tbaa !57
  %245 = icmp eq ptr %244, null
  br i1 %245, label %454, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  %248 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %249 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %250 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %251 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  br label %252

252:                                              ; preds = %246, %449
  %253 = phi ptr [ %244, %246 ], [ %452, %449 ]
  %254 = phi ptr [ %242, %246 ], [ %451, %449 ]
  %255 = phi ptr [ %241, %246 ], [ %450, %449 ]
  %256 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %253, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !59
  %258 = load ptr, ptr %247, align 8, !tbaa !98
  %259 = icmp eq ptr %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.ObjectRen, ptr %257, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !99
  %263 = icmp eq ptr %262, %258
  br i1 %263, label %449, label %264

264:                                              ; preds = %260, %252
  %265 = getelementptr inbounds %struct.ObjectRen, ptr %257, i64 0, i32 11
  %266 = load i32, ptr %265, align 4, !tbaa !68
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %449

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.ObjectRen, ptr %257, i64 0, i32 19
  %270 = load ptr, ptr %269, align 8, !tbaa !69
  %271 = load i16, ptr %248, align 8, !tbaa !70
  %272 = and i16 %271, 32
  %273 = icmp eq i16 %272, 0
  br label %274

274:                                              ; preds = %298, %268
  %275 = phi i32 [ 0, %268 ], [ %299, %298 ]
  %276 = lshr i32 %275, 8
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds %struct.VlakTableNode, ptr %270, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !71
  %280 = and i32 %275, 255
  %281 = zext nneg i32 %280 to i64
  br i1 %273, label %282, label %292

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.VlakRen, ptr %279, i64 %281, i32 7
  %284 = load i8, ptr %283, align 1, !tbaa !73
  %285 = icmp sgt i8 %284, -1
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.VlakRen, ptr %279, i64 %281, i32 5
  %288 = load ptr, ptr %287, align 8, !tbaa !75
  %289 = getelementptr inbounds %struct.Material, ptr %288, i64 0, i32 2
  %290 = load i16, ptr %289, align 8, !tbaa !76
  %291 = icmp eq i16 %290, 2
  br i1 %291, label %292, label %298

292:                                              ; preds = %286, %282, %274
  %293 = getelementptr inbounds %struct.VlakRen, ptr %279, i64 %281, i32 5
  %294 = load ptr, ptr %293, align 8, !tbaa !75
  %295 = getelementptr inbounds %struct.Material, ptr %294, i64 0, i32 2
  %296 = load i16, ptr %295, align 8, !tbaa !76
  %297 = icmp eq i16 %296, 3
  br i1 %297, label %298, label %301

298:                                              ; preds = %292, %286
  %299 = add nuw nsw i32 %275, 1
  %300 = icmp eq i32 %299, %266
  br i1 %300, label %449, label %274, !llvm.loop !100

301:                                              ; preds = %292
  %302 = load ptr, ptr %243, align 8, !tbaa !91
  %303 = load ptr, ptr %249, align 8, !tbaa !92
  %304 = tail call i32 %302(ptr noundef %303) #9
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %454

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %253, i64 0, i32 11
  %308 = load i16, ptr %307, align 8, !tbaa !93
  %309 = and i16 %308, 3
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %365, label %311

311:                                              ; preds = %306
  %312 = load i32, ptr %226, align 4, !tbaa !87
  %313 = and i32 %312, 2
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %365, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %256, align 8, !tbaa !59
  %317 = getelementptr inbounds %struct.ObjectRen, ptr %316, i64 0, i32 11
  %318 = load i32, ptr %317, align 4, !tbaa !68
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %365

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.ObjectRen, ptr %316, i64 0, i32 19
  %322 = load ptr, ptr %321, align 8, !tbaa !69
  %323 = load i16, ptr %250, align 8, !tbaa !70
  %324 = and i16 %323, 32
  %325 = icmp eq i16 %324, 0
  br label %326

326:                                              ; preds = %357, %320
  %327 = phi i1 [ true, %320 ], [ %362, %357 ]
  %328 = phi i32 [ 0, %320 ], [ %360, %357 ]
  %329 = phi i32 [ 0, %320 ], [ %361, %357 ]
  %330 = lshr i32 %329, 8
  %331 = zext nneg i32 %330 to i64
  %332 = getelementptr inbounds %struct.VlakTableNode, ptr %322, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !71
  %334 = and i32 %329, 255
  %335 = zext nneg i32 %334 to i64
  br i1 %325, label %336, label %346

336:                                              ; preds = %326
  %337 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 %335, i32 7
  %338 = load i8, ptr %337, align 1, !tbaa !73
  %339 = icmp sgt i8 %338, -1
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 %335, i32 5
  %342 = load ptr, ptr %341, align 8, !tbaa !75
  %343 = getelementptr inbounds %struct.Material, ptr %342, i64 0, i32 2
  %344 = load i16, ptr %343, align 8, !tbaa !76
  %345 = icmp eq i16 %344, 2
  br i1 %345, label %346, label %352

346:                                              ; preds = %340, %336, %326
  %347 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 %335, i32 5
  %348 = load ptr, ptr %347, align 8, !tbaa !75
  %349 = getelementptr inbounds %struct.Material, ptr %348, i64 0, i32 2
  %350 = load i16, ptr %349, align 8, !tbaa !76
  %351 = icmp eq i16 %350, 3
  br i1 %351, label %352, label %353

352:                                              ; preds = %346, %340
  br label %353

353:                                              ; preds = %352, %346
  %354 = phi i1 [ true, %352 ], [ false, %346 ]
  %355 = icmp ult i32 %328, 4
  %356 = select i1 %354, i1 true, i1 %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = xor i1 %354, true
  %359 = zext i1 %358 to i32
  %360 = add nuw nsw i32 %328, %359
  %361 = add nuw nsw i32 %329, 1
  %362 = icmp slt i32 %361, %318
  %363 = icmp eq i32 %361, %318
  br i1 %363, label %365, label %326, !llvm.loop !101

364:                                              ; preds = %353
  br i1 %327, label %367, label %365

365:                                              ; preds = %357, %364, %315, %311, %306
  %366 = load ptr, ptr %256, align 8, !tbaa !59
  br i1 %310, label %380, label %378

367:                                              ; preds = %364
  %368 = tail call ptr @makeraytree_object(ptr noundef %0, ptr noundef nonnull %253)
  %369 = load ptr, ptr %243, align 8, !tbaa !91
  %370 = load ptr, ptr %249, align 8, !tbaa !92
  %371 = tail call i32 %369(ptr noundef %370) #9
  %372 = icmp ne i32 %371, 0
  %373 = icmp eq ptr %368, null
  %374 = select i1 %372, i1 true, i1 %373
  br i1 %374, label %377, label %375

375:                                              ; preds = %367
  %376 = load ptr, ptr %225, align 8, !tbaa !34
  tail call void @RE_rayobject_add(ptr noundef %376, ptr noundef nonnull %368) #9
  br label %377

377:                                              ; preds = %375, %367
  br i1 %372, label %454, label %449

378:                                              ; preds = %365
  %379 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %253, i64 0, i32 19
  store i32 1, ptr %379, align 8, !tbaa !94
  br label %380

380:                                              ; preds = %378, %365
  %381 = getelementptr inbounds %struct.ObjectRen, ptr %366, i64 0, i32 11
  %382 = load i32, ptr %381, align 4, !tbaa !68
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %449

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.ObjectRen, ptr %366, i64 0, i32 19
  %386 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %253, i64 0, i32 8
  br label %387

387:                                              ; preds = %384, %443
  %388 = phi ptr [ %254, %384 ], [ %445, %443 ]
  %389 = phi ptr [ %255, %384 ], [ %444, %443 ]
  %390 = phi i32 [ 0, %384 ], [ %446, %443 ]
  %391 = load ptr, ptr %385, align 8, !tbaa !69
  %392 = lshr i32 %390, 8
  %393 = zext nneg i32 %392 to i64
  %394 = getelementptr inbounds %struct.VlakTableNode, ptr %391, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !71
  %396 = and i32 %390, 255
  %397 = zext nneg i32 %396 to i64
  %398 = getelementptr inbounds %struct.VlakRen, ptr %395, i64 %397
  %399 = load i16, ptr %251, align 8, !tbaa !70
  %400 = and i16 %399, 32
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %402, label %412

402:                                              ; preds = %387
  %403 = getelementptr inbounds %struct.VlakRen, ptr %395, i64 %397, i32 7
  %404 = load i8, ptr %403, align 1, !tbaa !73
  %405 = icmp sgt i8 %404, -1
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.VlakRen, ptr %395, i64 %397, i32 5
  %408 = load ptr, ptr %407, align 8, !tbaa !75
  %409 = getelementptr inbounds %struct.Material, ptr %408, i64 0, i32 2
  %410 = load i16, ptr %409, align 8, !tbaa !76
  %411 = icmp eq i16 %410, 2
  br i1 %411, label %412, label %443

412:                                              ; preds = %406, %402, %387
  %413 = getelementptr inbounds %struct.VlakRen, ptr %395, i64 %397, i32 5
  %414 = load ptr, ptr %413, align 8, !tbaa !75
  %415 = getelementptr inbounds %struct.Material, ptr %414, i64 0, i32 2
  %416 = load i16, ptr %415, align 8, !tbaa !76
  %417 = icmp eq i16 %416, 3
  br i1 %417, label %443, label %418

418:                                              ; preds = %412
  %419 = load i32, ptr %226, align 4, !tbaa !87
  %420 = and i32 %419, 1
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %418
  %423 = tail call ptr @RE_vlakprimitive_from_vlak(ptr noundef %389, ptr noundef nonnull %253, ptr noundef %398) #9
  tail call void @RE_rayobject_add(ptr noundef %213, ptr noundef %423) #9
  %424 = getelementptr inbounds %struct.VlakPrimitive, ptr %389, i64 1
  br label %443

425:                                              ; preds = %418
  %426 = tail call ptr @RE_rayface_from_vlak(ptr noundef %388, ptr noundef nonnull %253, ptr noundef %398) #9
  %427 = load i16, ptr %307, align 8, !tbaa !93
  %428 = and i16 %427, 3
  %429 = icmp eq i16 %428, 0
  br i1 %429, label %438, label %430

430:                                              ; preds = %425
  tail call void @mul_m4_v3(ptr noundef nonnull %386, ptr noundef %388) #9
  %431 = getelementptr inbounds %struct.RayFace, ptr %388, i64 0, i32 1
  tail call void @mul_m4_v3(ptr noundef nonnull %386, ptr noundef nonnull %431) #9
  %432 = getelementptr inbounds %struct.RayFace, ptr %388, i64 0, i32 2
  tail call void @mul_m4_v3(ptr noundef nonnull %386, ptr noundef nonnull %432) #9
  %433 = getelementptr inbounds %struct.RayFace, ptr %388, i64 0, i32 4
  %434 = load i32, ptr %433, align 4, !tbaa !104
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %430
  %437 = getelementptr inbounds %struct.RayFace, ptr %388, i64 0, i32 3
  tail call void @mul_m4_v3(ptr noundef nonnull %386, ptr noundef nonnull %437) #9
  br label %438

438:                                              ; preds = %436, %430, %425
  %439 = ptrtoint ptr %388 to i64
  %440 = or i64 %439, 1
  %441 = inttoptr i64 %440 to ptr
  tail call void @RE_rayobject_add(ptr noundef %213, ptr noundef nonnull %441) #9
  %442 = getelementptr inbounds %struct.RayFace, ptr %388, i64 1
  br label %443

443:                                              ; preds = %406, %412, %438, %422
  %444 = phi ptr [ %424, %422 ], [ %389, %438 ], [ %389, %412 ], [ %389, %406 ]
  %445 = phi ptr [ %388, %422 ], [ %442, %438 ], [ %388, %412 ], [ %388, %406 ]
  %446 = add nuw nsw i32 %390, 1
  %447 = load i32, ptr %381, align 4, !tbaa !68
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %387, label %449, !llvm.loop !106

449:                                              ; preds = %298, %443, %380, %260, %264, %377
  %450 = phi ptr [ %255, %377 ], [ %255, %264 ], [ %255, %260 ], [ %255, %380 ], [ %444, %443 ], [ %255, %298 ]
  %451 = phi ptr [ %254, %377 ], [ %254, %264 ], [ %254, %260 ], [ %254, %380 ], [ %445, %443 ], [ %254, %298 ]
  %452 = load ptr, ptr %253, align 8, !tbaa !57
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %252, !llvm.loop !107

454:                                              ; preds = %449, %301, %377, %240
  %455 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %456 = load ptr, ptr %455, align 8, !tbaa !91
  %457 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %458 = load ptr, ptr %457, align 8, !tbaa !92
  %459 = tail call i32 %456(ptr noundef %458) #9
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  store ptr @.str.12, ptr %6, align 8, !tbaa !95
  %462 = load ptr, ptr %7, align 8, !tbaa !96
  %463 = load ptr, ptr %9, align 8, !tbaa !97
  tail call void %462(ptr noundef %463, ptr noundef nonnull %5) #9
  tail call void @RE_rayobject_done(ptr noundef %213) #9
  br label %464

464:                                              ; preds = %188, %454, %461
  %465 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %466 = load ptr, ptr %465, align 8, !tbaa !91
  %467 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %468 = load ptr, ptr %467, align 8, !tbaa !92
  %469 = tail call i32 %466(ptr noundef %468) #9
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %464
  tail call void @freeraytree(ptr noundef %0)
  br label %507

472:                                              ; preds = %464
  %473 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %473, align 4, !tbaa !108
  %474 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float 0x46293E5940000000, ptr %474, align 4, !tbaa !108
  store float 0x46293E5940000000, ptr %2, align 4, !tbaa !108
  %475 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %475, align 4, !tbaa !108
  %476 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %476, align 4, !tbaa !108
  store float 0xC6293E5940000000, ptr %3, align 4, !tbaa !108
  %477 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %478 = load ptr, ptr %477, align 8, !tbaa !34
  call void @RE_rayobject_merge_bb(ptr noundef %478, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  %479 = load float, ptr %2, align 4, !tbaa !108
  %480 = load float, ptr %3, align 4, !tbaa !108
  %481 = fcmp ogt float %479, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %472
  store float 0.000000e+00, ptr %2, align 4, !tbaa !108
  store float 0.000000e+00, ptr %474, align 4, !tbaa !108
  store float 0.000000e+00, ptr %473, align 4, !tbaa !108
  store float 0.000000e+00, ptr %3, align 4, !tbaa !108
  store float 0.000000e+00, ptr %476, align 4, !tbaa !108
  store float 0.000000e+00, ptr %475, align 4, !tbaa !108
  br label %483

483:                                              ; preds = %482, %472
  br label %484

484:                                              ; preds = %483, %484
  %485 = phi i64 [ %494, %484 ], [ 0, %483 ]
  %486 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %485
  %487 = load float, ptr %486, align 4, !tbaa !108
  %488 = fadd float %487, 0x3F847AE140000000
  store float %488, ptr %486, align 4, !tbaa !108
  %489 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %485
  %490 = load float, ptr %489, align 4, !tbaa !108
  %491 = fadd float %490, 0x3F847AE140000000
  store float %491, ptr %489, align 4, !tbaa !108
  %492 = fsub float %491, %488
  %493 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %485
  store float %492, ptr %493, align 4, !tbaa !108
  %494 = add nuw nsw i64 %485, 1
  %495 = icmp eq i64 %494, 3
  br i1 %495, label %496, label %484, !llvm.loop !109

496:                                              ; preds = %484
  %497 = load float, ptr %4, align 4, !tbaa !108
  %498 = getelementptr inbounds float, ptr %4, i64 1
  %499 = load float, ptr %498, align 4, !tbaa !108
  %500 = fmul float %499, %499
  %501 = call float @llvm.fmuladd.f32(float %497, float %497, float %500)
  %502 = getelementptr inbounds float, ptr %4, i64 2
  %503 = load float, ptr %502, align 4, !tbaa !108
  %504 = call float @llvm.fmuladd.f32(float %503, float %503, float %501)
  %505 = call float @sqrtf(float noundef %504) #9
  %506 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 55
  store float %505, ptr %506, align 8, !tbaa !110
  br label %507

507:                                              ; preds = %496, %471
  %508 = phi ptr [ @.str.5, %496 ], [ @.str.4, %471 ]
  store ptr %508, ptr %6, align 8, !tbaa !95
  %509 = load ptr, ptr %7, align 8, !tbaa !96
  %510 = load ptr, ptr %9, align 8, !tbaa !97
  call void %509(ptr noundef %510, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret void
}

declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shade_ray(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 15, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %12 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !108
  store float %13, ptr %11, align 4, !tbaa !108
  %14 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !108
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 1
  store float %15, ptr %16, align 4, !tbaa !108
  %17 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !108
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 2
  store float %18, ptr %19, align 4, !tbaa !108
  %20 = load float, ptr %0, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !115
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %13, float %20)
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  store float %23, ptr %24, align 8, !tbaa !108
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !108
  %27 = load float, ptr %21, align 8, !tbaa !115
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %15, float %26)
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  store float %28, ptr %29, align 4, !tbaa !108
  %30 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !108
  %32 = load float, ptr %21, align 8, !tbaa !115
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %18, float %31)
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  store float %33, ptr %34, align 8, !tbaa !108
  %35 = fmul float %15, %15
  %36 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %36)
  %38 = fcmp ogt float %37, 0x38AA95A5C0000000
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = tail call float @sqrtf(float noundef %37) #9
  %41 = fdiv float 1.000000e+00, %40
  %42 = load float, ptr %11, align 4, !tbaa !108
  %43 = fmul float %42, %41
  store float %43, ptr %11, align 4, !tbaa !108
  %44 = load float, ptr %16, align 4, !tbaa !108
  %45 = fmul float %41, %44
  store float %45, ptr %16, align 4, !tbaa !108
  %46 = load float, ptr %19, align 4, !tbaa !108
  %47 = fmul float %41, %46
  br label %49

48:                                               ; preds = %3
  store float 0.000000e+00, ptr %11, align 4, !tbaa !108
  store float 0.000000e+00, ptr %16, align 4, !tbaa !108
  br label %49

49:                                               ; preds = %39, %48
  %50 = phi float [ 0.000000e+00, %48 ], [ %47, %39 ]
  store float %50, ptr %19, align 4, !tbaa !108
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  store ptr %8, ptr %51, align 8, !tbaa !116
  %52 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %8, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !118
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  store ptr %10, ptr %55, align 8, !tbaa !119
  %56 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  store ptr %57, ptr %1, align 8, !tbaa !120
  tail call void @shade_input_init_material(ptr noundef nonnull %1) #9
  %58 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 14
  %59 = load i32, ptr %58, align 8, !tbaa !121
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %1, ptr noundef %8, ptr noundef %10, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #9
  br label %63

62:                                               ; preds = %49
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %1, ptr noundef %8, ptr noundef %10, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #9
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 12
  %65 = load float, ptr %64, align 8, !tbaa !122
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 23
  store float %65, ptr %66, align 8, !tbaa !123
  %67 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 13
  %68 = load float, ptr %67, align 4, !tbaa !124
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 24
  store float %68, ptr %69, align 4, !tbaa !125
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 28
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 27
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 26
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 25
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  %75 = load i16, ptr %74, align 8, !tbaa !126
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %190, label %77

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 6
  %79 = load float, ptr %78, align 4, !tbaa !108
  %80 = tail call float @llvm.fabs.f32(float %79)
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 6, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !108
  %83 = tail call float @llvm.fabs.f32(float %82)
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 6, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !108
  %86 = tail call float @llvm.fabs.f32(float %85)
  %87 = fcmp ult float %86, %80
  %88 = fcmp ult float %86, %83
  %89 = select i1 %87, i1 true, i1 %88
  %90 = fcmp ult float %83, %80
  %91 = fcmp ult float %83, %86
  %92 = or i1 %90, %91
  %93 = select i1 %89, i1 %92, i1 false
  %94 = select i1 %89, i32 2, i32 1
  %95 = load ptr, ptr %51, align 8, !tbaa !116
  %96 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %95, i64 0, i32 11
  %97 = load i16, ptr %96, align 8, !tbaa !93
  %98 = and i16 %97, 3
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %101 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %95, i64 0, i32 10
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !127
  call void @mul_v3_m3v3(ptr noundef nonnull %4, ptr noundef nonnull %101, ptr noundef %103) #9
  %104 = load ptr, ptr %51, align 8, !tbaa !116
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %104, i64 0, i32 10
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !128
  call void @mul_v3_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %105, ptr noundef %107) #9
  %108 = load ptr, ptr %51, align 8, !tbaa !116
  %109 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %108, i64 0, i32 10
  %110 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !129
  call void @mul_v3_m3v3(ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef %111) #9
  %112 = zext i1 %93 to i64
  %113 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !108
  %115 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %112
  %116 = load float, ptr %115, align 4, !tbaa !108
  %117 = fsub float %114, %116
  %118 = zext nneg i32 %94 to i64
  %119 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !108
  %121 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %118
  %122 = load float, ptr %121, align 4, !tbaa !108
  %123 = fsub float %120, %122
  %124 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %112
  %125 = load float, ptr %124, align 4, !tbaa !108
  %126 = fsub float %114, %125
  %127 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %118
  %128 = load float, ptr %127, align 4, !tbaa !108
  %129 = fsub float %120, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %155

130:                                              ; preds = %77
  %131 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !127
  %133 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !128
  %135 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 10
  %136 = load ptr, ptr %135, align 8, !tbaa !129
  %137 = zext i1 %93 to i64
  %138 = getelementptr inbounds float, ptr %136, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !108
  %140 = getelementptr inbounds float, ptr %132, i64 %137
  %141 = load float, ptr %140, align 4, !tbaa !108
  %142 = fsub float %139, %141
  %143 = zext nneg i32 %94 to i64
  %144 = getelementptr inbounds float, ptr %136, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !108
  %146 = getelementptr inbounds float, ptr %132, i64 %143
  %147 = load float, ptr %146, align 4, !tbaa !108
  %148 = fsub float %145, %147
  %149 = getelementptr inbounds float, ptr %134, i64 %137
  %150 = load float, ptr %149, align 4, !tbaa !108
  %151 = fsub float %139, %150
  %152 = getelementptr inbounds float, ptr %134, i64 %143
  %153 = load float, ptr %152, align 4, !tbaa !108
  %154 = fsub float %145, %153
  br label %155

155:                                              ; preds = %100, %130
  %156 = phi float [ %129, %100 ], [ %154, %130 ]
  %157 = phi float [ %123, %100 ], [ %148, %130 ]
  %158 = phi float [ %126, %100 ], [ %151, %130 ]
  %159 = phi float [ %117, %100 ], [ %142, %130 ]
  %160 = fneg float %158
  %161 = fmul float %157, %160
  %162 = call float @llvm.fmuladd.f32(float %159, float %156, float %161)
  %163 = fdiv float 1.000000e+00, %162
  %164 = fmul float %159, %163
  %165 = fmul float %157, %163
  %166 = fmul float %158, %163
  %167 = fmul float %156, %163
  %168 = zext i1 %93 to i64
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 %168
  %170 = load float, ptr %169, align 4, !tbaa !108
  %171 = zext nneg i32 %94 to i64
  %172 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !108
  %174 = fneg float %173
  %175 = fmul float %166, %174
  %176 = call float @llvm.fmuladd.f32(float %170, float %167, float %175)
  store float %176, ptr %73, align 8, !tbaa !130
  %177 = fneg float %170
  %178 = fmul float %165, %177
  %179 = call float @llvm.fmuladd.f32(float %173, float %164, float %178)
  store float %179, ptr %72, align 4, !tbaa !131
  %180 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 %168
  %181 = load float, ptr %180, align 4, !tbaa !108
  %182 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 %171
  %183 = load float, ptr %182, align 4, !tbaa !108
  %184 = fneg float %183
  %185 = fmul float %166, %184
  %186 = call float @llvm.fmuladd.f32(float %181, float %167, float %185)
  store float %186, ptr %71, align 8, !tbaa !132
  %187 = fneg float %181
  %188 = fmul float %165, %187
  %189 = call float @llvm.fmuladd.f32(float %183, float %164, float %188)
  store float %189, ptr %70, align 4, !tbaa !133
  br label %190

190:                                              ; preds = %155, %63
  call void @shade_input_set_normals(ptr noundef nonnull %1) #9
  call void @shade_input_set_shade_texco(ptr noundef nonnull %1) #9
  %191 = load ptr, ptr %1, align 8, !tbaa !120
  %192 = getelementptr inbounds %struct.Material, ptr %191, i64 0, i32 2
  %193 = load i16, ptr %192, align 8, !tbaa !76
  %194 = icmp eq i16 %193, 2
  %195 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !134
  br i1 %194, label %197, label %200

197:                                              ; preds = %190
  switch i32 %196, label %199 [
    i32 0, label %198
    i32 2, label %198
  ]

198:                                              ; preds = %197, %197
  call void @shade_volume_shadow(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %0) #9
  br label %251

199:                                              ; preds = %197
  call void @shade_volume_outside(ptr noundef nonnull %1, ptr noundef %2) #9
  br label %251

200:                                              ; preds = %190
  %201 = icmp eq i32 %196, 2
  br i1 %201, label %202, label %218

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 116
  %204 = load i16, ptr %203, align 2, !tbaa !135
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.Material, ptr %191, i64 0, i32 103
  %208 = load ptr, ptr %207, align 8, !tbaa !136
  %209 = icmp eq ptr %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.Material, ptr %191, i64 0, i32 77
  %212 = load i8, ptr %211, align 1, !tbaa !137
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %208, ptr noundef nonnull %1, ptr noundef %2) #9
  %216 = load ptr, ptr %56, align 8, !tbaa !75
  store ptr %216, ptr %1, align 8, !tbaa !120
  br label %251

217:                                              ; preds = %210, %206, %202
  call void @shade_color(ptr noundef nonnull %1, ptr noundef %2) #9
  br label %251

218:                                              ; preds = %200
  %219 = getelementptr inbounds %struct.Material, ptr %191, i64 0, i32 103
  %220 = load ptr, ptr %219, align 8, !tbaa !136
  %221 = icmp eq ptr %220, null
  br i1 %221, label %229, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.Material, ptr %191, i64 0, i32 77
  %224 = load i8, ptr %223, align 1, !tbaa !137
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %220, ptr noundef nonnull %1, ptr noundef %2) #9
  %228 = load ptr, ptr %56, align 8, !tbaa !75
  store ptr %228, ptr %1, align 8, !tbaa !120
  br label %230

229:                                              ; preds = %222, %218
  call void @shade_material_loop(ptr noundef nonnull %1, ptr noundef %2) #9
  br label %230

230:                                              ; preds = %229, %226
  %231 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6
  %232 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %233 = load float, ptr %2, align 4, !tbaa !108
  %234 = load float, ptr %232, align 4, !tbaa !108
  %235 = fsub float %233, %234
  store float %235, ptr %231, align 4, !tbaa !108
  %236 = getelementptr inbounds float, ptr %2, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !108
  %238 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !108
  %240 = fsub float %237, %239
  %241 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6, i64 1
  store float %240, ptr %241, align 4, !tbaa !108
  %242 = getelementptr inbounds float, ptr %2, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !108
  %244 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !108
  %246 = fsub float %243, %245
  %247 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6, i64 2
  store float %246, ptr %247, align 4, !tbaa !108
  %248 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 7
  store float %235, ptr %248, align 4, !tbaa !108
  %249 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 7, i64 1
  store float %240, ptr %249, align 4, !tbaa !108
  %250 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 7, i64 2
  store float %246, ptr %250, align 4, !tbaa !108
  br label %251

251:                                              ; preds = %230, %217, %214, %198, %199
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #3

declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #3

declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #3

declare void @shade_volume_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_volume_outside(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_color(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_jitter_plane(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 49
  %3 = load i16, ptr %2, align 8, !tbaa !138
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %228

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %10 = shl nsw i32 %4, 2
  %11 = shl nsw i32 %4, 3
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.6) #9
  store ptr %14, ptr %5, align 8, !tbaa !140
  %15 = icmp sgt i16 %3, 1
  br i1 %15, label %16, label %125

16:                                               ; preds = %8
  %17 = tail call ptr @BLI_rng_new_srandom(i32 noundef %4) #9
  %18 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %19 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  br label %25

20:                                               ; preds = %25
  %21 = load ptr, ptr %5, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %23 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  %24 = sitofp i16 %3 to float
  br label %43

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %14, %16 ], [ %38, %25 ]
  %27 = phi i32 [ 0, %16 ], [ %37, %25 ]
  %28 = tail call float @BLI_rng_get_float(ptr noundef %17) #9
  %29 = fadd float %28, -5.000000e-01
  %30 = load float, ptr %18, align 8, !tbaa !141
  %31 = fmul float %29, %30
  store float %31, ptr %26, align 4, !tbaa !108
  %32 = tail call float @BLI_rng_get_float(ptr noundef %17) #9
  %33 = fadd float %32, -5.000000e-01
  %34 = load float, ptr %19, align 4, !tbaa !142
  %35 = fmul float %33, %34
  %36 = getelementptr inbounds float, ptr %26, i64 1
  store float %35, ptr %36, align 4, !tbaa !108
  %37 = add nuw nsw i32 %27, 1
  %38 = getelementptr inbounds float, ptr %26, i64 2
  %39 = icmp eq i32 %37, %4
  br i1 %39, label %20, label %25, !llvm.loop !143

40:                                               ; preds = %100
  %41 = add nsw i32 %44, -1
  %42 = icmp eq i32 %44, 0
  br i1 %42, label %124, label %43, !llvm.loop !144

43:                                               ; preds = %20, %40
  %44 = phi i32 [ 11, %20 ], [ %41, %40 ]
  br label %45

45:                                               ; preds = %43, %100
  %46 = phi ptr [ %122, %100 ], [ %21, %43 ]
  %47 = phi i32 [ %121, %100 ], [ %4, %43 ]
  %48 = load float, ptr %22, align 8, !tbaa !141
  %49 = load float, ptr %23, align 4, !tbaa !142
  %50 = fcmp olt float %48, %49
  %51 = select i1 %50, float %48, float %49
  %52 = fmul float %51, %51
  %53 = getelementptr inbounds float, ptr %46, i64 1
  %54 = load float, ptr %46, align 4, !tbaa !108
  %55 = load float, ptr %53, align 4, !tbaa !108
  br label %56

56:                                               ; preds = %45, %97
  %57 = phi i32 [ -1, %45 ], [ %98, %97 ]
  %58 = phi float [ 0.000000e+00, %45 ], [ %90, %97 ]
  %59 = phi float [ 0.000000e+00, %45 ], [ %88, %97 ]
  %60 = sitofp i32 %57 to float
  %61 = fmul float %49, %60
  br label %62

62:                                               ; preds = %56, %94
  %63 = phi i32 [ -1, %56 ], [ %95, %94 ]
  %64 = phi float [ %58, %56 ], [ %90, %94 ]
  %65 = phi float [ %59, %56 ], [ %88, %94 ]
  %66 = sitofp i32 %63 to float
  %67 = fmul float %48, %66
  br label %68

68:                                               ; preds = %62, %68
  %69 = phi i32 [ 0, %62 ], [ %91, %68 ]
  %70 = phi float [ %64, %62 ], [ %90, %68 ]
  %71 = phi float [ %65, %62 ], [ %88, %68 ]
  %72 = phi ptr [ %21, %62 ], [ %92, %68 ]
  %73 = load float, ptr %72, align 4, !tbaa !108
  %74 = fsub float %54, %73
  %75 = fsub float %74, %67
  %76 = getelementptr inbounds float, ptr %72, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !108
  %78 = fsub float %55, %77
  %79 = fsub float %78, %61
  %80 = fmul float %79, %79
  %81 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %80)
  %82 = fcmp olt float %81, %52
  %83 = fcmp ogt float %81, 0.000000e+00
  %84 = and i1 %82, %83
  %85 = fdiv float %75, %81
  %86 = fdiv float %79, %81
  %87 = select i1 %84, float %86, float -0.000000e+00
  %88 = fadd float %71, %87
  %89 = select i1 %84, float %85, float -0.000000e+00
  %90 = fadd float %70, %89
  %91 = add nuw nsw i32 %69, 1
  %92 = getelementptr inbounds float, ptr %72, i64 2
  %93 = icmp eq i32 %91, %4
  br i1 %93, label %94, label %68, !llvm.loop !145

94:                                               ; preds = %68
  %95 = add nsw i32 %63, 1
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %62, !llvm.loop !146

97:                                               ; preds = %94
  %98 = add nsw i32 %57, 1
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %56, !llvm.loop !147

100:                                              ; preds = %97
  %101 = fmul float %52, 0x3FB99999A0000000
  %102 = fmul float %101, %90
  %103 = fdiv float %102, %24
  %104 = load float, ptr %46, align 4, !tbaa !108
  %105 = fadd float %103, %104
  store float %105, ptr %46, align 4, !tbaa !108
  %106 = fmul float %101, %88
  %107 = fdiv float %106, %24
  %108 = getelementptr inbounds float, ptr %46, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !108
  %110 = fadd float %107, %109
  store float %110, ptr %108, align 4, !tbaa !108
  %111 = fdiv float %105, %48
  %112 = fadd float %111, 5.000000e-01
  %113 = tail call float @llvm.floor.f32(float %112)
  %114 = fneg float %48
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %113, float %105)
  store float %115, ptr %46, align 4, !tbaa !108
  %116 = fdiv float %110, %49
  %117 = fadd float %116, 5.000000e-01
  %118 = tail call float @llvm.floor.f32(float %117)
  %119 = fneg float %49
  %120 = tail call float @llvm.fmuladd.f32(float %119, float %118, float %110)
  store float %120, ptr %108, align 4, !tbaa !108
  %121 = add nsw i32 %47, -1
  %122 = getelementptr inbounds float, ptr %46, i64 2
  %123 = icmp sgt i32 %47, 1
  br i1 %123, label %45, label %40, !llvm.loop !148

124:                                              ; preds = %40
  tail call void @BLI_rng_free(ptr noundef %17) #9
  br label %125

125:                                              ; preds = %124, %8
  %126 = load ptr, ptr %5, align 8, !tbaa !140
  %127 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %128 = load float, ptr %127, align 8, !tbaa !141
  %129 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  %130 = load float, ptr %129, align 4, !tbaa !142
  %131 = fmul float %128, 5.000000e-01
  %132 = fmul float %130, 0.000000e+00
  %133 = fmul float %130, 5.000000e-01
  %134 = icmp sgt i16 %3, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %125
  %136 = shl nuw nsw i32 %4, 1
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %126, i64 %137
  br label %139

139:                                              ; preds = %135, %157
  %140 = phi i32 [ %158, %157 ], [ %4, %135 ]
  %141 = phi ptr [ %159, %157 ], [ %126, %135 ]
  %142 = phi ptr [ %160, %157 ], [ %138, %135 ]
  %143 = load float, ptr %141, align 4, !tbaa !108
  %144 = fadd float %131, %143
  store float %144, ptr %142, align 4, !tbaa !108
  %145 = getelementptr inbounds float, ptr %141, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !108
  %147 = fadd float %132, %146
  %148 = getelementptr inbounds float, ptr %142, i64 1
  store float %147, ptr %148, align 4, !tbaa !108
  %149 = fcmp ogt float %144, %131
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = fsub float %144, %128
  store float %151, ptr %142, align 4, !tbaa !108
  br label %152

152:                                              ; preds = %150, %139
  %153 = load float, ptr %148, align 4, !tbaa !108
  %154 = fcmp ogt float %153, %133
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = fsub float %153, %130
  store float %156, ptr %148, align 4, !tbaa !108
  br label %157

157:                                              ; preds = %155, %152
  %158 = add nsw i32 %140, -1
  %159 = getelementptr inbounds float, ptr %141, i64 2
  %160 = getelementptr inbounds float, ptr %142, i64 2
  %161 = icmp sgt i32 %140, 1
  br i1 %161, label %139, label %162, !llvm.loop !149

162:                                              ; preds = %157, %125
  %163 = load float, ptr %127, align 8, !tbaa !141
  %164 = load float, ptr %129, align 4, !tbaa !142
  %165 = fmul float %163, 5.000000e-01
  %166 = fmul float %164, 5.000000e-01
  %167 = icmp sgt i16 %3, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %162
  %169 = zext nneg i32 %10 to i64
  %170 = getelementptr inbounds float, ptr %126, i64 %169
  br label %171

171:                                              ; preds = %168, %189
  %172 = phi i32 [ %190, %189 ], [ %4, %168 ]
  %173 = phi ptr [ %191, %189 ], [ %126, %168 ]
  %174 = phi ptr [ %192, %189 ], [ %170, %168 ]
  %175 = load float, ptr %173, align 4, !tbaa !108
  %176 = fadd float %165, %175
  store float %176, ptr %174, align 4, !tbaa !108
  %177 = getelementptr inbounds float, ptr %173, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !108
  %179 = fadd float %166, %178
  %180 = getelementptr inbounds float, ptr %174, i64 1
  store float %179, ptr %180, align 4, !tbaa !108
  %181 = fcmp ogt float %176, %165
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  %183 = fsub float %176, %163
  store float %183, ptr %174, align 4, !tbaa !108
  br label %184

184:                                              ; preds = %182, %171
  %185 = load float, ptr %180, align 4, !tbaa !108
  %186 = fcmp ogt float %185, %166
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = fsub float %185, %164
  store float %188, ptr %180, align 4, !tbaa !108
  br label %189

189:                                              ; preds = %187, %184
  %190 = add nsw i32 %172, -1
  %191 = getelementptr inbounds float, ptr %173, i64 2
  %192 = getelementptr inbounds float, ptr %174, i64 2
  %193 = icmp sgt i32 %172, 1
  br i1 %193, label %171, label %194, !llvm.loop !149

194:                                              ; preds = %189, %162
  %195 = load float, ptr %127, align 8, !tbaa !141
  %196 = load float, ptr %129, align 4, !tbaa !142
  %197 = fmul float %195, 0.000000e+00
  %198 = fmul float %196, 5.000000e-01
  %199 = fmul float %195, 5.000000e-01
  %200 = icmp sgt i16 %3, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %194
  %202 = mul nuw nsw i32 %4, 6
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds float, ptr %126, i64 %203
  br label %205

205:                                              ; preds = %201, %223
  %206 = phi i32 [ %224, %223 ], [ %4, %201 ]
  %207 = phi ptr [ %225, %223 ], [ %126, %201 ]
  %208 = phi ptr [ %226, %223 ], [ %204, %201 ]
  %209 = load float, ptr %207, align 4, !tbaa !108
  %210 = fadd float %197, %209
  store float %210, ptr %208, align 4, !tbaa !108
  %211 = getelementptr inbounds float, ptr %207, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !108
  %213 = fadd float %198, %212
  %214 = getelementptr inbounds float, ptr %208, i64 1
  store float %213, ptr %214, align 4, !tbaa !108
  %215 = fcmp ogt float %210, %199
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = fsub float %210, %195
  store float %217, ptr %208, align 4, !tbaa !108
  br label %218

218:                                              ; preds = %216, %205
  %219 = load float, ptr %214, align 4, !tbaa !108
  %220 = fcmp ogt float %219, %198
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = fsub float %219, %196
  store float %222, ptr %214, align 4, !tbaa !108
  br label %223

223:                                              ; preds = %221, %218
  %224 = add nsw i32 %206, -1
  %225 = getelementptr inbounds float, ptr %207, i64 2
  %226 = getelementptr inbounds float, ptr %208, i64 2
  %227 = icmp sgt i32 %206, 1
  br i1 %227, label %205, label %228, !llvm.loop !149

228:                                              ; preds = %223, %194, %1
  ret void
}

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #3

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #3

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_render_qmcsampler(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %3 = tail call ptr %2(i64 noundef 16, ptr noundef nonnull @.str.7) #9
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  store ptr %3, ptr %4, align 8, !tbaa !150
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_render_qmcsampler(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !151
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.QMCSampler, ptr %9, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  tail call void %11(ptr noundef %13) #9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %14(ptr noundef nonnull %9) #9
  %15 = icmp eq ptr %10, null
  br i1 %15, label %16, label %8, !llvm.loop !155

16:                                               ; preds = %8, %5
  %17 = load ptr, ptr %2, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %18(ptr noundef nonnull %17) #9
  store ptr null, ptr %2, align 8, !tbaa !150
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ray_trace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = and i32 %13, 196608
  %15 = icmp eq i32 %14, 196608
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !157
  %19 = fcmp une float %18, 1.000000e+00
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %22 = load i32, ptr %21, align 8, !tbaa !159
  %23 = load ptr, ptr %0, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.Material, ptr %23, i64 0, i32 37
  %25 = load i16, ptr %24, align 2, !tbaa !160
  %26 = sext i16 %25 to i32
  %27 = icmp sle i32 %22, %26
  br label %28

28:                                               ; preds = %20, %16, %2
  %29 = phi i1 [ false, %16 ], [ false, %2 ], [ %27, %20 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !120
  %31 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 51
  %32 = load i32, ptr %31, align 4, !tbaa !161
  %33 = and i32 %32, 262144
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %37 = load float, ptr %36, align 4, !tbaa !162
  %38 = fcmp une float %37, 0.000000e+00
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %41 = load i32, ptr %40, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 36
  %43 = load i16, ptr %42, align 4, !tbaa !163
  %44 = sext i16 %43 to i32
  %45 = icmp sle i32 %41, %44
  br label %46

46:                                               ; preds = %39, %35, %28
  %47 = phi i1 [ false, %35 ], [ false, %28 ], [ %45, %39 ]
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %49 = load i32, ptr %48, align 4, !tbaa !164
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %54 = load float, ptr %1, align 4, !tbaa !108
  %55 = load float, ptr %53, align 4, !tbaa !108
  %56 = fsub float %54, %55
  %57 = getelementptr inbounds float, ptr %1, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !108
  %59 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !108
  %61 = fsub float %58, %60
  %62 = getelementptr inbounds float, ptr %1, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !108
  %64 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !108
  %66 = fsub float %63, %65
  br label %73

67:                                               ; preds = %46
  %68 = load float, ptr %1, align 4, !tbaa !108
  %69 = getelementptr inbounds float, ptr %1, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !108
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !108
  br label %73

73:                                               ; preds = %67, %52
  %74 = phi float [ %72, %67 ], [ %66, %52 ]
  %75 = phi float [ %70, %67 ], [ %61, %52 ]
  %76 = phi float [ %68, %67 ], [ %56, %52 ]
  br i1 %29, label %77, label %470

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %78 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 42
  %79 = load float, ptr %78, align 8, !tbaa !165
  %80 = fsub float 1.000000e+00, %79
  %81 = tail call float @powf(float noundef %80, float noundef 3.000000e+00) #9
  %82 = load ptr, ptr %0, align 8, !tbaa !120
  %83 = getelementptr inbounds %struct.Material, ptr %82, i64 0, i32 46
  %84 = load float, ptr %83, align 4, !tbaa !166
  %85 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %86 = load float, ptr %85, align 4, !tbaa !157
  %87 = fcmp ogt float %81, 0.000000e+00
  br i1 %87, label %88, label %100

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.Material, ptr %82, i64 0, i32 44
  %90 = load i16, ptr %89, align 2, !tbaa !167
  %91 = fcmp une float %84, 0.000000e+00
  %92 = select i1 %91, i32 1, i32 2
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %94 = load i16, ptr %93, align 2, !tbaa !168
  %95 = sext i16 %94 to i32
  %96 = sext i16 %90 to i32
  %97 = tail call fastcc ptr @get_thread_qmcsampler(i32 noundef %95, i32 noundef %92, i32 noundef %96)
  %98 = load i16, ptr %93, align 2, !tbaa !168
  %99 = sext i16 %98 to i32
  tail call fastcc void @QMC_initPixel(ptr noundef %97, i32 noundef %99)
  br label %100

100:                                              ; preds = %88, %77
  %101 = phi i16 [ %90, %88 ], [ 1, %77 ]
  %102 = phi ptr [ %97, %88 ], [ null, %77 ]
  %103 = icmp sgt i16 %101, 0
  br i1 %103, label %104, label %399

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 46
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %109 = getelementptr inbounds float, ptr %9, i64 1
  %110 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %111 = getelementptr inbounds float, ptr %9, i64 2
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %116 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %122 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %124 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %125 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %126 = getelementptr inbounds float, ptr %10, i64 1
  %127 = getelementptr inbounds float, ptr %10, i64 2
  %128 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 2
  %129 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 5
  %130 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %131 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 5
  %132 = fpext float %81 to double
  %133 = getelementptr inbounds float, ptr %7, i64 1
  %134 = getelementptr inbounds float, ptr %7, i64 2
  %135 = getelementptr inbounds float, ptr %8, i64 1
  %136 = getelementptr inbounds float, ptr %8, i64 2
  %137 = getelementptr inbounds float, ptr %10, i64 1
  %138 = getelementptr inbounds float, ptr %10, i64 2
  %139 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %140 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %141 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %142 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %143 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %144 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %145 = fcmp olt float %84, 1.000000e+00
  %146 = fmul float %84, 5.000000e-01
  br label %147

147:                                              ; preds = %104, %392
  %148 = phi i64 [ 0, %104 ], [ %356, %392 ]
  %149 = phi i16 [ %101, %104 ], [ %393, %392 ]
  %150 = phi i32 [ 0, %104 ], [ %253, %392 ]
  %151 = phi float [ 0.000000e+00, %104 ], [ %346, %392 ]
  %152 = phi float [ 0.000000e+00, %104 ], [ %348, %392 ]
  %153 = phi float [ 0.000000e+00, %104 ], [ %350, %392 ]
  %154 = phi float [ %86, %104 ], [ %352, %392 ]
  %155 = phi float [ 0.000000e+00, %104 ], [ %355, %392 ]
  %156 = phi float [ 0.000000e+00, %104 ], [ %353, %392 ]
  %157 = phi float [ 0.000000e+00, %104 ], [ %354, %392 ]
  %158 = load float, ptr %107, align 4, !tbaa !169
  %159 = load float, ptr %106, align 4, !tbaa !108
  store float %159, ptr %9, align 4, !tbaa !108
  %160 = load float, ptr %108, align 4, !tbaa !108
  store float %160, ptr %109, align 4, !tbaa !108
  %161 = load float, ptr %110, align 4, !tbaa !108
  store float %161, ptr %111, align 4, !tbaa !108
  %162 = load float, ptr %105, align 4, !tbaa !108
  %163 = load float, ptr %112, align 4, !tbaa !108
  %164 = fmul float %160, %163
  %165 = call float @llvm.fmuladd.f32(float %159, float %162, float %164)
  %166 = load float, ptr %113, align 4, !tbaa !108
  %167 = call float @llvm.fmuladd.f32(float %161, float %166, float %165)
  %168 = fcmp ogt float %167, 0.000000e+00
  br i1 %168, label %169, label %180

169:                                              ; preds = %147
  %170 = fdiv float 1.000000e+00, %158
  %171 = fneg float %167
  %172 = call float @llvm.fmuladd.f32(float %171, float %167, float 1.000000e+00)
  %173 = fneg float %172
  %174 = fmul float %170, %173
  %175 = call float @llvm.fmuladd.f32(float %174, float %170, float 1.000000e+00)
  %176 = fcmp ugt float %175, 0.000000e+00
  br i1 %176, label %177, label %207

177:                                              ; preds = %169
  %178 = call float @sqrtf(float noundef %175) #9
  %179 = call float @llvm.fmuladd.f32(float %171, float %170, float %178)
  br label %191

180:                                              ; preds = %147
  %181 = fneg float %167
  %182 = call float @llvm.fmuladd.f32(float %181, float %167, float 1.000000e+00)
  %183 = fneg float %182
  %184 = fmul float %158, %183
  %185 = call float @llvm.fmuladd.f32(float %184, float %158, float 1.000000e+00)
  %186 = fcmp ugt float %185, 0.000000e+00
  br i1 %186, label %187, label %207

187:                                              ; preds = %180
  %188 = call float @sqrtf(float noundef %185) #9
  %189 = fneg float %188
  %190 = call float @llvm.fmuladd.f32(float %181, float %158, float %189)
  br label %191

191:                                              ; preds = %187, %177
  %192 = phi float [ %170, %177 ], [ %158, %187 ]
  %193 = phi float [ %179, %177 ], [ %190, %187 ]
  %194 = load float, ptr %106, align 4, !tbaa !108
  %195 = load float, ptr %105, align 4, !tbaa !108
  %196 = fmul float %193, %195
  %197 = call float @llvm.fmuladd.f32(float %192, float %194, float %196)
  store float %197, ptr %9, align 4, !tbaa !108
  %198 = load float, ptr %108, align 4, !tbaa !108
  %199 = load float, ptr %112, align 4, !tbaa !108
  %200 = fmul float %193, %199
  %201 = call float @llvm.fmuladd.f32(float %192, float %198, float %200)
  store float %201, ptr %109, align 4, !tbaa !108
  %202 = load float, ptr %110, align 4, !tbaa !108
  %203 = load float, ptr %113, align 4, !tbaa !108
  %204 = fmul float %193, %203
  %205 = call float @llvm.fmuladd.f32(float %192, float %202, float %204)
  store float %205, ptr %111, align 4, !tbaa !108
  %206 = or i32 %150, 2
  br label %252

207:                                              ; preds = %180, %169
  %208 = load ptr, ptr %114, align 8, !tbaa !119
  %209 = getelementptr inbounds %struct.VlakRen, ptr %208, i64 0, i32 7
  %210 = load i8, ptr %209, align 1, !tbaa !73
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  %213 = load float, ptr %105, align 4, !tbaa !108
  %214 = load float, ptr %106, align 4, !tbaa !108
  br i1 %212, label %240, label %215

215:                                              ; preds = %207
  %216 = load float, ptr %116, align 4, !tbaa !108
  %217 = load float, ptr %117, align 4, !tbaa !108
  %218 = fmul float %216, %217
  %219 = call float @llvm.fmuladd.f32(float %213, float %214, float %218)
  %220 = load float, ptr %118, align 4, !tbaa !108
  %221 = load float, ptr %119, align 4, !tbaa !108
  %222 = call float @llvm.fmuladd.f32(float %220, float %221, float %219)
  %223 = fmul float %222, -2.000000e+00
  %224 = call float @llvm.fmuladd.f32(float %213, float %223, float %214)
  store float %224, ptr %9, align 4, !tbaa !108
  %225 = call float @llvm.fmuladd.f32(float %216, float %223, float %217)
  store float %225, ptr %109, align 4, !tbaa !108
  %226 = call float @llvm.fmuladd.f32(float %220, float %223, float %221)
  store float %226, ptr %111, align 4, !tbaa !108
  %227 = load float, ptr %115, align 4, !tbaa !108
  %228 = load float, ptr %120, align 4, !tbaa !108
  %229 = fmul float %225, %228
  %230 = call float @llvm.fmuladd.f32(float %224, float %227, float %229)
  %231 = load float, ptr %121, align 4, !tbaa !108
  %232 = call float @llvm.fmuladd.f32(float %226, float %231, float %230)
  %233 = fcmp ogt float %232, 0.000000e+00
  br i1 %233, label %234, label %252

234:                                              ; preds = %215
  %235 = fadd float %232, 0x3F847AE140000000
  %236 = fneg float %235
  %237 = call float @llvm.fmuladd.f32(float %236, float %227, float %224)
  store float %237, ptr %9, align 4, !tbaa !108
  %238 = call float @llvm.fmuladd.f32(float %236, float %228, float %225)
  store float %238, ptr %109, align 4, !tbaa !108
  %239 = call float @llvm.fmuladd.f32(float %236, float %231, float %226)
  store float %239, ptr %111, align 4, !tbaa !108
  br label %252

240:                                              ; preds = %207
  %241 = load float, ptr %122, align 4, !tbaa !108
  %242 = load float, ptr %123, align 4, !tbaa !108
  %243 = fmul float %241, %242
  %244 = call float @llvm.fmuladd.f32(float %213, float %214, float %243)
  %245 = load float, ptr %124, align 4, !tbaa !108
  %246 = load float, ptr %125, align 4, !tbaa !108
  %247 = call float @llvm.fmuladd.f32(float %245, float %246, float %244)
  %248 = fmul float %247, -2.000000e+00
  %249 = call float @llvm.fmuladd.f32(float %213, float %248, float %214)
  store float %249, ptr %9, align 4, !tbaa !108
  %250 = call float @llvm.fmuladd.f32(float %241, float %248, float %242)
  store float %250, ptr %109, align 4, !tbaa !108
  %251 = call float @llvm.fmuladd.f32(float %245, float %248, float %246)
  store float %251, ptr %111, align 4, !tbaa !108
  br label %252

252:                                              ; preds = %234, %215, %240, %191
  %253 = phi i32 [ %206, %191 ], [ %150, %240 ], [ %150, %215 ], [ %150, %234 ]
  %254 = phi i16 [ %149, %191 ], [ 1, %240 ], [ 1, %215 ], [ 1, %234 ]
  %255 = icmp sgt i16 %254, 1
  br i1 %255, label %256, label %335

256:                                              ; preds = %252
  %257 = load i32, ptr %128, align 8, !tbaa !170
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %278

259:                                              ; preds = %256
  %260 = load i16, ptr %130, align 2, !tbaa !168
  %261 = load ptr, ptr %131, align 8, !tbaa !154
  %262 = shl nuw nsw i64 %148, 1
  %263 = getelementptr inbounds double, ptr %261, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !171
  %265 = sext i16 %260 to i64
  %266 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 6, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !171
  %268 = fadd double %264, %267
  %269 = call double @fmod(double noundef %268, double noundef 1.000000e+00) #9
  %270 = load ptr, ptr %131, align 8, !tbaa !154
  %271 = or disjoint i64 %262, 1
  %272 = getelementptr inbounds double, ptr %270, i64 %271
  %273 = load double, ptr %272, align 8, !tbaa !171
  %274 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 6, i64 %265, i64 1
  %275 = load double, ptr %274, align 8, !tbaa !171
  %276 = fadd double %273, %275
  %277 = call double @fmod(double noundef %276, double noundef 1.000000e+00) #9
  br label %286

278:                                              ; preds = %256
  %279 = load ptr, ptr %129, align 8, !tbaa !154
  %280 = shl nuw nsw i64 %148, 1
  %281 = getelementptr inbounds double, ptr %279, i64 %280
  %282 = load double, ptr %281, align 8, !tbaa !171
  %283 = or disjoint i64 %280, 1
  %284 = getelementptr inbounds double, ptr %279, i64 %283
  %285 = load double, ptr %284, align 8, !tbaa !171
  br label %286

286:                                              ; preds = %259, %278
  %287 = phi double [ %277, %259 ], [ %285, %278 ]
  %288 = phi double [ %269, %259 ], [ %282, %278 ]
  %289 = fmul double %288, 2.000000e+00
  %290 = fmul double %289, 0x400921FB54442D18
  %291 = fptrunc double %290 to float
  %292 = call double @pow(double noundef %287, double noundef %132) #9
  %293 = fptrunc double %292 to float
  %294 = fneg float %293
  %295 = call float @llvm.fmuladd.f32(float %294, float %293, float 1.000000e+00)
  %296 = call float @sqrtf(float noundef %295) #9
  %297 = call float @cosf(float noundef %291) #9
  %298 = fmul float %296, %297
  %299 = call float @sinf(float noundef %291) #9
  %300 = fmul float %296, %299
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %301 = load float, ptr %7, align 4, !tbaa !108
  %302 = fmul float %298, %301
  store float %302, ptr %7, align 4, !tbaa !108
  %303 = load float, ptr %133, align 4, !tbaa !108
  %304 = fmul float %298, %303
  store float %304, ptr %133, align 4, !tbaa !108
  %305 = load float, ptr %134, align 4, !tbaa !108
  %306 = fmul float %298, %305
  store float %306, ptr %134, align 4, !tbaa !108
  %307 = load float, ptr %8, align 4, !tbaa !108
  %308 = fmul float %300, %307
  store float %308, ptr %8, align 4, !tbaa !108
  %309 = load float, ptr %135, align 4, !tbaa !108
  %310 = fmul float %300, %309
  store float %310, ptr %135, align 4, !tbaa !108
  %311 = load float, ptr %136, align 4, !tbaa !108
  %312 = fmul float %300, %311
  store float %312, ptr %136, align 4, !tbaa !108
  %313 = load float, ptr %9, align 4, !tbaa !108
  %314 = fadd float %302, %313
  store float %314, ptr %10, align 4, !tbaa !108
  %315 = load float, ptr %109, align 4, !tbaa !108
  %316 = fadd float %304, %315
  store float %316, ptr %137, align 4, !tbaa !108
  %317 = load float, ptr %111, align 4, !tbaa !108
  %318 = fadd float %306, %317
  store float %318, ptr %138, align 4, !tbaa !108
  %319 = fadd float %308, %314
  store float %319, ptr %10, align 4, !tbaa !108
  %320 = fadd float %310, %316
  store float %320, ptr %137, align 4, !tbaa !108
  %321 = fadd float %312, %318
  store float %321, ptr %138, align 4, !tbaa !108
  %322 = fmul float %320, %320
  %323 = call float @llvm.fmuladd.f32(float %319, float %319, float %322)
  %324 = call float @llvm.fmuladd.f32(float %321, float %321, float %323)
  %325 = fcmp ogt float %324, 0x38AA95A5C0000000
  br i1 %325, label %326, label %332

326:                                              ; preds = %286
  %327 = call float @sqrtf(float noundef %324) #9
  %328 = fdiv float 1.000000e+00, %327
  %329 = fmul float %319, %328
  store float %329, ptr %10, align 4, !tbaa !108
  %330 = fmul float %320, %328
  store float %330, ptr %137, align 4, !tbaa !108
  %331 = fmul float %321, %328
  br label %333

332:                                              ; preds = %286
  store float 0.000000e+00, ptr %10, align 4, !tbaa !108
  store float 0.000000e+00, ptr %137, align 4, !tbaa !108
  br label %333

333:                                              ; preds = %332, %326
  %334 = phi float [ 0.000000e+00, %332 ], [ %331, %326 ]
  store float %334, ptr %138, align 4, !tbaa !108
  br label %339

335:                                              ; preds = %252
  %336 = load float, ptr %9, align 4, !tbaa !108
  store float %336, ptr %10, align 4, !tbaa !108
  %337 = load float, ptr %109, align 4, !tbaa !108
  store float %337, ptr %126, align 4, !tbaa !108
  %338 = load float, ptr %111, align 4, !tbaa !108
  store float %338, ptr %127, align 4, !tbaa !108
  br label %339

339:                                              ; preds = %335, %333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %340 = load ptr, ptr %0, align 8, !tbaa !120
  %341 = getelementptr inbounds %struct.Material, ptr %340, i64 0, i32 37
  %342 = load i16, ptr %341, align 2, !tbaa !160
  %343 = load ptr, ptr %143, align 8, !tbaa !116
  %344 = load ptr, ptr %144, align 8, !tbaa !119
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %342, ptr noundef nonnull %142, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %343, ptr noundef %344, i32 noundef %253)
  %345 = load float, ptr %11, align 16, !tbaa !108
  %346 = fadd float %151, %345
  %347 = load float, ptr %141, align 4, !tbaa !108
  %348 = fadd float %152, %347
  %349 = load float, ptr %140, align 8, !tbaa !108
  %350 = fadd float %153, %349
  %351 = load float, ptr %139, align 4, !tbaa !108
  %352 = fadd float %154, %351
  %353 = call float @llvm.fmuladd.f32(float %345, float %345, float %156)
  %354 = call float @llvm.fmuladd.f32(float %347, float %347, float %157)
  %355 = call float @llvm.fmuladd.f32(float %349, float %349, float %155)
  %356 = add nuw nsw i64 %148, 1
  br i1 %145, label %357, label %392

357:                                              ; preds = %339
  %358 = sdiv i16 %254, 2
  %359 = sext i16 %358 to i64
  %360 = icmp slt i64 %148, %359
  br i1 %360, label %392, label %361

361:                                              ; preds = %357
  %362 = trunc i64 %356 to i32
  %363 = sitofp i32 %362 to float
  %364 = fdiv float %346, %363
  %365 = fdiv float %353, %363
  %366 = fneg float %364
  %367 = call float @llvm.fmuladd.f32(float %366, float %364, float %365)
  %368 = fmul float %367, 0x3FD99999A0000000
  %369 = fcmp olt float %368, %146
  br i1 %369, label %370, label %384

370:                                              ; preds = %361
  %371 = fdiv float %350, %363
  %372 = fneg float %371
  %373 = fdiv float %355, %363
  %374 = call float @llvm.fmuladd.f32(float %372, float %371, float %373)
  %375 = fdiv float %348, %363
  %376 = fneg float %375
  %377 = fdiv float %354, %363
  %378 = call float @llvm.fmuladd.f32(float %376, float %375, float %377)
  %379 = fmul float %378, 0x3FD3333340000000
  %380 = fcmp olt float %379, %146
  %381 = fmul float %374, 0x3FE3333340000000
  %382 = fcmp olt float %381, %146
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %396, label %384

384:                                              ; preds = %370, %361
  %385 = fadd float %346, %348
  %386 = fadd float %385, %350
  %387 = fdiv float %386, 3.000000e+00
  %388 = fdiv float %387, %363
  %389 = fcmp olt float %388, 0x3F847AE140000000
  br i1 %389, label %390, label %392

390:                                              ; preds = %384
  %391 = add i16 %254, -1
  br label %392

392:                                              ; preds = %390, %384, %357, %339
  %393 = phi i16 [ %391, %390 ], [ %254, %384 ], [ %254, %357 ], [ %254, %339 ]
  %394 = sext i16 %393 to i64
  %395 = icmp slt i64 %356, %394
  br i1 %395, label %147, label %396, !llvm.loop !172

396:                                              ; preds = %370, %392
  %397 = trunc i64 %356 to i32
  %398 = sitofp i32 %397 to float
  br label %399

399:                                              ; preds = %396, %100
  %400 = phi float [ %86, %100 ], [ %352, %396 ]
  %401 = phi float [ 0.000000e+00, %100 ], [ %350, %396 ]
  %402 = phi float [ 0.000000e+00, %100 ], [ %348, %396 ]
  %403 = phi float [ 0.000000e+00, %100 ], [ %346, %396 ]
  %404 = phi float [ 0.000000e+00, %100 ], [ %398, %396 ]
  %405 = fdiv float %403, %404
  %406 = fdiv float %402, %404
  %407 = fdiv float %401, %404
  %408 = fdiv float %400, %404
  %409 = icmp eq ptr %102, null
  br i1 %409, label %412, label %410

410:                                              ; preds = %399
  %411 = getelementptr inbounds %struct.QMCSampler, ptr %102, i64 0, i32 4
  store i32 0, ptr %411, align 8, !tbaa !173
  br label %412

412:                                              ; preds = %399, %410
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  %413 = load float, ptr %85, align 4, !tbaa !157
  %414 = fsub float 1.000000e+00, %413
  %415 = load ptr, ptr %0, align 8, !tbaa !120
  %416 = getelementptr inbounds %struct.Material, ptr %415, i64 0, i32 33
  %417 = load float, ptr %416, align 8, !tbaa !174
  %418 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %419 = load float, ptr %418, align 4, !tbaa !175
  %420 = fadd float %419, -1.000000e+00
  %421 = call float @llvm.fmuladd.f32(float %417, float %420, float 1.000000e+00)
  %422 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 33
  %423 = load float, ptr %422, align 8, !tbaa !176
  %424 = fadd float %423, -1.000000e+00
  %425 = call float @llvm.fmuladd.f32(float %417, float %424, float 1.000000e+00)
  %426 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %427 = load float, ptr %426, align 4, !tbaa !177
  %428 = fadd float %427, -1.000000e+00
  %429 = call float @llvm.fmuladd.f32(float %417, float %428, float 1.000000e+00)
  %430 = fmul float %414, %421
  %431 = fmul float %405, %430
  %432 = call float @llvm.fmuladd.f32(float %413, float %76, float %431)
  %433 = fmul float %414, %425
  %434 = fmul float %406, %433
  %435 = call float @llvm.fmuladd.f32(float %413, float %75, float %434)
  %436 = fmul float %414, %429
  %437 = fmul float %407, %436
  %438 = call float @llvm.fmuladd.f32(float %413, float %74, float %437)
  %439 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %440 = load i32, ptr %439, align 8, !tbaa !178
  %441 = and i32 %440, 1024
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %450, label %443

443:                                              ; preds = %412
  %444 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  %445 = fsub float %432, %76
  store float %445, ptr %444, align 4, !tbaa !108
  %446 = fsub float %435, %75
  %447 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14, i64 1
  store float %446, ptr %447, align 4, !tbaa !108
  %448 = fsub float %438, %74
  %449 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14, i64 2
  store float %448, ptr %449, align 4, !tbaa !108
  br label %450

450:                                              ; preds = %443, %412
  %451 = load i32, ptr %48, align 4, !tbaa !164
  %452 = and i32 %451, 1024
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %464

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  %456 = load float, ptr %455, align 4, !tbaa !108
  %457 = fsub float %432, %456
  %458 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14, i64 1
  %459 = load float, ptr %458, align 4, !tbaa !108
  %460 = fsub float %435, %459
  %461 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !108
  %463 = fsub float %438, %462
  br label %464

464:                                              ; preds = %454, %450
  %465 = phi float [ %463, %454 ], [ %438, %450 ]
  %466 = phi float [ %460, %454 ], [ %435, %450 ]
  %467 = phi float [ %457, %454 ], [ %432, %450 ]
  %468 = fcmp ogt float %408, 1.000000e+00
  %469 = select i1 %468, float 1.000000e+00, float %408
  store float %469, ptr %85, align 4, !tbaa !157
  br label %470

470:                                              ; preds = %464, %73
  %471 = phi float [ %465, %464 ], [ %74, %73 ]
  %472 = phi float [ %466, %464 ], [ %75, %73 ]
  %473 = phi float [ %467, %464 ], [ %76, %73 ]
  br i1 %47, label %474, label %867

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %476 = load float, ptr %475, align 4, !tbaa !162
  %477 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %478 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %479 = load ptr, ptr %0, align 8, !tbaa !120
  %480 = getelementptr inbounds %struct.Material, ptr %479, i64 0, i32 30
  %481 = load float, ptr %480, align 4, !tbaa !179
  %482 = getelementptr inbounds %struct.Material, ptr %479, i64 0, i32 29
  %483 = load float, ptr %482, align 8, !tbaa !180
  %484 = call float @fresnel_fac(ptr noundef nonnull %477, ptr noundef nonnull %478, float noundef %481, float noundef %483) #9
  %485 = fmul float %476, %484
  %486 = fcmp une float %485, 0.000000e+00
  br i1 %486, label %487, label %867

487:                                              ; preds = %474
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %488 = load ptr, ptr %0, align 8, !tbaa !120
  %489 = getelementptr inbounds %struct.Material, ptr %488, i64 0, i32 41
  %490 = load float, ptr %489, align 4, !tbaa !181
  %491 = fsub float 1.000000e+00, %490
  %492 = call float @powf(float noundef %491, float noundef 3.000000e+00) #9
  %493 = load ptr, ptr %0, align 8, !tbaa !120
  %494 = getelementptr inbounds %struct.Material, ptr %493, i64 0, i32 45
  %495 = load float, ptr %494, align 8, !tbaa !182
  %496 = getelementptr inbounds %struct.Material, ptr %493, i64 0, i32 47
  %497 = load float, ptr %496, align 8, !tbaa !183
  %498 = fsub float 1.000000e+00, %497
  %499 = fcmp ogt float %492, 0.000000e+00
  br i1 %499, label %500, label %512

500:                                              ; preds = %487
  %501 = getelementptr inbounds %struct.Material, ptr %493, i64 0, i32 43
  %502 = load i16, ptr %501, align 4, !tbaa !184
  %503 = fcmp une float %495, 0.000000e+00
  %504 = select i1 %503, i32 1, i32 2
  %505 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %506 = load i16, ptr %505, align 2, !tbaa !168
  %507 = sext i16 %506 to i32
  %508 = sext i16 %502 to i32
  %509 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %507, i32 noundef %504, i32 noundef %508)
  %510 = load i16, ptr %505, align 2, !tbaa !168
  %511 = sext i16 %510 to i32
  call fastcc void @QMC_initPixel(ptr noundef %509, i32 noundef %511)
  br label %512

512:                                              ; preds = %500, %487
  %513 = phi i16 [ %502, %500 ], [ 1, %487 ]
  %514 = phi ptr [ %509, %500 ], [ null, %487 ]
  %515 = icmp sgt i16 %513, 0
  br i1 %515, label %516, label %799

516:                                              ; preds = %512
  %517 = zext nneg i16 %513 to i32
  %518 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %519 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %520 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 2
  %521 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 5
  %522 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %523 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 5
  %524 = fpext float %492 to double
  %525 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %526 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %527 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  %528 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %529 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  %530 = getelementptr inbounds float, ptr %3, i64 1
  %531 = getelementptr inbounds float, ptr %3, i64 2
  %532 = getelementptr inbounds float, ptr %4, i64 1
  %533 = getelementptr inbounds float, ptr %4, i64 2
  %534 = getelementptr inbounds float, ptr %3, i64 1
  %535 = getelementptr inbounds float, ptr %3, i64 2
  %536 = getelementptr inbounds float, ptr %4, i64 1
  %537 = getelementptr inbounds float, ptr %4, i64 2
  %538 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %539 = getelementptr inbounds float, ptr %3, i64 1
  %540 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %541 = getelementptr inbounds float, ptr %3, i64 2
  %542 = getelementptr inbounds float, ptr %4, i64 1
  %543 = getelementptr inbounds float, ptr %4, i64 2
  %544 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %545 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %546 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %547 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %548 = getelementptr inbounds float, ptr %5, i64 1
  %549 = getelementptr inbounds float, ptr %5, i64 2
  %550 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %551 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  %552 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 1
  %553 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30, i64 2
  %554 = getelementptr inbounds float, ptr %5, i64 1
  %555 = getelementptr inbounds float, ptr %5, i64 2
  %556 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %557 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %558 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %559 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %560 = fcmp ule float %495, 0.000000e+00
  %561 = fmul float %495, 5.000000e-01
  %562 = fadd float %492, 1.000000e+00
  %563 = fmul float %562, 0x3FB99999A0000000
  %564 = fcmp ogt float %563, %485
  %565 = fmul float %562, 0x3FA99999A0000000
  %566 = fcmp ogt float %565, %485
  br label %567

567:                                              ; preds = %516, %791
  %568 = phi i64 [ 0, %516 ], [ %751, %791 ]
  %569 = phi i32 [ %517, %516 ], [ %793, %791 ]
  %570 = phi i16 [ %513, %516 ], [ %792, %791 ]
  %571 = phi float [ 0.000000e+00, %516 ], [ %750, %791 ]
  %572 = phi float [ 0.000000e+00, %516 ], [ %749, %791 ]
  %573 = phi float [ 0.000000e+00, %516 ], [ %748, %791 ]
  %574 = phi float [ 0.000000e+00, %516 ], [ %743, %791 ]
  %575 = phi float [ 0.000000e+00, %516 ], [ %745, %791 ]
  %576 = phi float [ 0.000000e+00, %516 ], [ %747, %791 ]
  %577 = icmp sgt i16 %570, 1
  br i1 %577, label %578, label %690

578:                                              ; preds = %567
  %579 = load i32, ptr %520, align 8, !tbaa !170
  %580 = icmp eq i32 %579, 2
  br i1 %580, label %581, label %600

581:                                              ; preds = %578
  %582 = load i16, ptr %522, align 2, !tbaa !168
  %583 = load ptr, ptr %523, align 8, !tbaa !154
  %584 = shl nuw nsw i64 %568, 1
  %585 = getelementptr inbounds double, ptr %583, i64 %584
  %586 = load double, ptr %585, align 8, !tbaa !171
  %587 = sext i16 %582 to i64
  %588 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 6, i64 %587
  %589 = load double, ptr %588, align 8, !tbaa !171
  %590 = fadd double %586, %589
  %591 = call double @fmod(double noundef %590, double noundef 1.000000e+00) #9
  %592 = load ptr, ptr %523, align 8, !tbaa !154
  %593 = or disjoint i64 %584, 1
  %594 = getelementptr inbounds double, ptr %592, i64 %593
  %595 = load double, ptr %594, align 8, !tbaa !171
  %596 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 6, i64 %587, i64 1
  %597 = load double, ptr %596, align 8, !tbaa !171
  %598 = fadd double %595, %597
  %599 = call double @fmod(double noundef %598, double noundef 1.000000e+00) #9
  br label %608

600:                                              ; preds = %578
  %601 = load ptr, ptr %521, align 8, !tbaa !154
  %602 = shl nuw nsw i64 %568, 1
  %603 = getelementptr inbounds double, ptr %601, i64 %602
  %604 = load double, ptr %603, align 8, !tbaa !171
  %605 = or disjoint i64 %602, 1
  %606 = getelementptr inbounds double, ptr %601, i64 %605
  %607 = load double, ptr %606, align 8, !tbaa !171
  br label %608

608:                                              ; preds = %581, %600
  %609 = phi double [ %599, %581 ], [ %607, %600 ]
  %610 = phi double [ %591, %581 ], [ %604, %600 ]
  %611 = fmul double %610, 2.000000e+00
  %612 = fmul double %611, 0x400921FB54442D18
  %613 = fptrunc double %612 to float
  %614 = call double @pow(double noundef %609, double noundef %524) #9
  %615 = fptrunc double %614 to float
  %616 = fneg float %615
  %617 = call float @llvm.fmuladd.f32(float %616, float %615, float 1.000000e+00)
  %618 = call float @sqrtf(float noundef %617) #9
  %619 = call float @cosf(float noundef %613) #9
  %620 = fmul float %618, %619
  %621 = call float @sinf(float noundef %613) #9
  %622 = fmul float %618, %621
  %623 = load ptr, ptr %0, align 8, !tbaa !120
  %624 = getelementptr inbounds %struct.Material, ptr %623, i64 0, i32 51
  %625 = load i32, ptr %624, align 4, !tbaa !161
  %626 = and i32 %625, 67108864
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %651, label %628

628:                                              ; preds = %608
  %629 = load float, ptr %526, align 4, !tbaa !108
  %630 = load float, ptr %527, align 4, !tbaa !108
  %631 = load float, ptr %528, align 4, !tbaa !108
  %632 = load float, ptr %529, align 4, !tbaa !108
  %633 = fneg float %631
  %634 = fmul float %632, %633
  %635 = call float @llvm.fmuladd.f32(float %629, float %630, float %634)
  store float %635, ptr %3, align 4, !tbaa !108
  %636 = load float, ptr %525, align 4, !tbaa !108
  %637 = load float, ptr %478, align 4, !tbaa !108
  %638 = fneg float %637
  %639 = fmul float %630, %638
  %640 = call float @llvm.fmuladd.f32(float %631, float %636, float %639)
  store float %640, ptr %530, align 4, !tbaa !108
  %641 = fneg float %629
  %642 = fmul float %636, %641
  %643 = call float @llvm.fmuladd.f32(float %637, float %632, float %642)
  store float %643, ptr %531, align 4, !tbaa !108
  store float %636, ptr %4, align 4, !tbaa !108
  store float %632, ptr %532, align 4, !tbaa !108
  store float %630, ptr %533, align 4, !tbaa !108
  %644 = fmul float %620, %635
  store float %644, ptr %3, align 4, !tbaa !108
  %645 = fmul float %620, %640
  store float %645, ptr %530, align 4, !tbaa !108
  %646 = fmul float %620, %643
  store float %646, ptr %531, align 4, !tbaa !108
  %647 = fmul float %498, %622
  %648 = fmul float %647, %636
  store float %648, ptr %4, align 4, !tbaa !108
  %649 = fmul float %647, %632
  store float %649, ptr %532, align 4, !tbaa !108
  %650 = fmul float %647, %630
  store float %650, ptr %533, align 4, !tbaa !108
  br label %664

651:                                              ; preds = %608
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %478) #9
  %652 = load float, ptr %3, align 4, !tbaa !108
  %653 = fmul float %620, %652
  store float %653, ptr %3, align 4, !tbaa !108
  %654 = load float, ptr %534, align 4, !tbaa !108
  %655 = fmul float %620, %654
  store float %655, ptr %534, align 4, !tbaa !108
  %656 = load float, ptr %535, align 4, !tbaa !108
  %657 = fmul float %620, %656
  store float %657, ptr %535, align 4, !tbaa !108
  %658 = load float, ptr %4, align 4, !tbaa !108
  %659 = fmul float %622, %658
  store float %659, ptr %4, align 4, !tbaa !108
  %660 = load float, ptr %536, align 4, !tbaa !108
  %661 = fmul float %622, %660
  store float %661, ptr %536, align 4, !tbaa !108
  %662 = load float, ptr %537, align 4, !tbaa !108
  %663 = fmul float %622, %662
  store float %663, ptr %537, align 4, !tbaa !108
  br label %664

664:                                              ; preds = %651, %628
  %665 = load float, ptr %478, align 4, !tbaa !108
  %666 = load float, ptr %3, align 4, !tbaa !108
  %667 = fadd float %665, %666
  %668 = load float, ptr %538, align 4, !tbaa !108
  %669 = load float, ptr %539, align 4, !tbaa !108
  %670 = fadd float %668, %669
  %671 = load float, ptr %540, align 4, !tbaa !108
  %672 = load float, ptr %541, align 4, !tbaa !108
  %673 = fadd float %671, %672
  %674 = load float, ptr %4, align 4, !tbaa !108
  %675 = fadd float %667, %674
  %676 = load float, ptr %542, align 4, !tbaa !108
  %677 = fadd float %670, %676
  %678 = load float, ptr %543, align 4, !tbaa !108
  %679 = fadd float %673, %678
  %680 = fmul float %677, %677
  %681 = call float @llvm.fmuladd.f32(float %675, float %675, float %680)
  %682 = call float @llvm.fmuladd.f32(float %679, float %679, float %681)
  %683 = fcmp ogt float %682, 0x38AA95A5C0000000
  br i1 %683, label %684, label %694

684:                                              ; preds = %664
  %685 = call float @sqrtf(float noundef %682) #9
  %686 = fdiv float 1.000000e+00, %685
  %687 = fmul float %675, %686
  %688 = fmul float %677, %686
  %689 = fmul float %679, %686
  br label %694

690:                                              ; preds = %567
  %691 = load float, ptr %478, align 4, !tbaa !108
  %692 = load float, ptr %518, align 4, !tbaa !108
  %693 = load float, ptr %519, align 4, !tbaa !108
  br label %694

694:                                              ; preds = %690, %684, %664
  %695 = phi float [ %693, %690 ], [ %689, %684 ], [ 0.000000e+00, %664 ]
  %696 = phi float [ %692, %690 ], [ %688, %684 ], [ 0.000000e+00, %664 ]
  %697 = phi float [ %691, %690 ], [ %687, %684 ], [ 0.000000e+00, %664 ]
  %698 = load ptr, ptr %544, align 8, !tbaa !119
  %699 = getelementptr inbounds %struct.VlakRen, ptr %698, i64 0, i32 7
  %700 = load i8, ptr %699, align 1, !tbaa !73
  %701 = and i8 %700, 1
  %702 = icmp eq i8 %701, 0
  %703 = load float, ptr %477, align 4, !tbaa !108
  br i1 %702, label %727, label %704

704:                                              ; preds = %694
  %705 = load float, ptr %546, align 4, !tbaa !108
  %706 = fmul float %696, %705
  %707 = call float @llvm.fmuladd.f32(float %697, float %703, float %706)
  %708 = load float, ptr %547, align 4, !tbaa !108
  %709 = call float @llvm.fmuladd.f32(float %695, float %708, float %707)
  %710 = fmul float %709, -2.000000e+00
  %711 = call float @llvm.fmuladd.f32(float %697, float %710, float %703)
  store float %711, ptr %5, align 4, !tbaa !108
  %712 = call float @llvm.fmuladd.f32(float %696, float %710, float %705)
  store float %712, ptr %548, align 4, !tbaa !108
  %713 = call float @llvm.fmuladd.f32(float %695, float %710, float %708)
  store float %713, ptr %549, align 4, !tbaa !108
  %714 = load float, ptr %545, align 4, !tbaa !108
  %715 = load float, ptr %550, align 4, !tbaa !108
  %716 = fmul float %712, %715
  %717 = call float @llvm.fmuladd.f32(float %711, float %714, float %716)
  %718 = load float, ptr %551, align 4, !tbaa !108
  %719 = call float @llvm.fmuladd.f32(float %713, float %718, float %717)
  %720 = fcmp ogt float %719, 0.000000e+00
  br i1 %720, label %721, label %737

721:                                              ; preds = %704
  %722 = fadd float %719, 0x3F847AE140000000
  %723 = fneg float %722
  %724 = call float @llvm.fmuladd.f32(float %723, float %714, float %711)
  store float %724, ptr %5, align 4, !tbaa !108
  %725 = call float @llvm.fmuladd.f32(float %723, float %715, float %712)
  store float %725, ptr %548, align 4, !tbaa !108
  %726 = call float @llvm.fmuladd.f32(float %723, float %718, float %713)
  store float %726, ptr %549, align 4, !tbaa !108
  br label %737

727:                                              ; preds = %694
  %728 = load float, ptr %552, align 4, !tbaa !108
  %729 = fmul float %696, %728
  %730 = call float @llvm.fmuladd.f32(float %697, float %703, float %729)
  %731 = load float, ptr %553, align 4, !tbaa !108
  %732 = call float @llvm.fmuladd.f32(float %695, float %731, float %730)
  %733 = fmul float %732, -2.000000e+00
  %734 = call float @llvm.fmuladd.f32(float %697, float %733, float %703)
  store float %734, ptr %5, align 4, !tbaa !108
  %735 = call float @llvm.fmuladd.f32(float %696, float %733, float %728)
  store float %735, ptr %554, align 4, !tbaa !108
  %736 = call float @llvm.fmuladd.f32(float %695, float %733, float %731)
  store float %736, ptr %555, align 4, !tbaa !108
  br label %737

737:                                              ; preds = %727, %721, %704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %738 = load ptr, ptr %0, align 8, !tbaa !120
  %739 = getelementptr inbounds %struct.Material, ptr %738, i64 0, i32 36
  %740 = load i16, ptr %739, align 4, !tbaa !163
  %741 = load ptr, ptr %559, align 8, !tbaa !116
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %740, ptr noundef nonnull %558, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %741, ptr noundef %698, i32 noundef 0)
  %742 = load float, ptr %6, align 16, !tbaa !108
  %743 = fadd float %574, %742
  %744 = load float, ptr %557, align 4, !tbaa !108
  %745 = fadd float %575, %744
  %746 = load float, ptr %556, align 8, !tbaa !108
  %747 = fadd float %576, %746
  %748 = call float @llvm.fmuladd.f32(float %742, float %742, float %573)
  %749 = call float @llvm.fmuladd.f32(float %744, float %744, float %572)
  %750 = call float @llvm.fmuladd.f32(float %746, float %746, float %571)
  %751 = add nuw nsw i64 %568, 1
  %752 = sdiv i32 %569, 3
  %753 = sext i32 %752 to i64
  %754 = icmp slt i64 %568, %753
  %755 = or i1 %560, %754
  br i1 %755, label %791, label %756

756:                                              ; preds = %737
  %757 = trunc i64 %751 to i32
  %758 = sitofp i32 %757 to float
  %759 = fdiv float %743, %758
  %760 = fdiv float %748, %758
  %761 = fneg float %759
  %762 = call float @llvm.fmuladd.f32(float %761, float %759, float %760)
  %763 = fmul float %762, 0x3FD99999A0000000
  %764 = fcmp olt float %763, %561
  br i1 %764, label %765, label %779

765:                                              ; preds = %756
  %766 = fdiv float %747, %758
  %767 = fneg float %766
  %768 = fdiv float %750, %758
  %769 = call float @llvm.fmuladd.f32(float %767, float %766, float %768)
  %770 = fdiv float %745, %758
  %771 = fneg float %770
  %772 = fdiv float %749, %758
  %773 = call float @llvm.fmuladd.f32(float %771, float %770, float %772)
  %774 = fmul float %773, 0x3FD3333340000000
  %775 = fcmp olt float %774, %561
  %776 = fmul float %769, 0x3FE3333340000000
  %777 = fcmp olt float %776, %561
  %778 = select i1 %775, i1 %777, i1 false
  br i1 %778, label %796, label %779

779:                                              ; preds = %765, %756
  %780 = fadd float %743, %745
  %781 = fadd float %780, %747
  %782 = fdiv float %781, 3.000000e+00
  %783 = fdiv float %782, %758
  %784 = fcmp olt float %783, 0x3F847AE140000000
  %785 = sext i1 %784 to i16
  %786 = add i16 %570, %785
  br i1 %564, label %787, label %791

787:                                              ; preds = %779
  %788 = add i16 %786, -1
  br i1 %566, label %789, label %791

789:                                              ; preds = %787
  %790 = add i16 %786, -2
  br label %791

791:                                              ; preds = %789, %787, %779, %737
  %792 = phi i16 [ %790, %789 ], [ %788, %787 ], [ %786, %779 ], [ %570, %737 ]
  %793 = sext i16 %792 to i32
  %794 = sext i16 %792 to i64
  %795 = icmp slt i64 %751, %794
  br i1 %795, label %567, label %796, !llvm.loop !185

796:                                              ; preds = %765, %791
  %797 = trunc i64 %751 to i32
  %798 = sitofp i32 %797 to float
  br label %799

799:                                              ; preds = %796, %512
  %800 = phi float [ 0.000000e+00, %512 ], [ %747, %796 ]
  %801 = phi float [ 0.000000e+00, %512 ], [ %745, %796 ]
  %802 = phi float [ 0.000000e+00, %512 ], [ %743, %796 ]
  %803 = phi float [ 0.000000e+00, %512 ], [ %798, %796 ]
  %804 = fdiv float %802, %803
  %805 = fdiv float %801, %803
  %806 = fdiv float %800, %803
  %807 = icmp eq ptr %514, null
  br i1 %807, label %810, label %808

808:                                              ; preds = %799
  %809 = getelementptr inbounds %struct.QMCSampler, ptr %514, i64 0, i32 4
  store i32 0, ptr %809, align 8, !tbaa !173
  br label %810

810:                                              ; preds = %799, %808
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %811 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %812 = load float, ptr %811, align 4, !tbaa !186
  %813 = fmul float %485, %812
  %814 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 39
  %815 = load float, ptr %814, align 8, !tbaa !187
  %816 = fmul float %485, %815
  %817 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 40
  %818 = load float, ptr %817, align 4, !tbaa !188
  %819 = fmul float %485, %818
  %820 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %821 = load i32, ptr %820, align 8, !tbaa !178
  %822 = and i32 %821, 128
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %837, label %824

824:                                              ; preds = %810
  %825 = fneg float %813
  %826 = fmul float %473, %825
  %827 = call float @llvm.fmuladd.f32(float %813, float %804, float %826)
  %828 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  store float %827, ptr %828, align 4, !tbaa !108
  %829 = fneg float %816
  %830 = fmul float %472, %829
  %831 = call float @llvm.fmuladd.f32(float %816, float %805, float %830)
  %832 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13, i64 1
  store float %831, ptr %832, align 4, !tbaa !108
  %833 = fneg float %819
  %834 = fmul float %471, %833
  %835 = call float @llvm.fmuladd.f32(float %819, float %806, float %834)
  %836 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13, i64 2
  store float %835, ptr %836, align 4, !tbaa !108
  br label %837

837:                                              ; preds = %824, %810
  %838 = load i32, ptr %48, align 4, !tbaa !164
  %839 = and i32 %838, 128
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %867, label %841

841:                                              ; preds = %837
  %842 = fsub float 1.000000e+00, %485
  %843 = fmul float %473, %842
  %844 = fmul float %472, %842
  %845 = fmul float %471, %842
  %846 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %847 = load float, ptr %846, align 4, !tbaa !108
  %848 = fcmp olt float %847, 1.000000e+00
  %849 = fsub float 1.000000e+00, %847
  %850 = fmul float %813, %849
  %851 = call float @llvm.fmuladd.f32(float %804, float %850, float %843)
  %852 = select i1 %848, float %851, float %843
  %853 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %854 = load float, ptr %853, align 4, !tbaa !108
  %855 = fcmp olt float %854, 1.000000e+00
  %856 = fsub float 1.000000e+00, %854
  %857 = fmul float %816, %856
  %858 = call float @llvm.fmuladd.f32(float %805, float %857, float %844)
  %859 = select i1 %855, float %858, float %844
  %860 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %861 = load float, ptr %860, align 4, !tbaa !108
  %862 = fcmp olt float %861, 1.000000e+00
  br i1 %862, label %863, label %867

863:                                              ; preds = %841
  %864 = fsub float 1.000000e+00, %861
  %865 = fmul float %819, %864
  %866 = call float @llvm.fmuladd.f32(float %806, float %865, float %845)
  br label %867

867:                                              ; preds = %474, %841, %863, %837, %470
  %868 = phi float [ %471, %837 ], [ %866, %863 ], [ %845, %841 ], [ %471, %474 ], [ %471, %470 ]
  %869 = phi float [ %472, %837 ], [ %859, %863 ], [ %859, %841 ], [ %472, %474 ], [ %472, %470 ]
  %870 = phi float [ %473, %837 ], [ %852, %863 ], [ %852, %841 ], [ %473, %474 ], [ %473, %470 ]
  %871 = load i32, ptr %48, align 4, !tbaa !164
  %872 = and i32 %871, 16
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %885, label %874

874:                                              ; preds = %867
  %875 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %876 = load float, ptr %875, align 4, !tbaa !108
  %877 = fadd float %870, %876
  store float %877, ptr %1, align 4, !tbaa !108
  %878 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %879 = load float, ptr %878, align 4, !tbaa !108
  %880 = fadd float %869, %879
  %881 = getelementptr inbounds float, ptr %1, i64 1
  store float %880, ptr %881, align 4, !tbaa !108
  %882 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %883 = load float, ptr %882, align 4, !tbaa !108
  %884 = fadd float %868, %883
  br label %887

885:                                              ; preds = %867
  store float %870, ptr %1, align 4, !tbaa !108
  %886 = getelementptr inbounds float, ptr %1, i64 1
  store float %869, ptr %886, align 4, !tbaa !108
  br label %887

887:                                              ; preds = %885, %874
  %888 = phi float [ %868, %885 ], [ %884, %874 ]
  %889 = getelementptr inbounds float, ptr %1, i64 2
  store float %888, ptr %889, align 4, !tbaa !108
  ret void
}

declare float @fresnel_fac(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_ao_sphere(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 51
  %3 = load i16, ptr %2, align 2, !tbaa !189
  %4 = sext i16 %3 to i32
  %5 = shl nsw i32 %4, 1
  %6 = mul nsw i32 %5, %4
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %8 = mul nsw i32 %6, 3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %7(i64 noundef %10, ptr noundef nonnull @.str.8) #9
  %12 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 67
  store ptr %11, ptr %12, align 8, !tbaa !190
  %13 = tail call ptr @BLI_rng_new_srandom(i32 noundef %6) #9
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load ptr, ptr %12, align 8, !tbaa !190
  br label %19

17:                                               ; preds = %19, %1
  %18 = icmp sgt i32 %6, 0
  br label %28

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %23, %19 ], [ %16, %15 ]
  %21 = phi i32 [ %22, %19 ], [ 0, %15 ]
  tail call void @BLI_rng_get_float_unit_v3(ptr noundef %13, ptr noundef %20) #9
  %22 = add nuw nsw i32 %21, 1
  %23 = getelementptr inbounds float, ptr %20, i64 3
  %24 = icmp eq i32 %22, %6
  br i1 %24, label %17, label %19, !llvm.loop !191

25:                                               ; preds = %97, %28
  %26 = add nsw i32 %29, -1
  %27 = icmp eq i32 %29, 0
  br i1 %27, label %102, label %28, !llvm.loop !192

28:                                               ; preds = %17, %25
  %29 = phi i32 [ 15, %17 ], [ %26, %25 ]
  br i1 %18, label %30, label %25

30:                                               ; preds = %28
  %31 = load ptr, ptr %12, align 8, !tbaa !190
  br label %32

32:                                               ; preds = %30, %97
  %33 = phi ptr [ %100, %97 ], [ %31, %30 ]
  %34 = phi i32 [ %99, %97 ], [ 0, %30 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !190
  %36 = load float, ptr %33, align 4, !tbaa !108
  %37 = getelementptr inbounds float, ptr %33, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !108
  %39 = getelementptr inbounds float, ptr %33, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !108
  br label %41

41:                                               ; preds = %32, %64
  %42 = phi i32 [ 0, %32 ], [ %68, %64 ]
  %43 = phi ptr [ %35, %32 ], [ %69, %64 ]
  %44 = phi float [ 0.000000e+00, %32 ], [ %67, %64 ]
  %45 = phi float [ 0.000000e+00, %32 ], [ %66, %64 ]
  %46 = phi float [ 0.000000e+00, %32 ], [ %65, %64 ]
  %47 = load float, ptr %43, align 4, !tbaa !108
  %48 = fsub float %36, %47
  %49 = getelementptr inbounds float, ptr %43, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !108
  %51 = fsub float %38, %50
  %52 = getelementptr inbounds float, ptr %43, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !108
  %54 = fsub float %40, %53
  %55 = fmul float %51, %51
  %56 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %56)
  %58 = fcmp une float %57, 0.000000e+00
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = fdiv float 1.000000e+00, %57
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %48, float %44)
  %62 = tail call float @llvm.fmuladd.f32(float %60, float %51, float %45)
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %54, float %46)
  br label %64

64:                                               ; preds = %59, %41
  %65 = phi float [ %63, %59 ], [ %46, %41 ]
  %66 = phi float [ %62, %59 ], [ %45, %41 ]
  %67 = phi float [ %61, %59 ], [ %44, %41 ]
  %68 = add nuw nsw i32 %42, 1
  %69 = getelementptr inbounds float, ptr %43, i64 3
  %70 = icmp eq i32 %68, %6
  br i1 %70, label %71, label %41, !llvm.loop !193

71:                                               ; preds = %64
  %72 = fmul float %67, 5.000000e-01
  %73 = fmul float %66, 5.000000e-01
  %74 = fmul float %65, 5.000000e-01
  %75 = load float, ptr %33, align 4, !tbaa !108
  %76 = fadd float %72, %75
  store float %76, ptr %33, align 4, !tbaa !108
  %77 = getelementptr inbounds float, ptr %33, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !108
  %79 = fadd float %73, %78
  store float %79, ptr %77, align 4, !tbaa !108
  %80 = getelementptr inbounds float, ptr %33, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !108
  %82 = fadd float %74, %81
  store float %82, ptr %80, align 4, !tbaa !108
  %83 = fmul float %79, %79
  %84 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %83)
  %85 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %84)
  %86 = fcmp ogt float %85, 0x38AA95A5C0000000
  br i1 %86, label %87, label %96

87:                                               ; preds = %71
  %88 = tail call float @sqrtf(float noundef %85) #9
  %89 = fdiv float 1.000000e+00, %88
  %90 = load float, ptr %33, align 4, !tbaa !108
  %91 = fmul float %90, %89
  store float %91, ptr %33, align 4, !tbaa !108
  %92 = load float, ptr %77, align 4, !tbaa !108
  %93 = fmul float %89, %92
  store float %93, ptr %77, align 4, !tbaa !108
  %94 = load float, ptr %80, align 4, !tbaa !108
  %95 = fmul float %89, %94
  br label %97

96:                                               ; preds = %71
  store float 0.000000e+00, ptr %33, align 4, !tbaa !108
  store float 0.000000e+00, ptr %77, align 4, !tbaa !108
  br label %97

97:                                               ; preds = %87, %96
  %98 = phi float [ 0.000000e+00, %96 ], [ %95, %87 ]
  store float %98, ptr %80, align 4, !tbaa !108
  %99 = add nuw nsw i32 %34, 1
  %100 = getelementptr inbounds float, ptr %33, i64 3
  %101 = icmp eq i32 %99, %6
  br i1 %101, label %25, label %32, !llvm.loop !194

102:                                              ; preds = %25
  %103 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %104 = tail call ptr %103(i64 noundef %10, ptr noundef nonnull @.str.9) #9
  %105 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 68
  store ptr %104, ptr %105, align 8, !tbaa !195
  tail call void @BLI_rng_free(ptr noundef %13) #9
  ret void
}

declare void @BLI_rng_get_float_unit_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ray_ao(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Isect, align 8
  %5 = alloca %struct.RayHint, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.Isect, align 8
  %10 = alloca %struct.RayHint, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 63), align 8
  %18 = add i16 %17, -1
  %19 = icmp ult i16 %18, 2
  br i1 %19, label %20, label %424

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %21 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 46), align 8, !tbaa !196
  %22 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 54), align 8, !tbaa !197
  %23 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 55), align 4, !tbaa !198
  %24 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !199
  %25 = sext i16 %24 to i32
  %26 = mul nsw i32 %25, %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 16
  store ptr %28, ptr %29, align 8, !tbaa !200
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !119
  %32 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 16, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !201
  %33 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 10
  store i32 2, ptr %33, align 4, !tbaa !202
  %34 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 9
  store i32 2, ptr %34, align 8, !tbaa !203
  %35 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 18
  %36 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 15
  %37 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %38 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !204
  %39 = shl i16 %38, 1
  %40 = and i16 %39, 2
  %41 = zext nneg i16 %40 to i32
  %42 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 7
  store i32 %41, ptr %42, align 8, !tbaa !134
  %43 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 8
  store i32 -1, ptr %43, align 4, !tbaa !205
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %45 = load float, ptr %44, align 4, !tbaa !108
  store float %45, ptr %9, align 8, !tbaa !108
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !108
  %48 = getelementptr inbounds float, ptr %9, i64 1
  store float %47, ptr %48, align 4, !tbaa !108
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !108
  %51 = getelementptr inbounds float, ptr %9, i64 2
  store float %50, ptr %51, align 8, !tbaa !108
  call void @RE_instance_rotate_ray_start(ptr noundef %28, ptr noundef nonnull %9) #9
  %52 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %52, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %9) #9
  store ptr %10, ptr %35, align 8, !tbaa !206
  store float 0.000000e+00, ptr %1, align 4, !tbaa !108
  %53 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %53, align 4, !tbaa !108
  %54 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %54, align 4, !tbaa !108
  store float 0.000000e+00, ptr %2, align 4, !tbaa !108
  %55 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %55, align 4, !tbaa !108
  %56 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %56, align 4, !tbaa !108
  %57 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 53), align 2, !tbaa !207
  %58 = sext i16 %57 to i32
  %59 = load ptr, ptr %0, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.Material, ptr %59, i64 0, i32 51
  %61 = load i32, ptr %60, align 4, !tbaa !161
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 %58, i32 0
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %20
  %67 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !199
  %68 = sitofp i16 %67 to float
  %69 = fdiv float 1.000000e+00, %68
  store float %69, ptr %14, align 4, !tbaa !108
  %70 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !108
  %71 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float 0.000000e+00, ptr %71, align 4, !tbaa !108
  br label %72

72:                                               ; preds = %66, %20
  %73 = load ptr, ptr %30, align 8, !tbaa !119
  %74 = getelementptr inbounds %struct.VlakRen, ptr %73, i64 0, i32 7
  %75 = load i8, ptr %74, align 1, !tbaa !73
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = getelementptr inbounds float, ptr %13, i64 1
  %79 = getelementptr inbounds float, ptr %13, i64 2
  br i1 %77, label %86, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %82 = load float, ptr %81, align 4, !tbaa !108
  store float %82, ptr %13, align 4, !tbaa !108
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !108
  store float %84, ptr %78, align 4, !tbaa !108
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  br label %92

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %88 = load float, ptr %87, align 4, !tbaa !108
  store float %88, ptr %13, align 4, !tbaa !108
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !108
  store float %90, ptr %78, align 4, !tbaa !108
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6, i64 2
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi ptr [ %91, %86 ], [ %85, %80 ]
  %94 = load float, ptr %93, align 4, !tbaa !108
  store float %94, ptr %79, align 4, !tbaa !108
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #9
  %95 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 63), align 8, !tbaa !208
  switch i16 %95, label %175 [
    i16 1, label %96
    i16 2, label %170
  ]

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  %98 = load float, ptr %97, align 4, !tbaa !108
  %99 = fcmp oeq float %98, 1.000000e+04
  %100 = select i1 %99, float 0.000000e+00, float %98
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !108
  %103 = fcmp oeq float %102, 1.000000e+04
  %104 = select i1 %103, float 0.000000e+00, float %102
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !108
  %107 = fcmp oeq float %106, 1.000000e+04
  %108 = select i1 %107, float 0.000000e+00, float %106
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  %110 = load float, ptr %109, align 4, !tbaa !108
  %111 = fcmp oeq float %110, 1.000000e+04
  %112 = select i1 %111, float 0.000000e+00, float %110
  %113 = fmul float %104, %104
  %114 = call float @llvm.fmuladd.f32(float %100, float %100, float %113)
  %115 = call float @sqrtf(float noundef %114) #9
  %116 = fmul float %112, %112
  %117 = call float @llvm.fmuladd.f32(float %108, float %108, float %116)
  %118 = call float @sqrtf(float noundef %117) #9
  %119 = fadd float %115, %118
  %120 = fmul float %119, 5.000000e-01
  %121 = fmul float %23, %120
  %122 = fcmp olt float %121, 1.000000e+00
  br i1 %122, label %126, label %123

123:                                              ; preds = %96
  %124 = fcmp ogt float %121, 1.000000e+03
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %123, %96
  %127 = phi float [ 1.000000e+03, %125 ], [ %121, %123 ], [ 1.000000e+00, %96 ]
  %128 = sitofp i32 %26 to float
  %129 = fdiv float %128, %127
  %130 = fptosi float %129 to i32
  %131 = call i32 @llvm.smax.i32(i32 %130, i32 5)
  %132 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %133 = load i16, ptr %132, align 2, !tbaa !168
  %134 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %135 = sext i16 %133 to i64
  %136 = getelementptr inbounds %struct.ListBase, ptr %134, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  %138 = icmp eq ptr %137, null
  br i1 %138, label %157, label %139

139:                                              ; preds = %126, %154
  %140 = phi ptr [ %155, %154 ], [ %137, %126 ]
  %141 = getelementptr inbounds %struct.QMCSampler, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !170
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.QMCSampler, ptr %140, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !209
  %147 = icmp eq i32 %146, %131
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.QMCSampler, ptr %140, i64 0, i32 4
  %150 = load i32, ptr %149, align 8, !tbaa !173
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.QMCSampler, ptr %140, i64 0, i32 4
  store i32 1, ptr %153, align 8, !tbaa !173
  br label %175

154:                                              ; preds = %148, %144, %139
  %155 = load ptr, ptr %140, align 8, !tbaa !57
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %139, !llvm.loop !210

157:                                              ; preds = %154, %126
  %158 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %159 = call ptr %158(i64 noundef 56, ptr noundef nonnull @.str.13) #9
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %161 = zext nneg i32 %131 to i64
  %162 = shl nuw nsw i64 %161, 4
  %163 = call ptr %160(i64 noundef %162, ptr noundef nonnull @.str.14) #9
  %164 = getelementptr inbounds %struct.QMCSampler, ptr %159, i64 0, i32 5
  store ptr %163, ptr %164, align 8, !tbaa !154
  %165 = getelementptr inbounds %struct.QMCSampler, ptr %159, i64 0, i32 3
  store i32 %131, ptr %165, align 4, !tbaa !209
  %166 = getelementptr inbounds %struct.QMCSampler, ptr %159, i64 0, i32 2
  store i32 1, ptr %166, align 8, !tbaa !170
  %167 = getelementptr inbounds %struct.QMCSampler, ptr %159, i64 0, i32 4
  store i32 1, ptr %167, align 8, !tbaa !173
  %168 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %169 = getelementptr inbounds %struct.ListBase, ptr %168, i64 %135
  call void @BLI_addtail(ptr noundef %169, ptr noundef %159) #9
  br label %175

170:                                              ; preds = %92
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %172 = load i16, ptr %171, align 2, !tbaa !168
  %173 = sext i16 %172 to i32
  %174 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %173, i32 noundef 2, i32 noundef %26)
  br label %175

175:                                              ; preds = %157, %152, %170, %92
  %176 = phi i32 [ %26, %170 ], [ %26, %92 ], [ %131, %152 ], [ %131, %157 ]
  %177 = phi ptr [ %174, %170 ], [ null, %92 ], [ %140, %152 ], [ %159, %157 ]
  %178 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %179 = load i16, ptr %178, align 2, !tbaa !168
  %180 = sext i16 %179 to i32
  call fastcc void @QMC_initPixel(ptr noundef %177, i32 noundef %180)
  %181 = icmp eq i32 %176, 0
  br i1 %181, label %400, label %182

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 2
  %184 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 5
  %185 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 5
  %186 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %187 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %188 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %189 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %190 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %191 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %192 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 1
  %193 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 1, i64 1
  %194 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 1, i64 2
  %195 = getelementptr inbounds %struct.Isect, ptr %9, i64 0, i32 2
  %196 = icmp eq i32 %64, 0
  %197 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %198 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %199 = icmp eq i32 %64, 1
  %200 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %201 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %202 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %203 = icmp eq ptr %177, null
  %204 = fcmp ule float %22, 0.000000e+00
  %205 = lshr i32 %176, 1
  %206 = zext nneg i32 %205 to i64
  %207 = zext nneg i32 %176 to i64
  %208 = zext nneg i32 %176 to i64
  br label %209

209:                                              ; preds = %395, %182
  %210 = phi i64 [ 0, %182 ], [ %374, %395 ]
  %211 = phi float [ 0.000000e+00, %182 ], [ %373, %395 ]
  %212 = phi float [ 0.000000e+00, %182 ], [ %372, %395 ]
  %213 = load i32, ptr %183, align 8, !tbaa !170
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %234

215:                                              ; preds = %209
  %216 = load i16, ptr %178, align 2, !tbaa !168
  %217 = load ptr, ptr %185, align 8, !tbaa !154
  %218 = shl nuw nsw i64 %210, 1
  %219 = getelementptr inbounds double, ptr %217, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !171
  %221 = sext i16 %216 to i64
  %222 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 6, i64 %221
  %223 = load double, ptr %222, align 8, !tbaa !171
  %224 = fadd double %220, %223
  %225 = call double @fmod(double noundef %224, double noundef 1.000000e+00) #9
  %226 = load ptr, ptr %185, align 8, !tbaa !154
  %227 = or disjoint i64 %218, 1
  %228 = getelementptr inbounds double, ptr %226, i64 %227
  %229 = load double, ptr %228, align 8, !tbaa !171
  %230 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 6, i64 %221, i64 1
  %231 = load double, ptr %230, align 8, !tbaa !171
  %232 = fadd double %229, %231
  %233 = call double @fmod(double noundef %232, double noundef 1.000000e+00) #9
  br label %242

234:                                              ; preds = %209
  %235 = load ptr, ptr %184, align 8, !tbaa !154
  %236 = shl nuw nsw i64 %210, 1
  %237 = getelementptr inbounds double, ptr %235, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !171
  %239 = or disjoint i64 %236, 1
  %240 = getelementptr inbounds double, ptr %235, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !171
  br label %242

242:                                              ; preds = %215, %234
  %243 = phi double [ %233, %215 ], [ %241, %234 ]
  %244 = phi double [ %225, %215 ], [ %238, %234 ]
  %245 = fmul double %244, 2.000000e+00
  %246 = fmul double %245, 0x400921FB54442D18
  %247 = fptrunc double %246 to float
  %248 = call double @sqrt(double noundef %243) #9
  %249 = fptrunc double %248 to float
  %250 = call float @cosf(float noundef %247) #9
  %251 = fmul float %250, %249
  %252 = call float @sinf(float noundef %247) #9
  %253 = fmul float %252, %249
  %254 = fneg double %243
  %255 = call double @llvm.fmuladd.f64(double %254, double %243, double 1.000000e+00)
  %256 = fptrunc double %255 to float
  %257 = load float, ptr %11, align 4, !tbaa !108
  %258 = load float, ptr %12, align 4, !tbaa !108
  %259 = fmul float %253, %258
  %260 = call float @llvm.fmuladd.f32(float %251, float %257, float %259)
  %261 = load float, ptr %13, align 4, !tbaa !108
  %262 = call float @llvm.fmuladd.f32(float %256, float %261, float %260)
  %263 = load float, ptr %186, align 4, !tbaa !108
  %264 = load float, ptr %187, align 4, !tbaa !108
  %265 = fmul float %253, %264
  %266 = call float @llvm.fmuladd.f32(float %251, float %263, float %265)
  %267 = load float, ptr %188, align 4, !tbaa !108
  %268 = call float @llvm.fmuladd.f32(float %256, float %267, float %266)
  %269 = load float, ptr %189, align 4, !tbaa !108
  %270 = load float, ptr %190, align 4, !tbaa !108
  %271 = fmul float %253, %270
  %272 = call float @llvm.fmuladd.f32(float %251, float %269, float %271)
  %273 = load float, ptr %191, align 4, !tbaa !108
  %274 = call float @llvm.fmuladd.f32(float %256, float %273, float %272)
  %275 = fmul float %268, %268
  %276 = call float @llvm.fmuladd.f32(float %262, float %262, float %275)
  %277 = call float @llvm.fmuladd.f32(float %274, float %274, float %276)
  %278 = fcmp ogt float %277, 0x38AA95A5C0000000
  br i1 %278, label %279, label %285

279:                                              ; preds = %242
  %280 = call float @sqrtf(float noundef %277) #9
  %281 = fdiv float 1.000000e+00, %280
  %282 = fmul float %262, %281
  %283 = fmul float %268, %281
  %284 = fmul float %274, %281
  br label %285

285:                                              ; preds = %279, %242
  %286 = phi float [ %283, %279 ], [ 0.000000e+00, %242 ]
  %287 = phi float [ %282, %279 ], [ 0.000000e+00, %242 ]
  %288 = phi float [ %284, %279 ], [ 0.000000e+00, %242 ]
  %289 = fneg float %287
  store float %289, ptr %192, align 4, !tbaa !108
  %290 = fneg float %286
  store float %290, ptr %193, align 8, !tbaa !108
  %291 = fneg float %288
  store float %291, ptr %194, align 4, !tbaa !108
  store float %21, ptr %195, align 8, !tbaa !115
  %292 = load ptr, ptr %27, align 8, !tbaa !116
  call void @RE_instance_rotate_ray_dir(ptr noundef %292, ptr noundef nonnull %9) #9
  %293 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %294 = call i32 @RE_rayobject_raycast(ptr noundef %293, ptr noundef nonnull %9) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %309, label %296

296:                                              ; preds = %285
  %297 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !204
  %298 = and i16 %297, 1
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %296
  %301 = load float, ptr %195, align 8, !tbaa !115
  %302 = fneg float %301
  %303 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 47), align 4, !tbaa !211
  %304 = fmul float %303, %302
  %305 = call float @expf(float noundef %304) #9
  %306 = fadd float %212, %305
  br label %371

307:                                              ; preds = %296
  %308 = fadd float %212, 1.000000e+00
  br label %371

309:                                              ; preds = %285
  br i1 %196, label %371, label %310

310:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  store float %289, ptr %16, align 4, !tbaa !108
  store float %290, ptr %197, align 4, !tbaa !108
  store float %291, ptr %198, align 4, !tbaa !108
  %311 = fmul float %286, %286
  %312 = call float @llvm.fmuladd.f32(float %287, float %287, float %311)
  %313 = call float @llvm.fmuladd.f32(float %288, float %288, float %312)
  %314 = fcmp ogt float %313, 0x38AA95A5C0000000
  br i1 %314, label %315, label %324

315:                                              ; preds = %310
  %316 = call float @sqrtf(float noundef %313) #9
  %317 = fdiv float 1.000000e+00, %316
  %318 = load float, ptr %16, align 4, !tbaa !108
  %319 = fmul float %318, %317
  store float %319, ptr %16, align 4, !tbaa !108
  %320 = load float, ptr %197, align 4, !tbaa !108
  %321 = fmul float %317, %320
  store float %321, ptr %197, align 4, !tbaa !108
  %322 = load float, ptr %198, align 4, !tbaa !108
  %323 = fmul float %317, %322
  br label %325

324:                                              ; preds = %310
  store float 0.000000e+00, ptr %16, align 4, !tbaa !108
  store float 0.000000e+00, ptr %197, align 4, !tbaa !108
  br label %325

325:                                              ; preds = %324, %315
  %326 = phi float [ 0.000000e+00, %324 ], [ %323, %315 ]
  store float %326, ptr %198, align 4, !tbaa !108
  br i1 %199, label %327, label %356

327:                                              ; preds = %325
  %328 = load float, ptr %16, align 4, !tbaa !108
  %329 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30), align 8, !tbaa !108
  %330 = load float, ptr %197, align 4, !tbaa !108
  %331 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 1), align 4, !tbaa !108
  %332 = fmul float %330, %331
  %333 = call float @llvm.fmuladd.f32(float %328, float %329, float %332)
  %334 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 2), align 8, !tbaa !108
  %335 = call float @llvm.fmuladd.f32(float %326, float %334, float %333)
  %336 = fadd float %335, 1.000000e+00
  %337 = fmul float %336, 5.000000e-01
  %338 = fsub float 1.000000e+00, %337
  %339 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !212
  %340 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9), align 4, !tbaa !213
  %341 = fmul float %340, %337
  %342 = call float @llvm.fmuladd.f32(float %338, float %339, float %341)
  %343 = load float, ptr %2, align 4, !tbaa !108
  %344 = fadd float %343, %342
  store float %344, ptr %2, align 4, !tbaa !108
  %345 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !214
  %346 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 10), align 8, !tbaa !215
  %347 = fmul float %337, %346
  %348 = call float @llvm.fmuladd.f32(float %338, float %345, float %347)
  %349 = load float, ptr %55, align 4, !tbaa !108
  %350 = fadd float %349, %348
  store float %350, ptr %55, align 4, !tbaa !108
  %351 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !216
  %352 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 11), align 4, !tbaa !217
  %353 = fmul float %337, %352
  %354 = call float @llvm.fmuladd.f32(float %338, float %351, float %353)
  %355 = load float, ptr %56, align 4, !tbaa !108
  br label %366

356:                                              ; preds = %325
  %357 = load i16, ptr %178, align 2, !tbaa !168
  call void @shadeSkyView(ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef nonnull %16, ptr noundef nonnull %14, i16 noundef signext %357) #9
  call void @shadeSunView(ptr noundef nonnull %15, ptr noundef nonnull %200) #9
  %358 = load float, ptr %15, align 16, !tbaa !108
  %359 = load float, ptr %2, align 4, !tbaa !108
  %360 = fadd float %358, %359
  store float %360, ptr %2, align 4, !tbaa !108
  %361 = load float, ptr %201, align 4, !tbaa !108
  %362 = load float, ptr %55, align 4, !tbaa !108
  %363 = fadd float %361, %362
  store float %363, ptr %55, align 4, !tbaa !108
  %364 = load float, ptr %202, align 8, !tbaa !108
  %365 = load float, ptr %56, align 4, !tbaa !108
  br label %366

366:                                              ; preds = %356, %327
  %367 = phi float [ %365, %356 ], [ %354, %327 ]
  %368 = phi float [ %364, %356 ], [ %355, %327 ]
  %369 = fadd float %368, %367
  store float %369, ptr %56, align 4, !tbaa !108
  %370 = fadd float %211, 1.000000e+00
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  br label %371

371:                                              ; preds = %366, %309, %307, %300
  %372 = phi float [ %306, %300 ], [ %308, %307 ], [ %212, %366 ], [ %212, %309 ]
  %373 = phi float [ %211, %300 ], [ %211, %307 ], [ %370, %366 ], [ %211, %309 ]
  %374 = add nuw i64 %210, 1
  br i1 %203, label %393, label %375

375:                                              ; preds = %371
  %376 = load i32, ptr %183, align 8, !tbaa !170
  %377 = icmp ne i32 %376, 1
  %378 = select i1 %377, i1 true, i1 %204
  %379 = icmp ult i64 %210, %206
  %380 = select i1 %378, i1 true, i1 %379
  br i1 %380, label %393, label %381

381:                                              ; preds = %375
  %382 = trunc i64 %210 to i32
  %383 = sitofp i32 %382 to float
  %384 = fdiv float %212, %383
  %385 = trunc i64 %374 to i32
  %386 = sitofp i32 %385 to float
  %387 = fdiv float %372, %386
  %388 = fsub float %384, %387
  %389 = call float @llvm.fabs.f32(float %388)
  %390 = fcmp uge float %389, %22
  %391 = icmp ult i64 %374, %208
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %395, label %396

393:                                              ; preds = %375, %371
  %394 = icmp ult i64 %374, %207
  br i1 %394, label %395, label %396

395:                                              ; preds = %393, %381
  br label %209, !llvm.loop !218

396:                                              ; preds = %381, %393
  %397 = trunc i64 %374 to i32
  %398 = sitofp i32 %397 to float
  %399 = fdiv float %372, %398
  br label %400

400:                                              ; preds = %396, %175
  %401 = phi float [ 0.000000e+00, %175 ], [ %373, %396 ]
  %402 = phi float [ 0x7FF8000000000000, %175 ], [ %399, %396 ]
  %403 = fsub float 1.000000e+00, %402
  store float %403, ptr %54, align 4, !tbaa !108
  store float %403, ptr %53, align 4, !tbaa !108
  store float %403, ptr %1, align 4, !tbaa !108
  %404 = icmp ne i32 %64, 0
  %405 = fcmp une float %401, 0.000000e+00
  %406 = select i1 %404, i1 %405, i1 false
  br i1 %406, label %407, label %415

407:                                              ; preds = %400
  %408 = fdiv float %403, %401
  %409 = load float, ptr %2, align 4, !tbaa !108
  %410 = fmul float %408, %409
  store float %410, ptr %2, align 4, !tbaa !108
  %411 = load float, ptr %55, align 4, !tbaa !108
  %412 = fmul float %408, %411
  store float %412, ptr %55, align 4, !tbaa !108
  %413 = load float, ptr %56, align 4, !tbaa !108
  %414 = fmul float %408, %413
  br label %418

415:                                              ; preds = %400
  store float %403, ptr %2, align 4, !tbaa !108
  %416 = load float, ptr %53, align 4, !tbaa !108
  store float %416, ptr %55, align 4, !tbaa !108
  %417 = load float, ptr %54, align 4, !tbaa !108
  br label %418

418:                                              ; preds = %415, %407
  %419 = phi float [ %417, %415 ], [ %414, %407 ]
  store float %419, ptr %56, align 4, !tbaa !108
  %420 = icmp eq ptr %177, null
  br i1 %420, label %423, label %421

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.QMCSampler, ptr %177, i64 0, i32 4
  store i32 0, ptr %422, align 8, !tbaa !173
  br label %423

423:                                              ; preds = %418, %421
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %9) #9
  br label %805

424:                                              ; preds = %3
  %425 = icmp eq i16 %17, 0
  br i1 %425, label %426, label %805

426:                                              ; preds = %424
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %5) #9
  %427 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 46), align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %428 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !199
  %429 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !116
  %431 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %430, ptr %431, align 8, !tbaa !200
  %432 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !119
  %434 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %433, ptr %434, align 8, !tbaa !201
  %435 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 1, ptr %435, align 4, !tbaa !202
  %436 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  store i32 2, ptr %436, align 8, !tbaa !203
  %437 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  %438 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 15
  %439 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %438, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %439, i8 0, i64 16, i1 false)
  %440 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !204
  %441 = shl i16 %440, 1
  %442 = and i16 %441, 2
  %443 = zext nneg i16 %442 to i32
  %444 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 %443, ptr %444, align 8, !tbaa !134
  %445 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %445, align 4, !tbaa !205
  %446 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %447 = load float, ptr %446, align 4, !tbaa !108
  store float %447, ptr %4, align 8, !tbaa !108
  %448 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %449 = load float, ptr %448, align 4, !tbaa !108
  %450 = getelementptr inbounds float, ptr %4, i64 1
  store float %449, ptr %450, align 4, !tbaa !108
  %451 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %452 = load float, ptr %451, align 4, !tbaa !108
  %453 = getelementptr inbounds float, ptr %4, i64 2
  store float %452, ptr %453, align 8, !tbaa !108
  call void @RE_instance_rotate_ray_start(ptr noundef %430, ptr noundef nonnull %4) #9
  %454 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %454, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4) #9
  store ptr %5, ptr %437, align 8, !tbaa !206
  store float 0.000000e+00, ptr %1, align 4, !tbaa !108
  %455 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %455, align 4, !tbaa !108
  %456 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %456, align 4, !tbaa !108
  store float 0.000000e+00, ptr %2, align 4, !tbaa !108
  %457 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %457, align 4, !tbaa !108
  %458 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %458, align 4, !tbaa !108
  %459 = load ptr, ptr %432, align 8, !tbaa !119
  %460 = getelementptr inbounds %struct.VlakRen, ptr %459, i64 0, i32 7
  %461 = load i8, ptr %460, align 1, !tbaa !73
  %462 = and i8 %461, 1
  %463 = icmp eq i8 %462, 0
  %464 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 49), align 4
  %465 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %466 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %467 = select i1 %463, float 0.000000e+00, float %464
  %468 = select i1 %463, ptr %466, ptr %465
  %469 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 53), align 2, !tbaa !207
  %470 = sext i16 %469 to i32
  %471 = load ptr, ptr %0, align 8, !tbaa !120
  %472 = getelementptr inbounds %struct.Material, ptr %471, i64 0, i32 51
  %473 = load i32, ptr %472, align 4, !tbaa !161
  %474 = and i32 %473, 1024
  %475 = icmp eq i32 %474, 0
  %476 = select i1 %475, i32 %470, i32 0
  %477 = call i16 @llvm.smin.i16(i16 %428, i16 32)
  %478 = sext i16 %477 to i32
  %479 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !204
  %480 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %481 = load i16, ptr %480, align 2, !tbaa !168
  %482 = sext i16 %481 to i32
  %483 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %484 = load i32, ptr %483, align 4, !tbaa !219
  %485 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %486 = load i32, ptr %485, align 8, !tbaa !220
  %487 = shl nsw i32 %478, 1
  %488 = mul i32 %487, %478
  %489 = and i16 %479, 2
  %490 = icmp eq i16 %489, 0
  br i1 %490, label %521, label %491

491:                                              ; preds = %426
  %492 = call i32 @BLI_thread_rand(i32 noundef %482) #9
  %493 = call ptr @BLI_rng_new(i32 noundef %492) #9
  %494 = load i1, ptr @threadsafe_table_sphere.firsttime, align 4
  br i1 %494, label %496, label %495

495:                                              ; preds = %491
  store i32 -1, ptr @threadsafe_table_sphere.xso, align 4
  store i32 -1, ptr @threadsafe_table_sphere.yso, align 4
  store i1 true, ptr @threadsafe_table_sphere.firsttime, align 4
  br label %496

496:                                              ; preds = %495, %491
  %497 = sext i16 %481 to i64
  %498 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.xso, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !221
  %500 = icmp eq i32 %499, %484
  br i1 %500, label %501, label %505

501:                                              ; preds = %496
  %502 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %497
  %503 = load i32, ptr %502, align 4, !tbaa !221
  %504 = icmp eq i32 %503, %486
  br i1 %504, label %507, label %505

505:                                              ; preds = %501, %496
  store i32 %484, ptr %498, align 4, !tbaa !221
  %506 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %497
  store i32 %486, ptr %506, align 4, !tbaa !221
  br label %507

507:                                              ; preds = %501, %505
  %508 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 68), align 8, !tbaa !222
  %509 = mul i32 %488, 3
  %510 = mul i32 %509, %482
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds float, ptr %508, i64 %511
  %513 = icmp sgt i32 %488, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %507, %514
  %515 = phi ptr [ %518, %514 ], [ %512, %507 ]
  %516 = phi i32 [ %517, %514 ], [ 0, %507 ]
  call void @BLI_rng_get_float_unit_v3(ptr noundef %493, ptr noundef %515) #9
  %517 = add nuw nsw i32 %516, 1
  %518 = getelementptr inbounds float, ptr %515, i64 3
  %519 = icmp eq i32 %517, %488
  br i1 %519, label %520, label %514, !llvm.loop !223

520:                                              ; preds = %514, %507
  call void @BLI_rng_free(ptr noundef %493) #9
  br label %609

521:                                              ; preds = %426
  %522 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %523 = load ptr, ptr %522, align 8, !tbaa !224
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %543

525:                                              ; preds = %521
  %526 = load i1, ptr @threadsafe_table_sphere.firsttime, align 4
  br i1 %526, label %528, label %527

527:                                              ; preds = %525
  store i32 -1, ptr @threadsafe_table_sphere.xso, align 4
  store i32 -1, ptr @threadsafe_table_sphere.yso, align 4
  store i1 true, ptr @threadsafe_table_sphere.firsttime, align 4
  br label %528

528:                                              ; preds = %527, %525
  %529 = sext i16 %481 to i64
  %530 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.xso, i64 0, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !221
  %532 = icmp eq i32 %531, %484
  br i1 %532, label %533, label %543

533:                                              ; preds = %528
  %534 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %529
  %535 = load i32, ptr %534, align 4, !tbaa !221
  %536 = icmp eq i32 %535, %486
  br i1 %536, label %537, label %543

537:                                              ; preds = %533
  %538 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 68), align 8, !tbaa !222
  %539 = mul i32 %488, 3
  %540 = mul i32 %539, %482
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds float, ptr %538, i64 %541
  br label %543

543:                                              ; preds = %537, %533, %528, %521
  %544 = phi ptr [ null, %521 ], [ %542, %537 ], [ null, %533 ], [ null, %528 ]
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %609

546:                                              ; preds = %543
  %547 = load i1, ptr @threadsafe_table_sphere.firsttime, align 4
  br i1 %547, label %549, label %548

548:                                              ; preds = %546
  store i32 -1, ptr @threadsafe_table_sphere.xso, align 4
  store i32 -1, ptr @threadsafe_table_sphere.yso, align 4
  store i1 true, ptr @threadsafe_table_sphere.firsttime, align 4
  br label %549

549:                                              ; preds = %548, %546
  %550 = sext i16 %481 to i64
  %551 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.xso, i64 0, i64 %550
  %552 = load i32, ptr %551, align 4, !tbaa !221
  %553 = icmp eq i32 %552, %484
  br i1 %553, label %554, label %558

554:                                              ; preds = %549
  %555 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %550
  %556 = load i32, ptr %555, align 4, !tbaa !221
  %557 = icmp eq i32 %556, %486
  br i1 %557, label %560, label %558

558:                                              ; preds = %554, %549
  store i32 %484, ptr %551, align 4, !tbaa !221
  %559 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %550
  store i32 %486, ptr %559, align 4, !tbaa !221
  br label %560

560:                                              ; preds = %554, %558
  %561 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 68), align 8, !tbaa !222
  %562 = mul i32 %488, 3
  %563 = mul i32 %562, %482
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds float, ptr %561, i64 %564
  %566 = call float @BLI_thread_frand(i32 noundef %482) #9
  %567 = call float @sinf(float noundef %566) #9
  %568 = call float @cosf(float noundef %566) #9
  %569 = call float @BLI_thread_frand(i32 noundef %482) #9
  %570 = call float @sinf(float noundef %569) #9
  %571 = call float @cosf(float noundef %569) #9
  %572 = icmp sgt i32 %488, 0
  br i1 %572, label %573, label %609

573:                                              ; preds = %560
  %574 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 67), align 8, !tbaa !225
  %575 = fmul float %568, %571
  %576 = fneg float %567
  %577 = fmul float %568, %570
  %578 = fmul float %567, %571
  %579 = fmul float %567, %570
  %580 = fneg float %570
  br label %581

581:                                              ; preds = %573, %581
  %582 = phi i32 [ 0, %573 ], [ %605, %581 ]
  %583 = phi ptr [ %574, %573 ], [ %606, %581 ]
  %584 = phi ptr [ %565, %573 ], [ %607, %581 ]
  %585 = load float, ptr %583, align 4, !tbaa !108
  %586 = getelementptr inbounds float, ptr %583, i64 1
  %587 = load float, ptr %586, align 4, !tbaa !108
  %588 = fmul float %587, %576
  %589 = call float @llvm.fmuladd.f32(float %575, float %585, float %588)
  %590 = getelementptr inbounds float, ptr %583, i64 2
  %591 = load float, ptr %590, align 4, !tbaa !108
  %592 = call float @llvm.fmuladd.f32(float %577, float %591, float %589)
  store float %592, ptr %584, align 4, !tbaa !108
  %593 = load float, ptr %583, align 4, !tbaa !108
  %594 = load float, ptr %586, align 4, !tbaa !108
  %595 = fmul float %568, %594
  %596 = call float @llvm.fmuladd.f32(float %578, float %593, float %595)
  %597 = load float, ptr %590, align 4, !tbaa !108
  %598 = call float @llvm.fmuladd.f32(float %579, float %597, float %596)
  %599 = getelementptr inbounds float, ptr %584, i64 1
  store float %598, ptr %599, align 4, !tbaa !108
  %600 = load float, ptr %583, align 4, !tbaa !108
  %601 = load float, ptr %590, align 4, !tbaa !108
  %602 = fmul float %571, %601
  %603 = call float @llvm.fmuladd.f32(float %580, float %600, float %602)
  %604 = getelementptr inbounds float, ptr %584, i64 2
  store float %603, ptr %604, align 4, !tbaa !108
  %605 = add nuw nsw i32 %582, 1
  %606 = getelementptr inbounds float, ptr %583, i64 3
  %607 = getelementptr inbounds float, ptr %584, i64 3
  %608 = icmp eq i32 %605, %488
  br i1 %608, label %609, label %581, !llvm.loop !226

609:                                              ; preds = %581, %560, %543, %520
  %610 = phi ptr [ %512, %520 ], [ %544, %543 ], [ %565, %560 ], [ %565, %581 ]
  %611 = icmp eq i32 %476, 2
  br i1 %611, label %612, label %617

612:                                              ; preds = %609
  %613 = sitofp i16 %477 to float
  %614 = fdiv float 1.000000e+00, %613
  store float %614, ptr %6, align 4, !tbaa !108
  %615 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %614, ptr %615, align 4, !tbaa !108
  %616 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %616, align 4, !tbaa !108
  br label %617

617:                                              ; preds = %612, %609
  %618 = icmp eq i32 %488, 0
  br i1 %618, label %779, label %619

619:                                              ; preds = %617
  %620 = getelementptr inbounds float, ptr %468, i64 1
  %621 = getelementptr inbounds float, ptr %468, i64 2
  %622 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %623 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %624 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  %625 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %626 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %627 = icmp eq i32 %476, 0
  %628 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %629 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %630 = icmp eq i32 %476, 1
  %631 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %632 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %633 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  br label %634

634:                                              ; preds = %619, %771
  %635 = phi i32 [ %488, %619 ], [ %653, %771 ]
  %636 = phi ptr [ %610, %619 ], [ %777, %771 ]
  %637 = phi i32 [ 0, %619 ], [ %776, %771 ]
  %638 = phi i32 [ 0, %619 ], [ %775, %771 ]
  %639 = phi i32 [ -1, %619 ], [ %774, %771 ]
  %640 = phi float [ 0.000000e+00, %619 ], [ %773, %771 ]
  %641 = load float, ptr %468, align 4, !tbaa !108
  %642 = load float, ptr %620, align 4, !tbaa !108
  %643 = load float, ptr %621, align 4, !tbaa !108
  %644 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8
  %645 = and i32 %644, 1
  %646 = icmp eq i32 %645, 0
  %647 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %648 = sext i16 %647 to i32
  br label %649

649:                                              ; preds = %634, %672
  %650 = phi i32 [ %635, %634 ], [ %653, %672 ]
  %651 = phi ptr [ %636, %634 ], [ %673, %672 ]
  %652 = phi i32 [ %639, %634 ], [ %667, %672 ]
  %653 = add nsw i32 %650, -1
  %654 = load float, ptr %651, align 4, !tbaa !108
  %655 = getelementptr inbounds float, ptr %651, i64 1
  %656 = load float, ptr %655, align 4, !tbaa !108
  %657 = fmul float %656, %642
  %658 = call float @llvm.fmuladd.f32(float %654, float %641, float %657)
  %659 = getelementptr inbounds float, ptr %651, i64 2
  %660 = load float, ptr %659, align 4, !tbaa !108
  %661 = call float @llvm.fmuladd.f32(float %660, float %643, float %658)
  %662 = fcmp ogt float %661, %467
  br i1 %662, label %663, label %771

663:                                              ; preds = %649
  br i1 %646, label %675, label %664

664:                                              ; preds = %663
  %665 = add nsw i32 %652, 1
  %666 = icmp eq i32 %665, %648
  %667 = select i1 %666, i32 0, i32 %665
  %668 = load i32, ptr %622, align 4, !tbaa !227
  %669 = shl nuw i32 1, %667
  %670 = and i32 %669, %668
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %675

672:                                              ; preds = %664
  %673 = getelementptr inbounds float, ptr %651, i64 3
  %674 = icmp eq i32 %653, 0
  br i1 %674, label %779, label %649, !llvm.loop !228

675:                                              ; preds = %664, %663
  %676 = phi ptr [ %651, %664 ], [ %636, %663 ]
  %677 = phi i32 [ %667, %664 ], [ %639, %663 ]
  %678 = getelementptr inbounds float, ptr %676, i64 1
  %679 = getelementptr inbounds float, ptr %676, i64 2
  %680 = add nsw i32 %638, 1
  %681 = fneg float %654
  store float %681, ptr %623, align 4, !tbaa !108
  %682 = load float, ptr %678, align 4, !tbaa !108
  %683 = fneg float %682
  store float %683, ptr %624, align 8, !tbaa !108
  %684 = load float, ptr %679, align 4, !tbaa !108
  %685 = fneg float %684
  store float %685, ptr %625, align 4, !tbaa !108
  store float %427, ptr %626, align 8, !tbaa !115
  %686 = load ptr, ptr %429, align 8, !tbaa !116
  call void @RE_instance_rotate_ray_dir(ptr noundef %686, ptr noundef nonnull %4) #9
  %687 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %688 = call i32 @RE_rayobject_raycast(ptr noundef %687, ptr noundef nonnull %4) #9
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %703, label %690

690:                                              ; preds = %675
  %691 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !204
  %692 = and i16 %691, 1
  %693 = icmp eq i16 %692, 0
  br i1 %693, label %701, label %694

694:                                              ; preds = %690
  %695 = load float, ptr %626, align 8, !tbaa !115
  %696 = fneg float %695
  %697 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 47), align 4, !tbaa !211
  %698 = fmul float %697, %696
  %699 = call float @expf(float noundef %698) #9
  %700 = fadd float %640, %699
  br label %771

701:                                              ; preds = %690
  %702 = fadd float %640, 1.000000e+00
  br label %771

703:                                              ; preds = %675
  br i1 %627, label %771, label %704

704:                                              ; preds = %703
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %705 = load float, ptr %676, align 4, !tbaa !108
  %706 = fneg float %705
  store float %706, ptr %8, align 4, !tbaa !108
  %707 = load float, ptr %678, align 4, !tbaa !108
  %708 = fneg float %707
  store float %708, ptr %628, align 4, !tbaa !108
  %709 = load float, ptr %679, align 4, !tbaa !108
  %710 = fneg float %709
  store float %710, ptr %629, align 4, !tbaa !108
  %711 = fmul float %707, %707
  %712 = call float @llvm.fmuladd.f32(float %705, float %705, float %711)
  %713 = call float @llvm.fmuladd.f32(float %709, float %709, float %712)
  %714 = fcmp ogt float %713, 0x38AA95A5C0000000
  br i1 %714, label %715, label %724

715:                                              ; preds = %704
  %716 = call float @sqrtf(float noundef %713) #9
  %717 = fdiv float 1.000000e+00, %716
  %718 = load float, ptr %8, align 4, !tbaa !108
  %719 = fmul float %718, %717
  store float %719, ptr %8, align 4, !tbaa !108
  %720 = load float, ptr %628, align 4, !tbaa !108
  %721 = fmul float %717, %720
  store float %721, ptr %628, align 4, !tbaa !108
  %722 = load float, ptr %629, align 4, !tbaa !108
  %723 = fmul float %717, %722
  br label %725

724:                                              ; preds = %704
  store float 0.000000e+00, ptr %8, align 4, !tbaa !108
  store float 0.000000e+00, ptr %628, align 4, !tbaa !108
  br label %725

725:                                              ; preds = %724, %715
  %726 = phi float [ 0.000000e+00, %724 ], [ %723, %715 ]
  store float %726, ptr %629, align 4, !tbaa !108
  br i1 %630, label %727, label %756

727:                                              ; preds = %725
  %728 = load float, ptr %8, align 4, !tbaa !108
  %729 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30), align 8, !tbaa !108
  %730 = load float, ptr %628, align 4, !tbaa !108
  %731 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 1), align 4, !tbaa !108
  %732 = fmul float %730, %731
  %733 = call float @llvm.fmuladd.f32(float %728, float %729, float %732)
  %734 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30, i64 2), align 8, !tbaa !108
  %735 = call float @llvm.fmuladd.f32(float %726, float %734, float %733)
  %736 = fadd float %735, 1.000000e+00
  %737 = fmul float %736, 5.000000e-01
  %738 = fsub float 1.000000e+00, %737
  %739 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !212
  %740 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9), align 4, !tbaa !213
  %741 = fmul float %740, %737
  %742 = call float @llvm.fmuladd.f32(float %738, float %739, float %741)
  %743 = load float, ptr %2, align 4, !tbaa !108
  %744 = fadd float %743, %742
  store float %744, ptr %2, align 4, !tbaa !108
  %745 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !214
  %746 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 10), align 8, !tbaa !215
  %747 = fmul float %737, %746
  %748 = call float @llvm.fmuladd.f32(float %738, float %745, float %747)
  %749 = load float, ptr %457, align 4, !tbaa !108
  %750 = fadd float %749, %748
  store float %750, ptr %457, align 4, !tbaa !108
  %751 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !216
  %752 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 11), align 4, !tbaa !217
  %753 = fmul float %737, %752
  %754 = call float @llvm.fmuladd.f32(float %738, float %751, float %753)
  %755 = load float, ptr %458, align 4, !tbaa !108
  br label %766

756:                                              ; preds = %725
  %757 = load i16, ptr %480, align 2, !tbaa !168
  call void @shadeSkyView(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %6, i16 noundef signext %757) #9
  call void @shadeSunView(ptr noundef nonnull %7, ptr noundef nonnull %631) #9
  %758 = load float, ptr %7, align 16, !tbaa !108
  %759 = load float, ptr %2, align 4, !tbaa !108
  %760 = fadd float %758, %759
  store float %760, ptr %2, align 4, !tbaa !108
  %761 = load float, ptr %632, align 4, !tbaa !108
  %762 = load float, ptr %457, align 4, !tbaa !108
  %763 = fadd float %761, %762
  store float %763, ptr %457, align 4, !tbaa !108
  %764 = load float, ptr %633, align 8, !tbaa !108
  %765 = load float, ptr %458, align 4, !tbaa !108
  br label %766

766:                                              ; preds = %756, %727
  %767 = phi float [ %765, %756 ], [ %754, %727 ]
  %768 = phi float [ %764, %756 ], [ %755, %727 ]
  %769 = fadd float %768, %767
  store float %769, ptr %458, align 4, !tbaa !108
  %770 = add nsw i32 %637, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %771

771:                                              ; preds = %649, %766, %703, %701, %694
  %772 = phi ptr [ %676, %694 ], [ %676, %701 ], [ %676, %766 ], [ %676, %703 ], [ %651, %649 ]
  %773 = phi float [ %700, %694 ], [ %702, %701 ], [ %640, %766 ], [ %640, %703 ], [ %640, %649 ]
  %774 = phi i32 [ %677, %694 ], [ %677, %701 ], [ %677, %766 ], [ %677, %703 ], [ %652, %649 ]
  %775 = phi i32 [ %680, %694 ], [ %680, %701 ], [ %680, %766 ], [ %680, %703 ], [ %638, %649 ]
  %776 = phi i32 [ %637, %694 ], [ %637, %701 ], [ %770, %766 ], [ %637, %703 ], [ %637, %649 ]
  %777 = getelementptr inbounds float, ptr %772, i64 3
  %778 = icmp eq i32 %653, 0
  br i1 %778, label %779, label %634, !llvm.loop !228

779:                                              ; preds = %771, %672, %617
  %780 = phi float [ 0.000000e+00, %617 ], [ %640, %672 ], [ %773, %771 ]
  %781 = phi i32 [ 0, %617 ], [ %638, %672 ], [ %775, %771 ]
  %782 = phi i32 [ 0, %617 ], [ %637, %672 ], [ %776, %771 ]
  %783 = icmp eq i32 %781, 0
  %784 = sitofp i32 %781 to float
  %785 = fdiv float %780, %784
  %786 = fsub float 1.000000e+00, %785
  %787 = select i1 %783, float 1.000000e+00, float %786
  store float %787, ptr %456, align 4, !tbaa !108
  store float %787, ptr %455, align 4, !tbaa !108
  store float %787, ptr %1, align 4, !tbaa !108
  %788 = icmp ne i32 %476, 0
  %789 = icmp ne i32 %782, 0
  %790 = select i1 %788, i1 %789, i1 false
  br i1 %790, label %791, label %800

791:                                              ; preds = %779
  %792 = sitofp i32 %782 to float
  %793 = fdiv float %787, %792
  %794 = load float, ptr %2, align 4, !tbaa !108
  %795 = fmul float %793, %794
  store float %795, ptr %2, align 4, !tbaa !108
  %796 = load float, ptr %457, align 4, !tbaa !108
  %797 = fmul float %793, %796
  store float %797, ptr %457, align 4, !tbaa !108
  %798 = load float, ptr %458, align 4, !tbaa !108
  %799 = fmul float %793, %798
  br label %803

800:                                              ; preds = %779
  store float %787, ptr %2, align 4, !tbaa !108
  %801 = load float, ptr %455, align 4, !tbaa !108
  store float %801, ptr %457, align 4, !tbaa !108
  %802 = load float, ptr %456, align 4, !tbaa !108
  br label %803

803:                                              ; preds = %791, %800
  %804 = phi float [ %802, %800 ], [ %799, %791 ]
  store float %804, ptr %458, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #9
  br label %805

805:                                              ; preds = %424, %803, %423
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ray_shadow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.RayHint, align 8
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.RayHint, align 8
  %12 = alloca [16 x [3 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca %struct.Isect, align 8
  %18 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %17) #9
  %19 = load ptr, ptr %0, align 8, !tbaa !120
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 51
  %21 = load i32, ptr %20, align 4, !tbaa !161
  %22 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 7
  %23 = lshr i32 %21, 18
  %24 = and i32 %23, 2
  store i32 %24, ptr %22, align 8, !tbaa !134
  %25 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 18
  store ptr null, ptr %25, align 8, !tbaa !206
  %26 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %27 = load i32, ptr %26, align 4, !tbaa !229
  %28 = and i32 %27, 32772
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %32 = load i32, ptr %31, align 4, !tbaa !230
  br label %33

33:                                               ; preds = %3, %30
  %34 = phi i32 [ %32, %30 ], [ -1, %3 ]
  %35 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 8
  store i32 %34, ptr %35, align 4, !tbaa !205
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %37 = load i32, ptr %36, align 8, !tbaa !159
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %41 = load i16, ptr %40, align 2, !tbaa !168
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  br label %45

45:                                               ; preds = %33, %39
  %46 = phi ptr [ %44, %39 ], [ null, %33 ]
  %47 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 17
  store ptr %46, ptr %47, align 8, !tbaa !231
  %48 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 6
  %49 = load i16, ptr %48, align 8, !tbaa !232
  switch i16 %49, label %68 [
    i16 1, label %50
    i16 3, label %50
  ]

50:                                               ; preds = %45, %45
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %52 = load float, ptr %51, align 8, !tbaa !108
  %53 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 55), align 8, !tbaa !110
  %54 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20
  %55 = load float, ptr %54, align 8, !tbaa !108
  %56 = fneg float %53
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %55, float %52)
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !108
  %60 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !108
  %62 = tail call float @llvm.fmuladd.f32(float %56, float %61, float %59)
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %64 = load float, ptr %63, align 8, !tbaa !108
  %65 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !108
  %67 = tail call float @llvm.fmuladd.f32(float %56, float %66, float %64)
  br label %75

68:                                               ; preds = %45
  %69 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5
  %70 = load float, ptr %69, align 4, !tbaa !108
  %71 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !108
  %73 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !108
  br label %75

75:                                               ; preds = %68, %50
  %76 = phi float [ %74, %68 ], [ %67, %50 ]
  %77 = phi float [ %72, %68 ], [ %62, %50 ]
  %78 = phi float [ %70, %68 ], [ %57, %50 ]
  %79 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 46
  %80 = load i16, ptr %79, align 2, !tbaa !233
  %81 = add i16 %80, -1
  %82 = icmp ult i16 %81, 2
  br i1 %82, label %83, label %664

83:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %84 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 55
  %85 = load float, ptr %84, align 4, !tbaa !234
  %86 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 49
  %87 = load i16, ptr %86, align 8, !tbaa !138
  %88 = sext i16 %87 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %12) #9
  %89 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !134
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %95

93:                                               ; preds = %83
  %94 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %94, align 4, !tbaa !108
  br label %95

95:                                               ; preds = %93, %92
  %96 = icmp sgt i16 %87, 1
  %97 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !235
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  %100 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %101 = icmp sgt i16 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !119
  %106 = getelementptr inbounds %struct.VlakRen, ptr %105, i64 0, i32 7
  %107 = load i8, ptr %106, align 1, !tbaa !73
  %108 = and i8 %107, 8
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  br i1 %96, label %111, label %122

111:                                              ; preds = %110
  %112 = sext i16 %100 to i32
  %113 = sdiv i32 %88, %112
  %114 = add nsw i32 %113, 1
  br label %122

115:                                              ; preds = %103, %95
  %116 = or i1 %38, %96
  %117 = tail call i16 @llvm.smax.i16(i16 %87, i16 1)
  %118 = zext nneg i16 %117 to i32
  br i1 %116, label %122, label %119

119:                                              ; preds = %115
  %120 = tail call i16 @llvm.smax.i16(i16 %100, i16 5)
  %121 = zext nneg i16 %120 to i32
  br label %122

122:                                              ; preds = %115, %119, %111, %110
  %123 = phi i32 [ %114, %111 ], [ %121, %119 ], [ 1, %110 ], [ %118, %115 ]
  %124 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %125 = load i32, ptr %124, align 4, !tbaa !227
  %126 = trunc i32 %125 to i16
  %127 = tail call i32 @count_mask(i16 noundef zeroext %126) #9
  %128 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !224
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %189

131:                                              ; preds = %122
  %132 = load i32, ptr %36, align 8, !tbaa !159
  %133 = icmp ne i32 %132, 0
  %134 = icmp slt i32 %127, 2
  %135 = select i1 %133, i1 true, i1 %134
  %136 = icmp sgt i32 %127, %123
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %189, label %138

138:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %139 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !236
  %140 = icmp sgt i16 %139, 0
  br i1 %140, label %141, label %187

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106
  %143 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 1
  %144 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 2
  br label %145

145:                                              ; preds = %141, %181
  %146 = phi i64 [ 0, %141 ], [ %183, %181 ]
  %147 = phi i16 [ %139, %141 ], [ %184, %181 ]
  %148 = phi i32 [ 0, %141 ], [ %182, %181 ]
  %149 = trunc i64 %146 to i32
  switch i16 %147, label %159 [
    i16 8, label %150
    i16 11, label %152
    i16 16, label %154
  ]

150:                                              ; preds = %145
  %151 = getelementptr inbounds [8 x i32], ptr @__const.ray_shadow_jittered_coords.order8, i64 0, i64 %146
  br label %156

152:                                              ; preds = %145
  %153 = getelementptr inbounds [11 x i32], ptr @__const.ray_shadow_jittered_coords.order11, i64 0, i64 %146
  br label %156

154:                                              ; preds = %145
  %155 = getelementptr inbounds [16 x i32], ptr @__const.ray_shadow_jittered_coords.order16, i64 0, i64 %146
  br label %156

156:                                              ; preds = %150, %152, %154
  %157 = phi ptr [ %155, %154 ], [ %153, %152 ], [ %151, %150 ]
  %158 = load i32, ptr %157, align 4, !tbaa !221
  br label %159

159:                                              ; preds = %156, %145
  %160 = phi i32 [ %149, %145 ], [ %158, %156 ]
  %161 = load i32, ptr %124, align 4, !tbaa !227
  %162 = shl nuw i32 1, %160
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %159
  %166 = load float, ptr %142, align 8, !tbaa !108
  %167 = sext i32 %160 to i64
  %168 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %167
  %169 = load float, ptr %168, align 8, !tbaa !108
  %170 = fadd float %166, %169
  %171 = fadd float %170, 5.000000e-01
  %172 = load float, ptr %143, align 4, !tbaa !108
  %173 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %167, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !108
  %175 = fadd float %172, %174
  %176 = fadd float %175, 5.000000e-01
  %177 = load float, ptr %144, align 8, !tbaa !108
  %178 = sext i32 %148 to i64
  %179 = getelementptr inbounds [3 x float], ptr %12, i64 %178
  call void @shade_input_calc_viewco(ptr noundef %0, float noundef %171, float noundef %176, float noundef %177, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %179, ptr noundef null, ptr noundef null) #9
  %180 = add nsw i32 %148, 1
  br label %181

181:                                              ; preds = %165, %159
  %182 = phi i32 [ %180, %165 ], [ %148, %159 ]
  %183 = add nuw nsw i64 %146, 1
  %184 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !236
  %185 = sext i16 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %145, label %187, !llvm.loop !237

187:                                              ; preds = %181, %138
  %188 = phi i32 [ 0, %138 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %198

189:                                              ; preds = %131, %122
  %190 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %191 = load float, ptr %190, align 4, !tbaa !108
  store float %191, ptr %12, align 16, !tbaa !108
  %192 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !108
  %194 = getelementptr inbounds float, ptr %12, i64 1
  store float %193, ptr %194, align 4, !tbaa !108
  %195 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %196 = load float, ptr %195, align 4, !tbaa !108
  %197 = getelementptr inbounds float, ptr %12, i64 2
  store float %196, ptr %197, align 8, !tbaa !108
  br label %198

198:                                              ; preds = %189, %187
  %199 = phi i32 [ 1, %189 ], [ %188, %187 ]
  %200 = load i16, ptr %79, align 2, !tbaa !233
  switch i16 %200, label %245 [
    i16 1, label %201
    i16 2, label %240
  ]

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %203 = load i16, ptr %202, align 2, !tbaa !168
  %204 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %205 = sext i16 %203 to i64
  %206 = getelementptr inbounds %struct.ListBase, ptr %204, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !57
  %208 = icmp eq ptr %207, null
  br i1 %208, label %227, label %209

209:                                              ; preds = %201, %224
  %210 = phi ptr [ %225, %224 ], [ %207, %201 ]
  %211 = getelementptr inbounds %struct.QMCSampler, ptr %210, i64 0, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !170
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.QMCSampler, ptr %210, i64 0, i32 3
  %216 = load i32, ptr %215, align 4, !tbaa !209
  %217 = icmp eq i32 %216, %123
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.QMCSampler, ptr %210, i64 0, i32 4
  %220 = load i32, ptr %219, align 8, !tbaa !173
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.QMCSampler, ptr %210, i64 0, i32 4
  store i32 1, ptr %223, align 8, !tbaa !173
  br label %245

224:                                              ; preds = %218, %214, %209
  %225 = load ptr, ptr %210, align 8, !tbaa !57
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %209, !llvm.loop !210

227:                                              ; preds = %224, %201
  %228 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %229 = call ptr %228(i64 noundef 56, ptr noundef nonnull @.str.13) #9
  %230 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %231 = sext i32 %123 to i64
  %232 = shl nsw i64 %231, 4
  %233 = call ptr %230(i64 noundef %232, ptr noundef nonnull @.str.14) #9
  %234 = getelementptr inbounds %struct.QMCSampler, ptr %229, i64 0, i32 5
  store ptr %233, ptr %234, align 8, !tbaa !154
  %235 = getelementptr inbounds %struct.QMCSampler, ptr %229, i64 0, i32 3
  store i32 %123, ptr %235, align 4, !tbaa !209
  %236 = getelementptr inbounds %struct.QMCSampler, ptr %229, i64 0, i32 2
  store i32 1, ptr %236, align 8, !tbaa !170
  %237 = getelementptr inbounds %struct.QMCSampler, ptr %229, i64 0, i32 4
  store i32 1, ptr %237, align 8, !tbaa !173
  %238 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %239 = getelementptr inbounds %struct.ListBase, ptr %238, i64 %205
  call void @BLI_addtail(ptr noundef %239, ptr noundef %229) #9
  br label %245

240:                                              ; preds = %198
  %241 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %242 = load i16, ptr %241, align 2, !tbaa !168
  %243 = sext i16 %242 to i32
  %244 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %243, i32 noundef 2, i32 noundef %123)
  br label %245

245:                                              ; preds = %227, %222, %240, %198
  %246 = phi ptr [ %244, %240 ], [ null, %198 ], [ %210, %222 ], [ %229, %227 ]
  %247 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %248 = load i16, ptr %247, align 2, !tbaa !168
  %249 = sext i16 %248 to i32
  call fastcc void @QMC_initPixel(ptr noundef %246, i32 noundef %249)
  %250 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0x46293E5940000000, ptr %250, align 4, !tbaa !108
  %251 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0x46293E5940000000, ptr %251, align 4, !tbaa !108
  store float 0x46293E5940000000, ptr %9, align 4, !tbaa !108
  %252 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %252, align 4, !tbaa !108
  %253 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %253, align 4, !tbaa !108
  store float 0xC6293E5940000000, ptr %10, align 4, !tbaa !108
  %254 = icmp sgt i32 %199, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = zext nneg i32 %199 to i64
  br label %257

257:                                              ; preds = %255, %257
  %258 = phi i64 [ 0, %255 ], [ %260, %257 ]
  %259 = getelementptr inbounds [16 x [3 x float]], ptr %12, i64 0, i64 %258
  call void @minmax_v3v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %259) #9
  %260 = add nuw nsw i64 %258, 1
  %261 = icmp eq i64 %260, %256
  br i1 %261, label %262, label %257, !llvm.loop !238

262:                                              ; preds = %257, %245
  %263 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !116
  %265 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %264, i64 0, i32 11
  %266 = load i16, ptr %265, align 8, !tbaa !93
  %267 = and i16 %266, 2
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %264, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %270, ptr noundef nonnull %9) #9
  %271 = load ptr, ptr %263, align 8, !tbaa !116
  %272 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %271, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %272, ptr noundef nonnull %10) #9
  br label %273

273:                                              ; preds = %269, %262
  %274 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %274, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  store ptr %11, ptr %25, align 8, !tbaa !206
  %275 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 10
  store i32 1, ptr %275, align 4, !tbaa !202
  %276 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 9
  store i32 2, ptr %276, align 8, !tbaa !203
  %277 = icmp sgt i32 %123, 0
  br i1 %277, label %278, label %638

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16
  %280 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %281 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16, i32 1
  %282 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 52
  %283 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 53
  %284 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 2
  %285 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 5
  %286 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 5
  %287 = getelementptr inbounds float, ptr %8, i64 1
  %288 = getelementptr inbounds float, ptr %8, i64 2
  %289 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 64
  %290 = getelementptr inbounds float, ptr %15, i64 1
  %291 = getelementptr inbounds float, ptr %15, i64 2
  %292 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 52
  %293 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 2
  %294 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 5
  %295 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 5
  %296 = getelementptr inbounds float, ptr %8, i64 1
  %297 = getelementptr inbounds float, ptr %8, i64 2
  %298 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %299 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %300 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %301 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %302 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %303 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %304 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %305 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %306 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %307 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %308 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %309 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %310 = getelementptr inbounds float, ptr %17, i64 1
  %311 = getelementptr inbounds float, ptr %17, i64 2
  %312 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1
  %313 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 1
  %314 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 2
  %315 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 2
  %316 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %317 = getelementptr inbounds float, ptr %2, i64 1
  %318 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %319 = getelementptr inbounds float, ptr %2, i64 2
  %320 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %321 = getelementptr inbounds float, ptr %2, i64 3
  %322 = icmp slt i32 %123, 5
  %323 = fcmp ule float %85, 0.000000e+00
  %324 = select i1 %322, i1 true, i1 %323
  %325 = udiv i32 %123, 3
  %326 = fsub float 1.000000e+00, %85
  %327 = getelementptr inbounds float, ptr %2, i64 3
  %328 = fsub float 1.000000e+00, %85
  %329 = fmul float %85, 5.000000e-01
  %330 = getelementptr inbounds float, ptr %2, i64 2
  %331 = getelementptr inbounds float, ptr %2, i64 1
  %332 = zext nneg i32 %325 to i64
  br label %333

333:                                              ; preds = %634, %278
  %334 = phi i64 [ 0, %278 ], [ %577, %634 ]
  %335 = phi float [ 0.000000e+00, %278 ], [ %576, %634 ]
  %336 = phi float [ 0.000000e+00, %278 ], [ %575, %634 ]
  %337 = phi float [ 0.000000e+00, %278 ], [ %574, %634 ]
  %338 = phi float [ 0.000000e+00, %278 ], [ %573, %634 ]
  %339 = load ptr, ptr %263, align 8, !tbaa !116
  store ptr %339, ptr %279, align 8, !tbaa !200
  %340 = load ptr, ptr %280, align 8, !tbaa !119
  store ptr %340, ptr %281, align 8, !tbaa !201
  %341 = trunc i64 %334 to i32
  %342 = srem i32 %341, %199
  %343 = zext nneg i32 %342 to i64
  %344 = getelementptr inbounds [16 x [3 x float]], ptr %12, i64 0, i64 %343
  %345 = load float, ptr %344, align 4, !tbaa !108
  %346 = getelementptr inbounds float, ptr %344, i64 1
  %347 = load float, ptr %346, align 4, !tbaa !108
  %348 = getelementptr inbounds float, ptr %344, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !108
  br i1 %96, label %350, label %480

350:                                              ; preds = %333
  %351 = load i16, ptr %48, align 8, !tbaa !232
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %353, label %432

353:                                              ; preds = %350
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %354 = fsub float %345, %78
  store float %354, ptr %15, align 4, !tbaa !108
  %355 = fsub float %347, %77
  store float %355, ptr %290, align 4, !tbaa !108
  %356 = fsub float %349, %76
  store float %356, ptr %291, align 4, !tbaa !108
  %357 = fmul float %355, %355
  %358 = call float @llvm.fmuladd.f32(float %354, float %354, float %357)
  %359 = call float @llvm.fmuladd.f32(float %356, float %356, float %358)
  %360 = fcmp ogt float %359, 0x38AA95A5C0000000
  br i1 %360, label %361, label %370

361:                                              ; preds = %353
  %362 = call float @sqrtf(float noundef %359) #9
  %363 = fdiv float 1.000000e+00, %362
  %364 = load float, ptr %15, align 4, !tbaa !108
  %365 = fmul float %364, %363
  store float %365, ptr %15, align 4, !tbaa !108
  %366 = load float, ptr %290, align 4, !tbaa !108
  %367 = fmul float %363, %366
  store float %367, ptr %290, align 4, !tbaa !108
  %368 = load float, ptr %291, align 4, !tbaa !108
  %369 = fmul float %363, %368
  br label %371

370:                                              ; preds = %353
  store float 0.000000e+00, ptr %15, align 4, !tbaa !108
  store float 0.000000e+00, ptr %290, align 4, !tbaa !108
  br label %371

371:                                              ; preds = %370, %361
  %372 = phi float [ 0.000000e+00, %370 ], [ %369, %361 ]
  store float %372, ptr %291, align 4, !tbaa !108
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %373 = load float, ptr %292, align 8, !tbaa !141
  %374 = load i32, ptr %293, align 8, !tbaa !170
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %376, label %395

376:                                              ; preds = %371
  %377 = load i16, ptr %247, align 2, !tbaa !168
  %378 = load ptr, ptr %295, align 8, !tbaa !154
  %379 = shl nuw nsw i64 %334, 1
  %380 = getelementptr inbounds double, ptr %378, i64 %379
  %381 = load double, ptr %380, align 8, !tbaa !171
  %382 = sext i16 %377 to i64
  %383 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 6, i64 %382
  %384 = load double, ptr %383, align 8, !tbaa !171
  %385 = fadd double %381, %384
  %386 = call double @fmod(double noundef %385, double noundef 1.000000e+00) #9
  %387 = load ptr, ptr %295, align 8, !tbaa !154
  %388 = or disjoint i64 %379, 1
  %389 = getelementptr inbounds double, ptr %387, i64 %388
  %390 = load double, ptr %389, align 8, !tbaa !171
  %391 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 6, i64 %382, i64 1
  %392 = load double, ptr %391, align 8, !tbaa !171
  %393 = fadd double %390, %392
  %394 = call double @fmod(double noundef %393, double noundef 1.000000e+00) #9
  br label %403

395:                                              ; preds = %371
  %396 = load ptr, ptr %294, align 8, !tbaa !154
  %397 = shl nuw nsw i64 %334, 1
  %398 = getelementptr inbounds double, ptr %396, i64 %397
  %399 = load double, ptr %398, align 8, !tbaa !171
  %400 = or disjoint i64 %397, 1
  %401 = getelementptr inbounds double, ptr %396, i64 %400
  %402 = load double, ptr %401, align 8, !tbaa !171
  br label %403

403:                                              ; preds = %376, %395
  %404 = phi double [ %394, %376 ], [ %402, %395 ]
  %405 = phi double [ %386, %376 ], [ %399, %395 ]
  %406 = fmul double %405, 2.000000e+00
  %407 = fmul double %406, 0x400921FB54442D18
  %408 = fptrunc double %407 to float
  %409 = call double @sqrt(double noundef %404) #9
  %410 = fptrunc double %409 to float
  %411 = call float @cosf(float noundef %408) #9
  %412 = fmul float %411, %410
  %413 = fmul float %373, %412
  %414 = fmul float %413, 5.000000e-01
  store float %414, ptr %8, align 4, !tbaa !108
  %415 = call float @sinf(float noundef %408) #9
  %416 = fmul float %415, %410
  %417 = fmul float %373, %416
  %418 = fmul float %417, 5.000000e-01
  store float %418, ptr %296, align 4, !tbaa !108
  store float 0.000000e+00, ptr %297, align 4, !tbaa !108
  %419 = load float, ptr %8, align 4, !tbaa !108
  %420 = load float, ptr %13, align 4, !tbaa !108
  %421 = load float, ptr %14, align 4, !tbaa !108
  %422 = fmul float %418, %421
  %423 = call float @llvm.fmuladd.f32(float %419, float %420, float %422)
  %424 = load float, ptr %298, align 4, !tbaa !108
  %425 = load float, ptr %299, align 4, !tbaa !108
  %426 = fmul float %418, %425
  %427 = call float @llvm.fmuladd.f32(float %419, float %424, float %426)
  %428 = load float, ptr %300, align 4, !tbaa !108
  %429 = load float, ptr %301, align 4, !tbaa !108
  %430 = fmul float %418, %429
  %431 = call float @llvm.fmuladd.f32(float %419, float %428, float %430)
  store float %423, ptr %8, align 4, !tbaa !108
  store float %427, ptr %296, align 4, !tbaa !108
  store float %431, ptr %297, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  br label %473

432:                                              ; preds = %350
  %433 = load float, ptr %282, align 8, !tbaa !141
  %434 = load float, ptr %283, align 4, !tbaa !142
  %435 = load i32, ptr %284, align 8, !tbaa !170
  %436 = icmp eq i32 %435, 2
  br i1 %436, label %437, label %456

437:                                              ; preds = %432
  %438 = load i16, ptr %247, align 2, !tbaa !168
  %439 = load ptr, ptr %286, align 8, !tbaa !154
  %440 = shl nuw nsw i64 %334, 1
  %441 = getelementptr inbounds double, ptr %439, i64 %440
  %442 = load double, ptr %441, align 8, !tbaa !171
  %443 = sext i16 %438 to i64
  %444 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 6, i64 %443
  %445 = load double, ptr %444, align 8, !tbaa !171
  %446 = fadd double %442, %445
  %447 = call double @fmod(double noundef %446, double noundef 1.000000e+00) #9
  %448 = load ptr, ptr %286, align 8, !tbaa !154
  %449 = or disjoint i64 %440, 1
  %450 = getelementptr inbounds double, ptr %448, i64 %449
  %451 = load double, ptr %450, align 8, !tbaa !171
  %452 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 6, i64 %443, i64 1
  %453 = load double, ptr %452, align 8, !tbaa !171
  %454 = fadd double %451, %453
  %455 = call double @fmod(double noundef %454, double noundef 1.000000e+00) #9
  br label %464

456:                                              ; preds = %432
  %457 = load ptr, ptr %285, align 8, !tbaa !154
  %458 = shl nuw nsw i64 %334, 1
  %459 = getelementptr inbounds double, ptr %457, i64 %458
  %460 = load double, ptr %459, align 8, !tbaa !171
  %461 = or disjoint i64 %458, 1
  %462 = getelementptr inbounds double, ptr %457, i64 %461
  %463 = load double, ptr %462, align 8, !tbaa !171
  br label %464

464:                                              ; preds = %437, %456
  %465 = phi double [ %455, %437 ], [ %463, %456 ]
  %466 = phi double [ %447, %437 ], [ %460, %456 ]
  %467 = fadd double %466, -5.000000e-01
  %468 = fptrunc double %467 to float
  %469 = fmul float %433, %468
  store float %469, ptr %8, align 4, !tbaa !108
  %470 = fadd double %465, -5.000000e-01
  %471 = fptrunc double %470 to float
  %472 = fmul float %434, %471
  store float %472, ptr %287, align 4, !tbaa !108
  store float 0.000000e+00, ptr %288, align 4, !tbaa !108
  call void @mul_m3_v3(ptr noundef nonnull %289, ptr noundef nonnull %8) #9
  br label %473

473:                                              ; preds = %464, %403
  %474 = load float, ptr %8, align 4, !tbaa !108
  %475 = fadd float %78, %474
  %476 = load float, ptr %302, align 4, !tbaa !108
  %477 = fadd float %77, %476
  %478 = load float, ptr %303, align 4, !tbaa !108
  %479 = fadd float %76, %478
  br label %480

480:                                              ; preds = %473, %333
  %481 = phi float [ %475, %473 ], [ %78, %333 ]
  %482 = phi float [ %477, %473 ], [ %77, %333 ]
  %483 = phi float [ %479, %473 ], [ %76, %333 ]
  %484 = load ptr, ptr %128, align 8, !tbaa !224
  %485 = icmp eq ptr %484, null
  br i1 %485, label %523, label %486

486:                                              ; preds = %480
  %487 = load float, ptr %304, align 4, !tbaa !108
  %488 = load float, ptr %305, align 4, !tbaa !108
  %489 = fmul float %488, %488
  %490 = call float @llvm.fmuladd.f32(float %487, float %487, float %489)
  %491 = load float, ptr %306, align 4, !tbaa !108
  %492 = call float @llvm.fmuladd.f32(float %491, float %491, float %490)
  %493 = call float @sqrtf(float noundef %492) #9
  %494 = load float, ptr %307, align 4, !tbaa !108
  %495 = load float, ptr %308, align 4, !tbaa !108
  %496 = fmul float %495, %495
  %497 = call float @llvm.fmuladd.f32(float %494, float %494, float %496)
  %498 = load float, ptr %309, align 4, !tbaa !108
  %499 = call float @llvm.fmuladd.f32(float %498, float %498, float %497)
  %500 = call float @sqrtf(float noundef %499) #9
  %501 = fadd float %493, %500
  %502 = fsub float %345, %481
  %503 = fsub float %347, %482
  %504 = fsub float %349, %483
  %505 = fmul float %503, %503
  %506 = call float @llvm.fmuladd.f32(float %502, float %502, float %505)
  %507 = call float @llvm.fmuladd.f32(float %504, float %504, float %506)
  %508 = fcmp ogt float %507, 0x38AA95A5C0000000
  br i1 %508, label %509, label %515

509:                                              ; preds = %486
  %510 = call float @sqrtf(float noundef %507) #9
  %511 = fdiv float 1.000000e+00, %510
  %512 = fmul float %502, %511
  %513 = fmul float %503, %511
  %514 = fmul float %504, %511
  br label %515

515:                                              ; preds = %509, %486
  %516 = phi float [ %513, %509 ], [ 0.000000e+00, %486 ]
  %517 = phi float [ %512, %509 ], [ 0.000000e+00, %486 ]
  %518 = phi float [ %514, %509 ], [ 0.000000e+00, %486 ]
  %519 = fmul float %501, -5.000000e-01
  %520 = call float @llvm.fmuladd.f32(float %519, float %517, float %345)
  %521 = call float @llvm.fmuladd.f32(float %519, float %516, float %347)
  %522 = call float @llvm.fmuladd.f32(float %519, float %518, float %349)
  br label %523

523:                                              ; preds = %515, %480
  %524 = phi float [ %349, %480 ], [ %522, %515 ]
  %525 = phi float [ %347, %480 ], [ %521, %515 ]
  %526 = phi float [ %345, %480 ], [ %520, %515 ]
  store float %526, ptr %17, align 8, !tbaa !108
  store float %525, ptr %310, align 4, !tbaa !108
  store float %524, ptr %311, align 8, !tbaa !108
  %527 = fsub float %481, %526
  store float %527, ptr %312, align 4, !tbaa !108
  %528 = fsub float %482, %525
  store float %528, ptr %313, align 8, !tbaa !108
  %529 = fsub float %483, %524
  store float %529, ptr %314, align 4, !tbaa !108
  %530 = fmul float %528, %528
  %531 = call float @llvm.fmuladd.f32(float %527, float %527, float %530)
  %532 = call float @llvm.fmuladd.f32(float %529, float %529, float %531)
  %533 = fcmp ogt float %532, 0x38AA95A5C0000000
  br i1 %533, label %534, label %543

534:                                              ; preds = %523
  %535 = call float @sqrtf(float noundef %532) #9
  %536 = fdiv float 1.000000e+00, %535
  %537 = load float, ptr %312, align 4, !tbaa !108
  %538 = fmul float %537, %536
  store float %538, ptr %312, align 4, !tbaa !108
  %539 = load float, ptr %313, align 8, !tbaa !108
  %540 = fmul float %536, %539
  store float %540, ptr %313, align 8, !tbaa !108
  %541 = load float, ptr %314, align 4, !tbaa !108
  %542 = fmul float %536, %541
  br label %544

543:                                              ; preds = %523
  store float 0.000000e+00, ptr %312, align 4, !tbaa !108
  store float 0.000000e+00, ptr %313, align 8, !tbaa !108
  br label %544

544:                                              ; preds = %543, %534
  %545 = phi float [ 0.000000e+00, %543 ], [ %542, %534 ]
  %546 = phi float [ 0.000000e+00, %543 ], [ %535, %534 ]
  store float %545, ptr %314, align 4, !tbaa !108
  store float %546, ptr %315, align 8, !tbaa !115
  %547 = load ptr, ptr %263, align 8, !tbaa !116
  call void @RE_instance_rotate_ray(ptr noundef %547, ptr noundef nonnull %17) #9
  %548 = load i32, ptr %89, align 8, !tbaa !134
  %549 = icmp eq i32 %548, 2
  br i1 %549, label %550, label %566

550:                                              ; preds = %544
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %17, ptr noundef %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %16)
  %551 = load float, ptr %16, align 16, !tbaa !108
  %552 = load float, ptr %2, align 4, !tbaa !108
  %553 = fadd float %551, %552
  store float %553, ptr %2, align 4, !tbaa !108
  %554 = load float, ptr %316, align 4, !tbaa !108
  %555 = load float, ptr %317, align 4, !tbaa !108
  %556 = fadd float %554, %555
  store float %556, ptr %317, align 4, !tbaa !108
  %557 = load float, ptr %318, align 8, !tbaa !108
  %558 = load float, ptr %319, align 4, !tbaa !108
  %559 = fadd float %557, %558
  store float %559, ptr %319, align 4, !tbaa !108
  %560 = load float, ptr %320, align 4, !tbaa !108
  %561 = load float, ptr %321, align 4, !tbaa !108
  %562 = fadd float %560, %561
  store float %562, ptr %321, align 4, !tbaa !108
  %563 = call float @llvm.fmuladd.f32(float %551, float %551, float %336)
  %564 = call float @llvm.fmuladd.f32(float %554, float %554, float %337)
  %565 = call float @llvm.fmuladd.f32(float %557, float %557, float %338)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  br label %572

566:                                              ; preds = %544
  %567 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %568 = call i32 @RE_rayobject_raycast(ptr noundef %567, ptr noundef nonnull %17) #9
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %566
  %571 = fadd float %335, 1.000000e+00
  br label %572

572:                                              ; preds = %570, %566, %550
  %573 = phi float [ %565, %550 ], [ %338, %566 ], [ %338, %570 ]
  %574 = phi float [ %564, %550 ], [ %337, %566 ], [ %337, %570 ]
  %575 = phi float [ %563, %550 ], [ %336, %566 ], [ %336, %570 ]
  %576 = phi float [ %335, %550 ], [ %335, %566 ], [ %571, %570 ]
  %577 = add nuw i64 %334, 1
  %578 = load i16, ptr %79, align 2, !tbaa !233
  %579 = icmp ne i16 %578, 1
  %580 = icmp ult i64 %334, %332
  %581 = or i1 %324, %580
  %582 = select i1 %579, i1 true, i1 %581
  br i1 %582, label %631, label %583

583:                                              ; preds = %572
  %584 = load i32, ptr %89, align 8, !tbaa !134
  %585 = icmp eq i32 %584, 2
  br i1 %585, label %586, label %621

586:                                              ; preds = %583
  %587 = load float, ptr %327, align 4, !tbaa !108
  %588 = trunc i64 %577 to i32
  %589 = sitofp i32 %588 to float
  %590 = fdiv float %587, %589
  %591 = fcmp ogt float %590, %328
  %592 = fcmp olt float %590, %85
  %593 = or i1 %591, %592
  br i1 %593, label %635, label %594

594:                                              ; preds = %586
  %595 = load float, ptr %2, align 4, !tbaa !108
  %596 = fdiv float %595, %589
  %597 = fdiv float %575, %589
  %598 = fneg float %596
  %599 = call float @llvm.fmuladd.f32(float %598, float %596, float %597)
  %600 = fmul float %599, 0x3FD99999A0000000
  %601 = fcmp olt float %600, %329
  br i1 %601, label %602, label %631

602:                                              ; preds = %594
  %603 = load float, ptr %330, align 4, !tbaa !108
  %604 = fdiv float %603, %589
  %605 = fneg float %604
  %606 = fdiv float %573, %589
  %607 = call float @llvm.fmuladd.f32(float %605, float %604, float %606)
  %608 = load float, ptr %331, align 4, !tbaa !108
  %609 = fdiv float %608, %589
  %610 = fneg float %609
  %611 = fdiv float %574, %589
  %612 = call float @llvm.fmuladd.f32(float %610, float %609, float %611)
  %613 = fmul float %612, 0x3FD3333340000000
  %614 = fcmp uge float %613, %329
  %615 = fmul float %607, 0x3FE3333340000000
  %616 = fcmp uge float %615, %329
  %617 = select i1 %614, i1 true, i1 %616
  %618 = trunc i64 %577 to i32
  %619 = icmp sgt i32 %123, %618
  %620 = select i1 %617, i1 %619, i1 false
  br i1 %620, label %634, label %635

621:                                              ; preds = %583
  %622 = trunc i64 %577 to i32
  %623 = sitofp i32 %622 to float
  %624 = fdiv float %576, %623
  %625 = fcmp ule float %624, %326
  %626 = fcmp uge float %624, %85
  %627 = and i1 %625, %626
  %628 = trunc i64 %577 to i32
  %629 = icmp sgt i32 %123, %628
  %630 = select i1 %627, i1 %629, i1 false
  br i1 %630, label %634, label %635

631:                                              ; preds = %594, %572
  %632 = trunc i64 %577 to i32
  %633 = icmp sgt i32 %123, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %631, %602, %621
  br label %333, !llvm.loop !239

635:                                              ; preds = %602, %621, %586, %631
  %636 = trunc i64 %577 to i32
  %637 = sitofp i32 %636 to float
  br label %638

638:                                              ; preds = %635, %273
  %639 = phi float [ 0.000000e+00, %273 ], [ %576, %635 ]
  %640 = phi float [ 0.000000e+00, %273 ], [ %637, %635 ]
  %641 = load i32, ptr %89, align 8, !tbaa !134
  %642 = icmp eq i32 %641, 2
  br i1 %642, label %643, label %655

643:                                              ; preds = %638
  %644 = load float, ptr %2, align 4, !tbaa !108
  %645 = fdiv float %644, %640
  store float %645, ptr %2, align 4, !tbaa !108
  %646 = getelementptr inbounds float, ptr %2, i64 1
  %647 = load float, ptr %646, align 4, !tbaa !108
  %648 = fdiv float %647, %640
  store float %648, ptr %646, align 4, !tbaa !108
  %649 = getelementptr inbounds float, ptr %2, i64 2
  %650 = load float, ptr %649, align 4, !tbaa !108
  %651 = fdiv float %650, %640
  store float %651, ptr %649, align 4, !tbaa !108
  %652 = getelementptr inbounds float, ptr %2, i64 3
  %653 = load float, ptr %652, align 4, !tbaa !108
  %654 = fdiv float %653, %640
  store float %654, ptr %652, align 4, !tbaa !108
  br label %659

655:                                              ; preds = %638
  %656 = fdiv float %639, %640
  %657 = fsub float 1.000000e+00, %656
  %658 = getelementptr inbounds float, ptr %2, i64 3
  store float %657, ptr %658, align 4, !tbaa !108
  br label %659

659:                                              ; preds = %655, %643
  %660 = icmp eq ptr %246, null
  br i1 %660, label %663, label %661

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.QMCSampler, ptr %246, i64 0, i32 4
  store i32 0, ptr %662, align 8, !tbaa !173
  br label %663

663:                                              ; preds = %659, %661
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %975

664:                                              ; preds = %75
  %665 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 49
  %666 = load i16, ptr %665, align 8, !tbaa !138
  %667 = icmp slt i16 %666, 2
  br i1 %667, label %668, label %727

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %670 = load ptr, ptr %669, align 8, !tbaa !116
  %671 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16
  store ptr %670, ptr %671, align 8, !tbaa !200
  %672 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !119
  %674 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16, i32 1
  store ptr %673, ptr %674, align 8, !tbaa !201
  %675 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %675, align 4, !tbaa !108
  %676 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %677 = load float, ptr %676, align 4, !tbaa !108
  store float %677, ptr %17, align 8, !tbaa !108
  %678 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %679 = load float, ptr %678, align 4, !tbaa !108
  %680 = getelementptr inbounds float, ptr %17, i64 1
  store float %679, ptr %680, align 4, !tbaa !108
  %681 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %682 = load float, ptr %681, align 4, !tbaa !108
  %683 = getelementptr inbounds float, ptr %17, i64 2
  store float %682, ptr %683, align 8, !tbaa !108
  %684 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1
  %685 = fsub float %78, %677
  store float %685, ptr %684, align 4, !tbaa !108
  %686 = fsub float %77, %679
  %687 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 1
  store float %686, ptr %687, align 8, !tbaa !108
  %688 = fsub float %76, %682
  %689 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 2
  store float %688, ptr %689, align 4, !tbaa !108
  %690 = fmul float %686, %686
  %691 = tail call float @llvm.fmuladd.f32(float %685, float %685, float %690)
  %692 = tail call float @llvm.fmuladd.f32(float %688, float %688, float %691)
  %693 = fcmp ogt float %692, 0x38AA95A5C0000000
  br i1 %693, label %694, label %703

694:                                              ; preds = %668
  %695 = tail call float @sqrtf(float noundef %692) #9
  %696 = fdiv float 1.000000e+00, %695
  %697 = load float, ptr %684, align 4, !tbaa !108
  %698 = fmul float %697, %696
  store float %698, ptr %684, align 4, !tbaa !108
  %699 = load float, ptr %687, align 8, !tbaa !108
  %700 = fmul float %696, %699
  store float %700, ptr %687, align 8, !tbaa !108
  %701 = load float, ptr %689, align 4, !tbaa !108
  %702 = fmul float %696, %701
  br label %704

703:                                              ; preds = %668
  store float 0.000000e+00, ptr %684, align 4, !tbaa !108
  store float 0.000000e+00, ptr %687, align 8, !tbaa !108
  br label %704

704:                                              ; preds = %694, %703
  %705 = phi float [ 0.000000e+00, %703 ], [ %702, %694 ]
  %706 = phi float [ 0.000000e+00, %703 ], [ %695, %694 ]
  store float %705, ptr %689, align 4, !tbaa !108
  %707 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 2
  store float %706, ptr %707, align 8, !tbaa !115
  %708 = load ptr, ptr %669, align 8, !tbaa !116
  call void @RE_instance_rotate_ray(ptr noundef %708, ptr noundef nonnull %17) #9
  %709 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 7
  %710 = load i32, ptr %709, align 8, !tbaa !134
  %711 = icmp eq i32 %710, 2
  br i1 %711, label %712, label %722

712:                                              ; preds = %704
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %17, ptr noundef nonnull %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %18)
  %713 = load float, ptr %18, align 16, !tbaa !108
  store float %713, ptr %2, align 4, !tbaa !108
  %714 = getelementptr inbounds float, ptr %18, i64 1
  %715 = load float, ptr %714, align 4, !tbaa !108
  %716 = getelementptr inbounds float, ptr %2, i64 1
  store float %715, ptr %716, align 4, !tbaa !108
  %717 = getelementptr inbounds float, ptr %18, i64 2
  %718 = load float, ptr %717, align 8, !tbaa !108
  %719 = getelementptr inbounds float, ptr %2, i64 2
  store float %718, ptr %719, align 4, !tbaa !108
  %720 = getelementptr inbounds float, ptr %18, i64 3
  %721 = load float, ptr %720, align 4, !tbaa !108
  store float %721, ptr %675, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #9
  br label %975

722:                                              ; preds = %704
  %723 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %724 = call i32 @RE_rayobject_raycast(ptr noundef %723, ptr noundef nonnull %17) #9
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %975, label %726

726:                                              ; preds = %722
  store float 0.000000e+00, ptr %675, align 4, !tbaa !108
  br label %975

727:                                              ; preds = %664
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %5) #9
  %728 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 7
  %729 = load i32, ptr %728, align 8, !tbaa !134
  %730 = icmp eq i32 %729, 2
  br i1 %730, label %731, label %732

731:                                              ; preds = %727
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %734

732:                                              ; preds = %727
  %733 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %733, align 4, !tbaa !108
  br label %734

734:                                              ; preds = %732, %731
  %735 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %736 = load i16, ptr %735, align 2, !tbaa !168
  %737 = sext i16 %736 to i32
  %738 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %739 = load i32, ptr %738, align 4, !tbaa !219
  %740 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %741 = load i32, ptr %740, align 8, !tbaa !220
  %742 = zext nneg i16 %666 to i32
  %743 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 47
  %744 = load i16, ptr %743, align 4, !tbaa !240
  %745 = zext i16 %744 to i32
  %746 = and i32 %745, 8
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %812, label %748

748:                                              ; preds = %734
  %749 = sext i16 %736 to i64
  %750 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 50, i64 %749
  %751 = load i16, ptr %750, align 2, !tbaa !241
  %752 = sext i16 %751 to i32
  %753 = icmp eq i32 %739, %752
  br i1 %753, label %754, label %759

754:                                              ; preds = %748
  %755 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 51, i64 %749
  %756 = load i16, ptr %755, align 2, !tbaa !241
  %757 = sext i16 %756 to i32
  %758 = icmp eq i32 %741, %757
  br i1 %758, label %804, label %759

759:                                              ; preds = %754, %748
  %760 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 58
  %761 = load ptr, ptr %760, align 8, !tbaa !140
  %762 = shl nsw i32 %737, 1
  %763 = add nsw i32 %762, 2
  %764 = mul nsw i32 %763, %742
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float, ptr %761, i64 %765
  %767 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 52
  %768 = load float, ptr %767, align 8, !tbaa !141
  %769 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 53
  %770 = load float, ptr %769, align 4, !tbaa !142
  %771 = tail call float @BLI_thread_frand(i32 noundef %737) #9
  %772 = tail call float @BLI_thread_frand(i32 noundef %737) #9
  %773 = fmul float %768, %771
  %774 = fmul float %770, %772
  %775 = fmul float %768, 5.000000e-01
  %776 = fmul float %770, 5.000000e-01
  br label %777

777:                                              ; preds = %759, %795
  %778 = phi i32 [ %742, %759 ], [ %796, %795 ]
  %779 = phi ptr [ %761, %759 ], [ %797, %795 ]
  %780 = phi ptr [ %766, %759 ], [ %798, %795 ]
  %781 = load float, ptr %779, align 4, !tbaa !108
  %782 = fadd float %773, %781
  store float %782, ptr %780, align 4, !tbaa !108
  %783 = getelementptr inbounds float, ptr %779, i64 1
  %784 = load float, ptr %783, align 4, !tbaa !108
  %785 = fadd float %774, %784
  %786 = getelementptr inbounds float, ptr %780, i64 1
  store float %785, ptr %786, align 4, !tbaa !108
  %787 = fcmp ogt float %782, %775
  br i1 %787, label %788, label %790

788:                                              ; preds = %777
  %789 = fsub float %782, %768
  store float %789, ptr %780, align 4, !tbaa !108
  br label %790

790:                                              ; preds = %788, %777
  %791 = load float, ptr %786, align 4, !tbaa !108
  %792 = fcmp ogt float %791, %776
  br i1 %792, label %793, label %795

793:                                              ; preds = %790
  %794 = fsub float %791, %770
  store float %794, ptr %786, align 4, !tbaa !108
  br label %795

795:                                              ; preds = %793, %790
  %796 = add nsw i32 %778, -1
  %797 = getelementptr inbounds float, ptr %779, i64 2
  %798 = getelementptr inbounds float, ptr %780, i64 2
  %799 = icmp sgt i32 %778, 1
  br i1 %799, label %777, label %800, !llvm.loop !149

800:                                              ; preds = %795
  %801 = trunc i32 %739 to i16
  store i16 %801, ptr %750, align 2, !tbaa !241
  %802 = trunc i32 %741 to i16
  %803 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 51, i64 %749
  store i16 %802, ptr %803, align 2, !tbaa !241
  br label %804

804:                                              ; preds = %800, %754
  %805 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 58
  %806 = load ptr, ptr %805, align 8, !tbaa !140
  %807 = shl nsw i32 %737, 1
  %808 = add nsw i32 %807, 2
  %809 = mul nsw i32 %808, %742
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds float, ptr %806, i64 %810
  br label %826

812:                                              ; preds = %734
  %813 = and i32 %745, 4
  %814 = icmp eq i32 %813, 0
  %815 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 58
  %816 = load ptr, ptr %815, align 8, !tbaa !140
  br i1 %814, label %826, label %817

817:                                              ; preds = %812
  %818 = shl nuw nsw i32 %742, 1
  %819 = and i32 %739, 1
  %820 = shl i32 %741, 1
  %821 = and i32 %820, 2
  %822 = or disjoint i32 %821, %819
  %823 = mul nuw nsw i32 %818, %822
  %824 = zext nneg i32 %823 to i64
  %825 = getelementptr inbounds float, ptr %816, i64 %824
  br label %826

826:                                              ; preds = %812, %817, %804
  %827 = phi ptr [ %811, %804 ], [ %825, %817 ], [ %816, %812 ]
  %828 = load i16, ptr %665, align 8, !tbaa !138
  %829 = sext i16 %828 to i32
  %830 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %831 = load i32, ptr %830, align 4, !tbaa !227
  switch i16 %828, label %840 [
    i16 4, label %832
    i16 9, label %837
  ]

832:                                              ; preds = %826
  %833 = ashr i32 %831, 4
  %834 = ashr i32 %831, 8
  %835 = or i32 %834, %833
  %836 = or i32 %835, %831
  br label %840

837:                                              ; preds = %826
  %838 = ashr i32 %831, 9
  %839 = or i32 %838, %831
  br label %840

840:                                              ; preds = %837, %832, %826
  %841 = phi i32 [ %836, %832 ], [ %839, %837 ], [ %831, %826 ]
  %842 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %843 = load float, ptr %842, align 4, !tbaa !108
  store float %843, ptr %17, align 8, !tbaa !108
  %844 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %845 = load float, ptr %844, align 4, !tbaa !108
  %846 = getelementptr inbounds float, ptr %17, i64 1
  store float %845, ptr %846, align 4, !tbaa !108
  %847 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %848 = load float, ptr %847, align 4, !tbaa !108
  %849 = getelementptr inbounds float, ptr %17, i64 2
  store float %848, ptr %849, align 8, !tbaa !108
  %850 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %851 = load ptr, ptr %850, align 8, !tbaa !116
  call void @RE_instance_rotate_ray_start(ptr noundef %851, ptr noundef nonnull %17) #9
  %852 = load ptr, ptr %850, align 8, !tbaa !116
  %853 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16
  store ptr %852, ptr %853, align 8, !tbaa !200
  %854 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %855 = load ptr, ptr %854, align 8, !tbaa !119
  %856 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 16, i32 1
  store ptr %855, ptr %856, align 8, !tbaa !201
  %857 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %857, ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef nonnull %17) #9
  store ptr %5, ptr %25, align 8, !tbaa !206
  %858 = icmp eq i16 %828, 0
  br i1 %858, label %946, label %859

859:                                              ; preds = %840
  %860 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %861 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %862 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 64
  %863 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1
  %864 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 1
  %865 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 1, i64 2
  %866 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 2
  %867 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 10
  %868 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 9
  %869 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %870 = getelementptr inbounds float, ptr %2, i64 1
  %871 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %872 = getelementptr inbounds float, ptr %2, i64 2
  %873 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %874 = getelementptr inbounds float, ptr %2, i64 3
  br label %875

875:                                              ; preds = %859, %941
  %876 = phi i32 [ %829, %859 ], [ %890, %941 ]
  %877 = phi i32 [ -1, %859 ], [ %903, %941 ]
  %878 = phi float [ 0.000000e+00, %859 ], [ %943, %941 ]
  %879 = phi float [ 0.000000e+00, %859 ], [ %942, %941 ]
  %880 = phi ptr [ %827, %859 ], [ %944, %941 ]
  %881 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !235
  %882 = and i32 %881, 1
  %883 = icmp eq i32 %882, 0
  %884 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %885 = sext i16 %884 to i32
  br label %886

886:                                              ; preds = %875, %898
  %887 = phi i32 [ %876, %875 ], [ %890, %898 ]
  %888 = phi i32 [ %877, %875 ], [ %894, %898 ]
  %889 = phi ptr [ %880, %875 ], [ %899, %898 ]
  %890 = add nsw i32 %887, -1
  br i1 %883, label %901, label %891

891:                                              ; preds = %886
  %892 = add nsw i32 %888, 1
  %893 = icmp slt i32 %892, %885
  %894 = select i1 %893, i32 %892, i32 0
  %895 = shl nuw i32 1, %894
  %896 = and i32 %895, %841
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %901

898:                                              ; preds = %891
  %899 = getelementptr inbounds float, ptr %889, i64 2
  %900 = icmp eq i32 %890, 0
  br i1 %900, label %946, label %886, !llvm.loop !242

901:                                              ; preds = %891, %886
  %902 = phi ptr [ %889, %891 ], [ %880, %886 ]
  %903 = phi i32 [ %894, %891 ], [ %877, %886 ]
  %904 = load float, ptr %902, align 4, !tbaa !108
  store float %904, ptr %4, align 4, !tbaa !108
  %905 = getelementptr inbounds float, ptr %902, i64 1
  %906 = load float, ptr %905, align 4, !tbaa !108
  store float %906, ptr %860, align 4, !tbaa !108
  store float 0.000000e+00, ptr %861, align 4, !tbaa !108
  call void @mul_m3_v3(ptr noundef nonnull %862, ptr noundef nonnull %4) #9
  %907 = load float, ptr %4, align 4, !tbaa !108
  %908 = fadd float %78, %907
  %909 = load float, ptr %842, align 8, !tbaa !108
  %910 = fsub float %908, %909
  store float %910, ptr %863, align 4, !tbaa !108
  %911 = load float, ptr %860, align 4, !tbaa !108
  %912 = fadd float %77, %911
  %913 = load float, ptr %844, align 4, !tbaa !108
  %914 = fsub float %912, %913
  store float %914, ptr %864, align 8, !tbaa !108
  %915 = load float, ptr %861, align 4, !tbaa !108
  %916 = fadd float %76, %915
  %917 = load float, ptr %847, align 8, !tbaa !108
  %918 = fsub float %916, %917
  store float %918, ptr %865, align 4, !tbaa !108
  %919 = load ptr, ptr %850, align 8, !tbaa !116
  call void @RE_instance_rotate_ray_dir(ptr noundef %919, ptr noundef nonnull %17) #9
  store float 1.000000e+00, ptr %866, align 8, !tbaa !115
  store i32 1, ptr %867, align 4, !tbaa !202
  store i32 2, ptr %868, align 8, !tbaa !203
  %920 = load i32, ptr %728, align 8, !tbaa !134
  %921 = icmp eq i32 %920, 2
  br i1 %921, label %922, label %935

922:                                              ; preds = %901
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %17, ptr noundef %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %6)
  %923 = load float, ptr %6, align 16, !tbaa !108
  %924 = load float, ptr %2, align 4, !tbaa !108
  %925 = fadd float %923, %924
  store float %925, ptr %2, align 4, !tbaa !108
  %926 = load float, ptr %869, align 4, !tbaa !108
  %927 = load float, ptr %870, align 4, !tbaa !108
  %928 = fadd float %926, %927
  store float %928, ptr %870, align 4, !tbaa !108
  %929 = load float, ptr %871, align 8, !tbaa !108
  %930 = load float, ptr %872, align 4, !tbaa !108
  %931 = fadd float %929, %930
  store float %931, ptr %872, align 4, !tbaa !108
  %932 = load float, ptr %873, align 4, !tbaa !108
  %933 = load float, ptr %874, align 4, !tbaa !108
  %934 = fadd float %932, %933
  store float %934, ptr %874, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %941

935:                                              ; preds = %901
  %936 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %937 = call i32 @RE_rayobject_raycast(ptr noundef %936, ptr noundef nonnull %17) #9
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %941, label %939

939:                                              ; preds = %935
  %940 = fadd float %879, 1.000000e+00
  br label %941

941:                                              ; preds = %939, %935, %922
  %942 = phi float [ %879, %922 ], [ %940, %939 ], [ %879, %935 ]
  %943 = fadd float %878, 1.000000e+00
  %944 = getelementptr inbounds float, ptr %902, i64 2
  %945 = icmp eq i32 %890, 0
  br i1 %945, label %946, label %875, !llvm.loop !242

946:                                              ; preds = %941, %898, %840
  %947 = phi float [ 0.000000e+00, %840 ], [ %879, %898 ], [ %942, %941 ]
  %948 = phi float [ 0.000000e+00, %840 ], [ %878, %898 ], [ %943, %941 ]
  %949 = load i32, ptr %728, align 8, !tbaa !134
  %950 = icmp eq i32 %949, 2
  br i1 %950, label %951, label %963

951:                                              ; preds = %946
  %952 = load float, ptr %2, align 4, !tbaa !108
  %953 = fdiv float %952, %948
  store float %953, ptr %2, align 4, !tbaa !108
  %954 = getelementptr inbounds float, ptr %2, i64 1
  %955 = load float, ptr %954, align 4, !tbaa !108
  %956 = fdiv float %955, %948
  store float %956, ptr %954, align 4, !tbaa !108
  %957 = getelementptr inbounds float, ptr %2, i64 2
  %958 = load float, ptr %957, align 4, !tbaa !108
  %959 = fdiv float %958, %948
  store float %959, ptr %957, align 4, !tbaa !108
  %960 = getelementptr inbounds float, ptr %2, i64 3
  %961 = load float, ptr %960, align 4, !tbaa !108
  %962 = fdiv float %961, %948
  store float %962, ptr %960, align 4, !tbaa !108
  br label %974

963:                                              ; preds = %946
  %964 = load i16, ptr %743, align 4, !tbaa !240
  %965 = and i16 %964, 2
  %966 = icmp eq i16 %965, 0
  %967 = fdiv float %947, %948
  %968 = fsub float 1.000000e+00, %967
  br i1 %966, label %972, label %969

969:                                              ; preds = %963
  %970 = call float @sqrtf(float noundef %968) #9
  %971 = getelementptr inbounds float, ptr %2, i64 3
  store float %970, ptr %971, align 4, !tbaa !108
  br label %974

972:                                              ; preds = %963
  %973 = getelementptr inbounds float, ptr %2, i64 3
  store float %968, ptr %973, align 4, !tbaa !108
  br label %974

974:                                              ; preds = %951, %969, %972
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %975

975:                                              ; preds = %974, %722, %726, %712, %663
  %976 = load i32, ptr %36, align 8, !tbaa !159
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %985

978:                                              ; preds = %975
  %979 = getelementptr inbounds %struct.Isect, ptr %17, i64 0, i32 17
  %980 = load ptr, ptr %979, align 8, !tbaa !231
  %981 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %982 = load i16, ptr %981, align 2, !tbaa !168
  %983 = sext i16 %982 to i64
  %984 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %983
  store ptr %980, ptr %984, align 8, !tbaa !57
  br label %985

985:                                              ; preds = %978, %975
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %17) #9
  ret void
}

declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ray_trace_shadow_tra(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ShadeInput, align 8
  %7 = alloca %struct.ShadeResult, align 4
  %8 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !115
  %10 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %11 = tail call i32 @RE_rayobject_raycast(ptr noundef %10, ptr noundef %0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %179, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %6, i8 0, i64 1472, i1 false)
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %7) #9
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %15 = load i32, ptr %14, align 8, !tbaa !159
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 108
  store i32 %16, ptr %17, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 105
  %19 = load i32, ptr %18, align 4, !tbaa !227
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 105
  store i32 %19, ptr %20, align 4, !tbaa !227
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !168
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 114
  store i16 %22, ptr %23, align 2, !tbaa !168
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 119
  store i32 1, ptr %24, align 8, !tbaa !178
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 120
  store i32 16777215, ptr %25, align 4, !tbaa !164
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %27 = load i32, ptr %26, align 4, !tbaa !219
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 103
  store i32 %27, ptr %28, align 4, !tbaa !219
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 104
  %30 = load i32, ptr %29, align 8, !tbaa !220
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 104
  store i32 %30, ptr %31, align 8, !tbaa !220
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 117
  %33 = load i32, ptr %32, align 8, !tbaa !243
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 117
  store i32 %33, ptr %34, align 8, !tbaa !243
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 116
  %36 = load i16, ptr %35, align 2, !tbaa !135
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 116
  store i16 %36, ptr %37, align 2, !tbaa !135
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  tail call void @RE_instance_rotate_ray_restore(ptr noundef %39, ptr noundef %0) #9
  call void @shade_ray(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %40 = load ptr, ptr %6, align 8, !tbaa !120
  %41 = getelementptr inbounds %struct.Material, ptr %40, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !76
  switch i16 %42, label %154 [
    i16 0, label %43
    i16 2, label %131
  ]

43:                                               ; preds = %13
  %44 = and i32 %3, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %93, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Material, ptr %40, i64 0, i32 51
  %48 = load i32, ptr %47, align 4, !tbaa !161
  %49 = and i32 %48, 65536
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.Material, ptr %40, i64 0, i32 34
  %53 = load float, ptr %52, align 4, !tbaa !244
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %93

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29
  %57 = load float, ptr %56, align 8, !tbaa !108
  %58 = load float, ptr %0, align 8, !tbaa !108
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !108
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !108
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !108
  %67 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %68 = load float, ptr %67, align 8, !tbaa !108
  %69 = fsub float %66, %68
  %70 = fmul float %64, %64
  %71 = call float @llvm.fmuladd.f32(float %59, float %59, float %70)
  %72 = call float @llvm.fmuladd.f32(float %69, float %69, float %71)
  %73 = call float @sqrtf(float noundef %72) #9
  %74 = load ptr, ptr %6, align 8, !tbaa !120
  %75 = getelementptr inbounds %struct.Material, ptr %74, i64 0, i32 34
  %76 = load float, ptr %75, align 4, !tbaa !244
  %77 = fcmp ogt float %73, %76
  %78 = select i1 %77, float %76, float %73
  %79 = getelementptr inbounds %struct.Material, ptr %74, i64 0, i32 35
  %80 = load float, ptr %79, align 8, !tbaa !245
  %81 = fcmp olt float %80, 0.000000e+00
  br i1 %81, label %85, label %82

82:                                               ; preds = %55
  %83 = fcmp ogt float %80, 1.000000e+01
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %82, %55
  %86 = phi float [ 1.000000e+01, %84 ], [ %80, %82 ], [ 0.000000e+00, %55 ]
  %87 = call float @powf(float noundef %78, float noundef %86) #9
  %88 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %89 = load float, ptr %88, align 4, !tbaa !157
  %90 = fmul float %87, %89
  %91 = fcmp ogt float %90, 1.000000e+00
  %92 = select i1 %91, float 1.000000e+00, float %90
  store float %92, ptr %88, align 4, !tbaa !157
  br label %93

93:                                               ; preds = %85, %51, %46, %43
  %94 = phi float [ 1.000000e+00, %43 ], [ -1.000000e+00, %46 ], [ %78, %85 ], [ 1.000000e+00, %51 ]
  %95 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 6
  %96 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %97 = load float, ptr %96, align 4, !tbaa !157
  %98 = load ptr, ptr %6, align 8, !tbaa !120
  %99 = getelementptr inbounds %struct.Material, ptr %98, i64 0, i32 33
  %100 = load float, ptr %99, align 8, !tbaa !174
  %101 = fmul float %94, %100
  %102 = load float, ptr %95, align 4, !tbaa !108
  %103 = fadd float %102, -1.000000e+00
  %104 = call float @llvm.fmuladd.f32(float %101, float %103, float 1.000000e+00)
  %105 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 6, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !108
  %107 = fadd float %106, -1.000000e+00
  %108 = call float @llvm.fmuladd.f32(float %101, float %107, float 1.000000e+00)
  %109 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 6, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !108
  %111 = fadd float %110, -1.000000e+00
  %112 = call float @llvm.fmuladd.f32(float %101, float %111, float 1.000000e+00)
  %113 = fsub float 1.000000e+00, %97
  %114 = fmul float %113, %104
  %115 = load float, ptr %4, align 4, !tbaa !108
  %116 = fmul float %114, %115
  %117 = call float @llvm.fmuladd.f32(float %97, float %102, float %116)
  store float %117, ptr %4, align 4, !tbaa !108
  %118 = fmul float %113, %108
  %119 = getelementptr inbounds float, ptr %4, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !108
  %121 = fmul float %118, %120
  %122 = call float @llvm.fmuladd.f32(float %97, float %106, float %121)
  store float %122, ptr %119, align 4, !tbaa !108
  %123 = fmul float %113, %112
  %124 = getelementptr inbounds float, ptr %4, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !108
  %126 = fmul float %123, %125
  %127 = call float @llvm.fmuladd.f32(float %97, float %110, float %126)
  store float %127, ptr %124, align 4, !tbaa !108
  %128 = getelementptr inbounds float, ptr %4, i64 3
  %129 = load float, ptr %128, align 4, !tbaa !108
  %130 = fmul float %113, %129
  store float %130, ptr %128, align 4, !tbaa !108
  br label %154

131:                                              ; preds = %13
  %132 = getelementptr inbounds float, ptr %4, i64 3
  %133 = load float, ptr %132, align 4, !tbaa !108
  %134 = load float, ptr %4, align 4, !tbaa !108
  %135 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %136 = load float, ptr %135, align 4, !tbaa !157
  %137 = load float, ptr %7, align 4, !tbaa !108
  %138 = fmul float %136, %137
  %139 = call float @llvm.fmuladd.f32(float %133, float %134, float %138)
  store float %139, ptr %4, align 4, !tbaa !108
  %140 = getelementptr inbounds float, ptr %4, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !108
  %142 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !108
  %144 = fmul float %136, %143
  %145 = call float @llvm.fmuladd.f32(float %133, float %141, float %144)
  store float %145, ptr %140, align 4, !tbaa !108
  %146 = getelementptr inbounds float, ptr %4, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !108
  %148 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !108
  %150 = fmul float %136, %149
  %151 = call float @llvm.fmuladd.f32(float %133, float %147, float %150)
  store float %151, ptr %146, align 4, !tbaa !108
  %152 = fsub float 1.000000e+00, %136
  %153 = fmul float %133, %152
  store float %153, ptr %132, align 4, !tbaa !108
  br label %154

154:                                              ; preds = %13, %131, %93
  %155 = icmp sgt i32 %2, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %154
  %157 = getelementptr inbounds float, ptr %4, i64 3
  %158 = load float, ptr %157, align 4, !tbaa !108
  %159 = fcmp ogt float %158, 0.000000e+00
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29
  %162 = load float, ptr %161, align 8, !tbaa !108
  store float %162, ptr %0, align 4, !tbaa !108
  %163 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !108
  %165 = getelementptr inbounds float, ptr %0, i64 1
  store float %164, ptr %165, align 4, !tbaa !108
  %166 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29, i64 2
  %167 = load float, ptr %166, align 8, !tbaa !108
  %168 = getelementptr inbounds float, ptr %0, i64 2
  store float %167, ptr %168, align 4, !tbaa !108
  %169 = load float, ptr %8, align 8, !tbaa !115
  %170 = fsub float %9, %169
  store float %170, ptr %8, align 8, !tbaa !115
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !116
  %173 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 16
  store ptr %172, ptr %173, align 8, !tbaa !200
  %174 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !119
  %176 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 16, i32 1
  store ptr %175, ptr %176, align 8, !tbaa !201
  %177 = add nsw i32 %2, -1
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %177, i32 noundef 1, ptr noundef %4)
  br label %178

178:                                              ; preds = %160, %156, %154
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %6) #9
  br label %179

179:                                              ; preds = %178, %5
  ret void
}

declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_rayobject_empty_create() local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_thread_qmcsampler(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.ListBase, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3, %24
  %10 = phi ptr [ %25, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !170
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !209
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !173
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 4
  store i32 1, ptr %23, align 8, !tbaa !173
  br label %74

24:                                               ; preds = %9, %14, %18
  %25 = load ptr, ptr %10, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !210

27:                                               ; preds = %24, %3
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %29 = tail call ptr %28(i64 noundef 56, ptr noundef nonnull @.str.13) #9
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %31 = sext i32 %2 to i64
  %32 = shl nsw i64 %31, 4
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.14) #9
  %34 = getelementptr inbounds %struct.QMCSampler, ptr %29, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !154
  %35 = getelementptr inbounds %struct.QMCSampler, ptr %29, i64 0, i32 3
  store i32 %2, ptr %35, align 4, !tbaa !209
  %36 = getelementptr inbounds %struct.QMCSampler, ptr %29, i64 0, i32 2
  store i32 %1, ptr %36, align 8, !tbaa !170
  %37 = icmp eq i32 %1, 2
  %38 = icmp sgt i32 %2, 0
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %27
  %41 = sitofp i32 %2 to double
  %42 = zext i32 %2 to i64
  br label %43

43:                                               ; preds = %40, %59
  %44 = phi i64 [ 0, %40 ], [ %68, %59 ]
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = trunc i64 %44 to i32
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %57, %48 ], [ %47, %46 ]
  %50 = phi double [ %55, %48 ], [ 0.000000e+00, %46 ]
  %51 = phi double [ %56, %48 ], [ 5.000000e-01, %46 ]
  %52 = and i32 %49, 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, double -0.000000e+00, double %51
  %55 = fadd double %50, %54
  %56 = fmul double %51, 5.000000e-01
  %57 = lshr i32 %49, 1
  %58 = icmp ult i32 %49, 2
  br i1 %58, label %59, label %48, !llvm.loop !246

59:                                               ; preds = %48, %43
  %60 = phi double [ 0.000000e+00, %43 ], [ %55, %48 ]
  %61 = trunc i64 %44 to i32
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, %41
  %64 = shl nuw nsw i64 %44, 1
  %65 = getelementptr inbounds double, ptr %33, i64 %64
  store double %63, ptr %65, align 8, !tbaa !171
  %66 = or disjoint i64 %64, 1
  %67 = getelementptr inbounds double, ptr %33, i64 %66
  store double %60, ptr %67, align 8, !tbaa !171
  %68 = add nuw nsw i64 %44, 1
  %69 = icmp eq i64 %68, %42
  br i1 %69, label %70, label %43, !llvm.loop !247

70:                                               ; preds = %59, %27
  %71 = getelementptr inbounds %struct.QMCSampler, ptr %29, i64 0, i32 4
  store i32 1, ptr %71, align 8, !tbaa !173
  %72 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !150
  %73 = getelementptr inbounds %struct.ListBase, ptr %72, i64 %5
  tail call void @BLI_addtail(ptr noundef %73, ptr noundef %29) #9
  br label %74

74:                                               ; preds = %70, %22
  %75 = phi ptr [ %10, %22 ], [ %29, %70 ]
  ret ptr %75
}

; Function Attrs: nounwind uwtable
define internal fastcc void @QMC_initPixel(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x double], align 16
  %4 = alloca [2 x double], align 16
  %5 = alloca [2 x double], align 16
  %6 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = tail call float @BLI_thread_frand(i32 noundef %1) #9
  %11 = fmul float %10, 5.000000e-01
  %12 = fpext float %11 to double
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 6, i64 %13
  store double %12, ptr %14, align 8, !tbaa !171
  %15 = tail call float @BLI_thread_frand(i32 noundef %1) #9
  %16 = fmul float %15, 5.000000e-01
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 6, i64 %13, i64 1
  store double %17, ptr %18, align 8, !tbaa !171
  br label %71

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %20 = tail call float @BLI_thread_frand(i32 noundef %1) #9
  %21 = fpext float %20 to double
  store double %21, ptr %4, align 16, !tbaa !171
  %22 = tail call float @BLI_thread_frand(i32 noundef %1) #9
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !171
  store double 5.000000e-01, ptr %3, align 16, !tbaa !171
  %25 = getelementptr inbounds [2 x double], ptr %3, i64 0, i64 1
  store double 0x3FD5555555555555, ptr %25, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !209
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !154
  %32 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %33 = zext nneg i32 %27 to i64
  br label %34

34:                                               ; preds = %29, %61
  %35 = phi i64 [ 0, %29 ], [ %68, %61 ]
  br label %36

36:                                               ; preds = %34, %53
  %37 = phi i64 [ 0, %34 ], [ %59, %53 ]
  %38 = getelementptr inbounds double, ptr %4, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !171
  %40 = fsub double 1.000000e+00, %39
  %41 = fadd double %40, -1.000000e-10
  %42 = tail call double @llvm.fabs.f64(double %41)
  %43 = getelementptr inbounds double, ptr %3, i64 %37
  %44 = load double, ptr %43, align 8, !tbaa !171
  %45 = fcmp ult double %44, %42
  br i1 %45, label %53, label %46

46:                                               ; preds = %36, %46
  %47 = phi double [ %48, %46 ], [ %44, %36 ]
  %48 = fmul double %44, %47
  %49 = fcmp ult double %48, %42
  br i1 %49, label %50, label %46, !llvm.loop !248

50:                                               ; preds = %46
  %51 = fadd double %47, %48
  %52 = fadd double %51, -1.000000e+00
  br label %53

53:                                               ; preds = %36, %50
  %54 = phi double [ %52, %50 ], [ %44, %36 ]
  %55 = fadd double %39, %54
  store double %55, ptr %38, align 8, !tbaa !171
  %56 = fptrunc double %55 to float
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds double, ptr %5, i64 %37
  store double %57, ptr %58, align 8, !tbaa !171
  %59 = add nuw nsw i64 %37, 1
  %60 = icmp eq i64 %37, 0
  br i1 %60, label %36, label %61, !llvm.loop !249

61:                                               ; preds = %53
  %62 = load double, ptr %5, align 16, !tbaa !171
  %63 = shl nuw nsw i64 %35, 1
  %64 = getelementptr inbounds double, ptr %31, i64 %63
  store double %62, ptr %64, align 8, !tbaa !171
  %65 = load double, ptr %32, align 8, !tbaa !171
  %66 = or disjoint i64 %63, 1
  %67 = getelementptr inbounds double, ptr %31, i64 %66
  store double %65, ptr %67, align 8, !tbaa !171
  %68 = add nuw nsw i64 %35, 1
  %69 = icmp eq i64 %68, %33
  br i1 %69, label %70, label %34, !llvm.loop !250

70:                                               ; preds = %61, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %71

71:                                               ; preds = %70, %9
  ret void
}

declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @traceray(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.ShadeInput, align 8
  %11 = alloca %struct.Isect, align 8
  %12 = alloca %struct.ShadeResult, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %10, i8 0, i64 1472, i1 false)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %11) #9
  %18 = load ptr, ptr %0, align 8, !tbaa !120
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 48
  %20 = load float, ptr %19, align 4, !tbaa !251
  %21 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !91
  %22 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !92
  %23 = tail call i32 %21(ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %590

26:                                               ; preds = %9
  %27 = load float, ptr %3, align 4, !tbaa !108
  store float %27, ptr %11, align 8, !tbaa !108
  %28 = getelementptr inbounds float, ptr %3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !108
  %30 = getelementptr inbounds float, ptr %11, i64 1
  store float %29, ptr %30, align 4, !tbaa !108
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !108
  %33 = getelementptr inbounds float, ptr %11, i64 2
  store float %32, ptr %33, align 8, !tbaa !108
  %34 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 1
  %35 = load float, ptr %4, align 4, !tbaa !108
  store float %35, ptr %34, align 4, !tbaa !108
  %36 = getelementptr inbounds float, ptr %4, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !108
  %38 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 1, i64 1
  store float %37, ptr %38, align 8, !tbaa !108
  %39 = getelementptr inbounds float, ptr %4, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !108
  %41 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 1, i64 2
  store float %40, ptr %41, align 4, !tbaa !108
  %42 = fcmp ogt float %20, 0.000000e+00
  %43 = select i1 %42, float %20, float 0x430C6BF520000000
  %44 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 2
  store float %43, ptr %44, align 8, !tbaa !115
  %45 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 7
  store i32 1, ptr %45, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 10
  store i32 1, ptr %46, align 4, !tbaa !202
  %47 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 9
  store i32 2, ptr %47, align 8, !tbaa !203
  %48 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 18
  store ptr null, ptr %48, align 8, !tbaa !206
  %49 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 16
  store ptr %6, ptr %49, align 8, !tbaa !200
  %50 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 16, i32 1
  store ptr %7, ptr %50, align 8, !tbaa !201
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !116
  call void @RE_instance_rotate_ray(ptr noundef %52, ptr noundef nonnull %11) #9
  %53 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %54 = call i32 @RE_rayobject_raycast(ptr noundef %53, ptr noundef nonnull %11) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %589, label %56

56:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %12) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %12, i8 0, i64 212, i1 false)
  %57 = load ptr, ptr %51, align 8, !tbaa !116
  call void @RE_instance_rotate_ray_restore(ptr noundef %57, ptr noundef nonnull %11) #9
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 78
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %60 = load float, ptr %59, align 4, !tbaa !108
  store float %60, ptr %58, align 8, !tbaa !108
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !108
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 78, i64 1
  store float %62, ptr %63, align 4, !tbaa !108
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !108
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 78, i64 2
  store float %65, ptr %66, align 8, !tbaa !108
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 79
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %69 = load float, ptr %68, align 4, !tbaa !108
  store float %69, ptr %67, align 4, !tbaa !108
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !108
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 79, i64 1
  store float %71, ptr %72, align 8, !tbaa !108
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !108
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 79, i64 2
  store float %74, ptr %75, align 4, !tbaa !108
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %77 = load i32, ptr %76, align 4, !tbaa !227
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 105
  store i32 %77, ptr %78, align 4, !tbaa !227
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %80 = load i16, ptr %79, align 8, !tbaa !126
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 15
  store i16 %80, ptr %81, align 8, !tbaa !126
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %83 = load i32, ptr %82, align 8, !tbaa !159
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 108
  store i32 %84, ptr %85, align 8, !tbaa !159
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %87 = load i16, ptr %86, align 2, !tbaa !168
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 114
  store i16 %87, ptr %88, align 2, !tbaa !168
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %90 = load i32, ptr %89, align 4, !tbaa !219
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 103
  store i32 %90, ptr %91, align 4, !tbaa !219
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %93 = load i32, ptr %92, align 8, !tbaa !220
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 104
  store i32 %93, ptr %94, align 8, !tbaa !220
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %96 = load i32, ptr %95, align 8, !tbaa !243
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 117
  store i32 %96, ptr %97, align 8, !tbaa !243
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 119
  store i32 1, ptr %98, align 8, !tbaa !178
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 120
  store i32 16777215, ptr %99, align 4, !tbaa !164
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %101 = load ptr, ptr %100, align 8, !tbaa !252
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 121
  store ptr %101, ptr %102, align 8, !tbaa !252
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 122
  %104 = load ptr, ptr %103, align 8, !tbaa !253
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 122
  store ptr %104, ptr %105, align 8, !tbaa !253
  call void @shade_ray(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12)
  %106 = and i32 %8, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %154, label %108

108:                                              ; preds = %56
  %109 = load ptr, ptr %10, align 8, !tbaa !120
  %110 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 51
  %111 = load i32, ptr %110, align 4, !tbaa !161
  %112 = and i32 %111, 65536
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %154, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 34
  %116 = load float, ptr %115, align 4, !tbaa !244
  %117 = fcmp ugt float %116, 0.000000e+00
  br i1 %117, label %118, label %154

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %120 = load float, ptr %119, align 8, !tbaa !108
  %121 = load float, ptr %11, align 8, !tbaa !108
  %122 = fsub float %120, %121
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !108
  %125 = load float, ptr %30, align 4, !tbaa !108
  %126 = fsub float %124, %125
  %127 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29, i64 2
  %128 = load float, ptr %127, align 8, !tbaa !108
  %129 = load float, ptr %33, align 8, !tbaa !108
  %130 = fsub float %128, %129
  %131 = fmul float %126, %126
  %132 = call float @llvm.fmuladd.f32(float %122, float %122, float %131)
  %133 = call float @llvm.fmuladd.f32(float %130, float %130, float %132)
  %134 = call float @sqrtf(float noundef %133) #9
  %135 = load ptr, ptr %10, align 8, !tbaa !120
  %136 = getelementptr inbounds %struct.Material, ptr %135, i64 0, i32 34
  %137 = load float, ptr %136, align 4, !tbaa !244
  %138 = fcmp ogt float %134, %137
  %139 = select i1 %138, float %137, float %134
  %140 = getelementptr inbounds %struct.Material, ptr %135, i64 0, i32 35
  %141 = load float, ptr %140, align 8, !tbaa !245
  %142 = fcmp olt float %141, 0.000000e+00
  br i1 %142, label %146, label %143

143:                                              ; preds = %118
  %144 = fcmp ogt float %141, 1.000000e+01
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145, %143, %118
  %147 = phi float [ 1.000000e+01, %145 ], [ %141, %143 ], [ 0.000000e+00, %118 ]
  %148 = call float @powf(float noundef %139, float noundef %147) #9
  %149 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 2
  %150 = load float, ptr %149, align 4, !tbaa !157
  %151 = fmul float %148, %150
  %152 = fcmp ogt float %151, 1.000000e+00
  %153 = select i1 %152, float 1.000000e+00, float %151
  store float %153, ptr %149, align 4, !tbaa !157
  br label %154

154:                                              ; preds = %146, %114, %108, %56
  %155 = phi float [ 1.000000e+00, %56 ], [ -1.000000e+00, %108 ], [ %139, %146 ], [ 1.000000e+00, %114 ]
  %156 = icmp sgt i16 %2, 0
  br i1 %156, label %157, label %570

157:                                              ; preds = %154
  %158 = load ptr, ptr %10, align 8, !tbaa !120
  %159 = getelementptr inbounds %struct.Material, ptr %158, i64 0, i32 52
  %160 = load i32, ptr %159, align 8, !tbaa !254
  %161 = and i32 %160, 65536
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 2
  %164 = load float, ptr %163, align 4
  %165 = fcmp uge float %164, 1.000000e+00
  %166 = select i1 %162, i1 true, i1 %165
  %167 = and i32 %160, 131136
  %168 = icmp eq i32 %167, 0
  %169 = or i1 %168, %166
  br i1 %169, label %419, label %170

170:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9
  %171 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 32
  %172 = load float, ptr %171, align 4, !tbaa !175
  store float %172, ptr %14, align 16, !tbaa !108
  %173 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 33
  %174 = load float, ptr %173, align 8, !tbaa !176
  %175 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  store float %174, ptr %175, align 4, !tbaa !108
  %176 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 34
  %177 = load float, ptr %176, align 4, !tbaa !177
  %178 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 2
  store float %177, ptr %178, align 8, !tbaa !108
  %179 = getelementptr inbounds float, ptr %5, i64 3
  %180 = load float, ptr %179, align 4, !tbaa !108
  %181 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  store float %180, ptr %181, align 4, !tbaa !108
  %182 = getelementptr inbounds %struct.Material, ptr %158, i64 0, i32 51
  %183 = load i32, ptr %182, align 4, !tbaa !161
  %184 = and i32 %183, 196608
  %185 = icmp eq i32 %184, 196608
  br i1 %185, label %186, label %366

186:                                              ; preds = %170
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  br i1 %107, label %272, label %188

188:                                              ; preds = %186
  %189 = load float, ptr %187, align 4, !tbaa !108
  %190 = fneg float %189
  %191 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 1
  %192 = load float, ptr %191, align 8, !tbaa !108
  %193 = fneg float %192
  %194 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !108
  %196 = fneg float %195
  %197 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %198 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 46
  %199 = load float, ptr %198, align 4, !tbaa !169
  %200 = load float, ptr %197, align 4, !tbaa !108
  store float %200, ptr %13, align 4, !tbaa !108
  %201 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 1
  %202 = load float, ptr %201, align 8, !tbaa !108
  %203 = getelementptr inbounds float, ptr %13, i64 1
  store float %202, ptr %203, align 4, !tbaa !108
  %204 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !108
  %206 = getelementptr inbounds float, ptr %13, i64 2
  store float %205, ptr %206, align 4, !tbaa !108
  %207 = fmul float %202, %193
  %208 = call float @llvm.fmuladd.f32(float %200, float %190, float %207)
  %209 = call float @llvm.fmuladd.f32(float %205, float %196, float %208)
  %210 = fcmp ogt float %209, 0.000000e+00
  br i1 %210, label %211, label %222

211:                                              ; preds = %188
  %212 = fdiv float 1.000000e+00, %199
  %213 = fneg float %209
  %214 = call float @llvm.fmuladd.f32(float %213, float %209, float 1.000000e+00)
  %215 = fneg float %214
  %216 = fmul float %212, %215
  %217 = call float @llvm.fmuladd.f32(float %216, float %212, float 1.000000e+00)
  %218 = fcmp ugt float %217, 0.000000e+00
  br i1 %218, label %219, label %246

219:                                              ; preds = %211
  %220 = call float @sqrtf(float noundef %217) #9
  %221 = call float @llvm.fmuladd.f32(float %213, float %212, float %220)
  br label %233

222:                                              ; preds = %188
  %223 = fneg float %209
  %224 = call float @llvm.fmuladd.f32(float %223, float %209, float 1.000000e+00)
  %225 = fneg float %224
  %226 = fmul float %199, %225
  %227 = call float @llvm.fmuladd.f32(float %226, float %199, float 1.000000e+00)
  %228 = fcmp ugt float %227, 0.000000e+00
  br i1 %228, label %229, label %246

229:                                              ; preds = %222
  %230 = call float @sqrtf(float noundef %227) #9
  %231 = fneg float %230
  %232 = call float @llvm.fmuladd.f32(float %223, float %199, float %231)
  br label %233

233:                                              ; preds = %229, %219
  %234 = phi float [ %212, %219 ], [ %199, %229 ]
  %235 = phi float [ %221, %219 ], [ %232, %229 ]
  %236 = load float, ptr %197, align 4, !tbaa !108
  %237 = fmul float %235, %190
  %238 = call float @llvm.fmuladd.f32(float %234, float %236, float %237)
  store float %238, ptr %13, align 4, !tbaa !108
  %239 = load float, ptr %201, align 8, !tbaa !108
  %240 = fmul float %235, %193
  %241 = call float @llvm.fmuladd.f32(float %234, float %239, float %240)
  store float %241, ptr %203, align 4, !tbaa !108
  %242 = load float, ptr %204, align 4, !tbaa !108
  %243 = fmul float %235, %196
  %244 = call float @llvm.fmuladd.f32(float %234, float %242, float %243)
  store float %244, ptr %206, align 4, !tbaa !108
  %245 = and i32 %8, -3
  br label %358

246:                                              ; preds = %222, %211
  %247 = load float, ptr %197, align 4, !tbaa !108
  %248 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 1
  %249 = load float, ptr %248, align 8, !tbaa !108
  %250 = fmul float %249, %193
  %251 = call float @llvm.fmuladd.f32(float %190, float %247, float %250)
  %252 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !108
  %254 = call float @llvm.fmuladd.f32(float %196, float %253, float %251)
  %255 = fmul float %254, -2.000000e+00
  %256 = call float @llvm.fmuladd.f32(float %190, float %255, float %247)
  store float %256, ptr %13, align 4, !tbaa !108
  %257 = call float @llvm.fmuladd.f32(float %193, float %255, float %249)
  store float %257, ptr %203, align 4, !tbaa !108
  %258 = call float @llvm.fmuladd.f32(float %196, float %255, float %253)
  store float %258, ptr %206, align 4, !tbaa !108
  %259 = load float, ptr %187, align 4, !tbaa !108
  %260 = load float, ptr %191, align 8, !tbaa !108
  %261 = fmul float %257, %260
  %262 = call float @llvm.fmuladd.f32(float %256, float %259, float %261)
  %263 = load float, ptr %194, align 4, !tbaa !108
  %264 = call float @llvm.fmuladd.f32(float %258, float %263, float %262)
  %265 = fcmp ogt float %264, 0.000000e+00
  br i1 %265, label %266, label %358

266:                                              ; preds = %246
  %267 = fadd float %264, 0x3F847AE140000000
  %268 = fneg float %267
  %269 = call float @llvm.fmuladd.f32(float %268, float %259, float %256)
  store float %269, ptr %13, align 4, !tbaa !108
  %270 = call float @llvm.fmuladd.f32(float %268, float %260, float %257)
  store float %270, ptr %203, align 4, !tbaa !108
  %271 = call float @llvm.fmuladd.f32(float %268, float %263, float %258)
  store float %271, ptr %206, align 4, !tbaa !108
  br label %358

272:                                              ; preds = %186
  %273 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %274 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 46
  %275 = load float, ptr %274, align 4, !tbaa !169
  %276 = load float, ptr %273, align 4, !tbaa !108
  store float %276, ptr %13, align 4, !tbaa !108
  %277 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 1
  %278 = load float, ptr %277, align 8, !tbaa !108
  %279 = getelementptr inbounds float, ptr %13, i64 1
  store float %278, ptr %279, align 4, !tbaa !108
  %280 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 2
  %281 = load float, ptr %280, align 4, !tbaa !108
  %282 = getelementptr inbounds float, ptr %13, i64 2
  store float %281, ptr %282, align 4, !tbaa !108
  %283 = load float, ptr %187, align 4, !tbaa !108
  %284 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 1
  %285 = load float, ptr %284, align 8, !tbaa !108
  %286 = fmul float %278, %285
  %287 = call float @llvm.fmuladd.f32(float %276, float %283, float %286)
  %288 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 2
  %289 = load float, ptr %288, align 4, !tbaa !108
  %290 = call float @llvm.fmuladd.f32(float %281, float %289, float %287)
  %291 = fcmp ogt float %290, 0.000000e+00
  br i1 %291, label %292, label %303

292:                                              ; preds = %272
  %293 = fdiv float 1.000000e+00, %275
  %294 = fneg float %290
  %295 = call float @llvm.fmuladd.f32(float %294, float %290, float 1.000000e+00)
  %296 = fneg float %295
  %297 = fmul float %293, %296
  %298 = call float @llvm.fmuladd.f32(float %297, float %293, float 1.000000e+00)
  %299 = fcmp ugt float %298, 0.000000e+00
  br i1 %299, label %300, label %330

300:                                              ; preds = %292
  %301 = call float @sqrtf(float noundef %298) #9
  %302 = call float @llvm.fmuladd.f32(float %294, float %293, float %301)
  br label %314

303:                                              ; preds = %272
  %304 = fneg float %290
  %305 = call float @llvm.fmuladd.f32(float %304, float %290, float 1.000000e+00)
  %306 = fneg float %305
  %307 = fmul float %275, %306
  %308 = call float @llvm.fmuladd.f32(float %307, float %275, float 1.000000e+00)
  %309 = fcmp ugt float %308, 0.000000e+00
  br i1 %309, label %310, label %330

310:                                              ; preds = %303
  %311 = call float @sqrtf(float noundef %308) #9
  %312 = fneg float %311
  %313 = call float @llvm.fmuladd.f32(float %304, float %275, float %312)
  br label %314

314:                                              ; preds = %310, %300
  %315 = phi float [ %293, %300 ], [ %275, %310 ]
  %316 = phi float [ %302, %300 ], [ %313, %310 ]
  %317 = load float, ptr %273, align 4, !tbaa !108
  %318 = load float, ptr %187, align 4, !tbaa !108
  %319 = fmul float %316, %318
  %320 = call float @llvm.fmuladd.f32(float %315, float %317, float %319)
  store float %320, ptr %13, align 4, !tbaa !108
  %321 = load float, ptr %277, align 8, !tbaa !108
  %322 = load float, ptr %284, align 8, !tbaa !108
  %323 = fmul float %316, %322
  %324 = call float @llvm.fmuladd.f32(float %315, float %321, float %323)
  store float %324, ptr %279, align 4, !tbaa !108
  %325 = load float, ptr %280, align 4, !tbaa !108
  %326 = load float, ptr %288, align 4, !tbaa !108
  %327 = fmul float %316, %326
  %328 = call float @llvm.fmuladd.f32(float %315, float %325, float %327)
  store float %328, ptr %282, align 4, !tbaa !108
  %329 = or disjoint i32 %8, 2
  br label %358

330:                                              ; preds = %303, %292
  %331 = load float, ptr %187, align 4, !tbaa !108
  %332 = load float, ptr %273, align 4, !tbaa !108
  %333 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 1
  %334 = load float, ptr %333, align 8, !tbaa !108
  %335 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 1
  %336 = load float, ptr %335, align 8, !tbaa !108
  %337 = fmul float %334, %336
  %338 = call float @llvm.fmuladd.f32(float %331, float %332, float %337)
  %339 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !108
  %341 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !108
  %343 = call float @llvm.fmuladd.f32(float %340, float %342, float %338)
  %344 = fmul float %343, -2.000000e+00
  %345 = call float @llvm.fmuladd.f32(float %331, float %344, float %332)
  store float %345, ptr %13, align 4, !tbaa !108
  %346 = call float @llvm.fmuladd.f32(float %334, float %344, float %336)
  store float %346, ptr %279, align 4, !tbaa !108
  %347 = call float @llvm.fmuladd.f32(float %340, float %344, float %342)
  store float %347, ptr %282, align 4, !tbaa !108
  %348 = fmul float %334, %346
  %349 = call float @llvm.fmuladd.f32(float %345, float %331, float %348)
  %350 = call float @llvm.fmuladd.f32(float %347, float %340, float %349)
  %351 = fcmp ogt float %350, 0.000000e+00
  br i1 %351, label %352, label %358

352:                                              ; preds = %330
  %353 = fadd float %350, 0x3F847AE140000000
  %354 = fneg float %353
  %355 = call float @llvm.fmuladd.f32(float %354, float %331, float %345)
  store float %355, ptr %13, align 4, !tbaa !108
  %356 = call float @llvm.fmuladd.f32(float %354, float %334, float %346)
  store float %356, ptr %279, align 4, !tbaa !108
  %357 = call float @llvm.fmuladd.f32(float %354, float %340, float %347)
  store float %357, ptr %282, align 4, !tbaa !108
  br label %358

358:                                              ; preds = %233, %246, %266, %352, %330, %314
  %359 = phi i32 [ %329, %314 ], [ %8, %330 ], [ %8, %352 ], [ %245, %233 ], [ %8, %246 ], [ %8, %266 ]
  %360 = add nsw i16 %2, -1
  %361 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !116
  %364 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !119
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %360, ptr noundef nonnull %361, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %363, ptr noundef %365, i32 noundef %359)
  br label %374

366:                                              ; preds = %170
  %367 = add nsw i16 %2, -1
  %368 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %369 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %370 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !116
  %372 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !119
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %367, ptr noundef nonnull %368, ptr noundef nonnull %369, ptr noundef nonnull %14, ptr noundef %371, ptr noundef %373, i32 noundef 0)
  br label %374

374:                                              ; preds = %366, %358
  %375 = load float, ptr %163, align 4, !tbaa !157
  %376 = fsub float 1.000000e+00, %375
  %377 = load ptr, ptr %10, align 8, !tbaa !120
  %378 = getelementptr inbounds %struct.Material, ptr %377, i64 0, i32 33
  %379 = load float, ptr %378, align 8, !tbaa !174
  %380 = fmul float %155, %379
  %381 = load float, ptr %171, align 4, !tbaa !175
  %382 = fadd float %381, -1.000000e+00
  %383 = call float @llvm.fmuladd.f32(float %380, float %382, float 1.000000e+00)
  %384 = load float, ptr %173, align 8, !tbaa !176
  %385 = fadd float %384, -1.000000e+00
  %386 = call float @llvm.fmuladd.f32(float %380, float %385, float 1.000000e+00)
  %387 = load float, ptr %176, align 4, !tbaa !177
  %388 = fadd float %387, -1.000000e+00
  %389 = call float @llvm.fmuladd.f32(float %380, float %388, float 1.000000e+00)
  %390 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %391 = load float, ptr %390, align 4, !tbaa !108
  %392 = fmul float %376, %383
  %393 = load float, ptr %14, align 16, !tbaa !108
  %394 = fmul float %392, %393
  %395 = call float @llvm.fmuladd.f32(float %375, float %391, float %394)
  store float %395, ptr %390, align 4, !tbaa !108
  %396 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 1
  %397 = load float, ptr %396, align 4, !tbaa !108
  %398 = fmul float %376, %386
  %399 = load float, ptr %175, align 4, !tbaa !108
  %400 = fmul float %398, %399
  %401 = call float @llvm.fmuladd.f32(float %375, float %397, float %400)
  store float %401, ptr %396, align 4, !tbaa !108
  %402 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %403 = load float, ptr %402, align 4, !tbaa !108
  %404 = fmul float %376, %389
  %405 = load float, ptr %178, align 8, !tbaa !108
  %406 = fmul float %404, %405
  %407 = call float @llvm.fmuladd.f32(float %375, float %403, float %406)
  store float %407, ptr %402, align 4, !tbaa !108
  %408 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %409 = load float, ptr %408, align 4, !tbaa !108
  %410 = fmul float %375, %409
  store float %410, ptr %408, align 4, !tbaa !108
  %411 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 1
  %412 = load float, ptr %411, align 4, !tbaa !108
  %413 = fmul float %375, %412
  store float %413, ptr %411, align 4, !tbaa !108
  %414 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %415 = load float, ptr %414, align 4, !tbaa !108
  %416 = fmul float %375, %415
  store float %416, ptr %414, align 4, !tbaa !108
  %417 = load float, ptr %181, align 4, !tbaa !108
  %418 = call float @llvm.fmuladd.f32(float %376, float %417, float %375)
  store float %418, ptr %179, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  br label %421

419:                                              ; preds = %157
  %420 = getelementptr inbounds float, ptr %5, i64 3
  store float 1.000000e+00, ptr %420, align 4, !tbaa !108
  br label %421

421:                                              ; preds = %419, %374
  %422 = load ptr, ptr %10, align 8, !tbaa !120
  %423 = getelementptr inbounds %struct.Material, ptr %422, i64 0, i32 52
  %424 = load i32, ptr %423, align 8, !tbaa !254
  %425 = and i32 %424, 262144
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %440, label %427

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 48
  %429 = load float, ptr %428, align 4, !tbaa !162
  %430 = fcmp une float %429, 0.000000e+00
  br i1 %430, label %431, label %440

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %433 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %434 = getelementptr inbounds %struct.Material, ptr %422, i64 0, i32 30
  %435 = load float, ptr %434, align 4, !tbaa !179
  %436 = getelementptr inbounds %struct.Material, ptr %422, i64 0, i32 29
  %437 = load float, ptr %436, align 8, !tbaa !180
  %438 = call float @fresnel_fac(ptr noundef nonnull %432, ptr noundef nonnull %433, float noundef %435, float noundef %437) #9
  %439 = fmul float %429, %438
  br label %440

440:                                              ; preds = %421, %427, %431
  %441 = phi float [ %439, %431 ], [ %429, %427 ], [ 0.000000e+00, %421 ]
  %442 = fcmp une float %441, 0.000000e+00
  br i1 %442, label %443, label %515

443:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  %444 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %445 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %446 = load float, ptr %444, align 4, !tbaa !108
  %447 = load float, ptr %445, align 4, !tbaa !108
  %448 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 1
  %449 = load float, ptr %448, align 8, !tbaa !108
  %450 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 1
  %451 = load float, ptr %450, align 8, !tbaa !108
  %452 = fmul float %449, %451
  %453 = call float @llvm.fmuladd.f32(float %446, float %447, float %452)
  %454 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 2
  %455 = load float, ptr %454, align 4, !tbaa !108
  %456 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30, i64 2
  %457 = load float, ptr %456, align 4, !tbaa !108
  %458 = call float @llvm.fmuladd.f32(float %455, float %457, float %453)
  %459 = fmul float %458, -2.000000e+00
  %460 = call float @llvm.fmuladd.f32(float %446, float %459, float %447)
  store float %460, ptr %16, align 4, !tbaa !108
  %461 = call float @llvm.fmuladd.f32(float %449, float %459, float %451)
  %462 = getelementptr inbounds float, ptr %16, i64 1
  store float %461, ptr %462, align 4, !tbaa !108
  %463 = call float @llvm.fmuladd.f32(float %455, float %459, float %457)
  %464 = getelementptr inbounds float, ptr %16, i64 2
  store float %463, ptr %464, align 4, !tbaa !108
  %465 = add nsw i16 %2, -1
  %466 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %467 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !116
  %469 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !119
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %465, ptr noundef nonnull %466, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef %468, ptr noundef %470, i32 noundef %8)
  %471 = fsub float 1.000000e+00, %441
  %472 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 38
  %473 = load float, ptr %472, align 4, !tbaa !186
  %474 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 39
  %475 = load float, ptr %474, align 8, !tbaa !187
  %476 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 40
  %477 = load float, ptr %476, align 4, !tbaa !188
  %478 = fmul float %441, %473
  %479 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %480 = load float, ptr %479, align 4, !tbaa !108
  %481 = fsub float 1.000000e+00, %480
  %482 = fmul float %478, %481
  %483 = load float, ptr %15, align 16, !tbaa !108
  %484 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %485 = load float, ptr %484, align 4, !tbaa !108
  %486 = fmul float %471, %485
  %487 = call float @llvm.fmuladd.f32(float %482, float %483, float %486)
  %488 = fadd float %480, %487
  store float %488, ptr %5, align 4, !tbaa !108
  %489 = fmul float %441, %475
  %490 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 1
  %491 = load float, ptr %490, align 4, !tbaa !108
  %492 = fsub float 1.000000e+00, %491
  %493 = fmul float %489, %492
  %494 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %495 = load float, ptr %494, align 4, !tbaa !108
  %496 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 1
  %497 = load float, ptr %496, align 4, !tbaa !108
  %498 = fmul float %471, %497
  %499 = call float @llvm.fmuladd.f32(float %493, float %495, float %498)
  %500 = fadd float %491, %499
  %501 = getelementptr inbounds float, ptr %5, i64 1
  store float %500, ptr %501, align 4, !tbaa !108
  %502 = fmul float %441, %477
  %503 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %504 = load float, ptr %503, align 4, !tbaa !108
  %505 = fsub float 1.000000e+00, %504
  %506 = fmul float %502, %505
  %507 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %508 = load float, ptr %507, align 8, !tbaa !108
  %509 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %510 = load float, ptr %509, align 4, !tbaa !108
  %511 = fmul float %471, %510
  %512 = call float @llvm.fmuladd.f32(float %506, float %508, float %511)
  %513 = fadd float %504, %512
  %514 = getelementptr inbounds float, ptr %5, i64 2
  store float %513, ptr %514, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  br label %533

515:                                              ; preds = %440
  %516 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %517 = load float, ptr %516, align 4, !tbaa !108
  %518 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %519 = load float, ptr %518, align 4, !tbaa !108
  %520 = fadd float %517, %519
  store float %520, ptr %5, align 4, !tbaa !108
  %521 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 1
  %522 = load float, ptr %521, align 4, !tbaa !108
  %523 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 1
  %524 = load float, ptr %523, align 4, !tbaa !108
  %525 = fadd float %522, %524
  %526 = getelementptr inbounds float, ptr %5, i64 1
  store float %525, ptr %526, align 4, !tbaa !108
  %527 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %528 = load float, ptr %527, align 4, !tbaa !108
  %529 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %530 = load float, ptr %529, align 4, !tbaa !108
  %531 = fadd float %528, %530
  %532 = getelementptr inbounds float, ptr %5, i64 2
  store float %531, ptr %532, align 4, !tbaa !108
  br label %533

533:                                              ; preds = %515, %443
  br i1 %42, label %534, label %588

534:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  call fastcc void @ray_fadeout_endcolor(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4)
  %535 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %536 = load float, ptr %11, align 8, !tbaa !108
  %537 = load float, ptr %535, align 8, !tbaa !108
  %538 = fsub float %536, %537
  %539 = load float, ptr %30, align 4, !tbaa !108
  %540 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29, i64 1
  %541 = load float, ptr %540, align 4, !tbaa !108
  %542 = fsub float %539, %541
  %543 = load float, ptr %33, align 8, !tbaa !108
  %544 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29, i64 2
  %545 = load float, ptr %544, align 8, !tbaa !108
  %546 = fsub float %543, %545
  %547 = fmul float %542, %542
  %548 = call float @llvm.fmuladd.f32(float %538, float %538, float %547)
  %549 = call float @llvm.fmuladd.f32(float %546, float %546, float %548)
  %550 = call float @sqrtf(float noundef %549) #9
  %551 = fdiv float %550, %20
  %552 = fsub float 1.000000e+00, %551
  %553 = load float, ptr %5, align 4, !tbaa !108
  %554 = fsub float 1.000000e+00, %552
  %555 = load float, ptr %17, align 4, !tbaa !108
  %556 = fmul float %555, %554
  %557 = call float @llvm.fmuladd.f32(float %553, float %552, float %556)
  store float %557, ptr %5, align 4, !tbaa !108
  %558 = getelementptr inbounds float, ptr %5, i64 1
  %559 = load float, ptr %558, align 4, !tbaa !108
  %560 = getelementptr inbounds float, ptr %17, i64 1
  %561 = load float, ptr %560, align 4, !tbaa !108
  %562 = fmul float %554, %561
  %563 = call float @llvm.fmuladd.f32(float %559, float %552, float %562)
  store float %563, ptr %558, align 4, !tbaa !108
  %564 = getelementptr inbounds float, ptr %5, i64 2
  %565 = load float, ptr %564, align 4, !tbaa !108
  %566 = getelementptr inbounds float, ptr %17, i64 2
  %567 = load float, ptr %566, align 4, !tbaa !108
  %568 = fmul float %554, %567
  %569 = call float @llvm.fmuladd.f32(float %565, float %552, float %568)
  store float %569, ptr %564, align 4, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  br label %588

570:                                              ; preds = %154
  %571 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %572 = load float, ptr %571, align 4, !tbaa !108
  %573 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %574 = load float, ptr %573, align 4, !tbaa !108
  %575 = fadd float %572, %574
  store float %575, ptr %5, align 4, !tbaa !108
  %576 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !108
  %578 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 1
  %579 = load float, ptr %578, align 4, !tbaa !108
  %580 = fadd float %577, %579
  %581 = getelementptr inbounds float, ptr %5, i64 1
  store float %580, ptr %581, align 4, !tbaa !108
  %582 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !108
  %584 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %585 = load float, ptr %584, align 4, !tbaa !108
  %586 = fadd float %583, %585
  %587 = getelementptr inbounds float, ptr %5, i64 2
  store float %586, ptr %587, align 4, !tbaa !108
  br label %588

588:                                              ; preds = %533, %534, %570
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %12) #9
  br label %590

589:                                              ; preds = %26
  call fastcc void @ray_fadeout_endcolor(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %4)
  br label %590

590:                                              ; preds = %588, %589, %25
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %10) #9
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BLI_thread_frand(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @ray_fadeout_endcolor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr %1, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 49
  %9 = load i16, ptr %8, align 8, !tbaa !255
  switch i16 %9, label %45 [
    i16 1, label %10
    i16 0, label %18
  ]

10:                                               ; preds = %6
  %11 = load float, ptr %3, align 4, !tbaa !108
  store float %11, ptr %0, align 4, !tbaa !108
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !108
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !108
  %15 = getelementptr inbounds float, ptr %3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !108
  %17 = getelementptr inbounds float, ptr %0, i64 2
  store float %16, ptr %17, align 4, !tbaa !108
  br label %45

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30
  %20 = load float, ptr %5, align 4, !tbaa !108
  store float %20, ptr %19, align 4, !tbaa !108
  %21 = getelementptr inbounds float, ptr %5, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !108
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30, i64 1
  store float %22, ptr %23, align 4, !tbaa !108
  %24 = getelementptr inbounds float, ptr %5, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !108
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30, i64 2
  store float %25, ptr %26, align 4, !tbaa !108
  %27 = fmul float %22, %22
  %28 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = tail call float @sqrtf(float noundef %29) #9
  %33 = fdiv float 1.000000e+00, %32
  %34 = load float, ptr %19, align 4, !tbaa !108
  %35 = fmul float %34, %33
  store float %35, ptr %19, align 4, !tbaa !108
  %36 = load float, ptr %23, align 4, !tbaa !108
  %37 = fmul float %33, %36
  store float %37, ptr %23, align 4, !tbaa !108
  %38 = load float, ptr %26, align 4, !tbaa !108
  %39 = fmul float %33, %38
  br label %41

40:                                               ; preds = %18
  store float 0.000000e+00, ptr %19, align 4, !tbaa !108
  store float 0.000000e+00, ptr %23, align 4, !tbaa !108
  br label %41

41:                                               ; preds = %31, %40
  %42 = phi float [ 0.000000e+00, %40 ], [ %39, %31 ]
  store float %42, ptr %26, align 4, !tbaa !108
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %44 = load i16, ptr %43, align 2, !tbaa !168
  tail call void @shadeSkyView(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %19, ptr noundef null, i16 noundef signext %44) #9
  tail call void @shadeSunView(ptr noundef %0, ptr noundef nonnull %19) #9
  br label %45

45:                                               ; preds = %6, %41, %10
  ret void
}

declare void @shadeSkyView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @shadeSunView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RE_instance_rotate_ray_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RE_rayobject_hint_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RE_instance_rotate_ray_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #3

declare i32 @BLI_thread_rand(i32 noundef) local_unnamed_addr #3

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @count_mask(i16 noundef zeroext) local_unnamed_addr #3

declare void @shade_input_calc_viewco(ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!34 = !{!35, !36, i64 5656}
!35 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !41, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !42, i64 156, !43, i64 172, !44, i64 188, !44, i64 192, !44, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !44, i64 544, !44, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !45, i64 1104, !52, i64 5088, !36, i64 5616, !39, i64 5624, !39, i64 5628, !41, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !44, i64 5680, !36, i64 5688, !41, i64 5696, !44, i64 5712, !44, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !36, i64 5744, !41, i64 5752, !41, i64 5768, !41, i64 5784, !36, i64 5800, !41, i64 5808, !39, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !41, i64 5872, !36, i64 5888, !41, i64 5896, !41, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !54, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!"RenderData", !46, i64 0, !36, i64 248, !36, i64 256, !49, i64 264, !50, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !44, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !42, i64 576, !41, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !39, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !36, i64 2568, !39, i64 2576, !44, i64 2580, !37, i64 2584, !51, i64 2616, !39, i64 3976, !39, i64 3980}
!46 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !47, i64 24, !48, i64 184}
!47 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !44, i64 136, !44, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!49 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!50 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !44, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!51 = !{!"BakeData", !46, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!52 = !{!"World", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!54 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !55, i64 48, !55, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !44, i64 144, !44, i64 148}
!55 = !{!"double", !37, i64 0}
!56 = !{!35, !36, i64 5664}
!57 = !{!36, !36, i64 0}
!58 = !{!35, !36, i64 5672}
!59 = !{!60, !36, i64 16}
!60 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !36, i64 272, !39, i64 280}
!61 = !{!62, !36, i64 248}
!62 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!63 = !{!62, !36, i64 256}
!64 = !{!60, !36, i64 272}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!62, !39, i64 84}
!69 = !{!62, !36, i64 120}
!70 = !{!35, !40, i64 96}
!71 = !{!72, !36, i64 0}
!72 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!73 = !{!74, !37, i64 57}
!74 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!75 = !{!74, !36, i64 48}
!76 = !{!77, !40, i64 128}
!77 = !{!"Material", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !78, i64 224, !79, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !37, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !37, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!78 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!79 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!80 = distinct !{!80, !66, !67}
!81 = !{!35, !40, i64 1632}
!82 = !{!35, !40, i64 1636}
!83 = !{!84, !36, i64 8}
!84 = !{!"RayObject", !36, i64 0, !85, i64 8}
!85 = !{!"RayObjectControl", !36, i64 0, !36, i64 8}
!86 = !{!84, !36, i64 16}
!87 = !{!35, !39, i64 1628}
!88 = !{!62, !36, i64 264}
!89 = !{!62, !36, i64 272}
!90 = distinct !{!90, !66, !67}
!91 = !{!35, !36, i64 6048}
!92 = !{!35, !36, i64 6056}
!93 = !{!60, !40, i64 216}
!94 = !{!60, !39, i64 280}
!95 = !{!35, !36, i64 6128}
!96 = !{!35, !36, i64 6000}
!97 = !{!35, !36, i64 6008}
!98 = !{!35, !36, i64 5888}
!99 = !{!62, !36, i64 16}
!100 = distinct !{!100, !66, !67}
!101 = distinct !{!101, !66, !67}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
!104 = !{!105, !39, i64 60}
!105 = !{!"RayFace", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !39, i64 60, !36, i64 64, !36, i64 72}
!106 = distinct !{!106, !66, !67}
!107 = distinct !{!107, !66, !67}
!108 = !{!44, !44, i64 0}
!109 = distinct !{!109, !66, !67}
!110 = !{!35, !44, i64 5680}
!111 = !{!112, !36, i64 128}
!112 = !{!"Isect", !37, i64 0, !37, i64 12, !44, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !44, i64 112, !44, i64 116, !39, i64 120, !113, i64 128, !113, i64 144, !36, i64 160, !36, i64 168}
!113 = !{!"", !36, i64 0, !36, i64 8}
!114 = !{!112, !36, i64 136}
!115 = !{!112, !44, i64 24}
!116 = !{!117, !36, i64 24}
!117 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!118 = !{!117, !36, i64 32}
!119 = !{!117, !36, i64 8}
!120 = !{!117, !36, i64 0}
!121 = !{!112, !39, i64 120}
!122 = !{!112, !44, i64 112}
!123 = !{!117, !44, i64 168}
!124 = !{!112, !44, i64 116}
!125 = !{!117, !44, i64 172}
!126 = !{!117, !40, i64 96}
!127 = !{!117, !36, i64 64}
!128 = !{!117, !36, i64 72}
!129 = !{!117, !36, i64 80}
!130 = !{!117, !44, i64 176}
!131 = !{!117, !44, i64 180}
!132 = !{!117, !44, i64 184}
!133 = !{!117, !44, i64 188}
!134 = !{!112, !39, i64 88}
!135 = !{!117, !40, i64 1438}
!136 = !{!77, !36, i64 768}
!137 = !{!77, !37, i64 543}
!138 = !{!139, !40, i64 200}
!139 = !{!"LampRen", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !39, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !44, i64 136, !44, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !44, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !44, i64 284, !37, i64 288, !44, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !44, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!140 = !{!139, !36, i64 240}
!141 = !{!139, !44, i64 208}
!142 = !{!139, !44, i64 212}
!143 = distinct !{!143, !66, !67}
!144 = distinct !{!144, !66, !67}
!145 = distinct !{!145, !66, !67}
!146 = distinct !{!146, !66, !67}
!147 = distinct !{!147, !66, !67}
!148 = distinct !{!148, !66, !67}
!149 = distinct !{!149, !66, !67}
!150 = !{!35, !36, i64 1072}
!151 = !{!41, !36, i64 0}
!152 = !{!153, !36, i64 0}
!153 = !{!"QMCSampler", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 32, !37, i64 40}
!154 = !{!153, !36, i64 32}
!155 = distinct !{!155, !66, !67}
!156 = !{!117, !39, i64 160}
!157 = !{!158, !44, i64 32}
!158 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!159 = !{!117, !39, i64 1408}
!160 = !{!77, !40, i64 358}
!161 = !{!77, !39, i64 396}
!162 = !{!117, !44, i64 292}
!163 = !{!77, !40, i64 356}
!164 = !{!117, !39, i64 1452}
!165 = !{!77, !44, i64 368}
!166 = !{!77, !44, i64 380}
!167 = !{!77, !40, i64 374}
!168 = !{!117, !40, i64 1434}
!169 = !{!117, !44, i64 284}
!170 = !{!153, !39, i64 16}
!171 = !{!55, !55, i64 0}
!172 = distinct !{!172, !66, !67}
!173 = !{!153, !39, i64 24}
!174 = !{!77, !44, i64 344}
!175 = !{!117, !44, i64 228}
!176 = !{!117, !44, i64 232}
!177 = !{!117, !44, i64 236}
!178 = !{!117, !39, i64 1448}
!179 = !{!77, !44, i64 332}
!180 = !{!77, !44, i64 328}
!181 = !{!77, !44, i64 364}
!182 = !{!77, !44, i64 376}
!183 = !{!77, !44, i64 384}
!184 = !{!77, !40, i64 372}
!185 = distinct !{!185, !66, !67}
!186 = !{!117, !44, i64 252}
!187 = !{!117, !44, i64 256}
!188 = !{!117, !44, i64 260}
!189 = !{!52, !40, i64 290}
!190 = !{!52, !36, i64 336}
!191 = distinct !{!191, !66, !67}
!192 = distinct !{!192, !66, !67}
!193 = distinct !{!193, !66, !67}
!194 = distinct !{!194, !66, !67}
!195 = !{!52, !36, i64 344}
!196 = !{!35, !44, i64 5360}
!197 = !{!35, !44, i64 5384}
!198 = !{!35, !44, i64 5388}
!199 = !{!35, !40, i64 5378}
!200 = !{!112, !36, i64 144}
!201 = !{!112, !36, i64 152}
!202 = !{!112, !39, i64 100}
!203 = !{!112, !39, i64 96}
!204 = !{!35, !40, i64 5376}
!205 = !{!112, !39, i64 92}
!206 = !{!112, !36, i64 168}
!207 = !{!35, !40, i64 5382}
!208 = !{!35, !40, i64 5416}
!209 = !{!153, !39, i64 20}
!210 = distinct !{!210, !66, !67}
!211 = !{!35, !44, i64 5364}
!212 = !{!35, !44, i64 5224}
!213 = !{!35, !44, i64 5236}
!214 = !{!35, !44, i64 5228}
!215 = !{!35, !44, i64 5240}
!216 = !{!35, !44, i64 5232}
!217 = !{!35, !44, i64 5244}
!218 = distinct !{!218, !66, !67}
!219 = !{!117, !39, i64 1380}
!220 = !{!117, !39, i64 1384}
!221 = !{!39, !39, i64 0}
!222 = !{!35, !36, i64 5432}
!223 = distinct !{!223, !66, !67}
!224 = !{!117, !36, i64 16}
!225 = !{!35, !36, i64 5424}
!226 = distinct !{!226, !66, !67}
!227 = !{!117, !39, i64 1388}
!228 = distinct !{!228, !66, !67}
!229 = !{!139, !39, i64 44}
!230 = !{!139, !39, i64 84}
!231 = !{!112, !36, i64 160}
!232 = !{!139, !40, i64 40}
!233 = !{!139, !40, i64 194}
!234 = !{!139, !44, i64 220}
!235 = !{!35, !39, i64 1624}
!236 = !{!35, !40, i64 98}
!237 = distinct !{!237, !66, !67}
!238 = distinct !{!238, !66, !67}
!239 = distinct !{!239, !66, !67}
!240 = !{!139, !40, i64 196}
!241 = !{!40, !40, i64 0}
!242 = distinct !{!242, !66, !67}
!243 = !{!117, !39, i64 1440}
!244 = !{!77, !44, i64 348}
!245 = !{!77, !44, i64 352}
!246 = distinct !{!246, !66, !67}
!247 = distinct !{!247, !66, !67}
!248 = distinct !{!248, !66, !67}
!249 = distinct !{!249, !66, !67}
!250 = distinct !{!250, !66, !67}
!251 = !{!77, !44, i64 388}
!252 = !{!117, !36, i64 1456}
!253 = !{!117, !36, i64 1464}
!254 = !{!77, !39, i64 400}
!255 = !{!77, !40, i64 392}
