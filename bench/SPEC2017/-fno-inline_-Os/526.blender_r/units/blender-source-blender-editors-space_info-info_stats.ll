; ModuleID = 'blender/source/blender/editors/space_info/info_stats.c'
source_filename = "blender/source/blender/editors/space_info/info_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.SceneStats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [512 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SceneStatsFmt = type { [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"SceneStats\00", align 1
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8
@MEM_get_mapped_memory_in_use = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c" | Mem:%.2fM\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (%.2fM)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s | \00", align 1
@versionstr = external global [0 x i8], align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(Key) \00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Verts:%s/%s | Edges:%s/%s | Faces:%s/%s | Tris:%s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Verts:%s/%s | Bones:%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Verts:%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Bones:%s/%s %s\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Verts:%s | Tris:%s\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Verts:%s | Faces:%s | Tris:%s | Objects:%s/%s | Lamps:%s/%s%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" | %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_info_stats_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %6(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @ED_info_stats_string(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @stats_update(ptr noundef nonnull %0) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call fastcc void @stats_string(ptr noundef nonnull %0) #10
  %7 = load ptr, ptr %2, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.SceneStats, ptr %7, i64 0, i32 13
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_update(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = alloca %struct.SceneStats, align 4
  call void @llvm.lifetime.start.p0(i64 564, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(564) %2, i8 0, i64 564, i1 false)
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %14, %12 ], [ %10, %6 ]
  call fastcc void @stats_object_edit(ptr noundef nonnull %17, ptr noundef nonnull %2) #10
  br label %50

18:                                               ; preds = %6
  %19 = icmp eq ptr %8, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !68
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call fastcc void @stats_object_pose(ptr noundef nonnull %8, ptr noundef nonnull %2) #10
  br label %50

26:                                               ; preds = %12, %20, %18
  %27 = phi ptr [ %8, %20 ], [ null, %18 ], [ null, %12 ]
  %28 = tail call fastcc zeroext i8 @stats_is_object_dynamic_topology_sculpt(ptr noundef %27) #10, !range !71
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call fastcc void @stats_object_sculpt_dynamic_topology(ptr noundef %27, ptr noundef nonnull %2) #10
  br label %50

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi ptr [ %33, %35 ], [ %48, %47 ]
  %39 = load i32, ptr %36, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !73
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  call fastcc void @stats_dupli_object(ptr noundef nonnull %38, ptr noundef %46, ptr noundef nonnull %2) #10
  br label %47

47:                                               ; preds = %37, %44
  %48 = load ptr, ptr %38, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !74

50:                                               ; preds = %47, %31, %25, %30, %16
  %51 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %56 = tail call ptr %55(i64 noundef 564, ptr noundef nonnull @.str) #9
  store ptr %56, ptr %51, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi ptr [ %56, %54 ], [ %52, %50 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(564) %58, ptr noundef nonnull align 4 dereferenceable(564) %2, i64 564, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(i64 564, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_string(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = alloca %struct.SceneStatsFmt, align 1
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %2) #11
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi ptr [ %11, %9 ], [ null, %1 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %14 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !62
  %15 = tail call i64 %14() #9
  %16 = load ptr, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !62
  %17 = tail call i64 %16() #9
  %18 = load i32, ptr %5, align 4, !tbaa !80
  %19 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %2, i32 noundef %18) #9
  %20 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 1
  %21 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !82
  %23 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %20, i32 noundef %22) #9
  %24 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 4
  %25 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !83
  %27 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %24, i32 noundef %26) #9
  %28 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 5
  %29 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !84
  %31 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %28, i32 noundef %30) #9
  %32 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 2
  %33 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !85
  %35 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %32, i32 noundef %34) #9
  %36 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 3
  %37 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !86
  %39 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %36, i32 noundef %38) #9
  %40 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 6
  %41 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !87
  %43 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %40, i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 7
  %45 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !88
  %47 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %44, i32 noundef %46) #9
  %48 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 8
  %49 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !89
  %51 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %48, i32 noundef %50) #9
  %52 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 9
  %53 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !90
  %55 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %52, i32 noundef %54) #9
  %56 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 10
  %57 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 10
  %58 = load i32, ptr %57, align 4, !tbaa !91
  %59 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %56, i32 noundef %58) #9
  %60 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 11
  %61 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 11
  %62 = load i32, ptr %61, align 4, !tbaa !92
  %63 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %60, i32 noundef %62) #9
  %64 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 12
  %65 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 12
  %66 = load i32, ptr %65, align 4, !tbaa !93
  %67 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %64, i32 noundef %66) #9
  %68 = sub i64 %15, %17
  %69 = lshr i64 %68, 10
  %70 = uitofp i64 %69 to double
  %71 = fmul double %70, 0x3F50000000000000
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.1, double noundef %71) #9
  %73 = icmp eq i64 %17, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %12
  %75 = getelementptr inbounds i8, ptr %3, i64 %72
  %76 = sub i64 64, %72
  %77 = lshr i64 %17, 10
  %78 = uitofp i64 %77 to double
  %79 = fmul double %78, 0x3F50000000000000
  %80 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %75, i64 noundef %76, ptr noundef nonnull @.str.2, double noundef %79) #9
  br label %81

