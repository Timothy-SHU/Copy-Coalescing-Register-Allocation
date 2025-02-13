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
%struct.VlakPrimitive = type { ptr, ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
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
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }

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
@R = external global %struct.Render, align 8
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_rayobject_create(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 3, i32 %0
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str) #24
  br label %13

10:                                               ; preds = %3
  switch i32 %5, label %17 [
    i32 1, label %11
    i32 3, label %13
    i32 4, label %15
  ]

11:                                               ; preds = %10
  %12 = tail call ptr @RE_rayobject_octree_create(i32 noundef %2, i32 noundef %1) #25
  br label %19

13:                                               ; preds = %8, %10
  %14 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %1) #25
  br label %19

15:                                               ; preds = %10
  %16 = tail call ptr @RE_rayobject_svbvh_create(i32 noundef %1) #25
  br label %19

17:                                               ; preds = %10
  %18 = tail call ptr @RE_rayobject_vbvh_create(i32 noundef %1) #25
  br label %19

19:                                               ; preds = %13, %17, %15, %11
  %20 = phi ptr [ %12, %11 ], [ %14, %13 ], [ %16, %15 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_rayobject_octree_create(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_rayobject_vbvh_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_rayobject_svbvh_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeraytree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RE_rayobject_free(ptr noundef nonnull %3) #25
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 53
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %11(ptr noundef nonnull %8) #25
  store ptr null, ptr %7, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #25
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
  tail call void @RE_rayobject_free(ptr noundef nonnull %27) #25
  store ptr null, ptr %26, align 8, !tbaa !61
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %25, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %35(ptr noundef nonnull %32) #25
  store ptr null, ptr %31, align 8, !tbaa !63
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %23, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @RE_rayobject_free(ptr noundef nonnull %38) #25
  store ptr null, ptr %37, align 8, !tbaa !64
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %23, align 8, !tbaa !57
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !65

44:                                               ; preds = %41, %18
  ret void
}

; Function Attrs: optsize
declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @makeraytree_object(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %100

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !67
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %125

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i32 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %27, %15 ]
  %18 = lshr i32 %17, 8
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.VlakTableNode, ptr %14, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = and i32 %17, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.VlakRen, ptr %21, i64 %23
  %25 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %24) #24, !range !71
  %26 = add nuw nsw i32 %25, %16
  %27 = add nuw nsw i32 %17, 1
  %28 = icmp eq i32 %27, %10
  br i1 %28, label %29, label %15, !llvm.loop !72

29:                                               ; preds = %15
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %125, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 49
  %33 = load i16, ptr %32, align 8, !tbaa !73
  %34 = sext i16 %33 to i32
  %35 = tail call fastcc ptr @rayobject_create(ptr noundef %0, i32 noundef %34, i32 noundef %26) #24
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %41 = zext nneg i32 %26 to i64
  br i1 %39, label %46, label %42

42:                                               ; preds = %31
  %43 = shl nuw nsw i64 %41, 4
  %44 = tail call ptr %40(i64 noundef %43, ptr noundef nonnull @.str.1) #25
  %45 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 31
  store ptr %44, ptr %45, align 8, !tbaa !75
  br label %50

46:                                               ; preds = %31
  %47 = mul nuw nsw i64 %41, 80
  %48 = tail call ptr %40(i64 noundef %47, ptr noundef nonnull @.str.2) #25
  %49 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 30
  store ptr %48, ptr %49, align 8, !tbaa !63
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %44, %42 ], [ null, %46 ]
  %52 = phi ptr [ null, %42 ], [ %48, %46 ]
  %53 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 32
  store ptr %1, ptr %53, align 8, !tbaa !76
  %54 = load i32, ptr %9, align 4, !tbaa !67
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 19
  br label %58

58:                                               ; preds = %56, %85
  %59 = phi ptr [ %52, %56 ], [ %87, %85 ]
  %60 = phi i32 [ 0, %56 ], [ %88, %85 ]
  %61 = phi ptr [ %51, %56 ], [ %86, %85 ]
  %62 = load ptr, ptr %57, align 8, !tbaa !68
  %63 = lshr i32 %60, 8
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.VlakTableNode, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = and i32 %60, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 %68
  %70 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %69) #24, !range !71
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %58
  %73 = load i32, ptr %36, align 4, !tbaa !74
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @RE_vlakprimitive_from_vlak(ptr noundef %61, ptr noundef %1, ptr noundef %69) #25
  tail call void @RE_rayobject_add(ptr noundef %35, ptr noundef %77) #25
  %78 = getelementptr inbounds %struct.VlakPrimitive, ptr %61, i64 1
  br label %85

79:                                               ; preds = %72
  %80 = tail call ptr @RE_rayface_from_vlak(ptr noundef %59, ptr noundef %1, ptr noundef %69) #25
  %81 = ptrtoint ptr %59 to i64
  %82 = or i64 %81, 1
  %83 = inttoptr i64 %82 to ptr
  tail call void @RE_rayobject_add(ptr noundef %35, ptr noundef nonnull %83) #25
  %84 = getelementptr inbounds %struct.RayFace, ptr %59, i64 1
  br label %85

85:                                               ; preds = %76, %79, %58
  %86 = phi ptr [ %78, %76 ], [ %61, %79 ], [ %61, %58 ]
  %87 = phi ptr [ %59, %76 ], [ %84, %79 ], [ %59, %58 ]
  %88 = add nuw nsw i32 %60, 1
  %89 = load i32, ptr %9, align 4, !tbaa !67
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %58, label %91, !llvm.loop !77

91:                                               ; preds = %85, %50
  tail call void @RE_rayobject_done(ptr noundef %35) #25
  %92 = tail call i32 @test_break(ptr noundef %0) #24
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  tail call void @RE_rayobject_free(ptr noundef %35) #25
  %95 = load ptr, ptr %5, align 8, !tbaa !61
  br label %97

96:                                               ; preds = %91
  store ptr %35, ptr %5, align 8, !tbaa !61
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi ptr [ %35, %96 ], [ %95, %94 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %2, %97
  %101 = phi ptr [ %98, %97 ], [ %6, %2 ]
  %102 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %103 = load i16, ptr %102, align 8, !tbaa !78
  %104 = and i16 %103, 3
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 18
  %108 = load ptr, ptr %107, align 8, !tbaa !64
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 19
  store i32 0, ptr %111, align 8, !tbaa !79
  %112 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  %113 = load ptr, ptr %3, align 8, !tbaa !59
  %114 = getelementptr inbounds %struct.ObjectRen, ptr %113, i64 0, i32 32
  %115 = load ptr, ptr %114, align 8, !tbaa !76
  %116 = tail call ptr @RE_rayobject_instance_create(ptr noundef nonnull %101, ptr noundef nonnull %112, ptr noundef nonnull %1, ptr noundef %115) #25
  store ptr %116, ptr %107, align 8, !tbaa !64
  br label %117

117:                                              ; preds = %100, %106, %110, %97
  %118 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !64
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8, !tbaa !59
  %123 = getelementptr inbounds %struct.ObjectRen, ptr %122, i64 0, i32 29
  %124 = load ptr, ptr %123, align 8, !tbaa !61
  br label %125

125:                                              ; preds = %8, %29, %117, %121
  %126 = phi ptr [ %124, %121 ], [ %119, %117 ], [ null, %29 ], [ null, %8 ]
  ret ptr %126
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_raytraceable_vlr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !81
  %5 = and i16 %4, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !82
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !85
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %7, %2
  %18 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !85
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  br label %24

24:                                               ; preds = %17, %23
  %25 = phi i32 [ 0, %23 ], [ 1, %17 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rayobject_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !89 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 51
  %5 = load i16, ptr %4, align 4, !tbaa !90
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @RE_rayobject_create(i32 noundef %1, i32 noundef %2, i32 noundef %6) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @RE_rayobject_config_control(ptr noundef nonnull %7, ptr noundef nonnull %0) #24
  br label %10

10:                                               ; preds = %9, %3
  ret ptr %7
}

; Function Attrs: optsize
declare void @RE_rayobject_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_vlakprimitive_from_vlak(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_rayface_from_vlak(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_rayobject_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @test_break(ptr nocapture noundef readonly %0) #0 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call i32 %3(ptr noundef %5) #25
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @RE_rayobject_instance_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @makeraytree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.3, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  tail call void %8(ptr noundef %10, ptr noundef nonnull %5) #25
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 49
  %12 = load i16, ptr %11, align 8, !tbaa !73
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = and i32 %16, -4
  store i32 %17, ptr %15, align 4, !tbaa !74
  br label %18

18:                                               ; preds = %14, %1
  tail call fastcc void @makeraytree_single(ptr noundef nonnull %0) #24
  %19 = tail call i32 @test_break(ptr noundef nonnull %0) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  tail call void @freeraytree(ptr noundef nonnull %0) #24
  store ptr @.str.4, ptr %6, align 8, !tbaa !94
  %22 = load ptr, ptr %7, align 8, !tbaa !95
  %23 = load ptr, ptr %9, align 8, !tbaa !96
  tail call void %22(ptr noundef %23, ptr noundef nonnull %5) #25
  br label %51

24:                                               ; preds = %18
  %25 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0x46293E5940000000, ptr %25, align 8, !tbaa !97
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %2, align 8, !tbaa !97
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %26, align 8, !tbaa !97
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %3, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  call void @RE_rayobject_merge_bb(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %29 = load float, ptr %2, align 8, !tbaa !97
  %30 = load float, ptr %3, align 8, !tbaa !97
  %31 = fcmp ogt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call fastcc void @zero_v3(ptr noundef nonnull %2) #24
  call fastcc void @zero_v3(ptr noundef nonnull %3) #24
  br label %33

33:                                               ; preds = %32, %24
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i64 [ %44, %34 ], [ 0, %33 ]
  %36 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !97
  %38 = fadd float %37, 0x3F847AE140000000
  store float %38, ptr %36, align 4, !tbaa !97
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %35
  %40 = load float, ptr %39, align 4, !tbaa !97
  %41 = fadd float %40, 0x3F847AE140000000
  store float %41, ptr %39, align 4, !tbaa !97
  %42 = fsub float %41, %38
  %43 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %35
  store float %42, ptr %43, align 4, !tbaa !97
  %44 = add nuw nsw i64 %35, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %46, label %34, !llvm.loop !98

46:                                               ; preds = %34
  %47 = call fastcc float @len_v3(ptr noundef nonnull %4) #24
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 55
  store float %47, ptr %48, align 8, !tbaa !99
  store ptr @.str.5, ptr %6, align 8, !tbaa !94
  %49 = load ptr, ptr %7, align 8, !tbaa !95
  %50 = load ptr, ptr %9, align 8, !tbaa !96
  call void %49(ptr noundef %50, ptr noundef nonnull %5) #25
  br label %51

51:                                               ; preds = %46, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makeraytree_single(ptr noundef %0) unnamed_addr #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1, %39
  %6 = phi ptr [ %42, %39 ], [ %3, %1 ]
  %7 = phi i32 [ %41, %39 ], [ 0, %1 ]
  %8 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %9 = tail call fastcc i32 @is_raytraceable(ptr noundef %0, ptr noundef nonnull %6) #24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = tail call fastcc zeroext i8 @has_special_rayobject(ptr noundef %0, ptr noundef nonnull %6) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !67
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  br label %25

23:                                               ; preds = %11
  %24 = add nsw i32 %8, 1
  br label %39

25:                                               ; preds = %20, %25
  %26 = phi i32 [ %7, %20 ], [ %36, %25 ]
  %27 = phi i32 [ 0, %20 ], [ %37, %25 ]
  %28 = lshr i32 %27, 8
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.VlakTableNode, ptr %22, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = and i32 %27, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 %33
  %35 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %34) #24, !range !71
  %36 = add nsw i32 %35, %26
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp eq i32 %37, %18
  br i1 %38, label %39, label %25, !llvm.loop !101

39:                                               ; preds = %25, %16, %23, %5
  %40 = phi i32 [ %8, %5 ], [ %24, %23 ], [ %8, %16 ], [ %8, %25 ]
  %41 = phi i32 [ %7, %5 ], [ %7, %23 ], [ %7, %16 ], [ %36, %25 ]
  %42 = load ptr, ptr %6, align 8, !tbaa !57
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %5, !llvm.loop !102

44:                                               ; preds = %39, %1
  %45 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %46 = phi i32 [ 0, %1 ], [ %41, %39 ]
  %47 = add nsw i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = tail call ptr @RE_rayobject_empty_create() #25
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  store ptr %50, ptr %51, align 8, !tbaa !34
  br label %173

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 49
  %54 = load i16, ptr %53, align 8, !tbaa !73
  %55 = sext i16 %54 to i32
  %56 = tail call fastcc ptr @rayobject_create(ptr noundef %0, i32 noundef %55, i32 noundef %47) #24
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 52
  store ptr %56, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %59 = load i32, ptr %58, align 4, !tbaa !74
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %63 = sext i32 %46 to i64
  br i1 %61, label %68, label %64

64:                                               ; preds = %52
  %65 = shl nsw i64 %63, 4
  %66 = tail call ptr %62(i64 noundef %65, ptr noundef nonnull @.str.10) #25
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 54
  store ptr %66, ptr %67, align 8, !tbaa !58
  br label %72

68:                                               ; preds = %52
  %69 = mul nsw i64 %63, 80
  %70 = tail call ptr %62(i64 noundef %69, ptr noundef nonnull @.str.11) #25
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 53
  store ptr %70, ptr %71, align 8, !tbaa !56
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi ptr [ %66, %64 ], [ null, %68 ]
  %74 = phi ptr [ null, %64 ], [ %70, %68 ]
  %75 = load ptr, ptr %2, align 8, !tbaa !57
  %76 = icmp eq ptr %75, null
  br i1 %76, label %163, label %77

77:                                               ; preds = %72, %158
  %78 = phi ptr [ %161, %158 ], [ %75, %72 ]
  %79 = phi ptr [ %160, %158 ], [ %74, %72 ]
  %80 = phi ptr [ %159, %158 ], [ %73, %72 ]
  %81 = tail call fastcc i32 @is_raytraceable(ptr noundef %0, ptr noundef nonnull %78) #24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %158, label %83

83:                                               ; preds = %77
  %84 = tail call i32 @test_break(ptr noundef %0) #24
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %163

86:                                               ; preds = %83
  %87 = tail call fastcc zeroext i8 @has_special_rayobject(ptr noundef %0, ptr noundef nonnull %78) #24
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @makeraytree_object(ptr noundef %0, ptr noundef nonnull %78) #24
  %91 = tail call i32 @test_break(ptr noundef %0) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %163

93:                                               ; preds = %89
  %94 = icmp eq ptr %90, null
  br i1 %94, label %158, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %57, align 8, !tbaa !34
  tail call void @RE_rayobject_add(ptr noundef %96, ptr noundef nonnull %90) #25
  br label %158

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %78, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %78, i64 0, i32 11
  %101 = load i16, ptr %100, align 8, !tbaa !78
  %102 = and i16 %101, 3
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %78, i64 0, i32 19
  store i32 1, ptr %105, align 8, !tbaa !79
  br label %106

106:                                              ; preds = %104, %97
  %107 = getelementptr inbounds %struct.ObjectRen, ptr %99, i64 0, i32 11
  %108 = load i32, ptr %107, align 4, !tbaa !67
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ObjectRen, ptr %99, i64 0, i32 19
  %112 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %78, i64 0, i32 8
  br label %113

113:                                              ; preds = %110, %152
  %114 = phi ptr [ %79, %110 ], [ %154, %152 ]
  %115 = phi ptr [ %80, %110 ], [ %153, %152 ]
  %116 = phi i32 [ 0, %110 ], [ %155, %152 ]
  %117 = load ptr, ptr %111, align 8, !tbaa !68
  %118 = lshr i32 %116, 8
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds %struct.VlakTableNode, ptr %117, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !69
  %122 = and i32 %116, 255
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct.VlakRen, ptr %121, i64 %123
  %125 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %124) #24, !range !71
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %152, label %127

127:                                              ; preds = %113
  %128 = load i32, ptr %58, align 4, !tbaa !74
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = tail call ptr @RE_vlakprimitive_from_vlak(ptr noundef %115, ptr noundef nonnull %78, ptr noundef %124) #25
  tail call void @RE_rayobject_add(ptr noundef %56, ptr noundef %132) #25
  %133 = getelementptr inbounds %struct.VlakPrimitive, ptr %115, i64 1
  br label %152

134:                                              ; preds = %127
  %135 = tail call ptr @RE_rayface_from_vlak(ptr noundef %114, ptr noundef nonnull %78, ptr noundef %124) #25
  %136 = load i16, ptr %100, align 8, !tbaa !78
  %137 = and i16 %136, 3
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %134
  tail call void @mul_m4_v3(ptr noundef nonnull %112, ptr noundef %114) #25
  %140 = getelementptr inbounds %struct.RayFace, ptr %114, i64 0, i32 1
  tail call void @mul_m4_v3(ptr noundef nonnull %112, ptr noundef nonnull %140) #25
  %141 = getelementptr inbounds %struct.RayFace, ptr %114, i64 0, i32 2
  tail call void @mul_m4_v3(ptr noundef nonnull %112, ptr noundef nonnull %141) #25
  %142 = getelementptr inbounds %struct.RayFace, ptr %114, i64 0, i32 4
  %143 = load i32, ptr %142, align 4, !tbaa !103
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.RayFace, ptr %114, i64 0, i32 3
  tail call void @mul_m4_v3(ptr noundef nonnull %112, ptr noundef nonnull %146) #25
  br label %147

147:                                              ; preds = %139, %145, %134
  %148 = ptrtoint ptr %114 to i64
  %149 = or i64 %148, 1
  %150 = inttoptr i64 %149 to ptr
  tail call void @RE_rayobject_add(ptr noundef %56, ptr noundef nonnull %150) #25
  %151 = getelementptr inbounds %struct.RayFace, ptr %114, i64 1
  br label %152

152:                                              ; preds = %131, %147, %113
  %153 = phi ptr [ %133, %131 ], [ %115, %147 ], [ %115, %113 ]
  %154 = phi ptr [ %114, %131 ], [ %151, %147 ], [ %114, %113 ]
  %155 = add nuw nsw i32 %116, 1
  %156 = load i32, ptr %107, align 4, !tbaa !67
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %113, label %158, !llvm.loop !105

158:                                              ; preds = %152, %106, %93, %95, %77
  %159 = phi ptr [ %80, %77 ], [ %80, %95 ], [ %80, %93 ], [ %80, %106 ], [ %153, %152 ]
  %160 = phi ptr [ %79, %77 ], [ %79, %95 ], [ %79, %93 ], [ %79, %106 ], [ %154, %152 ]
  %161 = load ptr, ptr %78, align 8, !tbaa !57
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %77, !llvm.loop !106

163:                                              ; preds = %158, %83, %89, %72
  %164 = tail call i32 @test_break(ptr noundef %0) #24
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %168 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.12, ptr %168, align 8, !tbaa !94
  %169 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %170 = load ptr, ptr %169, align 8, !tbaa !95
  %171 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %172 = load ptr, ptr %171, align 8, !tbaa !96
  tail call void %170(ptr noundef %172, ptr noundef nonnull %167) #25
  tail call void @RE_rayobject_done(ptr noundef %56) #25
  br label %173

173:                                              ; preds = %163, %166, %49
  ret void
}

; Function Attrs: optsize
declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !107 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !97
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !108 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #24
  %3 = tail call float @sqrtf(float noundef %2) #25
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shade_ray(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 15, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %9 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %10 = load float, ptr %0, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 2
  %12 = load float, ptr %11, align 8, !tbaa !113
  %13 = load float, ptr %8, align 4, !tbaa !97
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %10)
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  store float %14, ptr %15, align 8, !tbaa !97
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !97
  %18 = load float, ptr %11, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !97
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %17)
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  store float %21, ptr %22, align 4, !tbaa !97
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !97
  %25 = load float, ptr %11, align 8, !tbaa !113
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !97
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %24)
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  store float %28, ptr %29, align 8, !tbaa !97
  %30 = tail call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  store ptr %5, ptr %31, align 8, !tbaa !114
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %5, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  store ptr %33, ptr %34, align 8, !tbaa !116
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  store ptr %7, ptr %35, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.VlakRen, ptr %7, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  store ptr %37, ptr %1, align 8, !tbaa !118
  tail call void @shade_input_init_material(ptr noundef nonnull %1) #25
  %38 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 14
  %39 = load i32, ptr %38, align 8, !tbaa !119
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %7, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 3) #25
  br label %43

42:                                               ; preds = %3
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %7, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #25
  br label %43

43:                                               ; preds = %42, %41
  %44 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 12
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 23
  %46 = load <2 x float>, ptr %44, align 8, !tbaa !97
  store <2 x float> %46, ptr %45, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 25
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %49 = load i16, ptr %48, align 8, !tbaa !120
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  tail call fastcc void @shade_ray_set_derivative(ptr noundef nonnull %1) #24
  br label %52

52:                                               ; preds = %51, %43
  tail call void @shade_input_set_normals(ptr noundef nonnull %1) #25
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %1) #25
  %53 = load ptr, ptr %1, align 8, !tbaa !118
  %54 = getelementptr inbounds %struct.Material, ptr %53, i64 0, i32 2
  %55 = load i16, ptr %54, align 8, !tbaa !85
  %56 = icmp eq i16 %55, 2
  %57 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !121
  br i1 %56, label %59, label %62

59:                                               ; preds = %52
  switch i32 %58, label %61 [
    i32 0, label %60
    i32 2, label %60
  ]

60:                                               ; preds = %59, %59
  tail call void @shade_volume_shadow(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %0) #25
  br label %96

61:                                               ; preds = %59
  tail call void @shade_volume_outside(ptr noundef nonnull %1, ptr noundef %2) #25
  br label %96

62:                                               ; preds = %52
  %63 = icmp eq i32 %58, 2
  br i1 %63, label %64, label %80

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 116
  %66 = load i16, ptr %65, align 2, !tbaa !122
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Material, ptr %53, i64 0, i32 103
  %70 = load ptr, ptr %69, align 8, !tbaa !123
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Material, ptr %53, i64 0, i32 77
  %74 = load i8, ptr %73, align 1, !tbaa !124
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %70, ptr noundef nonnull %1, ptr noundef %2) #25
  %78 = load ptr, ptr %36, align 8, !tbaa !84
  store ptr %78, ptr %1, align 8, !tbaa !118
  br label %96

79:                                               ; preds = %72, %68, %64
  tail call void @shade_color(ptr noundef nonnull %1, ptr noundef %2) #25
  br label %96

80:                                               ; preds = %62
  %81 = getelementptr inbounds %struct.Material, ptr %53, i64 0, i32 103
  %82 = load ptr, ptr %81, align 8, !tbaa !123
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.Material, ptr %53, i64 0, i32 77
  %86 = load i8, ptr %85, align 1, !tbaa !124
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = tail call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %82, ptr noundef nonnull %1, ptr noundef %2) #25
  %90 = load ptr, ptr %36, align 8, !tbaa !84
  store ptr %90, ptr %1, align 8, !tbaa !118
  br label %92

