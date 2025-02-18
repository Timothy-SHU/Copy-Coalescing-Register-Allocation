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
%struct.SceneStatsFmt = type { [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.SceneStats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [512 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local void @ED_info_stats_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %6(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_info_stats_string(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.SceneStatsFmt, align 1
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.SceneStats, align 4
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %467

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 564, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(564) %4, i8 0, i64 564, i1 false)
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %18, null
  br i1 %19, label %239, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !67
  switch i16 %22, label %459 [
    i16 1, label %23
    i16 25, label %45
    i16 2, label %104
    i16 3, label %104
    i16 5, label %180
    i16 22, label %203
  ]

23:                                               ; preds = %20
  %24 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %18) #5
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = load i32, ptr %25, align 8, !tbaa !72
  store i32 %26, ptr %4, align 4, !tbaa !75
  %27 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !78
  %30 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !79
  %32 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 2
  store i32 %31, ptr %32, align 4, !tbaa !80
  %33 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !81
  %35 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !82
  %36 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !83
  %38 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !84
  %39 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 5
  store i32 %40, ptr %41, align 4, !tbaa !86
  %42 = getelementptr inbounds %struct.BMEditMesh, ptr %24, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 12
  store i32 %43, ptr %44, align 4, !tbaa !88
  br label %459

45:                                               ; preds = %20
  %46 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.bArmature, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = load i32, ptr %4, align 4, !tbaa !75
  %51 = load ptr, ptr %49, align 8, !tbaa !62
  %52 = icmp eq ptr %51, null
  br i1 %52, label %447, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 6
  %55 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 1
  %56 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 7
  %57 = load i32, ptr %54, align 4, !tbaa !92
  %58 = load i32, ptr %55, align 4, !tbaa !78
  %59 = load i32, ptr %56, align 4, !tbaa !93
  br label %60

60:                                               ; preds = %53, %99
  %61 = phi i32 [ %59, %53 ], [ %86, %99 ]
  %62 = phi i32 [ %58, %53 ], [ %100, %99 ]
  %63 = phi i32 [ %57, %53 ], [ %66, %99 ]
  %64 = phi ptr [ %51, %53 ], [ %102, %99 ]
  %65 = phi i32 [ %50, %53 ], [ %101, %99 ]
  %66 = add nsw i32 %63, 1
  %67 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !94
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = icmp ne ptr %73, null
  %75 = sext i1 %74 to i32
  %76 = add nsw i32 %65, %75
  br label %77

77:                                               ; preds = %71, %60
  %78 = phi i32 [ %65, %60 ], [ %76, %71 ]
  %79 = lshr i32 %68, 2
  %80 = and i32 %79, 1
  %81 = add i32 %62, %80
  %82 = lshr i32 %68, 1
  %83 = and i32 %82, 1
  %84 = add i32 %81, %83
  %85 = and i32 %68, 1
  %86 = add i32 %61, %85
  %87 = and i32 %68, 18
  %88 = icmp eq i32 %87, 18
  br i1 %88, label %89, label %99

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !96
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.EditBone, ptr %91, i64 0, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !94
  %96 = shl i32 %95, 29
  %97 = ashr i32 %96, 31
  %98 = add nsw i32 %84, %97
  br label %99

99:                                               ; preds = %93, %89, %77
  %100 = phi i32 [ %84, %89 ], [ %84, %77 ], [ %98, %93 ]
  %101 = add nsw i32 %78, 2
  %102 = load ptr, ptr %64, align 8, !tbaa !62
  %103 = icmp eq ptr %102, null
  br i1 %103, label %446, label %60, !llvm.loop !97

104:                                              ; preds = %20, %20
  %105 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !89
  %107 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %106) #5
  %108 = load i32, ptr %4, align 4, !tbaa !75
  %109 = load ptr, ptr %107, align 8, !tbaa !62
  %110 = icmp eq ptr %109, null
  br i1 %110, label %450, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !78
  br label %114

114:                                              ; preds = %111, %175
  %115 = phi i32 [ %113, %111 ], [ %176, %175 ]
  %116 = phi ptr [ %109, %111 ], [ %178, %175 ]
  %117 = phi i32 [ %108, %111 ], [ %177, %175 ]
  %118 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 2
  %119 = load i16, ptr %118, align 8, !tbaa !100
  %120 = icmp eq i16 %119, 1
  %121 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !102
  br i1 %120, label %123, label %151

123:                                              ; preds = %114
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %175, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 18
  %127 = load ptr, ptr %126, align 8, !tbaa !103
  %128 = mul i32 %122, 3
  br label %129

129:                                              ; preds = %125, %129
  %130 = phi i32 [ %148, %129 ], [ %115, %125 ]
  %131 = phi i32 [ %133, %129 ], [ %122, %125 ]
  %132 = phi ptr [ %149, %129 ], [ %127, %125 ]
  %133 = add nsw i32 %131, -1
  %134 = getelementptr inbounds %struct.BezTriple, ptr %132, i64 0, i32 7
  %135 = load i8, ptr %134, align 1, !tbaa !104
  %136 = and i8 %135, 1
  %137 = zext nneg i8 %136 to i32
  %138 = add i32 %130, %137
  %139 = getelementptr inbounds %struct.BezTriple, ptr %132, i64 0, i32 8
  %140 = load i8, ptr %139, align 4, !tbaa !106
  %141 = and i8 %140, 1
  %142 = zext nneg i8 %141 to i32
  %143 = add i32 %138, %142
  %144 = getelementptr inbounds %struct.BezTriple, ptr %132, i64 0, i32 9
  %145 = load i8, ptr %144, align 1, !tbaa !107
  %146 = and i8 %145, 1
  %147 = zext nneg i8 %146 to i32
  %148 = add i32 %143, %147
  %149 = getelementptr inbounds %struct.BezTriple, ptr %132, i64 1
  %150 = icmp eq i32 %133, 0
  br i1 %150, label %171, label %129, !llvm.loop !108

151:                                              ; preds = %114
  %152 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 7
  %153 = load i32, ptr %152, align 4, !tbaa !109
  %154 = mul nsw i32 %153, %122
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %175, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Nurb, ptr %116, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !110
  br label %159

159:                                              ; preds = %156, %159
  %160 = phi i32 [ %168, %159 ], [ %115, %156 ]
  %161 = phi i32 [ %163, %159 ], [ %154, %156 ]
  %162 = phi ptr [ %169, %159 ], [ %158, %156 ]
  %163 = add nsw i32 %161, -1
  %164 = getelementptr inbounds %struct.BPoint, ptr %162, i64 0, i32 3
  %165 = load i16, ptr %164, align 4, !tbaa !111
  %166 = and i16 %165, 1
  %167 = zext nneg i16 %166 to i32
  %168 = add i32 %160, %167
  %169 = getelementptr inbounds %struct.BPoint, ptr %162, i64 1
  %170 = icmp eq i32 %163, 0
  br i1 %170, label %173, label %159, !llvm.loop !113

171:                                              ; preds = %129
  %172 = add i32 %117, %128
  br label %175

173:                                              ; preds = %159
  %174 = add i32 %117, %154
  br label %175

175:                                              ; preds = %173, %171, %151, %123
  %176 = phi i32 [ %115, %123 ], [ %115, %151 ], [ %148, %171 ], [ %168, %173 ]
  %177 = phi i32 [ %117, %123 ], [ %117, %151 ], [ %172, %171 ], [ %174, %173 ]
  %178 = load ptr, ptr %116, align 8, !tbaa !62
  %179 = icmp eq ptr %178, null
  br i1 %179, label %449, label %114, !llvm.loop !114

180:                                              ; preds = %20
  %181 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !89
  %183 = getelementptr inbounds %struct.MetaBall, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !115
  %185 = load i32, ptr %4, align 4, !tbaa !75
  %186 = load ptr, ptr %184, align 8, !tbaa !62
  %187 = icmp eq ptr %186, null
  br i1 %187, label %453, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !78
  br label %191

191:                                              ; preds = %188, %191
  %192 = phi i32 [ %190, %188 ], [ %200, %191 ]
  %193 = phi ptr [ %186, %188 ], [ %201, %191 ]
  %194 = phi i32 [ %185, %188 ], [ %195, %191 ]
  %195 = add nsw i32 %194, 1
  %196 = getelementptr inbounds %struct.MetaElem, ptr %193, i64 0, i32 4
  %197 = load i16, ptr %196, align 2, !tbaa !117
  %198 = and i16 %197, 1
  %199 = zext nneg i16 %198 to i32
  %200 = add i32 %192, %199
  %201 = load ptr, ptr %193, align 8, !tbaa !62
  %202 = icmp eq ptr %201, null
  br i1 %202, label %452, label %191, !llvm.loop !119

203:                                              ; preds = %20
  %204 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %205 = load ptr, ptr %204, align 8, !tbaa !89
  %206 = getelementptr inbounds %struct.Lattice, ptr %205, i64 0, i32 26
  %207 = load ptr, ptr %206, align 8, !tbaa !120
  %208 = load ptr, ptr %207, align 8, !tbaa !122
  %209 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 2
  %210 = load i16, ptr %209, align 8, !tbaa !124
  %211 = sext i16 %210 to i32
  %212 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 3
  %213 = load i16, ptr %212, align 2, !tbaa !125
  %214 = sext i16 %213 to i32
  %215 = mul nsw i32 %214, %211
  %216 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 4
  %217 = load i16, ptr %216, align 4, !tbaa !126
  %218 = sext i16 %217 to i32
  %219 = mul nsw i32 %215, %218
  %220 = load i32, ptr %4, align 4, !tbaa !75
  %221 = icmp eq i32 %219, 0
  br i1 %221, label %457, label %222

222:                                              ; preds = %203
  %223 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 21
  %224 = load ptr, ptr %223, align 8, !tbaa !127
  %225 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !78
  br label %227

227:                                              ; preds = %222, %227
  %228 = phi i32 [ %226, %222 ], [ %236, %227 ]
  %229 = phi i32 [ %219, %222 ], [ %231, %227 ]
  %230 = phi ptr [ %224, %222 ], [ %237, %227 ]
  %231 = add nsw i32 %229, -1
  %232 = getelementptr inbounds %struct.BPoint, ptr %230, i64 0, i32 3
  %233 = load i16, ptr %232, align 4, !tbaa !111
  %234 = and i16 %233, 1
  %235 = zext nneg i16 %234 to i32
  %236 = add i32 %228, %235
  %237 = getelementptr inbounds %struct.BPoint, ptr %230, i64 1
  %238 = icmp eq i32 %231, 0
  br i1 %238, label %455, label %227, !llvm.loop !128

239:                                              ; preds = %15
  %240 = icmp eq ptr %16, null
  br i1 %240, label %298, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 27
  %243 = load i32, ptr %242, align 8, !tbaa !129
  %244 = and i32 %243, 64
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %286, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 18
  %248 = load ptr, ptr %247, align 8, !tbaa !130
  %249 = icmp eq ptr %248, null
  br i1 %249, label %459, label %250

250:                                              ; preds = %246
  %251 = load ptr, ptr %248, align 8, !tbaa !62
  %252 = icmp eq ptr %251, null
  br i1 %252, label %459, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %255 = load ptr, ptr %254, align 8, !tbaa !89
  %256 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 6
  %257 = getelementptr inbounds %struct.bArmature, ptr %255, i64 0, i32 15
  %258 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 7
  %259 = load i32, ptr %256, align 4, !tbaa !92
  %260 = load i32, ptr %258, align 4, !tbaa !93
  br label %261

261:                                              ; preds = %253, %282
  %262 = phi i32 [ %260, %253 ], [ %283, %282 ]
  %263 = phi i32 [ %259, %253 ], [ %265, %282 ]
  %264 = phi ptr [ %251, %253 ], [ %284, %282 ]
  %265 = add nsw i32 %263, 1
  %266 = getelementptr inbounds %struct.bPoseChannel, ptr %264, i64 0, i32 12
  %267 = load ptr, ptr %266, align 8, !tbaa !131
  %268 = icmp eq ptr %267, null
  br i1 %268, label %282, label %269

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.Bone, ptr %267, i64 0, i32 10
  %271 = load i32, ptr %270, align 8, !tbaa !133
  %272 = and i32 %271, 1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.Bone, ptr %267, i64 0, i32 25
  %276 = load i32, ptr %275, align 8, !tbaa !135
  %277 = load i32, ptr %257, align 8, !tbaa !136
  %278 = and i32 %277, %276
  %279 = icmp ne i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = add nsw i32 %262, %280
  br label %282

282:                                              ; preds = %274, %269, %261
  %283 = phi i32 [ %262, %269 ], [ %262, %261 ], [ %281, %274 ]
  %284 = load ptr, ptr %264, align 8, !tbaa !62
  %285 = icmp eq ptr %284, null
  br i1 %285, label %445, label %261, !llvm.loop !137

286:                                              ; preds = %241
  %287 = and i32 %243, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !138
  %292 = icmp eq ptr %291, null
  br i1 %292, label %298, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.SculptSession, ptr %291, i64 0, i32 10
  %295 = load ptr, ptr %294, align 8, !tbaa !139
  %296 = icmp ne ptr %295, null
  %297 = zext i1 %296 to i8
  br label %298

298:                                              ; preds = %293, %289, %286, %239
  %299 = phi i8 [ 0, %289 ], [ 0, %286 ], [ %297, %293 ], [ 0, %239 ]
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !138
  %304 = getelementptr inbounds %struct.SculptSession, ptr %303, i64 0, i32 10
  %305 = load ptr, ptr %304, align 8, !tbaa !139
  %306 = load i32, ptr %305, align 8, !tbaa !72
  store i32 %306, ptr %4, align 4, !tbaa !75
  %307 = getelementptr inbounds %struct.BMesh, ptr %305, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !83
  %309 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 12
  store i32 %308, ptr %309, align 4, !tbaa !88
  br label %459

310:                                              ; preds = %298
  %311 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %312 = load ptr, ptr %311, align 8, !tbaa !62
  %313 = icmp eq ptr %312, null
  br i1 %313, label %459, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %316 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 9
  %317 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 8
  %318 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 8
  %319 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 8
  %320 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 8
  %321 = getelementptr inbounds %struct.SceneStats, ptr %4, i64 0, i32 8
  br label %322

322:                                              ; preds = %314, %442
  %323 = phi ptr [ %312, %314 ], [ %443, %442 ]
  %324 = load i32, ptr %315, align 8, !tbaa !141
  %325 = getelementptr inbounds %struct.Base, ptr %323, i64 0, i32 2
  %326 = load i32, ptr %325, align 8, !tbaa !142
  %327 = and i32 %326, %324
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %442, label %329

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.Base, ptr %323, i64 0, i32 7
  %331 = load ptr, ptr %330, align 8, !tbaa !64
  %332 = getelementptr inbounds %struct.Base, ptr %323, i64 0, i32 4
  %333 = load i32, ptr %332, align 8, !tbaa !143
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %329
  %337 = load i32, ptr %316, align 4, !tbaa !144
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %316, align 4, !tbaa !144
  br label %339

339:                                              ; preds = %336, %329
  %340 = getelementptr inbounds %struct.Object, ptr %331, i64 0, i32 55
  %341 = load i16, ptr %340, align 8, !tbaa !145
  %342 = and i16 %341, 2048
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %395, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.Object, ptr %331, i64 0, i32 109
  %346 = load ptr, ptr %345, align 8, !tbaa !62
  %347 = icmp eq ptr %346, null
  br i1 %347, label %390, label %348

348:                                              ; preds = %344, %387
  %349 = phi ptr [ %388, %387 ], [ %346, %344 ]
  %350 = getelementptr inbounds %struct.ParticleSystem, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !146
  %352 = getelementptr inbounds %struct.ParticleSettings, ptr %351, i64 0, i32 17
  %353 = load i16, ptr %352, align 8, !tbaa !148
  switch i16 %353, label %387 [
    i16 7, label %354
    i16 8, label %363
  ]

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.ParticleSettings, ptr %351, i64 0, i32 125
  %356 = load ptr, ptr %355, align 8, !tbaa !150
  %357 = icmp eq ptr %356, null
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = tail call i32 @count_particles(ptr noundef nonnull %349) #5
  %360 = load ptr, ptr %355, align 8, !tbaa !150
  call fastcc void @stats_object(ptr noundef %360, i32 noundef 0, i32 noundef %359, ptr noundef nonnull %4)
  br label %387

361:                                              ; preds = %354
  %362 = icmp eq i16 %353, 8
  br i1 %362, label %363, label %387

363:                                              ; preds = %348, %361
  %364 = getelementptr inbounds %struct.ParticleSettings, ptr %351, i64 0, i32 122
  %365 = load ptr, ptr %364, align 8, !tbaa !151
  %366 = icmp eq ptr %365, null
  br i1 %366, label %387, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.Group, ptr %365, i64 0, i32 1
  br label %369

369:                                              ; preds = %369, %367
  %370 = phi i32 [ 0, %367 ], [ %374, %369 ]
  %371 = phi ptr [ %368, %367 ], [ %372, %369 ]
  %372 = load ptr, ptr %371, align 8, !tbaa !62
  %373 = icmp eq ptr %372, null
  %374 = add nuw nsw i32 %370, 1
  br i1 %373, label %375, label %369, !llvm.loop !152

375:                                              ; preds = %369
  %376 = load ptr, ptr %368, align 8, !tbaa !62
  %377 = icmp eq ptr %376, null
  br i1 %377, label %387, label %378

378:                                              ; preds = %375, %378
  %379 = phi ptr [ %385, %378 ], [ %376, %375 ]
  %380 = phi i32 [ %384, %378 ], [ 0, %375 ]
  %381 = tail call i32 @count_particles_mod(ptr noundef nonnull %349, i32 noundef %370, i32 noundef %380) #5
  %382 = getelementptr inbounds %struct.GroupObject, ptr %379, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !153
  call fastcc void @stats_object(ptr noundef %383, i32 noundef 0, i32 noundef %381, ptr noundef nonnull %4)
  %384 = add nuw nsw i32 %380, 1
  %385 = load ptr, ptr %379, align 8, !tbaa !62
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %378, !llvm.loop !155

387:                                              ; preds = %378, %375, %348, %363, %361, %358
  %388 = load ptr, ptr %349, align 8, !tbaa !62
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %348, !llvm.loop !156

390:                                              ; preds = %387, %344
  %391 = load i32, ptr %332, align 8, !tbaa !143
  %392 = and i32 %391, 1
  call fastcc void @stats_object(ptr noundef %331, i32 noundef %392, i32 noundef 1, ptr noundef nonnull %4)
  %393 = load i32, ptr %317, align 4, !tbaa !157
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %317, align 4, !tbaa !157
  br label %442

395:                                              ; preds = %339
  %396 = getelementptr inbounds %struct.Object, ptr %331, i64 0, i32 9
  %397 = load ptr, ptr %396, align 8, !tbaa !158
  %398 = icmp eq ptr %397, null
  br i1 %398, label %416, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.Object, ptr %397, i64 0, i32 55
  %401 = load i16, ptr %400, align 8, !tbaa !145
  %402 = and i16 %401, 528
  %403 = icmp eq i16 %402, 0
  br i1 %403, label %416, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.Object, ptr %331, i64 0, i32 3
  %406 = load i16, ptr %405, align 8, !tbaa !67
  %407 = icmp eq i16 %406, 5
  br i1 %407, label %410, label %408

408:                                              ; preds = %404
  %409 = tail call i32 @count_duplilist(ptr noundef nonnull %397) #5
  br label %410

410:                                              ; preds = %408, %404
  %411 = phi i32 [ %409, %408 ], [ 1, %404 ]
  %412 = load i32, ptr %318, align 4, !tbaa !157
  %413 = add nsw i32 %412, %411
  store i32 %413, ptr %318, align 4, !tbaa !157
  %414 = load i32, ptr %332, align 8, !tbaa !143
  %415 = and i32 %414, 1
  call fastcc void @stats_object(ptr noundef %331, i32 noundef %415, i32 noundef %411, ptr noundef nonnull %4)
  br label %442

416:                                              ; preds = %399, %395
  %417 = zext i16 %341 to i32
  %418 = and i32 %417, 8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %426, label %420

420:                                              ; preds = %416
  %421 = tail call i32 @count_duplilist(ptr noundef %331) #5
  %422 = load i32, ptr %319, align 4, !tbaa !157
  %423 = add nsw i32 %422, %421
  store i32 %423, ptr %319, align 4, !tbaa !157
  %424 = load i32, ptr %332, align 8, !tbaa !143
  %425 = and i32 %424, 1
  call fastcc void @stats_object(ptr noundef %331, i32 noundef %425, i32 noundef %421, ptr noundef nonnull %4)
  br label %442

426:                                              ; preds = %416
  %427 = and i32 %417, 256
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %439, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.Object, ptr %331, i64 0, i32 112
  %431 = load ptr, ptr %430, align 8, !tbaa !159
  %432 = icmp eq ptr %431, null
  br i1 %432, label %439, label %433

433:                                              ; preds = %429
  %434 = tail call i32 @count_duplilist(ptr noundef %331) #5
  %435 = load i32, ptr %320, align 4, !tbaa !157
  %436 = add nsw i32 %435, %434
  store i32 %436, ptr %320, align 4, !tbaa !157
  %437 = load i32, ptr %332, align 8, !tbaa !143
  %438 = and i32 %437, 1
  call fastcc void @stats_object(ptr noundef %331, i32 noundef %438, i32 noundef %434, ptr noundef nonnull %4)
  br label %442

439:                                              ; preds = %429, %426
  call fastcc void @stats_object(ptr noundef %331, i32 noundef %334, i32 noundef 1, ptr noundef nonnull %4)
  %440 = load i32, ptr %321, align 4, !tbaa !157
  %441 = add nsw i32 %440, 1
  store i32 %441, ptr %321, align 4, !tbaa !157
  br label %442

442:                                              ; preds = %439, %433, %420, %410, %390, %322
  %443 = load ptr, ptr %323, align 8, !tbaa !62
  %444 = icmp eq ptr %443, null
  br i1 %444, label %459, label %322, !llvm.loop !160

445:                                              ; preds = %282
  store i32 %265, ptr %256, align 4, !tbaa !92
  store i32 %283, ptr %258, align 4, !tbaa !93
  br label %459

446:                                              ; preds = %99
  store i32 %66, ptr %54, align 4, !tbaa !92
  store i32 %100, ptr %55, align 4, !tbaa !78
  store i32 %86, ptr %56, align 4, !tbaa !93
  br label %447

447:                                              ; preds = %446, %45
  %448 = phi i32 [ %101, %446 ], [ %50, %45 ]
  store i32 %448, ptr %4, align 4, !tbaa !75
  br label %459

449:                                              ; preds = %175
  store i32 %176, ptr %112, align 4, !tbaa !78
  br label %450

450:                                              ; preds = %449, %104
  %451 = phi i32 [ %177, %449 ], [ %108, %104 ]
  store i32 %451, ptr %4, align 4, !tbaa !75
  br label %459

452:                                              ; preds = %191
  store i32 %200, ptr %189, align 4, !tbaa !78
  br label %453

453:                                              ; preds = %452, %180
  %454 = phi i32 [ %195, %452 ], [ %185, %180 ]
  store i32 %454, ptr %4, align 4, !tbaa !75
  br label %459

455:                                              ; preds = %227
  %456 = add i32 %220, %219
  store i32 %236, ptr %225, align 4, !tbaa !78
  br label %457

457:                                              ; preds = %455, %203
  %458 = phi i32 [ %456, %455 ], [ %220, %203 ]
  store i32 %458, ptr %4, align 4, !tbaa !75
  br label %459

459:                                              ; preds = %442, %250, %445, %310, %457, %453, %450, %447, %301, %246, %23, %20
  %460 = load ptr, ptr %5, align 8, !tbaa !34
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load ptr, ptr @MEM_callocN, align 8, !tbaa !62
  %464 = tail call ptr %463(i64 noundef 564, ptr noundef nonnull @.str) #5
  store ptr %464, ptr %5, align 8, !tbaa !34
  br label %465

465:                                              ; preds = %459, %462
  %466 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(564) %466, ptr noundef nonnull align 4 dereferenceable(564) %4, i64 564, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(i64 564, ptr nonnull %4) #5
  br label %467

467:                                              ; preds = %465, %1
  %468 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %2) #5
  %469 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %470 = load ptr, ptr %469, align 8, !tbaa !63
  %471 = icmp eq ptr %470, null
  br i1 %471, label %475, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.Base, ptr %470, i64 0, i32 7
  %474 = load ptr, ptr %473, align 8, !tbaa !64
  br label %475

475:                                              ; preds = %472, %467
  %476 = phi ptr [ %474, %472 ], [ null, %467 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  %477 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !62
  %478 = tail call i64 %477() #5
  %479 = load ptr, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !62
  %480 = tail call i64 %479() #5
  %481 = load i32, ptr %468, align 4, !tbaa !75
  %482 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %2, i32 noundef %481) #5
  %483 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 1
  %484 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 1
  %485 = load i32, ptr %484, align 4, !tbaa !78
  %486 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %483, i32 noundef %485) #5
  %487 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 4
  %488 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 2
  %489 = load i32, ptr %488, align 4, !tbaa !80
  %490 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %487, i32 noundef %489) #5
  %491 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 5
  %492 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 3
  %493 = load i32, ptr %492, align 4, !tbaa !82
  %494 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %491, i32 noundef %493) #5
  %495 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 2
  %496 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 4
  %497 = load i32, ptr %496, align 4, !tbaa !84
  %498 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %495, i32 noundef %497) #5
  %499 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 3
  %500 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 5
  %501 = load i32, ptr %500, align 4, !tbaa !86
  %502 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %499, i32 noundef %501) #5
  %503 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 6
  %504 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 6
  %505 = load i32, ptr %504, align 4, !tbaa !92
  %506 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %503, i32 noundef %505) #5
  %507 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 7
  %508 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 7
  %509 = load i32, ptr %508, align 4, !tbaa !93
  %510 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %507, i32 noundef %509) #5
  %511 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 8
  %512 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 8
  %513 = load i32, ptr %512, align 4, !tbaa !157
  %514 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %511, i32 noundef %513) #5
  %515 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 9
  %516 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 9
  %517 = load i32, ptr %516, align 4, !tbaa !144
  %518 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %515, i32 noundef %517) #5
  %519 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 10
  %520 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 10
  %521 = load i32, ptr %520, align 4, !tbaa !164
  %522 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %519, i32 noundef %521) #5
  %523 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 11
  %524 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 11
  %525 = load i32, ptr %524, align 4, !tbaa !165
  %526 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %523, i32 noundef %525) #5
  %527 = getelementptr inbounds %struct.SceneStatsFmt, ptr %2, i64 0, i32 12
  %528 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 12
  %529 = load i32, ptr %528, align 4, !tbaa !88
  %530 = call i64 @BLI_str_format_int_grouped(ptr noundef nonnull %527, i32 noundef %529) #5
  %531 = sub i64 %478, %480
  %532 = lshr i64 %531, 10
  %533 = uitofp i64 %532 to double
  %534 = fmul double %533, 0x3F50000000000000
  %535 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.1, double noundef %534) #5
  %536 = icmp eq i64 %480, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %475
  %538 = getelementptr inbounds i8, ptr %3, i64 %535
  %539 = sub i64 64, %535
  %540 = lshr i64 %480, 10
  %541 = uitofp i64 %540 to double
  %542 = fmul double %541, 0x3F50000000000000
  %543 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %538, i64 noundef %539, ptr noundef nonnull @.str.2, double noundef %542) #5
  br label %544

