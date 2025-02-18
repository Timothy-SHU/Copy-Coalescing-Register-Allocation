; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshcache.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MeshCacheModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, i8, i8, float, i8, [7 x i8], float, float, float, float, float, [1024 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
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
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@modifierType_MeshCache = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Mesh Cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MeshCacheModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 1176, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr null, ptr null, ptr @isDisabled, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.meshcache_do = private unnamed_addr constant [13 x i8] c"meshcache_do\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [40 x i8] c"'Integrate' only valid for Mesh objects\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"'Integrate' original mesh vertex mismatch\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"'Integrate' requires faces\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  tail call fastcc void @meshcache_do(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 {
  tail call fastcc void @meshcache_do(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 2
  store i8 1, ptr %3, align 1, !tbaa !42
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  store i8 1, ptr %4, align 1, !tbaa !43
  %5 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 13
  store float 1.000000e+00, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 6
  store i8 2, ptr %8, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  %4 = load float, ptr %3, align 8, !tbaa !45
  %5 = fcmp ugt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 17
  %8 = load i8, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 1, !tbaa !49
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @meshcache_do(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !45
  %11 = fcmp olt float %10, 1.000000e+00
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 10
  %14 = load i8, ptr %13, align 4, !tbaa !50
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %4
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %18 = sext i32 %3 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @__func__.meshcache_do) #7
  br label %21

21:                                               ; preds = %12, %16
  %22 = phi ptr [ %20, %16 ], [ null, %12 ]
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %2, ptr %22
  %25 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 22, i32 55
  %28 = load i16, ptr %27, align 4, !tbaa !53
  %29 = sitofp i16 %28 to double
  %30 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 22, i32 65
  %31 = load float, ptr %30, align 4, !tbaa !76
  %32 = fpext float %31 to double
  %33 = fdiv double %29, %32
  %34 = fptrunc double %33 to float
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 4
  %36 = load i8, ptr %35, align 1, !tbaa !49
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %21
  %39 = tail call float @BKE_scene_frame_get(ptr noundef %26) #7
  %40 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %41 = load i8, ptr %40, align 2, !tbaa !77
  switch i8 %41, label %44 [
    i8 0, label %46
    i8 1, label %42
  ]

42:                                               ; preds = %38
  %43 = fdiv float %39, %34
  br label %46

44:                                               ; preds = %38
  %45 = fdiv float %39, %34
  br label %46

46:                                               ; preds = %38, %44, %42
  %47 = phi float [ %45, %44 ], [ %43, %42 ], [ %39, %38 ]
  %48 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 13
  %49 = load float, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 12
  %51 = load float, ptr %50, align 4, !tbaa !78
  %52 = fneg float %51
  %53 = tail call float @llvm.fmuladd.f32(float %49, float %47, float %52)
  br label %66

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %56 = load i8, ptr %55, align 2, !tbaa !77
  switch i8 %56, label %63 [
    i8 0, label %57
    i8 1, label %60
  ]

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 14
  %59 = load float, ptr %58, align 4, !tbaa !79
  br label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 15
  %62 = load float, ptr %61, align 8, !tbaa !80
  br label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 16
  %65 = load float, ptr %64, align 4, !tbaa !81
  br label %66

66:                                               ; preds = %57, %60, %63, %46
  %67 = phi float [ %53, %46 ], [ %65, %63 ], [ %62, %60 ], [ %59, %57 ]
  %68 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 17
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %68, i64 noundef 1024) #7
  %70 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !82
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.Library, ptr %71, i64 0, i32 4
  %74 = load ptr, ptr @G, align 8
  %75 = getelementptr inbounds %struct.Main, ptr %74, i64 0, i32 2
  %76 = select i1 %72, ptr %75, ptr %73
  %77 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %76) #7
  %78 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 2
  %79 = load i8, ptr %78, align 1, !tbaa !42
  switch i8 %79, label %92 [
    i8 1, label %80
    i8 2, label %86
  ]

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  %82 = load i8, ptr %81, align 1, !tbaa !43
  %83 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %84 = load i8, ptr %83, align 2, !tbaa !77
  %85 = call zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %3, i8 noundef zeroext %82, float noundef %67, float noundef %34, i8 noundef zeroext %84, ptr noundef nonnull %6) #7
  br label %92

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  %88 = load i8, ptr %87, align 1, !tbaa !43
  %89 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !77
  %91 = call zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %3, i8 noundef zeroext %88, float noundef %67, float noundef %34, i8 noundef zeroext %90, ptr noundef nonnull %6) #7
  br label %92

92:                                               ; preds = %66, %86, %80
  %93 = phi i8 [ %91, %86 ], [ %85, %80 ], [ 0, %66 ]
  %94 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 10
  %95 = load i8, ptr %94, align 4, !tbaa !50
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %149

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !83
  %100 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %101 = load i16, ptr %100, align 8, !tbaa !86
  %102 = icmp eq i16 %101, 1
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str) #7
  br label %149

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 26
  %106 = load i32, ptr %105, align 8, !tbaa !87
  %107 = icmp eq i32 %106, %3
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  br label %149

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 30
  %111 = load i32, ptr %110, align 8, !tbaa !90
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  br label %149