91:                                               ; preds = %84, %80
  tail call void @shade_material_loop(ptr noundef nonnull %1, ptr noundef %2) #25
  br label %92

92:                                               ; preds = %91, %88
  %93 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6
  %94 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %93, ptr noundef %2, ptr noundef nonnull %94) #24
  %95 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %95, ptr noundef nonnull %93) #24
  br label %96

96:                                               ; preds = %92, %79, %76, %60, %61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  store float %3, ptr %0, align 4, !tbaa !97
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !126 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret float %2
}

; Function Attrs: optsize
declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_ray_set_derivative(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7) #24
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !78
  %12 = and i16 %11, 3
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  call void @mul_v3_m3v3(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef %17) #25
  %18 = load ptr, ptr %8, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %18, i64 0, i32 10
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  call void @mul_v3_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %19, ptr noundef %21) #25
  %22 = load ptr, ptr %8, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %22, i64 0, i32 10
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  call void @mul_v3_m3v3(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef %25) #25
  %26 = load i32, ptr %2, align 4, !tbaa !131
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !97
  %30 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %27
  %31 = load float, ptr %30, align 4, !tbaa !97
  %32 = fsub float %29, %31
  %33 = load i32, ptr %3, align 4, !tbaa !131
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !97
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %34
  %38 = load float, ptr %37, align 4, !tbaa !97
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %27
  %41 = load float, ptr %40, align 4, !tbaa !97
  %42 = fsub float %29, %41
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %34
  %44 = load float, ptr %43, align 4, !tbaa !97
  %45 = fsub float %36, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  br label %73

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !128
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !129
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  %53 = load i32, ptr %2, align 4, !tbaa !131
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %52, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !97
  %57 = getelementptr inbounds float, ptr %48, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !97
  %59 = fsub float %56, %58
  %60 = load i32, ptr %3, align 4, !tbaa !131
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %52, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !97
  %64 = getelementptr inbounds float, ptr %48, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !97
  %66 = fsub float %63, %65
  %67 = getelementptr inbounds float, ptr %50, i64 %54
  %68 = load float, ptr %67, align 4, !tbaa !97
  %69 = fsub float %56, %68
  %70 = getelementptr inbounds float, ptr %50, i64 %61
  %71 = load float, ptr %70, align 4, !tbaa !97
  %72 = fsub float %63, %71
  br label %73

73:                                               ; preds = %46, %14
  %74 = phi i64 [ %61, %46 ], [ %34, %14 ]
  %75 = phi i64 [ %54, %46 ], [ %27, %14 ]
  %76 = phi float [ %72, %46 ], [ %45, %14 ]
  %77 = phi float [ %66, %46 ], [ %39, %14 ]
  %78 = phi float [ %69, %46 ], [ %42, %14 ]
  %79 = phi float [ %59, %46 ], [ %32, %14 ]
  %80 = fneg float %78
  %81 = fmul float %77, %80
  %82 = call float @llvm.fmuladd.f32(float %79, float %76, float %81)
  %83 = fdiv float 1.000000e+00, %82
  %84 = fmul float %79, %83
  %85 = fmul float %77, %83
  %86 = fmul float %78, %83
  %87 = fmul float %76, %83
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %75
  %89 = load float, ptr %88, align 4, !tbaa !97
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 %74
  %91 = load float, ptr %90, align 4, !tbaa !97
  %92 = fneg float %91
  %93 = fmul float %86, %92
  %94 = call float @llvm.fmuladd.f32(float %89, float %87, float %93)
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 25
  store float %94, ptr %95, align 8, !tbaa !132
  %96 = load float, ptr %90, align 4, !tbaa !97
  %97 = load float, ptr %88, align 4, !tbaa !97
  %98 = fneg float %97
  %99 = fmul float %85, %98
  %100 = call float @llvm.fmuladd.f32(float %96, float %84, float %99)
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 26
  store float %100, ptr %101, align 4, !tbaa !133
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %75
  %103 = load float, ptr %102, align 4, !tbaa !97
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 %74
  %105 = load float, ptr %104, align 4, !tbaa !97
  %106 = fneg float %105
  %107 = fmul float %86, %106
  %108 = call float @llvm.fmuladd.f32(float %103, float %87, float %107)
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 27
  store float %108, ptr %109, align 8, !tbaa !134
  %110 = load float, ptr %104, align 4, !tbaa !97
  %111 = load float, ptr %102, align 4, !tbaa !97
  %112 = fneg float %111
  %113 = fmul float %85, %112
  %114 = call float @llvm.fmuladd.f32(float %110, float %84, float %113)
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 28
  store float %114, ptr %115, align 4, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_volume_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_volume_outside(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !136 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = load float, ptr %2, align 4, !tbaa !97
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !97
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !97
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_jitter_plane(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 49
  %3 = load i16, ptr %2, align 8, !tbaa !137
  %4 = sext i16 %3 to i32
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %72

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %10 = shl nsw i32 %4, 2
  %11 = shl nsw i32 %4, 3
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.6) #25
  store ptr %14, ptr %5, align 8, !tbaa !139
  %15 = icmp sgt i16 %3, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %8
  %17 = tail call ptr @BLI_rng_new_srandom(i32 noundef %4) #25
  %18 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %19 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %14, %16 ], [ %33, %20 ]
  %22 = phi i32 [ 0, %16 ], [ %32, %20 ]
  %23 = tail call float @BLI_rng_get_float(ptr noundef %17) #25
  %24 = fadd float %23, -5.000000e-01
  %25 = load float, ptr %18, align 8, !tbaa !140
  %26 = fmul float %24, %25
  store float %26, ptr %21, align 4, !tbaa !97
  %27 = tail call float @BLI_rng_get_float(ptr noundef %17) #25
  %28 = fadd float %27, -5.000000e-01
  %29 = load float, ptr %19, align 4, !tbaa !141
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds float, ptr %21, i64 1
  store float %30, ptr %31, align 4, !tbaa !97
  %32 = add nuw nsw i32 %22, 1
  %33 = getelementptr inbounds float, ptr %21, i64 2
  %34 = icmp eq i32 %32, %4
  br i1 %34, label %38, label %20, !llvm.loop !142

35:                                               ; preds = %41
  %36 = add nsw i32 %39, -1
  %37 = icmp eq i32 %39, 0
  br i1 %37, label %50, label %38, !llvm.loop !143

38:                                               ; preds = %20, %35
  %39 = phi i32 [ %36, %35 ], [ 11, %20 ]
  %40 = load ptr, ptr %5, align 8, !tbaa !139
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %48, %41 ], [ %40, %38 ]
  %43 = phi i32 [ %47, %41 ], [ %4, %38 ]
  %44 = load ptr, ptr %5, align 8, !tbaa !139
  %45 = load float, ptr %18, align 8, !tbaa !140
  %46 = load float, ptr %19, align 4, !tbaa !141
  tail call fastcc void @DP_energy(ptr noundef %44, ptr noundef %42, i32 noundef %4, float noundef %45, float noundef %46) #24
  %47 = add nsw i32 %43, -1
  %48 = getelementptr inbounds float, ptr %42, i64 2
  %49 = icmp sgt i32 %43, 1
  br i1 %49, label %41, label %35, !llvm.loop !144

50:                                               ; preds = %35
  tail call void @BLI_rng_free(ptr noundef %17) #25
  %51 = load ptr, ptr %5, align 8, !tbaa !139
  br label %52

52:                                               ; preds = %50, %8
  %53 = phi ptr [ %51, %50 ], [ %14, %8 ]
  %54 = shl nsw i32 %4, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %53, i64 %55
  %57 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %58 = load float, ptr %57, align 8, !tbaa !140
  %59 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  %60 = load float, ptr %59, align 4, !tbaa !141
  tail call fastcc void @jitter_plane_offset(ptr noundef %53, ptr noundef %56, i32 noundef %4, float noundef %58, float noundef %60, float noundef 5.000000e-01, float noundef 0.000000e+00) #24
  %61 = load ptr, ptr %5, align 8, !tbaa !139
  %62 = sext i32 %10 to i64
  %63 = getelementptr inbounds float, ptr %61, i64 %62
  %64 = load float, ptr %57, align 8, !tbaa !140
  %65 = load float, ptr %59, align 4, !tbaa !141
  tail call fastcc void @jitter_plane_offset(ptr noundef %61, ptr noundef %63, i32 noundef %4, float noundef %64, float noundef %65, float noundef 5.000000e-01, float noundef 5.000000e-01) #24
  %66 = load ptr, ptr %5, align 8, !tbaa !139
  %67 = mul nsw i32 %4, 6
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, ptr %66, i64 %68
  %70 = load float, ptr %57, align 8, !tbaa !140
  %71 = load float, ptr %59, align 4, !tbaa !141
  tail call fastcc void @jitter_plane_offset(ptr noundef %66, ptr noundef %69, i32 noundef %4, float noundef %70, float noundef %71, float noundef 0.000000e+00, float noundef 5.000000e-01) #24
  br label %72

72:                                               ; preds = %1, %52
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DP_energy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3, float noundef %4) unnamed_addr #9 !PGOFuncName !145 {
  %6 = fcmp olt float %3, %4
  %7 = select i1 %6, float %3, float %4
  %8 = fmul float %7, %7
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %5, %52
  %11 = phi i32 [ -1, %5 ], [ %53, %52 ]
  %12 = phi <2 x float> [ zeroinitializer, %5 ], [ %49, %52 ]
  %13 = sitofp i32 %11 to float
  %14 = fmul float %13, %4
  br label %15

15:                                               ; preds = %10, %48
  %16 = phi i32 [ -1, %10 ], [ %50, %48 ]
  %17 = phi <2 x float> [ %12, %10 ], [ %49, %48 ]
  br i1 %9, label %18, label %48

18:                                               ; preds = %15
  %19 = sitofp i32 %16 to float
  %20 = fmul float %19, %3
  %21 = load <2 x float>, ptr %1, align 4, !tbaa !97
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %23 = insertelement <2 x float> %22, float %14, i64 1
  br label %24

24:                                               ; preds = %18, %24
  %25 = phi i32 [ 0, %18 ], [ %45, %24 ]
  %26 = phi ptr [ %0, %18 ], [ %46, %24 ]
  %27 = phi <2 x float> [ %17, %18 ], [ %44, %24 ]
  %28 = load <2 x float>, ptr %26, align 4, !tbaa !97
  %29 = fsub <2 x float> %21, %28
  %30 = fsub <2 x float> %29, %23
  %31 = fmul <2 x float> %30, %30
  %32 = extractelement <2 x float> %31, i64 1
  %33 = extractelement <2 x float> %30, i64 0
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %32)
  %35 = fcmp olt float %34, %8
  %36 = fcmp ogt float %34, 0.000000e+00
  %37 = and i1 %35, %36
  %38 = insertelement <2 x float> poison, float %34, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = fdiv <2 x float> %30, %39
  %41 = insertelement <2 x i1> poison, i1 %37, i64 0
  %42 = shufflevector <2 x i1> %41, <2 x i1> poison, <2 x i32> zeroinitializer
  %43 = select <2 x i1> %42, <2 x float> %40, <2 x float> <float -0.000000e+00, float -0.000000e+00>
  %44 = fadd <2 x float> %27, %43
  %45 = add nuw nsw i32 %25, 1
  %46 = getelementptr inbounds float, ptr %26, i64 2
  %47 = icmp eq i32 %45, %2
  br i1 %47, label %48, label %24, !llvm.loop !146

48:                                               ; preds = %24, %15
  %49 = phi <2 x float> [ %17, %15 ], [ %44, %24 ]
  %50 = add nsw i32 %16, 1
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %15, !llvm.loop !147

52:                                               ; preds = %48
  %53 = add nsw i32 %11, 1
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %10, !llvm.loop !148

55:                                               ; preds = %52
  %56 = fmul float %8, 0x3FB99999A0000000
  %57 = sitofp i32 %2 to float
  %58 = insertelement <2 x float> poison, float %3, i64 0
  %59 = insertelement <2 x float> %58, float %4, i64 1
  %60 = fneg <2 x float> %59
  %61 = insertelement <2 x float> poison, float %56, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = fmul <2 x float> %62, %49
  %64 = insertelement <2 x float> poison, float %57, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = fdiv <2 x float> %63, %65
  %67 = load <2 x float>, ptr %1, align 4, !tbaa !97
  %68 = fadd <2 x float> %66, %67
  %69 = fdiv <2 x float> %68, %59
  %70 = fadd <2 x float> %69, <float 5.000000e-01, float 5.000000e-01>
  %71 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %70)
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %71, <2 x float> %68)
  store <2 x float> %72, ptr %1, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @jitter_plane_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #10 !PGOFuncName !149 {
  %8 = fmul float %3, %5
  %9 = fmul float %4, %6
  %10 = fmul float %3, 5.000000e-01
  %11 = fmul float %4, 5.000000e-01
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %7, %30
  %14 = phi i32 [ %31, %30 ], [ %2, %7 ]
  %15 = phi ptr [ %32, %30 ], [ %0, %7 ]
  %16 = phi ptr [ %33, %30 ], [ %1, %7 ]
  %17 = load float, ptr %15, align 4, !tbaa !97
  %18 = fadd float %8, %17
  store float %18, ptr %16, align 4, !tbaa !97
  %19 = getelementptr inbounds float, ptr %15, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !97
  %21 = fadd float %9, %20
  %22 = getelementptr inbounds float, ptr %16, i64 1
  store float %21, ptr %22, align 4, !tbaa !97
  %23 = fcmp ogt float %18, %10
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = fsub float %18, %3
  store float %25, ptr %16, align 4, !tbaa !97
  br label %26

26:                                               ; preds = %24, %13
  %27 = fcmp ogt float %21, %11
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = fsub float %21, %4
  store float %29, ptr %22, align 4, !tbaa !97
  br label %30

30:                                               ; preds = %26, %28
  %31 = add nsw i32 %14, -1
  %32 = getelementptr inbounds float, ptr %15, i64 2
  %33 = getelementptr inbounds float, ptr %16, i64 2
  %34 = icmp sgt i32 %14, 1
  br i1 %34, label %13, label %35, !llvm.loop !150

35:                                               ; preds = %30, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_render_qmcsampler(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %3 = tail call ptr %2(i64 noundef 16, ptr noundef nonnull @.str.7) #25
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  store ptr %3, ptr %4, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_render_qmcsampler(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !152
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  tail call fastcc void @QMC_freeSampler(ptr noundef nonnull %9) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !155

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8, !tbaa !151
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ %3, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %16(ptr noundef nonnull %15) #25
  store ptr null, ptr %2, align 8, !tbaa !151
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @QMC_freeSampler(ptr noundef %0) unnamed_addr #0 !PGOFuncName !156 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  tail call void %2(ptr noundef %4) #25
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %5(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ray_trace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 21
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = and i32 %8, 196608
  %10 = icmp eq i32 %9, 196608
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !118
  br label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !159
  %16 = fcmp une float %15, 1.000000e+00
  %17 = load ptr, ptr %0, align 8, !tbaa !118
  br i1 %16, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %20 = load i32, ptr %19, align 8, !tbaa !161
  %21 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 37
  %22 = load i16, ptr %21, align 2, !tbaa !162
  %23 = sext i16 %22 to i32
  %24 = icmp sle i32 %20, %23
  br label %25

25:                                               ; preds = %11, %18, %13
  %26 = phi ptr [ %17, %13 ], [ %12, %11 ], [ %17, %18 ]
  %27 = phi i1 [ false, %13 ], [ false, %11 ], [ %24, %18 ]
  %28 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 51
  %29 = load i32, ptr %28, align 4, !tbaa !163
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %34 = load float, ptr %33, align 4, !tbaa !164
  %35 = fcmp une float %34, 0.000000e+00
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %38 = load i32, ptr %37, align 8, !tbaa !161
  %39 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 36
  %40 = load i16, ptr %39, align 4, !tbaa !165
  %41 = sext i16 %40 to i32
  %42 = icmp sle i32 %38, %41
  br label %43

43:                                               ; preds = %36, %32, %25
  %44 = phi i1 [ false, %32 ], [ false, %25 ], [ %42, %36 ]
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 120
  %46 = load i32, ptr %45, align 4, !tbaa !166
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %50) #24
  br label %52

51:                                               ; preds = %43
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #24
  br label %52

52:                                               ; preds = %51, %49
  br i1 %27, label %53, label %102

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call fastcc void @trace_refract(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #24
  %54 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 2
  %55 = load float, ptr %54, align 4, !tbaa !159
  %56 = fsub float 1.000000e+00, %55
  %57 = load ptr, ptr %0, align 8, !tbaa !118
  %58 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 33
  %59 = load float, ptr %58, align 8, !tbaa !167
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 34
  %62 = load float, ptr %61, align 4, !tbaa !168
  %63 = fadd float %62, -1.000000e+00
  %64 = tail call float @llvm.fmuladd.f32(float %59, float %63, float 1.000000e+00)
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  %65 = load <2 x float>, ptr %60, align 4, !tbaa !97
  %66 = fadd <2 x float> %65, <float -1.000000e+00, float -1.000000e+00>
  %67 = insertelement <2 x float> poison, float %59, i64 0
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer
  %69 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> %66, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %70 = load <2 x float>, ptr %5, align 8, !tbaa !97
  %71 = insertelement <2 x float> poison, float %56, i64 0
  %72 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> zeroinitializer
  %73 = fmul <2 x float> %72, %69
  %74 = load <2 x float>, ptr %4, align 16, !tbaa !97
  %75 = fmul <2 x float> %73, %74
  %76 = insertelement <2 x float> poison, float %55, i64 0
  %77 = shufflevector <2 x float> %76, <2 x float> poison, <2 x i32> zeroinitializer
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %77, <2 x float> %70, <2 x float> %75)
  store <2 x float> %78, ptr %5, align 8, !tbaa !97
  %79 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %80 = load float, ptr %79, align 8, !tbaa !97
  %81 = fmul float %56, %64
  %82 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %83 = load float, ptr %82, align 8, !tbaa !97
  %84 = fmul float %81, %83
  %85 = tail call float @llvm.fmuladd.f32(float %55, float %80, float %84)
  store float %85, ptr %79, align 8, !tbaa !97
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %87 = load i32, ptr %86, align 8, !tbaa !169
  %88 = and i32 %87, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %53
  %91 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %91, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  br label %92

92:                                               ; preds = %90, %53
  %93 = load i32, ptr %45, align 4, !tbaa !166
  %94 = and i32 %93, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %97) #24
  br label %98

98:                                               ; preds = %96, %92
  %99 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %100 = load float, ptr %99, align 4, !tbaa !97
  %101 = tail call fastcc float @min_ff(float noundef %100) #24
  store float %101, ptr %54, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  br label %102

102:                                              ; preds = %98, %52
  %103 = phi i32 [ %93, %98 ], [ %46, %52 ]
  br i1 %44, label %104, label %193

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %106 = load float, ptr %105, align 4, !tbaa !164
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %109 = load ptr, ptr %0, align 8, !tbaa !118
  %110 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 30
  %111 = load float, ptr %110, align 4, !tbaa !170
  %112 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 29
  %113 = load float, ptr %112, align 8, !tbaa !171
  %114 = tail call float @fresnel_fac(ptr noundef nonnull %107, ptr noundef nonnull %108, float noundef %111, float noundef %113) #25
  %115 = fmul float %106, %114
  %116 = fcmp une float %115, 0.000000e+00
  br i1 %116, label %119, label %117

117:                                              ; preds = %104
  %118 = load i32, ptr %45, align 4, !tbaa !166
  br label %193

119:                                              ; preds = %104
  call fastcc void @trace_reflect(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef %1, float noundef %115) #24
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %121 = load <2 x float>, ptr %120, align 4, !tbaa !97
  %122 = insertelement <2 x float> poison, float %115, i64 0
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <2 x i32> zeroinitializer
  %124 = fmul <2 x float> %123, %121
  %125 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 40
  %126 = load float, ptr %125, align 4, !tbaa !172
  %127 = fmul float %115, %126
  %128 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 119
  %129 = load i32, ptr %128, align 8, !tbaa !169
  %130 = and i32 %129, 128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %119
  %133 = fneg <2 x float> %124
  %134 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  %135 = load <2 x float>, ptr %3, align 16, !tbaa !97
  %136 = load <2 x float>, ptr %5, align 8, !tbaa !97
  %137 = fmul <2 x float> %136, %133
  %138 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %124, <2 x float> %135, <2 x float> %137)
  store <2 x float> %138, ptr %134, align 4, !tbaa !97
  %139 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %140 = load float, ptr %139, align 8, !tbaa !97
  %141 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %142 = load float, ptr %141, align 8, !tbaa !97
  %143 = fneg float %127
  %144 = fmul float %142, %143
  %145 = tail call float @llvm.fmuladd.f32(float %127, float %140, float %144)
  %146 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13, i64 2
  store float %145, ptr %146, align 4, !tbaa !97
  br label %147

147:                                              ; preds = %132, %119
  %148 = load i32, ptr %45, align 4, !tbaa !166
  %149 = and i32 %148, 128
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %193, label %151

151:                                              ; preds = %147
  %152 = fsub float 1.000000e+00, %115
  %153 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %154 = load <2 x float>, ptr %5, align 8, !tbaa !97
  %155 = insertelement <2 x float> poison, float %152, i64 0
  %156 = shufflevector <2 x float> %155, <2 x float> poison, <2 x i32> zeroinitializer
  %157 = fmul <2 x float> %156, %154
  store <2 x float> %157, ptr %5, align 8, !tbaa !97
  %158 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %159 = load float, ptr %158, align 8, !tbaa !97
  %160 = fmul float %152, %159
  store float %160, ptr %158, align 8, !tbaa !97
  %161 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %162 = load float, ptr %161, align 4, !tbaa !97
  %163 = fcmp olt float %162, 1.000000e+00
  br i1 %163, label %164, label %171

164:                                              ; preds = %151
  %165 = load float, ptr %3, align 16, !tbaa !97
  %166 = fsub float 1.000000e+00, %162
  %167 = extractelement <2 x float> %124, i64 0
  %168 = fmul float %167, %166
  %169 = extractelement <2 x float> %157, i64 0
  %170 = tail call float @llvm.fmuladd.f32(float %165, float %168, float %169)
  store float %170, ptr %5, align 8, !tbaa !97
  br label %171

171:                                              ; preds = %164, %151
  %172 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !97
  %174 = fcmp olt float %173, 1.000000e+00
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !97
  %178 = fsub float 1.000000e+00, %173
  %179 = extractelement <2 x float> %124, i64 1
  %180 = fmul float %179, %178
  %181 = extractelement <2 x float> %157, i64 1
  %182 = tail call float @llvm.fmuladd.f32(float %177, float %180, float %181)
  store float %182, ptr %153, align 4, !tbaa !97
  br label %183