81:                                               ; preds = %74, %12
  %82 = getelementptr inbounds %struct.SceneStats, ptr %5, i64 0, i32 13
  %83 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %82, i64 noundef 512, ptr noundef nonnull @.str.3, ptr noundef nonnull @versionstr) #9
  %84 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !67
  %86 = icmp eq ptr %85, null
  br i1 %86, label %115, label %87

87:                                               ; preds = %81
  %88 = call ptr @BKE_keyblock_from_object(ptr noundef nonnull %85) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %82, i64 %83
  %92 = sub i64 512, %83
  %93 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %91, ptr noundef nonnull @.str.4, i64 noundef %92) #9
  %94 = add i64 %93, %83
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i64 [ %94, %90 ], [ %83, %87 ]
  %97 = load ptr, ptr %84, align 8, !tbaa !67
  %98 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 3
  %99 = load i16, ptr %98, align 8, !tbaa !94
  %100 = getelementptr inbounds i8, ptr %82, i64 %96
  %101 = sub i64 512, %96
  switch i16 %99, label %106 [
    i16 1, label %102
    i16 25, label %104
  ]

102:                                              ; preds = %95
  %103 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %100, i64 noundef %101, ptr noundef nonnull @.str.5, ptr noundef nonnull %20, ptr noundef nonnull %2, ptr noundef nonnull %28, ptr noundef nonnull %24, ptr noundef nonnull %36, ptr noundef nonnull %32, ptr noundef nonnull %64) #9
  br label %108

104:                                              ; preds = %95
  %105 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %100, i64 noundef %101, ptr noundef nonnull @.str.6, ptr noundef nonnull %20, ptr noundef nonnull %2, ptr noundef nonnull %44, ptr noundef nonnull %40) #9
  br label %108

106:                                              ; preds = %95
  %107 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %100, i64 noundef %101, ptr noundef nonnull @.str.7, ptr noundef nonnull %20, ptr noundef nonnull %2) #9
  br label %108

108:                                              ; preds = %104, %106, %102
  %109 = phi i64 [ %103, %102 ], [ %105, %104 ], [ %107, %106 ]
  %110 = add i64 %109, %96
  %111 = getelementptr inbounds i8, ptr %82, i64 %110
  %112 = sub i64 512, %110
  %113 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %111, ptr noundef nonnull %3, i64 noundef %112) #9
  %114 = add i64 %110, %113
  br label %138

115:                                              ; preds = %81
  %116 = icmp eq ptr %13, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 27
  %119 = load i32, ptr %118, align 8, !tbaa !68
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %82, i64 %83
  %124 = sub i64 512, %83
  %125 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %123, i64 noundef %124, ptr noundef nonnull @.str.8, ptr noundef nonnull %44, ptr noundef nonnull %40, ptr noundef nonnull %3) #9
  %126 = add i64 %125, %83
  br label %141

127:                                              ; preds = %117, %115
  %128 = call fastcc zeroext i8 @stats_is_object_dynamic_topology_sculpt(ptr noundef %13) #10, !range !71
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr inbounds i8, ptr %82, i64 %83
  %131 = sub i64 512, %83
  br i1 %129, label %135, label %132

132:                                              ; preds = %127
  %133 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %130, i64 noundef %131, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, ptr noundef nonnull %64) #9
  %134 = add i64 %133, %83
  br label %138

135:                                              ; preds = %127
  %136 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %130, i64 noundef %131, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, ptr noundef nonnull %32, ptr noundef nonnull %64, ptr noundef nonnull %52, ptr noundef nonnull %48, ptr noundef nonnull %60, ptr noundef nonnull %56, ptr noundef nonnull %3) #9
  %137 = add i64 %136, %83
  br label %138

138:                                              ; preds = %135, %132, %108
  %139 = phi i64 [ %114, %108 ], [ %134, %132 ], [ %137, %135 ]
  %140 = icmp eq ptr %13, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %122, %138
  %142 = phi i64 [ %126, %122 ], [ %139, %138 ]
  %143 = getelementptr inbounds i8, ptr %82, i64 %142
  %144 = sub i64 512, %142
  %145 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4, i64 2
  %146 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %143, i64 noundef %144, ptr noundef nonnull @.str.11, ptr noundef nonnull %145) #9
  br label %147

