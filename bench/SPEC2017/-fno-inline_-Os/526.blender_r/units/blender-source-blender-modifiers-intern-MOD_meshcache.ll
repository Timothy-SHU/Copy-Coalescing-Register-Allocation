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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !35 {
  tail call fastcc void @meshcache_do(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !36 {
  tail call fastcc void @meshcache_do(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !37 {
  %2 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 2
  store i8 1, ptr %3, align 1, !tbaa !46
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  store i8 1, ptr %4, align 1, !tbaa !47
  %5 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 13
  store float 1.000000e+00, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 5
  store i8 1, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 6
  store i8 2, ptr %8, align 1, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !52 {
  %3 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  %4 = load float, ptr %3, align 8, !tbaa !49
  %5 = fcmp ugt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 17
  %8 = load i8, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #2 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 1, !tbaa !55
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @meshcache_do(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !56 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !49
  %11 = fcmp olt float %10, 1.000000e+00
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 10
  %14 = load i8, ptr %13, align 4, !tbaa !57
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %4
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %18 = sext i32 %3 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @__func__.meshcache_do) #8
  br label %21

21:                                               ; preds = %12, %16
  %22 = phi ptr [ %20, %16 ], [ null, %12 ]
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %2, ptr %22
  %25 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 22, i32 55
  %28 = load i16, ptr %27, align 4, !tbaa !60
  %29 = sitofp i16 %28 to double
  %30 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 22, i32 65
  %31 = load float, ptr %30, align 4, !tbaa !83
  %32 = fpext float %31 to double
  %33 = fdiv double %29, %32
  %34 = fptrunc double %33 to float
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 4
  %36 = load i8, ptr %35, align 1, !tbaa !55
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %21
  %39 = tail call float @BKE_scene_frame_get(ptr noundef nonnull %26) #8
  %40 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %41 = load i8, ptr %40, align 2, !tbaa !84
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
  %49 = load float, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 12
  %51 = load float, ptr %50, align 4, !tbaa !85
  %52 = fneg float %51
  %53 = tail call float @llvm.fmuladd.f32(float %49, float %47, float %52)
  br label %66

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %56 = load i8, ptr %55, align 2, !tbaa !84
  switch i8 %56, label %63 [
    i8 0, label %57
    i8 1, label %60
  ]

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 14
  %59 = load float, ptr %58, align 4, !tbaa !86
  br label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 15
  %62 = load float, ptr %61, align 8, !tbaa !87
  br label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 16
  %65 = load float, ptr %64, align 4, !tbaa !88
  br label %66

66:                                               ; preds = %57, %60, %63, %46
  %67 = phi float [ %53, %46 ], [ %65, %63 ], [ %62, %60 ], [ %59, %57 ]
  %68 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 17
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %68, i64 noundef 1024) #8
  %70 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !89
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.Library, ptr %71, i64 0, i32 4
  %74 = load ptr, ptr @G, align 8
  %75 = getelementptr inbounds %struct.Main, ptr %74, i64 0, i32 2
  %76 = select i1 %72, ptr %75, ptr %73
  %77 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %76) #8
  %78 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 2
  %79 = load i8, ptr %78, align 1, !tbaa !46
  switch i8 %79, label %92 [
    i8 1, label %80
    i8 2, label %86
  ]

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  %82 = load i8, ptr %81, align 1, !tbaa !47
  %83 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %84 = load i8, ptr %83, align 2, !tbaa !84
  %85 = call zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %3, i8 noundef zeroext %82, float noundef %67, float noundef %34, i8 noundef zeroext %84, ptr noundef nonnull %6) #8
  br label %92

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 8
  %88 = load i8, ptr %87, align 1, !tbaa !47
  %89 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 3
  %90 = load i8, ptr %89, align 2, !tbaa !84
  %91 = call zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %3, i8 noundef zeroext %88, float noundef %67, float noundef %34, i8 noundef zeroext %90, ptr noundef nonnull %6) #8
  br label %92

92:                                               ; preds = %66, %86, %80
  %93 = phi i8 [ %91, %86 ], [ %85, %80 ], [ 0, %66 ]
  %94 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 10
  %95 = load i8, ptr %94, align 4, !tbaa !57
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %142

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !90
  %100 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %101 = load i16, ptr %100, align 8, !tbaa !93
  %102 = icmp eq i16 %101, 1
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #8
  br label %142

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 26
  %106 = load i32, ptr %105, align 8, !tbaa !94
  %107 = icmp eq i32 %106, %3
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #8
  br label %142

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 30
  %111 = load i32, ptr %110, align 8, !tbaa !97
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #8
  br label %142

114:                                              ; preds = %109
  %115 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %116 = sext i32 %3 to i64
  %117 = mul nsw i64 %116, 12
  %118 = call ptr %115(i64 noundef %117, ptr noundef nonnull @__func__.meshcache_do) #8
  %119 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %120 = call ptr %119(i64 noundef %117, ptr noundef nonnull @__func__.meshcache_do) #8
  %121 = icmp sgt i32 %3, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !98
  %125 = zext nneg i32 %3 to i64
  br label %126

126:                                              ; preds = %122, %126
  %127 = phi i64 [ 0, %122 ], [ %130, %126 ]
  %128 = phi ptr [ %124, %122 ], [ %131, %126 ]
  %129 = getelementptr inbounds [3 x float], ptr %118, i64 %127
  call fastcc void @copy_v3_v3(ptr noundef %129, ptr noundef %128) #9
  %130 = add nuw nsw i64 %127, 1
  %131 = getelementptr inbounds %struct.MVert, ptr %128, i64 1
  %132 = icmp eq i64 %130, %125
  br i1 %132, label %133, label %126, !llvm.loop !99

133:                                              ; preds = %126, %114
  %134 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !101
  %136 = load i32, ptr %110, align 8, !tbaa !97
  %137 = getelementptr inbounds %struct.Mesh, ptr %99, i64 0, i32 9
  %138 = load ptr, ptr %137, align 8, !tbaa !102
  %139 = load i32, ptr %105, align 8, !tbaa !94
  call void @BKE_mesh_calc_relative_deform(ptr noundef %135, i32 noundef %136, ptr noundef %138, i32 noundef %139, ptr noundef %118, ptr noundef %2, ptr noundef %24, ptr noundef %120) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %120, i64 %117, i1 false)
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %140(ptr noundef %118) #8
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %141(ptr noundef %120) #8
  br label %142

142:                                              ; preds = %103, %113, %133, %108, %92
  %143 = load ptr, ptr %6, align 8, !tbaa !58
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %143) #8
  br label %188