183:                                              ; preds = %175, %171
  %184 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !97
  %186 = fcmp olt float %185, 1.000000e+00
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %189 = load float, ptr %188, align 8, !tbaa !97
  %190 = fsub float 1.000000e+00, %185
  %191 = fmul float %127, %190
  %192 = tail call float @llvm.fmuladd.f32(float %189, float %191, float %160)
  store float %192, ptr %158, align 8, !tbaa !97
  br label %193

193:                                              ; preds = %117, %183, %187, %147, %102
  %194 = phi i32 [ %118, %117 ], [ %148, %183 ], [ %148, %187 ], [ %148, %147 ], [ %103, %102 ]
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %198) #24
  br label %200

199:                                              ; preds = %193
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #24
  br label %200

200:                                              ; preds = %199, %197
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trace_refract(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !173 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #26
  %11 = load ptr, ptr %1, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 42
  %13 = load float, ptr %12, align 8, !tbaa !174
  %14 = fsub float 1.000000e+00, %13
  %15 = tail call float @powf(float noundef %14, float noundef 3.000000e+00) #25
  %16 = load ptr, ptr %1, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 44
  %18 = load i16, ptr %17, align 2, !tbaa !175
  %19 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 46
  %20 = load float, ptr %19, align 4, !tbaa !176
  %21 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %21, align 8, !tbaa !97
  store <2 x float> zeroinitializer, ptr %10, align 16, !tbaa !97
  %22 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !97
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !97
  %23 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !159
  %25 = getelementptr inbounds float, ptr %0, i64 3
  store float %24, ptr %25, align 4, !tbaa !97
  %26 = fcmp ogt float %15, 0.000000e+00
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = fcmp une float %20, 0.000000e+00
  %29 = select i1 %28, i32 1, i32 2
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %31 = load i16, ptr %30, align 2, !tbaa !177
  %32 = sext i16 %31 to i32
  %33 = sext i16 %18 to i32
  %34 = tail call fastcc ptr @get_thread_qmcsampler(i32 noundef %32, i32 noundef %29, i32 noundef %33) #24
  %35 = load i16, ptr %30, align 2, !tbaa !177
  %36 = sext i16 %35 to i32
  tail call fastcc void @QMC_initPixel(ptr noundef %34, i32 noundef %36) #24
  %37 = icmp sgt i16 %18, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = load <4 x float>, ptr %0, align 4, !tbaa !97
  br label %123

40:                                               ; preds = %3, %27
  %41 = phi ptr [ %34, %27 ], [ null, %3 ]
  %42 = phi i16 [ %18, %27 ], [ 1, %3 ]
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 46
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %47 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 6
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %52 = fcmp olt float %20, 1.000000e+00
  br label %53

53:                                               ; preds = %40, %117
  %54 = phi i32 [ 0, %40 ], [ %97, %117 ]
  %55 = phi i16 [ %42, %40 ], [ %118, %117 ]
  %56 = phi i32 [ 0, %40 ], [ %84, %117 ]
  %57 = phi float [ 0.000000e+00, %40 ], [ %96, %117 ]
  %58 = phi <2 x float> [ zeroinitializer, %40 ], [ %94, %117 ]
  %59 = load float, ptr %45, align 4, !tbaa !178
  %60 = call fastcc i32 @refraction(ptr noundef nonnull %7, ptr noundef nonnull %43, ptr noundef nonnull %44, float noundef %59) #24, !range !71
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load ptr, ptr %48, align 8, !tbaa !117
  %64 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 7
  %65 = load i8, ptr %64, align 1, !tbaa !82
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  call fastcc void @reflection(ptr noundef nonnull %7, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %49) #24
  br label %79

69:                                               ; preds = %62
  call fastcc void @reflection_simple(ptr noundef nonnull %7, ptr noundef nonnull %43, ptr noundef nonnull %44) #24
  br label %79

70:                                               ; preds = %53
  %71 = or i32 %56, 2
  %72 = icmp sgt i16 %55, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i16, ptr %46, align 2, !tbaa !177
  %75 = sext i16 %74 to i32
  call fastcc void @QMC_samplePhong(ptr noundef nonnull %4, ptr noundef %41, i32 noundef %75, i32 noundef %54, float noundef %15) #24
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %76 = load float, ptr %4, align 4, !tbaa !97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %76) #24
  %77 = load float, ptr %47, align 4, !tbaa !97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %77) #24
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %5) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  %78 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  br label %82

79:                                               ; preds = %68, %69, %70
  %80 = phi i16 [ %55, %70 ], [ 1, %69 ], [ 1, %68 ]
  %81 = phi i32 [ %71, %70 ], [ %56, %69 ], [ %56, %68 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i16 [ %80, %79 ], [ %55, %73 ]
  %84 = phi i32 [ %81, %79 ], [ %71, %73 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %85 = load ptr, ptr %1, align 8, !tbaa !118
  %86 = getelementptr inbounds %struct.Material, ptr %85, i64 0, i32 37
  %87 = load i16, ptr %86, align 2, !tbaa !162
  %88 = load ptr, ptr %51, align 8, !tbaa !114
  %89 = load ptr, ptr %48, align 8, !tbaa !117
  call fastcc void @traceray(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %87, ptr noundef nonnull %50, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %88, ptr noundef %89, i32 noundef %84) #24
  %90 = load <4 x float>, ptr %9, align 16, !tbaa !97
  %91 = load <4 x float>, ptr %0, align 4, !tbaa !97
  %92 = fadd <4 x float> %90, %91
  store <4 x float> %92, ptr %0, align 4, !tbaa !97
  %93 = shufflevector <4 x float> %90, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %94 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %93, <2 x float> %93, <2 x float> %58)
  store <2 x float> %94, ptr %10, align 16, !tbaa !97
  %95 = extractelement <4 x float> %90, i64 2
  %96 = call float @llvm.fmuladd.f32(float %95, float %95, float %57)
  store float %96, ptr %21, align 8, !tbaa !97
  %97 = add nuw nsw i32 %54, 1
  br i1 %52, label %98, label %117

98:                                               ; preds = %82
  %99 = sdiv i16 %83, 2
  %100 = sext i16 %99 to i32
  %101 = icmp slt i32 %54, %100
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = call fastcc i32 @adaptive_sample_variance(i32 noundef %97, ptr noundef nonnull %0, ptr noundef nonnull %10, float noundef %20) #24, !range !71
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = shufflevector <4 x float> %92, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %107 = fadd <4 x float> %92, %106
  %108 = shufflevector <4 x float> %92, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %109 = fadd <4 x float> %107, %108
  %110 = extractelement <4 x float> %109, i64 0
  %111 = fdiv float %110, 3.000000e+00
  %112 = sitofp i32 %97 to float
  %113 = fdiv float %111, %112
  %114 = fcmp olt float %113, 0x3F847AE140000000
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = add i16 %83, -1
  br label %117

117:                                              ; preds = %105, %115, %98, %82
  %118 = phi i16 [ %116, %115 ], [ %83, %105 ], [ %83, %98 ], [ %83, %82 ]
  %119 = sext i16 %118 to i32
  %120 = icmp slt i32 %97, %119
  br i1 %120, label %53, label %121, !llvm.loop !179

121:                                              ; preds = %102, %117
  %122 = sitofp i32 %97 to float
  br label %123

123:                                              ; preds = %38, %121
  %124 = phi ptr [ %34, %38 ], [ %41, %121 ]
  %125 = phi float [ 0.000000e+00, %38 ], [ %122, %121 ]
  %126 = phi <4 x float> [ %39, %38 ], [ %92, %121 ]
  %127 = insertelement <4 x float> poison, float %125, i64 0
  %128 = shufflevector <4 x float> %127, <4 x float> poison, <4 x i32> zeroinitializer
  %129 = fdiv <4 x float> %126, %128
  store <4 x float> %129, ptr %0, align 4, !tbaa !97
  %130 = icmp eq ptr %124, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  call fastcc void @release_thread_qmcsampler(ptr noundef nonnull %124) #24
  br label %132

132:                                              ; preds = %131, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #11 !PGOFuncName !180 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: optsize
declare float @fresnel_fac(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trace_reflect(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !181 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #26
  %12 = load ptr, ptr %1, align 8, !tbaa !118
  %13 = getelementptr inbounds %struct.Material, ptr %12, i64 0, i32 41
  %14 = load float, ptr %13, align 4, !tbaa !182
  %15 = fsub float 1.000000e+00, %14
  %16 = tail call float @powf(float noundef %15, float noundef 3.000000e+00) #25
  %17 = load ptr, ptr %1, align 8, !tbaa !118
  %18 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 43
  %19 = load i16, ptr %18, align 4, !tbaa !183
  %20 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 45
  %21 = load float, ptr %20, align 8, !tbaa !184
  %22 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 47
  %23 = load float, ptr %22, align 8, !tbaa !185
  %24 = fsub float 1.000000e+00, %23
  %25 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %25, align 4, !tbaa !97
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !97
  %26 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !97
  %27 = fcmp ogt float %16, 0.000000e+00
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = fcmp une float %21, 0.000000e+00
  %30 = select i1 %29, i32 1, i32 2
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %32 = load i16, ptr %31, align 2, !tbaa !177
  %33 = sext i16 %32 to i32
  %34 = sext i16 %19 to i32
  %35 = tail call fastcc ptr @get_thread_qmcsampler(i32 noundef %33, i32 noundef %30, i32 noundef %34) #24
  %36 = load i16, ptr %31, align 2, !tbaa !177
  %37 = sext i16 %36 to i32
  tail call fastcc void @QMC_initPixel(ptr noundef %35, i32 noundef %37) #24
  %38 = icmp sgt i16 %19, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %41 = load float, ptr %25, align 4, !tbaa !97
  br label %136

42:                                               ; preds = %4, %28
  %43 = phi ptr [ %35, %28 ], [ null, %4 ]
  %44 = phi i16 [ %19, %28 ], [ 1, %4 ]
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 65
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 30
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 6
  %52 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %55 = fcmp ule float %21, 0.000000e+00
  %56 = fadd float %16, 1.000000e+00
  %57 = fmul float %56, 0x3FB99999A0000000
  %58 = fcmp ogt float %57, %3
  %59 = fmul float %56, 0x3FA99999A0000000
  %60 = fcmp ogt float %59, %3
  br label %61

61:                                               ; preds = %42, %130
  %62 = phi i32 [ 0, %42 ], [ %107, %130 ]
  %63 = phi i16 [ %44, %42 ], [ %131, %130 ]
  %64 = phi float [ 0.000000e+00, %42 ], [ %106, %130 ]
  %65 = phi <2 x float> [ zeroinitializer, %42 ], [ %105, %130 ]
  %66 = icmp sgt i16 %63, 1
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i16, ptr %46, align 2, !tbaa !177
  %69 = sext i16 %68 to i32
  call fastcc void @QMC_samplePhong(ptr noundef nonnull %5, ptr noundef %43, i32 noundef %69, i32 noundef %62, float noundef %16) #24
  %70 = load ptr, ptr %1, align 8, !tbaa !118
  %71 = getelementptr inbounds %struct.Material, ptr %70, i64 0, i32 51
  %72 = load i32, ptr %71, align 4, !tbaa !163
  %73 = and i32 %72, 67108864
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %45, ptr noundef nonnull %47) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %47) #24
  %76 = load float, ptr %5, align 4, !tbaa !97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %76) #24
  %77 = load float, ptr %48, align 4, !tbaa !97
  %78 = fmul float %24, %77
  br label %82

79:                                               ; preds = %67
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %45) #25
  %80 = load float, ptr %5, align 4, !tbaa !97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %80) #24
  %81 = load float, ptr %48, align 4, !tbaa !97
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi float [ %81, %79 ], [ %78, %75 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %83) #24
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %45, ptr noundef nonnull %6) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  %84 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  br label %86

85:                                               ; preds = %61
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %45) #24
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %49, align 8, !tbaa !117
  %88 = getelementptr inbounds %struct.VlakRen, ptr %87, i64 0, i32 7
  %89 = load i8, ptr %88, align 1, !tbaa !82
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  call fastcc void @reflection(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %50, ptr noundef nonnull %51) #24
  br label %94

93:                                               ; preds = %86
  call fastcc void @reflection_simple(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %50) #24
  br label %94

94:                                               ; preds = %93, %92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %95 = load ptr, ptr %1, align 8, !tbaa !118
  %96 = getelementptr inbounds %struct.Material, ptr %95, i64 0, i32 36
  %97 = load i16, ptr %96, align 4, !tbaa !165
  %98 = load ptr, ptr %54, align 8, !tbaa !114
  call fastcc void @traceray(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %97, ptr noundef nonnull %53, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %98, ptr noundef nonnull %87, i32 noundef 0) #24
  %99 = load <2 x float>, ptr %10, align 16, !tbaa !97
  %100 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %101 = fadd <2 x float> %99, %100
  store <2 x float> %101, ptr %0, align 4, !tbaa !97
  %102 = load float, ptr %52, align 8, !tbaa !97
  %103 = load float, ptr %25, align 4, !tbaa !97
  %104 = fadd float %102, %103
  store float %104, ptr %25, align 4, !tbaa !97
  %105 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %99, <2 x float> %99, <2 x float> %65)
  store <2 x float> %105, ptr %11, align 16, !tbaa !97
  %106 = call float @llvm.fmuladd.f32(float %102, float %102, float %64)
  store float %106, ptr %26, align 8, !tbaa !97
  %107 = add nuw nsw i32 %62, 1
  %108 = sdiv i16 %63, 3
  %109 = sext i16 %108 to i32
  %110 = icmp slt i32 %62, %109
  %111 = or i1 %55, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %94
  %113 = call fastcc i32 @adaptive_sample_variance(i32 noundef %107, ptr noundef nonnull %0, ptr noundef nonnull %11, float noundef %21) #24, !range !71
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %117 = fadd <2 x float> %101, %116
  %118 = extractelement <2 x float> %117, i64 0
  %119 = fadd float %118, %104
  %120 = fdiv float %119, 3.000000e+00
  %121 = sitofp i32 %107 to float
  %122 = fdiv float %120, %121
  %123 = fcmp olt float %122, 0x3F847AE140000000
  %124 = sext i1 %123 to i16
  %125 = add i16 %63, %124
  br i1 %58, label %126, label %130

126:                                              ; preds = %115
  %127 = add i16 %125, -1
  br i1 %60, label %128, label %130

128:                                              ; preds = %126
  %129 = add i16 %125, -2
  br label %130

130:                                              ; preds = %115, %128, %126, %94
  %131 = phi i16 [ %129, %128 ], [ %127, %126 ], [ %125, %115 ], [ %63, %94 ]
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %107, %132
  br i1 %133, label %61, label %134, !llvm.loop !186

134:                                              ; preds = %112, %130
  %135 = sitofp i32 %107 to float
  br label %136

136:                                              ; preds = %39, %134
  %137 = phi ptr [ %35, %39 ], [ %43, %134 ]
  %138 = phi float [ %41, %39 ], [ %104, %134 ]
  %139 = phi float [ 0.000000e+00, %39 ], [ %135, %134 ]
  %140 = phi <2 x float> [ %40, %39 ], [ %101, %134 ]
  %141 = insertelement <2 x float> poison, float %139, i64 0
  %142 = shufflevector <2 x float> %141, <2 x float> poison, <2 x i32> zeroinitializer
  %143 = fdiv <2 x float> %140, %142
  store <2 x float> %143, ptr %0, align 4, !tbaa !97
  %144 = fdiv float %138, %139
  store float %144, ptr %25, align 4, !tbaa !97
  %145 = icmp eq ptr %137, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %136
  call fastcc void @release_thread_qmcsampler(ptr noundef nonnull %137) #24
  br label %147

147:                                              ; preds = %146, %136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !187 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = load float, ptr %2, align 4, !tbaa !97
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !97
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !97
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ao_sphere(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 51
  %3 = load i16, ptr %2, align 2, !tbaa !188
  %4 = sext i16 %3 to i32
  %5 = shl nsw i32 %4, 1
  %6 = mul nsw i32 %5, %4
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %8 = mul nsw i32 %6, 3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %7(i64 noundef %10, ptr noundef nonnull @.str.8) #25
  %12 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 67
  store ptr %11, ptr %12, align 8, !tbaa !189
  %13 = tail call ptr @BLI_rng_new_srandom(i32 noundef %6) #25
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load ptr, ptr %12, align 8, !tbaa !189
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %21, %17 ], [ %16, %15 ]
  %19 = phi i32 [ %20, %17 ], [ 0, %15 ]
  tail call void @BLI_rng_get_float_unit_v3(ptr noundef %13, ptr noundef %18) #25
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds float, ptr %18, i64 3
  %22 = icmp eq i32 %20, %6
  br i1 %22, label %23, label %17, !llvm.loop !190

23:                                               ; preds = %17, %1
  br label %27

24:                                               ; preds = %31, %27
  %25 = add nsw i32 %28, -1
  %26 = icmp eq i32 %28, 0
  br i1 %26, label %38, label %27, !llvm.loop !191

27:                                               ; preds = %23, %24
  %28 = phi i32 [ %25, %24 ], [ 15, %23 ]
  br i1 %14, label %29, label %24

29:                                               ; preds = %27
  %30 = load ptr, ptr %12, align 8, !tbaa !189
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %36, %31 ], [ %30, %29 ]
  %33 = phi i32 [ %35, %31 ], [ 0, %29 ]
  %34 = load ptr, ptr %12, align 8, !tbaa !189
  tail call fastcc void @DS_energy(ptr noundef %34, i32 noundef %6, ptr noundef %32) #24
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds float, ptr %32, i64 3
  %37 = icmp eq i32 %35, %6
  br i1 %37, label %24, label %31, !llvm.loop !192

38:                                               ; preds = %24
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %40 = tail call ptr %39(i64 noundef %10, ptr noundef nonnull @.str.9) #25
  %41 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 68
  store ptr %40, ptr %41, align 8, !tbaa !193
  tail call void @BLI_rng_free(ptr noundef %13) #25
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_get_float_unit_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @DS_energy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #12 !PGOFuncName !194 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi i32 [ 0, %7 ], [ %27, %24 ]
  %11 = phi ptr [ %0, %7 ], [ %28, %24 ]
  %12 = phi float [ 0.000000e+00, %7 ], [ %25, %24 ]
  %13 = phi <2 x float> [ zeroinitializer, %7 ], [ %26, %24 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %11) #24
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4) #24
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = fdiv float 1.000000e+00, %14
  %18 = load <2 x float>, ptr %4, align 8, !tbaa !97
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %18, <2 x float> %13)
  %22 = load float, ptr %8, align 8, !tbaa !97
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %22, float %12)
  br label %24

24:                                               ; preds = %9, %16
  %25 = phi float [ %12, %9 ], [ %23, %16 ]
  %26 = phi <2 x float> [ %13, %9 ], [ %21, %16 ]
  %27 = add nuw nsw i32 %10, 1
  %28 = getelementptr inbounds float, ptr %11, i64 3
  %29 = icmp eq i32 %27, %1
  br i1 %29, label %30, label %9, !llvm.loop !195

30:                                               ; preds = %24, %3
  %31 = phi float [ 0.000000e+00, %3 ], [ %25, %24 ]
  %32 = phi <2 x float> [ zeroinitializer, %3 ], [ %26, %24 ]
  %33 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store <2 x float> %32, ptr %5, align 8, !tbaa !97
  store float %31, ptr %33, align 8, !tbaa !97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef 5.000000e-01) #24
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #24
  %34 = tail call fastcc float @normalize_v3(ptr noundef %2) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ray_ao(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 63), align 8
  %5 = add i16 %4, -1
  %6 = icmp ult i16 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @ray_ao_qmc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  br label %11

8:                                                ; preds = %3
  %9 = icmp eq i16 %4, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call fastcc void @ray_ao_spheresamp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  br label %11

11:                                               ; preds = %8, %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_ao_qmc(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !196 {
  %4 = alloca %struct.Isect, align 8
  %5 = alloca %struct.RayHint, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #26
  %14 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 46), align 8, !tbaa !197
  %15 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 54), align 8, !tbaa !198
  %16 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 55), align 4, !tbaa !199
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !200
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #26
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %21, ptr %22, align 8, !tbaa !201
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !202
  %26 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 2, ptr %26, align 4, !tbaa !203
  %27 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  store i32 2, ptr %27, align 8, !tbaa !204
  %28 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  %29 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 15
  %30 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %31 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !205
  %32 = shl i16 %31, 1
  %33 = and i16 %32, 2
  %34 = zext nneg i16 %33 to i32
  %35 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 %34, ptr %35, align 8, !tbaa !121
  %36 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %36, align 4, !tbaa !206
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %37) #24
  call void @RE_instance_rotate_ray_start(ptr noundef %21, ptr noundef nonnull %4) #25
  %38 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4) #25
  store ptr %5, ptr %28, align 8, !tbaa !207
  call fastcc void @zero_v3(ptr noundef %1) #24
  call fastcc void @zero_v3(ptr noundef %2) #24
  %39 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 53), align 2, !tbaa !208
  %40 = sext i16 %39 to i32
  %41 = load ptr, ptr %0, align 8, !tbaa !118
  %42 = getelementptr inbounds %struct.Material, ptr %41, i64 0, i32 51
  %43 = load i32, ptr %42, align 4, !tbaa !163
  %44 = and i32 %43, 1024
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %40, i32 0
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !200
  %50 = sitofp i16 %49 to float
  %51 = fdiv float 1.000000e+00, %50
  store float %51, ptr %11, align 4, !tbaa !97
  %52 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %51, ptr %52, align 4, !tbaa !97
  %53 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %53, align 4, !tbaa !97
  br label %54

54:                                               ; preds = %48, %3
  %55 = load ptr, ptr %23, align 8, !tbaa !117
  %56 = getelementptr inbounds %struct.VlakRen, ptr %55, i64 0, i32 7
  %57 = load i8, ptr %56, align 1, !tbaa !82
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %62 = select i1 %59, ptr %60, ptr %61
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %62) #24
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %10) #25
  %63 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 63), align 8, !tbaa !209
  switch i16 %63, label %89 [
    i16 1, label %64
    i16 2, label %84
  ]