147:                                              ; preds = %141, %138
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_object_edit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !94
  switch i16 %4, label %242 [
    i16 1, label %5
    i16 25, label %27
    i16 2, label %93
    i16 3, label %93
    i16 5, label %177
    i16 22, label %201
  ]

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = load i32, ptr %7, align 8, !tbaa !98
  store i32 %8, ptr %1, align 4, !tbaa !80
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !82
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !102
  %14 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !83
  %15 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !103
  %17 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 3
  store i32 %16, ptr %17, align 4, !tbaa !84
  %18 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !104
  %20 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 4
  store i32 %19, ptr %20, align 4, !tbaa !85
  %21 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 5
  store i32 %22, ptr %23, align 4, !tbaa !86
  %24 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 12
  store i32 %25, ptr %26, align 4, !tbaa !93
  br label %242

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.bArmature, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = icmp eq ptr %32, null
  br i1 %33, label %242, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 6
  %36 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 7
  %38 = load i32, ptr %35, align 4, !tbaa !87
  %39 = load i32, ptr %1, align 4, !tbaa !80
  br label %40

40:                                               ; preds = %34, %89
  %41 = phi i32 [ %39, %34 ], [ %90, %89 ]
  %42 = phi i32 [ %38, %34 ], [ %44, %89 ]
  %43 = phi ptr [ %32, %34 ], [ %91, %89 ]
  %44 = add nsw i32 %42, 1
  %45 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !110
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !112
  %52 = icmp ne ptr %51, null
  %53 = sext i1 %52 to i32
  %54 = add nsw i32 %41, %53
  br label %55

55:                                               ; preds = %49, %40
  %56 = phi i32 [ %41, %40 ], [ %54, %49 ]
  %57 = and i32 %46, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %36, align 4, !tbaa !82
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %36, align 4, !tbaa !82
  br label %62

62:                                               ; preds = %59, %55
  %63 = and i32 %46, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %36, align 4, !tbaa !82
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %36, align 4, !tbaa !82
  br label %68

68:                                               ; preds = %65, %62
  %69 = and i32 %46, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %37, align 4, !tbaa !88
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %37, align 4, !tbaa !88
  br label %74

74:                                               ; preds = %71, %68
  %75 = and i32 %46, 18
  %76 = icmp eq i32 %75, 18
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !112
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.EditBone, ptr %79, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !110
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %36, align 4, !tbaa !82
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr %36, align 4, !tbaa !82
  br label %89

89:                                               ; preds = %86, %81, %77, %74
  %90 = add nsw i32 %56, 2
  %91 = load ptr, ptr %43, align 8, !tbaa !62
  %92 = icmp eq ptr %91, null
  br i1 %92, label %238, label %40, !llvm.loop !113

93:                                               ; preds = %2, %2
  %94 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !107
  %96 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %95) #9
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = icmp eq ptr %97, null
  br i1 %98, label %242, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 1
  br label %101

101:                                              ; preds = %99, %174
  %102 = phi ptr [ %97, %99 ], [ %175, %174 ]
  %103 = getelementptr inbounds %struct.Nurb, ptr %102, i64 0, i32 2
  %104 = load i16, ptr %103, align 8, !tbaa !114
  %105 = icmp eq i16 %104, 1
  %106 = getelementptr inbounds %struct.Nurb, ptr %102, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !116
  br i1 %105, label %108, label %145

108:                                              ; preds = %101
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %174, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.Nurb, ptr %102, i64 0, i32 18
  %112 = load ptr, ptr %111, align 8, !tbaa !117
  %113 = load i32, ptr %1, align 4, !tbaa !80
  %114 = mul i32 %107, 3
  br label %115

115:                                              ; preds = %110, %142
  %116 = phi i32 [ %107, %110 ], [ %118, %142 ]
  %117 = phi ptr [ %112, %110 ], [ %143, %142 ]
  %118 = add nsw i32 %116, -1
  %119 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 7
  %120 = load i8, ptr %119, align 1, !tbaa !118
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load i32, ptr %100, align 4, !tbaa !82
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %100, align 4, !tbaa !82
  br label %126

126:                                              ; preds = %123, %115
  %127 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 8
  %128 = load i8, ptr %127, align 4, !tbaa !120
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %100, align 4, !tbaa !82
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %100, align 4, !tbaa !82
  br label %134

134:                                              ; preds = %131, %126
  %135 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 9
  %136 = load i8, ptr %135, align 1, !tbaa !121
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, ptr %100, align 4, !tbaa !82
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %100, align 4, !tbaa !82
  br label %142

142:                                              ; preds = %139, %134
  %143 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 1
  %144 = icmp eq i32 %118, 0
  br i1 %144, label %168, label %115, !llvm.loop !122

