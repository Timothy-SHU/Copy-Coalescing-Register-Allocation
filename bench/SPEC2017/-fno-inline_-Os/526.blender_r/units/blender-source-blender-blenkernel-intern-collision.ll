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
%struct.ClothVertex = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], ptr, i32, float, float, float, float, i32, float }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.CollPair = type { i32, i32, double, [3 x float], [3 x float], [3 x float], [3 x float], i32, float, i32, i32, i32, i32, i32, i32, [4 x i32] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @collision_move_object(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 6
  br label %16

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %49, %16 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.MVert, ptr %18, i64 %17
  %20 = load ptr, ptr %10, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.MVert, ptr %20, i64 %17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %21) #13
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = load float, ptr %4, align 4, !tbaa !44
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %2, float %22)
  %25 = load ptr, ptr %11, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.MVert, ptr %25, i64 %17
  store float %24, ptr %26, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.MVert, ptr %20, i64 %17, i32 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = load float, ptr %12, align 4, !tbaa !44
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %2, float %28)
  %31 = getelementptr inbounds %struct.MVert, ptr %25, i64 %17, i32 0, i64 1
  store float %30, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.MVert, ptr %20, i64 %17, i32 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !44
  %34 = load float, ptr %13, align 4, !tbaa !44
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %2, float %33)
  %36 = getelementptr inbounds %struct.MVert, ptr %25, i64 %17, i32 0, i64 2
  store float %35, ptr %36, align 4, !tbaa !44
  %37 = load float, ptr %21, align 4, !tbaa !44
  %38 = tail call float @llvm.fmuladd.f32(float %23, float %1, float %37)
  %39 = load ptr, ptr %14, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.MVert, ptr %39, i64 %17
  store float %38, ptr %40, align 4, !tbaa !44
  %41 = load float, ptr %27, align 4, !tbaa !44
  %42 = tail call float @llvm.fmuladd.f32(float %29, float %1, float %41)
  %43 = getelementptr inbounds %struct.MVert, ptr %39, i64 %17, i32 0, i64 1
  store float %42, ptr %43, align 4, !tbaa !44
  %44 = load float, ptr %32, align 4, !tbaa !44
  %45 = tail call float @llvm.fmuladd.f32(float %34, float %1, float %44)
  %46 = getelementptr inbounds %struct.MVert, ptr %39, i64 %17, i32 0, i64 2
  store float %45, ptr %46, align 4, !tbaa !44
  %47 = load ptr, ptr %15, align 8, !tbaa !47
  %48 = getelementptr inbounds %struct.MVert, ptr %47, i64 %17
  tail call fastcc void @sub_v3_v3v3(ptr noundef %48, ptr noundef nonnull %40, ptr noundef nonnull %26) #13
  %49 = add nuw nsw i64 %17, 1
  %50 = load i32, ptr %5, align 8, !tbaa !34
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %16, label %53, !llvm.loop !48

53:                                               ; preds = %16, %3
  %54 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !52
  %60 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  tail call void @bvhtree_update_from_mvert(ptr noundef %55, ptr noundef %57, i32 noundef %59, ptr noundef %61, ptr noundef %63, i32 poison, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !53 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bvhtree_update_from_mvert(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [12 x float], align 16
  %9 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #12
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %3, null
  %12 = or i1 %10, %11
  br i1 %12, label %73, label %13

13:                                               ; preds = %7
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %13
  %16 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 3
  %17 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 6
  %18 = getelementptr inbounds [12 x float], ptr %8, i64 0, i64 9
  %19 = icmp ne i32 %6, 0
  %20 = icmp ne ptr %4, null
  %21 = and i1 %20, %19
  %22 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 3
  %23 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 6
  %24 = getelementptr inbounds [12 x float], ptr %9, i64 0, i64 9
  br label %25

25:                                               ; preds = %65, %15
  %26 = phi ptr [ %1, %15 ], [ %69, %65 ]
  %27 = phi i32 [ 0, %15 ], [ %68, %65 ]
  %28 = load i32, ptr %26, align 4, !tbaa !54
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %3, i64 %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %30) #13
  %31 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %3, i64 %33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %34) #13
  %35 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !58
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MVert, ptr %3, i64 %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %38) #13
  %39 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !59
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %25
  %43 = zext i32 %40 to i64
  %44 = getelementptr inbounds %struct.MVert, ptr %3, i64 %43
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %44) #13
  br label %45

45:                                               ; preds = %42, %25
  br i1 %21, label %46, label %62

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.MVert, ptr %4, i64 %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %47) #13
  %48 = load i32, ptr %31, align 4, !tbaa !57
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.MVert, ptr %4, i64 %49
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %50) #13
  %51 = load i32, ptr %35, align 4, !tbaa !58
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.MVert, ptr %4, i64 %52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %53) #13
  %54 = load i32, ptr %39, align 4, !tbaa !59
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds %struct.MVert, ptr %4, i64 %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %58) #13
  br label %59

59:                                               ; preds = %56, %46
  %60 = phi i32 [ 4, %56 ], [ 3, %46 ]
  %61 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %60) #14
  br label %65

62:                                               ; preds = %45
  %63 = select i1 %41, i32 3, i32 4
  %64 = call zeroext i8 @BLI_bvhtree_update_node(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull %8, ptr noundef null, i32 noundef %63) #14
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i8 [ %61, %59 ], [ %64, %62 ]
  %67 = icmp ne i8 %66, 0
  %68 = add nuw nsw i32 %27, 1
  %69 = getelementptr inbounds %struct.MFace, ptr %26, i64 1
  %70 = icmp slt i32 %68, %2
  %71 = select i1 %67, i1 %70, i1 false
  br i1 %71, label %25, label %72, !llvm.loop !60

72:                                               ; preds = %65, %13
  call void @BLI_bvhtree_update_tree(ptr noundef nonnull %0) #14
  br label %73

73:                                               ; preds = %72, %7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bvhtree_build_from_mvert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [12 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #12
  %7 = shl i32 %1, 1
  %8 = tail call ptr @BLI_bvhtree_new(i32 noundef %7, float noundef %4, i8 noundef zeroext 4, i8 noundef zeroext 26) #14
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 3
  %12 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 6
  %13 = getelementptr inbounds [12 x float], ptr %6, i64 0, i64 9
  %14 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %10, %35
  %16 = phi ptr [ %0, %10 ], [ %40, %35 ]
  %17 = phi i32 [ 0, %10 ], [ %39, %35 ]
  %18 = load i32, ptr %16, align 4, !tbaa !54
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.MVert, ptr %2, i64 %19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !57
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MVert, ptr %2, i64 %23
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !58
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MVert, ptr %2, i64 %27
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %15
  %33 = zext i32 %30 to i64
  %34 = getelementptr inbounds %struct.MVert, ptr %2, i64 %33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %34) #13
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, ptr %14, align 4, !tbaa !59
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 3, i32 4
  call void @BLI_bvhtree_insert(ptr noundef %8, i32 noundef %17, ptr noundef nonnull %6, i32 noundef %38) #14
  %39 = add nuw i32 %17, 1
  %40 = getelementptr inbounds %struct.MFace, ptr %16, i64 1
  %41 = icmp eq i32 %39, %1
  br i1 %41, label %42, label %15, !llvm.loop !61