64:                                               ; preds = %54
  %65 = call fastcc float @get_avg_speed(ptr noundef nonnull %0) #24
  %66 = fmul float %16, %65
  %67 = fcmp olt float %66, 1.000000e+00
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = fcmp ogt float %66, 1.000000e+03
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %68, %64
  %72 = phi float [ 1.000000e+03, %70 ], [ %66, %68 ], [ 1.000000e+00, %64 ]
  %73 = sitofp i32 %19 to float
  %74 = fdiv float %73, %72
  %75 = fptosi float %74 to i32
  %76 = call i32 @llvm.smax.i32(i32 %75, i32 5)
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %78 = load i16, ptr %77, align 2, !tbaa !177
  %79 = sext i16 %78 to i32
  %80 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %79, i32 noundef 1, i32 noundef %76) #24
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %82 = load i16, ptr %81, align 2, !tbaa !177
  %83 = sext i16 %82 to i32
  call fastcc void @QMC_initPixel(ptr noundef %80, i32 noundef %83) #24
  br label %95

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %86 = load i16, ptr %85, align 2, !tbaa !177
  %87 = sext i16 %86 to i32
  %88 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %87, i32 noundef 2, i32 noundef %19) #24
  br label %89

89:                                               ; preds = %54, %84
  %90 = phi ptr [ %88, %84 ], [ null, %54 ]
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %92 = load i16, ptr %91, align 2, !tbaa !177
  %93 = sext i16 %92 to i32
  call fastcc void @QMC_initPixel(ptr noundef %90, i32 noundef %93) #24
  %94 = icmp eq i16 %17, 0
  br i1 %94, label %226, label %95

95:                                               ; preds = %71, %89
  %96 = phi ptr [ %81, %71 ], [ %91, %89 ]
  %97 = phi ptr [ %80, %71 ], [ %90, %89 ]
  %98 = phi i32 [ %76, %71 ], [ %19, %89 ]
  %99 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %100 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %101 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %102 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %103 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %104 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %105 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %106 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %107 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %108 = icmp eq i32 %46, 0
  %109 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %110 = icmp eq i32 %46, 1
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %112 = getelementptr inbounds float, ptr %2, i64 1
  %113 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 2
  %114 = getelementptr inbounds float, ptr %2, i64 2
  %115 = icmp eq ptr %97, null
  %116 = getelementptr inbounds %struct.QMCSampler, ptr %97, i64 0, i32 2
  %117 = fcmp ule float %15, 0.000000e+00
  %118 = lshr i32 %98, 1
  br label %119

119:                                              ; preds = %222, %95
  %120 = phi float [ 0.000000e+00, %95 ], [ %207, %222 ]
  %121 = phi i32 [ 0, %95 ], [ %208, %222 ]
  %122 = phi float [ 0.000000e+00, %95 ], [ %206, %222 ]
  %123 = load i16, ptr %96, align 2, !tbaa !177
  %124 = sext i16 %123 to i32
  call fastcc void @QMC_sampleHemi(ptr noundef nonnull %6, ptr noundef %97, i32 noundef %124, i32 noundef %121) #24
  %125 = load float, ptr %6, align 4, !tbaa !97
  %126 = load float, ptr %99, align 4, !tbaa !97
  %127 = load float, ptr %100, align 4, !tbaa !97
  %128 = load <2 x float>, ptr %7, align 8, !tbaa !97
  %129 = load <2 x float>, ptr %8, align 8, !tbaa !97
  %130 = insertelement <2 x float> poison, float %126, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = fmul <2 x float> %131, %129
  %133 = insertelement <2 x float> poison, float %125, i64 0
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  %135 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %134, <2 x float> %128, <2 x float> %132)
  %136 = load <2 x float>, ptr %10, align 8, !tbaa !97
  %137 = insertelement <2 x float> poison, float %127, i64 0
  %138 = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> zeroinitializer
  %139 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %138, <2 x float> %136, <2 x float> %135)
  store <2 x float> %139, ptr %9, align 8, !tbaa !97
  %140 = load float, ptr %101, align 8, !tbaa !97
  %141 = load float, ptr %102, align 8, !tbaa !97
  %142 = fmul float %126, %141
  %143 = call float @llvm.fmuladd.f32(float %125, float %140, float %142)
  %144 = load float, ptr %103, align 8, !tbaa !97
  %145 = call float @llvm.fmuladd.f32(float %127, float %144, float %143)
  store float %145, ptr %104, align 8, !tbaa !97
  %146 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %147 = load <2 x float>, ptr %9, align 8, !tbaa !97
  %148 = fneg <2 x float> %147
  store <2 x float> %148, ptr %105, align 4, !tbaa !97
  %149 = load float, ptr %104, align 8, !tbaa !97
  %150 = fneg float %149
  store float %150, ptr %106, align 4, !tbaa !97
  store float %14, ptr %107, align 8, !tbaa !113
  %151 = load ptr, ptr %20, align 8, !tbaa !114
  call void @RE_instance_rotate_ray_dir(ptr noundef %151, ptr noundef nonnull %4) #25
  %152 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %153 = call i32 @RE_rayobject_raycast(ptr noundef %152, ptr noundef nonnull %4) #25
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %119
  %156 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !205
  %157 = and i16 %156, 1
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = load float, ptr %107, align 8, !tbaa !113
  %161 = fneg float %160
  %162 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 47), align 4, !tbaa !210
  %163 = fmul float %162, %161
  %164 = call float @expf(float noundef %163) #25
  %165 = fadd float %122, %164
  br label %205

166:                                              ; preds = %155
  %167 = fadd float %122, 1.000000e+00
  br label %205

168:                                              ; preds = %119
  br i1 %108, label %205, label %169

169:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #26
  store <2 x float> %148, ptr %13, align 8, !tbaa !97
  store float %150, ptr %109, align 8, !tbaa !97
  %170 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  br i1 %110, label %171, label %193

171:                                              ; preds = %169
  %172 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30)) #24
  %173 = fadd float %172, 1.000000e+00
  %174 = fmul float %173, 5.000000e-01
  %175 = fsub float 1.000000e+00, %174
  %176 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !211
  %177 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9), align 4, !tbaa !212
  %178 = fmul float %174, %177
  %179 = call float @llvm.fmuladd.f32(float %175, float %176, float %178)
  %180 = load float, ptr %2, align 4, !tbaa !97
  %181 = fadd float %180, %179
  store float %181, ptr %2, align 4, !tbaa !97
  %182 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !213
  %183 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 10), align 8, !tbaa !214
  %184 = fmul float %174, %183
  %185 = call float @llvm.fmuladd.f32(float %175, float %182, float %184)
  %186 = load float, ptr %112, align 4, !tbaa !97
  %187 = fadd float %186, %185
  store float %187, ptr %112, align 4, !tbaa !97
  %188 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !215
  %189 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 11), align 4, !tbaa !216
  %190 = fmul float %174, %189
  %191 = call float @llvm.fmuladd.f32(float %175, float %188, float %190)
  %192 = load float, ptr %114, align 4, !tbaa !97
  br label %200

193:                                              ; preds = %169
  %194 = load i16, ptr %96, align 2, !tbaa !177
  call void @shadeSkyView(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %11, i16 noundef signext %194) #25
  call void @shadeSunView(ptr noundef nonnull %12, ptr noundef nonnull %111) #25
  %195 = load <2 x float>, ptr %12, align 16, !tbaa !97
  %196 = load <2 x float>, ptr %2, align 4, !tbaa !97
  %197 = fadd <2 x float> %195, %196
  store <2 x float> %197, ptr %2, align 4, !tbaa !97
  %198 = load float, ptr %113, align 8, !tbaa !97
  %199 = load float, ptr %114, align 4, !tbaa !97
  br label %200

200:                                              ; preds = %193, %171
  %201 = phi float [ %199, %193 ], [ %191, %171 ]
  %202 = phi float [ %198, %193 ], [ %192, %171 ]
  %203 = fadd float %202, %201
  store float %203, ptr %114, align 4, !tbaa !97
  %204 = fadd float %120, 1.000000e+00
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #26
  br label %205

205:                                              ; preds = %168, %200, %159, %166
  %206 = phi float [ %165, %159 ], [ %167, %166 ], [ %122, %200 ], [ %122, %168 ]
  %207 = phi float [ %120, %159 ], [ %120, %166 ], [ %204, %200 ], [ %120, %168 ]
  %208 = add nuw nsw i32 %121, 1
  br i1 %115, label %220, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %116, align 8, !tbaa !217
  %211 = icmp ne i32 %210, 1
  %212 = select i1 %211, i1 true, i1 %117
  %213 = icmp ult i32 %121, %118
  %214 = select i1 %212, i1 true, i1 %213
  br i1 %214, label %220, label %215

215:                                              ; preds = %209
  %216 = call fastcc i32 @adaptive_sample_contrast_val(i32 noundef %208, float noundef %122, float noundef %206, float noundef %15) #24, !range !71
  %217 = icmp eq i32 %216, 0
  %218 = icmp ult i32 %208, %98
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %222, label %223

220:                                              ; preds = %209, %205
  %221 = icmp ult i32 %208, %98
  br i1 %221, label %222, label %223

222:                                              ; preds = %220, %215
  br label %119, !llvm.loop !218

223:                                              ; preds = %215, %220
  %224 = sitofp i32 %208 to float
  %225 = fdiv float %206, %224
  br label %226

226:                                              ; preds = %223, %89
  %227 = phi ptr [ %90, %89 ], [ %97, %223 ]
  %228 = phi float [ 0.000000e+00, %89 ], [ %207, %223 ]
  %229 = phi float [ 0x7FF8000000000000, %89 ], [ %225, %223 ]
  %230 = fsub float 1.000000e+00, %229
  %231 = getelementptr inbounds float, ptr %1, i64 2
  store float %230, ptr %231, align 4, !tbaa !97
  %232 = getelementptr inbounds float, ptr %1, i64 1
  store float %230, ptr %232, align 4, !tbaa !97
  store float %230, ptr %1, align 4, !tbaa !97
  %233 = icmp ne i32 %46, 0
  %234 = fcmp une float %228, 0.000000e+00
  %235 = select i1 %233, i1 %234, i1 false
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = fdiv float %230, %228
  call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %237) #24
  br label %239

238:                                              ; preds = %226
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %1) #24
  br label %239

239:                                              ; preds = %238, %236
  %240 = icmp eq ptr %227, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %239
  call fastcc void @release_thread_qmcsampler(ptr noundef nonnull %227) #24
  br label %242

242:                                              ; preds = %241, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_ao_spheresamp(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !219 {
  %4 = alloca %struct.Isect, align 8
  %5 = alloca %struct.RayHint, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %5) #26
  %9 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 46), align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  %10 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 51), align 2, !tbaa !200
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %12, ptr %13, align 8, !tbaa !201
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !202
  %17 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 1, ptr %17, align 4, !tbaa !203
  %18 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  store i32 2, ptr %18, align 8, !tbaa !204
  %19 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  %20 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 15
  %21 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !205
  %23 = shl i16 %22, 1
  %24 = and i16 %23, 2
  %25 = zext nneg i16 %24 to i32
  %26 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 %25, ptr %26, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %27, align 4, !tbaa !206
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %28) #24
  call void @RE_instance_rotate_ray_start(ptr noundef %12, ptr noundef nonnull %4) #25
  %29 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %4) #25
  store ptr %5, ptr %19, align 8, !tbaa !207
  call fastcc void @zero_v3(ptr noundef %1) #24
  call fastcc void @zero_v3(ptr noundef %2) #24
  %30 = load ptr, ptr %14, align 8, !tbaa !117
  %31 = getelementptr inbounds %struct.VlakRen, ptr %30, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !82
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  %35 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 49), align 4
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  %38 = select i1 %34, float 0.000000e+00, float %35
  %39 = select i1 %34, ptr %37, ptr %36
  %40 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 53), align 2, !tbaa !208
  %41 = sext i16 %40 to i32
  %42 = load ptr, ptr %0, align 8, !tbaa !118
  %43 = getelementptr inbounds %struct.Material, ptr %42, i64 0, i32 51
  %44 = load i32, ptr %43, align 4, !tbaa !163
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %41, i32 0
  %48 = call i16 @llvm.smin.i16(i16 %10, i16 32)
  %49 = sext i16 %48 to i32
  %50 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !205
  %51 = sext i16 %50 to i32
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %53 = load i16, ptr %52, align 2, !tbaa !177
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %56 = load i32, ptr %55, align 4, !tbaa !220
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %58 = load i32, ptr %57, align 8, !tbaa !221
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !222
  %61 = icmp ne ptr %60, null
  %62 = zext i1 %61 to i32
  %63 = call fastcc ptr @sphere_sampler(i32 noundef %51, i32 noundef %49, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %62) #24
  %64 = shl nsw i32 %49, 1
  %65 = mul nsw i32 %64, %49
  %66 = icmp eq i32 %47, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %3
  %68 = sitofp i16 %48 to float
  %69 = fdiv float 1.000000e+00, %68
  store float %69, ptr %6, align 4, !tbaa !97
  %70 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !97
  %71 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %71, align 4, !tbaa !97
  br label %72

72:                                               ; preds = %67, %3
  %73 = icmp eq i32 %65, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = getelementptr inbounds float, ptr %1, i64 2
  store float 1.000000e+00, ptr %75, align 4, !tbaa !97
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %1, align 4, !tbaa !97
  br label %216

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %78 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %79 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  %80 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %81 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %82 = icmp eq i32 %47, 0
  %83 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %84 = icmp eq i32 %47, 1
  %85 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 30
  %86 = getelementptr inbounds float, ptr %2, i64 1
  %87 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %88 = getelementptr inbounds float, ptr %2, i64 2
  br label %89

89:                                               ; preds = %76, %190
  %90 = phi i32 [ %65, %76 ], [ %105, %190 ]
  %91 = phi ptr [ %63, %76 ], [ %196, %190 ]
  %92 = phi i32 [ 0, %76 ], [ %195, %190 ]
  %93 = phi i32 [ 0, %76 ], [ %194, %190 ]
  %94 = phi i32 [ -1, %76 ], [ %193, %190 ]
  %95 = phi float [ 0.000000e+00, %76 ], [ %192, %190 ]
  %96 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  %99 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %100 = sext i16 %99 to i32
  br label %101

101:                                              ; preds = %89, %117
  %102 = phi i32 [ %90, %89 ], [ %105, %117 ]
  %103 = phi ptr [ %91, %89 ], [ %118, %117 ]
  %104 = phi i32 [ %94, %89 ], [ %112, %117 ]
  %105 = add nsw i32 %102, -1
  %106 = call fastcc float @dot_v3v3(ptr noundef %103, ptr noundef nonnull %39) #24
  %107 = fcmp ogt float %106, %38
  br i1 %107, label %108, label %190

108:                                              ; preds = %101
  br i1 %98, label %120, label %109

109:                                              ; preds = %108
  %110 = add nsw i32 %104, 1
  %111 = icmp eq i32 %110, %100
  %112 = select i1 %111, i32 0, i32 %110
  %113 = load i32, ptr %77, align 4, !tbaa !223
  %114 = shl nuw i32 1, %112
  %115 = and i32 %114, %113
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = getelementptr inbounds float, ptr %103, i64 3
  %119 = icmp eq i32 %105, 0
  br i1 %119, label %198, label %101, !llvm.loop !224

120:                                              ; preds = %109, %108
  %121 = phi ptr [ %103, %109 ], [ %91, %108 ]
  %122 = phi i32 [ %112, %109 ], [ %94, %108 ]
  %123 = add nsw i32 %93, 1
  %124 = load float, ptr %121, align 4, !tbaa !97
  %125 = fneg float %124
  store float %125, ptr %78, align 4, !tbaa !97
  %126 = getelementptr inbounds float, ptr %121, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !97
  %128 = fneg float %127
  store float %128, ptr %79, align 8, !tbaa !97
  %129 = getelementptr inbounds float, ptr %121, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !97
  %131 = fneg float %130
  store float %131, ptr %80, align 4, !tbaa !97
  store float %9, ptr %81, align 8, !tbaa !113
  %132 = load ptr, ptr %11, align 8, !tbaa !114
  call void @RE_instance_rotate_ray_dir(ptr noundef %132, ptr noundef nonnull %4) #25
  %133 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %134 = call i32 @RE_rayobject_raycast(ptr noundef %133, ptr noundef nonnull %4) #25
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %120
  %137 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 50), align 8, !tbaa !205
  %138 = and i16 %137, 1
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load float, ptr %81, align 8, !tbaa !113
  %142 = fneg float %141
  %143 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 47), align 4, !tbaa !210
  %144 = fmul float %143, %142
  %145 = call float @expf(float noundef %144) #25
  %146 = fadd float %95, %145
  br label %190

147:                                              ; preds = %136
  %148 = fadd float %95, 1.000000e+00
  br label %190

149:                                              ; preds = %120
  br i1 %82, label %190, label %150

150:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  %151 = load <2 x float>, ptr %121, align 4, !tbaa !97
  %152 = fneg <2 x float> %151
  store <2 x float> %152, ptr %8, align 8, !tbaa !97
  %153 = load float, ptr %129, align 4, !tbaa !97
  %154 = fneg float %153
  store float %154, ptr %83, align 8, !tbaa !97
  %155 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #24
  br i1 %84, label %156, label %178

156:                                              ; preds = %150
  %157 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 30)) #24
  %158 = fadd float %157, 1.000000e+00
  %159 = fmul float %158, 5.000000e-01
  %160 = fsub float 1.000000e+00, %159
  %161 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 6), align 8, !tbaa !211
  %162 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 9), align 4, !tbaa !212
  %163 = fmul float %159, %162
  %164 = call float @llvm.fmuladd.f32(float %160, float %161, float %163)
  %165 = load float, ptr %2, align 4, !tbaa !97
  %166 = fadd float %165, %164
  store float %166, ptr %2, align 4, !tbaa !97
  %167 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 7), align 4, !tbaa !213
  %168 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 10), align 8, !tbaa !214
  %169 = fmul float %159, %168
  %170 = call float @llvm.fmuladd.f32(float %160, float %167, float %169)
  %171 = load float, ptr %86, align 4, !tbaa !97
  %172 = fadd float %171, %170
  store float %172, ptr %86, align 4, !tbaa !97
  %173 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 8), align 8, !tbaa !215
  %174 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 11), align 4, !tbaa !216
  %175 = fmul float %159, %174
  %176 = call float @llvm.fmuladd.f32(float %160, float %173, float %175)
  %177 = load float, ptr %88, align 4, !tbaa !97
  br label %185

178:                                              ; preds = %150
  %179 = load i16, ptr %52, align 2, !tbaa !177
  call void @shadeSkyView(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %6, i16 noundef signext %179) #25
  call void @shadeSunView(ptr noundef nonnull %7, ptr noundef nonnull %85) #25
  %180 = load <2 x float>, ptr %7, align 16, !tbaa !97
  %181 = load <2 x float>, ptr %2, align 4, !tbaa !97
  %182 = fadd <2 x float> %180, %181
  store <2 x float> %182, ptr %2, align 4, !tbaa !97
  %183 = load float, ptr %87, align 8, !tbaa !97
  %184 = load float, ptr %88, align 4, !tbaa !97
  br label %185

185:                                              ; preds = %178, %156
  %186 = phi float [ %184, %178 ], [ %176, %156 ]
  %187 = phi float [ %183, %178 ], [ %177, %156 ]
  %188 = fadd float %187, %186
  store float %188, ptr %88, align 4, !tbaa !97
  %189 = add nsw i32 %92, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #26
  br label %190

190:                                              ; preds = %101, %147, %140, %185, %149
  %191 = phi ptr [ %121, %140 ], [ %121, %147 ], [ %121, %185 ], [ %121, %149 ], [ %103, %101 ]
  %192 = phi float [ %146, %140 ], [ %148, %147 ], [ %95, %185 ], [ %95, %149 ], [ %95, %101 ]
  %193 = phi i32 [ %122, %140 ], [ %122, %147 ], [ %122, %185 ], [ %122, %149 ], [ %104, %101 ]
  %194 = phi i32 [ %123, %140 ], [ %123, %147 ], [ %123, %185 ], [ %123, %149 ], [ %93, %101 ]
  %195 = phi i32 [ %92, %140 ], [ %92, %147 ], [ %189, %185 ], [ %92, %149 ], [ %92, %101 ]
  %196 = getelementptr inbounds float, ptr %191, i64 3
  %197 = icmp eq i32 %105, 0
  br i1 %197, label %198, label %89, !llvm.loop !224

198:                                              ; preds = %190, %117
  %199 = phi float [ %95, %117 ], [ %192, %190 ]
  %200 = phi i32 [ %93, %117 ], [ %194, %190 ]
  %201 = phi i32 [ %92, %117 ], [ %195, %190 ]
  %202 = freeze i32 %200
  %203 = icmp eq i32 %202, 0
  %204 = sitofp i32 %202 to float
  %205 = fdiv float %199, %204
  %206 = fsub float 1.000000e+00, %205
  %207 = select i1 %203, float 1.000000e+00, float %206
  %208 = getelementptr inbounds float, ptr %1, i64 2
  store float %207, ptr %208, align 4, !tbaa !97
  %209 = getelementptr inbounds float, ptr %1, i64 1
  store float %207, ptr %209, align 4, !tbaa !97
  store float %207, ptr %1, align 4, !tbaa !97
  %210 = icmp ne i32 %47, 0
  %211 = icmp ne i32 %201, 0
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %216

213:                                              ; preds = %198
  %214 = sitofp i32 %201 to float
  %215 = fdiv float %207, %214
  call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %215) #24
  br label %217

216:                                              ; preds = %74, %198
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %1) #24
  br label %217

217:                                              ; preds = %216, %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ray_shadow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.Isect, align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %7 = load ptr, ptr %0, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 51
  %9 = load i32, ptr %8, align 4, !tbaa !163
  %10 = lshr i32 %9, 18
  %11 = and i32 %10, 2
  %12 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  store ptr null, ptr %13, align 8, !tbaa !207
  %14 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !225
  %16 = and i32 %15, 32772
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !226
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi i32 [ %20, %18 ], [ -1, %3 ]
  %23 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %25 = load i32, ptr %24, align 8, !tbaa !161
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %29 = load i16, ptr %28, align 2, !tbaa !177
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %21, %27
  %34 = phi ptr [ %32, %27 ], [ null, %21 ]
  %35 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 17
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 6
  %37 = load i16, ptr %36, align 8, !tbaa !227
  switch i16 %37, label %54 [
    i16 1, label %38
    i16 3, label %38
  ]

38:                                               ; preds = %33, %33
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %40 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 55), align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20
  %42 = fneg float %40
  %43 = load <2 x float>, ptr %39, align 8, !tbaa !97
  %44 = load <2 x float>, ptr %41, align 8, !tbaa !97
  %45 = insertelement <2 x float> poison, float %42, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %44, <2 x float> %43)
  store <2 x float> %47, ptr %5, align 8, !tbaa !97
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !97
  %50 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 20, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !97
  %52 = tail call float @llvm.fmuladd.f32(float %42, float %51, float %49)
  %53 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %52, ptr %53, align 8, !tbaa !97
  br label %56

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %55) #24
  br label %56