146:                                              ; preds = %142
  %147 = icmp eq i8 %93, 0
  br i1 %147, label %189, label %148

148:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #10
  call void @unit_m3(ptr noundef nonnull %7) #8
  %149 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 5
  %150 = load i8, ptr %149, align 4, !tbaa !50
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 6
  %153 = load i8, ptr %152, align 1, !tbaa !51
  %154 = zext i8 %153 to i32
  %155 = call i32 @mat3_from_axis_conversion(i32 noundef %151, i32 noundef %154, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %7) #8
  %156 = icmp ne i32 %155, 0
  %157 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %0, i64 0, i32 7
  %158 = load i8, ptr %157, align 2, !tbaa !103
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #10
  call void @unit_m3(ptr noundef nonnull %8) #8
  %161 = load i8, ptr %157, align 2, !tbaa !103
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store float -1.000000e+00, ptr %8, align 16, !tbaa !104
  br label %165

165:                                              ; preds = %164, %160
  %166 = and i8 %161, 2
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %169, align 16, !tbaa !104
  br label %170

170:                                              ; preds = %168, %165
  %171 = and i8 %161, 4
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  store float -1.000000e+00, ptr %174, align 16, !tbaa !104
  br label %175

175:                                              ; preds = %173, %170
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #10
  br label %176