42:                                               ; preds = %35, %5
  call void @BLI_bvhtree_balance(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !62 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLI_bvhtree_update_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_bvhtree_update_tree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_collisionobjects(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 100, ptr %8, align 4, !tbaa !63
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %11 = tail call ptr %10(i64 noundef 800, ptr noundef nonnull @.str) #14
  store ptr %11, ptr %6, align 8, !tbaa !64
  %12 = icmp eq ptr %2, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %21, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  call fastcc void @add_collision_object(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %20, ptr noundef %1, i32 noundef 0, i32 noundef %4) #13
  %21 = load ptr, ptr %18, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %17, !llvm.loop !67

23:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  store ptr %0, ptr %9, align 8, !tbaa !64
  %24 = call ptr @_setlooper_base_step(ptr noundef nonnull %9, ptr noundef null) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  br label %29

29:                                               ; preds = %26, %43
  %30 = phi ptr [ %24, %26 ], [ %44, %43 ]
  %31 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !68
  %33 = load i32, ptr %27, align 8, !tbaa !70
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, ptr %28, align 8, !tbaa !76
  %38 = and i32 %37, %32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !95
  call fastcc void @add_collision_object(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %42, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %4) #13
  br label %43

43:                                               ; preds = %36, %40
  %44 = call ptr @_setlooper_base_step(ptr noundef nonnull %9, ptr noundef nonnull %30) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %29, !llvm.loop !96

46:                                               ; preds = %43, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br label %47

47:                                               ; preds = %17, %13, %46
  %48 = load i32, ptr %7, align 4, !tbaa !63
  store i32 %48, ptr %3, align 4, !tbaa !63
  %49 = load ptr, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_collision_object(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !97 {
  %8 = icmp eq ptr %3, %4
  br i1 %8, label %56, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %6, 23
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PartDeflect, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 4, !tbaa !99
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %9, %15
  %20 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef %6) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 4, !tbaa !63
  %24 = load i32, ptr %2, align 4, !tbaa !63
  %25 = icmp ult i32 %23, %24
  %26 = load ptr, ptr %0, align 8, !tbaa !64
  br i1 %25, label %34, label %27

27:                                               ; preds = %22
  %28 = shl i32 %24, 1
  store i32 %28, ptr %2, align 4, !tbaa !63
  %29 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !64
  %30 = zext i32 %28 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = tail call ptr %29(ptr noundef %26, i64 noundef %31, ptr noundef nonnull @__func__.add_collision_object) #14
  store ptr %32, ptr %0, align 8, !tbaa !64
  %33 = load i32, ptr %1, align 4, !tbaa !63
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i32 [ %33, %27 ], [ %23, %22 ]
  %36 = phi ptr [ %32, %27 ], [ %26, %22 ]
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  store ptr %3, ptr %38, align 8, !tbaa !64
  %39 = add i32 %35, 1
  store i32 %39, ptr %1, align 4, !tbaa !63
  br label %40

40:                                               ; preds = %11, %15, %34, %19
  %41 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 112
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = icmp ne ptr %42, null
  %44 = icmp eq i32 %5, 0
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Group, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %54, %50 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.GroupObject, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  tail call fastcc void @add_collision_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %53, ptr noundef %4, i32 noundef 1, i32 noundef %6) #13
  %54 = load ptr, ptr %51, align 8, !tbaa !64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %50, !llvm.loop !102

56:                                               ; preds = %50, %46, %40, %7
  ret void
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_collider_cache(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %2, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  call fastcc void @add_collider_cache_object(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %1, i32 noundef 0) #13
  %15 = load ptr, ptr %12, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %11, !llvm.loop !103

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr %0, ptr %5, align 8, !tbaa !64
  %18 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef null) #14
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
  %27 = load i32, ptr %26, align 8, !tbaa !68
  %28 = load i32, ptr %22, align 8, !tbaa !70
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  call fastcc void @add_collider_cache_object(ptr noundef nonnull %4, ptr noundef %33, ptr noundef %1, i32 noundef 0) #13
  br label %34

34:                                               ; preds = %25, %31
  %35 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef nonnull %24) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23, !llvm.loop !104

37:                                               ; preds = %34, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %38

38:                                               ; preds = %11, %7, %37
  %39 = load ptr, ptr %4, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_collider_cache_object(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !105 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %49, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 1
  %12 = load i16, ptr %11, align 4, !tbaa !99
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @modifiers_findByType(ptr noundef nonnull %1, i32 noundef 23) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.CollisionModifierData, ptr %15, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %26 = tail call ptr %25(i64 noundef 16, ptr noundef nonnull @.str.2) #14
  store ptr %26, ptr %0, align 8, !tbaa !64
  br label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %29 = tail call ptr %28(i64 noundef 32, ptr noundef nonnull @.str.3) #14
  %30 = getelementptr inbounds %struct.ColliderCache, ptr %29, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.ColliderCache, ptr %29, i64 0, i32 3
  store ptr %15, ptr %31, align 8, !tbaa !108
  tail call void @collision_move_object(ptr noundef nonnull %15, float noundef 1.000000e+00, float noundef 0.000000e+00) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void @BLI_addtail(ptr noundef %32, ptr noundef %29) #14
  br label %33

33:                                               ; preds = %6, %10, %27, %17, %14
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = icmp ne ptr %35, null
  %37 = icmp eq i32 %3, 0
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Group, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %47, %43 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.GroupObject, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  tail call fastcc void @add_collider_cache_object(ptr noundef %0, ptr noundef %46, ptr noundef %2, i32 noundef 1) #13
  %47 = load ptr, ptr %44, align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %43, !llvm.loop !109

49:                                               ; preds = %43, %39, %33, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_collider_cache(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #14
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %5(ptr noundef %6) #14
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cloth_bvh_objcollision(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 8
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !63
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 29
  %16 = load i32, ptr %15, align 8, !tbaa !115
  %17 = and i32 %16, 4
  %18 = icmp ne i32 %17, 0
  %19 = icmp eq ptr %12, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %358, label %21

21:                                               ; preds = %4
  %22 = load ptr, ptr %10, align 8, !tbaa !117
  %23 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !118
  tail call void @bvhtree_update_from_cloth(ptr noundef nonnull %1, i32 noundef 1) #14
  tail call void @bvhselftree_update_from_cloth(ptr noundef nonnull %1, i32 noundef 0) #14
  %25 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  %29 = getelementptr inbounds %struct.ClothCollSettings, ptr %28, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = call ptr @get_collisionobjects(ptr noundef %26, ptr noundef %0, ptr noundef %30, ptr noundef nonnull %5, i32 noundef 23) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %358, label %33

33:                                               ; preds = %21
  %34 = load i32, ptr %5, align 4, !tbaa !63
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = fadd float %2, %3
  %38 = zext i32 %34 to i64
  br label %44

39:                                               ; preds = %53, %33
  %40 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 9
  %41 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %43 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 13
  br label %56

44:                                               ; preds = %36, %53
  %45 = phi i64 [ 0, %36 ], [ %54, %53 ]
  %46 = getelementptr inbounds ptr, ptr %31, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = tail call ptr @modifiers_findByType(ptr noundef %47, i32 noundef 23) #14
  %49 = getelementptr inbounds %struct.CollisionModifierData, ptr %48, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  tail call void @collision_move_object(ptr noundef nonnull %48, float noundef %37, float noundef %2) #13
  br label %53

53:                                               ; preds = %44, %52
  %54 = add nuw nsw i64 %45, 1
  %55 = icmp eq i64 %54, %38
  br i1 %55, label %39, label %44, !llvm.loop !123

56:                                               ; preds = %39, %344
  %57 = phi i32 [ %348, %344 ], [ 0, %39 ]
  %58 = phi ptr [ %347, %344 ], [ %22, %39 ]
  %59 = phi i32 [ %123, %344 ], [ 0, %39 ]
  %60 = phi i32 [ %346, %344 ], [ %24, %39 ]
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %62 = load i32, ptr %5, align 4, !tbaa !63
  %63 = zext i32 %62 to i64
  %64 = shl nuw nsw i64 %63, 3
  %65 = call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.1) #14
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %67 = call ptr %66(i64 noundef %64, ptr noundef nonnull @.str.1) #14
  %68 = icmp eq i32 %62, 0
  br i1 %68, label %120, label %69

69:                                               ; preds = %56, %104
  %70 = phi i64 [ %107, %104 ], [ 0, %56 ]
  %71 = phi i32 [ %106, %104 ], [ %57, %56 ]
  %72 = phi i32 [ %105, %104 ], [ 0, %56 ]
  %73 = getelementptr inbounds ptr, ptr %31, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = call ptr @modifiers_findByType(ptr noundef %74, i32 noundef 23) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !tbaa !63
  %76 = getelementptr inbounds %struct.CollisionModifierData, ptr %75, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = icmp eq ptr %77, null
  br i1 %78, label %104, label %79

79:                                               ; preds = %69
  %80 = call ptr @BLI_bvhtree_overlap(ptr noundef %12, ptr noundef nonnull %77, ptr noundef nonnull %6) #14
  %81 = load i32, ptr %6, align 4, !tbaa !63
  %82 = icmp ne i32 %81, 0
  %83 = icmp ne ptr %80, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = getelementptr inbounds ptr, ptr %65, i64 %70
  %87 = getelementptr inbounds ptr, ptr %67, i64 %70
  %88 = load ptr, ptr %27, align 8, !tbaa !120
  %89 = getelementptr inbounds %struct.ClothCollSettings, ptr %88, i64 0, i32 9
  %90 = load i16, ptr %89, align 2, !tbaa !124
  %91 = sitofp i16 %90 to float
  %92 = fdiv float %3, %91
  %93 = fpext float %92 to double
  call fastcc void @cloth_bvh_objcollisions_nearcheck(ptr noundef %1, ptr noundef nonnull %75, ptr noundef %86, ptr noundef %87, i32 noundef %81, ptr noundef nonnull %80, double noundef %93) #13
  %94 = load ptr, ptr %86, align 8, !tbaa !64
  %95 = load ptr, ptr %87, align 8, !tbaa !64
  %96 = call fastcc i32 @cloth_bvh_objcollisions_resolve(ptr noundef %1, ptr noundef nonnull %75, ptr noundef %94, ptr noundef %95) #13
  %97 = add nsw i32 %96, %71
  %98 = add nsw i32 %97, %72
  br label %100

99:                                               ; preds = %79
  br i1 %83, label %100, label %104

100:                                              ; preds = %85, %99
  %101 = phi i32 [ %97, %85 ], [ %71, %99 ]
  %102 = phi i32 [ %98, %85 ], [ %72, %99 ]
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %103(ptr noundef nonnull %80) #14
  br label %104

104:                                              ; preds = %99, %100, %69
  %105 = phi i32 [ %72, %69 ], [ %102, %100 ], [ %72, %99 ]
  %106 = phi i32 [ %71, %69 ], [ %101, %100 ], [ %71, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %107 = add nuw nsw i64 %70, 1
  %108 = icmp eq i64 %107, %63
  br i1 %108, label %109, label %69, !llvm.loop !125

109:                                              ; preds = %104
  br i1 %68, label %120, label %110

110:                                              ; preds = %109, %117
  %111 = phi i64 [ %118, %117 ], [ 0, %109 ]
  %112 = getelementptr inbounds ptr, ptr %65, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %116(ptr noundef nonnull %113) #14
  br label %117

117:                                              ; preds = %110, %115
  %118 = add nuw nsw i64 %111, 1
  %119 = icmp eq i64 %118, %63
  br i1 %119, label %120, label %110, !llvm.loop !126

120:                                              ; preds = %117, %56, %109
  %121 = phi i32 [ %106, %109 ], [ %57, %56 ], [ %106, %117 ]
  %122 = phi i32 [ %105, %109 ], [ 0, %56 ], [ %105, %117 ]
  %123 = add nuw nsw i32 %59, 1
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %124(ptr noundef %65) #14
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %125(ptr noundef %67) #14
  %126 = icmp eq i32 %60, 0
  br i1 %126, label %157, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %13, align 8, !tbaa !114
  %129 = getelementptr inbounds %struct.ClothSimSettings, ptr %128, i64 0, i32 29
  %130 = load i32, ptr %129, align 8, !tbaa !115
  %131 = and i32 %130, 8
  %132 = icmp eq i32 %131, 0
  %133 = zext i32 %60 to i64
  br label %134

134:                                              ; preds = %127, %154
  %135 = phi i64 [ 0, %127 ], [ %155, %154 ]
  br i1 %132, label %141, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.ClothVertex, ptr %58, i64 %135
  %138 = load i32, ptr %137, align 8, !tbaa !127
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136, %134
  %142 = getelementptr inbounds %struct.ClothVertex, ptr %58, i64 %135, i32 6
  %143 = getelementptr inbounds %struct.ClothVertex, ptr %58, i64 %135, i32 7
  %144 = getelementptr inbounds %struct.ClothVertex, ptr %58, i64 %135, i32 5
  %145 = load <2 x float>, ptr %142, align 8, !tbaa !44
  %146 = load <2 x float>, ptr %143, align 4, !tbaa !44
  %147 = fadd <2 x float> %145, %146
  store <2 x float> %147, ptr %144, align 4, !tbaa !44
  %148 = getelementptr inbounds float, ptr %142, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !44
  %150 = getelementptr inbounds float, ptr %143, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !44
  %152 = fadd float %149, %151
  %153 = getelementptr inbounds float, ptr %144, i64 2
  store float %152, ptr %153, align 4, !tbaa !44
  br label %154

154:                                              ; preds = %136, %141
  %155 = add nuw nsw i64 %135, 1
  %156 = icmp eq i64 %155, %133
  br i1 %156, label %157, label %134, !llvm.loop !129

157:                                              ; preds = %154, %120
  %158 = load ptr, ptr %27, align 8, !tbaa !120
  %159 = getelementptr inbounds %struct.ClothCollSettings, ptr %158, i64 0, i32 7
  %160 = load i32, ptr %159, align 8, !tbaa !130
  %161 = and i32 %160, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %340, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.ClothCollSettings, ptr %158, i64 0, i32 8
  %165 = load i16, ptr %164, align 4, !tbaa !131
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %313, label %167

167:                                              ; preds = %163, %304
  %168 = phi i32 [ %307, %304 ], [ 0, %163 ]
  %169 = phi i32 [ %306, %304 ], [ %121, %163 ]
  %170 = phi i32 [ %305, %304 ], [ %122, %163 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !63
  %171 = load i32, ptr %23, align 8, !tbaa !118
  %172 = load ptr, ptr %10, align 8, !tbaa !117
  %173 = load ptr, ptr %40, align 8, !tbaa !132
  %174 = icmp eq ptr %173, null
  br i1 %174, label %304, label %175

175:                                              ; preds = %167
  %176 = call ptr @BLI_bvhtree_overlap(ptr noundef nonnull %173, ptr noundef nonnull %173, ptr noundef nonnull %7) #14
  %177 = load i32, ptr %7, align 4, !tbaa !63
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %298, label %179

179:                                              ; preds = %175, %291
  %180 = phi i64 [ %294, %291 ], [ 0, %175 ]
  %181 = phi i32 [ %293, %291 ], [ %169, %175 ]
  %182 = phi i32 [ %292, %291 ], [ %170, %175 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %183 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %176, i64 %180
  %184 = load i32, ptr %183, align 4, !tbaa !133
  %185 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %176, i64 %180, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !135
  %187 = load ptr, ptr %27, align 8, !tbaa !120
  %188 = getelementptr inbounds %struct.ClothCollSettings, ptr %187, i64 0, i32 4
  %189 = load float, ptr %188, align 4, !tbaa !136
  %190 = load ptr, ptr %10, align 8, !tbaa !117
  %191 = zext i32 %184 to i64
  %192 = getelementptr inbounds %struct.ClothVertex, ptr %190, i64 %191, i32 13
  %193 = load float, ptr %192, align 4, !tbaa !137
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds %struct.ClothVertex, ptr %190, i64 %194
  %196 = getelementptr inbounds %struct.ClothVertex, ptr %190, i64 %194, i32 13
  %197 = load float, ptr %196, align 4, !tbaa !137
  %198 = fadd float %193, %197
  %199 = fmul float %189, %198
  %200 = load ptr, ptr %13, align 8, !tbaa !114
  %201 = getelementptr inbounds %struct.ClothSimSettings, ptr %200, i64 0, i32 29
  %202 = load i32, ptr %201, align 8, !tbaa !115
  %203 = and i32 %202, 8
  %204 = icmp eq i32 %203, 0
  %205 = getelementptr inbounds %struct.ClothVertex, ptr %190, i64 %191
  %206 = load i32, ptr %205, align 8, !tbaa !127
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %204, i1 true, i1 %208
  br i1 %209, label %217, label %210

210:                                              ; preds = %179
  %211 = load i32, ptr %195, align 8, !tbaa !127
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  %214 = and i32 %206, 2
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %220, label %291

217:                                              ; preds = %179
  %218 = and i32 %206, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %291

220:                                              ; preds = %210, %217
  %221 = load i32, ptr %195, align 8, !tbaa !127
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %291

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.ClothVertex, ptr %172, i64 %191, i32 5
  %226 = getelementptr inbounds %struct.ClothVertex, ptr %172, i64 %194, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %225, ptr noundef nonnull %226) #13
  %227 = load float, ptr %8, align 8
  %228 = fcmp olt float %227, 0.000000e+00
  %229 = fneg float %227
  %230 = select i1 %228, float %229, float %227
  %231 = fcmp ogt float %230, %199
  br i1 %231, label %291, label %232

232:                                              ; preds = %224
  %233 = load float, ptr %41, align 4
  %234 = fcmp olt float %233, 0.000000e+00
  %235 = fneg float %233
  %236 = select i1 %234, float %235, float %233
  %237 = fcmp ogt float %236, %199
  br i1 %237, label %291, label %238

238:                                              ; preds = %232
  %239 = load float, ptr %42, align 8
  %240 = fcmp olt float %239, 0.000000e+00
  %241 = fneg float %239
  %242 = select i1 %240, float %241, float %239
  %243 = fcmp ogt float %242, %199
  br i1 %243, label %291, label %244

244:                                              ; preds = %238
  %245 = load ptr, ptr %43, align 8, !tbaa !138
  %246 = call zeroext i8 @BLI_edgeset_haskey(ptr noundef %245, i32 noundef %184, i32 noundef %186) #14
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %291

248:                                              ; preds = %244
  %249 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #13
  %250 = fcmp olt float %249, %199
  br i1 %250, label %251, label %291

251:                                              ; preds = %248
  %252 = fsub float %199, %249
  %253 = load ptr, ptr %10, align 8, !tbaa !117
  %254 = getelementptr inbounds %struct.ClothVertex, ptr %253, i64 %191
  %255 = load i32, ptr %254, align 8, !tbaa !127
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %251
  %259 = fneg float %252
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %259) #13
  %260 = load <2 x float>, ptr %226, align 4, !tbaa !44
  %261 = load <2 x float>, ptr %8, align 8, !tbaa !44
  %262 = fadd <2 x float> %260, %261
  store <2 x float> %262, ptr %226, align 4, !tbaa !44
  %263 = getelementptr inbounds float, ptr %226, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !44
  %265 = load float, ptr %42, align 8, !tbaa !44
  %266 = fadd float %264, %265
  store float %266, ptr %263, align 4, !tbaa !44
  br label %289

267:                                              ; preds = %251
  %268 = getelementptr inbounds %struct.ClothVertex, ptr %253, i64 %194
  %269 = load i32, ptr %268, align 8, !tbaa !127
  %270 = and i32 %269, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %267
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %252) #13
  %273 = load <2 x float>, ptr %225, align 4, !tbaa !44
  %274 = load <2 x float>, ptr %8, align 8, !tbaa !44
  %275 = fadd <2 x float> %273, %274
  store <2 x float> %275, ptr %225, align 4, !tbaa !44
  %276 = getelementptr inbounds float, ptr %225, i64 2
  %277 = load float, ptr %276, align 4, !tbaa !44
  %278 = load float, ptr %42, align 8, !tbaa !44
  %279 = fadd float %277, %278
  store float %279, ptr %276, align 4, !tbaa !44
  br label %289

280:                                              ; preds = %267
  %281 = fmul float %252, -5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %281) #13
  %282 = load <2 x float>, ptr %226, align 4, !tbaa !44
  %283 = load <2 x float>, ptr %8, align 8, !tbaa !44
  %284 = fadd <2 x float> %282, %283
  store <2 x float> %284, ptr %226, align 4, !tbaa !44
  %285 = getelementptr inbounds float, ptr %226, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !44
  %287 = load float, ptr %42, align 8, !tbaa !44
  %288 = fadd float %286, %287
  store float %288, ptr %285, align 4, !tbaa !44
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %225, ptr noundef nonnull %225, ptr noundef nonnull %8) #13
  br label %289

289:                                              ; preds = %272, %280, %258
  %290 = add nsw i32 %182, 1
  br label %291

291:                                              ; preds = %289, %248, %244, %224, %232, %238, %217, %220, %210
  %292 = phi i32 [ %182, %210 ], [ %182, %220 ], [ %182, %217 ], [ %182, %238 ], [ %182, %232 ], [ %182, %224 ], [ %182, %244 ], [ %290, %289 ], [ %182, %248 ]
  %293 = phi i32 [ %181, %210 ], [ %181, %220 ], [ %181, %217 ], [ %181, %238 ], [ %181, %232 ], [ %181, %224 ], [ %181, %244 ], [ 1, %289 ], [ %181, %248 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  %294 = add nuw nsw i64 %180, 1
  %295 = load i32, ptr %7, align 4, !tbaa !63
  %296 = zext i32 %295 to i64
  %297 = icmp ult i64 %294, %296
  br i1 %297, label %179, label %300, !llvm.loop !139

298:                                              ; preds = %175
  %299 = icmp eq ptr %176, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %291, %298
  %301 = phi i32 [ %169, %298 ], [ %293, %291 ]
  %302 = phi i32 [ %170, %298 ], [ %292, %291 ]
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %303(ptr noundef nonnull %176) #14
  br label %304

304:                                              ; preds = %298, %300, %167
  %305 = phi i32 [ %302, %300 ], [ %170, %298 ], [ %170, %167 ]
  %306 = phi i32 [ %301, %300 ], [ %169, %298 ], [ %169, %167 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %307 = add nuw i32 %168, 1
  %308 = load ptr, ptr %27, align 8, !tbaa !120
  %309 = getelementptr inbounds %struct.ClothCollSettings, ptr %308, i64 0, i32 8
  %310 = load i16, ptr %309, align 4, !tbaa !131
  %311 = sext i16 %310 to i32
  %312 = icmp ult i32 %307, %311
  br i1 %312, label %167, label %313, !llvm.loop !140

313:                                              ; preds = %304, %163
  %314 = phi ptr [ %158, %163 ], [ %308, %304 ]
  %315 = phi i32 [ %122, %163 ], [ %305, %304 ]
  %316 = phi i32 [ %121, %163 ], [ %306, %304 ]
  %317 = phi ptr [ %58, %163 ], [ %172, %304 ]
  %318 = phi i32 [ %60, %163 ], [ %171, %304 ]
  %319 = icmp eq i32 %315, 0
  br i1 %319, label %353, label %320

320:                                              ; preds = %313
  %321 = load i32, ptr %23, align 8, !tbaa !118
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %344, label %323

323:                                              ; preds = %320, %335
  %324 = phi i32 [ %336, %335 ], [ %321, %320 ]
  %325 = phi i64 [ %337, %335 ], [ 0, %320 ]
  %326 = getelementptr inbounds %struct.ClothVertex, ptr %317, i64 %325
  %327 = load i32, ptr %326, align 8, !tbaa !127
  %328 = and i32 %327, 1
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.ClothVertex, ptr %317, i64 %325, i32 7
  %332 = getelementptr inbounds %struct.ClothVertex, ptr %317, i64 %325, i32 5
  %333 = getelementptr inbounds %struct.ClothVertex, ptr %317, i64 %325, i32 6
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %331, ptr noundef nonnull %332, ptr noundef nonnull %333) #13
  %334 = load i32, ptr %23, align 8, !tbaa !118
  br label %335

335:                                              ; preds = %323, %330
  %336 = phi i32 [ %324, %323 ], [ %334, %330 ]
  %337 = add nuw nsw i64 %325, 1
  %338 = zext i32 %336 to i64
  %339 = icmp ult i64 %337, %338
  br i1 %339, label %323, label %342, !llvm.loop !141

340:                                              ; preds = %157
  %341 = icmp eq i32 %122, 0
  br i1 %341, label %353, label %344

342:                                              ; preds = %335
  %343 = load ptr, ptr %27, align 8, !tbaa !120
  br label %344

344:                                              ; preds = %342, %320, %340
  %345 = phi ptr [ %158, %340 ], [ %314, %320 ], [ %343, %342 ]
  %346 = phi i32 [ %60, %340 ], [ %318, %320 ], [ %318, %342 ]
  %347 = phi ptr [ %58, %340 ], [ %317, %320 ], [ %317, %342 ]
  %348 = phi i32 [ %121, %340 ], [ %316, %320 ], [ %316, %342 ]
  %349 = getelementptr inbounds %struct.ClothCollSettings, ptr %345, i64 0, i32 9
  %350 = load i16, ptr %349, align 2, !tbaa !124
  %351 = sext i16 %350 to i32
  %352 = icmp slt i32 %123, %351
  br i1 %352, label %56, label %353, !llvm.loop !142

353:                                              ; preds = %313, %344, %340
  %354 = phi i32 [ %348, %344 ], [ %121, %340 ], [ %316, %313 ]
  %355 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %355(ptr noundef nonnull %31) #14
  %356 = call i32 @llvm.smin.i32(i32 %354, i32 1)
  %357 = or i32 %356, 1
  br label %358

358:                                              ; preds = %21, %4, %353
  %359 = phi i32 [ %357, %353 ], [ 0, %4 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %359
}

; Function Attrs: optsize
declare void @bvhtree_update_from_cloth(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @bvhselftree_update_from_cloth(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_bvh_objcollisions_nearcheck(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef readonly %5, double noundef %6) unnamed_addr #0 !PGOFuncName !143 {
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %9 = sext i32 %4 to i64
  %10 = mul nsw i64 %9, 7168
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.4) #14
  store ptr %11, ptr %2, align 8, !tbaa !64
  store ptr %11, ptr %3, align 8, !tbaa !64
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = zext nneg i32 %4 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %19, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %18 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %5, i64 %17
  %19 = tail call fastcc ptr @cloth_collision(ptr noundef %0, ptr noundef %1, ptr noundef %18, ptr noundef %16) #13
  store ptr %19, ptr %3, align 8, !tbaa !64
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !144

22:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cloth_bvh_objcollisions_resolve(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !145 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.Cloth, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = load ptr, ptr %6, align 8, !tbaa !117
  %10 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 12
  %11 = icmp sgt i32 %8, 0
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %4, %44
  %14 = phi i32 [ 0, %4 ], [ %45, %44 ]
  %15 = phi i1 [ true, %4 ], [ false, %44 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @cloth_collision_response_static(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #13, !range !146
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  br i1 %11, label %22, label %44

22:                                               ; preds = %21, %40
  %23 = phi i64 [ %42, %40 ], [ 0, %21 ]
  %24 = phi i32 [ %41, %40 ], [ %14, %21 ]
  %25 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %23, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !147
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %23, i32 7
  %30 = getelementptr inbounds %struct.ClothVertex, ptr %9, i64 %23, i32 10
  %31 = load <2 x float>, ptr %29, align 4, !tbaa !44
  %32 = load <2 x float>, ptr %30, align 8, !tbaa !44
  %33 = fadd <2 x float> %31, %32
  store <2 x float> %33, ptr %29, align 4, !tbaa !44
  %34 = getelementptr inbounds float, ptr %29, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !44
  %36 = getelementptr inbounds float, ptr %30, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !44
  %38 = fadd float %35, %37
  store float %38, ptr %34, align 4, !tbaa !44
  tail call fastcc void @zero_v3(ptr noundef nonnull %30) #13
  store i32 0, ptr %25, align 8, !tbaa !147
  %39 = add nsw i32 %24, 1
  br label %40

40:                                               ; preds = %22, %28
  %41 = phi i32 [ %39, %28 ], [ %24, %22 ]
  %42 = add nuw nsw i64 %23, 1
  %43 = icmp eq i64 %42, %12
  br i1 %43, label %44, label %22, !llvm.loop !148

44:                                               ; preds = %40, %21
  %45 = phi i32 [ %14, %21 ], [ %41, %40 ]
  br i1 %15, label %13, label %46, !llvm.loop !149

46:                                               ; preds = %13, %18, %44
  %47 = phi i32 [ %14, %13 ], [ %14, %18 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: optsize
declare zeroext i8 @BLI_edgeset_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !150 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !151 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cloth_collision(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !152 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.ClothCollSettings, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call float @BLI_bvhtree_getepsilon(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.Cloth, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = load i32, ptr %2, align 4, !tbaa !133
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MFace, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !135
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MFace, ptr %20, i64 %23
  %25 = getelementptr inbounds %struct.MFace, ptr %15, i64 %17, i32 3
  %26 = getelementptr inbounds %struct.MFace, ptr %20, i64 %23, i32 3
  %27 = getelementptr inbounds %struct.MFace, ptr %15, i64 %17, i32 2
  %28 = getelementptr inbounds %struct.MFace, ptr %20, i64 %23, i32 2
  %29 = getelementptr inbounds %struct.MFace, ptr %15, i64 %17, i32 1
  %30 = fadd float %8, %11
  %31 = fadd float %30, 0x3E80000000000000
  %32 = fpext float %31 to double
  %33 = fmul double %32, 2.000000e+00
  %34 = fcmp oeq double %33, -1.000000e+00
  %35 = fcmp ugt double %33, %32
  %36 = or i1 %34, %35
  br label %37

37:                                               ; preds = %4, %101
  %38 = phi i32 [ 0, %4 ], [ %103, %101 ]
  %39 = phi ptr [ %3, %4 ], [ %102, %101 ]
  switch i32 %38, label %92 [
    i32 0, label %40
    i32 1, label %48
    i32 2, label %60
    i32 3, label %72
  ]

40:                                               ; preds = %37
  %41 = load i32, ptr %18, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 9
  store i32 %41, ptr %42, align 8, !tbaa !155
  %43 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 10
  %44 = load <2 x i32>, ptr %29, align 4, !tbaa !63
  %45 = load <2 x i32>, ptr %24, align 4, !tbaa !63
  %46 = shufflevector <2 x i32> %44, <2 x i32> %45, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %46, ptr %43, align 4, !tbaa !63
  %47 = load i32, ptr %28, align 4, !tbaa !58
  br label %88

48:                                               ; preds = %37
  %49 = load i32, ptr %25, align 4, !tbaa !59
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %18, align 4, !tbaa !54
  %53 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 9
  store i32 %52, ptr %53, align 8, !tbaa !155
  %54 = load i32, ptr %27, align 4, !tbaa !58
  %55 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 10
  store i32 %54, ptr %55, align 4, !tbaa !158
  %56 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 11
  store i32 %49, ptr %56, align 8, !tbaa !159
  %57 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 12
  %58 = load <2 x i32>, ptr %24, align 4, !tbaa !63
  store <2 x i32> %58, ptr %57, align 4, !tbaa !63
  %59 = load i32, ptr %28, align 4, !tbaa !58
  br label %88

60:                                               ; preds = %37, %48
  %61 = load i32, ptr %26, align 4, !tbaa !59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %105, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 9
  %65 = load <2 x i32>, ptr %18, align 4, !tbaa !63
  store <2 x i32> %65, ptr %64, align 8, !tbaa !63
  %66 = load i32, ptr %27, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 11
  store i32 %66, ptr %67, align 8, !tbaa !159
  %68 = load i32, ptr %24, align 4, !tbaa !54
  %69 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 12
  store i32 %68, ptr %69, align 4, !tbaa !160
  %70 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 13
  store i32 %61, ptr %70, align 8, !tbaa !161
  %71 = load i32, ptr %28, align 4, !tbaa !58
  br label %88

72:                                               ; preds = %37
  %73 = load i32, ptr %25, align 4, !tbaa !59
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %26, align 4, !tbaa !59
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %105, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %18, align 4, !tbaa !54
  %80 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 9
  store i32 %79, ptr %80, align 8, !tbaa !155
  %81 = load i32, ptr %27, align 4, !tbaa !58
  %82 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 10
  store i32 %81, ptr %82, align 4, !tbaa !158
  %83 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 11
  store i32 %73, ptr %83, align 8, !tbaa !159
  %84 = load i32, ptr %24, align 4, !tbaa !54
  %85 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 12
  store i32 %84, ptr %85, align 4, !tbaa !160
  %86 = load i32, ptr %28, align 4, !tbaa !58
  %87 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 13
  store i32 %86, ptr %87, align 8, !tbaa !161
  br label %88

88:                                               ; preds = %63, %78, %40, %51
  %89 = phi i32 [ %59, %51 ], [ %47, %40 ], [ %76, %78 ], [ %71, %63 ]
  %90 = phi i32 [ 1, %51 ], [ 0, %40 ], [ 3, %78 ], [ 2, %63 ]
  %91 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 14
  store i32 %89, ptr %91, align 4, !tbaa !162
  br label %92

92:                                               ; preds = %88, %37
  %93 = phi i32 [ %38, %37 ], [ %90, %88 ]
  br i1 %36, label %101, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 3
  %96 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 4
  %97 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %95, ptr noundef nonnull %96) #13
  %98 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 2
  store double %33, ptr %98, align 8, !tbaa !163
  %99 = getelementptr inbounds %struct.CollPair, ptr %39, i64 0, i32 7
  store i32 0, ptr %99, align 8, !tbaa !164
  %100 = getelementptr inbounds %struct.CollPair, ptr %39, i64 1
  br label %101

101:                                              ; preds = %92, %94
  %102 = phi ptr [ %100, %94 ], [ %39, %92 ]
  %103 = add nsw i32 %93, 1
  %104 = icmp slt i32 %93, 3
  br i1 %104, label %37, label %105, !llvm.loop !165

105:                                              ; preds = %72, %75, %60, %101
  %106 = phi ptr [ %39, %72 ], [ %39, %75 ], [ %39, %60 ], [ %102, %101 ]
  ret ptr %106
}

; Function Attrs: optsize
declare float @BLI_bvhtree_getepsilon(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !166 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !167 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !168 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !169 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cloth_collision_response_static(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readnone %3) unnamed_addr #0 !PGOFuncName !170 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 8
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 8
  %17 = alloca [3 x float], align 8
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %19 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call float @BLI_bvhtree_getepsilon(ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %529, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 5
  %27 = getelementptr inbounds float, ptr %11, i64 2
  %28 = getelementptr inbounds %struct.CollisionModifierData, ptr %1, i64 0, i32 6
  %29 = getelementptr inbounds float, ptr %12, i64 2
  %30 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %31 = fmul float %21, 8.000000e+00
  %32 = fdiv float %31, 9.000000e+00
  %33 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds float, ptr %14, i64 1
  %35 = getelementptr inbounds float, ptr %14, i64 2
  %36 = getelementptr inbounds float, ptr %15, i64 1
  %37 = getelementptr inbounds float, ptr %15, i64 2
  %38 = getelementptr inbounds float, ptr %16, i64 1
  %39 = getelementptr inbounds float, ptr %16, i64 2
  %40 = getelementptr inbounds float, ptr %17, i64 2
  br label %41

41:                                               ; preds = %25, %525
  %42 = phi ptr [ %2, %25 ], [ %527, %525 ]
  %43 = phi i32 [ 0, %25 ], [ %526, %525 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  call fastcc void @zero_v3(ptr noundef nonnull %14) #13
  call fastcc void @zero_v3(ptr noundef nonnull %15) #13
  call fastcc void @zero_v3(ptr noundef nonnull %16) #13
  %44 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !164
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %525

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 5
  %50 = load ptr, ptr %23, align 8, !tbaa !117
  %51 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !155
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %53, i32 6
  %55 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 10
  %56 = load i32, ptr %55, align 4, !tbaa !158
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %57, i32 6
  %59 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !159
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %61, i32 6
  call fastcc void @collision_compute_barycentric(ptr noundef nonnull %49, ptr noundef nonnull %54, ptr noundef nonnull %58, ptr noundef nonnull %62, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %63 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 6
  %64 = load ptr, ptr %26, align 8, !tbaa !45
  %65 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 12
  %66 = load i32, ptr %65, align 4, !tbaa !160
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %64, i64 %67
  %69 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !161
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.MVert, ptr %64, i64 %71
  %73 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 14
  %74 = load i32, ptr %73, align 4, !tbaa !162
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.MVert, ptr %64, i64 %75
  call fastcc void @collision_compute_barycentric(ptr noundef nonnull %63, ptr noundef %68, ptr noundef %72, ptr noundef %76, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %77 = load i32, ptr %51, align 8, !tbaa !155
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %78, i32 7
  %80 = load i32, ptr %55, align 4, !tbaa !158
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %81, i32 7
  %83 = load i32, ptr %59, align 8, !tbaa !159
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %84, i32 7
  %86 = load float, ptr %5, align 4, !tbaa !44
  %87 = fpext float %86 to double
  %88 = load float, ptr %6, align 4, !tbaa !44
  %89 = fpext float %88 to double
  %90 = load float, ptr %7, align 4, !tbaa !44
  %91 = fpext float %90 to double
  call fastcc void @zero_v3(ptr noundef nonnull %11) #13
  %92 = getelementptr inbounds float, ptr %79, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !44
  %94 = fpext float %93 to double
  %95 = load float, ptr %27, align 8, !tbaa !44
  %96 = fpext float %95 to double
  %97 = tail call double @llvm.fmuladd.f64(double %94, double %87, double %96)
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds float, ptr %82, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !44
  %101 = fpext float %100 to double
  %102 = fpext float %98 to double
  %103 = tail call double @llvm.fmuladd.f64(double %101, double %89, double %102)
  %104 = fptrunc double %103 to float
  %105 = load <2 x float>, ptr %79, align 4, !tbaa !44
  %106 = fpext <2 x float> %105 to <2 x double>
  %107 = load <2 x float>, ptr %11, align 8, !tbaa !44
  %108 = fpext <2 x float> %107 to <2 x double>
  %109 = insertelement <2 x double> poison, double %87, i64 0
  %110 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> zeroinitializer
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %106, <2 x double> %110, <2 x double> %108)
  %112 = fptrunc <2 x double> %111 to <2 x float>
  %113 = load <2 x float>, ptr %82, align 4, !tbaa !44
  %114 = fpext <2 x float> %113 to <2 x double>
  %115 = fpext <2 x float> %112 to <2 x double>
  %116 = insertelement <2 x double> poison, double %89, i64 0
  %117 = shufflevector <2 x double> %116, <2 x double> poison, <2 x i32> zeroinitializer
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> %117, <2 x double> %115)
  %119 = fptrunc <2 x double> %118 to <2 x float>
  %120 = load <2 x float>, ptr %85, align 4, !tbaa !44
  %121 = fpext <2 x float> %120 to <2 x double>
  %122 = fpext <2 x float> %119 to <2 x double>
  %123 = insertelement <2 x double> poison, double %91, i64 0
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> zeroinitializer
  %125 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %124, <2 x double> %122)
  %126 = fptrunc <2 x double> %125 to <2 x float>
  store <2 x float> %126, ptr %11, align 8, !tbaa !44
  %127 = getelementptr inbounds float, ptr %85, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !44
  %129 = fpext float %128 to double
  %130 = fpext float %104 to double
  %131 = tail call double @llvm.fmuladd.f64(double %129, double %91, double %130)
  %132 = fptrunc double %131 to float
  store float %132, ptr %27, align 8, !tbaa !44
  %133 = load ptr, ptr %28, align 8, !tbaa !47
  %134 = load i32, ptr %65, align 4, !tbaa !160
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MVert, ptr %133, i64 %135
  %137 = load i32, ptr %69, align 8, !tbaa !161
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %133, i64 %138
  %140 = load i32, ptr %73, align 4, !tbaa !162
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.MVert, ptr %133, i64 %141
  %143 = load float, ptr %8, align 4, !tbaa !44
  %144 = fpext float %143 to double
  %145 = load float, ptr %9, align 4, !tbaa !44
  %146 = fpext float %145 to double
  %147 = load float, ptr %10, align 4, !tbaa !44
  %148 = fpext float %147 to double
  call fastcc void @zero_v3(ptr noundef nonnull %12) #13
  %149 = getelementptr inbounds float, ptr %136, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !44
  %151 = fpext float %150 to double
  %152 = load float, ptr %29, align 8, !tbaa !44
  %153 = fpext float %152 to double
  %154 = tail call double @llvm.fmuladd.f64(double %151, double %144, double %153)
  %155 = fptrunc double %154 to float
  %156 = getelementptr inbounds float, ptr %139, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !44
  %158 = fpext float %157 to double
  %159 = fpext float %155 to double
  %160 = tail call double @llvm.fmuladd.f64(double %158, double %146, double %159)
  %161 = fptrunc double %160 to float
  %162 = load <2 x float>, ptr %136, align 4, !tbaa !44
  %163 = fpext <2 x float> %162 to <2 x double>
  %164 = load <2 x float>, ptr %12, align 8, !tbaa !44
  %165 = fpext <2 x float> %164 to <2 x double>
  %166 = insertelement <2 x double> poison, double %144, i64 0
  %167 = shufflevector <2 x double> %166, <2 x double> poison, <2 x i32> zeroinitializer
  %168 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %163, <2 x double> %167, <2 x double> %165)
  %169 = fptrunc <2 x double> %168 to <2 x float>
  %170 = load <2 x float>, ptr %139, align 4, !tbaa !44
  %171 = fpext <2 x float> %170 to <2 x double>
  %172 = fpext <2 x float> %169 to <2 x double>
  %173 = insertelement <2 x double> poison, double %146, i64 0
  %174 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> zeroinitializer
  %175 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %171, <2 x double> %174, <2 x double> %172)
  %176 = fptrunc <2 x double> %175 to <2 x float>
  %177 = load <2 x float>, ptr %142, align 4, !tbaa !44
  %178 = fpext <2 x float> %177 to <2 x double>
  %179 = fpext <2 x float> %176 to <2 x double>
  %180 = insertelement <2 x double> poison, double %148, i64 0
  %181 = shufflevector <2 x double> %180, <2 x double> poison, <2 x i32> zeroinitializer
  %182 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %178, <2 x double> %181, <2 x double> %179)
  %183 = fptrunc <2 x double> %182 to <2 x float>
  store <2 x float> %183, ptr %12, align 8, !tbaa !44
  %184 = getelementptr inbounds float, ptr %142, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !44
  %186 = fpext float %185 to double
  %187 = fpext float %161 to double
  %188 = tail call double @llvm.fmuladd.f64(double %186, double %148, double %187)
  %189 = fptrunc double %188 to float
  store float %189, ptr %29, align 8, !tbaa !44
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #13
  %190 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 3
  %191 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %190) #13
  %192 = fcmp ogt float %191, 0x3E80000000000000
  br i1 %192, label %193, label %401

193:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %190) #13
  call fastcc void @mul_v3_fl(ptr noundef nonnull %18, float noundef %191) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef nonnull %18) #13
  %194 = load ptr, ptr %30, align 8, !tbaa !120
  %195 = getelementptr inbounds %struct.ClothCollSettings, ptr %194, i64 0, i32 3
  %196 = load float, ptr %195, align 8, !tbaa !171
  %197 = fmul float %196, 0x3F847AE140000000
  %198 = fmul float %191, %197
  %199 = call fastcc float @len_v3(ptr noundef nonnull %17) #13
  %200 = tail call fastcc float @min_ff(float noundef %198, float noundef %199) #13
  %201 = fcmp ogt float %200, 0x3E80000000000000
  %202 = load <2 x float>, ptr %14, align 8, !tbaa !44
  %203 = load float, ptr %35, align 8, !tbaa !44
  %204 = load <2 x float>, ptr %15, align 8, !tbaa !44
  %205 = load float, ptr %37, align 8, !tbaa !44
  %206 = load <2 x float>, ptr %16, align 8, !tbaa !44
  %207 = load float, ptr %39, align 8, !tbaa !44
  %208 = insertelement <2 x float> poison, float %205, i64 0
  %209 = insertelement <2 x float> %208, float %203, i64 1
  br i1 %201, label %210, label %259

210:                                              ; preds = %193
  %211 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #13
  %212 = tail call float @llvm.fmuladd.f32(float %86, float %86, float 1.000000e+00)
  %213 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %212)
  %214 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %213)
  %215 = fdiv float %200, %214
  %216 = fpext float %215 to double
  %217 = fpext <2 x float> %202 to <2 x double>
  %218 = load <2 x float>, ptr %17, align 8, !tbaa !44
  %219 = insertelement <2 x float> poison, float %86, i64 0
  %220 = shufflevector <2 x float> %219, <2 x float> poison, <2 x i32> zeroinitializer
  %221 = fmul <2 x float> %220, %218
  %222 = fpext <2 x float> %221 to <2 x double>
  %223 = insertelement <2 x double> poison, double %216, i64 0
  %224 = shufflevector <2 x double> %223, <2 x double> poison, <2 x i32> zeroinitializer
  %225 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %222, <2 x double> %224, <2 x double> %217)
  %226 = fptrunc <2 x double> %225 to <2 x float>
  %227 = load float, ptr %40, align 8, !tbaa !44
  %228 = fpext <2 x float> %209 to <2 x double>
  %229 = fpext <2 x float> %204 to <2 x double>
  %230 = insertelement <2 x float> poison, float %88, i64 0
  %231 = shufflevector <2 x float> %230, <2 x float> poison, <2 x i32> zeroinitializer
  %232 = fmul <2 x float> %231, %218
  %233 = fpext <2 x float> %232 to <2 x double>
  %234 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %233, <2 x double> %224, <2 x double> %229)
  %235 = fptrunc <2 x double> %234 to <2 x float>
  %236 = extractelement <2 x float> %235, i64 1
  store float %236, ptr %36, align 4, !tbaa !44
  %237 = insertelement <2 x float> %230, float %86, i64 1
  %238 = insertelement <2 x float> poison, float %227, i64 0
  %239 = shufflevector <2 x float> %238, <2 x float> poison, <2 x i32> zeroinitializer
  %240 = fmul <2 x float> %237, %239
  %241 = fpext <2 x float> %240 to <2 x double>
  %242 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %241, <2 x double> %224, <2 x double> %228)
  %243 = fptrunc <2 x double> %242 to <2 x float>
  %244 = shufflevector <2 x float> %226, <2 x float> %243, <2 x i32> <i32 1, i32 3>
  store <2 x float> %244, ptr %34, align 4, !tbaa !44
  %245 = extractelement <2 x float> %243, i64 0
  store float %245, ptr %37, align 8, !tbaa !44
  %246 = fpext <2 x float> %206 to <2 x double>
  %247 = insertelement <2 x float> poison, float %90, i64 0
  %248 = shufflevector <2 x float> %247, <2 x float> poison, <2 x i32> zeroinitializer
  %249 = fmul <2 x float> %248, %218
  %250 = fpext <2 x float> %249 to <2 x double>
  %251 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %250, <2 x double> %224, <2 x double> %246)
  %252 = fptrunc <2 x double> %251 to <2 x float>
  %253 = extractelement <2 x float> %252, i64 1
  store float %253, ptr %38, align 4, !tbaa !44
  %254 = fmul float %90, %227
  %255 = fpext float %254 to double
  %256 = fpext float %207 to double
  %257 = tail call double @llvm.fmuladd.f64(double %255, double %216, double %256)
  %258 = fptrunc double %257 to float
  store float %258, ptr %39, align 8, !tbaa !44
  br label %259