56:                                               ; preds = %54, %38
  %57 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 46
  %58 = load i16, ptr %57, align 2, !tbaa !228
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call fastcc void @ray_shadow_qmc(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #24
  br label %88

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 49
  %64 = load i16, ptr %63, align 8, !tbaa !137
  %65 = icmp slt i16 %64, 2
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !114
  %69 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %68, ptr %69, align 8, !tbaa !201
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !117
  %72 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !202
  %73 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %73, align 4, !tbaa !97
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %74) #24
  %75 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %75, ptr noundef nonnull %5, ptr noundef nonnull %4) #24
  %76 = call fastcc float @normalize_v3(ptr noundef nonnull %75) #24
  %77 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float %76, ptr %77, align 8, !tbaa !113
  %78 = load ptr, ptr %67, align 8, !tbaa !114
  call void @RE_instance_rotate_ray(ptr noundef %78, ptr noundef nonnull %4) #25
  %79 = load i32, ptr %12, align 8, !tbaa !121
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %6) #24
  call fastcc void @copy_v4_v4(ptr noundef nonnull %2, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #26
  br label %88

82:                                               ; preds = %66
  %83 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %84 = call i32 @RE_rayobject_raycast(ptr noundef %83, ptr noundef nonnull %4) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  store float 0.000000e+00, ptr %73, align 4, !tbaa !97
  br label %88

87:                                               ; preds = %62
  call fastcc void @ray_shadow_jitter(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #24
  br label %88

88:                                               ; preds = %87, %82, %86, %81, %61
  %89 = load i32, ptr %24, align 8, !tbaa !161
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load ptr, ptr %35, align 8, !tbaa !229
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %94 = load i16, ptr %93, align 2, !tbaa !177
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 68, i64 %95
  store ptr %92, ptr %96, align 8, !tbaa !57
  br label %97

97:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_shadow_qmc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !230 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 8
  %13 = alloca %struct.RayHint, align 8
  %14 = alloca [16 x [3 x float]], align 16
  %15 = alloca i32, align 4
  %16 = alloca [3 x float], align 8
  %17 = alloca [3 x float], align 8
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 8
  %20 = alloca [3 x float], align 8
  %21 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #26
  %22 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 55
  %23 = load float, ptr %22, align 4, !tbaa !231
  %24 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 49
  %25 = load i16, ptr %24, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #26
  %26 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !97
  store <2 x float> zeroinitializer, ptr %9, align 16, !tbaa !97
  %27 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %31, align 4, !tbaa !97
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !97
  br label %32

32:                                               ; preds = %5, %30
  %33 = phi float [ 0.000000e+00, %30 ], [ 1.000000e+00, %5 ]
  %34 = getelementptr inbounds float, ptr %3, i64 3
  store float %33, ptr %34, align 4
  %35 = icmp slt i16 %25, 2
  %36 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !232
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  %39 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %40 = icmp sgt i16 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !117
  %45 = getelementptr inbounds %struct.VlakRen, ptr %44, i64 0, i32 7
  %46 = load i8, ptr %45, align 1, !tbaa !82
  %47 = and i8 %46, 8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  br i1 %35, label %60, label %50

50:                                               ; preds = %49
  %51 = udiv i16 %25, %39
  %52 = add nuw i16 %51, 1
  br label %60

53:                                               ; preds = %32, %42
  br i1 %35, label %54, label %60

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %56 = load i32, ptr %55, align 8, !tbaa !161
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i16 @llvm.smax.i16(i16 %39, i16 5)
  br label %60

60:                                               ; preds = %53, %54, %49, %58, %50
  %61 = phi i16 [ %52, %50 ], [ %59, %58 ], [ 1, %49 ], [ 1, %54 ], [ %25, %53 ]
  %62 = zext i16 %61 to i32
  call fastcc void @ray_shadow_jittered_coords(ptr noundef %0, i32 noundef %62, ptr noundef nonnull %14, ptr noundef nonnull %15) #24
  %63 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 46
  %64 = load i16, ptr %63, align 2, !tbaa !228
  switch i16 %64, label %72 [
    i16 1, label %66
    i16 2, label %65
  ]

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %60, %65
  %67 = phi i32 [ 2, %65 ], [ 1, %60 ]
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %69 = load i16, ptr %68, align 2, !tbaa !177
  %70 = sext i16 %69 to i32
  %71 = call fastcc ptr @get_thread_qmcsampler(i32 noundef %70, i32 noundef %67, i32 noundef %62) #24
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi ptr [ null, %60 ], [ %71, %66 ]
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %75 = load i16, ptr %74, align 2, !tbaa !177
  %76 = sext i16 %75 to i32
  call fastcc void @QMC_initPixel(ptr noundef %73, i32 noundef %76) #24
  %77 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0x46293E5940000000, ptr %77, align 8, !tbaa !97
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %11, align 8, !tbaa !97
  %78 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %78, align 8, !tbaa !97
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %12, align 8, !tbaa !97
  %79 = load i32, ptr %15, align 4, !tbaa !131
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = zext nneg i32 %79 to i64
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi i64 [ 0, %81 ], [ %86, %83 ]
  %85 = getelementptr inbounds [16 x [3 x float]], ptr %14, i64 0, i64 %84
  call void @minmax_v3v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %85) #25
  %86 = add nuw nsw i64 %84, 1
  %87 = icmp eq i64 %86, %82
  br i1 %87, label %88, label %83, !llvm.loop !233

88:                                               ; preds = %83, %72
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !114
  %91 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 11
  %92 = load i16, ptr %91, align 8, !tbaa !78
  %93 = and i16 %92, 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %96, ptr noundef nonnull %11) #25
  %97 = load ptr, ptr %89, align 8, !tbaa !114
  %98 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %97, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %98, ptr noundef nonnull %12) #25
  br label %99

99:                                               ; preds = %95, %88
  %100 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %100, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  %101 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  store ptr %13, ptr %101, align 8, !tbaa !207
  %102 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  store i32 1, ptr %102, align 4, !tbaa !203
  %103 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  store i32 2, ptr %103, align 8, !tbaa !204
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %2) #24
  %104 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %106 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  %107 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 6
  %108 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 52
  %109 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 53
  %110 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 64
  %111 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %112 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %113 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %114 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %115 = load <2 x float>, ptr %7, align 8
  %116 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %117 = load float, ptr %116, align 8
  %118 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %119 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %122 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %123 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %124 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %125 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %126 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %127 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 2
  %128 = icmp ult i16 %61, 5
  %129 = fcmp ule float %23, 0.000000e+00
  %130 = select i1 %128, i1 true, i1 %129
  %131 = udiv i32 %62, 3
  %132 = fsub float 1.000000e+00, %23
  br label %133

133:                                              ; preds = %248, %99
  %134 = phi i32 [ 0, %99 ], [ %217, %248 ]
  %135 = phi float [ 0.000000e+00, %99 ], [ %215, %248 ]
  %136 = phi float [ 0.000000e+00, %99 ], [ %214, %248 ]
  %137 = phi <2 x float> [ zeroinitializer, %99 ], [ %216, %248 ]
  %138 = load ptr, ptr %89, align 8, !tbaa !114
  store ptr %138, ptr %104, align 8, !tbaa !201
  %139 = load ptr, ptr %105, align 8, !tbaa !117
  store ptr %139, ptr %106, align 8, !tbaa !202
  %140 = srem i32 %134, %79
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [16 x [3 x float]], ptr %14, i64 0, i64 %141
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %142) #24
  br i1 %35, label %175, label %143

143:                                              ; preds = %133
  %144 = load i16, ptr %107, align 8, !tbaa !227
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef %2) #24
  %147 = call fastcc float @normalize_v3(ptr noundef nonnull %18) #24
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #25
  %148 = load i16, ptr %74, align 2, !tbaa !177
  %149 = sext i16 %148 to i32
  %150 = load float, ptr %108, align 8, !tbaa !140
  call fastcc void @QMC_sampleDisc(ptr noundef nonnull %6, ptr noundef %73, i32 noundef %149, i32 noundef %134, float noundef %150) #24
  %151 = load float, ptr %6, align 8, !tbaa !97
  %152 = load float, ptr %111, align 4, !tbaa !97
  %153 = load <2 x float>, ptr %16, align 8, !tbaa !97
  %154 = load <2 x float>, ptr %17, align 8, !tbaa !97
  %155 = insertelement <2 x float> poison, float %152, i64 0
  %156 = shufflevector <2 x float> %155, <2 x float> poison, <2 x i32> zeroinitializer
  %157 = fmul <2 x float> %156, %154
  %158 = insertelement <2 x float> poison, float %151, i64 0
  %159 = shufflevector <2 x float> %158, <2 x float> poison, <2 x i32> zeroinitializer
  %160 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %159, <2 x float> %153, <2 x float> %157)
  store <2 x float> %160, ptr %19, align 8, !tbaa !97
  %161 = load float, ptr %112, align 8, !tbaa !97
  %162 = load float, ptr %113, align 8, !tbaa !97
  %163 = fmul float %152, %162
  %164 = call float @llvm.fmuladd.f32(float %151, float %161, float %163)
  store float %164, ptr %114, align 8, !tbaa !97
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #26
  br label %170

165:                                              ; preds = %143
  %166 = load i16, ptr %74, align 2, !tbaa !177
  %167 = sext i16 %166 to i32
  %168 = load float, ptr %108, align 8, !tbaa !140
  %169 = load float, ptr %109, align 4, !tbaa !141
  call fastcc void @QMC_sampleRect(ptr noundef nonnull %6, ptr noundef %73, i32 noundef %167, i32 noundef %134, float noundef %168, float noundef %169) #24
  call void @mul_m3_v3(ptr noundef nonnull %110, ptr noundef nonnull %6) #25
  br label %170

170:                                              ; preds = %165, %146
  %171 = load <2 x float>, ptr %6, align 8, !tbaa !97
  %172 = fadd <2 x float> %115, %171
  store <2 x float> %172, ptr %8, align 8, !tbaa !97
  %173 = load float, ptr %118, align 8, !tbaa !97
  %174 = fadd float %117, %173
  store float %174, ptr %119, align 8, !tbaa !97
  br label %176

175:                                              ; preds = %133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  br label %176

176:                                              ; preds = %175, %170
  %177 = load ptr, ptr %120, align 8, !tbaa !222
  %178 = icmp eq ptr %177, null
  br i1 %178, label %193, label %179

179:                                              ; preds = %176
  %180 = call fastcc float @len_v3(ptr noundef nonnull %121) #24
  %181 = call fastcc float @len_v3(ptr noundef nonnull %122) #24
  %182 = fadd float %180, %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %10, ptr noundef nonnull %8) #24
  %183 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #24
  %184 = fmul float %182, -5.000000e-01
  %185 = load <2 x float>, ptr %20, align 8, !tbaa !97
  %186 = load <2 x float>, ptr %10, align 8, !tbaa !97
  %187 = insertelement <2 x float> poison, float %184, i64 0
  %188 = shufflevector <2 x float> %187, <2 x float> poison, <2 x i32> zeroinitializer
  %189 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %188, <2 x float> %185, <2 x float> %186)
  store <2 x float> %189, ptr %10, align 8, !tbaa !97
  %190 = load float, ptr %123, align 8, !tbaa !97
  %191 = load float, ptr %124, align 8, !tbaa !97
  %192 = call float @llvm.fmuladd.f32(float %184, float %190, float %191)
  store float %192, ptr %124, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #26
  br label %193

193:                                              ; preds = %179, %176
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %125, ptr noundef nonnull %8, ptr noundef nonnull %10) #24
  %194 = call fastcc float @normalize_v3(ptr noundef nonnull %125) #24
  store float %194, ptr %126, align 8, !tbaa !113
  %195 = load ptr, ptr %89, align 8, !tbaa !114
  call void @RE_instance_rotate_ray(ptr noundef %195, ptr noundef nonnull %4) #25
  %196 = load i32, ptr %27, align 8, !tbaa !121
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %21, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %21) #24
  %199 = load <2 x float>, ptr %127, align 8, !tbaa !97
  %200 = load <2 x float>, ptr %21, align 16, !tbaa !97
  %201 = load <4 x float>, ptr %3, align 4, !tbaa !97
  %202 = shufflevector <2 x float> %200, <2 x float> %199, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %203 = fadd <4 x float> %202, %201
  store <4 x float> %203, ptr %3, align 4, !tbaa !97
  %204 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %200, <2 x float> %200, <2 x float> %137)
  store <2 x float> %204, ptr %9, align 16, !tbaa !97
  %205 = extractelement <2 x float> %199, i64 0
  %206 = call float @llvm.fmuladd.f32(float %205, float %205, float %136)
  store float %206, ptr %26, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #26
  br label %213

207:                                              ; preds = %193
  %208 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %209 = call i32 @RE_rayobject_raycast(ptr noundef %208, ptr noundef nonnull %4) #25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = fadd float %135, 1.000000e+00
  br label %213

213:                                              ; preds = %207, %211, %198
  %214 = phi float [ %206, %198 ], [ %136, %211 ], [ %136, %207 ]
  %215 = phi float [ %135, %198 ], [ %212, %211 ], [ %135, %207 ]
  %216 = phi <2 x float> [ %204, %198 ], [ %137, %211 ], [ %137, %207 ]
  %217 = add nuw nsw i32 %134, 1
  %218 = load i16, ptr %63, align 2, !tbaa !228
  %219 = icmp ne i16 %218, 1
  %220 = icmp ult i32 %134, %131
  %221 = or i1 %130, %220
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %246, label %223

223:                                              ; preds = %213
  %224 = load i32, ptr %27, align 8, !tbaa !121
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load float, ptr %34, align 4, !tbaa !97
  %228 = sitofp i32 %217 to float
  %229 = fdiv float %227, %228
  %230 = fcmp ogt float %229, %132
  %231 = fcmp olt float %229, %23
  %232 = or i1 %230, %231
  br i1 %232, label %249, label %233

233:                                              ; preds = %226
  %234 = call fastcc i32 @adaptive_sample_variance(i32 noundef %217, ptr noundef nonnull %3, ptr noundef nonnull %9, float noundef %23) #24, !range !71
  %235 = icmp eq i32 %234, 0
  %236 = icmp ult i32 %217, %62
  %237 = select i1 %235, i1 %236, i1 false
  br i1 %237, label %248, label %249

238:                                              ; preds = %223
  %239 = sitofp i32 %217 to float
  %240 = fdiv float %215, %239
  %241 = fcmp ule float %240, %132
  %242 = fcmp uge float %240, %23
  %243 = and i1 %241, %242
  %244 = icmp ult i32 %217, %62
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %248, label %249

246:                                              ; preds = %213
  %247 = icmp ult i32 %217, %62
  br i1 %247, label %248, label %249

248:                                              ; preds = %246, %238, %233
  br label %133, !llvm.loop !234

249:                                              ; preds = %238, %233, %226, %246
  %250 = sitofp i32 %217 to float
  %251 = load i32, ptr %27, align 8, !tbaa !121
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = load <2 x float>, ptr %3, align 4, !tbaa !97
  %255 = insertelement <2 x float> poison, float %250, i64 0
  %256 = shufflevector <2 x float> %255, <2 x float> poison, <2 x i32> zeroinitializer
  %257 = fdiv <2 x float> %254, %256
  store <2 x float> %257, ptr %3, align 4, !tbaa !97
  %258 = getelementptr inbounds float, ptr %3, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !97
  %260 = fdiv float %259, %250
  store float %260, ptr %258, align 4, !tbaa !97
  %261 = load float, ptr %34, align 4, !tbaa !97
  %262 = fdiv float %261, %250
  br label %266

263:                                              ; preds = %249
  %264 = fdiv float %215, %250
  %265 = fsub float 1.000000e+00, %264
  br label %266

266:                                              ; preds = %263, %253
  %267 = phi float [ %265, %263 ], [ %262, %253 ]
  store float %267, ptr %34, align 4, !tbaa !97
  %268 = icmp eq ptr %73, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %266
  call fastcc void @release_thread_qmcsampler(ptr noundef nonnull %73) #24
  br label %270

270:                                              ; preds = %269, %266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  ret void
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_trace_shadow_tra(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !235 {
  %6 = alloca %struct.ShadeInput, align 8
  %7 = alloca %struct.ShadeResult, align 16
  %8 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !113
  %10 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %11 = tail call i32 @RE_rayobject_raycast(ptr noundef %10, ptr noundef %0) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %98, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %6, i8 0, i64 1472, i1 false)
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %7) #26
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %15 = load i32, ptr %14, align 8, !tbaa !161
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 108
  store i32 %16, ptr %17, align 8, !tbaa !161
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 105
  %19 = load i32, ptr %18, align 4, !tbaa !223
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 105
  store i32 %19, ptr %20, align 4, !tbaa !223
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !177
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 114
  store i16 %22, ptr %23, align 2, !tbaa !177
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 119
  store i32 1, ptr %24, align 8, !tbaa !169
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 120
  store i32 16777215, ptr %25, align 4, !tbaa !166
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 103
  %28 = load <2 x i32>, ptr %26, align 4, !tbaa !131
  store <2 x i32> %28, ptr %27, align 4, !tbaa !131
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 117
  %30 = load i32, ptr %29, align 8, !tbaa !236
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 117
  store i32 %30, ptr %31, align 8, !tbaa !236
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 116
  %33 = load i16, ptr %32, align 2, !tbaa !122
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 116
  store i16 %33, ptr %34, align 2, !tbaa !122
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  tail call void @RE_instance_rotate_ray_restore(ptr noundef %36, ptr noundef nonnull %0) #25
  call void @shade_ray(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %37 = load ptr, ptr %6, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !85
  switch i16 %39, label %80 [
    i16 0, label %40
    i16 2, label %55
  ]

40:                                               ; preds = %13
  %41 = and i32 %3, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call fastcc float @shade_by_transmission(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %45 = load ptr, ptr %6, align 8, !tbaa !118
  br label %46

46:                                               ; preds = %40, %43
  %47 = phi ptr [ %45, %43 ], [ %37, %40 ]
  %48 = phi float [ %44, %43 ], [ 1.000000e+00, %40 ]
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 6
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %51 = load float, ptr %50, align 16, !tbaa !159
  %52 = getelementptr inbounds %struct.Material, ptr %47, i64 0, i32 33
  %53 = load float, ptr %52, align 8, !tbaa !167
  %54 = fmul float %48, %53
  call fastcc void @addAlphaLight(ptr noundef %4, ptr noundef nonnull %49, float noundef %51, float noundef %54) #24
  br label %80

55:                                               ; preds = %13
  %56 = getelementptr inbounds float, ptr %4, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !97
  %58 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 2
  %59 = load float, ptr %58, align 16, !tbaa !159
  %60 = load <4 x float>, ptr %7, align 16
  %61 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %62 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !97
  %64 = load <2 x float>, ptr %4, align 4, !tbaa !97
  %65 = insertelement <2 x float> %61, float %59, i64 1
  %66 = insertelement <2 x float> poison, float %59, i64 0
  %67 = insertelement <2 x float> %66, float %63, i64 1
  %68 = fmul <2 x float> %65, %67
  %69 = insertelement <2 x float> poison, float %57, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %64, <2 x float> %68)
  store <2 x float> %71, ptr %4, align 4, !tbaa !97
  %72 = getelementptr inbounds float, ptr %4, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !97
  %74 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %75 = load float, ptr %74, align 8, !tbaa !97
  %76 = fmul float %59, %75
  %77 = call float @llvm.fmuladd.f32(float %57, float %73, float %76)
  store float %77, ptr %72, align 4, !tbaa !97
  %78 = fsub float 1.000000e+00, %59
  %79 = fmul float %57, %78
  store float %79, ptr %56, align 4, !tbaa !97
  br label %80

80:                                               ; preds = %13, %55, %46
  %81 = icmp sgt i32 %2, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %80
  %83 = getelementptr inbounds float, ptr %4, i64 3
  %84 = load float, ptr %83, align 4, !tbaa !97
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %87) #24
  %88 = load float, ptr %8, align 8, !tbaa !113
  %89 = fsub float %9, %88
  store float %89, ptr %8, align 8, !tbaa !113
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !114
  %92 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 16
  store ptr %91, ptr %92, align 8, !tbaa !201
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %6, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !117
  %95 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 16, i32 1
  store ptr %94, ptr %95, align 8, !tbaa !202
  %96 = add nsw i32 %2, -1
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %96, i32 noundef 1, ptr noundef nonnull %4) #24
  br label %97

97:                                               ; preds = %86, %82, %80
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %6) #26
  br label %98

