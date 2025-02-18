; ModuleID = 'blender/source/blender/blenkernel/intern/collision.c'
source_filename = "blender/source/blender/blenkernel/intern/collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.Cloth = type { ptr, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.CollPair = type { i32, i32, double, [3 x float], [3 x float], [3 x float], [3 x float], i32, float, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ClothVertex = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], ptr, i32, float, float, float, float, i32, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"CollisionObjectsArray\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CollPair\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.add_collision_object = private unnamed_addr constant [21 x i8] c"add_collision_object\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ColliderCache array\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ColliderCache\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"collision array\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @collision_move_object(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = zext i32 %5 to i64
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ 0, %7 ], [ %70, %19 ]
  %21 = getelementptr inbounds %struct.MVert, ptr %9, i64 %20
  %22 = getelementptr inbounds %struct.MVert, ptr %11, i64 %20
  %23 = load float, ptr %21, align 4, !tbaa !47
  %24 = load float, ptr %22, align 4, !tbaa !47
  %25 = fsub float %23, %24
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !47
  %28 = getelementptr inbounds float, ptr %22, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !47
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %21, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !47
  %33 = getelementptr inbounds float, ptr %22, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !47
  %35 = fsub float %32, %34
  %36 = tail call float @llvm.fmuladd.f32(float %25, float %2, float %24)
  %37 = getelementptr inbounds %struct.MVert, ptr %13, i64 %20
  store float %36, ptr %37, align 4, !tbaa !47
  %38 = getelementptr inbounds %struct.MVert, ptr %11, i64 %20, i32 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !47
  %40 = tail call float @llvm.fmuladd.f32(float %30, float %2, float %39)
  %41 = getelementptr inbounds %struct.MVert, ptr %13, i64 %20, i32 0, i64 1
  store float %40, ptr %41, align 4, !tbaa !47
  %42 = getelementptr inbounds %struct.MVert, ptr %11, i64 %20, i32 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !47
  %44 = tail call float @llvm.fmuladd.f32(float %35, float %2, float %43)
  %45 = getelementptr inbounds %struct.MVert, ptr %13, i64 %20, i32 0, i64 2
  store float %44, ptr %45, align 4, !tbaa !47
  %46 = load float, ptr %22, align 4, !tbaa !47
  %47 = tail call float @llvm.fmuladd.f32(float %25, float %1, float %46)
  %48 = getelementptr inbounds %struct.MVert, ptr %15, i64 %20
  store float %47, ptr %48, align 4, !tbaa !47
  %49 = load float, ptr %38, align 4, !tbaa !47
  %50 = tail call float @llvm.fmuladd.f32(float %30, float %1, float %49)
  %51 = getelementptr inbounds %struct.MVert, ptr %15, i64 %20, i32 0, i64 1
  store float %50, ptr %51, align 4, !tbaa !47
  %52 = load float, ptr %42, align 4, !tbaa !47
  %53 = tail call float @llvm.fmuladd.f32(float %35, float %1, float %52)
  %54 = getelementptr inbounds %struct.MVert, ptr %15, i64 %20, i32 0, i64 2
  store float %53, ptr %54, align 4, !tbaa !47
  %55 = getelementptr inbounds %struct.MVert, ptr %17, i64 %20
  %56 = load float, ptr %37, align 4, !tbaa !47
  %57 = fsub float %47, %56
  store float %57, ptr %55, align 4, !tbaa !47
  %58 = getelementptr inbounds float, ptr %48, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !47
  %60 = getelementptr inbounds float, ptr %37, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !47
  %62 = fsub float %59, %61
  %63 = getelementptr inbounds float, ptr %55, i64 1
  store float %62, ptr %63, align 4, !tbaa !47
  %64 = getelementptr inbounds float, ptr %48, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !47
  %66 = getelementptr inbounds float, ptr %37, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !47
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds float, ptr %55, i64 2
  store float %68, ptr %69, align 4, !tbaa !47
  %70 = add nuw nsw i64 %20, 1
  %71 = icmp eq i64 %70, %18
  br i1 %71, label %72, label %19, !llvm.loop !48

72:                                               ; preds = %19, %3
  %73 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !52
  %77 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %78 = load i32, ptr %77, align 4, !tbaa !53
  %79 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  tail call void @bvhtree_update_from_mvert(ptr noundef %74, ptr noundef %76, i32 noundef %78, ptr noundef %80, ptr noundef %82, i32 poison, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define dso_local void @bvhtree_update_from_mvert(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [12 x float], align 16
  %9 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #7
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %3, null
  %12 = or i1 %10, %11
  br i1 %12, label %123, label %13

13:                                               ; preds = %7
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %122

15:                                               ; preds = %13
  %16 = getelementptr inbounds float, ptr %8, i64 1
  %17 = getelementptr inbounds float, ptr %8, i64 2
  %18 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 3
  %19 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 4
  %20 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 5
  %21 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 6
  %22 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 7
  %23 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 8
  %24 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 9
  %25 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 10
  %26 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 11
  %27 = icmp ne i32 %6, 0
  %28 = icmp ne ptr %4, null
  %29 = and i1 %28, %27
  %30 = getelementptr inbounds float, ptr %9, i64 1
  %31 = getelementptr inbounds float, ptr %9, i64 2
  %32 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 3
  %33 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 4
  %34 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 5
  %35 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 6
  %36 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 7
  %37 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 8
  %38 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 9
  %39 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 10
  %40 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 11
  br label %41

41:                                               ; preds = %115, %15
  %42 = phi ptr [ %1, %15 ], [ %119, %115 ]
  %43 = phi i32 [ 0, %15 ], [ %118, %115 ]
  %44 = load i32, ptr %42, align 4, !tbaa !54
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %3, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !47
  store float %47, ptr %8, align 16, !tbaa !47
  %48 = getelementptr inbounds float, ptr %46, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !47
  store float %49, ptr %16, align 4, !tbaa !47
  %50 = getelementptr inbounds float, ptr %46, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !47
  store float %51, ptr %17, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.MFace, ptr %42, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !57
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %3, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !47
  store float %56, ptr %18, align 4, !tbaa !47
  %57 = getelementptr inbounds float, ptr %55, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !47
  store float %58, ptr %19, align 16, !tbaa !47
  %59 = getelementptr inbounds float, ptr %55, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !47
  store float %60, ptr %20, align 4, !tbaa !47
  %61 = getelementptr inbounds %struct.MFace, ptr %42, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !58
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MVert, ptr %3, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !47
  store float %65, ptr %21, align 8, !tbaa !47
  %66 = getelementptr inbounds float, ptr %64, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !47
  store float %67, ptr %22, align 4, !tbaa !47
  %68 = getelementptr inbounds float, ptr %64, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !47
  store float %69, ptr %23, align 16, !tbaa !47
  %70 = getelementptr inbounds %struct.MFace, ptr %42, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !59
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %41
  %74 = zext i32 %71 to i64
  %75 = getelementptr inbounds %struct.MVert, ptr %3, i64 %74
  %76 = load float, ptr %75, align 4, !tbaa !47
  store float %76, ptr %24, align 4, !tbaa !47
  %77 = getelementptr inbounds float, ptr %75, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !47
  store float %78, ptr %25, align 8, !tbaa !47
  %79 = getelementptr inbounds float, ptr %75, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !47
  store float %80, ptr %26, align 4, !tbaa !47
  br label %81

81:                                               ; preds = %73, %41
  br i1 %29, label %82, label %112

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.MVert, ptr %4, i64 %45
  %84 = load float, ptr %83, align 4, !tbaa !47
  store float %84, ptr %9, align 16, !tbaa !47
  %85 = getelementptr inbounds float, ptr %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !47
  store float %86, ptr %30, align 4, !tbaa !47
  %87 = getelementptr inbounds float, ptr %83, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !47
  store float %88, ptr %31, align 8, !tbaa !47
  %89 = getelementptr inbounds %struct.MVert, ptr %4, i64 %54
  %90 = load float, ptr %89, align 4, !tbaa !47
  store float %90, ptr %32, align 4, !tbaa !47
  %91 = getelementptr inbounds float, ptr %89, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !47
  store float %92, ptr %33, align 16, !tbaa !47
  %93 = getelementptr inbounds float, ptr %89, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !47
  store float %94, ptr %34, align 4, !tbaa !47
  %95 = getelementptr inbounds %struct.MVert, ptr %4, i64 %63
  %96 = load float, ptr %95, align 4, !tbaa !47
  store float %96, ptr %35, align 8, !tbaa !47
  %97 = getelementptr inbounds float, ptr %95, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !47
  store float %98, ptr %36, align 4, !tbaa !47
  %99 = getelementptr inbounds float, ptr %95, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !47
  store float %100, ptr %37, align 16, !tbaa !47
  br i1 %72, label %109, label %101

101:                                              ; preds = %82
  %102 = zext i32 %71 to i64
  %103 = getelementptr inbounds %struct.MVert, ptr %4, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !47
  store float %104, ptr %38, align 4, !tbaa !47
  %105 = getelementptr inbounds float, ptr %103, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !47
  store float %106, ptr %39, align 8, !tbaa !47
  %107 = getelementptr inbounds float, ptr %103, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !47
  store float %108, ptr %40, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %101, %82
  %110 = phi i32 [ 4, %101 ], [ 3, %82 ]
  %111 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %0, i32 noundef %43, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %110) #7
  br label %115

112:                                              ; preds = %81
  %113 = select i1 %72, i32 3, i32 4
  %114 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %0, i32 noundef %43, ptr noundef nonnull %8, ptr noundef null, i32 noundef %113) #7
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i8 [ %111, %109 ], [ %114, %112 ]
  %117 = icmp ne i8 %116, 0
  %118 = add nuw nsw i32 %43, 1
  %119 = getelementptr inbounds %struct.MFace, ptr %42, i64 1
  %120 = icmp slt i32 %118, %2
  %121 = select i1 %117, i1 %120, i1 false
  br i1 %121, label %41, label %122, !llvm.loop !60

122:                                              ; preds = %115, %13
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %0) #7
  br label %123

123:                                              ; preds = %122, %7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @bvhtree_build_from_mvert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #7
  %7 = shl i32 %1, 1
  %8 = tail call ptr @BLI_bvhtree_new(i32 noundef %7, float noundef %4, i8 noundef zeroext 4, i8 noundef zeroext 26) #7
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %70, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds float, ptr %6, i64 1
  %12 = getelementptr inbounds float, ptr %6, i64 2
  %13 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 3
  %14 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 4
  %15 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 5
  %16 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 6
  %17 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 7
  %18 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 8
  %19 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 9
  %20 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 10
  %21 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 11
  %22 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  br label %23

23:                                               ; preds = %10, %63
  %24 = phi ptr [ %0, %10 ], [ %68, %63 ]
  %25 = phi i32 [ 0, %10 ], [ %67, %63 ]
  %26 = load i32, ptr %24, align 4, !tbaa !54
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MVert, ptr %2, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !47
  store float %29, ptr %6, align 16, !tbaa !47
  %30 = getelementptr inbounds float, ptr %28, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !47
  store float %31, ptr %11, align 4, !tbaa !47
  %32 = getelementptr inbounds float, ptr %28, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !47
  store float %33, ptr %12, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MVert, ptr %2, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !47
  store float %38, ptr %13, align 4, !tbaa !47
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !47
  store float %40, ptr %14, align 16, !tbaa !47
  %41 = getelementptr inbounds float, ptr %37, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !47
  store float %42, ptr %15, align 4, !tbaa !47
  %43 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %2, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !47
  store float %47, ptr %16, align 8, !tbaa !47
  %48 = getelementptr inbounds float, ptr %46, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !47
  store float %49, ptr %17, align 4, !tbaa !47
  %50 = getelementptr inbounds float, ptr %46, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !47
  store float %51, ptr %18, align 16, !tbaa !47
  %52 = getelementptr inbounds %struct.MFace, ptr %24, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !59
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %23
  %56 = zext i32 %53 to i64
  %57 = getelementptr inbounds %struct.MVert, ptr %2, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !47
  store float %58, ptr %19, align 4, !tbaa !47
  %59 = getelementptr inbounds float, ptr %57, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !47
  store float %60, ptr %20, align 8, !tbaa !47
  %61 = getelementptr inbounds float, ptr %57, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !47
  store float %62, ptr %21, align 4, !tbaa !47
  br label %63

63:                                               ; preds = %55, %23
  %64 = load i32, ptr %22, align 4, !tbaa !59
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 3, i32 4
  call void @BLI_bvhtree_insert(ptr noundef %8, i32 noundef %25, ptr noundef nonnull %6, i32 noundef %66) #7
  %67 = add nuw i32 %25, 1
  %68 = getelementptr inbounds %struct.MFace, ptr %24, i64 1
  %69 = icmp eq i32 %67, %1
  br i1 %69, label %70, label %23, !llvm.loop !61