544:                                              ; preds = %537, %475
  %545 = getelementptr inbounds %struct.SceneStats, ptr %468, i64 0, i32 13
  %546 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %545, i64 noundef 512, ptr noundef nonnull @.str.3, ptr noundef nonnull @versionstr) #5
  %547 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %548 = load ptr, ptr %547, align 8, !tbaa !66
  %549 = icmp eq ptr %548, null
  br i1 %549, label %578, label %550

550:                                              ; preds = %544
  %551 = call ptr @BKE_keyblock_from_object(ptr noundef nonnull %548) #5
  %552 = icmp eq ptr %551, null
  br i1 %552, label %558, label %553

553:                                              ; preds = %550
  %554 = getelementptr inbounds i8, ptr %545, i64 %546
  %555 = sub i64 512, %546
  %556 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %554, ptr noundef nonnull @.str.4, i64 noundef %555) #5
  %557 = add i64 %556, %546
  br label %558

558:                                              ; preds = %553, %550
  %559 = phi i64 [ %557, %553 ], [ %546, %550 ]
  %560 = load ptr, ptr %547, align 8, !tbaa !66
  %561 = getelementptr inbounds %struct.Object, ptr %560, i64 0, i32 3
  %562 = load i16, ptr %561, align 8, !tbaa !67
  %563 = getelementptr inbounds i8, ptr %545, i64 %559
  %564 = sub i64 512, %559
  switch i16 %562, label %569 [
    i16 1, label %565
    i16 25, label %567
  ]

