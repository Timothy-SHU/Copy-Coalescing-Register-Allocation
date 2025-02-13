; ModuleID = 'blender/source/blender/modifiers/intern/MOD_util.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.MappingInfoModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"get_texture_coords done\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@modifierType_None = external global %struct.ModifierTypeInfo, align 8
@modifierType_Curve = external global %struct.ModifierTypeInfo, align 8
@modifierType_Lattice = external global %struct.ModifierTypeInfo, align 8
@modifierType_Subsurf = external global %struct.ModifierTypeInfo, align 8
@modifierType_Build = external global %struct.ModifierTypeInfo, align 8
@modifierType_Array = external global %struct.ModifierTypeInfo, align 8
@modifierType_Mirror = external global %struct.ModifierTypeInfo, align 8
@modifierType_EdgeSplit = external global %struct.ModifierTypeInfo, align 8
@modifierType_Bevel = external global %struct.ModifierTypeInfo, align 8
@modifierType_Displace = external global %struct.ModifierTypeInfo, align 8
@modifierType_UVProject = external global %struct.ModifierTypeInfo, align 8
@modifierType_Decimate = external global %struct.ModifierTypeInfo, align 8
@modifierType_Smooth = external global %struct.ModifierTypeInfo, align 8
@modifierType_Cast = external global %struct.ModifierTypeInfo, align 8
@modifierType_Wave = external global %struct.ModifierTypeInfo, align 8
@modifierType_Armature = external global %struct.ModifierTypeInfo, align 8
@modifierType_Hook = external global %struct.ModifierTypeInfo, align 8
@modifierType_Softbody = external global %struct.ModifierTypeInfo, align 8
@modifierType_Cloth = external global %struct.ModifierTypeInfo, align 8
@modifierType_Collision = external global %struct.ModifierTypeInfo, align 8
@modifierType_Boolean = external global %struct.ModifierTypeInfo, align 8
@modifierType_MeshDeform = external global %struct.ModifierTypeInfo, align 8
@modifierType_Ocean = external global %struct.ModifierTypeInfo, align 8
@modifierType_ParticleSystem = external global %struct.ModifierTypeInfo, align 8
@modifierType_ParticleInstance = external global %struct.ModifierTypeInfo, align 8
@modifierType_Explode = external global %struct.ModifierTypeInfo, align 8
@modifierType_Shrinkwrap = external global %struct.ModifierTypeInfo, align 8
@modifierType_Fluidsim = external global %struct.ModifierTypeInfo, align 8
@modifierType_Mask = external global %struct.ModifierTypeInfo, align 8
@modifierType_SimpleDeform = external global %struct.ModifierTypeInfo, align 8
@modifierType_Multires = external global %struct.ModifierTypeInfo, align 8
@modifierType_Surface = external global %struct.ModifierTypeInfo, align 8
@modifierType_Smoke = external global %struct.ModifierTypeInfo, align 8
@modifierType_ShapeKey = external global %struct.ModifierTypeInfo, align 8
@modifierType_Solidify = external global %struct.ModifierTypeInfo, align 8
@modifierType_Screw = external global %struct.ModifierTypeInfo, align 8
@modifierType_Warp = external global %struct.ModifierTypeInfo, align 8
@modifierType_WeightVGEdit = external global %struct.ModifierTypeInfo, align 8
@modifierType_WeightVGMix = external global %struct.ModifierTypeInfo, align 8
@modifierType_WeightVGProximity = external global %struct.ModifierTypeInfo, align 8
@modifierType_DynamicPaint = external global %struct.ModifierTypeInfo, align 8
@modifierType_Remesh = external global %struct.ModifierTypeInfo, align 8
@modifierType_Skin = external global %struct.ModifierTypeInfo, align 8
@modifierType_LaplacianSmooth = external global %struct.ModifierTypeInfo, align 8
@modifierType_Triangulate = external global %struct.ModifierTypeInfo, align 8
@modifierType_UVWarp = external global %struct.ModifierTypeInfo, align 8
@modifierType_MeshCache = external global %struct.ModifierTypeInfo, align 8
@modifierType_LaplacianDeform = external global %struct.ModifierTypeInfo, align 8
@modifierType_Wireframe = external global %struct.ModifierTypeInfo, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_init_texture(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 54
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %6) #7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 51
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !44
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %12, i32 noundef %14, i32 noundef 0) #7
  br label %15