70:                                               ; preds = %63, %5
  call void @BLI_bvhtree_balance(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #7
  ret ptr %8
}

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_bvhtree_update_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_bvhtree_update_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @get_collisionobjects(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 100, ptr %8, align 4, !tbaa !62
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %11 = tail call ptr %10(i64 noundef 800, ptr noundef nonnull @.str) #7
  store ptr %11, ptr %6, align 8, !tbaa !63
  %12 = icmp eq ptr %2, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  call fastcc void @add_collision_object(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %20, ptr noundef %1, i32 noundef 0, i32 noundef %4)
  %21 = load ptr, ptr %18, align 8, !tbaa !63
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %17, !llvm.loop !66

23:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store ptr %0, ptr %9, align 8, !tbaa !63
  %24 = call ptr @_setlooper_base_step(ptr noundef nonnull %9, ptr noundef null) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  br label %29

29:                                               ; preds = %26, %43
  %30 = phi ptr [ %24, %26 ], [ %44, %43 ]
  %31 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !67
  %33 = load i32, ptr %27, align 8, !tbaa !69
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, ptr %28, align 8, !tbaa !75
  %38 = and i32 %37, %32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !94
  call fastcc void @add_collision_object(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %42, ptr noundef %1, i32 noundef 0, i32 noundef %4)
  br label %43

43:                                               ; preds = %36, %40
  %44 = call ptr @_setlooper_base_step(ptr noundef nonnull %9, ptr noundef nonnull %30) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %29, !llvm.loop !95

46:                                               ; preds = %43, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %47

47:                                               ; preds = %17, %13, %46
  %48 = load i32, ptr %7, align 4, !tbaa !62
  store i32 %48, ptr %3, align 4, !tbaa !62
  %49 = load ptr, ptr %6, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_collision_object(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp eq ptr %3, %4
  br i1 %8, label %86, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %6, 23
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PartDeflect, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 4, !tbaa !97
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %9, %15
  %20 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef %6) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 4, !tbaa !62
  %24 = load i32, ptr %2, align 4, !tbaa !62
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = shl i32 %24, 1
  store i32 %27, ptr %2, align 4, !tbaa !62
  %28 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !63
  %29 = load ptr, ptr %0, align 8, !tbaa !63
  %30 = zext i32 %27 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = tail call ptr %28(ptr noundef %29, i64 noundef %31, ptr noundef nonnull @__func__.add_collision_object) #7
  store ptr %32, ptr %0, align 8, !tbaa !63
  br label %33

33:                                               ; preds = %26, %22
  %34 = load ptr, ptr %0, align 8, !tbaa !63
  %35 = load i32, ptr %1, align 4, !tbaa !62
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %3, ptr %37, align 8, !tbaa !63
  %38 = add i32 %35, 1
  store i32 %38, ptr %1, align 4, !tbaa !62
  br label %39

39:                                               ; preds = %11, %15, %33, %19
  %40 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 112
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = icmp ne ptr %41, null
  %43 = icmp eq i32 %5, 0
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.Group, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  %48 = icmp eq ptr %47, null
  br i1 %48, label %86, label %49

49:                                               ; preds = %45, %83
  %50 = phi ptr [ %84, %83 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.GroupObject, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %52, %4
  br i1 %53, label %83, label %54

54:                                               ; preds = %49
  br i1 %10, label %55, label %63

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 110
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.PartDeflect, ptr %57, i64 0, i32 1
  %61 = load i16, ptr %60, align 4, !tbaa !97
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %59, %54
  %64 = tail call ptr @modifiers_findByType(ptr noundef %52, i32 noundef %6) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %1, align 4, !tbaa !62
  %68 = load i32, ptr %2, align 4, !tbaa !62
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = shl i32 %68, 1
  store i32 %71, ptr %2, align 4, !tbaa !62
  %72 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !63
  %73 = load ptr, ptr %0, align 8, !tbaa !63
  %74 = zext i32 %71 to i64
  %75 = shl nuw nsw i64 %74, 3
  %76 = tail call ptr %72(ptr noundef %73, i64 noundef %75, ptr noundef nonnull @__func__.add_collision_object) #7
  store ptr %76, ptr %0, align 8, !tbaa !63
  br label %77

77:                                               ; preds = %70, %66
  %78 = load ptr, ptr %0, align 8, !tbaa !63
  %79 = load i32, ptr %1, align 4, !tbaa !62
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  store ptr %52, ptr %81, align 8, !tbaa !63
  %82 = add i32 %79, 1
  store i32 %82, ptr %1, align 4, !tbaa !62
  br label %83

83:                                               ; preds = %55, %59, %63, %77, %49
  %84 = load ptr, ptr %50, align 8, !tbaa !63
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %49, !llvm.loop !100

86:                                               ; preds = %83, %45, %39, %7
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @get_collider_cache(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %2, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  call fastcc void @add_collider_cache_object(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %1, i32 noundef 0)
  %15 = load ptr, ptr %12, align 8, !tbaa !63
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %11, !llvm.loop !101

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr %0, ptr %5, align 8, !tbaa !63
  %18 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef null) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = icmp eq ptr %1, null
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %23

23:                                               ; preds = %20, %34
  %24 = phi ptr [ %18, %20 ], [ %35, %34 ]
  br i1 %21, label %31, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !67
  %28 = load i32, ptr %22, align 8, !tbaa !69
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  call fastcc void @add_collider_cache_object(ptr noundef nonnull %4, ptr noundef %33, ptr noundef %1, i32 noundef 0)
  br label %34

34:                                               ; preds = %25, %31
  %35 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef nonnull %24) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23, !llvm.loop !102

37:                                               ; preds = %34, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %38

38:                                               ; preds = %11, %7, %37
  %39 = load ptr, ptr %4, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret ptr %39
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_collider_cache_object(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 1
  %12 = load i16, ptr %11, align 4, !tbaa !97
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 23) #7
  br label %16

16:                                               ; preds = %14, %10, %6
  %17 = phi ptr [ %15, %14 ], [ null, %10 ], [ null, %6 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.CollisionModifierData, ptr %17, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %28 = tail call ptr %27(i64 noundef 16, ptr noundef nonnull @.str.2) #7
  store ptr %28, ptr %0, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %26, %23
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %31 = tail call ptr %30(i64 noundef 32, ptr noundef nonnull @.str.3) #7
  %32 = getelementptr inbounds %struct.ColliderCache, ptr %31, i64 0, i32 2
  store ptr %1, ptr %32, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.ColliderCache, ptr %31, i64 0, i32 3
  store ptr %17, ptr %33, align 8, !tbaa !105
  tail call void @collision_move_object(ptr noundef nonnull %17, float noundef 1.000000e+00, float noundef 0.000000e+00)
  %34 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @BLI_addtail(ptr noundef %34, ptr noundef %31) #7
  br label %35

35:                                               ; preds = %29, %19, %16
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %37 = load ptr, ptr %36, align 8, !tbaa !99
  %38 = icmp ne ptr %37, null
  %39 = icmp eq i32 %3, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.Group, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %49, %45 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.GroupObject, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  tail call fastcc void @add_collider_cache_object(ptr noundef %0, ptr noundef %48, ptr noundef %2, i32 noundef 1)
  %49 = load ptr, ptr %46, align 8, !tbaa !63
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %45, !llvm.loop !106

51:                                               ; preds = %45, %41, %35, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_collider_cache(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #7
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void %5(ptr noundef %6) #7
  store ptr null, ptr %0, align 8, !tbaa !63
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @cloth_bvh_objcollision(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.Cloth, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  store i32 0, ptr %14, align 4, !tbaa !62
  %21 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.ClothSimSettings, ptr %22, i64 0, i32 29
  %24 = load i32, ptr %23, align 8, !tbaa !112
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq ptr %20, null
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %1146, label %29

29:                                               ; preds = %4
  %30 = load ptr, ptr %18, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.Cloth, ptr %18, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !115
  tail call void @bvhtree_update_from_cloth(ptr noundef %1, i32 noundef 1) #7
  tail call void @bvhselftree_update_from_cloth(ptr noundef %1, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !117
  %37 = getelementptr inbounds %struct.ClothCollSettings, ptr %36, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  %39 = call ptr @get_collisionobjects(ptr noundef %34, ptr noundef %0, ptr noundef %38, ptr noundef nonnull %14, i32 noundef 23)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %1146, label %41

41:                                               ; preds = %29
  %42 = load i32, ptr %14, align 4, !tbaa !62
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = fadd float %2, %3
  %46 = zext i32 %42 to i64
  br label %56

47:                                               ; preds = %65, %41
  %48 = getelementptr inbounds float, ptr %11, i64 1
  %49 = getelementptr inbounds float, ptr %11, i64 2
  %50 = getelementptr inbounds float, ptr %12, i64 1
  %51 = getelementptr inbounds float, ptr %12, i64 2
  %52 = getelementptr inbounds float, ptr %13, i64 1
  %53 = getelementptr inbounds float, ptr %13, i64 2
  %54 = getelementptr inbounds %struct.Cloth, ptr %18, i64 0, i32 9
  %55 = getelementptr inbounds %struct.Cloth, ptr %18, i64 0, i32 13
  br label %68

56:                                               ; preds = %44, %65
  %57 = phi i64 [ 0, %44 ], [ %66, %65 ]
  %58 = getelementptr inbounds ptr, ptr %39, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = tail call ptr @modifiers_findByType(ptr noundef %59, i32 noundef 23) #7
  %61 = getelementptr inbounds %struct.CollisionModifierData, ptr %60, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  tail call void @collision_move_object(ptr noundef %60, float noundef %45, float noundef %2)
  br label %65

65:                                               ; preds = %56, %64
  %66 = add nuw nsw i64 %57, 1
  %67 = icmp eq i64 %66, %46
  br i1 %67, label %47, label %56, !llvm.loop !120

68:                                               ; preds = %47, %1136
  %69 = phi i32 [ %1132, %1136 ], [ 0, %47 ]
  %70 = phi ptr [ %1133, %1136 ], [ %30, %47 ]
  %71 = phi i32 [ %846, %1136 ], [ 0, %47 ]
  %72 = phi i32 [ %1134, %1136 ], [ %32, %47 ]
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %74 = load i32, ptr %14, align 4, !tbaa !62
  %75 = zext i32 %74 to i64
  %76 = shl nuw nsw i64 %75, 3
  %77 = call ptr %73(i64 noundef %76, ptr noundef nonnull @.str.1) #7
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %79 = call ptr %78(i64 noundef %76, ptr noundef nonnull @.str.1) #7
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %842, label %81

81:                                               ; preds = %68, %835
  %82 = phi i64 [ %838, %835 ], [ 0, %68 ]
  %83 = phi i32 [ %837, %835 ], [ %69, %68 ]
  %84 = phi i32 [ %836, %835 ], [ 0, %68 ]
  %85 = getelementptr inbounds ptr, ptr %39, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = call ptr @modifiers_findByType(ptr noundef %86, i32 noundef 23) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  store i32 0, ptr %15, align 4, !tbaa !62
  %88 = getelementptr inbounds %struct.CollisionModifierData, ptr %87, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !51
  %90 = icmp eq ptr %89, null
  br i1 %90, label %835, label %91

91:                                               ; preds = %81
  %92 = call ptr @BLI_bvhtree_overlap(ptr noundef %20, ptr noundef nonnull %89, ptr noundef nonnull %15) #7
  %93 = load i32, ptr %15, align 4, !tbaa !62
  %94 = icmp ne i32 %93, 0
  %95 = icmp ne ptr %92, null
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %830

97:                                               ; preds = %91
  %98 = getelementptr inbounds ptr, ptr %77, i64 %82
  %99 = getelementptr inbounds ptr, ptr %79, i64 %82
  %100 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %101 = sext i32 %93 to i64
  %102 = mul nsw i64 %101, 7168
  %103 = call ptr %100(i64 noundef %102, ptr noundef nonnull @.str.4) #7
  store ptr %103, ptr %98, align 8, !tbaa !63
  store ptr %103, ptr %99, align 8, !tbaa !63
  %104 = icmp sgt i32 %93, 0
  br i1 %104, label %105, label %249

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.CollisionModifierData, ptr %87, i64 0, i32 7
  %107 = zext nneg i32 %93 to i64
  br label %108

108:                                              ; preds = %105, %245
  %109 = phi i64 [ 0, %105 ], [ %247, %245 ]
  %110 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %92, i64 %109
  %111 = load ptr, ptr %99, align 8, !tbaa !63
  %112 = load ptr, ptr %35, align 8, !tbaa !117
  %113 = getelementptr inbounds %struct.ClothCollSettings, ptr %112, i64 0, i32 1
  %114 = load float, ptr %113, align 8, !tbaa !121
  %115 = load ptr, ptr %88, align 8, !tbaa !51
  %116 = call float @BLI_bvhtree_getepsilon(ptr noundef %115) #7
  %117 = load ptr, ptr %17, align 8, !tbaa !107
  %118 = getelementptr inbounds %struct.Cloth, ptr %117, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !122
  %120 = load i32, ptr %110, align 4, !tbaa !123
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121
  %123 = load ptr, ptr %106, align 8, !tbaa !52
  %124 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %92, i64 %109, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !125
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126
  %128 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 3
  %129 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 3
  %130 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 3
  %131 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 3
  %132 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 2
  %133 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 1
  %134 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 2
  %135 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 2
  %136 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 2
  %137 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 1
  %138 = getelementptr inbounds %struct.MFace, ptr %119, i64 %121, i32 2
  %139 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 2
  %140 = fadd float %114, %116
  %141 = fadd float %140, 0x3E80000000000000
  %142 = fpext float %141 to double
  %143 = fmul double %142, 2.000000e+00
  %144 = fcmp oeq double %143, -1.000000e+00
  %145 = fcmp ugt double %143, %142
  %146 = or i1 %144, %145
  %147 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 2
  %148 = getelementptr inbounds %struct.MFace, ptr %123, i64 %126, i32 1
  br label %149

149:                                              ; preds = %108, %241
  %150 = phi i32 [ 0, %108 ], [ %243, %241 ]
  %151 = phi ptr [ %111, %108 ], [ %242, %241 ]
  switch i32 %150, label %175 [
    i32 0, label %152
    i32 1, label %158
  ]

152:                                              ; preds = %149
  %153 = load i32, ptr %122, align 4, !tbaa !54
  %154 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 9
  store i32 %153, ptr %154, align 8, !tbaa !126
  %155 = load i32, ptr %133, align 4, !tbaa !57
  %156 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 10
  store i32 %155, ptr %156, align 4, !tbaa !129
  %157 = load i32, ptr %134, align 4, !tbaa !58
  br label %166

158:                                              ; preds = %149
  %159 = load i32, ptr %131, align 4, !tbaa !59
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %122, align 4, !tbaa !54
  %163 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 9
  store i32 %162, ptr %163, align 8, !tbaa !126
  %164 = load i32, ptr %132, align 4, !tbaa !58
  %165 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 10
  store i32 %164, ptr %165, align 4, !tbaa !129
  br label %166

166:                                              ; preds = %152, %161
  %167 = phi i32 [ %159, %161 ], [ %157, %152 ]
  %168 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 11
  store i32 %167, ptr %168, align 8, !tbaa !130
  %169 = load i32, ptr %127, align 4, !tbaa !54
  %170 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 12
  store i32 %169, ptr %170, align 4, !tbaa !131
  %171 = load i32, ptr %148, align 4, !tbaa !57
  %172 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 13
  store i32 %171, ptr %172, align 8, !tbaa !132
  %173 = load i32, ptr %147, align 4, !tbaa !58
  %174 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 14
  store i32 %173, ptr %174, align 4, !tbaa !133
  br label %175

175:                                              ; preds = %166, %158, %149
  %176 = phi i32 [ %150, %149 ], [ 2, %158 ], [ %150, %166 ]
  switch i32 %176, label %210 [
    i32 2, label %177
    i32 3, label %191
  ]

177:                                              ; preds = %175
  %178 = load i32, ptr %130, align 4, !tbaa !59
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %245, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %122, align 4, !tbaa !54
  %182 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 9
  store i32 %181, ptr %182, align 8, !tbaa !126
  %183 = load i32, ptr %137, align 4, !tbaa !57
  %184 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 10
  store i32 %183, ptr %184, align 4, !tbaa !129
  %185 = load i32, ptr %138, align 4, !tbaa !58
  %186 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 11
  store i32 %185, ptr %186, align 8, !tbaa !130
  %187 = load i32, ptr %127, align 4, !tbaa !54
  %188 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 12
  store i32 %187, ptr %188, align 4, !tbaa !131
  %189 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 13
  store i32 %178, ptr %189, align 8, !tbaa !132
  %190 = load i32, ptr %139, align 4, !tbaa !58
  br label %207

191:                                              ; preds = %175
  %192 = load i32, ptr %128, align 4, !tbaa !59
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %245, label %194

194:                                              ; preds = %191
  %195 = load i32, ptr %129, align 4, !tbaa !59
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %245, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %122, align 4, !tbaa !54
  %199 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 9
  store i32 %198, ptr %199, align 8, !tbaa !126
  %200 = load i32, ptr %135, align 4, !tbaa !58
  %201 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 10
  store i32 %200, ptr %201, align 4, !tbaa !129
  %202 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 11
  store i32 %192, ptr %202, align 8, !tbaa !130
  %203 = load i32, ptr %127, align 4, !tbaa !54
  %204 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 12
  store i32 %203, ptr %204, align 4, !tbaa !131
  %205 = load i32, ptr %136, align 4, !tbaa !58
  %206 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 13
  store i32 %205, ptr %206, align 8, !tbaa !132
  br label %207

207:                                              ; preds = %180, %197
  %208 = phi i32 [ %195, %197 ], [ %190, %180 ]
  %209 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 14
  store i32 %208, ptr %209, align 4, !tbaa !133
  br label %210

210:                                              ; preds = %207, %175
  br i1 %146, label %241, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 3
  %213 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 4
  %214 = load float, ptr %213, align 4, !tbaa !47
  %215 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 4, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !47
  %217 = fmul float %216, %216
  %218 = call float @llvm.fmuladd.f32(float %214, float %214, float %217)
  %219 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 4, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !47
  %221 = call float @llvm.fmuladd.f32(float %220, float %220, float %218)
  %222 = fcmp ogt float %221, 0x38AA95A5C0000000
  br i1 %222, label %223, label %233

223:                                              ; preds = %211
  %224 = call float @sqrtf(float noundef %221) #7
  %225 = fdiv float 1.000000e+00, %224
  %226 = load float, ptr %213, align 4, !tbaa !47
  %227 = fmul float %226, %225
  store float %227, ptr %212, align 4, !tbaa !47
  %228 = load float, ptr %215, align 4, !tbaa !47
  %229 = fmul float %225, %228
  %230 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 3, i64 1
  store float %229, ptr %230, align 4, !tbaa !47
  %231 = load float, ptr %219, align 4, !tbaa !47
  %232 = fmul float %225, %231
  br label %235

233:                                              ; preds = %211
  store float 0.000000e+00, ptr %212, align 4, !tbaa !47
  %234 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %234, align 4, !tbaa !47
  br label %235

235:                                              ; preds = %233, %223
  %236 = phi float [ 0.000000e+00, %233 ], [ %232, %223 ]
  %237 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 3, i64 2
  store float %236, ptr %237, align 4, !tbaa !47
  %238 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 2
  store double %143, ptr %238, align 8, !tbaa !134
  %239 = getelementptr inbounds %struct.CollPair, ptr %151, i64 0, i32 7
  store i32 0, ptr %239, align 8, !tbaa !135
  %240 = getelementptr inbounds %struct.CollPair, ptr %151, i64 1
  br label %241

241:                                              ; preds = %235, %210
  %242 = phi ptr [ %240, %235 ], [ %151, %210 ]
  %243 = add nsw i32 %176, 1
  %244 = icmp slt i32 %176, 3
  br i1 %244, label %149, label %245, !llvm.loop !136

245:                                              ; preds = %194, %191, %177, %241
  %246 = phi ptr [ %151, %194 ], [ %151, %191 ], [ %151, %177 ], [ %242, %241 ]
  store ptr %246, ptr %99, align 8, !tbaa !63
  %247 = add nuw nsw i64 %109, 1
  %248 = icmp eq i64 %247, %107
  br i1 %248, label %249, label %108, !llvm.loop !137

249:                                              ; preds = %245, %97
  %250 = load ptr, ptr %98, align 8, !tbaa !63
  %251 = load ptr, ptr %99, align 8, !tbaa !63
  %252 = load ptr, ptr %17, align 8, !tbaa !107
  %253 = getelementptr inbounds %struct.Cloth, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 8, !tbaa !115
  %255 = load ptr, ptr %252, align 8, !tbaa !114
  %256 = icmp eq ptr %250, %251
  %257 = getelementptr inbounds %struct.CollisionModifierData, ptr %87, i64 0, i32 5
  %258 = getelementptr inbounds %struct.CollisionModifierData, ptr %87, i64 0, i32 6
  %259 = icmp slt i32 %254, 1
  %260 = zext i32 %254 to i64
  br label %261

261:                                              ; preds = %821, %249
  %262 = phi i32 [ 0, %249 ], [ %822, %821 ]
  %263 = phi i32 [ 0, %249 ], [ %824, %821 ]
  %264 = load ptr, ptr %88, align 8, !tbaa !51
  %265 = icmp eq ptr %264, null
  br i1 %265, label %821, label %266

266:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %267 = call float @BLI_bvhtree_getepsilon(ptr noundef nonnull %264) #7
  %268 = load ptr, ptr %17, align 8, !tbaa !107
  br i1 %256, label %790, label %269

269:                                              ; preds = %266
  %270 = fmul float %267, 8.000000e+00
  %271 = fdiv float %270, 9.000000e+00
  %272 = fmul float %267, 8.000000e+00
  %273 = fdiv float %272, 9.000000e+00
  br label %274

274:                                              ; preds = %269, %786
  %275 = phi ptr [ %250, %269 ], [ %788, %786 ]
  %276 = phi i32 [ 0, %269 ], [ %787, %786 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  store float 0.000000e+00, ptr %11, align 4, !tbaa !47
  store float 0.000000e+00, ptr %48, align 4, !tbaa !47
  store float 0.000000e+00, ptr %49, align 4, !tbaa !47
  store float 0.000000e+00, ptr %12, align 4, !tbaa !47
  store float 0.000000e+00, ptr %50, align 4, !tbaa !47
  store float 0.000000e+00, ptr %51, align 4, !tbaa !47
  store float 0.000000e+00, ptr %13, align 4, !tbaa !47
  store float 0.000000e+00, ptr %52, align 4, !tbaa !47
  store float 0.000000e+00, ptr %53, align 4, !tbaa !47
  %277 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 7
  %278 = load i32, ptr %277, align 8, !tbaa !135
  %279 = and i32 %278, 2
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %786

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 5
  %283 = load ptr, ptr %268, align 8, !tbaa !114
  %284 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 9
  %285 = load i32, ptr %284, align 8, !tbaa !126
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %286, i32 6
  %288 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 10
  %289 = load i32, ptr %288, align 4, !tbaa !129
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %290, i32 6
  %292 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 11
  %293 = load i32, ptr %292, align 8, !tbaa !130
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %294, i32 6
  call fastcc void @collision_compute_barycentric(ptr noundef nonnull %282, ptr noundef nonnull %287, ptr noundef nonnull %291, ptr noundef nonnull %295, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %296 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 6
  %297 = load ptr, ptr %257, align 8, !tbaa !44
  %298 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 12
  %299 = load i32, ptr %298, align 4, !tbaa !131
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.MVert, ptr %297, i64 %300
  %302 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 13
  %303 = load i32, ptr %302, align 8, !tbaa !132
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.MVert, ptr %297, i64 %304
  %306 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 14
  %307 = load i32, ptr %306, align 4, !tbaa !133
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.MVert, ptr %297, i64 %308
  call fastcc void @collision_compute_barycentric(ptr noundef nonnull %296, ptr noundef %301, ptr noundef %305, ptr noundef %309, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %310 = load i32, ptr %284, align 8, !tbaa !126
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %311, i32 7
  %313 = load i32, ptr %288, align 4, !tbaa !129
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %314, i32 7
  %316 = load i32, ptr %292, align 8, !tbaa !130
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %317, i32 7
  %319 = load float, ptr %5, align 4, !tbaa !47
  %320 = fpext float %319 to double
  %321 = load float, ptr %6, align 4, !tbaa !47
  %322 = fpext float %321 to double
  %323 = load float, ptr %7, align 4, !tbaa !47
  %324 = fpext float %323 to double
  %325 = load float, ptr %312, align 4, !tbaa !47
  %326 = fpext float %325 to double
  %327 = call double @llvm.fmuladd.f64(double %326, double %320, double 0.000000e+00)
  %328 = fptrunc double %327 to float
  %329 = getelementptr inbounds float, ptr %312, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !47
  %331 = fpext float %330 to double
  %332 = call double @llvm.fmuladd.f64(double %331, double %320, double 0.000000e+00)
  %333 = fptrunc double %332 to float
  %334 = getelementptr inbounds float, ptr %312, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !47
  %336 = fpext float %335 to double
  %337 = call double @llvm.fmuladd.f64(double %336, double %320, double 0.000000e+00)
  %338 = fptrunc double %337 to float
  %339 = load float, ptr %315, align 4, !tbaa !47
  %340 = fpext float %339 to double
  %341 = fpext float %328 to double
  %342 = call double @llvm.fmuladd.f64(double %340, double %322, double %341)
  %343 = fptrunc double %342 to float
  %344 = getelementptr inbounds float, ptr %315, i64 1
  %345 = load float, ptr %344, align 4, !tbaa !47
  %346 = fpext float %345 to double
  %347 = fpext float %333 to double
  %348 = call double @llvm.fmuladd.f64(double %346, double %322, double %347)
  %349 = fptrunc double %348 to float
  %350 = getelementptr inbounds float, ptr %315, i64 2
  %351 = load float, ptr %350, align 4, !tbaa !47
  %352 = fpext float %351 to double
  %353 = fpext float %338 to double
  %354 = call double @llvm.fmuladd.f64(double %352, double %322, double %353)
  %355 = fptrunc double %354 to float
  %356 = load float, ptr %318, align 4, !tbaa !47
  %357 = fpext float %356 to double
  %358 = fpext float %343 to double
  %359 = call double @llvm.fmuladd.f64(double %357, double %324, double %358)
  %360 = fptrunc double %359 to float
  %361 = getelementptr inbounds float, ptr %318, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !47
  %363 = fpext float %362 to double
  %364 = fpext float %349 to double
  %365 = call double @llvm.fmuladd.f64(double %363, double %324, double %364)
  %366 = fptrunc double %365 to float
  %367 = getelementptr inbounds float, ptr %318, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !47
  %369 = fpext float %368 to double
  %370 = fpext float %355 to double
  %371 = call double @llvm.fmuladd.f64(double %369, double %324, double %370)
  %372 = fptrunc double %371 to float
  %373 = load ptr, ptr %258, align 8, !tbaa !46
  %374 = load i32, ptr %298, align 4, !tbaa !131
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.MVert, ptr %373, i64 %375
  %377 = load i32, ptr %302, align 8, !tbaa !132
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.MVert, ptr %373, i64 %378
  %380 = load i32, ptr %306, align 4, !tbaa !133
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.MVert, ptr %373, i64 %381
  %383 = load float, ptr %8, align 4, !tbaa !47
  %384 = fpext float %383 to double
  %385 = load float, ptr %9, align 4, !tbaa !47
  %386 = fpext float %385 to double
  %387 = load float, ptr %10, align 4, !tbaa !47
  %388 = fpext float %387 to double
  %389 = load float, ptr %376, align 4, !tbaa !47
  %390 = fpext float %389 to double
  %391 = call double @llvm.fmuladd.f64(double %390, double %384, double 0.000000e+00)
  %392 = fptrunc double %391 to float
  %393 = getelementptr inbounds float, ptr %376, i64 1
  %394 = load float, ptr %393, align 4, !tbaa !47
  %395 = fpext float %394 to double
  %396 = call double @llvm.fmuladd.f64(double %395, double %384, double 0.000000e+00)
  %397 = fptrunc double %396 to float
  %398 = getelementptr inbounds float, ptr %376, i64 2
  %399 = load float, ptr %398, align 4, !tbaa !47
  %400 = fpext float %399 to double
  %401 = call double @llvm.fmuladd.f64(double %400, double %384, double 0.000000e+00)
  %402 = fptrunc double %401 to float
  %403 = load float, ptr %379, align 4, !tbaa !47
  %404 = fpext float %403 to double
  %405 = fpext float %392 to double
  %406 = call double @llvm.fmuladd.f64(double %404, double %386, double %405)
  %407 = fptrunc double %406 to float
  %408 = getelementptr inbounds float, ptr %379, i64 1
  %409 = load float, ptr %408, align 4, !tbaa !47
  %410 = fpext float %409 to double
  %411 = fpext float %397 to double
  %412 = call double @llvm.fmuladd.f64(double %410, double %386, double %411)
  %413 = fptrunc double %412 to float
  %414 = getelementptr inbounds float, ptr %379, i64 2
  %415 = load float, ptr %414, align 4, !tbaa !47
  %416 = fpext float %415 to double
  %417 = fpext float %402 to double
  %418 = call double @llvm.fmuladd.f64(double %416, double %386, double %417)
  %419 = fptrunc double %418 to float
  %420 = load float, ptr %382, align 4, !tbaa !47
  %421 = fpext float %420 to double
  %422 = fpext float %407 to double
  %423 = call double @llvm.fmuladd.f64(double %421, double %388, double %422)
  %424 = fptrunc double %423 to float
  %425 = getelementptr inbounds float, ptr %382, i64 1
  %426 = load float, ptr %425, align 4, !tbaa !47
  %427 = fpext float %426 to double
  %428 = fpext float %413 to double
  %429 = call double @llvm.fmuladd.f64(double %427, double %388, double %428)
  %430 = fptrunc double %429 to float
  %431 = getelementptr inbounds float, ptr %382, i64 2
  %432 = load float, ptr %431, align 4, !tbaa !47
  %433 = fpext float %432 to double
  %434 = fpext float %419 to double
  %435 = call double @llvm.fmuladd.f64(double %433, double %388, double %434)
  %436 = fptrunc double %435 to float
  %437 = fsub float %424, %360
  %438 = fsub float %430, %366
  %439 = fsub float %436, %372
  %440 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 3
  %441 = load float, ptr %440, align 4, !tbaa !47
  %442 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 3, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !47
  %444 = fmul float %443, %438
  %445 = call float @llvm.fmuladd.f32(float %437, float %441, float %444)
  %446 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 3, i64 2
  %447 = load float, ptr %446, align 4, !tbaa !47
  %448 = call float @llvm.fmuladd.f32(float %439, float %447, float %445)
  %449 = fcmp ogt float %448, 0x3E80000000000000
  br i1 %449, label %450, label %682

450:                                              ; preds = %281
  %451 = fmul float %441, %448
  %452 = fmul float %443, %448
  %453 = fmul float %447, %448
  %454 = fsub float %437, %451
  %455 = fsub float %438, %452
  %456 = fsub float %439, %453
  %457 = load ptr, ptr %35, align 8, !tbaa !117
  %458 = getelementptr inbounds %struct.ClothCollSettings, ptr %457, i64 0, i32 3
  %459 = load float, ptr %458, align 8, !tbaa !138
  %460 = fmul float %459, 0x3F847AE140000000
  %461 = fmul float %448, %460
  %462 = fmul float %455, %455
  %463 = call float @llvm.fmuladd.f32(float %454, float %454, float %462)
  %464 = call float @llvm.fmuladd.f32(float %456, float %456, float %463)
  %465 = call float @sqrtf(float noundef %464) #7
  %466 = fcmp olt float %461, %465
  %467 = select i1 %466, float %461, float %465
  %468 = fcmp ogt float %467, 0x3E80000000000000
  br i1 %468, label %469, label %522

469:                                              ; preds = %450
  %470 = fcmp ogt float %464, 0x38AA95A5C0000000
  br i1 %470, label %471, label %477

471:                                              ; preds = %469
  %472 = call float @sqrtf(float noundef %464) #7
  %473 = fdiv float 1.000000e+00, %472
  %474 = fmul float %454, %473
  %475 = fmul float %455, %473
  %476 = fmul float %456, %473
  br label %477

477:                                              ; preds = %471, %469
  %478 = phi float [ %474, %471 ], [ 0.000000e+00, %469 ]
  %479 = phi float [ %475, %471 ], [ 0.000000e+00, %469 ]
  %480 = phi float [ %476, %471 ], [ 0.000000e+00, %469 ]
  %481 = call float @llvm.fmuladd.f32(float %319, float %319, float 1.000000e+00)
  %482 = call float @llvm.fmuladd.f32(float %321, float %321, float %481)
  %483 = call float @llvm.fmuladd.f32(float %323, float %323, float %482)
  %484 = fdiv float %467, %483
  %485 = fpext float %484 to double
  %486 = fmul float %319, %478
  %487 = fpext float %486 to double
  %488 = call double @llvm.fmuladd.f64(double %487, double %485, double 0.000000e+00)
  %489 = fptrunc double %488 to float
  store float %489, ptr %11, align 4, !tbaa !47
  %490 = fmul float %319, %479
  %491 = fpext float %490 to double
  %492 = call double @llvm.fmuladd.f64(double %491, double %485, double 0.000000e+00)
  %493 = fptrunc double %492 to float
  store float %493, ptr %48, align 4, !tbaa !47
  %494 = fmul float %319, %480
  %495 = fpext float %494 to double
  %496 = call double @llvm.fmuladd.f64(double %495, double %485, double 0.000000e+00)
  %497 = fptrunc double %496 to float
  store float %497, ptr %49, align 4, !tbaa !47
  %498 = fmul float %321, %478
  %499 = fpext float %498 to double
  %500 = call double @llvm.fmuladd.f64(double %499, double %485, double 0.000000e+00)
  %501 = fptrunc double %500 to float
  store float %501, ptr %12, align 4, !tbaa !47
  %502 = fmul float %321, %479
  %503 = fpext float %502 to double
  %504 = call double @llvm.fmuladd.f64(double %503, double %485, double 0.000000e+00)
  %505 = fptrunc double %504 to float
  store float %505, ptr %50, align 4, !tbaa !47
  %506 = fmul float %321, %480
  %507 = fpext float %506 to double
  %508 = call double @llvm.fmuladd.f64(double %507, double %485, double 0.000000e+00)
  %509 = fptrunc double %508 to float
  store float %509, ptr %51, align 4, !tbaa !47
  %510 = fmul float %323, %478
  %511 = fpext float %510 to double
  %512 = call double @llvm.fmuladd.f64(double %511, double %485, double 0.000000e+00)
  %513 = fptrunc double %512 to float
  store float %513, ptr %13, align 4, !tbaa !47
  %514 = fmul float %323, %479
  %515 = fpext float %514 to double
  %516 = call double @llvm.fmuladd.f64(double %515, double %485, double 0.000000e+00)
  %517 = fptrunc double %516 to float
  store float %517, ptr %52, align 4, !tbaa !47
  %518 = fmul float %323, %480
  %519 = fpext float %518 to double
  %520 = call double @llvm.fmuladd.f64(double %519, double %485, double 0.000000e+00)
  %521 = fptrunc double %520 to float
  store float %521, ptr %53, align 4, !tbaa !47
  br label %522

522:                                              ; preds = %477, %450
  %523 = fpext float %448 to double
  %524 = fmul float %319, %319
  %525 = fpext float %524 to double
  %526 = fadd double %525, 1.000000e+00
  %527 = fmul float %321, %321
  %528 = fpext float %527 to double
  %529 = fadd double %526, %528
  %530 = fmul float %323, %323
  %531 = fpext float %530 to double
  %532 = fadd double %529, %531
  %533 = fdiv double %523, %532
  %534 = load float, ptr %440, align 8, !tbaa !47
  %535 = fmul float %319, %534
  %536 = fpext float %535 to double
  %537 = load float, ptr %11, align 4, !tbaa !47
  %538 = fpext float %537 to double
  %539 = call double @llvm.fmuladd.f64(double %536, double %533, double %538)
  %540 = fptrunc double %539 to float
  store float %540, ptr %11, align 4, !tbaa !47
  %541 = load float, ptr %442, align 4, !tbaa !47
  %542 = fmul float %319, %541
  %543 = fpext float %542 to double
  %544 = load float, ptr %48, align 4, !tbaa !47
  %545 = fpext float %544 to double
  %546 = call double @llvm.fmuladd.f64(double %543, double %533, double %545)
  %547 = fptrunc double %546 to float
  store float %547, ptr %48, align 4, !tbaa !47
  %548 = load float, ptr %446, align 4, !tbaa !47
  %549 = fmul float %319, %548
  %550 = fpext float %549 to double
  %551 = load float, ptr %49, align 4, !tbaa !47
  %552 = fpext float %551 to double
  %553 = call double @llvm.fmuladd.f64(double %550, double %533, double %552)
  %554 = fptrunc double %553 to float
  store float %554, ptr %49, align 4, !tbaa !47
  %555 = load ptr, ptr %268, align 8, !tbaa !114
  %556 = load i32, ptr %284, align 8, !tbaa !126
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.ClothVertex, ptr %555, i64 %557, i32 12
  %559 = load i32, ptr %558, align 8, !tbaa !139
  %560 = add i32 %559, 1
  store i32 %560, ptr %558, align 8, !tbaa !139
  %561 = fmul float %321, %534
  %562 = fpext float %561 to double
  %563 = load float, ptr %12, align 4, !tbaa !47
  %564 = fpext float %563 to double
  %565 = call double @llvm.fmuladd.f64(double %562, double %533, double %564)
  %566 = fptrunc double %565 to float
  store float %566, ptr %12, align 4, !tbaa !47
  %567 = fmul float %321, %541
  %568 = fpext float %567 to double
  %569 = load float, ptr %50, align 4, !tbaa !47
  %570 = fpext float %569 to double
  %571 = call double @llvm.fmuladd.f64(double %568, double %533, double %570)
  %572 = fptrunc double %571 to float
  store float %572, ptr %50, align 4, !tbaa !47
  %573 = fmul float %321, %548
  %574 = fpext float %573 to double
  %575 = load float, ptr %51, align 4, !tbaa !47
  %576 = fpext float %575 to double
  %577 = call double @llvm.fmuladd.f64(double %574, double %533, double %576)
  %578 = fptrunc double %577 to float
  store float %578, ptr %51, align 4, !tbaa !47
  %579 = load i32, ptr %288, align 4, !tbaa !129
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.ClothVertex, ptr %555, i64 %580, i32 12
  %582 = load i32, ptr %581, align 8, !tbaa !139
  %583 = add i32 %582, 1
  store i32 %583, ptr %581, align 8, !tbaa !139
  %584 = fmul float %323, %534
  %585 = fpext float %584 to double
  %586 = load float, ptr %13, align 4, !tbaa !47
  %587 = fpext float %586 to double
  %588 = call double @llvm.fmuladd.f64(double %585, double %533, double %587)
  %589 = fptrunc double %588 to float
  store float %589, ptr %13, align 4, !tbaa !47
  %590 = fmul float %323, %541
  %591 = fpext float %590 to double
  %592 = load float, ptr %52, align 4, !tbaa !47
  %593 = fpext float %592 to double
  %594 = call double @llvm.fmuladd.f64(double %591, double %533, double %593)
  %595 = fptrunc double %594 to float
  store float %595, ptr %52, align 4, !tbaa !47
  %596 = fmul float %323, %548
  %597 = fpext float %596 to double
  %598 = load float, ptr %53, align 4, !tbaa !47
  %599 = fpext float %598 to double
  %600 = call double @llvm.fmuladd.f64(double %597, double %533, double %599)
  %601 = fptrunc double %600 to float
  store float %601, ptr %53, align 4, !tbaa !47
  %602 = load i32, ptr %292, align 8, !tbaa !130
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.ClothVertex, ptr %555, i64 %603, i32 12
  %605 = load i32, ptr %604, align 8, !tbaa !139
  %606 = add i32 %605, 1
  store i32 %606, ptr %604, align 8, !tbaa !139
  %607 = load ptr, ptr %21, align 8, !tbaa !111
  %608 = getelementptr inbounds %struct.ClothSimSettings, ptr %607, i64 0, i32 28
  %609 = load i32, ptr %608, align 4, !tbaa !141
  %610 = sitofp i32 %609 to float
  %611 = getelementptr inbounds %struct.ClothSimSettings, ptr %607, i64 0, i32 15
  %612 = load float, ptr %611, align 8, !tbaa !142
  %613 = fdiv float %610, %612
  %614 = load ptr, ptr %35, align 8, !tbaa !117
  %615 = getelementptr inbounds %struct.ClothCollSettings, ptr %614, i64 0, i32 1
  %616 = load float, ptr %615, align 8, !tbaa !121
  %617 = fmul float %616, 8.000000e+00
  %618 = fdiv float %617, 9.000000e+00
  %619 = fadd float %273, %618
  %620 = fpext float %619 to double
  %621 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 2
  %622 = load double, ptr %621, align 8, !tbaa !134
  %623 = fsub double %620, %622
  %624 = fptrunc double %623 to float
  %625 = fmul float %624, 0x3FB99999A0000000
  %626 = fmul float %613, %625
  %627 = fcmp olt float %448, %626
  %628 = fcmp ogt float %624, 0x3E80000000000000
  %629 = and i1 %628, %627
  br i1 %629, label %630, label %720

630:                                              ; preds = %522
  %631 = fdiv float %624, %613
  %632 = fneg float %448
  %633 = call float @llvm.fmuladd.f32(float %625, float %613, float %632)
  %634 = fcmp olt float %631, %633
  %635 = select i1 %634, float %631, float %633
  %636 = fcmp ogt double %533, 0x3E80000000000000
  br i1 %636, label %637, label %642

637:                                              ; preds = %630
  %638 = fmul double %533, 5.000000e+00
  %639 = fptrunc double %638 to float
  %640 = fcmp olt float %635, %639
  %641 = select i1 %640, float %635, float %639
  br label %642

642:                                              ; preds = %637, %630
  %643 = phi float [ %641, %637 ], [ %635, %630 ]
  %644 = fptrunc double %533 to float
  %645 = fcmp olt float %643, %644
  %646 = select i1 %645, float %644, float %643
  %647 = call float @llvm.fmuladd.f32(float %319, float %319, float 1.000000e+00)
  %648 = call float @llvm.fmuladd.f32(float %321, float %321, float %647)
  %649 = call float @llvm.fmuladd.f32(float %323, float %323, float %648)
  %650 = fdiv float %646, %649
  %651 = fpext float %650 to double
  %652 = fpext float %534 to double
  %653 = fpext float %540 to double
  %654 = call double @llvm.fmuladd.f64(double %652, double %651, double %653)
  %655 = fptrunc double %654 to float
  store float %655, ptr %11, align 4, !tbaa !47
  %656 = fpext float %541 to double
  %657 = fpext float %547 to double
  %658 = call double @llvm.fmuladd.f64(double %656, double %651, double %657)
  %659 = fptrunc double %658 to float
  store float %659, ptr %48, align 4, !tbaa !47
  %660 = fpext float %548 to double
  %661 = fpext float %554 to double
  %662 = call double @llvm.fmuladd.f64(double %660, double %651, double %661)
  %663 = fptrunc double %662 to float
  store float %663, ptr %49, align 4, !tbaa !47
  %664 = fpext float %566 to double
  %665 = call double @llvm.fmuladd.f64(double %652, double %651, double %664)
  %666 = fptrunc double %665 to float
  store float %666, ptr %12, align 4, !tbaa !47
  %667 = fpext float %572 to double
  %668 = call double @llvm.fmuladd.f64(double %656, double %651, double %667)
  %669 = fptrunc double %668 to float
  store float %669, ptr %50, align 4, !tbaa !47
  %670 = fpext float %578 to double
  %671 = call double @llvm.fmuladd.f64(double %660, double %651, double %670)
  %672 = fptrunc double %671 to float
  store float %672, ptr %51, align 4, !tbaa !47
  %673 = fpext float %589 to double
  %674 = call double @llvm.fmuladd.f64(double %652, double %651, double %673)
  %675 = fptrunc double %674 to float
  store float %675, ptr %13, align 4, !tbaa !47
  %676 = fpext float %595 to double
  %677 = call double @llvm.fmuladd.f64(double %656, double %651, double %676)
  %678 = fptrunc double %677 to float
  store float %678, ptr %52, align 4, !tbaa !47
  %679 = fpext float %601 to double
  %680 = call double @llvm.fmuladd.f64(double %660, double %651, double %679)
  %681 = fptrunc double %680 to float
  store float %681, ptr %53, align 4, !tbaa !47
  br label %720

682:                                              ; preds = %281
  %683 = load ptr, ptr %35, align 8, !tbaa !117
  %684 = getelementptr inbounds %struct.ClothCollSettings, ptr %683, i64 0, i32 1
  %685 = load float, ptr %684, align 8, !tbaa !121
  %686 = fmul float %685, 8.000000e+00
  %687 = fdiv float %686, 9.000000e+00
  %688 = fadd float %271, %687
  %689 = getelementptr inbounds %struct.CollPair, ptr %275, i64 0, i32 2
  %690 = load double, ptr %689, align 8, !tbaa !134
  %691 = fptrunc double %690 to float
  %692 = fsub float %688, %691
  %693 = fcmp ogt float %692, 0x3E80000000000000
  br i1 %693, label %694, label %720

694:                                              ; preds = %682
  %695 = load ptr, ptr %21, align 8, !tbaa !111
  %696 = getelementptr inbounds %struct.ClothSimSettings, ptr %695, i64 0, i32 28
  %697 = load i32, ptr %696, align 4, !tbaa !141
  %698 = sitofp i32 %697 to float
  %699 = getelementptr inbounds %struct.ClothSimSettings, ptr %695, i64 0, i32 15
  %700 = load float, ptr %699, align 8, !tbaa !142
  %701 = fdiv float %698, %700
  %702 = fdiv float %692, %701
  %703 = call float @llvm.fmuladd.f32(float %319, float %319, float 1.000000e+00)
  %704 = call float @llvm.fmuladd.f32(float %321, float %321, float %703)
  %705 = call float @llvm.fmuladd.f32(float %323, float %323, float %704)
  %706 = fmul float %705, 3.000000e+00
  %707 = fdiv float %702, %706
  %708 = call float @llvm.fmuladd.f32(float %441, float %707, float 0.000000e+00)
  store float %708, ptr %11, align 4, !tbaa !47
  %709 = call float @llvm.fmuladd.f32(float %443, float %707, float 0.000000e+00)
  store float %709, ptr %48, align 4, !tbaa !47
  %710 = call float @llvm.fmuladd.f32(float %447, float %707, float 0.000000e+00)
  store float %710, ptr %49, align 4, !tbaa !47
  store float %708, ptr %12, align 4, !tbaa !47
  store float %709, ptr %50, align 4, !tbaa !47
  store float %710, ptr %51, align 4, !tbaa !47
  store float %708, ptr %13, align 4, !tbaa !47
  store float %709, ptr %52, align 4, !tbaa !47
  store float %710, ptr %53, align 4, !tbaa !47
  %711 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %311, i32 12
  %712 = load i32, ptr %711, align 8, !tbaa !139
  %713 = add i32 %712, 1
  store i32 %713, ptr %711, align 8, !tbaa !139
  %714 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %314, i32 12
  %715 = load i32, ptr %714, align 8, !tbaa !139
  %716 = add i32 %715, 1
  store i32 %716, ptr %714, align 8, !tbaa !139
  %717 = getelementptr inbounds %struct.ClothVertex, ptr %283, i64 %317, i32 12
  %718 = load i32, ptr %717, align 8, !tbaa !139
  %719 = add i32 %718, 1
  store i32 %719, ptr %717, align 8, !tbaa !139
  br label %720

720:                                              ; preds = %694, %682, %642, %522
  %721 = phi i32 [ 1, %694 ], [ %276, %682 ], [ 1, %642 ], [ 1, %522 ]
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %786, label %723

723:                                              ; preds = %720
  %724 = load ptr, ptr %268, align 8, !tbaa !114
  %725 = load i32, ptr %284, align 8, !tbaa !126
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %726, i32 12
  %728 = load i32, ptr %727, align 8, !tbaa !139
  %729 = icmp eq i32 %728, 0
  %730 = load i32, ptr %288, align 4, !tbaa !129
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %731, i32 12
  %733 = load i32, ptr %732, align 8, !tbaa !139
  %734 = icmp eq i32 %733, 0
  %735 = load i32, ptr %292, align 8, !tbaa !130
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %736, i32 12
  %738 = load i32, ptr %737, align 8, !tbaa !139
  %739 = icmp eq i32 %738, 0
  br label %740

740:                                              ; preds = %723, %783
  %741 = phi i64 [ 0, %723 ], [ %784, %783 ]
  br i1 %729, label %755, label %742

742:                                              ; preds = %740
  %743 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %726, i32 10, i64 %741
  %744 = load float, ptr %743, align 4, !tbaa !47
  %745 = fcmp olt float %744, 0.000000e+00
  %746 = fneg float %744
  %747 = select i1 %745, float %746, float %744
  %748 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %741
  %749 = load float, ptr %748, align 4, !tbaa !47
  %750 = fcmp olt float %749, 0.000000e+00
  %751 = fneg float %749
  %752 = select i1 %750, float %751, float %749
  %753 = fcmp olt float %747, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %742
  store float %749, ptr %743, align 4, !tbaa !47
  br label %755

755:                                              ; preds = %754, %742, %740
  br i1 %734, label %769, label %756

756:                                              ; preds = %755
  %757 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %731, i32 10, i64 %741
  %758 = load float, ptr %757, align 4, !tbaa !47
  %759 = fcmp olt float %758, 0.000000e+00
  %760 = fneg float %758
  %761 = select i1 %759, float %760, float %758
  %762 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %741
  %763 = load float, ptr %762, align 4, !tbaa !47
  %764 = fcmp olt float %763, 0.000000e+00
  %765 = fneg float %763
  %766 = select i1 %764, float %765, float %763
  %767 = fcmp olt float %761, %766
  br i1 %767, label %768, label %769

768:                                              ; preds = %756
  store float %763, ptr %757, align 4, !tbaa !47
  br label %769

769:                                              ; preds = %768, %756, %755
  br i1 %739, label %783, label %770

770:                                              ; preds = %769
  %771 = getelementptr inbounds %struct.ClothVertex, ptr %724, i64 %736, i32 10, i64 %741
  %772 = load float, ptr %771, align 4, !tbaa !47
  %773 = fcmp olt float %772, 0.000000e+00
  %774 = fneg float %772
  %775 = select i1 %773, float %774, float %772
  %776 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %741
  %777 = load float, ptr %776, align 4, !tbaa !47
  %778 = fcmp olt float %777, 0.000000e+00
  %779 = fneg float %777
  %780 = select i1 %778, float %779, float %777
  %781 = fcmp olt float %775, %780
  br i1 %781, label %782, label %783

782:                                              ; preds = %770
  store float %777, ptr %771, align 4, !tbaa !47
  br label %783

783:                                              ; preds = %782, %770, %769
  %784 = add nuw nsw i64 %741, 1
  %785 = icmp eq i64 %784, 3
  br i1 %785, label %786, label %740, !llvm.loop !143

786:                                              ; preds = %783, %720, %274
  %787 = phi i32 [ %276, %274 ], [ %721, %720 ], [ %721, %783 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  %788 = getelementptr inbounds %struct.CollPair, ptr %275, i64 1
  %789 = icmp eq ptr %788, %251
  br i1 %789, label %790, label %274, !llvm.loop !144

790:                                              ; preds = %786, %266
  %791 = phi i32 [ 0, %266 ], [ %787, %786 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %792 = icmp eq i32 %791, 0
  %793 = select i1 %792, i1 true, i1 %259
  br i1 %793, label %821, label %794

794:                                              ; preds = %790, %817
  %795 = phi i64 [ %819, %817 ], [ 0, %790 ]
  %796 = phi i32 [ %818, %817 ], [ %262, %790 ]
  %797 = getelementptr inbounds %struct.ClothVertex, ptr %255, i64 %795, i32 12
  %798 = load i32, ptr %797, align 8, !tbaa !139
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %817, label %800

800:                                              ; preds = %794
  %801 = getelementptr inbounds %struct.ClothVertex, ptr %255, i64 %795, i32 7
  %802 = load float, ptr %801, align 4, !tbaa !47
  %803 = getelementptr inbounds %struct.ClothVertex, ptr %255, i64 %795, i32 10
  %804 = load float, ptr %803, align 8, !tbaa !47
  %805 = fadd float %802, %804
  store float %805, ptr %801, align 4, !tbaa !47
  %806 = getelementptr inbounds float, ptr %801, i64 1
  %807 = load float, ptr %806, align 4, !tbaa !47
  %808 = getelementptr inbounds float, ptr %803, i64 1
  %809 = load float, ptr %808, align 4, !tbaa !47
  %810 = fadd float %807, %809
  store float %810, ptr %806, align 4, !tbaa !47
  %811 = getelementptr inbounds float, ptr %801, i64 2
  %812 = load float, ptr %811, align 4, !tbaa !47
  %813 = getelementptr inbounds float, ptr %803, i64 2
  %814 = load float, ptr %813, align 4, !tbaa !47
  %815 = fadd float %812, %814
  store float %815, ptr %811, align 4, !tbaa !47
  store float 0.000000e+00, ptr %803, align 4, !tbaa !47
  store float 0.000000e+00, ptr %808, align 4, !tbaa !47
  store float 0.000000e+00, ptr %813, align 4, !tbaa !47
  store i32 0, ptr %797, align 8, !tbaa !139
  %816 = add nsw i32 %796, 1
  br label %817

817:                                              ; preds = %800, %794
  %818 = phi i32 [ %816, %800 ], [ %796, %794 ]
  %819 = add nuw nsw i64 %795, 1
  %820 = icmp eq i64 %819, %260
  br i1 %820, label %821, label %794, !llvm.loop !145

821:                                              ; preds = %817, %790, %261
  %822 = phi i32 [ %262, %790 ], [ %262, %261 ], [ %818, %817 ]
  %823 = phi i1 [ %792, %790 ], [ true, %261 ], [ false, %817 ]
  %824 = add nuw nsw i32 %263, 1
  %825 = icmp ne i32 %263, 0
  %826 = select i1 %823, i1 true, i1 %825
  br i1 %826, label %827, label %261, !llvm.loop !146

827:                                              ; preds = %821
  %828 = add nsw i32 %822, %83
  %829 = add nsw i32 %828, %84
  br label %830

830:                                              ; preds = %827, %91
  %831 = phi i32 [ %829, %827 ], [ %84, %91 ]
  %832 = phi i32 [ %828, %827 ], [ %83, %91 ]
  br i1 %95, label %833, label %835

833:                                              ; preds = %830
  %834 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %834(ptr noundef nonnull %92) #7
  br label %835

835:                                              ; preds = %830, %833, %81
  %836 = phi i32 [ %84, %81 ], [ %831, %833 ], [ %831, %830 ]
  %837 = phi i32 [ %83, %81 ], [ %832, %833 ], [ %832, %830 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  %838 = add nuw nsw i64 %82, 1
  %839 = load i32, ptr %14, align 4, !tbaa !62
  %840 = zext i32 %839 to i64
  %841 = icmp ult i64 %838, %840
  br i1 %841, label %81, label %842, !llvm.loop !147

842:                                              ; preds = %835, %68
  %843 = phi i32 [ 0, %68 ], [ %836, %835 ]
  %844 = phi i32 [ %69, %68 ], [ %837, %835 ]
  %845 = phi i32 [ %74, %68 ], [ %839, %835 ]
  %846 = add nuw nsw i32 %71, 1
  %847 = icmp eq i32 %845, 0
  br i1 %847, label %860, label %848

848:                                              ; preds = %842
  %849 = zext i32 %845 to i64
  br label %850

850:                                              ; preds = %848, %857
  %851 = phi i64 [ 0, %848 ], [ %858, %857 ]
  %852 = getelementptr inbounds ptr, ptr %77, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !63
  %854 = icmp eq ptr %853, null
  br i1 %854, label %857, label %855

855:                                              ; preds = %850
  %856 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %856(ptr noundef nonnull %853) #7
  br label %857

857:                                              ; preds = %850, %855
  %858 = add nuw nsw i64 %851, 1
  %859 = icmp eq i64 %858, %849
  br i1 %859, label %860, label %850, !llvm.loop !148

860:                                              ; preds = %857, %842
  %861 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %861(ptr noundef %77) #7
  %862 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %862(ptr noundef %79) #7
  %863 = icmp eq i32 %72, 0
  br i1 %863, label %900, label %864

864:                                              ; preds = %860
  %865 = load ptr, ptr %21, align 8, !tbaa !111
  %866 = getelementptr inbounds %struct.ClothSimSettings, ptr %865, i64 0, i32 29
  %867 = load i32, ptr %866, align 8, !tbaa !112
  %868 = and i32 %867, 8
  %869 = icmp eq i32 %868, 0
  %870 = zext i32 %72 to i64
  br label %871

871:                                              ; preds = %864, %897
  %872 = phi i64 [ 0, %864 ], [ %898, %897 ]
  br i1 %869, label %878, label %873

873:                                              ; preds = %871
  %874 = getelementptr inbounds %struct.ClothVertex, ptr %70, i64 %872
  %875 = load i32, ptr %874, align 8, !tbaa !149
  %876 = and i32 %875, 1
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %897

878:                                              ; preds = %873, %871
  %879 = getelementptr inbounds %struct.ClothVertex, ptr %70, i64 %872, i32 6
  %880 = load float, ptr %879, align 8, !tbaa !47
  %881 = getelementptr inbounds %struct.ClothVertex, ptr %70, i64 %872, i32 7
  %882 = load float, ptr %881, align 4, !tbaa !47
  %883 = fadd float %880, %882
  %884 = getelementptr inbounds %struct.ClothVertex, ptr %70, i64 %872, i32 5
  store float %883, ptr %884, align 4, !tbaa !47
  %885 = getelementptr inbounds float, ptr %879, i64 1
  %886 = load float, ptr %885, align 4, !tbaa !47
  %887 = getelementptr inbounds float, ptr %881, i64 1
  %888 = load float, ptr %887, align 4, !tbaa !47
  %889 = fadd float %886, %888
  %890 = getelementptr inbounds float, ptr %884, i64 1
  store float %889, ptr %890, align 4, !tbaa !47
  %891 = getelementptr inbounds float, ptr %879, i64 2
  %892 = load float, ptr %891, align 4, !tbaa !47
  %893 = getelementptr inbounds float, ptr %881, i64 2
  %894 = load float, ptr %893, align 4, !tbaa !47
  %895 = fadd float %892, %894
  %896 = getelementptr inbounds float, ptr %884, i64 2
  store float %895, ptr %896, align 4, !tbaa !47
  br label %897

897:                                              ; preds = %873, %878
  %898 = add nuw nsw i64 %872, 1
  %899 = icmp eq i64 %898, %870
  br i1 %899, label %900, label %871, !llvm.loop !150

900:                                              ; preds = %897, %860
  %901 = load ptr, ptr %35, align 8, !tbaa !117
  %902 = getelementptr inbounds %struct.ClothCollSettings, ptr %901, i64 0, i32 7
  %903 = load i32, ptr %902, align 8, !tbaa !151
  %904 = and i32 %903, 4
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %1130, label %906

906:                                              ; preds = %900
  %907 = load ptr, ptr %35, align 8, !tbaa !117
  %908 = getelementptr inbounds %struct.ClothCollSettings, ptr %907, i64 0, i32 8
  %909 = load i16, ptr %908, align 4, !tbaa !152
  %910 = icmp eq i16 %909, 0
  br i1 %910, label %1091, label %911

911:                                              ; preds = %906, %1082
  %912 = phi i32 [ %1085, %1082 ], [ 0, %906 ]
  %913 = phi i32 [ %1084, %1082 ], [ %844, %906 ]
  %914 = phi i32 [ %1083, %1082 ], [ %843, %906 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  store i32 0, ptr %16, align 4, !tbaa !62
  %915 = load i32, ptr %31, align 8, !tbaa !115
  %916 = load ptr, ptr %18, align 8, !tbaa !114
  %917 = load ptr, ptr %54, align 8, !tbaa !153
  %918 = icmp eq ptr %917, null
  br i1 %918, label %1082, label %919

919:                                              ; preds = %911
  %920 = call ptr @BLI_bvhtree_overlap(ptr noundef nonnull %917, ptr noundef nonnull %917, ptr noundef nonnull %16) #7
  %921 = load i32, ptr %16, align 4, !tbaa !62
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %1076, label %923

923:                                              ; preds = %919, %1069
  %924 = phi i64 [ %1072, %1069 ], [ 0, %919 ]
  %925 = phi i32 [ %1071, %1069 ], [ %913, %919 ]
  %926 = phi i32 [ %1070, %1069 ], [ %914, %919 ]
  %927 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %920, i64 %924
  %928 = load i32, ptr %927, align 4, !tbaa !123
  %929 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %920, i64 %924, i32 1
  %930 = load i32, ptr %929, align 4, !tbaa !125
  %931 = load ptr, ptr %35, align 8, !tbaa !117
  %932 = getelementptr inbounds %struct.ClothCollSettings, ptr %931, i64 0, i32 4
  %933 = load float, ptr %932, align 4, !tbaa !154
  %934 = load ptr, ptr %18, align 8, !tbaa !114
  %935 = zext i32 %928 to i64
  %936 = getelementptr inbounds %struct.ClothVertex, ptr %934, i64 %935, i32 13
  %937 = load float, ptr %936, align 4, !tbaa !155
  %938 = zext i32 %930 to i64
  %939 = getelementptr inbounds %struct.ClothVertex, ptr %934, i64 %938
  %940 = getelementptr inbounds %struct.ClothVertex, ptr %934, i64 %938, i32 13
  %941 = load float, ptr %940, align 4, !tbaa !155
  %942 = fadd float %937, %941
  %943 = fmul float %933, %942
  %944 = load ptr, ptr %21, align 8, !tbaa !111
  %945 = getelementptr inbounds %struct.ClothSimSettings, ptr %944, i64 0, i32 29
  %946 = load i32, ptr %945, align 8, !tbaa !112
  %947 = and i32 %946, 8
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %958, label %949

949:                                              ; preds = %923
  %950 = getelementptr inbounds %struct.ClothVertex, ptr %934, i64 %935
  %951 = load i32, ptr %950, align 8, !tbaa !149
  %952 = and i32 %951, 1
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %958, label %954

954:                                              ; preds = %949
  %955 = load i32, ptr %939, align 8, !tbaa !149
  %956 = and i32 %955, 1
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %1069

958:                                              ; preds = %949, %954, %923
  %959 = getelementptr inbounds %struct.ClothVertex, ptr %934, i64 %935
  %960 = load i32, ptr %959, align 8, !tbaa !149
  %961 = and i32 %960, 2
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1069

963:                                              ; preds = %958
  %964 = load i32, ptr %939, align 8, !tbaa !149
  %965 = and i32 %964, 2
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %1069

967:                                              ; preds = %963
  %968 = getelementptr inbounds %struct.ClothVertex, ptr %916, i64 %935, i32 5
  %969 = getelementptr inbounds %struct.ClothVertex, ptr %916, i64 %938, i32 5
  %970 = load float, ptr %968, align 4, !tbaa !47
  %971 = load float, ptr %969, align 4, !tbaa !47
  %972 = fsub float %970, %971
  %973 = getelementptr inbounds float, ptr %968, i64 1
  %974 = load float, ptr %973, align 4, !tbaa !47
  %975 = getelementptr inbounds float, ptr %969, i64 1
  %976 = load float, ptr %975, align 4, !tbaa !47
  %977 = fsub float %974, %976
  %978 = getelementptr inbounds float, ptr %968, i64 2
  %979 = load float, ptr %978, align 4, !tbaa !47
  %980 = getelementptr inbounds float, ptr %969, i64 2
  %981 = load float, ptr %980, align 4, !tbaa !47
  %982 = fsub float %979, %981
  %983 = fcmp olt float %972, 0.000000e+00
  %984 = fneg float %972
  %985 = select i1 %983, float %984, float %972
  %986 = fcmp ogt float %985, %943
  br i1 %986, label %1069, label %987

987:                                              ; preds = %967
  %988 = fcmp olt float %977, 0.000000e+00
  %989 = fneg float %977
  %990 = select i1 %988, float %989, float %977
  %991 = fcmp ogt float %990, %943
  br i1 %991, label %1069, label %992

992:                                              ; preds = %987
  %993 = fcmp olt float %982, 0.000000e+00
  %994 = fneg float %982
  %995 = select i1 %993, float %994, float %982
  %996 = fcmp ogt float %995, %943
  br i1 %996, label %1069, label %997

997:                                              ; preds = %992
  %998 = load ptr, ptr %55, align 8, !tbaa !156
  %999 = call zeroext i8 @BLI_edgeset_haskey(ptr noundef %998, i32 noundef %928, i32 noundef %930) #7
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1001, label %1069

1001:                                             ; preds = %997
  %1002 = fmul float %977, %977
  %1003 = call float @llvm.fmuladd.f32(float %972, float %972, float %1002)
  %1004 = call float @llvm.fmuladd.f32(float %982, float %982, float %1003)
  %1005 = fcmp ogt float %1004, 0x38AA95A5C0000000
  br i1 %1005, label %1006, label %1012

1006:                                             ; preds = %1001
  %1007 = call float @sqrtf(float noundef %1004) #7
  %1008 = fdiv float 1.000000e+00, %1007
  %1009 = fmul float %972, %1008
  %1010 = fmul float %977, %1008
  %1011 = fmul float %982, %1008
  br label %1012

1012:                                             ; preds = %1001, %1006
  %1013 = phi float [ %1010, %1006 ], [ 0.000000e+00, %1001 ]
  %1014 = phi float [ %1009, %1006 ], [ 0.000000e+00, %1001 ]
  %1015 = phi float [ %1011, %1006 ], [ 0.000000e+00, %1001 ]
  %1016 = phi float [ %1007, %1006 ], [ 0.000000e+00, %1001 ]
  %1017 = fcmp olt float %1016, %943
  br i1 %1017, label %1018, label %1069

1018:                                             ; preds = %1012
  %1019 = fsub float %943, %1016
  %1020 = load ptr, ptr %18, align 8, !tbaa !114
  %1021 = getelementptr inbounds %struct.ClothVertex, ptr %1020, i64 %935
  %1022 = load i32, ptr %1021, align 8, !tbaa !149
  %1023 = and i32 %1022, 1
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1035, label %1025

1025:                                             ; preds = %1018
  %1026 = load float, ptr %969, align 4, !tbaa !47
  %1027 = fmul float %1014, %1019
  %1028 = fsub float %1026, %1027
  store float %1028, ptr %969, align 4, !tbaa !47
  %1029 = load float, ptr %975, align 4, !tbaa !47
  %1030 = fmul float %1013, %1019
  %1031 = fsub float %1029, %1030
  store float %1031, ptr %975, align 4, !tbaa !47
  %1032 = load float, ptr %980, align 4, !tbaa !47
  %1033 = fmul float %1015, %1019
  %1034 = fsub float %1032, %1033
  store float %1034, ptr %980, align 4, !tbaa !47
  br label %1067

1035:                                             ; preds = %1018
  %1036 = getelementptr inbounds %struct.ClothVertex, ptr %1020, i64 %938
  %1037 = load i32, ptr %1036, align 8, !tbaa !149
  %1038 = and i32 %1037, 1
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1050, label %1040

1040:                                             ; preds = %1035
  %1041 = fmul float %1014, %1019
  %1042 = fmul float %1013, %1019
  %1043 = fmul float %1015, %1019
  %1044 = load float, ptr %968, align 4, !tbaa !47
  %1045 = fadd float %1041, %1044
  store float %1045, ptr %968, align 4, !tbaa !47
  %1046 = load float, ptr %973, align 4, !tbaa !47
  %1047 = fadd float %1042, %1046
  store float %1047, ptr %973, align 4, !tbaa !47
  %1048 = load float, ptr %978, align 4, !tbaa !47
  %1049 = fadd float %1043, %1048
  store float %1049, ptr %978, align 4, !tbaa !47
  br label %1067

1050:                                             ; preds = %1035
  %1051 = fmul float %1019, -5.000000e-01
  %1052 = fmul float %1014, %1051
  %1053 = fmul float %1013, %1051
  %1054 = fmul float %1015, %1051
  %1055 = load float, ptr %969, align 4, !tbaa !47
  %1056 = fadd float %1052, %1055
  store float %1056, ptr %969, align 4, !tbaa !47
  %1057 = load float, ptr %975, align 4, !tbaa !47
  %1058 = fadd float %1053, %1057
  store float %1058, ptr %975, align 4, !tbaa !47
  %1059 = load float, ptr %980, align 4, !tbaa !47
  %1060 = fadd float %1054, %1059
  store float %1060, ptr %980, align 4, !tbaa !47
  %1061 = load float, ptr %968, align 4, !tbaa !47
  %1062 = fsub float %1061, %1052
  store float %1062, ptr %968, align 4, !tbaa !47
  %1063 = load float, ptr %973, align 4, !tbaa !47
  %1064 = fsub float %1063, %1053
  store float %1064, ptr %973, align 4, !tbaa !47
  %1065 = load float, ptr %978, align 4, !tbaa !47
  %1066 = fsub float %1065, %1054
  store float %1066, ptr %978, align 4, !tbaa !47
  br label %1067

1067:                                             ; preds = %1040, %1050, %1025
  %1068 = add nsw i32 %926, 1
  br label %1069

1069:                                             ; preds = %1067, %1012, %997, %967, %987, %992, %958, %963, %954
  %1070 = phi i32 [ %926, %954 ], [ %926, %963 ], [ %926, %958 ], [ %926, %992 ], [ %926, %987 ], [ %926, %967 ], [ %926, %997 ], [ %1068, %1067 ], [ %926, %1012 ]
  %1071 = phi i32 [ %925, %954 ], [ %925, %963 ], [ %925, %958 ], [ %925, %992 ], [ %925, %987 ], [ %925, %967 ], [ %925, %997 ], [ 1, %1067 ], [ %925, %1012 ]
  %1072 = add nuw nsw i64 %924, 1
  %1073 = load i32, ptr %16, align 4, !tbaa !62
  %1074 = zext i32 %1073 to i64
  %1075 = icmp ult i64 %1072, %1074
  br i1 %1075, label %923, label %1076, !llvm.loop !157

1076:                                             ; preds = %1069, %919
  %1077 = phi i32 [ %914, %919 ], [ %1070, %1069 ]
  %1078 = phi i32 [ %913, %919 ], [ %1071, %1069 ]
  %1079 = icmp eq ptr %920, null
  br i1 %1079, label %1082, label %1080

1080:                                             ; preds = %1076
  %1081 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %1081(ptr noundef nonnull %920) #7
  br label %1082

1082:                                             ; preds = %1076, %1080, %911
  %1083 = phi i32 [ %1077, %1080 ], [ %1077, %1076 ], [ %914, %911 ]
  %1084 = phi i32 [ %1078, %1080 ], [ %1078, %1076 ], [ %913, %911 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  %1085 = add nuw i32 %912, 1
  %1086 = load ptr, ptr %35, align 8, !tbaa !117
  %1087 = getelementptr inbounds %struct.ClothCollSettings, ptr %1086, i64 0, i32 8
  %1088 = load i16, ptr %1087, align 4, !tbaa !152
  %1089 = sext i16 %1088 to i32
  %1090 = icmp ult i32 %1085, %1089
  br i1 %1090, label %911, label %1091, !llvm.loop !158

1091:                                             ; preds = %1082, %906
  %1092 = phi i32 [ %843, %906 ], [ %1083, %1082 ]
  %1093 = phi i32 [ %844, %906 ], [ %1084, %1082 ]
  %1094 = phi ptr [ %70, %906 ], [ %916, %1082 ]
  %1095 = phi i32 [ %72, %906 ], [ %915, %1082 ]
  %1096 = icmp eq i32 %1092, 0
  br i1 %1096, label %1130, label %1097

1097:                                             ; preds = %1091
  %1098 = load i32, ptr %31, align 8, !tbaa !115
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1130, label %1100

1100:                                             ; preds = %1097
  %1101 = zext i32 %1098 to i64
  br label %1102

1102:                                             ; preds = %1100, %1127
  %1103 = phi i64 [ 0, %1100 ], [ %1128, %1127 ]
  %1104 = getelementptr inbounds %struct.ClothVertex, ptr %1094, i64 %1103
  %1105 = load i32, ptr %1104, align 8, !tbaa !149
  %1106 = and i32 %1105, 1
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1108, label %1127

1108:                                             ; preds = %1102
  %1109 = getelementptr inbounds %struct.ClothVertex, ptr %1094, i64 %1103, i32 7
  %1110 = getelementptr inbounds %struct.ClothVertex, ptr %1094, i64 %1103, i32 5
  %1111 = getelementptr inbounds %struct.ClothVertex, ptr %1094, i64 %1103, i32 6
  %1112 = load float, ptr %1110, align 4, !tbaa !47
  %1113 = load float, ptr %1111, align 4, !tbaa !47
  %1114 = fsub float %1112, %1113
  store float %1114, ptr %1109, align 4, !tbaa !47
  %1115 = getelementptr inbounds float, ptr %1110, i64 1
  %1116 = load float, ptr %1115, align 4, !tbaa !47
  %1117 = getelementptr inbounds float, ptr %1111, i64 1
  %1118 = load float, ptr %1117, align 4, !tbaa !47
  %1119 = fsub float %1116, %1118
  %1120 = getelementptr inbounds float, ptr %1109, i64 1
  store float %1119, ptr %1120, align 4, !tbaa !47
  %1121 = getelementptr inbounds float, ptr %1110, i64 2
  %1122 = load float, ptr %1121, align 4, !tbaa !47
  %1123 = getelementptr inbounds float, ptr %1111, i64 2
  %1124 = load float, ptr %1123, align 4, !tbaa !47
  %1125 = fsub float %1122, %1124
  %1126 = getelementptr inbounds float, ptr %1109, i64 2
  store float %1125, ptr %1126, align 4, !tbaa !47
  br label %1127

1127:                                             ; preds = %1102, %1108
  %1128 = add nuw nsw i64 %1103, 1
  %1129 = icmp eq i64 %1128, %1101
  br i1 %1129, label %1130, label %1102, !llvm.loop !159

1130:                                             ; preds = %1127, %1097, %1091, %900
  %1131 = phi i32 [ 0, %1091 ], [ %843, %900 ], [ 1, %1097 ], [ 1, %1127 ]
  %1132 = phi i32 [ %1093, %1091 ], [ %844, %900 ], [ %1093, %1097 ], [ %1093, %1127 ]
  %1133 = phi ptr [ %1094, %1091 ], [ %70, %900 ], [ %1094, %1097 ], [ %1094, %1127 ]
  %1134 = phi i32 [ %1095, %1091 ], [ %72, %900 ], [ %1095, %1097 ], [ %1095, %1127 ]
  %1135 = icmp eq i32 %1131, 0
  br i1 %1135, label %1142, label %1136

1136:                                             ; preds = %1130
  %1137 = load ptr, ptr %35, align 8, !tbaa !117
  %1138 = getelementptr inbounds %struct.ClothCollSettings, ptr %1137, i64 0, i32 9
  %1139 = load i16, ptr %1138, align 2, !tbaa !160
  %1140 = sext i16 %1139 to i32
  %1141 = icmp slt i32 %846, %1140
  br i1 %1141, label %68, label %1142, !llvm.loop !161

1142:                                             ; preds = %1136, %1130
  %1143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %1143(ptr noundef nonnull %39) #7
  %1144 = call i32 @llvm.smin.i32(i32 %1132, i32 1)
  %1145 = or i32 %1144, 1
  br label %1146

1146:                                             ; preds = %29, %4, %1142
  %1147 = phi i32 [ %1145, %1142 ], [ 0, %4 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  ret i32 %1147
}

declare void @bvhtree_update_from_cloth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bvhselftree_update_from_cloth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_edgeset_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BLI_bvhtree_getepsilon(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @collision_compute_barycentric(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #5 {
  %8 = load float, ptr %1, align 4, !tbaa !47
  %9 = load float, ptr %3, align 4, !tbaa !47
  %10 = fsub float %8, %9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !47
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !47
  %16 = fsub float %13, %15
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds float, ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = fsub float %19, %21
  %23 = fpext float %22 to double
  %24 = load float, ptr %2, align 4, !tbaa !47
  %25 = fsub float %24, %9
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !47
  %29 = fsub float %28, %15
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !47
  %33 = fsub float %32, %21
  %34 = fpext float %33 to double
  %35 = fmul double %17, %17
  %36 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %35)
  %37 = tail call double @llvm.fmuladd.f64(double %23, double %23, double %36)
  %38 = fmul double %17, %30
  %39 = tail call double @llvm.fmuladd.f64(double %11, double %26, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %23, double %34, double %39)
  %41 = fmul double %30, %30
  %42 = tail call double @llvm.fmuladd.f64(double %26, double %26, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %42)
  %44 = fneg double %40
  %45 = fmul double %40, %44
  %46 = tail call double @llvm.fmuladd.f64(double %37, double %43, double %45)
  %47 = fcmp olt double %46, 0.000000e+00
  %48 = fneg double %46
  %49 = select i1 %47, double %48, double %46
  %50 = fcmp olt double %49, 0x3E80000000000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %7
  store float 0x3FD5555560000000, ptr %6, align 4, !tbaa !47
  store float 0x3FD5555560000000, ptr %5, align 4, !tbaa !47
  store float 0x3FD5555560000000, ptr %4, align 4, !tbaa !47
  br label %85

52:                                               ; preds = %7
  %53 = getelementptr inbounds float, ptr %0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !47
  %55 = fsub float %54, %21
  %56 = fpext float %55 to double
  %57 = load float, ptr %0, align 4, !tbaa !47
  %58 = fsub float %57, %9
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds float, ptr %0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !47
  %62 = fsub float %61, %15
  %63 = fpext float %62 to double
  %64 = fmul double %30, %63
  %65 = tail call double @llvm.fmuladd.f64(double %26, double %59, double %64)
  %66 = tail call double @llvm.fmuladd.f64(double %34, double %56, double %65)
  %67 = fmul double %17, %63
  %68 = tail call double @llvm.fmuladd.f64(double %11, double %59, double %67)
  %69 = tail call double @llvm.fmuladd.f64(double %23, double %56, double %68)
  %70 = fmul double %66, %44
  %71 = tail call double @llvm.fmuladd.f64(double %69, double %43, double %70)
  %72 = fdiv double %71, %46
  %73 = fptrunc double %72 to float
  %74 = fcmp olt float %73, 0.000000e+00
  %75 = select i1 %74, float 0.000000e+00, float %73
  store float %75, ptr %4, align 4, !tbaa !47
  %76 = fpext float %75 to double
  %77 = tail call double @llvm.fmuladd.f64(double %44, double %76, double %66)
  %78 = fdiv double %77, %43
  %79 = fptrunc double %78 to float
  %80 = fcmp olt float %79, 0.000000e+00
  %81 = select i1 %80, float 0.000000e+00, float %79
  store float %81, ptr %5, align 4, !tbaa !47
  %82 = load float, ptr %4, align 4, !tbaa !47
  %83 = fsub float 1.000000e+00, %82
  %84 = fsub float %83, %81
  store float %84, ptr %6, align 4, !tbaa !47
  br label %85

85:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !40, i64 168}
!35 = !{!"CollisionModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !40, i64 168, !40, i64 172, !41, i64 176, !41, i64 180, !37, i64 184}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 120}
!43 = !{!35, !37, i64 112}
!44 = !{!35, !37, i64 144}
!45 = !{!35, !37, i64 136}
!46 = !{!35, !37, i64 152}
!47 = !{!41, !41, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!35, !37, i64 184}
!52 = !{!35, !37, i64 160}
!53 = !{!35, !40, i64 172}
!54 = !{!55, !40, i64 0}
!55 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !38, i64 18, !38, i64 19}
!56 = !{!"short", !38, i64 0}
!57 = !{!55, !40, i64 4}
!58 = !{!55, !40, i64 8}
!59 = !{!55, !40, i64 12}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = !{!40, !40, i64 0}
!63 = !{!37, !37, i64 0}
!64 = !{!65, !37, i64 16}
!65 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !56, i64 32, !38, i64 34}
!66 = distinct !{!66, !49, !50}
!67 = !{!68, !40, i64 16}
!68 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !56, i64 28, !56, i64 30, !37, i64 32}
!69 = !{!70, !40, i64 944}
!70 = !{!"Object", !71, i64 0, !37, i64 120, !37, i64 128, !56, i64 136, !56, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !72, i64 312, !37, i64 360, !73, i64 368, !73, i64 384, !73, i64 400, !73, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !56, i64 948, !56, i64 950, !56, i64 952, !56, i64 954, !56, i64 956, !56, i64 958, !56, i64 960, !56, i64 962, !56, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !56, i64 1036, !56, i64 1038, !56, i64 1040, !38, i64 1042, !38, i64 1043, !56, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !73, i64 1056, !73, i64 1072, !73, i64 1088, !73, i64 1104, !41, i64 1120, !56, i64 1124, !56, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !56, i64 1162, !38, i64 1164, !73, i64 1176, !73, i64 1192, !73, i64 1208, !73, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !56, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !74, i64 1304, !74, i64 1312, !40, i64 1320, !40, i64 1324, !73, i64 1328, !73, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !73, i64 1400, !37, i64 1416}
!71 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !56, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!72 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!73 = !{!"ListBase", !37, i64 0, !37, i64 8}
!74 = !{!"long", !38, i64 0}
!75 = !{!76, !40, i64 232}
!76 = !{!"Scene", !71, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !73, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !56, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !77, i64 280, !86, i64 4264, !73, i64 4296, !73, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !56, i64 4376, !56, i64 4378, !40, i64 4380, !73, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !37, i64 4608, !92, i64 4616, !37, i64 4640, !74, i64 4648, !74, i64 4656, !79, i64 4664, !80, i64 4824, !93, i64 4888, !37, i64 4952}
!77 = !{!"RenderData", !78, i64 0, !37, i64 248, !37, i64 256, !81, i64 264, !82, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !56, i64 432, !56, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !40, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !40, i64 484, !40, i64 488, !56, i64 492, !56, i64 494, !40, i64 496, !40, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !83, i64 544, !83, i64 560, !84, i64 576, !73, i64 592, !56, i64 608, !56, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !41, i64 660, !41, i64 664, !56, i64 668, !56, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !56, i64 1708, !56, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !56, i64 2524, !56, i64 2526, !41, i64 2528, !41, i64 2532, !56, i64 2536, !56, i64 2538, !41, i64 2540, !56, i64 2544, !56, i64 2546, !40, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !85, i64 2616, !40, i64 3976, !40, i64 3980}
!78 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !56, i64 8, !56, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !79, i64 24, !80, i64 184}
!79 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!80 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!81 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !56, i64 48, !56, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!82 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!83 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!84 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!85 = !{!"BakeData", !78, i64 0, !38, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!86 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !56, i64 20, !56, i64 22, !41, i64 24, !41, i64 28}
!87 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!88 = !{!"GameData", !87, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !38, i64 34, !89, i64 40, !56, i64 64, !56, i64 66, !41, i64 68, !90, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!89 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!90 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !56, i64 52, !56, i64 54}
!91 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !56, i64 6}
!92 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!93 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!94 = !{!68, !37, i64 32}
!95 = distinct !{!95, !49, !50}
!96 = !{!70, !37, i64 1240}
!97 = !{!98, !56, i64 4}
!98 = !{!"PartDeflect", !40, i64 0, !56, i64 4, !56, i64 6, !56, i64 8, !56, i64 10, !56, i64 12, !56, i64 14, !56, i64 16, !56, i64 18, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !37, i64 128, !37, i64 136, !41, i64 144, !40, i64 148, !37, i64 152}
!99 = !{!70, !37, i64 1256}
!100 = distinct !{!100, !49, !50}
!101 = distinct !{!101, !49, !50}
!102 = distinct !{!102, !49, !50}
!103 = !{!104, !37, i64 16}
!104 = !{!"ColliderCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!105 = !{!104, !37, i64 24}
!106 = distinct !{!106, !49, !50}
!107 = !{!108, !37, i64 120}
!108 = !{!"ClothModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !73, i64 152}
!109 = !{!110, !37, i64 32}
!110 = !{!"Cloth", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !56, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84}
!111 = !{!108, !37, i64 128}
!112 = !{!113, !40, i64 128}
!113 = !{!"ClothSimSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !38, i64 156, !37, i64 160}
!114 = !{!110, !37, i64 0}
!115 = !{!110, !40, i64 16}
!116 = !{!108, !37, i64 112}
!117 = !{!108, !37, i64 136}
!118 = !{!119, !37, i64 40}
!119 = !{!"ClothCollSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !40, i64 32, !56, i64 36, !56, i64 38, !37, i64 40, !56, i64 48, !56, i64 50, !40, i64 52}
!120 = distinct !{!120, !49, !50}
!121 = !{!119, !41, i64 8}
!122 = !{!110, !37, i64 48}
!123 = !{!124, !40, i64 0}
!124 = !{!"BVHTreeOverlap", !40, i64 0, !40, i64 4}
!125 = !{!124, !40, i64 4}
!126 = !{!127, !40, i64 72}
!127 = !{!"CollPair", !40, i64 0, !40, i64 4, !128, i64 8, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !40, i64 64, !41, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !38, i64 96}
!128 = !{!"double", !38, i64 0}
!129 = !{!127, !40, i64 76}
!130 = !{!127, !40, i64 80}
!131 = !{!127, !40, i64 84}
!132 = !{!127, !40, i64 88}
!133 = !{!127, !40, i64 92}
!134 = !{!127, !128, i64 8}
!135 = !{!127, !40, i64 64}
!136 = distinct !{!136, !49, !50}
!137 = distinct !{!137, !49, !50}
!138 = !{!119, !41, i64 16}
!139 = !{!140, !40, i64 120}
!140 = !{!"ClothVertex", !40, i64 0, !38, i64 4, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !38, i64 64, !38, i64 76, !41, i64 88, !41, i64 92, !38, i64 96, !37, i64 112, !40, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !41, i64 144}
!141 = !{!113, !40, i64 124}
!142 = !{!113, !41, i64 72}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = distinct !{!146, !49, !50}
!147 = distinct !{!147, !49, !50}
!148 = distinct !{!148, !49, !50}
!149 = !{!140, !40, i64 0}
!150 = distinct !{!150, !49, !50}
!151 = !{!119, !40, i64 32}
!152 = !{!119, !56, i64 36}
!153 = !{!110, !37, i64 40}
!154 = !{!119, !41, i64 20}
!155 = !{!140, !41, i64 124}
!156 = !{!110, !37, i64 72}
!157 = distinct !{!157, !49, !50}
!158 = distinct !{!158, !49, !50}
!159 = distinct !{!159, !49, !50}
!160 = !{!119, !56, i64 38}
!161 = distinct !{!161, !49, !50}