259:                                              ; preds = %210, %193
  %260 = phi float [ %258, %210 ], [ %207, %193 ]
  %261 = phi <2 x float> [ %226, %210 ], [ %202, %193 ]
  %262 = phi <2 x float> [ %235, %210 ], [ %204, %193 ]
  %263 = phi <2 x float> [ %252, %210 ], [ %206, %193 ]
  %264 = phi <2 x float> [ %243, %210 ], [ %209, %193 ]
  %265 = fpext float %191 to double
  %266 = fmul float %86, %86
  %267 = fpext float %266 to double
  %268 = fadd double %267, 1.000000e+00
  %269 = fmul float %88, %88
  %270 = fpext float %269 to double
  %271 = fadd double %268, %270
  %272 = fmul float %90, %90
  %273 = fpext float %272 to double
  %274 = fadd double %271, %273
  %275 = fdiv double %265, %274
  %276 = fpext <2 x float> %261 to <2 x double>
  %277 = load <2 x float>, ptr %190, align 8, !tbaa !44
  %278 = insertelement <2 x float> poison, float %86, i64 0
  %279 = shufflevector <2 x float> %278, <2 x float> poison, <2 x i32> zeroinitializer
  %280 = fmul <2 x float> %279, %277
  %281 = fpext <2 x float> %280 to <2 x double>
  %282 = insertelement <2 x double> poison, double %275, i64 0
  %283 = shufflevector <2 x double> %282, <2 x double> poison, <2 x i32> zeroinitializer
  %284 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %281, <2 x double> %283, <2 x double> %276)
  %285 = fptrunc <2 x double> %284 to <2 x float>
  store <2 x float> %285, ptr %14, align 8, !tbaa !44
  %286 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 3, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !44
  %288 = fmul float %86, %287
  %289 = fpext float %288 to double
  %290 = extractelement <2 x float> %264, i64 1
  %291 = fpext float %290 to double
  %292 = tail call double @llvm.fmuladd.f64(double %289, double %275, double %291)
  %293 = fptrunc double %292 to float
  store float %293, ptr %35, align 8, !tbaa !44
  %294 = load ptr, ptr %23, align 8, !tbaa !117
  %295 = load i32, ptr %51, align 8, !tbaa !155
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.ClothVertex, ptr %294, i64 %296, i32 12
  %298 = load i32, ptr %297, align 8, !tbaa !147
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 8, !tbaa !147
  %300 = fpext <2 x float> %262 to <2 x double>
  %301 = insertelement <2 x float> poison, float %88, i64 0
  %302 = shufflevector <2 x float> %301, <2 x float> poison, <2 x i32> zeroinitializer
  %303 = fmul <2 x float> %302, %277
  %304 = fpext <2 x float> %303 to <2 x double>
  %305 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %304, <2 x double> %283, <2 x double> %300)
  %306 = fptrunc <2 x double> %305 to <2 x float>
  store <2 x float> %306, ptr %15, align 8, !tbaa !44
  %307 = fmul float %88, %287
  %308 = fpext float %307 to double
  %309 = extractelement <2 x float> %264, i64 0
  %310 = fpext float %309 to double
  %311 = tail call double @llvm.fmuladd.f64(double %308, double %275, double %310)
  %312 = fptrunc double %311 to float
  store float %312, ptr %37, align 8, !tbaa !44
  %313 = load i32, ptr %55, align 4, !tbaa !158
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ClothVertex, ptr %294, i64 %314, i32 12
  %316 = load i32, ptr %315, align 8, !tbaa !147
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !147
  %318 = fpext <2 x float> %263 to <2 x double>
  %319 = insertelement <2 x float> poison, float %90, i64 0
  %320 = shufflevector <2 x float> %319, <2 x float> poison, <2 x i32> zeroinitializer
  %321 = fmul <2 x float> %320, %277
  %322 = fpext <2 x float> %321 to <2 x double>
  %323 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %322, <2 x double> %283, <2 x double> %318)
  %324 = fptrunc <2 x double> %323 to <2 x float>
  store <2 x float> %324, ptr %16, align 8, !tbaa !44
  %325 = fmul float %90, %287
  %326 = fpext float %325 to double
  %327 = fpext float %260 to double
  %328 = tail call double @llvm.fmuladd.f64(double %326, double %275, double %327)
  %329 = fptrunc double %328 to float
  store float %329, ptr %39, align 8, !tbaa !44
  %330 = load i32, ptr %59, align 8, !tbaa !159
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.ClothVertex, ptr %294, i64 %331, i32 12
  %333 = load i32, ptr %332, align 8, !tbaa !147
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !147
  %335 = load ptr, ptr %33, align 8, !tbaa !114
  %336 = getelementptr inbounds %struct.ClothSimSettings, ptr %335, i64 0, i32 28
  %337 = load i32, ptr %336, align 4, !tbaa !172
  %338 = sitofp i32 %337 to float
  %339 = getelementptr inbounds %struct.ClothSimSettings, ptr %335, i64 0, i32 15
  %340 = load float, ptr %339, align 8, !tbaa !173
  %341 = fdiv float %338, %340
  %342 = load ptr, ptr %30, align 8, !tbaa !120
  %343 = getelementptr inbounds %struct.ClothCollSettings, ptr %342, i64 0, i32 1
  %344 = load float, ptr %343, align 8, !tbaa !153
  %345 = fmul float %344, 8.000000e+00
  %346 = fdiv float %345, 9.000000e+00
  %347 = fadd float %32, %346
  %348 = fpext float %347 to double
  %349 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 2
  %350 = load double, ptr %349, align 8, !tbaa !163
  %351 = fsub double %348, %350
  %352 = fptrunc double %351 to float
  %353 = fmul float %352, 0x3FB99999A0000000
  %354 = fmul float %341, %353
  %355 = fcmp olt float %191, %354
  %356 = fcmp ogt float %352, 0x3E80000000000000
  %357 = and i1 %356, %355
  br i1 %357, label %358, label %400