176:                                              ; preds = %175, %148
  %177 = phi i1 [ true, %175 ], [ %156, %148 ]
  %178 = icmp sgt i32 %3, 0
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = zext nneg i32 %3 to i64
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ 0, %180 ], [ %185, %182 ]
  %184 = getelementptr inbounds [3 x float], ptr %24, i64 %183
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef %184) #8
  %185 = add nuw nsw i64 %183, 1
  %186 = icmp eq i64 %185, %181
  br i1 %186, label %187, label %182, !llvm.loop !105

187:                                              ; preds = %182, %176
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  br label %188

188:                                              ; preds = %187, %145
  br i1 %23, label %201, label %190

189:                                              ; preds = %146
  br i1 %23, label %201, label %199

190:                                              ; preds = %188
  %191 = icmp eq i8 %93, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %190
  br i1 %11, label %193, label %196

193:                                              ; preds = %192
  %194 = load float, ptr %9, align 8, !tbaa !49
  %195 = mul nsw i32 %3, 3
  call void @interp_vn_vn(ptr noundef %2, ptr noundef nonnull %22, float noundef %194, i32 noundef %195) #8
  br label %199

196:                                              ; preds = %192
  %197 = sext i32 %3 to i64
  %198 = mul nsw i64 %197, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %22, i64 %198, i1 false)
  br label %199

199:                                              ; preds = %189, %193, %196, %190
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %200(ptr noundef nonnull %22) #8
  br label %201