114:                                              ; preds = %109
  %115 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %116 = sext i32 %3 to i64
  %117 = mul nsw i64 %116, 12
  %118 = call ptr %115(i64 noundef %117, ptr noundef nonnull @__func__.meshcache_do) #7
  %119 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %120 = call ptr %119(i64 noundef %117, ptr noundef nonnull @__func__.meshcache_do) #7
  %121 = icmp sgt i32 %3, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !91
  %125 = zext nneg i32 %3 to i64
  br label %126

126:                                              ; preds = %122, %126
  %127 = phi i64 [ 0, %122 ], [ %137, %126 ]
  %128 = phi ptr [ %124, %122 ], [ %138, %126 ]
  %129 = getelementptr inbounds [3 x float], ptr %118, i64 %127
  %130 = load float, ptr %128, align 4, !tbaa !92
  store float %130, ptr %129, align 4, !tbaa !92
  %131 = getelementptr inbounds float, ptr %128, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !92
  %133 = getelementptr inbounds float, ptr %129, i64 1
  store float %132, ptr %133, align 4, !tbaa !92
  %134 = getelementptr inbounds float, ptr %128, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !92
  %136 = getelementptr inbounds float, ptr %129, i64 2
  store float %135, ptr %136, align 4, !tbaa !92
  %137 = add nuw nsw i64 %127, 1
  %138 = getelementptr inbounds %struct.MVert, ptr %128, i64 1
  %139 = icmp eq i64 %137, %125
  br i1 %139, label %140, label %126, !llvm.loop !93

140:                                              ; preds = %126, %114
  %141 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !96
  %143 = load i32, ptr %110, align 8, !tbaa !90
  %144 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !97
  %146 = load i32, ptr %105, align 8, !tbaa !87
  call void @BKE_mesh_calc_relative_deform(ptr noundef %142, i32 noundef %143, ptr noundef %145, i32 noundef %146, ptr noundef %118, ptr noundef %2, ptr noundef %24, ptr noundef %120) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %120, i64 %117, i1 false)
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %147(ptr noundef %118) #7
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %148(ptr noundef %120) #7
  br label %149

149:                                              ; preds = %103, %113, %140, %108, %92
  %150 = load ptr, ptr %6, align 8, !tbaa !51
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %150) #7
  br label %195

153:                                              ; preds = %149
  %154 = icmp eq i8 %93, 0
  br i1 %154, label %195, label %155

155:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  call void @unit_m3(ptr noundef nonnull %7) #7
  %156 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 5
  %157 = load i8, ptr %156, align 4, !tbaa !46
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 6
  %160 = load i8, ptr %159, align 1, !tbaa !47
  %161 = zext i8 %160 to i32
  %162 = call i32 @mat3_from_axis_conversion(i32 noundef %158, i32 noundef %161, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %7) #7
  %163 = icmp ne i32 %162, 0
  %164 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 7
  %165 = load i8, ptr %164, align 2, !tbaa !98
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #7
  call void @unit_m3(ptr noundef nonnull %8) #7
  %168 = load i8, ptr %164, align 2, !tbaa !98
  %169 = and i8 %168, 1
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  store float -1.000000e+00, ptr %8, align 16, !tbaa !92
  br label %172

172:                                              ; preds = %171, %167
  %173 = and i8 %168, 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %176, align 16, !tbaa !92
  br label %177

177:                                              ; preds = %175, %172
  %178 = and i8 %168, 4
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  store float -1.000000e+00, ptr %181, align 16, !tbaa !92
  br label %182

182:                                              ; preds = %180, %177
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #7
  br label %183

183:                                              ; preds = %182, %155
  %184 = phi i1 [ true, %182 ], [ %163, %155 ]
  %185 = icmp sgt i32 %3, 0
  %186 = and i1 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = zext i32 %3 to i64
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi i64 [ 0, %187 ], [ %192, %189 ]
  %191 = getelementptr inbounds [3 x float], ptr %24, i64 %190
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef %191) #7
  %192 = add nuw nsw i64 %190, 1
  %193 = icmp eq i64 %192, %188
  br i1 %193, label %194, label %189, !llvm.loop !99

194:                                              ; preds = %189, %183
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  br label %195

195:                                              ; preds = %153, %194, %152
  br i1 %23, label %207, label %196

196:                                              ; preds = %195
  %197 = icmp eq i8 %93, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %196
  br i1 %11, label %199, label %202

199:                                              ; preds = %198
  %200 = load float, ptr %9, align 8, !tbaa !45
  %201 = mul nsw i32 %3, 3
  call void @interp_vn_vn(ptr noundef %2, ptr noundef nonnull %22, float noundef %200, i32 noundef %201) #7
  br label %205