358:                                              ; preds = %259
  %359 = fdiv float %352, %341
  %360 = fneg float %191
  %361 = tail call float @llvm.fmuladd.f32(float %353, float %341, float %360)
  %362 = fcmp olt float %359, %361
  %363 = select i1 %362, float %359, float %361
  %364 = fcmp ogt double %275, 0x3E80000000000000
  br i1 %364, label %365, label %369

365:                                              ; preds = %358
  %366 = fmul double %275, 5.000000e+00
  %367 = fptrunc double %366 to float
  %368 = tail call fastcc float @min_ff(float noundef %363, float noundef %367) #13
  br label %369

369:                                              ; preds = %365, %358
  %370 = phi float [ %368, %365 ], [ %363, %358 ]
  %371 = fptrunc double %275 to float
  %372 = tail call fastcc float @max_ff(float noundef %371, float noundef %370) #13
  %373 = tail call float @llvm.fmuladd.f32(float %86, float %86, float 1.000000e+00)
  %374 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %373)
  %375 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %374)
  %376 = fdiv float %372, %375
  %377 = fpext float %376 to double
  %378 = fpext <2 x float> %277 to <2 x double>
  %379 = fpext <2 x float> %285 to <2 x double>
  %380 = insertelement <2 x double> poison, double %377, i64 0
  %381 = shufflevector <2 x double> %380, <2 x double> poison, <2 x i32> zeroinitializer
  %382 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %378, <2 x double> %381, <2 x double> %379)
  %383 = fptrunc <2 x double> %382 to <2 x float>
  store <2 x float> %383, ptr %14, align 8, !tbaa !44
  %384 = fpext float %287 to double
  %385 = fpext float %293 to double
  %386 = tail call double @llvm.fmuladd.f64(double %384, double %377, double %385)
  %387 = fptrunc double %386 to float
  store float %387, ptr %35, align 8, !tbaa !44
  %388 = fpext <2 x float> %306 to <2 x double>
  %389 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %378, <2 x double> %381, <2 x double> %388)
  %390 = fptrunc <2 x double> %389 to <2 x float>
  store <2 x float> %390, ptr %15, align 8, !tbaa !44
  %391 = fpext float %312 to double
  %392 = tail call double @llvm.fmuladd.f64(double %384, double %377, double %391)
  %393 = fptrunc double %392 to float
  store float %393, ptr %37, align 8, !tbaa !44
  %394 = fpext <2 x float> %324 to <2 x double>
  %395 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %378, <2 x double> %381, <2 x double> %394)
  %396 = fptrunc <2 x double> %395 to <2 x float>
  store <2 x float> %396, ptr %16, align 8, !tbaa !44
  %397 = fpext float %329 to double
  %398 = tail call double @llvm.fmuladd.f64(double %384, double %377, double %397)
  %399 = fptrunc double %398 to float
  store float %399, ptr %39, align 8, !tbaa !44
  br label %400