15:                                               ; preds = %2, %11, %8, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_texture_coords(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [64 x i8], align 16
  %9 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  switch i32 %10, label %72 [
    i32 2, label %11
    i32 3, label %18
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %16) #7
  br label %72

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %20 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %19, i32 noundef 16) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = tail call ptr %24(ptr noundef %2) #7
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = tail call ptr %27(ptr noundef %2) #7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !73
  %30 = sext i32 %5 to i64
  %31 = tail call ptr %29(i64 noundef %30, ptr noundef nonnull @.str) #7
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  %34 = tail call i32 %33(ptr noundef %2) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  %35 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %0, i64 0, i32 3
  call void @CustomData_validate_layer_name(ptr noundef nonnull %19, i32 noundef 16, ptr noundef nonnull %35, ptr noundef nonnull %8) #7
  %36 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %19, i32 noundef 16, ptr noundef nonnull %8) #7
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %22, %66
  %39 = phi i32 [ %67, %66 ], [ 0, %22 ]
  %40 = phi ptr [ %68, %66 ], [ %25, %22 ]
  %41 = getelementptr inbounds %struct.MPoly, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !75
  br label %43

43:                                               ; preds = %64, %38
  %44 = phi i32 [ %42, %38 ], [ %45, %64 ]
  %45 = add i32 %44, -1
  %46 = load i32, ptr %40, align 4, !tbaa !77
  %47 = add i32 %46, %45
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.MLoop, ptr %28, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !78
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %31, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !80
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.MLoopUV, ptr %36, i64 %48
  %57 = load float, ptr %56, align 4, !tbaa !81
  %58 = call float @llvm.fmuladd.f32(float %57, float 2.000000e+00, float -1.000000e+00)
  %59 = getelementptr inbounds [3 x float], ptr %4, i64 %51
  store float %58, ptr %59, align 4, !tbaa !81
  %60 = getelementptr inbounds [2 x float], ptr %56, i64 0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !81
  %62 = call float @llvm.fmuladd.f32(float %61, float 2.000000e+00, float -1.000000e+00)
  %63 = getelementptr inbounds [3 x float], ptr %4, i64 %51, i64 1
  store float %62, ptr %63, align 4, !tbaa !81
  store i8 1, ptr %52, align 1, !tbaa !80
  br label %64

64:                                               ; preds = %55, %43
  %65 = icmp eq i32 %45, 0
  br i1 %65, label %66, label %43, !llvm.loop !82

66:                                               ; preds = %64
  %67 = add nuw nsw i32 %39, 1
  %68 = getelementptr inbounds %struct.MPoly, ptr %40, i64 1
  %69 = icmp eq i32 %67, %34
  br i1 %69, label %70, label %38, !llvm.loop !84

70:                                               ; preds = %66, %22
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !73
  call void %71(ptr noundef %31) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %89

72:                                               ; preds = %6, %11, %15, %18
  %73 = phi i32 [ 0, %18 ], [ 0, %11 ], [ 2, %15 ], [ %10, %6 ]
  %74 = icmp sgt i32 %5, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %77

77:                                               ; preds = %75, %84
  %78 = phi ptr [ %3, %75 ], [ %86, %84 ]
  %79 = phi ptr [ %4, %75 ], [ %87, %84 ]
  %80 = phi i32 [ 0, %75 ], [ %85, %84 ]
  switch i32 %73, label %84 [
    i32 0, label %81
    i32 1, label %82
    i32 2, label %83
  ]

81:                                               ; preds = %77
  call fastcc void @copy_v3_v3(ptr noundef %79, ptr noundef %78) #9
  br label %84

82:                                               ; preds = %77
  call void @mul_v3_m4v3(ptr noundef %79, ptr noundef nonnull %76, ptr noundef %78) #7
  br label %84

83:                                               ; preds = %77
  call void @mul_v3_m4v3(ptr noundef %79, ptr noundef nonnull %76, ptr noundef %78) #7
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %79) #7
  br label %84

84:                                               ; preds = %81, %82, %83, %77
  %85 = add nuw nsw i32 %80, 1
  %86 = getelementptr inbounds [3 x float], ptr %78, i64 1
  %87 = getelementptr inbounds [3 x float], ptr %79, i64 1
  %88 = icmp eq i32 %85, %5
  br i1 %88, label %89, label %77, !llvm.loop !85