565:                                              ; preds = %558
  %566 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %563, i64 noundef %564, ptr noundef nonnull @.str.5, ptr noundef nonnull %483, ptr noundef nonnull %2, ptr noundef nonnull %491, ptr noundef nonnull %487, ptr noundef nonnull %499, ptr noundef nonnull %495, ptr noundef nonnull %527) #5
  br label %571

567:                                              ; preds = %558
  %568 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %563, i64 noundef %564, ptr noundef nonnull @.str.6, ptr noundef nonnull %483, ptr noundef nonnull %2, ptr noundef nonnull %507, ptr noundef nonnull %503) #5
  br label %571

569:                                              ; preds = %558
  %570 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %563, i64 noundef %564, ptr noundef nonnull @.str.7, ptr noundef nonnull %483, ptr noundef nonnull %2) #5
  br label %571

571:                                              ; preds = %569, %567, %565
  %572 = phi i64 [ %566, %565 ], [ %568, %567 ], [ %570, %569 ]
  %573 = add i64 %572, %559
  %574 = getelementptr inbounds i8, ptr %545, i64 %573
  %575 = sub i64 512, %573
  %576 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %574, ptr noundef nonnull %3, i64 noundef %575) #5
  %577 = add i64 %573, %576
  br label %611

578:                                              ; preds = %544
  %579 = icmp eq ptr %476, null
  br i1 %579, label %606, label %580