202:                                              ; preds = %198
  %203 = sext i32 %3 to i64
  %204 = mul nsw i64 %203, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %22, i64 %204, i1 false)
  br label %205

205:                                              ; preds = %199, %202, %196
  %206 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %206(ptr noundef nonnull %22) #7
  br label %207

207:                                              ; preds = %205, %195
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, float noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, float noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BKE_mesh_calc_relative_deform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @unit_m3(ptr noundef) local_unnamed_addr #3

declare i32 @mat3_from_axis_conversion(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_vn_vn(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!34 = !{!35, !38, i64 112}
!35 = !{!"MeshCacheModifierData", !36, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118, !38, i64 119, !41, i64 120, !38, i64 124, !38, i64 125, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !38, i64 113}
!43 = !{!35, !38, i64 119}
!44 = !{!35, !41, i64 136}
!45 = !{!35, !41, i64 120}
!46 = !{!35, !38, i64 116}
!47 = !{!35, !38, i64 117}
!48 = !{!38, !38, i64 0}
!49 = !{!35, !38, i64 115}
!50 = !{!35, !38, i64 124}
!51 = !{!37, !37, i64 0}
!52 = !{!35, !37, i64 96}
!53 = !{!54, !56, i64 820}
!54 = !{!"Scene", !55, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !57, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !56, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !58, i64 280, !67, i64 4264, !57, i64 4296, !57, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !56, i64 4376, !56, i64 4378, !40, i64 4380, !57, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !37, i64 4608, !73, i64 4616, !37, i64 4640, !74, i64 4648, !74, i64 4656, !60, i64 4664, !61, i64 4824, !75, i64 4888, !37, i64 4952}
!55 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !56, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!56 = !{!"short", !38, i64 0}
!57 = !{!"ListBase", !37, i64 0, !37, i64 8}
!58 = !{!"RenderData", !59, i64 0, !37, i64 248, !37, i64 256, !62, i64 264, !63, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !56, i64 432, !56, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !40, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !40, i64 484, !40, i64 488, !56, i64 492, !56, i64 494, !40, i64 496, !40, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !57, i64 592, !56, i64 608, !56, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !41, i64 660, !41, i64 664, !56, i64 668, !56, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !56, i64 1708, !56, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !56, i64 2524, !56, i64 2526, !41, i64 2528, !41, i64 2532, !56, i64 2536, !56, i64 2538, !41, i64 2540, !56, i64 2544, !56, i64 2546, !40, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !66, i64 2616, !40, i64 3976, !40, i64 3980}
!59 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !56, i64 8, !56, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!62 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !56, i64 48, !56, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!63 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!64 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!65 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!"BakeData", !59, i64 0, !38, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!67 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !56, i64 20, !56, i64 22, !41, i64 24, !41, i64 28}
!68 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!69 = !{!"GameData", !68, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !38, i64 34, !70, i64 40, !56, i64 64, !56, i64 66, !41, i64 68, !71, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!70 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!71 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !56, i64 52, !56, i64 54}
!72 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !56, i64 6}
!73 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!74 = !{!"long", !38, i64 0}
!75 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!76 = !{!54, !41, i64 900}
!77 = !{!35, !38, i64 114}
!78 = !{!35, !41, i64 132}
!79 = !{!35, !41, i64 140}
!80 = !{!35, !41, i64 144}
!81 = !{!35, !41, i64 148}
!82 = !{!55, !37, i64 24}
!83 = !{!84, !37, i64 296}
!84 = !{!"Object", !55, i64 0, !37, i64 120, !37, i64 128, !56, i64 136, !56, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !85, i64 312, !37, i64 360, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !56, i64 948, !56, i64 950, !56, i64 952, !56, i64 954, !56, i64 956, !56, i64 958, !56, i64 960, !56, i64 962, !56, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !56, i64 1036, !56, i64 1038, !56, i64 1040, !38, i64 1042, !38, i64 1043, !56, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !57, i64 1056, !57, i64 1072, !57, i64 1088, !57, i64 1104, !41, i64 1120, !56, i64 1124, !56, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !56, i64 1162, !38, i64 1164, !57, i64 1176, !57, i64 1192, !57, i64 1208, !57, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !56, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !74, i64 1304, !74, i64 1312, !40, i64 1320, !40, i64 1324, !57, i64 1328, !57, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !57, i64 1400, !37, i64 1416}
!85 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!86 = !{!84, !56, i64 136}
!87 = !{!88, !40, i64 1280}
!88 = !{!"Mesh", !55, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !89, i64 280, !89, i64 480, !89, i64 680, !89, i64 880, !89, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !40, i64 1344, !56, i64 1348, !56, i64 1350, !41, i64 1352, !40, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !56, i64 1366, !37, i64 1368}
!89 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!90 = !{!88, !40, i64 1296}
!91 = !{!88, !37, i64 232}
!92 = !{!41, !41, i64 0}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!88, !37, i64 168}
!97 = !{!88, !37, i64 184}
!98 = !{!35, !38, i64 118}
!99 = distinct !{!99, !94, !95}