400:                                              ; preds = %369, %259
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  br label %461

401:                                              ; preds = %48
  %402 = load ptr, ptr %30, align 8, !tbaa !120
  %403 = getelementptr inbounds %struct.ClothCollSettings, ptr %402, i64 0, i32 1
  %404 = load float, ptr %403, align 8, !tbaa !153
  %405 = fmul float %404, 8.000000e+00
  %406 = fdiv float %405, 9.000000e+00
  %407 = fadd float %32, %406
  %408 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 2
  %409 = load double, ptr %408, align 8, !tbaa !163
  %410 = fptrunc double %409 to float
  %411 = fsub float %407, %410
  %412 = fcmp ogt float %411, 0x3E80000000000000
  br i1 %412, label %413, label %459

413:                                              ; preds = %401
  %414 = load ptr, ptr %33, align 8, !tbaa !114
  %415 = getelementptr inbounds %struct.ClothSimSettings, ptr %414, i64 0, i32 28
  %416 = load i32, ptr %415, align 4, !tbaa !172
  %417 = sitofp i32 %416 to float
  %418 = getelementptr inbounds %struct.ClothSimSettings, ptr %414, i64 0, i32 15
  %419 = load float, ptr %418, align 8, !tbaa !173
  %420 = fdiv float %417, %419
  %421 = fdiv float %411, %420
  %422 = tail call float @llvm.fmuladd.f32(float %86, float %86, float 1.000000e+00)
  %423 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %422)
  %424 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %423)
  %425 = fmul float %424, 3.000000e+00
  %426 = fdiv float %421, %425
  %427 = load <2 x float>, ptr %190, align 8, !tbaa !44
  %428 = load <2 x float>, ptr %14, align 8, !tbaa !44
  %429 = insertelement <2 x float> poison, float %426, i64 0
  %430 = shufflevector <2 x float> %429, <2 x float> poison, <2 x i32> zeroinitializer
  %431 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %427, <2 x float> %430, <2 x float> %428)
  store <2 x float> %431, ptr %14, align 8, !tbaa !44
  %432 = getelementptr inbounds %struct.CollPair, ptr %42, i64 0, i32 3, i64 2
  %433 = load float, ptr %432, align 4, !tbaa !44
  %434 = load float, ptr %35, align 8, !tbaa !44
  %435 = tail call float @llvm.fmuladd.f32(float %433, float %426, float %434)
  store float %435, ptr %35, align 8, !tbaa !44
  %436 = load <2 x float>, ptr %15, align 8, !tbaa !44
  %437 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %427, <2 x float> %430, <2 x float> %436)
  store <2 x float> %437, ptr %15, align 8, !tbaa !44
  %438 = load float, ptr %37, align 8, !tbaa !44
  %439 = tail call float @llvm.fmuladd.f32(float %433, float %426, float %438)
  store float %439, ptr %37, align 8, !tbaa !44
  %440 = load <2 x float>, ptr %16, align 8, !tbaa !44
  %441 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %427, <2 x float> %430, <2 x float> %440)
  store <2 x float> %441, ptr %16, align 8, !tbaa !44
  %442 = load float, ptr %39, align 8, !tbaa !44
  %443 = tail call float @llvm.fmuladd.f32(float %433, float %426, float %442)
  store float %443, ptr %39, align 8, !tbaa !44
  %444 = load i32, ptr %51, align 8, !tbaa !155
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %445, i32 12
  %447 = load i32, ptr %446, align 8, !tbaa !147
  %448 = add i32 %447, 1
  store i32 %448, ptr %446, align 8, !tbaa !147
  %449 = load i32, ptr %55, align 4, !tbaa !158
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %450, i32 12
  %452 = load i32, ptr %451, align 8, !tbaa !147
  %453 = add i32 %452, 1
  store i32 %453, ptr %451, align 8, !tbaa !147
  %454 = load i32, ptr %59, align 8, !tbaa !159
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.ClothVertex, ptr %50, i64 %455, i32 12
  %457 = load i32, ptr %456, align 8, !tbaa !147
  %458 = add i32 %457, 1
  store i32 %458, ptr %456, align 8, !tbaa !147
  br label %461