89:                                               ; preds = %84, %72, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !86 {
  %3 = load float, ptr %1, align 4, !tbaa !81
  store float %3, ptr %0, align 4, !tbaa !81
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_vgroup_cache(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2, %18
  %6 = phi ptr [ %21, %18 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ArmatureModifierData, ptr %6, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !89
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ArmatureModifierData, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !73
  %20 = tail call ptr %19(ptr noundef %1) #7
  store ptr %20, ptr %15, align 8, !tbaa !91
  %21 = load ptr, ptr %6, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5

23:                                               ; preds = %5, %18, %14, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_cddm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @CDDM_copy(ptr noundef nonnull %2) #7
  tail call void @CDDM_apply_vert_coords(ptr noundef %12, ptr noundef %3) #7
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %2, %7 ]
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  tail call void @DM_ensure_normals(ptr noundef %14) #7
  br label %19

17:                                               ; preds = %5
  %18 = tail call ptr @get_dm(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 0) #9
  br label %19

19:                                               ; preds = %13, %16, %17
  %20 = phi ptr [ %14, %16 ], [ %14, %13 ], [ %18, %17 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DM_ensure_normals(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !93
  switch i16 %10, label %38 [
    i16 1, label %11
    i16 4, label %30
    i16 2, label %30
    i16 3, label %30
  ]

11:                                               ; preds = %8
  %12 = icmp eq ptr %1, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = tail call ptr @CDDM_from_mesh(ptr noundef %17) #7
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %14, %13 ], [ %18, %15 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @CDDM_apply_vert_coords(ptr noundef %20, ptr noundef nonnull %3) #7
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %20, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !97
  %25 = or i32 %24, 4
  store i32 %25, ptr %23, align 8, !tbaa !97
  br label %26

26:                                               ; preds = %22, %19
  %27 = icmp eq i8 %5, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @BKE_mesh_orco_verts_get(ptr noundef nonnull %0) #7
  tail call void @DM_add_vert_layer(ptr noundef %20, i32 noundef 14, i32 noundef 0, ptr noundef %29) #7
  br label %32

30:                                               ; preds = %8, %8, %8
  %31 = tail call ptr @CDDM_from_curve(ptr noundef nonnull %0) #7
  br label %32

32:                                               ; preds = %28, %26, %30, %6
  %33 = phi ptr [ %2, %6 ], [ %20, %28 ], [ %20, %26 ], [ %31, %30 ]
  %34 = icmp ne i8 %4, 0
  %35 = icmp ne ptr %33, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @DM_ensure_normals(ptr noundef nonnull %33) #7
  br label %38

38:                                               ; preds = %8, %37, %32
  %39 = phi ptr [ %33, %37 ], [ %33, %32 ], [ null, %8 ]
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_orco_verts_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CDDM_from_curve(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @get_dm_for_modifier(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_get_vgroup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef %2) #7
  store i32 %6, ptr %4, align 4, !tbaa !99
  store ptr null, ptr %3, align 8, !tbaa !73
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !93
  %11 = icmp eq i16 %10, 22
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_lattice_deform_verts_get(ptr noundef nonnull %0) #7
  br label %20

14:                                               ; preds = %8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 50
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = tail call ptr %18(ptr noundef nonnull %1, i32 noundef 2) #7
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %16 ]
  store ptr %21, ptr %3, align 8, !tbaa !73
  br label %22

22:                                               ; preds = %20, %14, %5
  ret void
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_lattice_deform_verts_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @modifier_type_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @modifierType_None, ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds ptr, ptr %0, i64 3
  store ptr @modifierType_Curve, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds ptr, ptr %0, i64 2
  store ptr @modifierType_Lattice, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds ptr, ptr %0, i64 1
  store ptr @modifierType_Subsurf, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %0, i64 4
  store ptr @modifierType_Build, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds ptr, ptr %0, i64 12
  store ptr @modifierType_Array, ptr %6, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %0, i64 5
  store ptr @modifierType_Mirror, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds ptr, ptr %0, i64 13
  store ptr @modifierType_EdgeSplit, ptr %8, align 8, !tbaa !73
  %9 = getelementptr inbounds ptr, ptr %0, i64 24
  store ptr @modifierType_Bevel, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %0, i64 14
  store ptr @modifierType_Displace, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds ptr, ptr %0, i64 15
  store ptr @modifierType_UVProject, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds ptr, ptr %0, i64 6
  store ptr @modifierType_Decimate, ptr %12, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %0, i64 16
  store ptr @modifierType_Smooth, ptr %13, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %0, i64 17
  store ptr @modifierType_Cast, ptr %14, align 8, !tbaa !73
  %15 = getelementptr inbounds ptr, ptr %0, i64 7
  store ptr @modifierType_Wave, ptr %15, align 8, !tbaa !73
  %16 = getelementptr inbounds ptr, ptr %0, i64 8
  store ptr @modifierType_Armature, ptr %16, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %0, i64 9
  store ptr @modifierType_Hook, ptr %17, align 8, !tbaa !73
  %18 = getelementptr inbounds ptr, ptr %0, i64 10
  store ptr @modifierType_Softbody, ptr %18, align 8, !tbaa !73
  %19 = getelementptr inbounds ptr, ptr %0, i64 22
  store ptr @modifierType_Cloth, ptr %19, align 8, !tbaa !73
  %20 = getelementptr inbounds ptr, ptr %0, i64 23
  store ptr @modifierType_Collision, ptr %20, align 8, !tbaa !73
  %21 = getelementptr inbounds ptr, ptr %0, i64 11
  store ptr @modifierType_Boolean, ptr %21, align 8, !tbaa !73
  %22 = getelementptr inbounds ptr, ptr %0, i64 18
  store ptr @modifierType_MeshDeform, ptr %22, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %0, i64 39
  store ptr @modifierType_Ocean, ptr %23, align 8, !tbaa !73
  %24 = getelementptr inbounds ptr, ptr %0, i64 19
  store ptr @modifierType_ParticleSystem, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds ptr, ptr %0, i64 20
  store ptr @modifierType_ParticleInstance, ptr %25, align 8, !tbaa !73
  %26 = getelementptr inbounds ptr, ptr %0, i64 21
  store ptr @modifierType_Explode, ptr %26, align 8, !tbaa !73
  %27 = getelementptr inbounds ptr, ptr %0, i64 25
  store ptr @modifierType_Shrinkwrap, ptr %27, align 8, !tbaa !73
  %28 = getelementptr inbounds ptr, ptr %0, i64 26
  store ptr @modifierType_Fluidsim, ptr %28, align 8, !tbaa !73
  %29 = getelementptr inbounds ptr, ptr %0, i64 27
  store ptr @modifierType_Mask, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds ptr, ptr %0, i64 28
  store ptr @modifierType_SimpleDeform, ptr %30, align 8, !tbaa !73
  %31 = getelementptr inbounds ptr, ptr %0, i64 29
  store ptr @modifierType_Multires, ptr %31, align 8, !tbaa !73
  %32 = getelementptr inbounds ptr, ptr %0, i64 30
  store ptr @modifierType_Surface, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds ptr, ptr %0, i64 31
  store ptr @modifierType_Smoke, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds ptr, ptr %0, i64 32
  store ptr @modifierType_ShapeKey, ptr %34, align 8, !tbaa !73
  %35 = getelementptr inbounds ptr, ptr %0, i64 33
  store ptr @modifierType_Solidify, ptr %35, align 8, !tbaa !73
  %36 = getelementptr inbounds ptr, ptr %0, i64 34
  store ptr @modifierType_Screw, ptr %36, align 8, !tbaa !73
  %37 = getelementptr inbounds ptr, ptr %0, i64 35
  store ptr @modifierType_Warp, ptr %37, align 8, !tbaa !73
  %38 = getelementptr inbounds ptr, ptr %0, i64 36
  store ptr @modifierType_WeightVGEdit, ptr %38, align 8, !tbaa !73
  %39 = getelementptr inbounds ptr, ptr %0, i64 37
  store ptr @modifierType_WeightVGMix, ptr %39, align 8, !tbaa !73
  %40 = getelementptr inbounds ptr, ptr %0, i64 38
  store ptr @modifierType_WeightVGProximity, ptr %40, align 8, !tbaa !73
  %41 = getelementptr inbounds ptr, ptr %0, i64 40
  store ptr @modifierType_DynamicPaint, ptr %41, align 8, !tbaa !73
  %42 = getelementptr inbounds ptr, ptr %0, i64 41
  store ptr @modifierType_Remesh, ptr %42, align 8, !tbaa !73
  %43 = getelementptr inbounds ptr, ptr %0, i64 42
  store ptr @modifierType_Skin, ptr %43, align 8, !tbaa !73
  %44 = getelementptr inbounds ptr, ptr %0, i64 43
  store ptr @modifierType_LaplacianSmooth, ptr %44, align 8, !tbaa !73
  %45 = getelementptr inbounds ptr, ptr %0, i64 44
  store ptr @modifierType_Triangulate, ptr %45, align 8, !tbaa !73
  %46 = getelementptr inbounds ptr, ptr %0, i64 45
  store ptr @modifierType_UVWarp, ptr %46, align 8, !tbaa !73
  %47 = getelementptr inbounds ptr, ptr %0, i64 46
  store ptr @modifierType_MeshCache, ptr %47, align 8, !tbaa !73
  %48 = getelementptr inbounds ptr, ptr %0, i64 47
  store ptr @modifierType_LaplacianDeform, ptr %48, align 8, !tbaa !73
  %49 = getelementptr inbounds ptr, ptr %0, i64 48
  store ptr @modifierType_Wireframe, ptr %49, align 8, !tbaa !73
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!35, !37, i64 352}
!35 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !43, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!44 = !{!45, !41, i64 680}
!45 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !46, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !47, i64 280, !56, i64 4264, !46, i64 4296, !46, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !46, i64 4384, !57, i64 4400, !58, i64 4416, !61, i64 4600, !37, i64 4608, !62, i64 4616, !37, i64 4640, !63, i64 4648, !63, i64 4656, !49, i64 4664, !50, i64 4824, !64, i64 4888, !37, i64 4952}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!"RenderData", !48, i64 0, !37, i64 248, !37, i64 256, !51, i64 264, !52, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !53, i64 544, !53, i64 560, !54, i64 576, !46, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !55, i64 2616, !41, i64 3976, !41, i64 3980}
!48 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !49, i64 24, !50, i64 184}
!49 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!50 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!51 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!52 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!53 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!"BakeData", !48, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!56 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!57 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!58 = !{!"GameData", !57, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !59, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !60, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!59 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!60 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!61 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!62 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!63 = !{!"long", !38, i64 0}
!64 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!65 = !{!66, !41, i64 196}
!66 = !{!"MappingInfoModifierData", !67, i64 0, !37, i64 112, !37, i64 120, !38, i64 128, !41, i64 192, !41, i64 196}
!67 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!68 = !{!66, !37, i64 120}
!69 = !{!70, !37, i64 1200}
!70 = !{!"DerivedMesh", !71, i64 0, !71, i64 200, !71, i64 400, !71, i64 600, !71, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!71 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!72 = !{!70, !37, i64 1192}
!73 = !{!37, !37, i64 0}
!74 = !{!70, !37, i64 1136}
!75 = !{!76, !41, i64 4}
!76 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!77 = !{!76, !41, i64 0}
!78 = !{!79, !41, i64 0}
!79 = !{!"MLoop", !41, i64 0, !41, i64 4}
!80 = !{!38, !38, i64 0}
!81 = !{!42, !42, i64 0}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = !{!"MOD_util.c:copy_v3_v3"}
!87 = !{!67, !37, i64 0}
!88 = !{!67, !41, i64 16}
!89 = !{!90, !40, i64 114}
!90 = !{!"ArmatureModifierData", !67, i64 0, !40, i64 112, !40, i64 114, !41, i64 116, !37, i64 120, !37, i64 128, !38, i64 136}
!91 = !{!90, !37, i64 128}
!92 = !{!70, !41, i64 1048}
!93 = !{!94, !40, i64 136}
!94 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !95, i64 312, !37, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !63, i64 1304, !63, i64 1312, !41, i64 1320, !41, i64 1324, !46, i64 1328, !46, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !46, i64 1400, !37, i64 1416}
!95 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!96 = !{!94, !37, i64 296}
!97 = !{!70, !41, i64 1056}
!98 = !{!94, !37, i64 1296}
!99 = !{!41, !41, i64 0}
!100 = !{!70, !37, i64 1320}