580:                                              ; preds = %578
  %581 = getelementptr inbounds %struct.Object, ptr %476, i64 0, i32 27
  %582 = load i32, ptr %581, align 8, !tbaa !129
  %583 = and i32 %582, 64
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %590, label %585

585:                                              ; preds = %580
  %586 = getelementptr inbounds i8, ptr %545, i64 %546
  %587 = sub i64 512, %546
  %588 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %586, i64 noundef %587, ptr noundef nonnull @.str.8, ptr noundef nonnull %507, ptr noundef nonnull %503, ptr noundef nonnull %3) #5
  %589 = add i64 %588, %546
  br label %611

590:                                              ; preds = %580
  %591 = and i32 %582, 2
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %606, label %593

593:                                              ; preds = %590
  %594 = getelementptr inbounds %struct.Object, ptr %476, i64 0, i32 2
  %595 = load ptr, ptr %594, align 8, !tbaa !138
  %596 = icmp eq ptr %595, null
  br i1 %596, label %606, label %597

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.SculptSession, ptr %595, i64 0, i32 10
  %599 = load ptr, ptr %598, align 8, !tbaa !139
  %600 = icmp eq ptr %599, null
  br i1 %600, label %606, label %601

601:                                              ; preds = %597
  %602 = getelementptr inbounds i8, ptr %545, i64 %546
  %603 = sub i64 512, %546
  %604 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %602, i64 noundef %603, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, ptr noundef nonnull %527) #5
  %605 = add i64 %604, %546
  br label %611