145:                                              ; preds = %101
  %146 = getelementptr inbounds %struct.Nurb, ptr %102, i64 0, i32 7
  %147 = load i32, ptr %146, align 4, !tbaa !123
  %148 = mul nsw i32 %147, %107
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %174, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.Nurb, ptr %102, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !124
  %153 = load i32, ptr %1, align 4, !tbaa !80
  br label %154

154:                                              ; preds = %150, %165
  %155 = phi i32 [ %148, %150 ], [ %157, %165 ]
  %156 = phi ptr [ %152, %150 ], [ %166, %165 ]
  %157 = add nsw i32 %155, -1
  %158 = getelementptr inbounds %struct.BPoint, ptr %156, i64 0, i32 3
  %159 = load i16, ptr %158, align 4, !tbaa !125
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, ptr %100, align 4, !tbaa !82
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %100, align 4, !tbaa !82
  br label %165

165:                                              ; preds = %162, %154
  %166 = getelementptr inbounds %struct.BPoint, ptr %156, i64 1
  %167 = icmp eq i32 %157, 0
  br i1 %167, label %170, label %154, !llvm.loop !127

168:                                              ; preds = %142
  %169 = add i32 %113, %114
  br label %172

170:                                              ; preds = %165
  %171 = add i32 %153, %148
  br label %172

172:                                              ; preds = %168, %170
  %173 = phi i32 [ %171, %170 ], [ %169, %168 ]
  store i32 %173, ptr %1, align 4, !tbaa !80
  br label %174

174:                                              ; preds = %172, %145, %108
  %175 = load ptr, ptr %102, align 8, !tbaa !62
  %176 = icmp eq ptr %175, null
  br i1 %176, label %242, label %101, !llvm.loop !128

177:                                              ; preds = %2
  %178 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !107
  %180 = getelementptr inbounds %struct.MetaBall, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !129
  %182 = load ptr, ptr %181, align 8, !tbaa !62
  %183 = icmp eq ptr %182, null
  br i1 %183, label %242, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 1
  %186 = load i32, ptr %1, align 4, !tbaa !80
  br label %187

187:                                              ; preds = %184, %198
  %188 = phi i32 [ %186, %184 ], [ %190, %198 ]
  %189 = phi ptr [ %182, %184 ], [ %199, %198 ]
  %190 = add nsw i32 %188, 1
  %191 = getelementptr inbounds %struct.MetaElem, ptr %189, i64 0, i32 4
  %192 = load i16, ptr %191, align 2, !tbaa !131
  %193 = and i16 %192, 1
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %187
  %196 = load i32, ptr %185, align 4, !tbaa !82
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %185, align 4, !tbaa !82
  br label %198

198:                                              ; preds = %187, %195
  %199 = load ptr, ptr %189, align 8, !tbaa !62
  %200 = icmp eq ptr %199, null
  br i1 %200, label %239, label %187, !llvm.loop !133

201:                                              ; preds = %2
  %202 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %203 = load ptr, ptr %202, align 8, !tbaa !107
  %204 = getelementptr inbounds %struct.Lattice, ptr %203, i64 0, i32 26
  %205 = load ptr, ptr %204, align 8, !tbaa !134
  %206 = load ptr, ptr %205, align 8, !tbaa !136
  %207 = getelementptr inbounds %struct.Lattice, ptr %206, i64 0, i32 2
  %208 = load i16, ptr %207, align 8, !tbaa !138
  %209 = sext i16 %208 to i32
  %210 = getelementptr inbounds %struct.Lattice, ptr %206, i64 0, i32 3
  %211 = load i16, ptr %210, align 2, !tbaa !139
  %212 = sext i16 %211 to i32
  %213 = mul nsw i32 %212, %209
  %214 = getelementptr inbounds %struct.Lattice, ptr %206, i64 0, i32 4
  %215 = load i16, ptr %214, align 4, !tbaa !140
  %216 = sext i16 %215 to i32
  %217 = mul nsw i32 %213, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %242, label %219

219:                                              ; preds = %201
  %220 = getelementptr inbounds %struct.Lattice, ptr %206, i64 0, i32 21
  %221 = load ptr, ptr %220, align 8, !tbaa !141
  %222 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 1
  %223 = load i32, ptr %1, align 4, !tbaa !80
  br label %224

224:                                              ; preds = %219, %235
  %225 = phi i32 [ %217, %219 ], [ %227, %235 ]
  %226 = phi ptr [ %221, %219 ], [ %236, %235 ]
  %227 = add nsw i32 %225, -1
  %228 = getelementptr inbounds %struct.BPoint, ptr %226, i64 0, i32 3
  %229 = load i16, ptr %228, align 4, !tbaa !125
  %230 = and i16 %229, 1
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %224
  %233 = load i32, ptr %222, align 4, !tbaa !82
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %222, align 4, !tbaa !82
  br label %235