98:                                               ; preds = %97, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !237 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  store float %3, ptr %0, align 4, !tbaa !97
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !97
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !97
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_shadow_jitter(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !238 {
  %6 = alloca [3 x float], align 8
  %7 = alloca %struct.RayHint, align 8
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 2056, ptr nonnull %7) #26
  %9 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %13, align 4, !tbaa !97
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !97
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi float [ 0.000000e+00, %12 ], [ 1.000000e+00, %5 ]
  %16 = getelementptr inbounds float, ptr %3, i64 3
  store float %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %18 = load i16, ptr %17, align 2, !tbaa !177
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %21 = load i32, ptr %20, align 4, !tbaa !220
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %23 = load i32, ptr %22, align 8, !tbaa !221
  %24 = tail call fastcc ptr @give_jitter_plane(ptr noundef %1, i32 noundef %19, i32 noundef %21, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 49
  %26 = load i16, ptr %25, align 8, !tbaa !137
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %29 = load i32, ptr %28, align 4, !tbaa !223
  switch i16 %26, label %38 [
    i16 4, label %30
    i16 9, label %35
  ]

30:                                               ; preds = %14
  %31 = ashr i32 %29, 4
  %32 = ashr i32 %29, 8
  %33 = or i32 %32, %31
  %34 = or i32 %33, %29
  br label %38

35:                                               ; preds = %14
  %36 = ashr i32 %29, 9
  %37 = or i32 %36, %29
  br label %38

38:                                               ; preds = %14, %35, %30
  %39 = phi i32 [ %34, %30 ], [ %37, %35 ], [ %29, %14 ]
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %40) #24
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !114
  tail call void @RE_instance_rotate_ray_start(ptr noundef %42, ptr noundef nonnull %4) #25
  %43 = load ptr, ptr %41, align 8, !tbaa !114
  %44 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16
  store ptr %43, ptr %44, align 8, !tbaa !201
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !117
  %47 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 16, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !202
  %48 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  call void @RE_rayobject_hint_bb(ptr noundef %48, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %4) #25
  %49 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 18
  store ptr %7, ptr %49, align 8, !tbaa !207
  %50 = icmp eq i16 %26, 0
  br i1 %50, label %128, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %53 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %54 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 64
  %55 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  %56 = getelementptr inbounds float, ptr %2, i64 1
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %58 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 1
  %59 = getelementptr inbounds float, ptr %2, i64 2
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %61 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1, i64 2
  %62 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  %63 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 10
  %64 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 9
  br label %65

65:                                               ; preds = %51, %123
  %66 = phi i32 [ %27, %51 ], [ %80, %123 ]
  %67 = phi i32 [ -1, %51 ], [ %93, %123 ]
  %68 = phi float [ 0.000000e+00, %51 ], [ %125, %123 ]
  %69 = phi float [ 0.000000e+00, %51 ], [ %124, %123 ]
  %70 = phi ptr [ %24, %51 ], [ %126, %123 ]
  %71 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !232
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %75 = sext i16 %74 to i32
  br label %76

76:                                               ; preds = %65, %88
  %77 = phi i32 [ %66, %65 ], [ %80, %88 ]
  %78 = phi i32 [ %67, %65 ], [ %84, %88 ]
  %79 = phi ptr [ %70, %65 ], [ %89, %88 ]
  %80 = add nsw i32 %77, -1
  br i1 %73, label %91, label %81

81:                                               ; preds = %76
  %82 = add nsw i32 %78, 1
  %83 = icmp slt i32 %82, %75
  %84 = select i1 %83, i32 %82, i32 0
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %39
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = getelementptr inbounds float, ptr %79, i64 2
  %90 = icmp eq i32 %80, 0
  br i1 %90, label %128, label %76, !llvm.loop !239

91:                                               ; preds = %81, %76
  %92 = phi ptr [ %79, %81 ], [ %70, %76 ]
  %93 = phi i32 [ %84, %81 ], [ %67, %76 ]
  %94 = load <2 x float>, ptr %92, align 4, !tbaa !97
  store <2 x float> %94, ptr %6, align 8, !tbaa !97
  store float 0.000000e+00, ptr %53, align 8, !tbaa !97
  call void @mul_m3_v3(ptr noundef nonnull %54, ptr noundef nonnull %6) #25
  %95 = load float, ptr %6, align 8, !tbaa !97
  %96 = load float, ptr %2, align 4, !tbaa !97
  %97 = fadd float %95, %96
  %98 = load float, ptr %40, align 8, !tbaa !97
  %99 = fsub float %97, %98
  store float %99, ptr %55, align 4, !tbaa !97
  %100 = load float, ptr %52, align 4, !tbaa !97
  %101 = load float, ptr %56, align 4, !tbaa !97
  %102 = fadd float %100, %101
  %103 = load float, ptr %57, align 4, !tbaa !97
  %104 = fsub float %102, %103
  store float %104, ptr %58, align 4, !tbaa !97
  %105 = load float, ptr %53, align 8, !tbaa !97
  %106 = load float, ptr %59, align 4, !tbaa !97
  %107 = fadd float %105, %106
  %108 = load float, ptr %60, align 8, !tbaa !97
  %109 = fsub float %107, %108
  store float %109, ptr %61, align 4, !tbaa !97
  %110 = load ptr, ptr %41, align 8, !tbaa !114
  call void @RE_instance_rotate_ray_dir(ptr noundef %110, ptr noundef %4) #25
  store float 1.000000e+00, ptr %62, align 8, !tbaa !113
  store i32 1, ptr %63, align 4, !tbaa !203
  store i32 2, ptr %64, align 8, !tbaa !204
  %111 = load i32, ptr %9, align 8, !tbaa !121
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) @__const.ray_shadow_jitter.col, i64 16, i1 false)
  call fastcc void @ray_trace_shadow_tra(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 10, i32 noundef 0, ptr noundef nonnull %8) #24
  %114 = load <4 x float>, ptr %8, align 16, !tbaa !97
  %115 = load <4 x float>, ptr %3, align 4, !tbaa !97
  %116 = fadd <4 x float> %114, %115
  store <4 x float> %116, ptr %3, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #26
  br label %123

117:                                              ; preds = %91
  %118 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %119 = call i32 @RE_rayobject_raycast(ptr noundef %118, ptr noundef nonnull %4) #25
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = fadd float %69, 1.000000e+00
  br label %123

123:                                              ; preds = %117, %121, %113
  %124 = phi float [ %69, %113 ], [ %122, %121 ], [ %69, %117 ]
  %125 = fadd float %68, 1.000000e+00
  %126 = getelementptr inbounds float, ptr %92, i64 2
  %127 = icmp eq i32 %80, 0
  br i1 %127, label %128, label %65, !llvm.loop !239

128:                                              ; preds = %123, %88, %38
  %129 = phi float [ 0.000000e+00, %38 ], [ %69, %88 ], [ %124, %123 ]
  %130 = phi float [ 0.000000e+00, %38 ], [ %68, %88 ], [ %125, %123 ]
  %131 = load i32, ptr %9, align 8, !tbaa !121
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load <2 x float>, ptr %3, align 4, !tbaa !97
  %135 = insertelement <2 x float> poison, float %130, i64 0
  %136 = shufflevector <2 x float> %135, <2 x float> poison, <2 x i32> zeroinitializer
  %137 = fdiv <2 x float> %134, %136
  store <2 x float> %137, ptr %3, align 4, !tbaa !97
  %138 = getelementptr inbounds float, ptr %3, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !97
  %140 = fdiv float %139, %130
  store float %140, ptr %138, align 4, !tbaa !97
  %141 = load float, ptr %16, align 4, !tbaa !97
  %142 = fdiv float %141, %130
  br label %152

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 47
  %145 = load i16, ptr %144, align 4, !tbaa !240
  %146 = and i16 %145, 2
  %147 = icmp eq i16 %146, 0
  %148 = fdiv float %129, %130
  %149 = fsub float 1.000000e+00, %148
  br i1 %147, label %152, label %150

150:                                              ; preds = %143
  %151 = call float @sqrtf(float noundef %149) #25
  br label %152

152:                                              ; preds = %143, %150, %133
  %153 = phi float [ %151, %150 ], [ %142, %133 ], [ %149, %143 ]
  store float %153, ptr %16, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 2056, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @RE_rayobject_config_control(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !PGOFuncName !241 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = and i64 %3, -4
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %struct.RayObject, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !242
  %10 = getelementptr inbounds %struct.RayObject, ptr %8, i64 0, i32 1, i32 1
  store ptr @test_break, ptr %10, align 8, !tbaa !245
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_raytraceable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !246 {
  %3 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  %6 = load ptr, ptr %5, align 8, !tbaa !247
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %33, label %22, !llvm.loop !249

22:                                               ; preds = %16, %19
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = lshr i32 %23, 8
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = and i32 %23, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.VlakRen, ptr %27, i64 %29
  %31 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %30) #24, !range !71
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %19, label %33

33:                                               ; preds = %22, %19, %12, %8
  %34 = phi i32 [ 0, %8 ], [ 0, %12 ], [ 1, %22 ], [ 0, %19 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @has_special_rayobject(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !250 {
  %3 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %4 = load i16, ptr %3, align 8, !tbaa !78
  %5 = and i16 %4, 3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 48
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !67
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %18, %35
  %22 = phi i32 [ 0, %18 ], [ %38, %35 ]
  %23 = phi i32 [ 0, %18 ], [ %39, %35 ]
  %24 = lshr i32 %23, 8
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds %struct.VlakTableNode, ptr %20, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = and i32 %23, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.VlakRen, ptr %27, i64 %29
  %31 = tail call fastcc i32 @is_raytraceable_vlr(ptr noundef %0, ptr noundef %30) #24, !range !71
  %32 = icmp eq i32 %31, 0
  %33 = icmp ult i32 %22, 4
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = xor i1 %32, true
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %22, %37
  %39 = add nuw nsw i32 %23, 1
  %40 = icmp eq i32 %39, %16
  br i1 %40, label %41, label %21, !llvm.loop !251

41:                                               ; preds = %21, %35, %12, %2, %7
  %42 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 0, %12 ], [ 1, %21 ], [ 0, %35 ]
  ret i8 %42
}

; Function Attrs: optsize
declare ptr @RE_rayobject_empty_create() local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !PGOFuncName !252 {
  %3 = load float, ptr %0, align 4, !tbaa !97
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !97
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !253 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #25
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !254 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !97
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !97
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !255 {
  %4 = load float, ptr %2, align 4, !tbaa !97
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !97
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !131
  store i32 %19, ptr %1, align 4, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_thread_qmcsampler(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !256 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !151
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.ListBase, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3, %24
  %10 = phi ptr [ %25, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !217
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !257
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !258
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.QMCSampler, ptr %10, i64 0, i32 4
  store i32 1, ptr %23, align 8, !tbaa !258
  br label %32

24:                                               ; preds = %9, %14, %18
  %25 = load ptr, ptr %10, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !259

27:                                               ; preds = %24, %3
  %28 = tail call fastcc ptr @QMC_initSampler(i32 noundef %1, i32 noundef %2) #24
  %29 = getelementptr inbounds %struct.QMCSampler, ptr %28, i64 0, i32 4
  store i32 1, ptr %29, align 8, !tbaa !258
  %30 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 41), align 8, !tbaa !151
  %31 = getelementptr inbounds %struct.ListBase, ptr %30, i64 %5
  tail call void @BLI_addtail(ptr noundef %31, ptr noundef %28) #25
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi ptr [ %10, %22 ], [ %28, %27 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @QMC_initPixel(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !260 {
  %3 = alloca [2 x double], align 16
  %4 = alloca [2 x double], align 16
  %5 = alloca [2 x double], align 16
  %6 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !217
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  %11 = fmul float %10, 5.000000e-01
  %12 = fpext float %11 to double
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 6, i64 %13
  store double %12, ptr %14, align 8, !tbaa !261
  %15 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  %16 = fmul float %15, 5.000000e-01
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 6, i64 %13, i64 1
  store double %17, ptr %18, align 8, !tbaa !261
  br label %40

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  %20 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  %21 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  %22 = insertelement <2 x float> poison, float %20, i64 0
  %23 = insertelement <2 x float> %22, float %21, i64 1
  %24 = fpext <2 x float> %23 to <2 x double>
  store <2 x double> %24, ptr %4, align 16, !tbaa !261
  store <2 x double> <double 5.000000e-01, double 0x3FD5555555555555>, ptr %3, align 16, !tbaa !261
  %25 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !257
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 5
  %30 = zext nneg i32 %26 to i64
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %37, %31 ]
  call fastcc void @halton_sample(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %33 = load ptr, ptr %29, align 8, !tbaa !157
  %34 = shl nuw nsw i64 %32, 1
  %35 = getelementptr inbounds double, ptr %33, i64 %34
  %36 = load <2 x double>, ptr %5, align 16, !tbaa !261
  store <2 x double> %36, ptr %35, align 8, !tbaa !261
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %39, label %31, !llvm.loop !262

39:                                               ; preds = %31, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  br label %40

40:                                               ; preds = %39, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc noundef i32 @refraction(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !263 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #24
  %5 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef %1) #24
  %6 = fcmp ogt float %5, 0.000000e+00
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = fdiv float 1.000000e+00, %3
  %9 = fneg float %5
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %5, float 1.000000e+00)
  %11 = fneg float %10
  %12 = fmul float %8, %11
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %8, float 1.000000e+00)
  %14 = fcmp ugt float %13, 0.000000e+00
  br i1 %14, label %15, label %50

15:                                               ; preds = %7
  %16 = tail call float @sqrtf(float noundef %13) #25
  %17 = tail call float @llvm.fmuladd.f32(float %9, float %8, float %16)
  br label %29

18:                                               ; preds = %4
  %19 = fneg float %5
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %5, float 1.000000e+00)
  %21 = fneg float %20
  %22 = fmul float %21, %3
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %3, float 1.000000e+00)
  %24 = fcmp ugt float %23, 0.000000e+00
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = tail call float @sqrtf(float noundef %23) #25
  %27 = fneg float %26
  %28 = tail call float @llvm.fmuladd.f32(float %19, float %3, float %27)
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi float [ %8, %15 ], [ %3, %25 ]
  %31 = phi float [ %17, %15 ], [ %28, %25 ]
  %32 = load float, ptr %2, align 4, !tbaa !97
  %33 = load float, ptr %1, align 4, !tbaa !97
  %34 = fmul float %31, %33
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %34)
  store float %35, ptr %0, align 4, !tbaa !97
  %36 = getelementptr inbounds float, ptr %2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !97
  %38 = getelementptr inbounds float, ptr %1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !97
  %40 = fmul float %31, %39
  %41 = tail call float @llvm.fmuladd.f32(float %30, float %37, float %40)
  %42 = getelementptr inbounds float, ptr %0, i64 1
  store float %41, ptr %42, align 4, !tbaa !97
  %43 = getelementptr inbounds float, ptr %2, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !97
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !97
  %47 = fmul float %31, %46
  %48 = tail call float @llvm.fmuladd.f32(float %30, float %44, float %47)
  %49 = getelementptr inbounds float, ptr %0, i64 2
  store float %48, ptr %49, align 4, !tbaa !97
  br label %50

50:                                               ; preds = %18, %7, %29
  %51 = phi i32 [ 1, %29 ], [ 0, %7 ], [ 0, %18 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @reflection(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #7 !PGOFuncName !264 {
  tail call fastcc void @reflection_simple(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24
  %5 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %3) #24
  %6 = fcmp ogt float %5, 0.000000e+00
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = fadd float %5, 0x3F847AE140000000
  %9 = load float, ptr %3, align 4, !tbaa !97
  %10 = load float, ptr %0, align 4, !tbaa !97
  %11 = fneg float %8
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %9, float %10)
  store float %12, ptr %0, align 4, !tbaa !97
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !97
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %14, float %16)
  store float %17, ptr %15, align 4, !tbaa !97
  %18 = getelementptr inbounds float, ptr %3, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !97
  %20 = getelementptr inbounds float, ptr %0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !97
  %22 = tail call float @llvm.fmuladd.f32(float %11, float %19, float %21)
  store float %22, ptr %20, align 4, !tbaa !97
  br label %23

23:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @reflection_simple(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !265 {
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #24
  %5 = fmul float %4, -2.000000e+00
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %2, ptr noundef %1, float noundef %5) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @QMC_samplePhong(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #18 !PGOFuncName !266 {
  %6 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #26
  call fastcc void @QMC_getSample(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, i32 noundef %3) #24
  %7 = load double, ptr %6, align 16, !tbaa !261
  %8 = fmul double %7, 2.000000e+00
  %9 = fmul double %8, 0x400921FB54442D18
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !261
  %13 = fpext float %4 to double
  %14 = tail call double @pow(double noundef %12, double noundef %13) #25
  %15 = fptrunc double %14 to float
  %16 = fneg float %15
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %15, float 1.000000e+00)
  %18 = tail call float @sqrtf(float noundef %17) #25
  %19 = tail call float @cosf(float noundef %10) #25
  %20 = fmul float %18, %19
  store float %20, ptr %0, align 4, !tbaa !97
  %21 = tail call float @sinf(float noundef %10) #25
  %22 = fmul float %18, %21
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float %22, ptr %23, align 4, !tbaa !97
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #26
  ret void
}

; Function Attrs: optsize
declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !267 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !268 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !97
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !97
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @traceray(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !269 {
  %10 = alloca %struct.ShadeInput, align 8
  %11 = alloca %struct.Isect, align 8
  %12 = alloca %struct.ShadeResult, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca [3 x float], align 8
  %16 = alloca [4 x float], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %10, i8 0, i64 1472, i1 false)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %11) #26
  %19 = load ptr, ptr %0, align 8, !tbaa !118
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 48
  %21 = load float, ptr %20, align 4, !tbaa !270
  %22 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !92
  %23 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !93
  %24 = tail call i32 %22(ptr noundef %23) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  tail call fastcc void @zero_v4(ptr noundef %5) #24
  br label %293

27:                                               ; preds = %9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %3) #24
  %28 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef %4) #24
  %29 = fcmp ogt float %21, 0.000000e+00
  %30 = select i1 %29, float %21, float 0x430C6BF520000000
  %31 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 2
  store float %30, ptr %31, align 8, !tbaa !113
  %32 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 7
  store i32 1, ptr %32, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 10
  store i32 1, ptr %33, align 4, !tbaa !203
  %34 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 9
  store i32 2, ptr %34, align 8, !tbaa !204
  %35 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 18
  store ptr null, ptr %35, align 8, !tbaa !207
  %36 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 16
  store ptr %6, ptr %36, align 8, !tbaa !201
  %37 = getelementptr inbounds %struct.Isect, ptr %11, i64 0, i32 16, i32 1
  store ptr %7, ptr %37, align 8, !tbaa !202
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !114
  call void @RE_instance_rotate_ray(ptr noundef %39, ptr noundef nonnull %11) #25
  %40 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 52), align 8, !tbaa !34
  %41 = call i32 @RE_rayobject_raycast(ptr noundef %40, ptr noundef nonnull %11) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %292, label %43

43:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %12, i8 0, i64 212, i1 false)
  %44 = load ptr, ptr %38, align 8, !tbaa !114
  call void @RE_instance_rotate_ray_restore(ptr noundef %44, ptr noundef nonnull %11) #25
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 78
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %46) #24
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 79
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %48) #24
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %50 = load i32, ptr %49, align 4, !tbaa !223
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 105
  store i32 %50, ptr %51, align 4, !tbaa !223
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %53 = load i16, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 15
  store i16 %53, ptr %54, align 8, !tbaa !120
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %56 = load i32, ptr %55, align 8, !tbaa !161
  %57 = add nsw i32 %56, 1
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 108
  store i32 %57, ptr %58, align 8, !tbaa !161
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %60 = load i16, ptr %59, align 2, !tbaa !177
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 114
  store i16 %60, ptr %61, align 2, !tbaa !177
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 103
  %64 = load <2 x i32>, ptr %62, align 4, !tbaa !131
  store <2 x i32> %64, ptr %63, align 4, !tbaa !131
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 117
  %66 = load i32, ptr %65, align 8, !tbaa !236
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 117
  store i32 %66, ptr %67, align 8, !tbaa !236
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 119
  store i32 1, ptr %68, align 8, !tbaa !169
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 120
  store i32 16777215, ptr %69, align 4, !tbaa !166
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 121
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 121
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !57
  store <2 x ptr> %72, ptr %71, align 8, !tbaa !57
  call void @shade_ray(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #24
  %73 = and i32 %8, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %43
  %76 = call fastcc float @shade_by_transmission(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #24
  br label %77

77:                                               ; preds = %75, %43
  %78 = phi float [ %76, %75 ], [ 1.000000e+00, %43 ]
  %79 = icmp sgt i16 %2, 0
  br i1 %79, label %80, label %279

80:                                               ; preds = %77
  %81 = load ptr, ptr %10, align 8, !tbaa !118
  %82 = getelementptr inbounds %struct.Material, ptr %81, i64 0, i32 52
  %83 = load i32, ptr %82, align 8, !tbaa !271
  %84 = and i32 %83, 65536
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 2
  %87 = load float, ptr %86, align 4
  %88 = fcmp uge float %87, 1.000000e+00
  %89 = select i1 %85, i1 true, i1 %88
  %90 = and i32 %83, 131136
  %91 = icmp eq i32 %90, 0
  %92 = or i1 %91, %89
  br i1 %92, label %200, label %93

93:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #26
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 32
  %95 = load <4 x float>, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 33
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 34
  %98 = load <4 x float>, ptr %96, align 8
  %99 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 2
  %100 = getelementptr inbounds float, ptr %5, i64 3
  %101 = load float, ptr %100, align 4, !tbaa !97
  %102 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  %103 = shufflevector <4 x float> %95, <4 x float> %98, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %104 = insertelement <4 x float> %103, float %101, i64 3
  store <4 x float> %104, ptr %14, align 16, !tbaa !97
  %105 = getelementptr inbounds %struct.Material, ptr %81, i64 0, i32 51
  %106 = load i32, ptr %105, align 4, !tbaa !163
  %107 = and i32 %106, 196608
  %108 = icmp eq i32 %107, 196608
  br i1 %108, label %109, label %146

109:                                              ; preds = %93
  br i1 %74, label %128, label %110

110:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #26
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %112 = load <2 x float>, ptr %111, align 4, !tbaa !97
  %113 = fneg <2 x float> %112
  store <2 x float> %113, ptr %15, align 8, !tbaa !97
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !97
  %116 = fneg float %115
  %117 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  store float %116, ptr %117, align 8, !tbaa !97
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 46
  %120 = load float, ptr %119, align 4, !tbaa !178
  %121 = call fastcc i32 @refraction(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %118, float noundef %120) #24, !range !71
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %110
  %124 = and i32 %8, -3
  br label %126

125:                                              ; preds = %110
  call fastcc void @reflection(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %118, ptr noundef nonnull %111) #24
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ %8, %125 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #26
  br label %138

128:                                              ; preds = %109
  %129 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %130 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %131 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 46
  %132 = load float, ptr %131, align 4, !tbaa !178
  %133 = call fastcc i32 @refraction(ptr noundef nonnull %13, ptr noundef nonnull %129, ptr noundef nonnull %130, float noundef %132) #24, !range !71
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %128
  %136 = or disjoint i32 %8, 2
  br label %138

137:                                              ; preds = %128
  call fastcc void @reflection(ptr noundef nonnull %13, ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef nonnull %129) #24
  br label %138

138:                                              ; preds = %135, %137, %126
  %139 = phi i32 [ %127, %126 ], [ %136, %135 ], [ %8, %137 ]
  %140 = add nsw i16 %2, -1
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %142 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !114
  %144 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !117
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %140, ptr noundef nonnull %141, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %143, ptr noundef %145, i32 noundef %139) #24
  br label %154

146:                                              ; preds = %93
  %147 = add nsw i16 %2, -1
  %148 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %149 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %150 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !114
  %152 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !117
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %147, ptr noundef nonnull %148, ptr noundef nonnull %149, ptr noundef nonnull %14, ptr noundef %151, ptr noundef %153, i32 noundef 0) #24
  br label %154