606:                                              ; preds = %593, %590, %578, %597
  %607 = getelementptr inbounds i8, ptr %545, i64 %546
  %608 = sub i64 512, %546
  %609 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %607, i64 noundef %608, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, ptr noundef nonnull %495, ptr noundef nonnull %527, ptr noundef nonnull %515, ptr noundef nonnull %511, ptr noundef nonnull %523, ptr noundef nonnull %519, ptr noundef nonnull %3) #5
  %610 = add i64 %609, %546
  br label %611

611:                                              ; preds = %606, %601, %585, %571
  %612 = phi i64 [ %577, %571 ], [ %589, %585 ], [ %605, %601 ], [ %610, %606 ]
  %613 = icmp eq ptr %476, null
  br i1 %613, label %619, label %614

614:                                              ; preds = %611
  %615 = getelementptr inbounds i8, ptr %545, i64 %612
  %616 = sub i64 512, %612
  %617 = getelementptr inbounds %struct.ID, ptr %476, i64 0, i32 4, i64 2
  %618 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %615, i64 noundef %616, ptr noundef nonnull @.str.11, ptr noundef nonnull %617) #5
  br label %619

619:                                              ; preds = %611, %614
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %2) #5
  %620 = load ptr, ptr %5, align 8, !tbaa !34
  %621 = getelementptr inbounds %struct.SceneStats, ptr %620, i64 0, i32 13
  ret ptr %621
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #4