459:                                              ; preds = %401
  %460 = icmp eq i32 %43, 0
  br i1 %460, label %525, label %461

461:                                              ; preds = %413, %400, %459
  %462 = phi i32 [ %43, %459 ], [ 1, %400 ], [ 1, %413 ]
  %463 = load ptr, ptr %23, align 8, !tbaa !117
  %464 = load i32, ptr %51, align 8, !tbaa !155
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %465, i32 12
  %467 = load i32, ptr %466, align 8, !tbaa !147
  %468 = icmp eq i32 %467, 0
  %469 = load i32, ptr %55, align 4, !tbaa !158
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %470, i32 12
  %472 = load i32, ptr %471, align 8, !tbaa !147
  %473 = icmp eq i32 %472, 0
  %474 = load i32, ptr %59, align 8, !tbaa !159
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %475, i32 12
  %477 = load i32, ptr %476, align 8, !tbaa !147
  %478 = icmp eq i32 %477, 0
  br label %479

479:                                              ; preds = %461, %522
  %480 = phi i64 [ 0, %461 ], [ %523, %522 ]
  br i1 %468, label %494, label %481

481:                                              ; preds = %479
  %482 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %465, i32 10, i64 %480
  %483 = load float, ptr %482, align 4, !tbaa !44
  %484 = fcmp olt float %483, 0.000000e+00
  %485 = fneg float %483
  %486 = select i1 %484, float %485, float %483
  %487 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 %480
  %488 = load float, ptr %487, align 4, !tbaa !44
  %489 = fcmp olt float %488, 0.000000e+00
  %490 = fneg float %488
  %491 = select i1 %489, float %490, float %488
  %492 = fcmp olt float %486, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %481
  store float %488, ptr %482, align 4, !tbaa !44
  br label %494