154:                                              ; preds = %146, %138
  %155 = load float, ptr %86, align 4, !tbaa !159
  %156 = fsub float 1.000000e+00, %155
  %157 = load ptr, ptr %10, align 8, !tbaa !118
  %158 = getelementptr inbounds %struct.Material, ptr %157, i64 0, i32 33
  %159 = load float, ptr %158, align 8, !tbaa !167
  %160 = fmul float %78, %159
  %161 = load float, ptr %97, align 4, !tbaa !168
  %162 = fadd float %161, -1.000000e+00
  %163 = call float @llvm.fmuladd.f32(float %160, float %162, float 1.000000e+00)
  %164 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %165 = load <2 x float>, ptr %94, align 4, !tbaa !97
  %166 = fadd <2 x float> %165, <float -1.000000e+00, float -1.000000e+00>
  %167 = insertelement <2 x float> poison, float %160, i64 0
  %168 = shufflevector <2 x float> %167, <2 x float> poison, <2 x i32> zeroinitializer
  %169 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %168, <2 x float> %166, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %170 = load <2 x float>, ptr %164, align 4, !tbaa !97
  %171 = insertelement <2 x float> poison, float %156, i64 0
  %172 = shufflevector <2 x float> %171, <2 x float> poison, <2 x i32> zeroinitializer
  %173 = fmul <2 x float> %172, %169
  %174 = load <2 x float>, ptr %14, align 16, !tbaa !97
  %175 = fmul <2 x float> %173, %174
  %176 = insertelement <2 x float> poison, float %155, i64 0
  %177 = shufflevector <2 x float> %176, <2 x float> poison, <2 x i32> zeroinitializer
  %178 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %177, <2 x float> %170, <2 x float> %175)
  store <2 x float> %178, ptr %164, align 4, !tbaa !97
  %179 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !97
  %181 = fmul float %156, %163
  %182 = load float, ptr %99, align 8, !tbaa !97
  %183 = fmul float %181, %182
  %184 = call float @llvm.fmuladd.f32(float %155, float %180, float %183)
  store float %184, ptr %179, align 4, !tbaa !97
  %185 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %186 = load <4 x float>, ptr %185, align 4
  %187 = shufflevector <4 x float> %186, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %188 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !97
  %190 = insertelement <2 x float> %187, float %155, i64 1
  %191 = insertelement <2 x float> %176, float %189, i64 1
  %192 = fmul <2 x float> %190, %191
  store <2 x float> %192, ptr %185, align 4, !tbaa !97
  %193 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !97
  %195 = fmul float %155, %194
  store float %195, ptr %193, align 4, !tbaa !97
  %196 = load float, ptr %102, align 4, !tbaa !97
  %197 = call float @llvm.fmuladd.f32(float %156, float %196, float %155)
  store float %197, ptr %100, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #26
  %198 = getelementptr inbounds %struct.Material, ptr %157, i64 0, i32 52
  %199 = load i32, ptr %198, align 8, !tbaa !271
  br label %202

200:                                              ; preds = %80
  %201 = getelementptr inbounds float, ptr %5, i64 3
  store float 1.000000e+00, ptr %201, align 4, !tbaa !97
  br label %202

202:                                              ; preds = %200, %154
  %203 = phi i32 [ %83, %200 ], [ %199, %154 ]
  %204 = phi ptr [ %81, %200 ], [ %157, %154 ]
  %205 = and i32 %203, 262144
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %265, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 48
  %209 = load float, ptr %208, align 4, !tbaa !164
  %210 = fcmp une float %209, 0.000000e+00
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  %213 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %214 = getelementptr inbounds %struct.Material, ptr %204, i64 0, i32 30
  %215 = load float, ptr %214, align 4, !tbaa !170
  %216 = getelementptr inbounds %struct.Material, ptr %204, i64 0, i32 29
  %217 = load float, ptr %216, align 8, !tbaa !171
  %218 = call float @fresnel_fac(ptr noundef nonnull %212, ptr noundef nonnull %213, float noundef %215, float noundef %217) #25
  %219 = fmul float %209, %218
  br label %220

220:                                              ; preds = %207, %211
  %221 = phi float [ %219, %211 ], [ %209, %207 ]
  %222 = fcmp une float %221, 0.000000e+00
  br i1 %222, label %223, label %265

223:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #26
  %224 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 16
  %225 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 30
  call fastcc void @reflection_simple(ptr noundef nonnull %17, ptr noundef nonnull %224, ptr noundef nonnull %225) #24
  %226 = add nsw i16 %2, -1
  %227 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 29
  %228 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !114
  %230 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !117
  call fastcc void @traceray(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %226, ptr noundef nonnull %227, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef %229, ptr noundef %231, i32 noundef %8) #24
  %232 = fsub float 1.000000e+00, %221
  %233 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 38
  %234 = getelementptr inbounds %struct.ShadeInput, ptr %10, i64 0, i32 40
  %235 = load float, ptr %234, align 4, !tbaa !172
  %236 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %237 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %238 = load <2 x float>, ptr %233, align 4, !tbaa !97
  %239 = insertelement <2 x float> poison, float %221, i64 0
  %240 = shufflevector <2 x float> %239, <2 x float> poison, <2 x i32> zeroinitializer
  %241 = fmul <2 x float> %240, %238
  %242 = load <2 x float>, ptr %236, align 4, !tbaa !97
  %243 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %242
  %244 = fmul <2 x float> %241, %243
  %245 = load <2 x float>, ptr %16, align 16, !tbaa !97
  %246 = load <2 x float>, ptr %237, align 4, !tbaa !97
  %247 = insertelement <2 x float> poison, float %232, i64 0
  %248 = shufflevector <2 x float> %247, <2 x float> poison, <2 x i32> zeroinitializer
  %249 = fmul <2 x float> %248, %246
  %250 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %244, <2 x float> %245, <2 x float> %249)
  %251 = fadd <2 x float> %242, %250
  store <2 x float> %251, ptr %5, align 4, !tbaa !97
  %252 = fmul float %221, %235
  %253 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %254 = load float, ptr %253, align 4, !tbaa !97
  %255 = fsub float 1.000000e+00, %254
  %256 = fmul float %252, %255
  %257 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %258 = load float, ptr %257, align 8, !tbaa !97
  %259 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !97
  %261 = fmul float %232, %260
  %262 = call float @llvm.fmuladd.f32(float %256, float %258, float %261)
  %263 = fadd float %254, %262
  %264 = getelementptr inbounds float, ptr %5, i64 2
  store float %263, ptr %264, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #26
  br label %277

265:                                              ; preds = %202, %220
  %266 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %267 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %268 = load <2 x float>, ptr %266, align 4, !tbaa !97
  %269 = load <2 x float>, ptr %267, align 4, !tbaa !97
  %270 = fadd <2 x float> %268, %269
  store <2 x float> %270, ptr %5, align 4, !tbaa !97
  %271 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !97
  %273 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !97
  %275 = fadd float %272, %274
  %276 = getelementptr inbounds float, ptr %5, i64 2
  store float %275, ptr %276, align 4, !tbaa !97
  br label %277

277:                                              ; preds = %265, %223
  br i1 %29, label %278, label %291

278:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #26
  call fastcc void @ray_fadeout_endcolor(ptr noundef nonnull %18, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %4) #24
  call fastcc void @ray_fadeout(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %18, float noundef %21) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #26
  br label %291

279:                                              ; preds = %77
  %280 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6
  %281 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8
  %282 = load <2 x float>, ptr %280, align 4, !tbaa !97
  %283 = load <2 x float>, ptr %281, align 4, !tbaa !97
  %284 = fadd <2 x float> %282, %283
  store <2 x float> %284, ptr %5, align 4, !tbaa !97
  %285 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 6, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !97
  %287 = getelementptr inbounds %struct.ShadeResult, ptr %12, i64 0, i32 8, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !97
  %289 = fadd float %286, %288
  %290 = getelementptr inbounds float, ptr %5, i64 2
  store float %289, ptr %290, align 4, !tbaa !97
  br label %291

291:                                              ; preds = %277, %278, %279
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %12) #26
  br label %293

292:                                              ; preds = %27
  call fastcc void @ray_fadeout_endcolor(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %4) #24
  br label %293

293:                                              ; preds = %291, %292, %26
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %10) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @adaptive_sample_variance(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #17 !PGOFuncName !272 {
  %5 = fmul float %3, 5.000000e-01
  %6 = load float, ptr %1, align 4, !tbaa !97
  %7 = sitofp i32 %0 to float
  %8 = fdiv float %6, %7
  %9 = load float, ptr %2, align 4, !tbaa !97
  %10 = fdiv float %9, %7
  %11 = fneg float %8
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %8, float %10)
  %13 = fmul float %12, 0x3FD99999A0000000
  %14 = fcmp olt float %13, %5
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load <2 x float>, ptr %16, align 4, !tbaa !97
  %19 = insertelement <2 x float> poison, float %7, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fdiv <2 x float> %18, %20
  %22 = fneg <2 x float> %21
  %23 = load <2 x float>, ptr %17, align 4, !tbaa !97
  %24 = fdiv <2 x float> %23, %20
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %21, <2 x float> %24)
  %26 = fmul <2 x float> %25, <float 0x3FD3333340000000, float 0x3FE3333340000000>
  %27 = insertelement <2 x float> poison, float %5, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fcmp olt <2 x float> %26, %28
  %30 = extractelement <2 x i1> %29, i64 0
  %31 = extractelement <2 x i1> %29, i64 1
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %34, label %33

33:                                               ; preds = %15, %4
  br label %34

34:                                               ; preds = %15, %33
  %35 = phi i32 [ 0, %33 ], [ 1, %15 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @release_thread_qmcsampler(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.QMCSampler, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !258
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @QMC_initSampler(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !274 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %4 = tail call ptr %3(i64 noundef 56, ptr noundef nonnull @.str.13) #25
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 4
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.14) #25
  %9 = getelementptr inbounds %struct.QMCSampler, ptr %4, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.QMCSampler, ptr %4, i64 0, i32 3
  store i32 %1, ptr %10, align 4, !tbaa !257
  %11 = getelementptr inbounds %struct.QMCSampler, ptr %4, i64 0, i32 2
  store i32 %0, ptr %11, align 8, !tbaa !217
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call fastcc void @hammersley_create(ptr noundef %8, i32 noundef %1) #24
  br label %14

14:                                               ; preds = %13, %2
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @hammersley_create(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #19 !PGOFuncName !275 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to double
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %23
  %8 = phi i64 [ 0, %4 ], [ %32, %23 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i32
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %21, %12 ], [ %11, %10 ]
  %14 = phi double [ %19, %12 ], [ 0.000000e+00, %10 ]
  %15 = phi double [ %20, %12 ], [ 5.000000e-01, %10 ]
  %16 = and i32 %13, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, double -0.000000e+00, double %15
  %19 = fadd double %14, %18
  %20 = fmul double %15, 5.000000e-01
  %21 = lshr i32 %13, 1
  %22 = icmp ult i32 %13, 2
  br i1 %22, label %23, label %12, !llvm.loop !276

23:                                               ; preds = %12, %7
  %24 = phi i32 [ 0, %7 ], [ %11, %12 ]
  %25 = phi double [ 0.000000e+00, %7 ], [ %19, %12 ]
  %26 = sitofp i32 %24 to double
  %27 = fdiv double %26, %5
  %28 = shl nuw nsw i64 %8, 1
  %29 = getelementptr inbounds double, ptr %0, i64 %28
  store double %27, ptr %29, align 8, !tbaa !261
  %30 = or disjoint i64 %28, 1
  %31 = getelementptr inbounds double, ptr %0, i64 %30
  store double %25, ptr %31, align 8, !tbaa !261
  %32 = add nuw nsw i64 %8, 1
  %33 = icmp eq i64 %32, %6
  br i1 %33, label %34, label %7, !llvm.loop !277

34:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: optsize
declare float @BLI_thread_frand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @halton_sample(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #20 !PGOFuncName !278 {
  br label %4

4:                                                ; preds = %3, %22
  %5 = phi i1 [ true, %3 ], [ false, %22 ]
  %6 = phi i64 [ 0, %3 ], [ 1, %22 ]
  %7 = getelementptr inbounds double, ptr %1, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !261
  %9 = fsub double 1.000000e+00, %8
  %10 = fadd double %9, -1.000000e-10
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = getelementptr inbounds double, ptr %0, i64 %6
  %13 = load double, ptr %12, align 8, !tbaa !261
  %14 = fcmp ult double %13, %11
  br i1 %14, label %22, label %15

15:                                               ; preds = %4, %15
  %16 = phi double [ %17, %15 ], [ %13, %4 ]
  %17 = fmul double %13, %16
  %18 = fcmp ult double %17, %11
  br i1 %18, label %19, label %15, !llvm.loop !279

19:                                               ; preds = %15
  %20 = fadd double %16, %17
  %21 = fadd double %20, -1.000000e+00
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi double [ %21, %19 ], [ %13, %4 ]
  %24 = fadd double %8, %23
  store double %24, ptr %7, align 8, !tbaa !261
  %25 = fptrunc double %24 to float
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds double, ptr %2, i64 %6
  store double %26, ptr %27, align 8, !tbaa !261
  br i1 %5, label %4, label %28, !llvm.loop !280

28:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #7 !PGOFuncName !281 {
  %5 = load float, ptr %1, align 4, !tbaa !97
  %6 = load float, ptr %2, align 4, !tbaa !97
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !97
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !97
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !97
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !97
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !97
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @QMC_getSample(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 !PGOFuncName !282 {
  %5 = getelementptr inbounds %struct.QMCSampler, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !217
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.QMCSampler, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = shl nsw i32 %3, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, ptr %9, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !261
  br i1 %7, label %14, label %29

14:                                               ; preds = %4
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.QMCSampler, ptr %1, i64 0, i32 6, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !261
  %18 = fadd double %13, %17
  %19 = tail call double @fmod(double noundef %18, double noundef 1.000000e+00) #25
  store double %19, ptr %0, align 8, !tbaa !261
  %20 = load ptr, ptr %8, align 8, !tbaa !157
  %21 = or disjoint i32 %10, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !261
  %25 = getelementptr inbounds %struct.QMCSampler, ptr %1, i64 0, i32 6, i64 %15, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !261
  %27 = fadd double %24, %26
  %28 = tail call double @fmod(double noundef %27, double noundef 1.000000e+00) #25
  br label %34

29:                                               ; preds = %4
  store double %13, ptr %0, align 8, !tbaa !261
  %30 = or disjoint i32 %10, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %9, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !261
  br label %34

34:                                               ; preds = %29, %14
  %35 = phi double [ %28, %14 ], [ %33, %29 ]
  %36 = getelementptr inbounds double, ptr %0, i64 1
  store double %35, ptr %36, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !283 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @shade_by_transmission(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #18 !PGOFuncName !284 {
  %4 = load ptr, ptr %1, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %6 = load i32, ptr %5, align 4, !tbaa !163
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 34
  %11 = load float, ptr %10, align 4, !tbaa !285
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %15 = load float, ptr %14, align 8, !tbaa !97
  %16 = load float, ptr %0, align 8, !tbaa !97
  %17 = fsub float %15, %16
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !97
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !97
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !97
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !97
  %27 = fsub float %24, %26
  %28 = fmul float %22, %22
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %29)
  %31 = tail call float @llvm.sqrt.f32(float %30)
  %32 = fcmp ogt float %31, %11
  %33 = select i1 %32, float %11, float %31
  %34 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 35
  %35 = load float, ptr %34, align 8, !tbaa !286
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %13
  %38 = fcmp ogt float %35, 1.000000e+01
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %13, %37, %39
  %41 = phi float [ 1.000000e+01, %39 ], [ %35, %37 ], [ 0.000000e+00, %13 ]
  %42 = tail call float @powf(float noundef %33, float noundef %41) #25
  %43 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 2
  %44 = load float, ptr %43, align 4, !tbaa !159
  %45 = fmul float %42, %44
  %46 = fcmp ogt float %45, 1.000000e+00
  %47 = select i1 %46, float 1.000000e+00, float %45
  store float %47, ptr %43, align 4, !tbaa !159
  br label %48

48:                                               ; preds = %40, %9, %3
  %49 = phi float [ -1.000000e+00, %3 ], [ %33, %40 ], [ 1.000000e+00, %9 ]
  ret float %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_fadeout_endcolor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !287 {
  %7 = load ptr, ptr %1, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 49
  %9 = load i16, ptr %8, align 8, !tbaa !288
  switch i16 %9, label %16 [
    i16 1, label %10
    i16 0, label %11
  ]

10:                                               ; preds = %6
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %3) #24
  br label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %5) #24
  %13 = tail call fastcc float @normalize_v3(ptr noundef nonnull %12) #24
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %15 = load i16, ptr %14, align 2, !tbaa !177
  tail call void @shadeSkyView(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %12, ptr noundef null, i16 noundef signext %15) #25
  tail call void @shadeSunView(ptr noundef %0, ptr noundef nonnull %12) #25
  br label %16

16:                                               ; preds = %6, %11, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @ray_fadeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #6 !PGOFuncName !289 {
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %7 = tail call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef %0) #24
  %8 = fdiv float %7, %4
  %9 = fsub float 1.000000e+00, %8
  %10 = load float, ptr %2, align 4, !tbaa !97
  %11 = fsub float 1.000000e+00, %9
  %12 = load float, ptr %3, align 4, !tbaa !97
  %13 = fmul float %12, %11
  %14 = tail call float @llvm.fmuladd.f32(float %10, float %9, float %13)
  store float %14, ptr %2, align 4, !tbaa !97
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !97
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !97
  %19 = fmul float %11, %18
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %9, float %19)
  store float %20, ptr %15, align 4, !tbaa !97
  %21 = getelementptr inbounds float, ptr %2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !97
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !97
  %25 = fmul float %11, %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %9, float %25)
  store float %26, ptr %21, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @shadeSkyView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shadeSunView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !290 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #24
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !291 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !97
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !97
  %15 = load float, ptr %8, align 4, !tbaa !97
  %16 = load float, ptr %2, align 4, !tbaa !97
  %17 = load float, ptr %1, align 4, !tbaa !97
  %18 = load float, ptr %6, align 4, !tbaa !97
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !97
  %23 = load float, ptr %1, align 4, !tbaa !97
  %24 = load float, ptr %10, align 4, !tbaa !97
  %25 = load float, ptr %4, align 4, !tbaa !97
  %26 = load float, ptr %2, align 4, !tbaa !97
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_rayobject_hint_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @get_avg_speed(ptr nocapture noundef readonly %0) unnamed_addr #17 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69
  %3 = load float, ptr %2, align 4, !tbaa !97
  %4 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 69, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = insertelement <2 x float> poison, float %3, i64 0
  %11 = insertelement <2 x float> %10, float %7, i64 1
  %12 = fcmp oeq <2 x float> %11, <float 1.000000e+04, float 1.000000e+04>
  %13 = select <2 x i1> %12, <2 x float> zeroinitializer, <2 x float> %11
  %14 = insertelement <2 x float> poison, float %5, i64 0
  %15 = insertelement <2 x float> %14, float %9, i64 1
  %16 = fcmp oeq <2 x float> %15, <float 1.000000e+04, float 1.000000e+04>
  %17 = select <2 x i1> %16, <2 x float> zeroinitializer, <2 x float> %15
  %18 = fmul <2 x float> %17, %17
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %13, <2 x float> %18)
  %20 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %19)
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %22 = fadd <2 x float> %20, %21
  %23 = extractelement <2 x float> %22, i64 0
  %24 = fmul float %23, 5.000000e-01
  ret float %24
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @QMC_sampleHemi(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 !PGOFuncName !293 {
  %5 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  call fastcc void @QMC_getSample(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, i32 noundef %3) #24
  %6 = load double, ptr %5, align 16, !tbaa !261
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %7, 0x400921FB54442D18
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !261
  %12 = tail call double @sqrt(double noundef %11) #25
  %13 = fptrunc double %12 to float
  %14 = tail call float @cosf(float noundef %9) #25
  %15 = fmul float %14, %13
  store float %15, ptr %0, align 4, !tbaa !97
  %16 = tail call float @sinf(float noundef %9) #25
  %17 = fmul float %16, %13
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !97
  %19 = fneg double %11
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %11, double 1.000000e+00)
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds float, ptr %0, i64 2
  store float %21, ptr %22, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  ret void
}