declare i32 @count_particles(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @stats_object(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !67
  switch i16 %9, label %93 [
    i16 1, label %10
    i16 10, label %52
    i16 3, label %61
    i16 2, label %61
    i16 4, label %61
    i16 5, label %61
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  %13 = icmp eq ptr %12, null
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = tail call i32 %16(ptr noundef nonnull %12) #5
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  %20 = tail call i32 %19(ptr noundef nonnull %12) #5
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = tail call i32 %22(ptr noundef nonnull %12) #5
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = tail call i32 %25(ptr noundef nonnull %12) #5
  %27 = mul nsw i32 %17, %2
  %28 = load i32, ptr %3, align 4, !tbaa !75
  %29 = add nsw i32 %28, %27
  store i32 %29, ptr %3, align 4, !tbaa !75
  %30 = mul nsw i32 %20, %2
  %31 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !80
  %33 = add nsw i32 %32, %30
  store i32 %33, ptr %31, align 4, !tbaa !80
  %34 = mul nsw i32 %23, %2
  %35 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !84
  %37 = add nsw i32 %36, %34
  store i32 %37, ptr %35, align 4, !tbaa !84
  %38 = shl nsw i32 %23, 1
  %39 = sub nsw i32 %26, %38
  %40 = mul nsw i32 %39, %2
  %41 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !88
  %43 = add nsw i32 %42, %40
  store i32 %43, ptr %41, align 4, !tbaa !88
  %44 = icmp eq i32 %1, 0
  br i1 %44, label %93, label %45

45:                                               ; preds = %14
  %46 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !78
  %48 = add nsw i32 %47, %17
  store i32 %48, ptr %46, align 4, !tbaa !78
  %49 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !86
  %51 = add nsw i32 %50, %23
  store i32 %51, ptr %49, align 4, !tbaa !86
  br label %93

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 10
  %54 = load i32, ptr %53, align 4, !tbaa !164
  %55 = add nsw i32 %54, %2
  store i32 %55, ptr %53, align 4, !tbaa !164
  %56 = icmp eq i32 %1, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !165
  %60 = add nsw i32 %59, %2
  store i32 %60, ptr %58, align 4, !tbaa !165
  br label %93

61:                                               ; preds = %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !tbaa !162
  %62 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %63 = load ptr, ptr %62, align 8, !tbaa !172
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %63, align 8, !tbaa !173
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @BKE_displist_count(ptr noundef nonnull %63, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  br label %69

69:                                               ; preds = %68, %65, %61
  %70 = load i32, ptr %5, align 4, !tbaa !162
  %71 = mul nsw i32 %70, %2
  store i32 %71, ptr %5, align 4, !tbaa !162
  %72 = load i32, ptr %6, align 4, !tbaa !162
  %73 = mul nsw i32 %72, %2
  store i32 %73, ptr %6, align 4, !tbaa !162
  %74 = load i32, ptr %7, align 4, !tbaa !162
  %75 = mul nsw i32 %74, %2
  store i32 %75, ptr %7, align 4, !tbaa !162
  %76 = load i32, ptr %3, align 4, !tbaa !75
  %77 = add nsw i32 %76, %71
  store i32 %77, ptr %3, align 4, !tbaa !75
  %78 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !84
  %80 = add nsw i32 %79, %73
  store i32 %80, ptr %78, align 4, !tbaa !84
  %81 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 12
  %82 = load i32, ptr %81, align 4, !tbaa !88
  %83 = add nsw i32 %82, %75
  store i32 %83, ptr %81, align 4, !tbaa !88
  %84 = icmp eq i32 %1, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !78
  %88 = add nsw i32 %87, %71
  store i32 %88, ptr %86, align 4, !tbaa !78
  %89 = getelementptr inbounds %struct.SceneStats, ptr %3, i64 0, i32 5
  %90 = load i32, ptr %89, align 4, !tbaa !86
  %91 = add nsw i32 %90, %73
  store i32 %91, ptr %89, align 4, !tbaa !86
  br label %92

92:                                               ; preds = %85, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %93

93:                                               ; preds = %10, %45, %14, %52, %57, %4, %92
  ret void
}

declare i32 @count_particles_mod(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @count_duplilist(ptr noundef) local_unnamed_addr #4

declare void @BKE_displist_count(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @BLI_str_format_int_grouped(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #4

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!63 = !{!35, !37, i64 168}
!64 = !{!65, !37, i64 32}
!65 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!66 = !{!35, !37, i64 176}
!67 = !{!68, !40, i64 136}
!68 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !69, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!69 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!70 = !{!71, !37, i64 0}
!71 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !60, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!72 = !{!73, !41, i64 0}
!73 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !74, i64 144, !74, i64 344, !74, i64 544, !74, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!74 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!75 = !{!76, !41, i64 0}
!76 = !{!"SceneStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !38, i64 52}
!77 = !{!73, !41, i64 16}
!78 = !{!76, !41, i64 4}
!79 = !{!73, !41, i64 4}
!80 = !{!76, !41, i64 8}
!81 = !{!73, !41, i64 20}
!82 = !{!76, !41, i64 12}
!83 = !{!73, !41, i64 12}
!84 = !{!76, !41, i64 16}
!85 = !{!73, !41, i64 24}
!86 = !{!76, !41, i64 20}
!87 = !{!71, !41, i64 32}
!88 = !{!76, !41, i64 48}
!89 = !{!68, !37, i64 296}
!90 = !{!91, !37, i64 160}
!91 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!92 = !{!76, !41, i64 24}
!93 = !{!76, !41, i64 28}
!94 = !{!95, !41, i64 132}
!95 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !45, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !40, i64 180}
!96 = !{!95, !37, i64 24}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!101, !40, i64 16}
!101 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!102 = !{!101, !41, i64 24}
!103 = !{!101, !37, i64 72}
!104 = !{!105, !38, i64 51}
!105 = !{!"BezTriple", !38, i64 0, !45, i64 36, !45, i64 40, !45, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !45, i64 56, !45, i64 60, !45, i64 64, !38, i64 68}
!106 = !{!105, !38, i64 52}
!107 = !{!105, !38, i64 53}
!108 = distinct !{!108, !98, !99}
!109 = !{!101, !41, i64 28}
!110 = !{!101, !37, i64 64}
!111 = !{!112, !40, i64 24}
!112 = !{!"BPoint", !38, i64 0, !45, i64 16, !45, i64 20, !40, i64 24, !40, i64 26, !45, i64 28, !45, i64 32}
!113 = distinct !{!113, !98, !99}
!114 = distinct !{!114, !98, !99}
!115 = !{!116, !37, i64 160}
!116 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !37, i64 240}
!117 = !{!118, !40, i64 26}
!118 = !{!"MetaElem", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !38, i64 44, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !37, i64 88, !37, i64 96}
!119 = distinct !{!119, !98, !99}
!120 = !{!121, !37, i64 272}
!121 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!122 = !{!123, !37, i64 0}
!123 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!124 = !{!121, !40, i64 128}
!125 = !{!121, !40, i64 130}
!126 = !{!121, !40, i64 132}
!127 = !{!121, !37, i64 176}
!128 = distinct !{!128, !98, !99}
!129 = !{!68, !41, i64 432}
!130 = !{!68, !37, i64 288}
!131 = !{!132, !37, i64 120}
!132 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !45, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !45, i64 524, !45, i64 528, !45, i64 532, !37, i64 536}
!133 = !{!134, !41, i64 176}
!134 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !45, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!135 = !{!134, !41, i64 320}
!136 = !{!91, !41, i64 216}
!137 = distinct !{!137, !98, !99}
!138 = !{!68, !37, i64 128}
!139 = !{!140, !37, i64 72}
!140 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !41, i64 148, !37, i64 152, !41, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !41, i64 228}
!141 = !{!35, !41, i64 232}
!142 = !{!65, !41, i64 16}
!143 = !{!65, !41, i64 24}
!144 = !{!76, !41, i64 36}
!145 = !{!68, !40, i64 952}
!146 = !{!147, !37, i64 16}
!147 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !42, i64 72, !42, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 168, !38, i64 232, !45, i64 296, !45, i64 300, !45, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !42, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !45, i64 648, !45, i64 652}
!148 = !{!149, !40, i64 184}
!149 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !45, i64 232, !45, i64 236, !38, i64 240, !38, i64 248, !45, i64 256, !45, i64 260, !45, i64 264, !40, i64 268, !40, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !45, i64 348, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !38, i64 376, !45, i64 388, !45, i64 392, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !45, i64 412, !38, i64 416, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !41, i64 444, !41, i64 448, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !45, i64 480, !45, i64 484, !45, i64 488, !45, i64 492, !45, i64 496, !45, i64 500, !45, i64 504, !45, i64 508, !45, i64 512, !45, i64 516, !45, i64 520, !45, i64 524, !45, i64 528, !45, i64 532, !45, i64 536, !45, i64 540, !45, i64 544, !45, i64 548, !38, i64 552, !45, i64 560, !45, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !42, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!150 = !{!149, !37, i64 752}
!151 = !{!149, !37, i64 720}
!152 = distinct !{!152, !98, !99}
!153 = !{!154, !37, i64 16}
!154 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 34}
!155 = distinct !{!155, !98, !99}
!156 = distinct !{!156, !98, !99}
!157 = !{!76, !41, i64 32}
!158 = !{!68, !37, i64 216}
!159 = !{!68, !37, i64 1256}
!160 = distinct !{!160, !98, !99}
!161 = !{i64 0, i64 4, !162, i64 4, i64 4, !162, i64 8, i64 4, !162, i64 12, i64 4, !162, i64 16, i64 4, !162, i64 20, i64 4, !162, i64 24, i64 4, !162, i64 28, i64 4, !162, i64 32, i64 4, !162, i64 36, i64 4, !162, i64 40, i64 4, !162, i64 44, i64 4, !162, i64 48, i64 4, !162, i64 52, i64 512, !163}
!162 = !{!41, !41, i64 0}
!163 = !{!38, !38, i64 0}
!164 = !{!76, !41, i64 40}
!165 = !{!76, !41, i64 44}
!166 = !{!68, !37, i64 1296}
!167 = !{!168, !37, i64 1104}
!168 = !{!"DerivedMesh", !74, i64 0, !74, i64 200, !74, i64 400, !74, i64 600, !74, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!169 = !{!168, !37, i64 1112}
!170 = !{!168, !37, i64 1136}
!171 = !{!168, !37, i64 1128}
!172 = !{!68, !37, i64 1280}
!173 = !{!174, !37, i64 0}
!174 = !{!"CurveCache", !42, i64 0, !42, i64 16, !42, i64 32, !37, i64 48}