235:                                              ; preds = %232, %224
  %236 = getelementptr inbounds %struct.BPoint, ptr %226, i64 1
  %237 = icmp eq i32 %227, 0
  br i1 %237, label %240, label %224, !llvm.loop !142

238:                                              ; preds = %89
  store i32 %44, ptr %35, align 4, !tbaa !87
  store i32 %90, ptr %1, align 4, !tbaa !80
  br label %242

239:                                              ; preds = %198
  store i32 %190, ptr %1, align 4, !tbaa !80
  br label %242

240:                                              ; preds = %235
  %241 = add i32 %223, %217
  store i32 %241, ptr %1, align 4, !tbaa !80
  br label %242

242:                                              ; preds = %174, %201, %240, %177, %239, %93, %27, %238, %2, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stats_object_pose(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 6
  %13 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %14 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %12, align 4, !tbaa !87
  br label %16

16:                                               ; preds = %9, %37
  %17 = phi i32 [ %15, %9 ], [ %19, %37 ]
  %18 = phi ptr [ %7, %9 ], [ %38, %37 ]
  %19 = add nsw i32 %17, 1
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !147
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %30 = load i32, ptr %29, align 8, !tbaa !149
  %31 = load i32, ptr %13, align 8, !tbaa !150
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %14, align 4, !tbaa !88
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %14, align 4, !tbaa !88
  br label %37

37:                                               ; preds = %16, %23, %34, %28
  %38 = load ptr, ptr %18, align 8, !tbaa !62
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16, !llvm.loop !151

40:                                               ; preds = %37
  store i32 %19, ptr %12, align 4, !tbaa !87
  br label %41

41:                                               ; preds = %6, %40, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @stats_is_object_dynamic_topology_sculpt(ptr noundef readonly %0) unnamed_addr #4 !PGOFuncName !152 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SculptSession, ptr %10, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %3, %1
  %18 = phi i8 [ 0, %8 ], [ 0, %3 ], [ 0, %1 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stats_object_sculpt_dynamic_topology(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = load i32, ptr %6, align 8, !tbaa !98
  store i32 %7, ptr %1, align 4, !tbaa !80
  %8 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !104
  %10 = getelementptr inbounds %struct.SceneStats, ptr %1, i64 0, i32 12
  store i32 %9, ptr %10, align 4, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_dupli_object(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !158
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 4, !tbaa !90
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %14 = load i16, ptr %13, align 8, !tbaa !159
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %69, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %17, %58
  %22 = phi ptr [ %59, %58 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 17
  %26 = load i16, ptr %25, align 8, !tbaa !162
  switch i16 %26, label %58 [
    i16 7, label %27
    i16 8, label %34
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 125
  %29 = load ptr, ptr %28, align 8, !tbaa !164
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @count_particles(ptr noundef nonnull %22) #9
  %33 = load ptr, ptr %28, align 8, !tbaa !164
  tail call fastcc void @stats_object(ptr noundef %33, i32 noundef 0, i32 noundef %32, ptr noundef %2) #10
  br label %58

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 122
  %36 = load ptr, ptr %35, align 8, !tbaa !165
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Group, ptr %36, i64 0, i32 1
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %45, %40 ]
  %42 = phi ptr [ %39, %38 ], [ %43, %40 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  %45 = add nuw nsw i32 %41, 1
  br i1 %44, label %46, label %40, !llvm.loop !166

46:                                               ; preds = %40
  %47 = load ptr, ptr %39, align 8, !tbaa !62
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %56, %49 ], [ %47, %46 ]
  %51 = phi i32 [ %55, %49 ], [ 0, %46 ]
  %52 = tail call i32 @count_particles_mod(ptr noundef nonnull %22, i32 noundef %41, i32 noundef %51) #9
  %53 = getelementptr inbounds %struct.GroupObject, ptr %50, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !167
  tail call fastcc void @stats_object(ptr noundef %54, i32 noundef 0, i32 noundef %52, ptr noundef %2) #10
  %55 = add nuw nsw i32 %51, 1
  %56 = load ptr, ptr %50, align 8, !tbaa !62
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %49, !llvm.loop !169

58:                                               ; preds = %49, %46, %21, %27, %31, %34
  %59 = load ptr, ptr %22, align 8, !tbaa !62
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21, !llvm.loop !170

61:                                               ; preds = %58
  %62 = load i32, ptr %4, align 8, !tbaa !158
  %63 = and i32 %62, 1
  br label %64

64:                                               ; preds = %61, %17
  %65 = phi i32 [ %63, %61 ], [ %6, %17 ]
  tail call fastcc void @stats_object(ptr noundef %1, i32 noundef %65, i32 noundef 1, ptr noundef %2) #10
  %66 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !89
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !89
  br label %121

69:                                               ; preds = %12
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !171
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 55
  %75 = load i16, ptr %74, align 8, !tbaa !159
  %76 = and i16 %75, 528
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %80 = load i16, ptr %79, align 8, !tbaa !94
  %81 = icmp eq i16 %80, 5
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @count_duplilist(ptr noundef nonnull %71) #9
  %84 = load i32, ptr %4, align 8, !tbaa !158
  %85 = and i32 %84, 1
  br label %86

86:                                               ; preds = %78, %82
  %87 = phi i32 [ %6, %78 ], [ %85, %82 ]
  %88 = phi i32 [ 1, %78 ], [ %83, %82 ]
  %89 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 8
  %90 = load i32, ptr %89, align 4, !tbaa !89
  %91 = add nsw i32 %90, %88
  store i32 %91, ptr %89, align 4, !tbaa !89
  tail call fastcc void @stats_object(ptr noundef nonnull %1, i32 noundef %87, i32 noundef %88, ptr noundef %2) #10
  br label %121

92:                                               ; preds = %73, %69
  %93 = zext i16 %14 to i32
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = tail call i32 @count_duplilist(ptr noundef nonnull %1) #9
  %98 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 8
  %99 = load i32, ptr %98, align 4, !tbaa !89
  %100 = add nsw i32 %99, %97
  store i32 %100, ptr %98, align 4, !tbaa !89
  %101 = load i32, ptr %4, align 8, !tbaa !158
  %102 = and i32 %101, 1
  tail call fastcc void @stats_object(ptr noundef nonnull %1, i32 noundef %102, i32 noundef %97, ptr noundef %2) #10
  br label %121

103:                                              ; preds = %92
  %104 = and i32 %93, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %108 = load ptr, ptr %107, align 8, !tbaa !172
  %109 = icmp eq ptr %108, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = tail call i32 @count_duplilist(ptr noundef nonnull %1) #9
  %112 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 8
  %113 = load i32, ptr %112, align 4, !tbaa !89
  %114 = add nsw i32 %113, %111
  store i32 %114, ptr %112, align 4, !tbaa !89
  %115 = load i32, ptr %4, align 8, !tbaa !158
  %116 = and i32 %115, 1
  tail call fastcc void @stats_object(ptr noundef nonnull %1, i32 noundef %116, i32 noundef %111, ptr noundef %2) #10
  br label %121

117:                                              ; preds = %106, %103
  tail call fastcc void @stats_object(ptr noundef nonnull %1, i32 noundef %6, i32 noundef 1, ptr noundef %2) #10
  %118 = getelementptr inbounds %struct.SceneStats, ptr %2, i64 0, i32 8
  %119 = load i32, ptr %118, align 4, !tbaa !89
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !89
  br label %121

121:                                              ; preds = %86, %110, %117, %96, %64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @count_particles(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stats_object(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !173 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !94
  switch i16 %9, label %95 [
    i16 1, label %10
    i16 10, label %51
    i16 3, label %60
    i16 2, label %60
    i16 4, label %60
    i16 5, label %60
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !174
  %13 = icmp eq ptr %12, null
  br i1 %13, label %95, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  %17 = tail call i32 %16(ptr noundef nonnull %12) #9
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = tail call i32 %19(ptr noundef nonnull %12) #9
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = tail call i32 %22(ptr noundef nonnull %12) #9
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = tail call i32 %25(ptr noundef nonnull %12) #9
  %27 = mul nsw i32 %17, %2
  %28 = load i32, ptr %3, align 4, !tbaa !80
  %29 = add nsw i32 %28, %27
  store i32 %29, ptr %3, align 4, !tbaa !80
  %30 = mul nsw i32 %20, %2
  %31 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !83
  %33 = add nsw i32 %32, %30
  store i32 %33, ptr %31, align 4, !tbaa !83
  %34 = mul nsw i32 %23, %2
  %35 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !85
  %37 = add nsw i32 %36, %34
  store i32 %37, ptr %35, align 4, !tbaa !85
  %38 = tail call fastcc i32 @poly_to_tri_count(i32 noundef %23, i32 noundef %26) #10
  %39 = mul nsw i32 %38, %2
  %40 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 12
  %41 = load i32, ptr %40, align 4, !tbaa !93
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %40, align 4, !tbaa !93
  %43 = icmp eq i32 %1, 0
  br i1 %43, label %95, label %44

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !82
  %47 = add nsw i32 %46, %17
  store i32 %47, ptr %45, align 4, !tbaa !82
  %48 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !86
  %50 = add nsw i32 %49, %23
  store i32 %50, ptr %48, align 4, !tbaa !86
  br label %95

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !91
  %54 = add nsw i32 %53, %2
  store i32 %54, ptr %52, align 4, !tbaa !91
  %55 = icmp eq i32 %1, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 11
  %58 = load i32, ptr %57, align 4, !tbaa !92
  %59 = add nsw i32 %58, %2
  store i32 %59, ptr %57, align 4, !tbaa !92
  br label %95

60:                                               ; preds = %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !tbaa !77
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %62 = load ptr, ptr %61, align 8, !tbaa !180
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 8, !tbaa !181
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  call void @BKE_displist_count(ptr noundef nonnull %62, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %68 = load i32, ptr %5, align 4, !tbaa !77
  %69 = load i32, ptr %6, align 4, !tbaa !77
  %70 = load i32, ptr %7, align 4, !tbaa !77
  br label %71

71:                                               ; preds = %67, %64, %60
  %72 = phi i32 [ %70, %67 ], [ 0, %64 ], [ 0, %60 ]
  %73 = phi i32 [ %69, %67 ], [ 0, %64 ], [ 0, %60 ]
  %74 = phi i32 [ %68, %67 ], [ 0, %64 ], [ 0, %60 ]
  %75 = mul nsw i32 %74, %2
  %76 = mul nsw i32 %73, %2
  %77 = mul nsw i32 %72, %2
  %78 = load i32, ptr %3, align 4, !tbaa !80
  %79 = add nsw i32 %78, %75
  store i32 %79, ptr %3, align 4, !tbaa !80
  %80 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !85
  %82 = add nsw i32 %81, %76
  store i32 %82, ptr %80, align 4, !tbaa !85
  %83 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 12
  %84 = load i32, ptr %83, align 4, !tbaa !93
  %85 = add nsw i32 %84, %77
  store i32 %85, ptr %83, align 4, !tbaa !93
  %86 = icmp eq i32 %1, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !82
  %90 = add nsw i32 %89, %75
  store i32 %90, ptr %88, align 4, !tbaa !82
  %91 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !86
  %93 = add nsw i32 %92, %76
  store i32 %93, ptr %91, align 4, !tbaa !86
  br label %94

94:                                               ; preds = %87, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %95

95:                                               ; preds = %10, %44, %14, %51, %56, %4, %94
  ret void
}

; Function Attrs: optsize
declare i32 @count_particles_mod(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @count_duplilist(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @poly_to_tri_count(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !183 {
  %3 = shl nsw i32 %0, 1
  %4 = sub nsw i32 %1, %3
  ret i32 %4
}

; Function Attrs: optsize
declare void @BKE_displist_count(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_str_format_int_grouped(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 272}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!37, !37, i64 0}
!63 = !{!"info_stats.c:stats_update"}
!64 = !{!35, !37, i64 168}
!65 = !{!66, !37, i64 32}
!66 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!67 = !{!35, !37, i64 176}
!68 = !{!69, !41, i64 432}
!69 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !70, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!70 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!71 = !{i8 0, i8 2}
!72 = !{!35, !41, i64 232}
!73 = !{!66, !41, i64 16}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77, i64 24, i64 4, !77, i64 28, i64 4, !77, i64 32, i64 4, !77, i64 36, i64 4, !77, i64 40, i64 4, !77, i64 44, i64 4, !77, i64 48, i64 4, !77, i64 52, i64 512, !78}
!77 = !{!41, !41, i64 0}
!78 = !{!38, !38, i64 0}
!79 = !{!"info_stats.c:stats_string"}
!80 = !{!81, !41, i64 0}
!81 = !{!"SceneStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !38, i64 52}
!82 = !{!81, !41, i64 4}
!83 = !{!81, !41, i64 8}
!84 = !{!81, !41, i64 12}
!85 = !{!81, !41, i64 16}
!86 = !{!81, !41, i64 20}
!87 = !{!81, !41, i64 24}
!88 = !{!81, !41, i64 28}
!89 = !{!81, !41, i64 32}
!90 = !{!81, !41, i64 36}
!91 = !{!81, !41, i64 40}
!92 = !{!81, !41, i64 44}
!93 = !{!81, !41, i64 48}
!94 = !{!69, !40, i64 136}
!95 = !{!"info_stats.c:stats_object_edit"}
!96 = !{!97, !37, i64 0}
!97 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !60, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!98 = !{!99, !41, i64 0}
!99 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !100, i64 144, !100, i64 344, !100, i64 544, !100, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!100 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!101 = !{!99, !41, i64 16}
!102 = !{!99, !41, i64 4}
!103 = !{!99, !41, i64 20}
!104 = !{!99, !41, i64 12}
!105 = !{!99, !41, i64 24}
!106 = !{!97, !41, i64 32}
!107 = !{!69, !37, i64 296}
!108 = !{!109, !37, i64 160}
!109 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!110 = !{!111, !41, i64 132}
!111 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !45, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !40, i64 180}
!112 = !{!111, !37, i64 24}
!113 = distinct !{!113, !75}
!114 = !{!115, !40, i64 16}
!115 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!116 = !{!115, !41, i64 24}
!117 = !{!115, !37, i64 72}
!118 = !{!119, !38, i64 51}
!119 = !{!"BezTriple", !38, i64 0, !45, i64 36, !45, i64 40, !45, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !45, i64 56, !45, i64 60, !45, i64 64, !38, i64 68}
!120 = !{!119, !38, i64 52}
!121 = !{!119, !38, i64 53}
!122 = distinct !{!122, !75}
!123 = !{!115, !41, i64 28}
!124 = !{!115, !37, i64 64}
!125 = !{!126, !40, i64 24}
!126 = !{!"BPoint", !38, i64 0, !45, i64 16, !45, i64 20, !40, i64 24, !40, i64 26, !45, i64 28, !45, i64 32}
!127 = distinct !{!127, !75}
!128 = distinct !{!128, !75}
!129 = !{!130, !37, i64 160}
!130 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !37, i64 240}
!131 = !{!132, !40, i64 26}
!132 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !38, i64 44, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !37, i64 88, !37, i64 96}
!133 = distinct !{!133, !75}
!134 = !{!135, !37, i64 272}
!135 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!136 = !{!137, !37, i64 0}
!137 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!138 = !{!135, !40, i64 128}
!139 = !{!135, !40, i64 130}
!140 = !{!135, !40, i64 132}
!141 = !{!135, !37, i64 176}
!142 = distinct !{!142, !75}
!143 = !{!"info_stats.c:stats_object_pose"}
!144 = !{!69, !37, i64 288}
!145 = !{!146, !37, i64 120}
!146 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !45, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !45, i64 524, !45, i64 528, !45, i64 532, !37, i64 536}
!147 = !{!148, !41, i64 176}
!148 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !45, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!149 = !{!148, !41, i64 320}
!150 = !{!109, !41, i64 216}
!151 = distinct !{!151, !75}
!152 = !{!"info_stats.c:stats_is_object_dynamic_topology_sculpt"}
!153 = !{!69, !37, i64 128}
!154 = !{!155, !37, i64 72}
!155 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!156 = !{!"info_stats.c:stats_object_sculpt_dynamic_topology"}
!157 = !{!"info_stats.c:stats_dupli_object"}
!158 = !{!66, !41, i64 24}
!159 = !{!69, !40, i64 952}
!160 = !{!161, !37, i64 16}
!161 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !42, i64 72, !42, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 168, !38, i64 232, !45, i64 296, !45, i64 300, !45, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !42, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !45, i64 648, !45, i64 652}
!162 = !{!163, !40, i64 184}
!163 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !45, i64 232, !45, i64 236, !38, i64 240, !38, i64 248, !45, i64 256, !45, i64 260, !45, i64 264, !40, i64 268, !40, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !45, i64 348, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !38, i64 376, !45, i64 388, !45, i64 392, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !45, i64 412, !38, i64 416, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !41, i64 444, !41, i64 448, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !45, i64 480, !45, i64 484, !45, i64 488, !45, i64 492, !45, i64 496, !45, i64 500, !45, i64 504, !45, i64 508, !45, i64 512, !45, i64 516, !45, i64 520, !45, i64 524, !45, i64 528, !45, i64 532, !45, i64 536, !45, i64 540, !45, i64 544, !45, i64 548, !38, i64 552, !45, i64 560, !45, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !42, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!164 = !{!163, !37, i64 752}
!165 = !{!163, !37, i64 720}
!166 = distinct !{!166, !75}
!167 = !{!168, !37, i64 16}
!168 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 34}
!169 = distinct !{!169, !75}
!170 = distinct !{!170, !75}
!171 = !{!69, !37, i64 216}
!172 = !{!69, !37, i64 1256}
!173 = !{!"info_stats.c:stats_object"}
!174 = !{!69, !37, i64 1296}
!175 = !{!176, !37, i64 1104}
!176 = !{!"DerivedMesh", !100, i64 0, !100, i64 200, !100, i64 400, !100, i64 600, !100, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!177 = !{!176, !37, i64 1112}
!178 = !{!176, !37, i64 1136}
!179 = !{!176, !37, i64 1128}
!180 = !{!69, !37, i64 1280}
!181 = !{!182, !37, i64 0}
!182 = !{!"CurveCache", !42, i64 0, !42, i64 16, !42, i64 32, !37, i64 48}
!183 = !{!"info_stats.c:poly_to_tri_count"}