494:                                              ; preds = %493, %481, %479
  br i1 %473, label %508, label %495

495:                                              ; preds = %494
  %496 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %470, i32 10, i64 %480
  %497 = load float, ptr %496, align 4, !tbaa !44
  %498 = fcmp olt float %497, 0.000000e+00
  %499 = fneg float %497
  %500 = select i1 %498, float %499, float %497
  %501 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %480
  %502 = load float, ptr %501, align 4, !tbaa !44
  %503 = fcmp olt float %502, 0.000000e+00
  %504 = fneg float %502
  %505 = select i1 %503, float %504, float %502
  %506 = fcmp olt float %500, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %495
  store float %502, ptr %496, align 4, !tbaa !44
  br label %508

508:                                              ; preds = %507, %495, %494
  br i1 %478, label %522, label %509

509:                                              ; preds = %508
  %510 = getelementptr inbounds %struct.ClothVertex, ptr %463, i64 %475, i32 10, i64 %480
  %511 = load float, ptr %510, align 4, !tbaa !44
  %512 = fcmp olt float %511, 0.000000e+00
  %513 = fneg float %511
  %514 = select i1 %512, float %513, float %511
  %515 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %480
  %516 = load float, ptr %515, align 4, !tbaa !44
  %517 = fcmp olt float %516, 0.000000e+00
  %518 = fneg float %516
  %519 = select i1 %517, float %518, float %516
  %520 = fcmp olt float %514, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %509
  store float %516, ptr %510, align 4, !tbaa !44
  br label %522

522:                                              ; preds = %508, %509, %521
  %523 = add nuw nsw i64 %480, 1
  %524 = icmp eq i64 %523, 3
  br i1 %524, label %525, label %479, !llvm.loop !174