201:                                              ; preds = %189, %199, %188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @MOD_meshcache_read_mdd_times(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, float noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @MOD_meshcache_read_pc2_times(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, float noundef, float noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !106 {
  %3 = load float, ptr %1, align 4, !tbaa !104
  store float %3, ptr %0, align 4, !tbaa !104
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !104
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !104
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !104
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_relative_deform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mat3_from_axis_conversion(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_vn_vn(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!"MOD_meshcache.c:copyData"}
!35 = !{!"MOD_meshcache.c:deformVerts"}
!36 = !{!"MOD_meshcache.c:deformVertsEM"}
!37 = !{!"MOD_meshcache.c:initData"}
!38 = !{!39, !42, i64 112}
!39 = !{!"MeshCacheModifierData", !40, i64 0, !42, i64 112, !42, i64 113, !42, i64 114, !42, i64 115, !42, i64 116, !42, i64 117, !42, i64 118, !42, i64 119, !45, i64 120, !42, i64 124, !42, i64 125, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !42, i64 152}
!40 = !{!"ModifierData", !41, i64 0, !41, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !41, i64 96, !41, i64 104}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"int", !42, i64 0}
!45 = !{!"float", !42, i64 0}
!46 = !{!39, !42, i64 113}
!47 = !{!39, !42, i64 119}
!48 = !{!39, !45, i64 136}
!49 = !{!39, !45, i64 120}
!50 = !{!39, !42, i64 116}
!51 = !{!39, !42, i64 117}
!52 = !{!"MOD_meshcache.c:isDisabled"}
!53 = !{!42, !42, i64 0}
!54 = !{!"MOD_meshcache.c:dependsOnTime"}
!55 = !{!39, !42, i64 115}
!56 = !{!"MOD_meshcache.c:meshcache_do"}
!57 = !{!39, !42, i64 124}
!58 = !{!41, !41, i64 0}
!59 = !{!39, !41, i64 96}
!60 = !{!61, !63, i64 820}
!61 = !{!"Scene", !62, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !64, i64 152, !41, i64 168, !41, i64 176, !42, i64 184, !42, i64 196, !42, i64 208, !42, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !63, i64 244, !42, i64 246, !42, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !65, i64 280, !74, i64 4264, !64, i64 4296, !64, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !63, i64 4376, !63, i64 4378, !44, i64 4380, !64, i64 4384, !75, i64 4400, !76, i64 4416, !79, i64 4600, !41, i64 4608, !80, i64 4616, !41, i64 4640, !81, i64 4648, !81, i64 4656, !67, i64 4664, !68, i64 4824, !82, i64 4888, !41, i64 4952}
!62 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !63, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !41, i64 112}
!63 = !{!"short", !42, i64 0}
!64 = !{!"ListBase", !41, i64 0, !41, i64 8}
!65 = !{!"RenderData", !66, i64 0, !41, i64 248, !41, i64 256, !69, i64 264, !70, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !45, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !63, i64 432, !63, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !63, i64 456, !63, i64 458, !63, i64 460, !63, i64 462, !63, i64 464, !63, i64 466, !44, i64 468, !63, i64 472, !63, i64 474, !63, i64 476, !63, i64 478, !63, i64 480, !63, i64 482, !44, i64 484, !44, i64 488, !63, i64 492, !63, i64 494, !44, i64 496, !44, i64 500, !63, i64 504, !63, i64 506, !63, i64 508, !63, i64 510, !63, i64 512, !42, i64 514, !42, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !63, i64 528, !63, i64 530, !63, i64 532, !63, i64 534, !63, i64 536, !63, i64 538, !63, i64 540, !63, i64 542, !71, i64 544, !71, i64 560, !72, i64 576, !64, i64 592, !63, i64 608, !63, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !44, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !63, i64 648, !63, i64 650, !63, i64 652, !63, i64 654, !63, i64 656, !63, i64 658, !45, i64 660, !45, i64 664, !63, i64 668, !63, i64 670, !45, i64 672, !45, i64 676, !42, i64 680, !44, i64 1704, !63, i64 1708, !63, i64 1710, !42, i64 1712, !42, i64 2480, !42, i64 2496, !42, i64 2512, !42, i64 2513, !42, i64 2514, !42, i64 2515, !44, i64 2520, !63, i64 2524, !63, i64 2526, !45, i64 2528, !45, i64 2532, !63, i64 2536, !63, i64 2538, !45, i64 2540, !63, i64 2544, !63, i64 2546, !44, i64 2548, !63, i64 2552, !63, i64 2554, !63, i64 2556, !63, i64 2558, !45, i64 2560, !45, i64 2564, !41, i64 2568, !44, i64 2576, !45, i64 2580, !42, i64 2584, !73, i64 2616, !44, i64 3976, !44, i64 3980}
!66 = !{!"ImageFormatData", !42, i64 0, !42, i64 1, !42, i64 2, !42, i64 3, !42, i64 4, !42, i64 5, !42, i64 6, !42, i64 7, !63, i64 8, !63, i64 10, !45, i64 12, !42, i64 16, !42, i64 17, !42, i64 18, !67, i64 24, !68, i64 184}
!67 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !42, i64 8, !42, i64 72, !45, i64 136, !45, i64 140, !41, i64 144, !41, i64 152}
!68 = !{!"ColorManagedDisplaySettings", !42, i64 0}
!69 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !63, i64 48, !63, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!70 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !45, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !41, i64 64}
!71 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!72 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!73 = !{!"BakeData", !66, i64 0, !42, i64 248, !63, i64 1272, !63, i64 1274, !63, i64 1276, !63, i64 1278, !45, i64 1280, !45, i64 1284, !42, i64 1288, !42, i64 1291, !42, i64 1292, !42, i64 1293, !42, i64 1296}
!74 = !{!"AudioData", !44, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !44, i64 16, !63, i64 20, !63, i64 22, !45, i64 24, !45, i64 28}
!75 = !{!"GameFraming", !42, i64 0, !42, i64 12, !42, i64 13, !42, i64 14, !42, i64 15}
!76 = !{!"GameData", !75, i64 0, !63, i64 16, !63, i64 18, !63, i64 20, !63, i64 22, !63, i64 24, !63, i64 26, !63, i64 28, !63, i64 30, !63, i64 32, !42, i64 34, !77, i64 40, !63, i64 64, !63, i64 66, !45, i64 68, !78, i64 72, !45, i64 128, !45, i64 132, !44, i64 136, !63, i64 140, !63, i64 142, !63, i64 144, !63, i64 146, !63, i64 148, !63, i64 150, !63, i64 152, !63, i64 154, !63, i64 156, !63, i64 158, !63, i64 160, !63, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!77 = !{!"GameDome", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !45, i64 8, !45, i64 12, !41, i64 16}
!78 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !44, i64 40, !45, i64 44, !45, i64 48, !63, i64 52, !63, i64 54}
!79 = !{!"UnitSettings", !45, i64 0, !42, i64 4, !42, i64 5, !63, i64 6}
!80 = !{!"PhysicsSettings", !42, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!81 = !{!"long", !42, i64 0}
!82 = !{!"ColorManagedColorspaceSettings", !42, i64 0}
!83 = !{!61, !45, i64 900}
!84 = !{!39, !42, i64 114}
!85 = !{!39, !45, i64 132}
!86 = !{!39, !45, i64 140}
!87 = !{!39, !45, i64 144}
!88 = !{!39, !45, i64 148}
!89 = !{!62, !41, i64 24}
!90 = !{!91, !41, i64 296}
!91 = !{!"Object", !62, i64 0, !41, i64 120, !41, i64 128, !63, i64 136, !63, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !42, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !92, i64 312, !41, i64 360, !64, i64 368, !64, i64 384, !64, i64 400, !64, i64 416, !44, i64 432, !44, i64 436, !41, i64 440, !41, i64 448, !44, i64 456, !44, i64 460, !42, i64 464, !42, i64 476, !42, i64 488, !42, i64 500, !42, i64 512, !42, i64 524, !42, i64 536, !42, i64 548, !42, i64 560, !42, i64 576, !42, i64 592, !42, i64 604, !45, i64 616, !45, i64 620, !42, i64 624, !42, i64 688, !42, i64 752, !42, i64 816, !42, i64 880, !44, i64 944, !63, i64 948, !63, i64 950, !63, i64 952, !63, i64 954, !63, i64 956, !63, i64 958, !63, i64 960, !63, i64 962, !63, i64 964, !42, i64 966, !42, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !63, i64 1036, !63, i64 1038, !63, i64 1040, !42, i64 1042, !42, i64 1043, !63, i64 1044, !42, i64 1046, !42, i64 1047, !45, i64 1048, !45, i64 1052, !64, i64 1056, !64, i64 1072, !64, i64 1088, !64, i64 1104, !45, i64 1120, !63, i64 1124, !63, i64 1126, !42, i64 1128, !44, i64 1144, !44, i64 1148, !41, i64 1152, !42, i64 1160, !42, i64 1161, !63, i64 1162, !42, i64 1164, !64, i64 1176, !64, i64 1192, !64, i64 1208, !64, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !42, i64 1264, !42, i64 1265, !63, i64 1266, !45, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !81, i64 1304, !81, i64 1312, !44, i64 1320, !44, i64 1324, !64, i64 1328, !64, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !42, i64 1384, !41, i64 1392, !64, i64 1400, !41, i64 1416}
!92 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !63, i64 16, !63, i64 18, !63, i64 20, !63, i64 22, !63, i64 24, !63, i64 26, !63, i64 28, !63, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!93 = !{!91, !63, i64 136}
!94 = !{!95, !44, i64 1280}
!95 = !{!"Mesh", !62, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !96, i64 280, !96, i64 480, !96, i64 680, !96, i64 880, !96, i64 1080, !44, i64 1280, !44, i64 1284, !44, i64 1288, !44, i64 1292, !44, i64 1296, !44, i64 1300, !44, i64 1304, !42, i64 1308, !42, i64 1320, !42, i64 1332, !44, i64 1344, !63, i64 1348, !63, i64 1350, !45, i64 1352, !44, i64 1356, !42, i64 1360, !42, i64 1361, !42, i64 1362, !42, i64 1363, !42, i64 1364, !42, i64 1365, !63, i64 1366, !41, i64 1368}
!96 = !{!"CustomData", !41, i64 0, !42, i64 8, !44, i64 172, !44, i64 176, !44, i64 180, !41, i64 184, !41, i64 192}
!97 = !{!95, !44, i64 1296}
!98 = !{!95, !41, i64 232}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!95, !41, i64 168}
!102 = !{!95, !41, i64 184}
!103 = !{!39, !42, i64 118}
!104 = !{!45, !45, i64 0}
!105 = distinct !{!105, !100}
!106 = !{!"MOD_meshcache.c:copy_v3_v3"}