; Function Attrs: optsize
declare void @RE_instance_rotate_ray_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @adaptive_sample_contrast_val(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #11 !PGOFuncName !294 {
  %5 = add nsw i32 %0, -1
  %6 = insertelement <2 x i32> poison, i32 %5, i64 0
  %7 = insertelement <2 x i32> %6, i32 %0, i64 1
  %8 = sitofp <2 x i32> %7 to <2 x float>
  %9 = insertelement <2 x float> poison, float %1, i64 0
  %10 = insertelement <2 x float> %9, float %2, i64 1
  %11 = fdiv <2 x float> %10, %8
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = fsub <2 x float> %11, %12
  %14 = extractelement <2 x float> %13, i64 0
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %3
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sphere_sampler(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !295 {
  %7 = shl i32 %1, 1
  %8 = mul i32 %7, %1
  %9 = and i32 %0, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @BLI_thread_rand(i32 noundef %2) #25
  %13 = tail call ptr @BLI_rng_new(i32 noundef %12) #25
  %14 = tail call fastcc ptr @threadsafe_table_sphere(i32 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8) #24
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %11 ]
  %18 = phi i32 [ %19, %16 ], [ 0, %11 ]
  tail call void @BLI_rng_get_float_unit_v3(ptr noundef %13, ptr noundef %17) #25
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr inbounds float, ptr %17, i64 3
  %21 = icmp eq i32 %19, %8
  br i1 %21, label %22, label %16, !llvm.loop !296

22:                                               ; preds = %16, %11
  tail call void @BLI_rng_free(ptr noundef %13) #25
  br label %73

23:                                               ; preds = %6
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = tail call fastcc ptr @threadsafe_table_sphere(i32 noundef 1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %23, %25
  %29 = tail call fastcc ptr @threadsafe_table_sphere(i32 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8) #24
  %30 = tail call float @BLI_thread_frand(i32 noundef %2) #25
  %31 = tail call float @sinf(float noundef %30) #25
  %32 = tail call float @cosf(float noundef %30) #25
  %33 = tail call float @BLI_thread_frand(i32 noundef %2) #25
  %34 = tail call float @sinf(float noundef %33) #25
  %35 = tail call float @cosf(float noundef %33) #25
  %36 = icmp sgt i32 %8, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 67), align 8, !tbaa !297
  %39 = fmul float %32, %35
  %40 = fneg float %31
  %41 = fmul float %32, %34
  %42 = fmul float %31, %35
  %43 = fmul float %31, %34
  %44 = fneg float %34
  br label %45

45:                                               ; preds = %37, %45
  %46 = phi i32 [ 0, %37 ], [ %69, %45 ]
  %47 = phi ptr [ %38, %37 ], [ %70, %45 ]
  %48 = phi ptr [ %29, %37 ], [ %71, %45 ]
  %49 = load float, ptr %47, align 4, !tbaa !97
  %50 = getelementptr inbounds float, ptr %47, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !97
  %52 = fmul float %51, %40
  %53 = tail call float @llvm.fmuladd.f32(float %39, float %49, float %52)
  %54 = getelementptr inbounds float, ptr %47, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !97
  %56 = tail call float @llvm.fmuladd.f32(float %41, float %55, float %53)
  store float %56, ptr %48, align 4, !tbaa !97
  %57 = load float, ptr %47, align 4, !tbaa !97
  %58 = load float, ptr %50, align 4, !tbaa !97
  %59 = fmul float %32, %58
  %60 = tail call float @llvm.fmuladd.f32(float %42, float %57, float %59)
  %61 = load float, ptr %54, align 4, !tbaa !97
  %62 = tail call float @llvm.fmuladd.f32(float %43, float %61, float %60)
  %63 = getelementptr inbounds float, ptr %48, i64 1
  store float %62, ptr %63, align 4, !tbaa !97
  %64 = load float, ptr %47, align 4, !tbaa !97
  %65 = load float, ptr %54, align 4, !tbaa !97
  %66 = fmul float %35, %65
  %67 = tail call float @llvm.fmuladd.f32(float %44, float %64, float %66)
  %68 = getelementptr inbounds float, ptr %48, i64 2
  store float %67, ptr %68, align 4, !tbaa !97
  %69 = add nuw nsw i32 %46, 1
  %70 = getelementptr inbounds float, ptr %47, i64 3
  %71 = getelementptr inbounds float, ptr %48, i64 3
  %72 = icmp eq i32 %69, %8
  br i1 %72, label %73, label %45, !llvm.loop !298

73:                                               ; preds = %45, %28, %25, %22
  %74 = phi ptr [ %14, %22 ], [ %26, %25 ], [ %29, %28 ], [ %29, %45 ]
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_thread_rand(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @threadsafe_table_sphere(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #22 !PGOFuncName !299 {
  %6 = load i1, ptr @threadsafe_table_sphere.firsttime, align 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store i32 -1, ptr @threadsafe_table_sphere.xso, align 4
  store i32 -1, ptr @threadsafe_table_sphere.yso, align 4
  store i1 true, ptr @threadsafe_table_sphere.firsttime, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.xso, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !131
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %9
  %15 = load i32, ptr %14, align 4, !tbaa !131
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 68), align 8, !tbaa !300
  %19 = mul i32 %1, 3
  %20 = mul i32 %19, %4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %18, i64 %21
  br label %32

23:                                               ; preds = %13, %8
  %24 = icmp eq i32 %0, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  store i32 %2, ptr %10, align 4, !tbaa !131
  %26 = getelementptr inbounds [1 x i32], ptr @threadsafe_table_sphere.yso, i64 0, i64 %9
  store i32 %3, ptr %26, align 4, !tbaa !131
  %27 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 68), align 8, !tbaa !300
  %28 = mul i32 %1, 3
  %29 = mul i32 %28, %4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %27, i64 %30
  br label %32

32:                                               ; preds = %23, %25, %17
  %33 = phi ptr [ %22, %17 ], [ %31, %25 ], [ null, %23 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ray_shadow_jittered_coords(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !301 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 105
  %7 = load i32, ptr %6, align 4, !tbaa !223
  %8 = trunc i32 %7 to i16
  %9 = tail call i32 @count_mask(i16 noundef zeroext %8) #25
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %73

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %15 = load i32, ptr %14, align 8, !tbaa !161
  %16 = icmp ne i32 %15, 0
  %17 = icmp slt i32 %9, 2
  %18 = select i1 %16, i1 true, i1 %17
  %19 = icmp sgt i32 %9, %1
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %73, label %21

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %22 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !302
  %23 = icmp sgt i16 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 1
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 106, i64 2
  br label %28

28:                                               ; preds = %24, %65
  %29 = phi i16 [ %22, %24 ], [ %66, %65 ]
  %30 = phi i64 [ 0, %24 ], [ %68, %65 ]
  %31 = phi i32 [ 0, %24 ], [ %67, %65 ]
  %32 = trunc i64 %30 to i32
  switch i16 %29, label %42 [
    i16 8, label %33
    i16 11, label %35
    i16 16, label %37
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds [8 x i32], ptr @__const.ray_shadow_jittered_coords.order8, i64 0, i64 %30
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds [11 x i32], ptr @__const.ray_shadow_jittered_coords.order11, i64 0, i64 %30
  br label %39

37:                                               ; preds = %28
  %38 = getelementptr inbounds [16 x i32], ptr @__const.ray_shadow_jittered_coords.order16, i64 0, i64 %30
  br label %39

39:                                               ; preds = %33, %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ], [ %34, %33 ]
  %41 = load i32, ptr %40, align 4, !tbaa !131
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi i32 [ %32, %28 ], [ %41, %39 ]
  %44 = load i32, ptr %6, align 4, !tbaa !223
  %45 = shl nuw i32 1, %43
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %42
  %49 = load float, ptr %25, align 8, !tbaa !97
  %50 = sext i32 %43 to i64
  %51 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %50
  %52 = load float, ptr %51, align 8, !tbaa !97
  %53 = fadd float %49, %52
  %54 = fadd float %53, 5.000000e-01
  %55 = load float, ptr %26, align 4, !tbaa !97
  %56 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %50, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !97
  %58 = fadd float %55, %57
  %59 = fadd float %58, 5.000000e-01
  %60 = load float, ptr %27, align 8, !tbaa !97
  %61 = sext i32 %31 to i64
  %62 = getelementptr inbounds [3 x float], ptr %2, i64 %61
  call void @shade_input_calc_viewco(ptr noundef nonnull %0, float noundef %54, float noundef %59, float noundef %60, ptr noundef nonnull %5, ptr noundef null, ptr noundef %62, ptr noundef null, ptr noundef null) #25
  %63 = add nsw i32 %31, 1
  %64 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !302
  br label %65

65:                                               ; preds = %42, %48
  %66 = phi i16 [ %64, %48 ], [ %29, %42 ]
  %67 = phi i32 [ %63, %48 ], [ %31, %42 ]
  %68 = add nuw nsw i64 %30, 1
  %69 = sext i16 %66 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %28, label %71, !llvm.loop !303

71:                                               ; preds = %65, %21
  %72 = phi i32 [ 0, %21 ], [ %67, %65 ]
  store i32 %72, ptr %3, align 4, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  br label %75

73:                                               ; preds = %13, %4
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %74) #24
  store i32 1, ptr %3, align 4, !tbaa !131
  br label %75

75:                                               ; preds = %73, %71
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @QMC_sampleDisc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #18 !PGOFuncName !304 {
  %6 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #26
  call fastcc void @QMC_getSample(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, i32 noundef %3) #24
  %7 = load double, ptr %6, align 16, !tbaa !261
  %8 = fmul double %7, 2.000000e+00
  %9 = fmul double %8, 0x400921FB54442D18
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !261
  %13 = tail call double @sqrt(double noundef %12) #25
  %14 = fptrunc double %13 to float
  %15 = tail call float @cosf(float noundef %10) #25
  %16 = fmul float %15, %14
  %17 = fmul float %16, %4
  %18 = fmul float %17, 5.000000e-01
  store float %18, ptr %0, align 4, !tbaa !97
  %19 = tail call float @sinf(float noundef %10) #25
  %20 = fmul float %19, %14
  %21 = fmul float %20, %4
  %22 = fmul float %21, 5.000000e-01
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float %22, ptr %23, align 4, !tbaa !97
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @QMC_sampleRect(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #18 !PGOFuncName !305 {
  %7 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #26
  call fastcc void @QMC_getSample(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3) #24
  %8 = load <2 x double>, ptr %7, align 16, !tbaa !261
  %9 = fadd <2 x double> %8, <double -5.000000e-01, double -5.000000e-01>
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = insertelement <2 x float> poison, float %4, i64 0
  %12 = insertelement <2 x float> %11, float %5, i64 1
  %13 = fmul <2 x float> %12, %10
  store <2 x float> %13, ptr %0, align 4, !tbaa !97
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %14, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #26
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @count_mask(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_calc_viewco(ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @addAlphaLight(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #7 !PGOFuncName !306 {
  %5 = load float, ptr %1, align 4, !tbaa !97
  %6 = fadd float %5, -1.000000e+00
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %6, float 1.000000e+00)
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = fadd float %9, -1.000000e+00
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %10, float 1.000000e+00)
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !97
  %14 = fadd float %13, -1.000000e+00
  %15 = tail call float @llvm.fmuladd.f32(float %3, float %14, float 1.000000e+00)
  %16 = fsub float 1.000000e+00, %2
  %17 = fmul float %16, %7
  %18 = load float, ptr %0, align 4, !tbaa !97
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %2, float %5, float %19)
  store float %20, ptr %0, align 4, !tbaa !97
  %21 = load float, ptr %8, align 4, !tbaa !97
  %22 = fmul float %16, %11
  %23 = getelementptr inbounds float, ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !97
  %25 = fmul float %22, %24
  %26 = tail call float @llvm.fmuladd.f32(float %2, float %21, float %25)
  store float %26, ptr %23, align 4, !tbaa !97
  %27 = load float, ptr %12, align 4, !tbaa !97
  %28 = fmul float %16, %15
  %29 = getelementptr inbounds float, ptr %0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !97
  %31 = fmul float %28, %30
  %32 = tail call float @llvm.fmuladd.f32(float %2, float %27, float %31)
  store float %32, ptr %29, align 4, !tbaa !97
  %33 = getelementptr inbounds float, ptr %0, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !97
  %35 = fmul float %16, %34
  store float %35, ptr %33, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @give_jitter_plane(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !307 {
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 49
  %6 = load i16, ptr %5, align 8, !tbaa !137
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 47
  %9 = load i16, ptr %8, align 4, !tbaa !240
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %4
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 50, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !308
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 51, i64 %14
  %21 = load i16, ptr %20, align 2, !tbaa !308
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = shl i32 %1, 1
  %26 = add i32 %25, 2
  %27 = mul nsw i32 %26, %7
  %28 = sext i32 %27 to i64
  br label %46

29:                                               ; preds = %19, %13
  %30 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = shl i32 %1, 1
  %33 = add i32 %32, 2
  %34 = mul nsw i32 %33, %7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, ptr %31, i64 %35
  %37 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %38 = load float, ptr %37, align 8, !tbaa !140
  %39 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  %40 = load float, ptr %39, align 4, !tbaa !141
  %41 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  %42 = tail call float @BLI_thread_frand(i32 noundef %1) #25
  tail call fastcc void @jitter_plane_offset(ptr noundef %31, ptr noundef %36, i32 noundef %7, float noundef %38, float noundef %40, float noundef %41, float noundef %42) #24
  %43 = trunc i32 %2 to i16
  store i16 %43, ptr %15, align 2, !tbaa !308
  %44 = trunc i32 %3 to i16
  %45 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 51, i64 %14
  store i16 %44, ptr %45, align 2, !tbaa !308
  br label %46

46:                                               ; preds = %24, %29
  %47 = phi i64 [ %28, %24 ], [ %35, %29 ]
  %48 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = getelementptr inbounds float, ptr %49, i64 %47
  br label %65

51:                                               ; preds = %4
  %52 = and i32 %10, 4
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 58
  %55 = load ptr, ptr %54, align 8, !tbaa !139
  br i1 %53, label %65, label %56

56:                                               ; preds = %51
  %57 = and i32 %2, 1
  %58 = shl i32 %3, 1
  %59 = and i32 %58, 2
  %60 = or disjoint i32 %59, %57
  %61 = shl nuw nsw i32 %60, 1
  %62 = mul nsw i32 %61, %7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %55, i64 %63
  br label %65

65:                                               ; preds = %51, %56, %46
  %66 = phi ptr [ %50, %46 ], [ %64, %56 ], [ %55, %51 ]
  ret ptr %66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!62, !39, i64 84}
!68 = !{!62, !36, i64 120}
!69 = !{!70, !36, i64 0}
!70 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!71 = !{i32 0, i32 2}
!72 = distinct !{!72, !66}
!73 = !{!35, !40, i64 1632}
!74 = !{!35, !39, i64 1628}
!75 = !{!62, !36, i64 264}
!76 = !{!62, !36, i64 272}
!77 = distinct !{!77, !66}
!78 = !{!60, !40, i64 216}
!79 = !{!60, !39, i64 280}
!80 = !{!"rayshade.c:is_raytraceable_vlr"}
!81 = !{!35, !40, i64 96}
!82 = !{!83, !37, i64 57}
!83 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !39, i64 60}
!84 = !{!83, !36, i64 48}
!85 = !{!86, !40, i64 128}
!86 = !{!"Material", !53, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !87, i64 224, !88, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !37, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !37, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!87 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!88 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!89 = !{!"rayshade.c:rayobject_create"}
!90 = !{!35, !40, i64 1636}
!91 = !{!"rayshade.c:test_break"}
!92 = !{!35, !36, i64 6048}
!93 = !{!35, !36, i64 6056}
!94 = !{!35, !36, i64 6128}
!95 = !{!35, !36, i64 6000}
!96 = !{!35, !36, i64 6008}
!97 = !{!44, !44, i64 0}
!98 = distinct !{!98, !66}
!99 = !{!35, !44, i64 5680}
!100 = !{!"rayshade.c:makeraytree_single"}
!101 = distinct !{!101, !66}
!102 = distinct !{!102, !66}
!103 = !{!104, !39, i64 60}
!104 = !{!"RayFace", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !39, i64 60, !36, i64 64, !36, i64 72}
!105 = distinct !{!105, !66}
!106 = distinct !{!106, !66}
!107 = !{!"rayshade.c:zero_v3"}
!108 = !{!"rayshade.c:len_v3"}
!109 = !{!110, !36, i64 128}
!110 = !{!"Isect", !37, i64 0, !37, i64 12, !44, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !44, i64 112, !44, i64 116, !39, i64 120, !111, i64 128, !111, i64 144, !36, i64 160, !36, i64 168}
!111 = !{!"", !36, i64 0, !36, i64 8}
!112 = !{!110, !36, i64 136}
!113 = !{!110, !44, i64 24}
!114 = !{!115, !36, i64 24}
!115 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!116 = !{!115, !36, i64 32}
!117 = !{!115, !36, i64 8}
!118 = !{!115, !36, i64 0}
!119 = !{!110, !39, i64 120}
!120 = !{!115, !40, i64 96}
!121 = !{!110, !39, i64 88}
!122 = !{!115, !40, i64 1438}
!123 = !{!86, !36, i64 768}
!124 = !{!86, !37, i64 543}
!125 = !{!"rayshade.c:copy_v3_v3"}
!126 = !{!"rayshade.c:normalize_v3"}
!127 = !{!"rayshade.c:shade_ray_set_derivative"}
!128 = !{!115, !36, i64 64}
!129 = !{!115, !36, i64 72}
!130 = !{!115, !36, i64 80}
!131 = !{!39, !39, i64 0}
!132 = !{!115, !44, i64 176}
!133 = !{!115, !44, i64 180}
!134 = !{!115, !44, i64 184}
!135 = !{!115, !44, i64 188}
!136 = !{!"rayshade.c:sub_v3_v3v3"}
!137 = !{!138, !40, i64 200}
!138 = !{!"LampRen", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !37, i64 28, !40, i64 40, !39, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !39, i64 84, !44, i64 88, !44, i64 92, !37, i64 96, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !44, i64 136, !44, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !44, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !44, i64 284, !37, i64 288, !44, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !44, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !39, i64 664, !39, i64 668}
!139 = !{!138, !36, i64 240}
!140 = !{!138, !44, i64 208}
!141 = !{!138, !44, i64 212}
!142 = distinct !{!142, !66}
!143 = distinct !{!143, !66}
!144 = distinct !{!144, !66}
!145 = !{!"rayshade.c:DP_energy"}
!146 = distinct !{!146, !66}
!147 = distinct !{!147, !66}
!148 = distinct !{!148, !66}
!149 = !{!"rayshade.c:jitter_plane_offset"}
!150 = distinct !{!150, !66}
!151 = !{!35, !36, i64 1072}
!152 = !{!41, !36, i64 0}
!153 = !{!154, !36, i64 0}
!154 = !{!"QMCSampler", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 32, !37, i64 40}
!155 = distinct !{!155, !66}
!156 = !{!"rayshade.c:QMC_freeSampler"}
!157 = !{!154, !36, i64 32}
!158 = !{!115, !39, i64 160}
!159 = !{!160, !44, i64 32}
!160 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!161 = !{!115, !39, i64 1408}
!162 = !{!86, !40, i64 358}
!163 = !{!86, !39, i64 396}
!164 = !{!115, !44, i64 292}
!165 = !{!86, !40, i64 356}
!166 = !{!115, !39, i64 1452}
!167 = !{!86, !44, i64 344}
!168 = !{!115, !44, i64 236}
!169 = !{!115, !39, i64 1448}
!170 = !{!86, !44, i64 332}
!171 = !{!86, !44, i64 328}
!172 = !{!115, !44, i64 260}
!173 = !{!"rayshade.c:trace_refract"}
!174 = !{!86, !44, i64 368}
!175 = !{!86, !40, i64 374}
!176 = !{!86, !44, i64 380}
!177 = !{!115, !40, i64 1434}
!178 = !{!115, !44, i64 284}
!179 = distinct !{!179, !66}
!180 = !{!"rayshade.c:min_ff"}
!181 = !{!"rayshade.c:trace_reflect"}
!182 = !{!86, !44, i64 364}
!183 = !{!86, !40, i64 372}
!184 = !{!86, !44, i64 376}
!185 = !{!86, !44, i64 384}
!186 = distinct !{!186, !66}
!187 = !{!"rayshade.c:add_v3_v3v3"}
!188 = !{!52, !40, i64 290}
!189 = !{!52, !36, i64 336}
!190 = distinct !{!190, !66}
!191 = distinct !{!191, !66}
!192 = distinct !{!192, !66}
!193 = !{!52, !36, i64 344}
!194 = !{!"rayshade.c:DS_energy"}
!195 = distinct !{!195, !66}
!196 = !{!"rayshade.c:ray_ao_qmc"}
!197 = !{!35, !44, i64 5360}
!198 = !{!35, !44, i64 5384}
!199 = !{!35, !44, i64 5388}
!200 = !{!35, !40, i64 5378}
!201 = !{!110, !36, i64 144}
!202 = !{!110, !36, i64 152}
!203 = !{!110, !39, i64 100}
!204 = !{!110, !39, i64 96}
!205 = !{!35, !40, i64 5376}
!206 = !{!110, !39, i64 92}
!207 = !{!110, !36, i64 168}
!208 = !{!35, !40, i64 5382}
!209 = !{!35, !40, i64 5416}
!210 = !{!35, !44, i64 5364}
!211 = !{!35, !44, i64 5224}
!212 = !{!35, !44, i64 5236}
!213 = !{!35, !44, i64 5228}
!214 = !{!35, !44, i64 5240}
!215 = !{!35, !44, i64 5232}
!216 = !{!35, !44, i64 5244}
!217 = !{!154, !39, i64 16}
!218 = distinct !{!218, !66}
!219 = !{!"rayshade.c:ray_ao_spheresamp"}
!220 = !{!115, !39, i64 1380}
!221 = !{!115, !39, i64 1384}
!222 = !{!115, !36, i64 16}
!223 = !{!115, !39, i64 1388}
!224 = distinct !{!224, !66}
!225 = !{!138, !39, i64 44}
!226 = !{!138, !39, i64 84}
!227 = !{!138, !40, i64 40}
!228 = !{!138, !40, i64 194}
!229 = !{!110, !36, i64 160}
!230 = !{!"rayshade.c:ray_shadow_qmc"}
!231 = !{!138, !44, i64 220}
!232 = !{!35, !39, i64 1624}
!233 = distinct !{!233, !66}
!234 = distinct !{!234, !66}
!235 = !{!"rayshade.c:ray_trace_shadow_tra"}
!236 = !{!115, !39, i64 1440}
!237 = !{!"rayshade.c:copy_v4_v4"}
!238 = !{!"rayshade.c:ray_shadow_jitter"}
!239 = distinct !{!239, !66}
!240 = !{!138, !40, i64 196}
!241 = !{!"rayshade.c:RE_rayobject_config_control"}
!242 = !{!243, !36, i64 8}
!243 = !{!"RayObject", !36, i64 0, !244, i64 8}
!244 = !{!"RayObjectControl", !36, i64 0, !36, i64 8}
!245 = !{!243, !36, i64 16}
!246 = !{!"rayshade.c:is_raytraceable"}
!247 = !{!35, !36, i64 5888}
!248 = !{!62, !36, i64 16}
!249 = distinct !{!249, !66}
!250 = !{!"rayshade.c:has_special_rayobject"}
!251 = distinct !{!251, !66}
!252 = !{!"rayshade.c:dot_v3v3"}
!253 = !{!"rayshade.c:normalize_v3_v3"}
!254 = !{!"rayshade.c:mul_v3_v3fl"}
!255 = !{!"rayshade.c:axis_dominant_v3"}
!256 = !{!"rayshade.c:get_thread_qmcsampler"}
!257 = !{!154, !39, i64 20}
!258 = !{!154, !39, i64 24}
!259 = distinct !{!259, !66}
!260 = !{!"rayshade.c:QMC_initPixel"}
!261 = !{!55, !55, i64 0}
!262 = distinct !{!262, !66}
!263 = !{!"rayshade.c:refraction"}
!264 = !{!"rayshade.c:reflection"}
!265 = !{!"rayshade.c:reflection_simple"}
!266 = !{!"rayshade.c:QMC_samplePhong"}
!267 = !{!"rayshade.c:mul_v3_fl"}
!268 = !{!"rayshade.c:add_v3_v3"}
!269 = !{!"rayshade.c:traceray"}
!270 = !{!86, !44, i64 388}
!271 = !{!86, !39, i64 400}
!272 = !{!"rayshade.c:adaptive_sample_variance"}
!273 = !{!"rayshade.c:release_thread_qmcsampler"}
!274 = !{!"rayshade.c:QMC_initSampler"}
!275 = !{!"rayshade.c:hammersley_create"}
!276 = distinct !{!276, !66}
!277 = distinct !{!277, !66}
!278 = !{!"rayshade.c:halton_sample"}
!279 = distinct !{!279, !66}
!280 = distinct !{!280, !66}
!281 = !{!"rayshade.c:madd_v3_v3v3fl"}
!282 = !{!"rayshade.c:QMC_getSample"}
!283 = !{!"rayshade.c:zero_v4"}
!284 = !{!"rayshade.c:shade_by_transmission"}
!285 = !{!86, !44, i64 348}
!286 = !{!86, !44, i64 352}
!287 = !{!"rayshade.c:ray_fadeout_endcolor"}
!288 = !{!86, !40, i64 392}
!289 = !{!"rayshade.c:ray_fadeout"}
!290 = !{!"rayshade.c:len_v3v3"}
!291 = !{!"rayshade.c:cross_v3_v3v3"}
!292 = !{!"rayshade.c:get_avg_speed"}
!293 = !{!"rayshade.c:QMC_sampleHemi"}
!294 = !{!"rayshade.c:adaptive_sample_contrast_val"}
!295 = !{!"rayshade.c:sphere_sampler"}
!296 = distinct !{!296, !66}
!297 = !{!35, !36, i64 5424}
!298 = distinct !{!298, !66}
!299 = !{!"rayshade.c:threadsafe_table_sphere"}
!300 = !{!35, !36, i64 5432}
!301 = !{!"rayshade.c:ray_shadow_jittered_coords"}
!302 = !{!35, !40, i64 98}
!303 = distinct !{!303, !66}
!304 = !{!"rayshade.c:QMC_sampleDisc"}
!305 = !{!"rayshade.c:QMC_sampleRect"}
!306 = !{!"rayshade.c:addAlphaLight"}
!307 = !{!"rayshade.c:give_jitter_plane"}
!308 = !{!40, !40, i64 0}