525:                                              ; preds = %522, %459, %41
  %526 = phi i32 [ %43, %41 ], [ 0, %459 ], [ %462, %522 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  %527 = getelementptr inbounds %struct.CollPair, ptr %42, i64 1
  %528 = icmp eq ptr %527, %3
  br i1 %528, label %529, label %41, !llvm.loop !175

529:                                              ; preds = %525, %4
  %530 = phi i32 [ 0, %4 ], [ %526, %525 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %530
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @collision_compute_barycentric(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #3 !PGOFuncName !176 {
  %8 = load float, ptr %1, align 4, !tbaa !44
  %9 = load float, ptr %3, align 4, !tbaa !44
  %10 = fsub float %8, %9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = fsub float %13, %15
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds float, ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !44
  %22 = fsub float %19, %21
  %23 = fpext float %22 to double
  %24 = load float, ptr %2, align 4, !tbaa !44
  %25 = fsub float %24, %9
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = fsub float %28, %15
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !44
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
  store float 0x3FD5555560000000, ptr %6, align 4, !tbaa !44
  store float 0x3FD5555560000000, ptr %5, align 4, !tbaa !44
  store float 0x3FD5555560000000, ptr %4, align 4, !tbaa !44
  br label %85

52:                                               ; preds = %7
  %53 = getelementptr inbounds float, ptr %0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !44
  %55 = fsub float %54, %21
  %56 = fpext float %55 to double
  %57 = load float, ptr %0, align 4, !tbaa !44
  %58 = fsub float %57, %9
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds float, ptr %0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !44
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
  store float %75, ptr %4, align 4, !tbaa !44
  %76 = fpext float %75 to double
  %77 = tail call double @llvm.fmuladd.f64(double %44, double %76, double %66)
  %78 = fdiv double %77, %43
  %79 = fptrunc double %78 to float
  %80 = fcmp olt float %79, 0.000000e+00
  %81 = select i1 %80, float 0.000000e+00, float %79
  store float %81, ptr %5, align 4, !tbaa !44
  %82 = load float, ptr %4, align 4, !tbaa !44
  %83 = fsub float 1.000000e+00, %82
  %84 = fsub float %83, %81
  store float %84, ptr %6, align 4, !tbaa !44
  br label %85

85:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !177 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !178 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #13
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !179 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

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
!44 = !{!41, !41, i64 0}
!45 = !{!35, !37, i64 144}
!46 = !{!35, !37, i64 136}
!47 = !{!35, !37, i64 152}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!35, !37, i64 184}
!51 = !{!35, !37, i64 160}
!52 = !{!35, !40, i64 172}
!53 = !{!"collision.c:sub_v3_v3v3"}
!54 = !{!55, !40, i64 0}
!55 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !38, i64 18, !38, i64 19}
!56 = !{!"short", !38, i64 0}
!57 = !{!55, !40, i64 4}
!58 = !{!55, !40, i64 8}
!59 = !{!55, !40, i64 12}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!"collision.c:copy_v3_v3"}
!63 = !{!40, !40, i64 0}
!64 = !{!37, !37, i64 0}
!65 = !{!66, !37, i64 16}
!66 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !56, i64 32, !38, i64 34}
!67 = distinct !{!67, !49}
!68 = !{!69, !40, i64 16}
!69 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !56, i64 28, !56, i64 30, !37, i64 32}
!70 = !{!71, !40, i64 944}
!71 = !{!"Object", !72, i64 0, !37, i64 120, !37, i64 128, !56, i64 136, !56, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !73, i64 312, !37, i64 360, !74, i64 368, !74, i64 384, !74, i64 400, !74, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !56, i64 948, !56, i64 950, !56, i64 952, !56, i64 954, !56, i64 956, !56, i64 958, !56, i64 960, !56, i64 962, !56, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !56, i64 1036, !56, i64 1038, !56, i64 1040, !38, i64 1042, !38, i64 1043, !56, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !74, i64 1056, !74, i64 1072, !74, i64 1088, !74, i64 1104, !41, i64 1120, !56, i64 1124, !56, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !56, i64 1162, !38, i64 1164, !74, i64 1176, !74, i64 1192, !74, i64 1208, !74, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !56, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !75, i64 1304, !75, i64 1312, !40, i64 1320, !40, i64 1324, !74, i64 1328, !74, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !74, i64 1400, !37, i64 1416}
!72 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !56, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!73 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!74 = !{!"ListBase", !37, i64 0, !37, i64 8}
!75 = !{!"long", !38, i64 0}
!76 = !{!77, !40, i64 232}
!77 = !{!"Scene", !72, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !74, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !56, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !78, i64 280, !87, i64 4264, !74, i64 4296, !74, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !56, i64 4376, !56, i64 4378, !40, i64 4380, !74, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !37, i64 4608, !93, i64 4616, !37, i64 4640, !75, i64 4648, !75, i64 4656, !80, i64 4664, !81, i64 4824, !94, i64 4888, !37, i64 4952}
!78 = !{!"RenderData", !79, i64 0, !37, i64 248, !37, i64 256, !82, i64 264, !83, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !56, i64 432, !56, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !40, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !40, i64 484, !40, i64 488, !56, i64 492, !56, i64 494, !40, i64 496, !40, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !84, i64 544, !84, i64 560, !85, i64 576, !74, i64 592, !56, i64 608, !56, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !41, i64 660, !41, i64 664, !56, i64 668, !56, i64 670, !41, i64 672, !41, i64 676, !38, i64 680, !40, i64 1704, !56, i64 1708, !56, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !56, i64 2524, !56, i64 2526, !41, i64 2528, !41, i64 2532, !56, i64 2536, !56, i64 2538, !41, i64 2540, !56, i64 2544, !56, i64 2546, !40, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !41, i64 2560, !41, i64 2564, !37, i64 2568, !40, i64 2576, !41, i64 2580, !38, i64 2584, !86, i64 2616, !40, i64 3976, !40, i64 3980}
!79 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !56, i64 8, !56, i64 10, !41, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!82 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !56, i64 48, !56, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!83 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!84 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!85 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!86 = !{!"BakeData", !79, i64 0, !38, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !41, i64 1280, !41, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!87 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !56, i64 20, !56, i64 22, !41, i64 24, !41, i64 28}
!88 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!89 = !{!"GameData", !88, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !38, i64 34, !90, i64 40, !56, i64 64, !56, i64 66, !41, i64 68, !91, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!90 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !41, i64 8, !41, i64 12, !37, i64 16}
!91 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !56, i64 52, !56, i64 54}
!92 = !{!"UnitSettings", !41, i64 0, !38, i64 4, !38, i64 5, !56, i64 6}
!93 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!95 = !{!69, !37, i64 32}
!96 = distinct !{!96, !49}
!97 = !{!"collision.c:add_collision_object"}
!98 = !{!71, !37, i64 1240}
!99 = !{!100, !56, i64 4}
!100 = !{!"PartDeflect", !40, i64 0, !56, i64 4, !56, i64 6, !56, i64 8, !56, i64 10, !56, i64 12, !56, i64 14, !56, i64 16, !56, i64 18, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !37, i64 128, !37, i64 136, !41, i64 144, !40, i64 148, !37, i64 152}
!101 = !{!71, !37, i64 1256}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = !{!"collision.c:add_collider_cache_object"}
!106 = !{!107, !37, i64 16}
!107 = !{!"ColliderCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!108 = !{!107, !37, i64 24}
!109 = distinct !{!109, !49}
!110 = !{!111, !37, i64 120}
!111 = !{!"ClothModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !74, i64 152}
!112 = !{!113, !37, i64 32}
!113 = !{!"Cloth", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !56, i64 30, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84}
!114 = !{!111, !37, i64 128}
!115 = !{!116, !40, i64 128}
!116 = !{!"ClothSimSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !38, i64 156, !37, i64 160}
!117 = !{!113, !37, i64 0}
!118 = !{!113, !40, i64 16}
!119 = !{!111, !37, i64 112}
!120 = !{!111, !37, i64 136}
!121 = !{!122, !37, i64 40}
!122 = !{!"ClothCollSettings", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !40, i64 32, !56, i64 36, !56, i64 38, !37, i64 40, !56, i64 48, !56, i64 50, !40, i64 52}
!123 = distinct !{!123, !49}
!124 = !{!122, !56, i64 38}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49}
!127 = !{!128, !40, i64 0}
!128 = !{!"ClothVertex", !40, i64 0, !38, i64 4, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !38, i64 64, !38, i64 76, !41, i64 88, !41, i64 92, !38, i64 96, !37, i64 112, !40, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !41, i64 144}
!129 = distinct !{!129, !49}
!130 = !{!122, !40, i64 32}
!131 = !{!122, !56, i64 36}
!132 = !{!113, !37, i64 40}
!133 = !{!134, !40, i64 0}
!134 = !{!"BVHTreeOverlap", !40, i64 0, !40, i64 4}
!135 = !{!134, !40, i64 4}
!136 = !{!122, !41, i64 20}
!137 = !{!128, !41, i64 124}
!138 = !{!113, !37, i64 72}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !49}
!142 = distinct !{!142, !49}
!143 = !{!"collision.c:cloth_bvh_objcollisions_nearcheck"}
!144 = distinct !{!144, !49}
!145 = !{!"collision.c:cloth_bvh_objcollisions_resolve"}
!146 = !{i32 0, i32 2}
!147 = !{!128, !40, i64 120}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !49}
!150 = !{!"collision.c:normalize_v3"}
!151 = !{!"collision.c:mul_v3_fl"}
!152 = !{!"collision.c:cloth_collision"}
!153 = !{!122, !41, i64 8}
!154 = !{!113, !37, i64 48}
!155 = !{!156, !40, i64 72}
!156 = !{!"CollPair", !40, i64 0, !40, i64 4, !157, i64 8, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 52, !40, i64 64, !41, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !38, i64 96}
!157 = !{!"double", !38, i64 0}
!158 = !{!156, !40, i64 76}
!159 = !{!156, !40, i64 80}
!160 = !{!156, !40, i64 84}
!161 = !{!156, !40, i64 88}
!162 = !{!156, !40, i64 92}
!163 = !{!156, !157, i64 8}
!164 = !{!156, !40, i64 64}
!165 = distinct !{!165, !49}
!166 = !{!"collision.c:normalize_v3_v3"}
!167 = !{!"collision.c:dot_v3v3"}
!168 = !{!"collision.c:mul_v3_v3fl"}
!169 = !{!"collision.c:zero_v3"}
!170 = !{!"collision.c:cloth_collision_response_static"}
!171 = !{!122, !41, i64 16}
!172 = !{!116, !40, i64 124}
!173 = !{!116, !41, i64 72}
!174 = distinct !{!174, !49}
!175 = distinct !{!175, !49}
!176 = !{!"collision.c:collision_compute_barycentric"}
!177 = !{!"collision.c:min_ff"}
!178 = !{!"collision.c:len_v3"}
!179 = !{!"collision.c:max_ff"}
